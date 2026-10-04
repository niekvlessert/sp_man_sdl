#include "play_session.hpp"
#include <algorithm>
#include <stdexcept>

namespace sm {
namespace {
constexpr unsigned kInitialCameraPixels=31*8; // ROM preloads 31 tile columns.
constexpr std::uint32_t kCarrierBackdrop=0xff000001u; // distinct from every 3-bit ROM palette color
constexpr std::array<std::uint32_t,16> kStage3BossPalette{
    0xff000000u,0xff004949u,0xff006d6du,0xff009292u,
    0xff00b6b6u,0xffb69249u,0xffff0000u,0xff2424ffu,
    0xff9292b6u,0xff920000u,0xffffff00u,0xff926d24u,
    0xff6d4900u,0xff6d6d6du,0xffffffffu,0xff000000u};
std::uint32_t stage_scene_palette9(unsigned phase) noexcept {
    // Fixed $6188 table selected by CE61=1: VDP palette index 9 receives
    // red levels 0,1,2,3,4,5,4,3,2,1, with green/blue zero.
    static constexpr std::array<unsigned,10> level{0,1,2,3,4,5,4,3,2,1};
    const unsigned r=(level[phase%level.size()]*255u+3u)/7u;
    return 0xff000000u|(r<<16u);
}
std::uint16_t word(std::span<const std::uint8_t> b, unsigned p) {
    return std::uint16_t(b[p]) | (std::uint16_t(b[p+1]) << 8);
}
void set_word(Entity64& e, unsigned p, std::uint16_t value) {
    e.raw[p]=std::uint8_t(value); e.raw[p+1]=std::uint8_t(value>>8);
}
bool native_stage0_tile_actor(std::uint8_t type) noexcept {
    switch(type) {
    case 0x1e: case 0x1f: case 0x20: case 0x22: case 0x24: case 0x26:
    case 0x47: case 0x55: case 0x56: case 0x64: case 0x6a: case 0x6b: case 0x3d:
        return true;
    default:return false;
    }
}
// Sprite-frame components are six bytes: pattern, Y, X, colors, hitbox selector.
// This uses the exported ROM's resident sprite assets, including CC color OR.
void draw_entity(const Rom& rom, const Screen4Snapshot& video,
                 const Entity64& entity, std::vector<std::uint32_t>& pixels,
                 const std::array<std::uint32_t,16>& palette, int sprite_origin_y,
                 unsigned x_samples=1,unsigned y_samples=1,int clip_bottom=212) {
    if (!entity.active() || entity.type()>0x7c) return;
    // A freshly spawned terminal boss spends one display slice in ROM state 0
    // before its 20-Hz initializer places the real entrance actor at x=$28.
    // Rendering that uninitialized record exposes most of the boss for one frame.
    if((entity.type()==0x64u || entity.type()==0x11u) && entity.state()==0u) return;
    if(entity.type()==3) return; // pickup icons use the ROM tile matrices
    if (entity.type()>9 && (entity.flags15()&1)==0) return;
    const auto table=rom.bank(7), frames=rom.bank(8), colors=rom.bank(9);
    const auto list=word(table,0x496+(entity.type()-1)*2);
    if (list<0xa000 || list>=0xc000) return;
    const unsigned entry=list-0xa000+unsigned(entity.raw[5])*2;
    if (entry+1>=frames.size()) return;
    const auto def=word(frames,entry);
    if (def<0xa000 || def>=0xc000) return;
    const unsigned off=def-0xa000, count=frames[off]&127;
    if (count>32 || off+1+count*6>frames.size()) return;

    struct SpriteLine { int x=0; std::uint16_t bits=0; std::uint8_t attr=0; };
    std::vector<SpriteLine> line;
    line.reserve(count*2u);
    const int ey=(int(std::int16_t(entity.y_fixed()))>>5)+sprite_origin_y+1;
    // Original SAT captures use the same +7 object X origin for every
    // stage-0 sprite family, including the mixed tile/SAT type-$1F cannon.
    // Its aim-frame offsets live in the ROM frame definition; adding a special
    // type-$1F bias here makes the error grow as the stage changes direction.
    const int ex=(int(std::int16_t(entity.x_fixed()))>>5)+7;
    for(int sy=0;sy<std::min(212,clip_bottom);++sy) {
        line.clear();
        // Keep ROM component/layer order: this is the SAT order produced by
        // the object renderer. V9938 mode-2 CC is defined across this ordered
        // scanline list, not independently inside each six-byte component.
        for(unsigned i=0;i<count;++i) {
            const unsigned c=off+1+i*6;
            const int y=ey+int(std::int8_t(frames[c+1]));
            const int row=sy-y;
            if(row<0 || row>=16) continue;
            const int base_x=ex+int(std::int8_t(frames[c+2]));
            const unsigned pattern=std::uint8_t(video.object_pattern_base[entity.type()]+frames[c]);
            for(unsigned layer=0;layer<2;++layer) {
                // +15 bit3 enables the second sprite-pattern plane.  The old
                // native renderer accidentally enabled that plane for every
                // low-numbered type, which added a spurious blue/white blob to
                // player bullets, W, M and the LARGE missile.  Type 1 is the
                // ship's special CC-composed sprite and legitimately consumes
                // both planes regardless of this object flag.
                if(layer && entity.type()!=1u && !(entity.flags15()&8u)) continue;
                const auto attr=colors[unsigned(frames[c+3+layer])*16u+unsigned(row)];
                const unsigned p=std::uint8_t(pattern+layer*4u);
                // Loader masks place the boss and its $40 mines only in the
                // $D800/R6=$1B page. $D000 contains unrelated flyer patterns.
                const unsigned sprite_base=0xc800u+unsigned(video.object_pattern_page[entity.type()])*0x800u;
                const auto left =video.vram[sprite_base+p*8u+unsigned(row)];
                const auto right=video.vram[sprite_base+p*8u+unsigned(row)+16u];
                const auto bits=std::uint16_t((unsigned(left)<<8)|right);
                if(!bits) continue;
                line.push_back({base_x-((attr&0x80u)?32:0),bits,attr});
            }
        }
        if(line.empty()) continue;
        std::size_t first=0;
        while(first<line.size() && (line[first].attr&0x40u)) ++first;
        if(first==line.size()) continue; // leading/all-CC sprites are invisible
        for(int i=int(line.size())-1;i>=int(first);--i) {
            const auto& a=line[unsigned(i)];
            // Player type1 uses CC entries strictly as combiners. Rendering a
            // CC entry as its own SAT sprite creates the vertical ghost pieces
            // seen around the ship; it must only contribute through the merge
            // loop of the preceding primary sprite. Other object types retain
            // the generic mode-2 behavior required by the flyer palettes.
            if(entity.type()==1u && (a.attr&0x40u)) continue;
            const unsigned base_color=a.attr&15u;
            if(!base_color) continue;
            for(unsigned b=0;b<16u;++b) {
                if(!(a.bits&(0x8000u>>b))) continue;
                const int sx=a.x+int(b);
                if(sx<0 || sx>=256) continue;
                unsigned color=base_color;
                // openMSX SpriteConverter semantics: a primary/visible sprite
                // ORs all immediately following CC sprites at this pixel,
                // stopping at the next non-CC SAT entry.
                for(unsigned j=unsigned(i)+1u;j<line.size();++j) {
                    const auto& q=line[j];
                    if(!(q.attr&0x40u)) break;
                    const int qb=sx-q.x;
                    if(qb>=0 && qb<16 && (q.bits&(0x8000u>>unsigned(qb))))
                        color|=q.attr&15u;
                }
                const int fx=int(entity.x_fixed()&31u)*int(x_samples)/32;
                const int fy=int(entity.y_fixed()&31u)*int(y_samples)/32;
                for(unsigned yy=0;yy<y_samples;++yy) for(unsigned xx=0;xx<x_samples;++xx) {
                    const unsigned ox=unsigned(sx)*x_samples+unsigned(fx)+xx;
                    const unsigned oy=unsigned(sy)*y_samples+unsigned(fy)+yy;
                    if(ox<256u*x_samples && oy<212u*y_samples)
                        pixels[oy*256u*x_samples+ox]=palette[color&15u];
                }
            }
        }
    }
}
// The blue LARGE missile is two separate type-$08 SAT records.  The second
// record is made entirely of V9938 CC colour lines and therefore must combine
// with the immediately preceding first record; drawing the two objects
// independently makes that half disappear and the missile look transparent.
void draw_type8_pair(const Rom& rom,const Screen4Snapshot& video,
                     const Entity64& primary,const Entity64& combiner,
                     std::vector<std::uint32_t>& pixels,
                     const std::array<std::uint32_t,16>& palette,int sprite_origin_y,
                     unsigned x_samples=1,unsigned y_samples=1) {
    if(!primary.active() || !combiner.active() || primary.type()!=8u || combiner.type()!=8u) {
        draw_entity(rom,video,primary,pixels,palette,sprite_origin_y,x_samples,y_samples);
        draw_entity(rom,video,combiner,pixels,palette,sprite_origin_y,x_samples,y_samples);
        return;
    }
    const auto table=rom.bank(7),frames=rom.bank(8),colors=rom.bank(9),bank2=rom.bank(2);
    // $8950 uploads 64 bytes from bank02:$8B30/$8B70/$8BB0 into VRAM
    // $CA20 and $D220 whenever the base record changes frame.  These are the
    // live LARGE-missile patterns; the stage-start VRAM snapshot is stale here.
    const unsigned phase=std::min<unsigned>(primary.raw[5]&3u,2u);
    const unsigned dyn=0x0b30u+phase*0x40u;
    struct SpriteLine {int x=0;std::uint16_t bits=0;std::uint8_t attr=0;};
    std::vector<SpriteLine> line;line.reserve(16);
    auto dynamic_bits=[&](unsigned pattern,unsigned row)->std::uint16_t {
        const unsigned local=std::uint8_t(pattern-video.object_pattern_base[8]);
        if(local==0x44u || local==0x48u) {
            const unsigned off=dyn+(local==0x48u?32u:0u);
            return std::uint16_t((unsigned(bank2[off+row])<<8u)|bank2[off+16u+row]);
        }
        const unsigned sprite_base=0xc800u+unsigned(video.object_pattern_page[8])*0x800u;
        return std::uint16_t((unsigned(video.vram[sprite_base+pattern*8u+row])<<8u)|
                             video.vram[sprite_base+pattern*8u+row+16u]);
    };
    auto append=[&](const Entity64& entity,int sy) {
        const auto list=word(table,0x496+(entity.type()-1)*2);
        if(list<0xa000 || list>=0xc000) return;
        const unsigned entry=list-0xa000+unsigned(entity.raw[5])*2;
        if(entry+1>=frames.size()) return;
        const auto def=word(frames,entry);if(def<0xa000 || def>=0xc000) return;
        const unsigned off=def-0xa000,count=frames[off]&127u;
        if(count>32u || off+1u+count*6u>frames.size()) return;
        const int ey=(int(std::int16_t(entity.y_fixed()))>>5)+sprite_origin_y+1;
        const int ex=(int(std::int16_t(entity.x_fixed()))>>5)+7;
        for(unsigned i=0;i<count;++i) {
            const unsigned c=off+1u+i*6u;
            const int row=sy-(ey+int(std::int8_t(frames[c+1])));
            if(row<0 || row>=16) continue;
            const auto attr=colors[unsigned(frames[c+3])*16u+unsigned(row)];
            const unsigned pattern=std::uint8_t(video.object_pattern_base[8]+frames[c]);
            const auto bits=dynamic_bits(pattern,unsigned(row));
            if(bits) line.push_back({ex+int(std::int8_t(frames[c+2]))-((attr&0x80u)?32:0),bits,attr});
        }
    };
    const int fx=int(primary.x_fixed()&31u)*int(x_samples)/32;
    const int fy=int(primary.y_fixed()&31u)*int(y_samples)/32;
    for(int sy=0;sy<212;++sy) {
        line.clear();append(primary,sy);append(combiner,sy);
        unsigned first=0;while(first<line.size() && (line[first].attr&0x40u)) ++first;
        if(first==line.size()) continue;
        // Match openMSX/V9938 sprite-mode-2 ordering. CC sprites after the
        // first normal sprite remain visible in their own right; additionally
        // their colour bits OR into preceding overlapping normal pixels.
        for(int ii=int(line.size())-1;ii>=int(first);--ii) {
            const auto& a=line[unsigned(ii)];
            const unsigned base=a.attr&15u;if(!base) continue;
            for(unsigned b=0;b<16u;++b) {
                if(!(a.bits&(0x8000u>>b))) continue;
                const int sx=a.x+int(b);if(sx<0 || sx>=256) continue;
                unsigned color=base;
                for(unsigned j=unsigned(ii)+1u;j<line.size();++j) {
                    const auto& q=line[j];if(!(q.attr&0x40u)) break;
                    const int qb=sx-q.x;
                    if(qb>=0 && qb<16 && (q.bits&(0x8000u>>unsigned(qb)))) color|=q.attr&15u;
                }
                for(unsigned yy=0;yy<y_samples;++yy) for(unsigned xx=0;xx<x_samples;++xx) {
                    const int ox=sx*int(x_samples)+fx+int(xx),oy=sy*int(y_samples)+fy+int(yy);
                    if(ox>=0 && oy>=0 && ox<int(256u*x_samples) && oy<int(212u*y_samples))
                        pixels[unsigned(oy)*256u*x_samples+unsigned(ox)]=palette[color&15u];
                }
            }
        }
    }
}
void draw_player_shots(const Rom& rom,const Screen4Snapshot& video,
                       const std::array<Entity64,3>& shots,std::vector<std::uint32_t>& pixels,
                       const std::array<std::uint32_t,16>& palette,int sprite_origin_y,
                       unsigned x_samples=1,unsigned y_samples=1) {
    unsigned first=0;
    if(shots[0].type()==8u && shots[1].type()==8u && shots[0].active() && shots[1].active()) {
        // $8816 creates slot 0 with frame 4..7 (CC-only colour sprite) and
        // slot 1 with frame 0..3 (the visible base sprite). V9938 CC entries
        // require a preceding non-CC SAT entry and combine into that sprite, so
        // the base record must be emitted first and the colour-combiner second.
        // The previous order silently
        // discarded slot 0 and made the LARGE missile look transparent.
        draw_type8_pair(rom,video,shots[1],shots[0],pixels,palette,sprite_origin_y,x_samples,y_samples);
        first=2;
    }
    for(unsigned i=first;i<shots.size();++i)
        draw_entity(rom,video,shots[i],pixels,palette,sprite_origin_y,x_samples,y_samples);
}
void draw_tile_actor(const Rom& rom,const Screen4Snapshot& video,const Entity64& e,
                 std::vector<std::uint32_t>& pixels,const std::array<std::uint32_t,16>& palette,
                 unsigned pattern_base,unsigned color_base,int screen_y_bias,
                 unsigned start_row,std::uint16_t fine_y,bool pickup_only,
                 unsigned x_samples=1,unsigned y_samples=1,int pattern_quarter=-1,
                 std::uint16_t fine_x=0,int horizontal_shift=0,int raster_r23=-1,
                 int type24_phase=-1) {
    if(!e.active()) return;
    if(pickup_only) { if(e.type()!=3) return; }
    else if(e.type()==0x64u && e.state()==0u) return;
    else if(e.type()!=0x1eu && e.type()!=0x1fu && e.type()!=0x20u && e.type()!=0x29u && e.type()!=0x22u && e.type()!=0x2eu && e.type()!=0x24u && e.type()!=0x26u &&
            e.type()!=0x3eu && e.type()!=0x3fu && e.type()!=0x55u && e.type()!=0x47u && e.type()!=0x56u && e.type()!=0x64u && e.type()!=0x6au && e.type()!=0x6bu && e.type()!=0x3du) return;
    // Do not cull large cannon tile actors by anchor position. Their matrix can
    // still overlap the left edge after the anchor itself has crossed x=0;
    // per-tile clipping below keeps the visible half on screen, matching the ROM.
    const auto visuals=(e.type()==0x24u && type24_phase>=0)
        ? decode_stage0_t24_visuals_phase(rom,e,unsigned(type24_phase))
        : decode_stage0_tile_visuals(rom,e);
    for(auto v:visuals) {
        for(unsigned ty=0;ty<v.rows;++ty) for(unsigned tx=0;tx<v.cols;++tx) {
            // $BDAD's last matrix row stamps rocks as well as the chassis.
            // The native rock strip owns those pixels at 60 Hz; stamping the
            // 15-Hz rock row here splits rocks and breaks contact with the tread.
            if(e.type()==0x24u && v.tile_y_offset+int(ty)>=3) continue;
            const auto tile=v.tiles[ty*unsigned(v.cols)+tx];
            if(!tile) continue;
            // Tile actors are camera-relative, but their original $7A79 stamp
            // adds the low CA1C/CA1A bytes before the name-table cell is chosen.
            // R18/R23 then place that cell on screen.  Ignoring this last raster
            // phase left the composed cannon bodies 1..10 pixels away from the
            // exact ROM position even though their object coordinates were exact.
            const auto ax=std::uint16_t(e.x_fixed()+fine_x);
            const auto ay=std::uint16_t(e.y_fixed()+fine_y);
            const int object_row=int(std::int8_t(ay>>8u));
            const int logical_row=object_row+v.tile_y_offset+int(ty);
            if(logical_row<0 || logical_row>=24) continue;
            const unsigned physical_row=(start_row+unsigned(logical_row))&31u;
            int lx=v.x+int(tx*8u),ly=v.y+int(ty*8u)+screen_y_bias;
            unsigned fx=unsigned(e.x_fixed()&31u)*x_samples/32u;
            unsigned fy=unsigned(e.y_fixed()&31u)*y_samples/32u;
            if(raster_r23>=0) {
                lx=(int(std::int16_t(ax))>>5)+v.tile_x_offset*8+int(tx*8u)+horizontal_shift;
                const int raster_top=(int(physical_row*8u)-raster_r23)&255;
                ly=raster_top+int((ay&0xffu)>>5u);
                fx=unsigned(ax&31u)*x_samples/32u;
                fy=unsigned(ay&31u)*y_samples/32u;
            }
            const unsigned quarter=unsigned(pattern_quarter>=0?pattern_quarter:int(physical_row/8u))*0x800u;
            for(unsigned py=0;py<8u;++py) {
                const unsigned index=quarter+unsigned(tile)*8u+py;
                if(pattern_base+index>=video.vram.size() || color_base+index>=video.vram.size()) continue;
                const auto bits=video.vram[pattern_base+index], color=video.vram[color_base+index];
                const int sy=ly+int(py);
                if(sy<0 || sy>=212) continue;
                for(unsigned px=0;px<8u;++px) {
                    const int sx=lx+int(px);
                    if(sx<0 || sx>=256) continue;
                    const unsigned ci=(bits&(0x80u>>px))?color>>4:color&15u;
                    // A nonzero tile ID replaces the complete name-table cell.
                    // Palette index 0 is a real black/background pixel here,
                    // not alpha transparency. Only tile ID 0 is transparent.
                    for(unsigned yy=0;yy<y_samples;++yy) for(unsigned xx=0;xx<x_samples;++xx) {
                        const unsigned ox=unsigned(sx)*x_samples+fx+xx,oy=unsigned(sy)*y_samples+fy+yy;
                        if(ox<256u*x_samples && oy<212u*y_samples)
                            pixels[oy*256u*x_samples+ox]=palette[ci];
                    }
                }
            }
        }
    }
}

void draw_pickup(const Rom& rom,const Screen4Snapshot& video,const Entity64& e,
                 std::vector<std::uint32_t>& pixels,const std::array<std::uint32_t,16>& palette,
                 unsigned pattern_base,unsigned color_base,int screen_y_bias,
                 unsigned start_row,std::uint16_t fine_y) {
    draw_tile_actor(rom,video,e,pixels,palette,pattern_base,color_base,screen_y_bias,start_row,fine_y,true);
}
void draw_vehicle_tile_actor(const Rom& rom,const Screen4Snapshot& video,const Entity64& e,
                 std::vector<std::uint32_t>& pixels,const std::array<std::uint32_t,16>& palette,
                 unsigned pattern_base,unsigned color_base,int screen_y_bias,
                 unsigned start_row,std::uint16_t fine_y,int type24_phase=-1) {
    draw_tile_actor(rom,video,e,pixels,palette,pattern_base,color_base,screen_y_bias,start_row,fine_y,false,
        1,1,-1,0,0,-1,type24_phase);
}
void composite_carrier(std::vector<std::uint32_t>& pixels,std::vector<std::uint32_t>& layer,
                       const std::array<std::uint32_t,16>& palette,unsigned width,
                       int offset_x,int offset_y,int deck_y) {
    // The ROM's tile stamps include black clearing cells around the aircraft.
    // Once the aircraft moves independently these cells must reveal the deck,
    // rather than erase it. Remove exterior backdrop, retaining enclosed black
    // details. All sprite components are drawn afterwards on the same origin.
    const unsigned height=unsigned(layer.size())/width;
    unsigned left=width,right=0,top=height,bottom=0;
    for(unsigned y=0;y<height;++y) for(unsigned x=0;x<width;++x) if(layer[y*width+x]) {
        left=std::min(left,x);right=std::max(right,x);top=std::min(top,y);bottom=std::max(bottom,y);
    }
    if(left==width) return;
    if(left) --left;
    if(top) --top;
    right=std::min(width-1u,right+1u);bottom=std::min(height-1u,bottom+1u);
    std::vector<unsigned> queue;
    queue.reserve((right-left+1u)*(bottom-top+1u));
    auto visit=[&](unsigned x,unsigned y) {
        const unsigned p=y*width+x;
        if(layer[p]==0 || layer[p]==kCarrierBackdrop) {
            layer[p]=1;queue.push_back(p);
        }
    };
    for(unsigned x=left;x<=right;++x) {visit(x,top);visit(x,bottom);}
    for(unsigned y=top;y<=bottom;++y) {visit(left,y);visit(right,y);}
    for(unsigned i=0;i<queue.size();++i) {
        const unsigned p=queue[i],x=p%width,y=p/width;
        if(x>left) visit(x-1u,y);
        if(x<right) visit(x+1u,y);
        if(y>top) visit(x,y-1u);
        if(y<bottom) visit(x,y+1u);
    }
    for(unsigned y=top;y<=bottom;++y) for(unsigned x=left;x<=right;++x) {
        const auto c=layer[y*width+x];
        const int dx=int(x)+offset_x,dy=int(y)+offset_y;
        if(c>1u && dx>=0 && dx<int(width) && dy>=0 && dy<std::min(int(height),deck_y))
            pixels[unsigned(dy)*width+unsigned(dx)]=c==kCarrierBackdrop?palette[0]:c;
    }
}
}

void move_player(const Rom& rom, Entity64& p, std::uint8_t directions,
                 std::uint8_t speed_level) {
    directions &= 15;
    // $820D: up wins when both vertical buttons are pressed.
    p.raw[5]=(directions&1)?1:((directions&2)?2:0);
    if (!directions) { set_word(p,11,0); set_word(p,13,0); return; }
    const auto b=rom.bank(2);
    const unsigned offset=0x17d+unsigned(directions)*9;
    const auto vy=std::uint16_t(word(b,offset+1)+speed_level*word(b,offset+3));
    const auto vx=std::uint16_t(word(b,offset+5)+speed_level*word(b,offset+7));
    set_word(p,11,vy); set_word(p,13,vx);
    const auto y=std::uint16_t(p.y_fixed()+vy), x=std::uint16_t(p.x_fixed()+vx);
    // ROM rejects out-of-bounds candidates; it does not clamp them.
    if ((y>>8)<0x14) p.set_y_fixed(y);
    if ((std::uint16_t(x-0x80)>>8)<0x1d) p.set_x_fixed(x);
}

void initialize_basic_shot(const Rom& rom, const Entity64& player, Entity64& shot) {
    shot.clear();
    const auto b=rom.bank(2);
    // $8CCD/$8DDC: basic weapon row, offsets in signed pixels scaled by 32.
    const unsigned row=0xddc;
    shot.type()=4; shot.raw[3]=1; shot.raw[5]=12; shot.raw[6]=1;
    shot.raw[0x13]=3; shot.raw[0x14]=3;
    set_word(shot,11,word(b,row)); set_word(shot,13,word(b,row+2));
    shot.set_y_fixed(std::uint16_t(player.y_fixed()+std::int8_t(b[row+4])*32));
    shot.set_x_fixed(std::uint16_t(player.x_fixed()+std::int8_t(b[row+5])*32));
}
void initialize_directional_shot(const Rom& rom,const Entity64& source,Entity64& shot,
                                 unsigned weapon_type,unsigned power_level) {
    if(weapon_type!=6 && weapon_type!=7 && weapon_type!=8)
        throw std::invalid_argument("option weapon type must be 6, 7 or 8");
    shot.clear();
    const auto b=rom.bank(2);
    const unsigned row=0xddc+(weapon_type-1u)*6u; // original $8DDC rows
    shot.type()=4;shot.raw[3]=std::uint8_t(weapon_type);
    shot.raw[0x13]=3;shot.raw[0x14]=3;shot.raw[6]=std::uint8_t(power_level+1u);
    set_word(shot,11,word(b,row));set_word(shot,13,word(b,row+2));
    // Live ROM trace of CCA0/CCC0: $863C adds weapon-specific muzzle
    // placement on top of the six-byte velocity table.
    const int xoff_px = weapon_type==8 ? 16 : (weapon_type==6 ? -16 : 0);
    const int yoff_px = weapon_type==7 ? -17 : -1;
    shot.set_x_fixed(std::uint16_t(source.x_fixed()+xoff_px*32));
    shot.set_y_fixed(std::uint16_t(source.y_fixed()+yoff_px*32));
    shot.raw[5]=std::uint8_t(weapon_type==7 ? 1 : 0);
}

void select_ground_missile_velocity(Entity64& missile,bool below,bool lower,bool ahead) noexcept {
    // Bank02 $8EBB-$8F10. Only DE00 property $03 counts as a surface.
    const unsigned vx=below && lower?0x0200u:0u;
    const unsigned vy=!below?0x0100u:(!lower?0x0200u:(!ahead?0x0100u:0u));
    set_word(missile,13,std::uint16_t(vx));set_word(missile,11,std::uint16_t(vy));
}

void advance_shot(Entity64& shot) noexcept {
    if (!shot.active()) return;
    // Original CC40/60/80 trace: player weapon positions update on the ~15-Hz
    // object cadence (for W, vy=$0100 changes Y by $0100 every ~60 ms). Native
    // presentation interpolates that velocity over four 60-Hz frames so the
    // path is faithful but visually smooth instead of running 4x too fast.
    const int vy=std::int16_t(word(shot.raw,11));
    const int vx=std::int16_t(word(shot.raw,13));
    shot.set_y_fixed(std::uint16_t(shot.y_fixed()+vy/4));
    shot.set_x_fixed(std::uint16_t(shot.x_fixed()+vx/4));
    if (shot.raw[4] || (shot.y_fixed()>>8)>=0x18 || (shot.x_fixed()>>8)>=0x20)
        shot.type()=0;
}
void initialize_primary_shot(const Rom& rom,const Entity64& player,Entity64& shot,
                             unsigned level,bool wave) {
    if(level>2) throw std::invalid_argument("power level must be 0..2");
    initialize_basic_shot(rom,player,shot);
    shot.raw[5]=std::uint8_t((wave?15:12)+level);
    shot.raw[6]=std::uint8_t((level+1)*(wave?2:1));
}

std::array<std::uint8_t,24*48> compose_stage0_horizontal_tiles(
        const LevelMap& level,unsigned stream_camera_pixels) {
    std::array<std::uint8_t,24*48> window{};
    const unsigned left=(std::max(stream_camera_pixels,kInitialCameraPixels)-kInitialCameraPixels)/8;
    for(unsigned y=0;y<24;++y) for(unsigned x=0;x<48;++x)
        window[y*48+x]=level.get(left+x,y);
    return window;
}

PlaySession::PlaySession(const Rom& rom)
    : rom_(rom), visual_level_(LevelStreamDecoder(rom).decode_mode0(kStage0VisualStart)),
      stream_runtime_(LevelStreamDecoder(rom).decode_mode0(kStage0StreamAnchor)),
      video_(Screen4Snapshot::from_stage0_rom(rom)),
      spawns_(StageSpawnStream::decode_stage0(rom,true)), background_(rom) {
    const auto logic=LevelStreamDecoder(rom).decode_mode0(kStage0StreamAnchor);
    logic_start_frame_=((visual_level_.width_tiles-logic.width_tiles)*8*3+1)/2-2*kInitialCameraPixels;
    reset();
}
void PlaySession::reset(unsigned stage) {
    if(stage>8) throw std::invalid_argument("available stage index must be 0..8");
    bomb_palette_bias_=0;bomb_palette_ticks_=0;
    stage_index_=0;stage_start_frame_=0;previous_gate_actors_={};music_playing_=true;
    sound_events_.clear();
    game_={}; shots_={}; frame_=0; camera_half_pixels_=2*kInitialCameraPixels; fire_was_down_=false;
    spawns_=StageSpawnStream::decode_stage0(rom_,true); stream_runtime_.reset(); background_.reset(); presenter_.reset();enemies_.reset();
    prev_world_phase_valid_=false;
    option_shots_={};missile_shot_.clear();options_={};option_mode_=0;player_history_.fill(game_.player);
    combat_.reset();video_=Screen4Snapshot::from_stage0_rom(rom_);
    late_normal_palette_=video_.late_palette;
    tower_normal_palette_=video_.tower_palette;
    scene_palette_active_=false;scene_palette_phase_=0;
    scene_base_palette9_=video_.palette[9];scene_palette_color_=scene_base_palette9_;
    tower_flash_palette_=tower_normal_palette_;
    vehicle_tower_normal_palette_=video_.vehicle_tower_palette;
    vehicle_tower_flash_palette_=vehicle_tower_normal_palette_;
    // Boss routine $6A22 writes V9938 value $666 while CE48 bit1 is set.
    // The two stage-0 bosses address different palette-register sets.
    constexpr std::uint32_t flash666=0xffdbdbdbu;
    for(unsigned i:{1u,2u,3u,4u,9u,11u,12u}) tower_flash_palette_[i]=flash666;
    for(unsigned i:{0u,1u,2u,3u,4u,5u,9u}) vehicle_tower_flash_palette_[i]=flash666;
    boss_hit_timer_=0;boss_palette_flags_=0;boss_palette_kind_=0;
    // $8254 initial ship record, including 15-tick spawn protection.
    game_.player.type()=1; game_.player.flags15()=0x39;
    game_.player.raw[0x13]=3; game_.player.raw[0x14]=0x83; game_.player.raw[0x18]=15;
    player_history_.fill(game_.player);
    level_frames_=0;
    // Initialize the requested ROM stage, not merely "a nonzero stage".
    // The old boolean shortcut always called begin_next_stage() once, so
    // reset(2)/reset(3) silently landed in stage 2. Reuse the normal handoff
    // path repeatedly to keep graphics, stream, spawn and palette setup shared.
    for(unsigned s=0;s<stage;++s) begin_next_stage();
}
void PlaySession::set_test_loadout(bool maximum) noexcept {
    if(maximum) combat_.set_max_test_loadout();
    else {combat_.clear_upgrades(); options_={};option_shots_={};missile_shot_.clear();option_mode_=0;}
}
void position_option(const Entity64& player,Entity64& option,unsigned mode) noexcept {
    static constexpr int dx[3]={-0x80,0,0x80}; // bank02 $8569 / CB1B
    const auto local_y=std::uint16_t(unsigned(option.raw[0x17])|(unsigned(option.raw[0x18])<<8u));
    option.set_x_fixed(std::uint16_t(player.x_fixed()+dx[mode%3u]));
    option.set_y_fixed(std::uint16_t(player.y_fixed()+0xe0u+local_y)); // $8324
}
void PlaySession::step_60hz(PlayerInput input) {
    sound_events_.clear();
    ++frame_;
    if(scene_palette_active_ && (frame_&1u)==0u) {
        scene_palette_color_=stage_scene_palette9(scene_palette_phase_);
        scene_palette_phase_=std::uint8_t((scene_palette_phase_+1u)%10u);
    }
    if(scene_palette_active_) {
        video_.palette[9]=scene_palette_color_;
        video_.late_palette[9]=scene_palette_color_;
        video_.tower_palette[9]=scene_palette_color_;
    }
    if(bomb_palette_ticks_) --bomb_palette_ticks_;
    const auto directions=std::uint8_t((input.up?1:0)|(input.down?2:0)|
                                      (input.left?4:0)|(input.right?8:0));
    // Live $8108 calls are 20 Hz (~50 ms). Preserve the ROM velocity table,
    // distributing each update across three native frames for smooth input.
    auto moved=game_.player;
    move_player(rom_,moved,directions,std::uint8_t(combat_.upgrades().speed));
    game_.player.raw[5]=moved.raw[5];
    const int move_phase=int((frame_-1u)%3u);
    auto delta=[&](unsigned p) {
        const int v=std::int16_t(word(moved.raw,p));
        set_word(game_.player,p,std::uint16_t(v));
        return v*(move_phase+1)/3-v*move_phase/3;
    };
    const auto y=std::uint16_t(game_.player.y_fixed()+delta(11));
    const auto x=std::uint16_t(game_.player.x_fixed()+delta(13));
    if((y>>8u)<0x14u) game_.player.set_y_fixed(y);
    if((std::uint16_t(x-0x80u)>>8u)<0x1du) game_.player.set_x_fixed(x);
    if (game_.player.raw[0x18]) --game_.player.raw[0x18];
    // Original bank02 $82B4/$8324 keeps O satellites beside the ship.
    // A live original-ROM trace gives option1 local vertical offset FD80;
    // $8324 then adds +00E0, for a net -01A0 (-13 px) from the player.
    // C907 bit5 (M) runs $8569: CB1B cycles FF80,0000,0080 and SFX $08.
    if(input.option_mode_pressed && combat_.upgrades().options) {
        option_mode_=(option_mode_+1u)%3u;
        sound_events_.push_back(PlaySound::OptionMode);
    }
    for(unsigned i=0;i<options_.size();++i) {
        auto& option=options_[i];
        if(i>=combat_.upgrades().options) {option.clear();continue;}
        option.clear();option.type()=2;option.state()=3;option.flags15()=0x91;
        option.raw[5]=std::uint8_t((frame_/4)&3u); // original 15-Hz 0..3 animation
        // $839C supplies $0280 on each side; $8324 adds $00E0 to
        // both. The ship and option sprite origins differ, so this is
        // deliberately asymmetric in anchor coordinates.
        const auto b2=rom_.bank(2);
        const int radius=int(word(b2,0x39c));
        const int local_y=(i==0?-radius:radius)+0xe0;
        option.raw[0x17]=std::uint8_t((local_y-0xe0)&0xff);
        option.raw[0x18]=std::uint8_t(std::uint16_t(local_y-0xe0)>>8);
        position_option(game_.player,option,option_mode_);
    }
    if (input.fire_pressed || (input.fire && !fire_was_down_)) {
        const auto& upgrades=combat_.upgrades();
        const bool pool_empty=std::none_of(shots_.begin(),shots_.end(),[](auto& s){return s.active();});
        bool fired=false;
        bool missile_fired=false;
        if(upgrades.missile_armed && pool_empty) {
            // Pickup $0B sets CB1D. $8816 consumes it on the next fire edge and
            // creates two type-8 missile records in the primary three-shot pool.
            for(unsigned i=0;i<2;++i) {
                auto& shot=shots_[i];shot.clear();shot.type()=8;shot.state()=0;
                shot.raw[3]=i?1:5;shot.raw[5]=i?0:4;
                shot.raw[0x13]=3;shot.raw[0x14]=3;shot.flags15()=5;shot.raw[0x17]=5;
                shot.set_x_fixed(std::uint16_t(game_.player.x_fixed()+12*32));
                shot.set_y_fixed(game_.player.y_fixed());
                set_word(shot,11,0);set_word(shot,13,0x0180);
            }
            combat_.consume_missile();fired=true;missile_fired=true;
        } else if(upgrades.wave) {
            if(pool_empty) {
                for(unsigned i=0;i<3;++i) {
                    auto& shot=shots_[i];initialize_primary_shot(rom_,game_.player,shot,upgrades.power_level(),true);
                    set_word(shot,11,i==0?0:(i==1?256:std::uint16_t(-256)));
                }
                fired=true;
            }
        } else for(auto& shot:shots_) if(!shot.active()) {
            initialize_primary_shot(rom_,game_.player,shot,upgrades.power_level(),false);
            fired=true;break;
        }
        for(unsigned i=0;i<upgrades.options;++i) {
            // Original pools are CCA0/CCC0 and CCE0/CD00: two shots per O.
            for(unsigned n=i*2;n<i*2+2;++n) if(!option_shots_[n].active()) {
                auto& shot=option_shots_[n];
                static constexpr unsigned option_weapon[3]={8,7,6}; // right/up/left
                initialize_directional_shot(rom_,options_[i],shot,option_weapon[option_mode_],upgrades.power_level());
                fired=true;break;
            }
        }
        // M pickup ($03): CB48=$80/mode3, one independent projectile slot at
        // CD20. Direct original $8E50 fixture at player (0500,0800) yields:
        // type7, weapon4, y=0980, x=0500, vy=0100, vx=0000, flags=$05.
        if(upgrades.missile && !missile_shot_.active()) {
            auto& m=missile_shot_;m.clear();m.type()=7;m.raw[3]=4;m.raw[5]=0;
            m.raw[0x13]=3;m.raw[0x14]=3;m.flags15()=5;m.raw[0x17]=1;
            m.set_y_fixed(std::uint16_t(game_.player.y_fixed()+0x0180));
            m.set_x_fixed(game_.player.x_fixed());
            set_word(m,11,0x0100);set_word(m,13,0);
            fired=true;
        }
        if(fired) {
            // Original bank02 firing paths select distinct sound requests:
            // W -> $03 ($8C35), highest-power normal shot -> $04 ($8CC0),
            // ordinary shot -> $02, and the blue two-part missile -> $0C.
            const auto shot_sound=upgrades.wave ? PlaySound::WaveShot :
                (upgrades.power_level()==2 ? PlaySound::PowerShot : PlaySound::Shot);
            sound_events_.push_back(missile_fired ? PlaySound::MissileLaunch : shot_sound);
        }
    }
    fire_was_down_=input.fire;
    auto stage_property=[&](std::uint8_t tile)->std::uint8_t {
        // Original DE00 stage-0 tile-property table. It is replaced once, at
        // the A13F vehicle context; these two maps were captured from the
        // unmodified game.
        if(stage_index_==1u) {
            // Live original DE00: scenery IDs differ from stage 0. The boss
            // context switches to bank10 $8709's property ranges.
            if(background_.graphics_set()==1u) {
                if(tile>=0x50u && tile<=0xbdu) return 3;
                if(tile>=0xc4u && tile<=0xcau) return 2;
                if(tile>=0xcbu && tile<=0xcdu) return 0x47;
            } else {
                if((tile>=1u && tile<=0x10u) || (tile>=0xacu && tile<=0xbfu)) return 0x47;
                if((tile>=0x11u && tile<=0x4au) || (tile>=0xc0u && tile<=0xcdu)) return 3;
            }
            if(tile>=0xceu && tile<=0xe9u) return 0x24;
            return 0;
        }
        if(camera_pixels()>=1538) {
            if((tile>=0x01&&tile<=0x10) || (tile>=0x16&&tile<=0x17) ||
               (tile>=0x19&&tile<=0x30)) return 0x47;
            if(tile==0x11 || tile==0x18 || (tile>=0x8d&&tile<=0xab)) return 0x02;
            if(tile>=0x33&&tile<=0x8c) return 0x03;
        }
        if(tile>=0xbd&&tile<=0xc5) return 0x03;
        if(tile>=0xce&&tile<=0xe9) return 0x24;
        return 0;
    };
    // Weapons query the complete ROM name table, including the vehicle deck.
    // Rendering omits these stamps in favor of smooth overlays; collision must
    // still see their tile properties so M follows the vehicle surface.
    auto collision_tiles=background_.compose_d988_base();
    stamp_stage0_tile_objects(rom_,background_,game_,collision_tiles,true);
    auto terrain_tile=[&](const Entity64& e,int xo,int yo)->std::uint8_t {
        const bool late=camera_pixels()>=1538;
        const unsigned fx=late?(background_.ca1c()&0xffu):0u;
        const unsigned fy=late?(background_.ca1a()&0xffu):0u;
        const auto x=std::uint16_t(e.x_fixed()+xo+fx);
        const auto y=std::uint16_t(e.y_fixed()+yo+fy);
        const int col=int(std::int8_t(x>>8u)),row=int(std::int8_t(y>>8u));
        if(col<0||col>=32||row<0||row>=24) return 0xff;
        if(late) return collision_tiles[unsigned(row)*32u+unsigned(col)];
        const auto early=compose_stage0_horizontal_tiles(visual_level_,camera_pixels());
        return early[unsigned(row)*48u+unsigned(col)];
    };
    auto terrain_property=[&](const Entity64& e,int xo,int yo)->std::uint8_t {
        const auto tile=terrain_tile(e,xo,yo);
        return tile==0xffu ? 0xffu : stage_property(tile);
    };
    auto advance=[&](Entity64& shot) {
        if(shot.type()!=8) {advance_shot(shot);return;}
        // Exact bank02 $8885 state order: on a logic tick the handler first
        // checks boundary/scenery and updates timer/state/velocity, then $6A7F
        // moves the projectile. Native splits that one movement into four
        // presentation quarters.
        if((frame_&3u)==0u) {
            auto detonate=[&] {
                shot.raw[0x17]=3;
                shot.raw[5]=std::uint8_t((shot.raw[5]&4u)+1u);
                set_word(shot,13,0);
                shot.state()=3;
            };
            if(shot.state()<=2u) {
                // $88E6: x >= $1D or any nonzero property at (+1,+1) starts
                // the detonation immediately, in all three travel states.
                const bool contact=(shot.x_fixed()>>8)>=0x1du ||
                                   terrain_property(shot,0x0100,0x0100)!=0;
                if(contact) detonate();
                else if(shot.raw[0x17] && --shot.raw[0x17]==0) {
                    shot.raw[0x17]=5;
                    if(shot.state()==0u) {set_word(shot,13,0x00c0);shot.state()=1;}
                    else if(shot.state()==1u) {set_word(shot,13,0x0040);shot.state()=2;}
                    else detonate();
                }
            } else if(shot.state()==3u) {
                if(shot.raw[0x17] && --shot.raw[0x17]==0) {
                    shot.raw[0x17]=5;++shot.raw[5];
                    if((shot.raw[5]&3u)==3u) {
                        // $8912/$8915: end of the four-frame expanding effect.
                        sound_events_.push_back(PlaySound::BombExpand);
                        bomb_palette_bias_=-4;bomb_palette_ticks_=4;
                        shot.state()=4;
                    }
                }
            } else if(shot.state()==4u) {
                if(shot.raw[0x17] && --shot.raw[0x17]==0) {
                    // $891C-$8932 first global blast phase ($7058).
                    if(shot.raw[3]&1u) {
                        combat_.clear_vulnerable(rom_,game_);combat_.blast_bosses(rom_,game_);
                        bomb_palette_bias_=4;bomb_palette_ticks_=4;
                    }
                    shot.state()=5;
                }
            } else {
                // $8934-$8949 second phase ($708B/$7058) and immediate retire;
                // the original does not hold state 5 for another five ticks.
                if(shot.raw[3]&1u) {
                    combat_.clear_vulnerable(rom_,game_);combat_.blast_bosses(rom_,game_);
                    sound_events_.push_back(PlaySound::BombBlast);
                }
                shot.clear();
                return;
            }
        }
        if(!shot.active()) return;
        const int vy=std::int16_t(word(shot.raw,11));
        const int vx=std::int16_t(word(shot.raw,13));
        shot.set_y_fixed(std::uint16_t(shot.y_fixed()+vy/4));
        shot.set_x_fixed(std::uint16_t(shot.x_fixed()+vx/4));
    };
    for(auto& shot:shots_) if(shot.active()) advance(shot);
    for(auto& shot:option_shots_) advance_shot(shot);
    if(missile_shot_.active()) {
        // Type $07 / CB48 missile: original $8E9B-$8F10.  $8F06 probes the
        // stage collision-property table and returns carry only for property
        // $03.  $8EBB then selects one of four exact velocity pairs so the
        // missile falls to the surface and follows flat/downward terrain.
        if((frame_&3u)==0u) {
            auto solid=[&](int xo,int yo) {return terrain_property(missile_shot_,xo,yo)==0x03u;};
            const bool below=solid(0x0100,0x0200);
            const bool lower=solid(0x0100,0x0300);
            const bool ahead=solid(0x0300,0x0200);
            select_ground_missile_velocity(missile_shot_,below,lower,ahead);
            // The original projectile is gravity-bound, but it must not tunnel
            // through a vertical step that is taller than its climb allowance.
            // Probe the forward face at missile height and one cell above the
            // running surface; on contact retain vertical gravity and stop X.
            const bool wall=solid(0x0200,0x0000) || solid(0x0200,0x0100);
            // A vertical obstacle is not a surface-following case.  Retire the
            // M projectile immediately so the independent CD20 slot becomes
            // available for the next shot instead of waiting for screen scroll.
            if(wall) missile_shot_.clear();
        }
        if(missile_shot_.active()) {
            missile_shot_.set_y_fixed(std::uint16_t(missile_shot_.y_fixed()+
                std::int16_t(word(missile_shot_.raw,11))/4));
            missile_shot_.set_x_fixed(std::uint16_t(missile_shot_.x_fixed()+
                std::int16_t(word(missile_shot_.raw,13))/4));
            if((missile_shot_.x_fixed()>>8)>=0x20 || (missile_shot_.y_fixed()>>8)>=0x18) missile_shot_.clear();
        }
    }
    game_.difficulty=std::uint8_t(combat_.upgrades().difficulty(rom_));
    enemies_.move_60hz(game_,frame_);
    const auto trigger=std::uint16_t(stage_index_?background_.trigger_cursor():(camera_pixels()<3072?0x1000+camera_pixels()/8:background_.trigger_cursor()));
    for(auto spawn:spawns_.step_to_trigger(trigger,false,game_.difficulty)) {
        if(const auto command=decode_stage_scene_command(spawn);
           command.kind!=StageSceneCommandKind::None) {
            if(command.kind==StageSceneCommandKind::PalettePulse) {
                scene_palette_active_=command.enabled;scene_palette_phase_=0;
                if(command.enabled) scene_palette_color_=video_.palette[9];
                else {
                    scene_palette_color_=scene_base_palette9_;video_.palette[9]=scene_base_palette9_;
                    video_.late_palette[9]=late_normal_palette_[9];
                    video_.tower_palette[9]=tower_normal_palette_[9];
                }
            } else if(command.kind==StageSceneCommandKind::ClearObjects) {
                // Fixed $6105-$6124: retain only type $65 in the 20-slot
                // object pool. Our $51 wave controllers live outside that
                // pool, so clear them explicitly at the same boundary.
                for(auto& e:game_.enemies) if(e.type()!=0x65u) e.clear();
                enemies_.clear_waves();previous_gate_actors_={};
                scene_palette_active_=false;scene_palette_phase_=0;
                scene_palette_color_=scene_base_palette9_;video_.palette[9]=scene_base_palette9_;
                video_.late_palette[9]=late_normal_palette_[9];video_.tower_palette[9]=tower_normal_palette_[9];
            }
            continue;
        }
        spawn.raw_type&=0x7fu;
        enemies_.spawn(rom_,spawn,game_,(stage_index_==0 && camera_pixels()<3072)?1:background_.spawn_direction());
        for(auto& e:game_.enemies) if((e.type()==0x20 || e.type()==0x29) && !e.raw[0x3a]) {
            e.raw[0x3a]=1;combat_.spawned(e);
        }
    }
    // The terminal gate/explosion handler is on the original 20-Hz cadence.
    // Keeping it on the generic 15-Hz object tick delayed vulnerability by
    // ~1.5 seconds and made visible shots pass through the tower too long.
    if((frame_%3u)==0u) {
        const bool death_wrap=std::any_of(game_.enemies.begin(),game_.enemies.end(),
            [](const auto& e){return e.type()==0x6au && e.state()==0u && e.raw[6]==7u;});
        previous_gate_actors_=game_.enemies;
        enemies_.step_gate_20hz(rom_,game_,frame_/3u,&sound_events_,
            std::uint8_t((background_.fast_ground_phase()+(background_.ca1c()>>8u))&7u),
            std::uint8_t(background_.ca1c()));
        if(death_wrap) {
            // $9AD7/$7058 is followed by the secondary-pool clear.  The boss's
            // type-$40 attack rockets disappear as part of that cleanup; they
            // do not each enter the ordinary damage/death audio path.
            for(auto& child:game_.enemies) if(child.type()==0x40u) child.clear();
            combat_.clear_vulnerable(rom_,game_);
        }
        for(auto& e:game_.enemies) if(e.type()==0x40u && e.state()==3u) {
            const auto property=terrain_property(e,0x0100,0x0100);
            if(property!=0 && property!=0xff) e.raw[4]=0xff; // original $A62D
        }
    }
    if((frame_&3)==0) {
        // Bank05 $9A4B-$9A5F: on the final $62 frame, +3D requests an item
        // at the effect's current (already camera-scrolled) position.
        for(auto& e:game_.enemies) if(e.active() && e.type()==0x62 &&
                                      e.raw[5]==3 && e.raw[0x3d]) {
            const auto x=e.x_fixed(), y=e.y_fixed();
            e.raw[0x3d]=0;
            if(auto* slot=game_.allocate_enemy()) combat_.drop(rom_,*slot,x,y);
        }
        // $7C63 begins every boss-damage service by clearing the transient
        // white-flash bit and counting CE47 down. Hits can re-arm it at zero.
        boss_palette_flags_&=std::uint8_t(~0x02u);
        if(boss_hit_timer_) --boss_hit_timer_;
        const auto sound_mark=sound_events_.size();
        const bool tower_was_destroyed=game_.tower_destroyed;
        enemies_.step_15hz(rom_,game_,frame_/4,trigger,false,&sound_events_,
            [&](const Entity64& e,int xo,int yo){return terrain_property(e,xo,yo);},
            [&](const Entity64& e,int xo,int yo){return terrain_tile(e,xo,yo);});
        bool have56=false,red56=false,white56=false;
        for(const auto& e:game_.enemies) if(e.active() && e.type()==0x56u) {
            have56=true;red56|=e.raw[0x3c]!=0u || e.state()>=2u;
            white56|=(e.raw[0x3c]&2u)!=0u;
        }
        if(have56) {
            boss_palette_kind_=0x56u;
            if(red56) boss_palette_flags_|=0x01u;
            if(white56) boss_palette_flags_|=0x02u;
        } else if(boss_palette_kind_==0x56u) {
            boss_palette_kind_=0;boss_palette_flags_=0;boss_hit_timer_=0;
        }
        for(std::size_t i=sound_mark;i<sound_events_.size();++i) {
            if(sound_events_[i]==PlaySound::BossHit && have56 && !boss_hit_timer_) {
                boss_hit_timer_=4u;boss_palette_flags_|=0x02u;
            }
        }
        if(!tower_was_destroyed && game_.tower_destroyed) {
            combat_.award_destroyed(rom_,0x56u);background_.set_tower_destroyed(true);
        }
    }
    auto damage_enemy=[&](Entity64& enemy,std::uint8_t amount) {
        const auto original=enemy;
        const auto damage=apply_stage0_damage(rom_,enemy,amount);
        if(damage==Stage0DamageResult::Ignored) return false;
        if(original.type()==0x64u) {
            boss_palette_kind_=0x64u;
            // Custom continuation $7C63: a hit flashes white only when
            // CE47 is idle; HP <= CE4A ($3C/4 = $0F) latches the red palette.
            if(!boss_hit_timer_) {boss_hit_timer_=4u;boss_palette_flags_|=0x02u;}
            if(damage==Stage0DamageResult::Destroyed || enemy.raw[0x16]<=0x0fu)
                boss_palette_flags_|=0x01u;
        }
        // Boss damage path $7C63 initializes CE4A to startHP/4 and sets
        // CE48 bit0 once remaining HP reaches that threshold. For type $64
        // start HP is $3C, so $0F is the original red/critical phase.
        if(enemy.type()==0x64u && enemy.raw[0x16]<=0x0fu) enemy.raw[0x3c]=1u;
        append_stage0_damage_sounds(rom_,original.type(),damage,sound_events_);
        if(damage==Stage0DamageResult::Destroyed) {
            // Type-$64 death immediately invalidates its type-$40 attack pool.
            // Clearing them here (the same frame as sound $4D/TowerExplosion)
            // prevents player fire from killing those rockets during the eight
            // $6A explosion selectors and emitting stray Hit/Explosion sounds.
            if(original.type()==0x64u)
                for(auto& child:game_.enemies) if(&child!=&enemy && child.type()==0x40u) child.clear();
            if(original.type()==0x3eu) {
                // Stage-3 boss death ($7CC3 -> type $6A) invalidates all
                // three linked $3F tile actors immediately. Their +34 bytes
                // contain the parent's original pool id.
                for(auto& child:game_.enemies)
                    if(&child!=&enemy && child.type()==0x3fu && child.raw[0x34]==original.raw[0x2d])
                        child.clear();
            }
            if(original.type()==0x7au) {
                // Original boss death raises CE52. The seven linked $3B
                // segments disappear and each final-sector $3C receives the
                // fatal pending hit on its next object pass.
                for(auto& child:game_.enemies) if(&child!=&enemy) {
                    if(child.type()==0x3bu) child.clear();
                    else if(child.type()==0x3cu) child.raw[0x04]=0xffu;
                }
            }
            const bool bonus=enemies_.destroyed(original);
            combat_.award_destroyed(rom_,original.type());
            // Standard destruction becomes type $62. Bank05:$9A41 drives
            // its four real sprite frames through +05; other replacement
            // handlers remain on the temporary lifetime path for now.
            if(enemy.type()==0x62) {
                enemy.flags15()=0x2d;
                enemy.raw[5]=0;
                enemy.raw[0x3e]=0;
            } else if(enemy.type()==0x6au) {
                // Stage-0 gate death handler is fully ported below; do not
                // attach the generic temporary-lifetime fallback.
                enemy.raw[0x3f]=0;
            } else if(enemy.type()==0x6b) {
                // $7CC3 deliberately preserves +3E from the destroyed
                // source actor. Bank05:$9B38 consumes it as the persistent
                // wreck frame selector; do not replace it with a lifetime.
            } else {
                enemy.flags15()|=1;
                // Native fallback only for replacement handlers that are
                // still genuinely unported. Tag the temporary lifetime in
                // +3F so it can never collide with normal ROM semantics.
                enemy.raw[0x3e]=12;
                enemy.raw[0x3f]=0xd1;
            }
            if(bonus) {
                if(enemy.type()==0x62) {
                    // Original $9A41 explosion carries +3D until frame
                    // 3->0, then $9A55/$6F55 creates the item at the final
                    // scrolled explosion position. Do not pop it instantly.
                    enemy.raw[0x3d]=1;
                } else if(auto* slot=game_.allocate_enemy()) {
                    combat_.drop(rom_,*slot,original.x_fixed(),original.y_fixed());
                }
            }
        }
        return true;
    };
    // $7058 schedules damage; consume it through the same death/reward/audio
    // service as a bullet. Otherwise blue blasts silently lost every bonus.
    if((frame_&3u)==0u) for(auto& enemy:game_.enemies)
        if(enemy.active() && enemy.type()!=0x56u && enemy.raw[4])
            damage_enemy(enemy,enemy.raw[4]);
    auto collide=[&](Entity64& shot) {
        if(!shot.active() || shot.type()==8u) return;
        for(auto& enemy:game_.enemies) {
            // The stage-3 $3E parent is an invisible controller. Its linked
            // $3F pieces are the actual hit geometry, and only attack family
            // 2 with a nonzero extension phase exposes the weak point.
            if(enemy.type()==0x3eu) continue;
            const bool stage3_weak=enemy.type()==0x3fu && enemy.raw[0x23]==2u && enemy.raw[0x24]!=0u;
            auto target=enemy;
            auto visible_shot=shot;
            if(camera_pixels()>=1536u && shot.type()!=7u &&
               enemy.type()!=0x10u && enemy.type()!=0x12u && enemy.type()!=0x15u && enemy.type()!=0x18u)
                visible_shot.set_y_fixed(std::uint16_t(shot.y_fixed()-(background_.mode()==4u?7u:8u)*32u));
            if((!stage3_weak && !(enemy.raw[0x14]&128u)) ||
               !stage0_sprite_overlap(rom_,visible_shot,target)) continue;
            // $76A9 stores one pending hit; simultaneous W components do not
            // subtract HP independently. Type 4 supplies +06, M/type7 supplies 2.
            const auto amount=std::uint8_t(shot.type()==4u?shot.raw[6]:2u);
            if(stage3_weak) {
                for(auto& parent:game_.enemies)
                    if(parent.type()==0x3eu && parent.raw[0x2d]==enemy.raw[0x34]) {
                        parent.raw[4]=amount;break;
                    }
            } else enemy.raw[4]=amount;
            shot.clear();break;
        }
    };
    for(auto& shot:shots_) collide(shot);
    for(auto& shot:option_shots_) collide(shot);
    collide(missile_shot_);
    // Original $86BE (enemy scan) precedes $86AF (scenery). A cannon's solid
    // tile must not swallow the projectile before its pending hit is recorded.
    if((frame_&3u)==0u) {
        for(auto& shot:shots_) if(shot.active() && shot.type()==4u &&
            terrain_property(shot,0x0100,0x0100)!=0) shot.clear();
        for(auto& shot:option_shots_) if(shot.active() &&
            terrain_property(shot,0x0100,0x0100)!=0) shot.clear();
    }
    const unsigned origin=stage_index_?stage_start_frame_:logic_start_frame_;
    const bool stage_tick=frame_>=origin && ((frame_-origin)&3)==0;
    const bool was_gated=background_.gated();
    if(stage_tick && camera_pixels()>=1536) {
        prev_fast_ground_phase_=std::uint8_t((unsigned(background_.fast_ground_phase())+
            unsigned(std::uint8_t(background_.ca1c()>>8u)))&7u);
        prev_fast_ground_ca3a_=background_.fast_ground_phase();
        prev_fast_ground_row_=std::uint8_t(0u-std::uint8_t(background_.ca1a()>>8u));
        prev_fast_ground_r18_=std::uint8_t(background_.presentation_state().r18&7u);
        prev_star_x_phase_=background_.star_x_phase();
        prev_parallax_phase_=background_.parallax_phase();
        prev_world_phase_valid_=true;
    }
    const int pickup_y_step=camera_pixels()>=1536 && stage_tick && !background_.gated()
        ? int(std::int16_t(background_.y_velocity_fp()))/8 : 0;
    if(stage_index_) {
        if(stage_tick && !background_.gated()) {
            step_stage0_object_scroll_15hz(game_,background_.x_velocity_fp(),background_.y_velocity_fp(),&rom_);
            step_stage0_object_logic_15hz(game_);background_.step_15hz();
            // Bank06 $A2C3-$A2CB: selector-0 type $3C owns the final-sector
            // raster anchor and executes fixed $6C75 with A=$FB every tick.
            for(const auto& e:game_.enemies)
                if(e.type()==0x3cu && e.state()==1u && e.raw[0x06]==0u)
                    background_.apply_object_raster_anchor(e.x_fixed(),e.y_fixed(),0xfbu);
            camera_half_pixels_=3072u+background_.world_x()*2u;
        }
    } else if (camera_pixels()<1536) {
        // Blue/pre-vehicle section: this path really does present at the
        // video-frame cadence. Keep the existing half-pixel camera here.
        ++camera_half_pixels_;
        if (frame_>=logic_start_frame_) {
            stream_runtime_.step_60hz();
            if(stage_tick) sm::step_stage0_objects(game_,&rom_);
        }
    } else if(camera_pixels()<3072) {
        // Original vehicle section: OpenMSX 60-Hz traces show C0BB, CA1C and
        // type-$24/$20/$26 positions held for 3-4 video frames, followed by
        // one complete $40 (=2 px) scenery tick. R18 remains constant $70.
        // Keep this ROM integration cadence; native presentation distributes
        // its displacement over the four displayed frames.
        if(frame_>=logic_start_frame_) stream_runtime_.step_60hz();
        if(stage_tick) {
            sm::step_stage0_objects(game_,&rom_);
            background_.step_15hz();
            camera_half_pixels_=background_.world_x()*2;
        }
    } else if(!background_.gated()) {
        if(stage_tick) {
            step_stage0_object_scroll_15hz(game_,background_.x_velocity_fp(),background_.y_velocity_fp(),&rom_);
            step_stage0_object_logic_15hz(game_);
            background_.step_15hz();
            camera_half_pixels_=background_.world_x()*2;
        }
    }
    if(stage_tick && was_gated) background_.step_15hz();
    if(missile_shot_.active() && stage_tick && camera_pixels()>=1536 && !background_.gated()) {
        missile_shot_.set_x_fixed(std::uint16_t(missile_shot_.x_fixed()-int(std::int16_t(background_.x_velocity_fp()))/8));
        missile_shot_.set_y_fixed(std::uint16_t(missile_shot_.y_fixed()-pickup_y_step));
    }
    // The terminal $5000 encounter is spawned by the real stage-0 spawn
    // stream. Do not replace the live enemy pool with the old A438 fixture:
    // that hid the actual type-$64 creation bug and discarded live state.
    // Pickups use the same 60-Hz presentation velocity as the scenery.
    // Integer camera_pixels() used to alternate 0/1px before the vehicle and
    // jump by the full coarse step after it, making pickups visibly stutter.
    const int pickup_x_step = camera_pixels()<1536 ? 16 :
        (stage_tick && !background_.gated() ? int(std::int16_t(background_.x_velocity_fp()))/8 : 0);
    combat_.step(rom_,game_,frame_,pickup_x_step,pickup_y_step,sound_events_);
    const auto bank2=rom_.bank(2);
    const unsigned bitmap=0x9b0+combat_.upgrades().power_level()*64+(combat_.upgrades().wave?192:0);
    for(unsigned dest:{0xca00u,0xd200u,0xda00u})
        std::copy_n(bank2.begin()+bitmap,32,video_.vram.begin()+dest);
    for(const auto& shot:shots_) if(shot.type()==8 && !(shot.raw[5]&4)) {
        const unsigned stage=std::min(2u,unsigned(shot.raw[5]));
        for(unsigned dest:{0xca20u,0xd220u,0xda20u})
            std::copy_n(bank2.begin()+0xb30+stage*64,64,video_.vram.begin()+dest);
    }
    // Persist this in the simulation so rewind/jump restores the soundtrack
    // state too. Effects continue throughout the boss destruction/countdown.
    if(std::any_of(game_.enemies.begin(),game_.enemies.end(),
        [](const auto& e){return e.type()==0x6au;})) music_playing_=false;
    // The shared $6A boss-death countdown advances the stage after its
    // final tick. Stage 2's $7A boss uses the same replacement/death path as
    // the stage-1 gate boss, so do not artificially restrict completion to
    // stage index 0.
    if(stage_index_<=2u && enemies_.stage_complete()) begin_next_stage();

}
void PlaySession::begin_next_stage() {
    // Bank01 $6308 advances CA10 after the $6A countdown, then loads the
    // checkpoint stream, graphics and spawn tables for the new stage.
    ++stage_index_;stage_start_frame_=frame_;music_playing_=true;
    background_.reset_stage(stage_index_);
    spawns_=StageSpawnStream::decode_stage(rom_,stage_index_);
    video_=Screen4Snapshot::from_stage_rom(rom_,stage_index_);
    late_normal_palette_=video_.late_palette;tower_normal_palette_=video_.tower_palette;
    scene_palette_active_=false;scene_palette_phase_=0;
    scene_base_palette9_=video_.palette[9];scene_palette_color_=scene_base_palette9_;
    boss_hit_timer_=boss_palette_flags_=boss_palette_kind_=0;
    game_.enemies={};game_.tower_destroyed=game_.platform_chain_active=false;enemies_.reset();previous_gate_actors_={};
    shots_={};option_shots_={};missile_shot_.clear();presenter_.reset();
    prev_world_phase_valid_=false;camera_half_pixels_=3072u+background_.world_x()*2u;
}
void PlaySession::seek_decile(unsigned step) {
    if(step>9) throw std::invalid_argument("level shortcut must be 0..9");
    const unsigned stage=stage_index_;
    if(step==0) {reset(stage);return;}
    if(!level_frames_) {
        PlaySession probe(rom_);probe.reset(stage);
        while(!probe.at_fight_gate() && probe.frame()<60000) probe.step_60hz({});
        if(!probe.at_fight_gate()) throw std::runtime_error("stage route did not reach fight gate");
        level_frames_=probe.stage_frame();
    }
    const unsigned target=level_frames_*step/10;
    reset(stage);
    while(stage_frame()<target) step_60hz({});
    sound_events_.clear();
    presenter_.reset();
}
std::vector<std::uint32_t> PlaySession::render() {
    // The original boss palette service ($AA22/$6A22) changes the VDP palette
    // globally: transient hit flash wins over the persistent low-HP red state.
    if(boss_palette_kind_==0x56u) {
        const auto& p=(boss_palette_flags_&0x02u)?vehicle_tower_flash_palette_:
            ((boss_palette_flags_&0x01u)?video_.vehicle_tower_red_palette:vehicle_tower_normal_palette_);
        // Type $56 runs while the stage streamer still reports palette_set=1.
        // The original $6A22 writes the physical VDP palette globally, so both
        // the late-palette and boss-palette renderer paths must see it.
        video_.late_palette=p;video_.tower_palette=p;
    } else {
        video_.late_palette=late_normal_palette_;
        video_.tower_palette=(boss_palette_flags_&0x02u)?tower_flash_palette_:
            ((boss_palette_flags_&0x01u)?video_.tower_red_palette:tower_normal_palette_);
    }
    if(scene_palette_active_) {
        video_.late_palette[9]=scene_palette_color_;
        video_.tower_palette[9]=scene_palette_color_;
    }
    auto bomb_palette=[&](auto p) {
        if(bomb_palette_ticks_) for(auto& c:p) {
            unsigned rgb=0xff000000u;
            for(int shift:{16,8,0}) {
                const int channel=int((c>>shift)&255u)*7/255;
                rgb|=unsigned(std::clamp(channel+bomb_palette_bias_,0,7)*255/7)<<shift;
            }
            c=rgb;
        }
        return p;
    };
    video_.late_palette=bomb_palette(video_.late_palette);
    video_.tower_palette=bomb_palette(video_.tower_palette);
    const auto initial_palette=bomb_palette(video_.palette);
    std::vector<std::uint32_t> pixels(256*212, 0xff000000u);
    int world_remaining_x=0,world_remaining_y=0;
    if(camera_pixels()>=1536 && !(render_native_wide_ && stage_index_==0u && background_.mode()==0u &&
                                background_.trigger_cursor()<0x2000u)) {
        const unsigned phase=(frame_-(stage_index_?stage_start_frame_:logic_start_frame_))&3u;
        auto current=background_.compose_d988_raw();
        if(render_fast_ground_phase_override_>=0) {
            const auto row=std::uint8_t(0u-std::uint8_t(background_.ca1a()>>8u));
            background_.apply_fast_ground_phase(current,background_.fast_ground_alternate(),
                std::uint8_t(render_fast_ground_phase_override_),row);
        } else if(phase==0u && prev_world_phase_valid_)
            background_.apply_fast_ground_phase(current,background_.fast_ground_alternate(),
                                                prev_fast_ground_phase_,prev_fast_ground_row_);
        else background_.apply_fast_ground(current,background_.fast_ground_alternate());
        stamp_stage0_tile_objects(rom_,background_,game_,current);
        if(!render_subpixel_) {
            if(phase==0u && prev_world_phase_valid_)
                background_.apply_d988_parallax_phase(current,prev_parallax_phase_);
            else background_.apply_d988_parallax(current);
        }

        // Supply the real logical column 32 to the SCREEN4 presenter for the
        // 1..7 fine-scroll pixels exposed at the right edge. The old path
        // repeated column 31 and created visible vertical tile fragments.
        auto right_edge=background_.compose_right_edge(!render_subpixel_);
        if(render_fast_ground_phase_override_>=0) {
            const auto row=std::uint8_t(0u-std::uint8_t(background_.ca1a()>>8u));
            if(row<3u) {
                const auto fixed=rom_.bank(0);
                const unsigned table=background_.fast_ground_alternate()?0x1e6bu:0x1e4bu;
                const unsigned p=unsigned(render_fast_ground_phase_override_)&7u;
                for(unsigned line=0;line<2u;++line) if(21u+unsigned(row)+line<24u)
                    right_edge[21u+unsigned(row)+line]=fixed[table+line*16u+p];
            }
        }
        stamp_stage0_tile_objects_right_edge(rom_,background_,game_,right_edge);
        auto current_state=background_.presentation_state();
        // Keep the original R18 fine-scroll in every D988/raster-backed mode.
        // The 512-wide compositor interpolates *between* these proven coarse
        // screen states. Neutralising R18 here made mode 2 move smoothly for
        // three frames and then jump three half-pixel samples backwards on
        // every fourth frame. The native vehicle-mode-0 path bypasses this
        // D988 block entirely, so it does not need an R18 override here.
        const auto current_start_row=std::uint8_t((unsigned(background_.scroll_row())&0xf8u)>>3u);

        int tick_x=0,tick_y=0;
        if(camera_pixels()<3072) tick_x=2;
        else {
            tick_x=int(std::int16_t(background_.x_velocity_fp()))/256;
            tick_y=int(std::int16_t(background_.y_velocity_fp()))/256;
        }
        // For +2px/tick this gives progress 0,1,1,2: the same pleasant
        // 1px-every-other-frame cadence as the blue intro, but with the
        // original 15-Hz state machine untouched.
        const int progress_x=tick_x*int(phase+1u)/4;
        const int progress_y=tick_y*int(phase+1u)/4;
        world_remaining_x=tick_x-progress_x;
        world_remaining_y=tick_y-progress_y;

        // Render the CURRENT coarse compositor, but temporarily place it back
        // toward the previous screen position. This avoids a separate old->new
        // page promotion (which was a second visible jerk for the $24 matrix).
        // In screen4, negative source offset moves the current image right.
        // The native horizontal map uses a different column origin from
        // the MSX D988 raster window. Resolve that one-cell difference in the
        // scenery itself, keeping every actor (and its collision/muzzle) in
        // its original continuous coordinate domain across the $12 handoff.
        const int native_column_origin=render_native_wide_ && stage_index_==0u && camera_pixels()>=3072u
            ? 8+int(std::int16_t(background_.x_velocity_fp()))/256 : 0;
        pixels=presenter_.render(background_,video_,current,&current_state,
                                 native_column_origin-world_remaining_x,-world_remaining_y,&right_edge,
                                 int(current_start_row),int(background_.graphics_set()),
                                 int(background_.palette_set()));
        // The A13F ring itself is exact, but its successor/rightmost physical
        // column is not yet presentation-ready for the first four coarse
        // positions. Keep only that 8px edge from the proven horizontal
        // compositor until camera 1544. The other 248 pixels already use D988,
        // avoiding a whole-screen renderer handoff while the vehicle enters.
        if(!render_native_wide_ && camera_pixels()<1544) {
            const unsigned camera=camera_pixels();
            auto edge_window=compose_stage0_horizontal_tiles(visual_level_,camera);
            const unsigned ground_phase=(7+frame_/4+(camera/8))&7;
            const auto fixed=rom_.bank(0);
            for(unsigned y=21;y<23;++y) for(unsigned x=0;x<48;++x)
                edge_window[y*48+x]=fixed[0x1e4b+(y-21)*16+ground_phase+(x&7)];
            for(const auto& e:game_.enemies) {
                if(e.type()==3) continue;
                const int col=std::int16_t(e.x_fixed())/256;
                const int row=std::int16_t(e.y_fixed())/256;
                for(const auto& v:decode_stage0_tile_visuals(rom_,e))
                    for(unsigned y=0;y<v.rows;++y) for(unsigned x=0;x<v.cols;++x) {
                        const int tx=col+v.tile_x_offset+int(x),ty=row+v.tile_y_offset+int(y);
                        const auto tile=v.tiles[y*v.cols+x];
                        if(tile && tx>=0 && tx<48 && ty>=0 && ty<24)
                            edge_window[unsigned(ty)*48+unsigned(tx)]=tile;
                    }
            }
            const auto star_phase=std::uint16_t(0xafa0+(1536-camera)*16+(camera&7)*32);
            std::array<std::uint8_t,25> rows{}; std::uint8_t rb=0;
            for(unsigned i=0;i<24;++i) {rb=std::uint8_t(fixed[0x600+i]^rb^fixed[0x700+i]);rows[i]=rb&31;}
            const auto star=std::uint8_t(0xcd-((star_phase&255)>>5));
            for(unsigned y=0;!render_subpixel_ && y<24;++y) for(unsigned column:{unsigned(rows[y]),unsigned(rows[y+1])+13}) {
                const unsigned x=(column+(star_phase>>8))&31;
                if(!edge_window[y*48+x]) edge_window[y*48+x]=star;
            }
            const unsigned epb=background_.pattern_base();
            const unsigned ecb=background_.color_base();
            const auto& epal=background_.palette_set()>=2u?video_.tower_palette:(background_.palette_set()==1u?video_.late_palette:video_.palette);
            const unsigned reveal=std::min(8u,camera-1536u);
            const unsigned fallback_end=256u-reveal;
            for(unsigned sy=28;sy<212;++sy) for(unsigned sx=248;sx<fallback_end;++sx) {
                // Mode-0 vehicle presentation uses the captured R18=$70
                // (horizontal low nibble zero). The temporary warm-up edge
                // therefore uses the same unshifted source phase as D988.
                const unsigned y=(sy-28)/8,py=(sy-28)&7,xq=sx+(camera&7);
                const unsigned tile=edge_window[y*48+xq/8],index=((y+8)/8)*0x800+tile*8+py;
                if(epb+index>=video_.vram.size()||ecb+index>=video_.vram.size()) continue;
                const auto bits=video_.vram[epb+index],color=video_.vram[ecb+index];
                const auto ci=(bits&(0x80u>>(xq&7)))?color>>4:color&15;
                pixels[sy*256+sx]=epal[ci&15u];
            }
        }
    } else {
        // Compose the early window each tick, rather than cropping a static
        // panorama. The panorama cannot contain moving stars/ground/tank stamps.
        auto window=compose_stage0_horizontal_tiles(visual_level_,camera_pixels());
        const unsigned camera=camera_pixels();
        // $5DD8: phase advances per coarse tick; CA1D supplies coarse tile X.
        const unsigned ground_phase=(7+frame_/4+(camera/8))&7;
        const auto fixed=rom_.bank(0);
        for(unsigned y=21;y<23;++y) for(unsigned x=0;x<48;++x)
            window[y*48+x]=fixed[0x1e4b+(y-21)*16+ground_phase+(x&7)];
        // Same tile matrix path as the streamed section, including the $24
        // track/chassis phase selected by the moving anchor.
        for(const auto& e:game_.enemies) {
            if(e.type()==3) continue; // pickups are drawn at pixel precision below
            if(render_native_wide_ && stage_index_==0u && background_.mode()==0u &&
               (e.type()==0x1fu || e.type()==0x20u || e.type()==0x22u ||
                e.type()==0x24u || e.type()==0x26u || e.type()==0x55u ||
                e.type()==0x56u || e.type()==0x6bu))
                continue; // native 512-space actor overlay owns these
            const int col=std::int16_t(e.x_fixed())/256;
            const int row=std::int16_t(e.y_fixed())/256;
            for(const auto& v:decode_stage0_tile_visuals(rom_,e))
                for(unsigned y=0;y<v.rows;++y) for(unsigned x=0;x<v.cols;++x) {
                    const int tx=col+v.tile_x_offset+int(x),ty=row+v.tile_y_offset+int(y);
                    const auto tile=v.tiles[y*v.cols+x];
                    if(tile && tx>=0 && tx<48 && ty>=0 && ty<24) window[unsigned(ty)*48+unsigned(tx)]=tile;
                }
        }
        // Extrapolate the proven horizontal E8 update to before A13F: each
        // +2px scene tick subtracts $20. Fill only empty cells, as $6EE7 does.
        const auto phase=std::uint16_t(0xafa0+(1536-camera)*16+(camera&7)*32);
        std::array<std::uint8_t,25> rows{};
        std::uint8_t rb=0;
        for(unsigned i=0;i<24;++i) {rb=std::uint8_t(fixed[0x600+i]^rb^fixed[0x700+i]);rows[i]=rb&31;}
        const auto star=std::uint8_t(0xcd-((phase&255)>>5));
        for(unsigned y=0;!render_subpixel_ && y<24;++y) for(unsigned column:{unsigned(rows[y]),unsigned(rows[y+1])+13}) {
            const unsigned x=(column+(phase>>8))&31;
            if(!window[y*48+x]) window[y*48+x]=star;
        }
        // Keep the proven early horizontal geometry through the short A13F
        // warm-up, but switch graphics/palette at the *actual* vehicle-context
        // boundary. From camera 1538 onward the game state already uses
        // graphics_set=5/palette_set=1. Rendering those new tile IDs through
        // the old R4=$03/R10=$00 bank produced the blue block artefacts seen
        // during the first few vehicle pixels.
        unsigned early_pattern_base=0u,early_color_base=0x2000u;
        const auto* early_palette=&initial_palette;
        if(camera>=1538 || (render_native_wide_ && camera>=1536)) {
            early_pattern_base=background_.pattern_base();
            early_color_base=background_.color_base();
            early_palette=background_.palette_set()>=2u?&video_.tower_palette:(background_.palette_set()==1u?&video_.late_palette:&video_.palette);
        }
        for(unsigned sy=28;sy<212;++sy) for(unsigned sx=0;sx<256;++sx) {
            const unsigned y=(sy-28)/8,py=(sy-28)&7,xq=sx+(camera&7);
            const unsigned tile=window[y*48+xq/8],index=((y+8)/8)*0x800+tile*8+py;
            const auto bits=video_.vram[early_pattern_base+index];
            const auto color=video_.vram[early_color_base+index];
            const auto ci=(bits&(0x80u>>(xq&7)))?color>>4:color&15;
            pixels[sy*256+sx]=(*early_palette)[ci];
        }
    }
    const unsigned presented_palette_set=unsigned(background_.palette_set());
    const bool stage3_boss_palette=stage_index_==2u && std::any_of(game_.enemies.begin(),game_.enemies.end(),
        [](const auto& e){return e.type()==0x3eu || e.type()==0x3fu;});
    const auto& palette=stage3_boss_palette ? kStage3BossPalette :
        (presented_palette_set>=2u ? video_.tower_palette :
        (presented_palette_set==1u ? video_.late_palette : video_.palette));
    {
        unsigned pattern_base=0,color_base=0x2000;
        unsigned overlay_set=unsigned(background_.graphics_set());
        if(camera_pixels()>=1538) {
            pattern_base=background_.pattern_base(int(overlay_set));
            color_base=background_.color_base(int(overlay_set));
        }
        // Native-only vehicle path: render the complete tile actor at its
        // sub-tile pixel coordinate and clip at x=0/255. This removes the MSX
        // name-table limitation that made new 8-pixel columns visibly assemble
        // at the right edge while preserving the original ROM tile matrices.
        // Tile actors and SAT sprites share the same stage-0 screen origin.
        // draw_entity adds +1 after sprite_origin_y, so the corresponding tile
        // body origin is 28 in mode4 and 29 in the other streamed modes.
        const int tile_screen_y_bias = camera_pixels()<1538 ? 28 : (background_.mode()==4 ? 28 : 29);
        const unsigned overlay_start_row=(unsigned(background_.scroll_row())&0xf8u)>>3u;
        // $7A79-$7A95 adds only the low byte of CA1A before taking the
        // signed tile row. Feeding the full 16-bit CA1A here selected a wrong
        // SCREEN4 pattern third as soon as the stage started scrolling up.
        const std::uint16_t overlay_fine_y=camera_pixels()>=1538?
            std::uint16_t(background_.ca1a()&0x00ffu):0u;
        // Render every vehicle tile actor from its complete original ROM matrix.
        // In particular type $24 uses all eight $BDAD phases; do not split its
        // tread row or interpolate the body independently.
        for(const auto& source:game_.enemies) {
            // Composed tile actors stay on this sub-tile overlay path for the
            // complete stage. This keeps their tile body phase-locked to the
            // SAT/sprite parts instead of snapping at D988/R18 carries.
            if(render_subpixel_ && (source.type()==0x64u || source.type()==0x3du)) continue;
            auto e=source;
            if(render_native_wide_ && (e.type()==0x64u || e.type()==0x3du)) {
                const auto index=std::size_t(&source-game_.enemies.data());
                const auto& old=previous_gate_actors_[index];
                if(old.type()==e.type() && old.state()!=0u && e.state()!=0u) {
                    const int remaining=2-int(presentation_frame_%3u);
                    e.set_x_fixed(std::uint16_t(e.x_fixed()+std::int16_t(old.x_fixed()-e.x_fixed())*remaining/3));
                    e.set_y_fixed(std::uint16_t(e.y_fixed()+std::int16_t(old.y_fixed()-e.y_fixed())*remaining/3));
                }
            }
            if(e.active() && (e.flags15()&0x04u)) {
                e.set_x_fixed(std::uint16_t(e.x_fixed()+world_remaining_x*32));
                e.set_y_fixed(std::uint16_t(e.y_fixed()+world_remaining_y*32));
            }
            int t24_phase=-1;
            if(e.type()==0x24u) {
                // Bank06:$BDAD-$BDCA: C = (CA3B + object X high + low-byte
                // CA1C/object-X carry) & 7.  CA3B itself is CA3A+CA1D.
                const unsigned ca3b=(unsigned(background_.fast_ground_phase())+
                    unsigned(std::uint8_t(background_.ca1c()>>8u)))&7u;
                // Matrix selection is a 15-Hz ROM compositor decision. Use
                // the coarse object record, not the sub-frame presentation copy;
                // only the actor position is interpolated to 60 Hz.
                t24_phase=int(stage0_t24_phase(source,std::uint8_t(ca3b),
                    std::uint8_t(background_.ca1c())));
            }
            // Stage-3 boss mode 7 switches the VDP to R4=$0B/R10=$01
            // while its linked $3F matrices are drawn. The background stream
            // remains at graphics-set 0 at the gate, so use the boss's real
            // graphics page explicitly for these actors.
            const bool stage3_boss_tiles=e.type()==0x3eu || e.type()==0x3fu;
            const unsigned actor_pattern_base=stage3_boss_tiles?background_.pattern_base(1):pattern_base;
            const unsigned actor_color_base=stage3_boss_tiles?background_.color_base(1):color_base;
            draw_vehicle_tile_actor(rom_,video_,e,pixels,palette,actor_pattern_base,actor_color_base,
                tile_screen_y_bias,overlay_start_row,overlay_fine_y,t24_phase);
        }
        for(const auto& source:game_.enemies) {
            auto e=source;
            if(render_native_wide_ && (e.type()==0x64u || e.type()==0x3du)) {
                const auto index=std::size_t(&source-game_.enemies.data());
                const auto& old=previous_gate_actors_[index];
                if(old.type()==e.type() && old.state()!=0u && e.state()!=0u) {
                    const int remaining=2-int(presentation_frame_%3u);
                    e.set_x_fixed(std::uint16_t(e.x_fixed()+std::int16_t(old.x_fixed()-e.x_fixed())*remaining/3));
                    e.set_y_fixed(std::uint16_t(e.y_fixed()+std::int16_t(old.y_fixed()-e.y_fixed())*remaining/3));
                }
            }
            if(e.active() && (e.flags15()&0x04u)) {
                e.set_x_fixed(std::uint16_t(e.x_fixed()+world_remaining_x*32));
                e.set_y_fixed(std::uint16_t(e.y_fixed()+world_remaining_y*32));
            }
            draw_pickup(rom_,video_,e,pixels,palette,pattern_base,color_base,tile_screen_y_bias,overlay_start_row,overlay_fine_y);
        }
    }
    // Bank09 adds C0D2 to SAT Y; sprite mode2 subtracts R23. Previously
    // adding $38 without that subtraction placed the ship 36px too low.
    const int sprite_origin_y=camera_pixels()<1538?20:(background_.mode()==4?27:28);
    auto enemy_sprite_origin=[&](std::uint8_t type) {
        // Opening-flight actors can still be alive when A13F switches the VDP
        // raster context for the carrier. Their SAT coordinates are already
        // screen-relative; applying the new +8px late-stage origin made the
        // survivors visibly jump downward at the hand-off. Vehicle/later
        // actors use the streamed origin as before.
        if(type==0x10u || type==0x12u || type==0x15u || type==0x18u) return 20;
        return sprite_origin_y;
    };
    for(const auto& source:game_.enemies) {
        if(render_subpixel_) continue;
        auto e=source;
        if(render_native_wide_ && (e.type()==0x64u || e.type()==0x3du)) {
            const auto index=std::size_t(&source-game_.enemies.data());
            const auto& old=previous_gate_actors_[index];
            if(old.type()==e.type()) {
                const int remaining=2-int(presentation_frame_%3u);
                e.set_x_fixed(std::uint16_t(e.x_fixed()+std::int16_t(old.x_fixed()-e.x_fixed())*remaining/3));
                e.set_y_fixed(std::uint16_t(e.y_fixed()+std::int16_t(old.y_fixed()-e.y_fixed())*remaining/3));
            }
        }
        if(e.active() && (e.flags15()&0x04u)) {
            e.set_x_fixed(std::uint16_t(e.x_fixed()+world_remaining_x*32));
            e.set_y_fixed(std::uint16_t(e.y_fixed()+world_remaining_y*32));
        }
        draw_entity(rom_,video_,e,pixels,palette,enemy_sprite_origin(e.type()));
    }
    if(!render_subpixel_) {
    for(unsigned i=0;i<combat_.bullets().size();++i) draw_entity(rom_,video_,combat_.bullets()[i],pixels,palette,combat_.opening_bullet(i)?20:sprite_origin_y);
    draw_player_shots(rom_,video_,shots_,pixels,palette,sprite_origin_y);
    for(const auto& e:option_shots_) draw_entity(rom_,video_,e,pixels,palette,sprite_origin_y);
    draw_entity(rom_,video_,missile_shot_,pixels,palette,sprite_origin_y);
    for(const auto& e:options_) draw_entity(rom_,video_,e,pixels,palette,sprite_origin_y);
    draw_entity(rom_,video_,game_.player,pixels,palette,sprite_origin_y);
    }
    // Stage-0 HUD layout follows the original top-border composition:
    // POWER + 16 cells, then SCORE and HI score labels on the second row.
    static constexpr std::array<std::array<std::uint8_t,5>,10> digits{{
        {{7,5,5,5,7}},{{2,6,2,2,7}},{{7,1,7,4,7}},{{7,1,7,1,7}},{{5,5,7,1,1}},
        {{7,4,7,1,7}},{{7,4,7,5,7}},{{7,1,1,1,1}},{{7,5,7,5,7}},{{7,5,7,1,7}}}};
    auto glyph=[&](unsigned ox,unsigned oy,const std::array<std::uint8_t,5>& rows,std::uint32_t c) {
        for(unsigned y=0;y<5;++y) for(unsigned x=0;x<3;++x)
            if(rows[y]&(1u<<(2-x))) pixels[(oy+y)*256+ox+x]=c;
    };
    auto letter=[&](unsigned ox,unsigned oy,char ch,std::uint32_t c) {
        std::array<std::uint8_t,5> r{};
        switch(ch) {
        case 'P':r={6,5,6,4,4};break; case 'O':r={7,5,5,5,7};break;
        case 'W':r={5,5,5,7,5};break; case 'E':r={7,4,6,4,7};break;
        case 'R':r={6,5,6,5,5};break; case 'S':r={7,4,7,1,7};break;
        case 'C':r={7,4,4,4,7};break; case 'H':r={5,5,7,5,5};break;
        case 'I':r={7,2,2,2,7};break; case '-':r={0,0,7,0,0};break;
        default:return;
        } glyph(ox,oy,r,c);
    };
    auto text=[&](unsigned x,unsigned y,const char* t,std::uint32_t c) {
        for(;*t;++t,x+=4) letter(x,y,*t,c);
    };
    constexpr auto white=0xffffffffu,yellow=0xffffff00u,red=0xffff2020u,gray=0xff8a8a8au;
    text(43,4,"POWER",white);
    for(unsigned bar=0;bar<16;++bar) {
        const auto c=bar<combat_.upgrades().power?(bar<8u?red:yellow):gray;
        for(unsigned y=0;y<5;++y) for(unsigned x=0;x<7;++x)
            pixels[(4+y)*256+89+bar*8+x]=c;
    }
    text(92,15,"SCORE-",yellow); text(185,15,"HI",yellow);
    auto number=[&](unsigned x,unsigned value) {
        unsigned div=100000;
        for(unsigned i=0;i<6;++i,div/=10) glyph(x+i*4,15,digits[(value/div)%10],white);
    };
    number(120,combat_.score()); number(199,std::max(18000u,combat_.score()));
    return pixels;
}
std::vector<std::uint32_t> PlaySession::render_wide() { return render_presentation(2,1); }
std::vector<std::uint32_t> PlaySession::render_smooth() { return render_presentation(2,4); }
std::vector<std::uint32_t> PlaySession::render_continuous() { return render_presentation(4,4); }
Entity64 PlaySession::present_carrier(const Entity64& source,unsigned frame) const {
    auto e=source;
    if(e.type()!=0x55u || e.state()!=2u) return e;
    // $5947-$5999 moves the carrier one tile after a height-dependent delay.
    // Keep those state/attack timers intact, but distribute the next height
    // change over that entire interval at 60 Hz, including the resting ticks.
    const unsigned height=std::uint8_t(e.raw[0x22]-e.raw[8]);
    const unsigned duration=height?rom_.bank(0)[0x199a+std::min(15u,height-1u)]:1u;
    const int total=int(std::max(1u,duration))*4;
    const int elapsed=std::clamp(total-int(e.raw[0x17])*4+int(frame&3u),0,total);
    e.set_y_fixed(std::uint16_t(e.y_fixed()-elapsed*256/total));
    return e;
}
std::vector<std::uint32_t> PlaySession::render_early_presentation(unsigned x_samples,unsigned y_samples) {
    const unsigned width=256u*x_samples;
    // Match the vehicle interpolator's three-video-frame presentation delay
    // at A13F. Decode overscan from the level, rather than stretching an edge.
    // The native vehicle compositor has a three-half-pixel presentation
    // latency.  At frame zero there is no pre-level imagery to read from, so
    // applying that latency literally wraps the 7.5px fine phase to zero on
    // frame three and creates one visible opening jerk.  Hold at the real
    // initial camera origin until the latency buffer has filled.
    const unsigned camera_half=std::max(2u*kInitialCameraPixels,camera_half_pixels_-3u);
    const unsigned camera=camera_half/2u;
    const unsigned camera_samples=camera_half*x_samples/2u;
    const auto tiles=compose_stage0_horizontal_tiles(visual_level_,camera);
    auto palette=video_.palette;
    if(bomb_palette_ticks_) for(auto& c:palette) {
        unsigned rgb=0xff000000u;
        for(int shift:{16,8,0}) rgb|=unsigned(std::clamp(int((c>>shift)&255u)*7/255+bomb_palette_bias_,0,7)*255/7)<<shift;
        c=rgb;
    }
    const auto fixed=rom_.bank(0);
    std::vector<std::uint32_t> out(width*212u*y_samples,0xff000000u);
    for(unsigned y=28u*y_samples;y<212u*y_samples;++y) {
        const unsigned row=(y/y_samples-28u)/8u,py=(y/y_samples-28u)&7u;
        for(unsigned x=0;x<width;++x) {
            unsigned source=(x+(camera&7u)*x_samples+(camera_half&1u)*x_samples/2u)/x_samples;
            unsigned tile=tiles[row*48u+source/8u];
            if(row==21u || row==22u) {
                const unsigned sample=(x+camera_samples+(7u*8u+frame_*2u)*x_samples)%(64u*x_samples);
                source=sample/x_samples;
                tile=fixed[0x1e4bu+(row-21u)*16u+(source/8u)];
            }
            const unsigned index=((row+8u)/8u)*0x800u+tile*8u+py;
            const auto bits=video_.vram[index],color=video_.vram[0x2000u+index];
            out[y*width+x]=palette[(bits&(0x80u>>(source&7u)))?color>>4:color&15u];
        }
    }
    // Stars move at half the scenery velocity. Quarter-pixel X samples make
    // even this slow layer advance on every 60-Hz frame.
    std::uint8_t rb=0;std::array<unsigned,25> seeds{};
    for(unsigned i=0;i<24u;++i) {rb=std::uint8_t(fixed[0x600+i]^rb^fixed[0x700+i]);seeds[i]=rb&31u;}
    const int star_phase=0xafa0+(3072-int(camera_half))*8;
    auto wrap=[&](int x){x%=int(width);return x<0?x+int(width):x;};
    for(unsigned row=0;row<23u;++row) for(unsigned seed:{seeds[row],seeds[row+1u]+13u}) {
        const int x=wrap(int(seed*8u*x_samples)+(star_phase*int(x_samples)>>5));
        const unsigned y=(28u+row*8u+3u)*y_samples;
        const unsigned source=(unsigned(x)+(camera&7u)*x_samples+(camera_half&1u)*x_samples/2u)/x_samples;
        if(tiles[row*48u+source/8u]) continue;
        for(unsigned yy=0;yy<y_samples;++yy) for(unsigned xx=0;xx<x_samples && unsigned(x)+xx<width;++xx)
            out[(y+yy)*width+unsigned(x)+xx]=palette[8];
    }
    for(const auto& source:game_.enemies) {
        auto e=source;
        const unsigned phase=(frame_-logic_start_frame_)&3u;
        if(e.flags15()&4u) e.set_x_fixed(std::uint16_t(e.x_fixed()+(e.type()==3u?48u:(3u-phase)*16u)));
        draw_tile_actor(rom_,video_,e,out,palette,0,0x2000,28,8,0,e.type()==3u,x_samples,y_samples);
        draw_entity(rom_,video_,e,out,palette,20,x_samples,y_samples);
    }
    for(const auto& e:combat_.bullets()) draw_entity(rom_,video_,e,out,palette,20,x_samples,y_samples);
    draw_player_shots(rom_,video_,shots_,out,palette,20,x_samples,y_samples);
    for(const auto& e:option_shots_) draw_entity(rom_,video_,e,out,palette,20,x_samples,y_samples);
    draw_entity(rom_,video_,missile_shot_,out,palette,20,x_samples,y_samples);
    for(const auto& e:options_) draw_entity(rom_,video_,e,out,palette,20,x_samples,y_samples);
    draw_entity(rom_,video_,game_.player,out,palette,20,x_samples,y_samples);
    const auto hud=render();
    for(unsigned y=0;y<28u*y_samples;++y) for(unsigned x=0;x<width;++x)
        out[y*width+x]=hud[(y/y_samples)*256u+x/x_samples];
    return out;
}
std::vector<std::uint32_t> PlaySession::render_presentation(unsigned x_samples,unsigned y_samples) {
    // Early scenery and the streamed vehicle share continuous coordinates;
    // the ROM state machines retain their original coarse cadence.
    if(camera_pixels()<1536) return render_early_presentation(x_samples,y_samples);
    const unsigned width=256u*x_samples;

    const unsigned saved_frame=frame_;
    presentation_frame_=saved_frame;
    const unsigned phase=(saved_frame-(stage_index_?stage_start_frame_:logic_start_frame_))&3u;
    frame_=saved_frame-phase+3u; // fully integrated coarse geometry for all passes
    const auto saved_player=game_.player;
    const auto saved_enemies=game_.enemies;
    const auto saved_shots=shots_;
    const auto saved_option_shots=option_shots_;
    const auto saved_missile=missile_shot_;
    const auto saved_options=options_;
    const auto saved_combat=combat_;
    const int saved_fg_override=render_fast_ground_phase_override_;
    const bool saved_native_wide=render_native_wide_;
    render_native_wide_=true;render_subpixel_=true;
    // The independent native ground clock survives diagonal scrolling and
    // the boss gate. The coarse passes supply only its stationary texture.
    const bool native_fast_ground = stage_index_==0u;
    render_fast_ground_phase_override_=native_fast_ground ? 0 : -1;

    // Pass 1: scenery only. Fast ground receives its own motion in the native texture.
    game_.player.clear(); shots_={}; option_shots_={}; missile_shot_.clear(); options_={}; combat_.reset();
    for(auto& e:game_.enemies) e.clear();
    auto background_only=render();
    for(unsigned y=0;y<28u;++y) std::fill_n(background_only.begin()+std::ptrdiff_t(y*256u),256u,0xff000000u);

    // Pass 2: camera-relative world actors, over the exact same canonical background.
    game_.enemies=saved_enemies;
    for(auto& e:game_.enemies) if(e.active() &&
        ((e.flags15()&0x04u)==0u || (stage_index_==0u && native_stage0_tile_actor(e.type())))) e.clear();
    // Native tile actors are composed once, after the world interpolation.
    // Leaving them in this classification pass made D988 modes apply the
    // camera remainder here and then again below, producing doubled treads,
    // left/top fragments and displaced large cannons during vertical scroll.
    auto world=render();
    for(unsigned y=0;y<28u;++y) std::fill_n(world.begin()+std::ptrdiff_t(y*256u),256u,0xff000000u);

    // Pass 3: complete screen-space composition.
    game_.player=saved_player; game_.enemies=saved_enemies;
    shots_=saved_shots; option_shots_=saved_option_shots; missile_shot_=saved_missile; options_=saved_options; combat_=saved_combat;
    for(auto& e:game_.enemies) if(stage_index_==0u && native_stage0_tile_actor(e.type())) e.clear();
    const auto full=render();
    render_fast_ground_phase_override_=saved_fg_override;
    render_native_wide_=saved_native_wide;render_subpixel_=false;
    frame_=saved_frame;
    game_.enemies=saved_enemies;

    int tick_x=0,tick_y=0;
    if(camera_pixels()>=3072 && !background_.gated()) tick_y=int(std::int16_t(background_.y_velocity_fp()))/256;
    if(camera_pixels()<3072) tick_x=2;
    else if(!background_.gated()) tick_x=int(std::int16_t(background_.x_velocity_fp()))/256;
    const int tick_samples=tick_x*int(x_samples);
    const int progress_samples=tick_samples*int(phase+1u)/4;
    const int remaining_samples=tick_samples-progress_samples;
    const int tick_y_samples=tick_y*int(y_samples);
    const int remaining_y_samples=tick_y_samples-tick_y_samples*int(phase+1u)/4;

    const auto ps=background_.presentation_state();
    // Keep the lower rock strip on one continuous 60-Hz clock. The crawler
    // tread itself now uses the exact $BDAD/CA3B phase below; do not couple this
    // independent parallax strip back to the coarse 15-Hz object compositor.
    const int present_camera_samples=int(camera_pixels()*x_samples)-remaining_samples;
    const int fg_source_samples=(int(7u*8u+saved_frame*2u)*int(x_samples)+present_camera_samples)
        %int(64u*x_samples);
    const unsigned start_row=(unsigned(background_.scroll_row())&0xf8u)>>3u;
    const unsigned fg_row_offset=std::uint8_t(0u-std::uint8_t(background_.ca1a()>>8u));
    const unsigned wpattern=background_.pattern_base();
    const unsigned wcolor=background_.color_base();
    const auto& wpalette=background_.palette_set()>=2u?video_.tower_palette:(background_.palette_set()==1u?video_.late_palette:video_.palette);
    const auto fixed=rom_.bank(0);
    const unsigned fg_table=background_.fast_ground_alternate()?0x1e6bu:0x1e4bu;

    std::vector<std::uint32_t> out(width*212u*y_samples,0xff000000u);
    for(unsigned y=0;y<212u*y_samples;++y) {
        const int source_y=int(y)-remaining_y_samples;
        const unsigned by=unsigned(std::clamp(source_y,0,int(212u*y_samples)-1))/y_samples;
        const unsigned display_y=(by+unsigned(ps.r23))&255u;
        const unsigned physical_row=display_y>>3u;
        const unsigned logical_row=(physical_row+32u-start_row)&31u;
        const bool fast_row=native_fast_ground && fg_row_offset<3u &&
            (logical_row==21u+fg_row_offset || logical_row==22u+fg_row_offset);
        for(int dx=0;dx<int(width);++dx) {
            int sx=dx-remaining_samples;
            if(fast_row) {
                // Decode the repeated 64px ROM rock strip at the independent
                // continuous floor position, without advancing its tile phase.
                int fs=(dx+fg_source_samples)%int(64u*x_samples); if(fs<0) fs+=int(64u*x_samples);
                const unsigned lp=unsigned(fs)/x_samples;
                const unsigned tile_col=(lp>>3u)&7u;
                const unsigned px=lp&7u;
                const unsigned line=logical_row-(21u+fg_row_offset);
                const auto tile=fixed[fg_table+line*16u+tile_col];
                const unsigned py=display_y&7u;
                const unsigned quarter=(physical_row/8u)*0x800u;
                const unsigned index=quarter+unsigned(tile)*8u+py;
                const auto bits=video_.vram[wpattern+index];
                const auto color=video_.vram[wcolor+index];
                const unsigned ci=(bits&(0x80u>>px))?color>>4:color&15u;
                out[y*width+unsigned(dx)]=wpalette[ci&15u];
            } else {
                sx=std::clamp(sx,0,int(width)-1);
                out[y*width+unsigned(dx)]=background_only[by*256u+unsigned(sx/int(x_samples))];
            }
        }
        // Camera-relative actors move only with the world, not with fast-ground parallax.
        for(unsigned x=0;x<256u;++x) {
            if(world[by*256u+x]==background_only[by*256u+x]) continue;
            int dx=int(x*x_samples)+remaining_samples;
            for(int q=0;q<int(x_samples);++q) if(dx+q>=0 && dx+q<int(width))
                out[y*width+unsigned(dx+q)]=world[by*256u+x];
        }
        // Player, projectiles and HUD remain screen-space.
        for(unsigned x=0;x<256u;++x) {
            const auto c=full[(y/y_samples)*256u+x]; if(c==world[(y/y_samples)*256u+x]) continue;
            for(unsigned q=0;q<x_samples;++q) out[y*width+x*x_samples+q]=c;
        }
    }
    if(stage_index_==0u) {
        // $6E8A advances C0E8 independently from the scenery ring. Interpolate
        // that phase directly; moving D988 star tiles with R18 caused an 8px
        // jump whenever the scenery crossed a tile boundary.
        const int delta=prev_world_phase_valid_
            ? int(std::int16_t(background_.star_x_phase()-prev_star_x_phase_)) : 0;
        const int phase_fp=int(background_.star_x_phase())*4-delta*int(3u-phase);
        const int star_x_samples=(phase_fp*int(x_samples))>>7; // floor, including the C0E8 wrap through zero
        std::array<std::uint8_t,25> seeds{};std::uint8_t rb=0;
        for(unsigned i=0;i<24u;++i) {
            rb=std::uint8_t(fixed[0x600+i]^rb^fixed[0x700+i]);seeds[i]=rb&31u;
        }
        auto scenery=background_.compose_d988_raw();
        background_.apply_fast_ground(scenery,background_.fast_ground_alternate());
        const auto left_scene=background_.compose_left_edge();
        const auto right_scene=background_.compose_right_edge(false);
        stamp_stage0_tile_objects(rom_,background_,game_,scenery);
        const bool horizontal_vehicle=background_.mode()==0u && background_.trigger_cursor()<0x2000u;
        const auto horizontal=horizontal_vehicle
            ? compose_stage0_horizontal_tiles(visual_level_,camera_pixels())
            : std::array<std::uint8_t,24*48>{};
        auto wrap=[](int n,int modulus) {n%=modulus;return n<0?n+modulus:n;};
        auto occupied=[&](int x,int y) {
            const int source_x=(x-remaining_samples)/int(x_samples)
                +(camera_pixels()>=3072u?8+int(std::int16_t(background_.x_velocity_fp()))/256:0);
            const int source_y=(y-remaining_y_samples)/int(y_samples);
            if(horizontal_vehicle) {
                const int row=(source_y-28)/8;
                const int col=(source_x+int(camera_pixels()&7u))>>3;
                if(row>=0 && row<24 && col>=0 && col<48 && horizontal[unsigned(row)*48u+unsigned(col)]) return true;
            } else {
                const unsigned physical=unsigned(source_y+int(ps.r23))&255u;
                const unsigned row=((physical>>3u)+32u-start_row)&31u;
                const int col=(source_x-(int((ps.r18&15u)^7u)-7))>>3;
                if(row<24u) {
                    if(col==-1 && left_scene[row]) return true;
                    if(col==32 && right_scene[row]) return true;
                    if(col>=0 && col<32 && scenery[row*32u+unsigned(col)]) return true;
                }
            }
            // Nonzero object tiles cover their whole cell, including black
            // pixels. Stars must not shine through the machinery's black areas.
            for(const auto& source:saved_enemies) if(source.active()) {
                // The carrier's exterior clearing cells have native alpha.
                // Its opaque hull, drawn after the stars, supplies the mask.
                if(source.type()==0x55u) continue;
                const auto e=present_carrier(source,saved_frame);
                const int dx=(e.flags15()&4u)?remaining_samples:0;
                const int dy=(e.flags15()&4u)?remaining_y_samples:0;
                for(const auto& v:decode_stage0_tile_visuals(rom_,e)) {
                    const int tx=(x-dx)/int(x_samples)-v.x;
                    const int ty=(y-dy)/int(y_samples)-v.y-(background_.mode()==4u?28:29);
                    if(tx>=0 && ty>=0 && tx<int(v.cols)*8 && ty<int(v.rows)*8 &&
                       v.tiles[unsigned(ty/8)*v.cols+unsigned(tx/8)]) return true;
                }
            }
            return false;
        };
        for(unsigned row=0;row<24u;++row) {
            const int y=28*int(y_samples)+wrap((int(row*8u+3u)-background_.world_y())*int(y_samples)
                                            +remaining_y_samples,192*int(y_samples));
            for(unsigned seed:{unsigned(seeds[row]),unsigned(seeds[row+1u])+13u}) {
                const int x=wrap(int(seed)*8*int(x_samples)+star_x_samples,int(width));
                if(y>=212*int(y_samples) || occupied(x,y)) continue;
                for(unsigned yy=0;yy<y_samples && y+int(yy)<212*int(y_samples);++yy)
                    for(int xx=0;xx<int(x_samples) && x+xx<int(width);++xx) {
                        auto& pixel=out[unsigned(y+int(yy))*width+unsigned(x+xx)];
                        if(pixel==wpalette[15]) pixel=wpalette[8];
                    }
            }
        }
    }
    {
        const int sprite_y=background_.mode()==4u?27:28;
        auto present=[&](const Entity64& source) {
            auto e=present_carrier(source,saved_frame);
            if(e.type()==0x64u || e.type()==0x3du) {
                const auto index=std::size_t(&source-game_.enemies.data());
                const auto& old=previous_gate_actors_[index];
                if(old.type()==e.type() && old.state()!=0u && e.state()!=0u) {
                    const int remaining=2-int(saved_frame%3u);
                    e.set_x_fixed(std::uint16_t(e.x_fixed()+std::int16_t(old.x_fixed()-e.x_fixed())*remaining/3));
                    e.set_y_fixed(std::uint16_t(e.y_fixed()+std::int16_t(old.y_fixed()-e.y_fixed())*remaining/3));
                }
            } else if(e.flags15()&4u) {
                e.set_x_fixed(std::uint16_t(e.x_fixed()+remaining_samples*32/int(x_samples)));
                e.set_y_fixed(std::uint16_t(e.y_fixed()+remaining_y_samples*32/int(y_samples)));
            }
            if(e.type()==0x55u) {
                std::vector<std::uint32_t> layer(out.size(),0);
                auto carrier_palette=wpalette;
                carrier_palette[0]=carrier_palette[15]=kCarrierBackdrop;
                // $5A19 selects progressively taller stamps as the MSX plane
                // rises. Native presentation has the complete hull available
                // immediately. Its patterns are identical in thirds 1 and 2;
                // third 3 contains the vehicle/floor instead. Decouple this
                // asset lookup from the plane's current screen row.
                auto hull=e;
                hull.raw[6]=5;
                // Resolve exterior alpha on the entire aircraft before
                // clipping. A clipped edge otherwise opens enclosed hull
                // details to the flood fill and makes them disappear.
                hull.set_x_fixed(0x800);hull.set_y_fixed(0x900);
                draw_tile_actor(rom_,video_,hull,layer,carrier_palette,wpattern,wcolor,
                    background_.mode()==4u?28:29,start_row,background_.ca1a()&255u,false,x_samples,y_samples,1);
                const int dx=(int(std::int16_t(e.x_fixed()))>>5)*int(x_samples)
                    +int(e.x_fixed()&31u)*int(x_samples)/32-64*int(x_samples);
                const int dy=(int(std::int16_t(e.y_fixed()))>>5)*int(y_samples)
                    +int(e.y_fixed()&31u)*int(y_samples)/32-72*int(y_samples);
                // The original scripts reveal one extra lower row for each
                // tile of ascent: the vehicle deck occludes everything below
                // +22 + 1. Keep that fixed foreground edge, but let the full
                // hull emerge continuously instead of revealing 8px stamps.
                const int deck_y=(int(source.raw[0x22])*8+8
                    +(background_.mode()==4u?28:29))*int(y_samples)
                    +((e.flags15()&4u)?remaining_y_samples:0);
                composite_carrier(out,layer,wpalette,width,dx,dy,deck_y);
            } else if(stage_index_==0u && native_stage0_tile_actor(e.type())) {
                // All other composed stage-0 actors are owned by this one
                // high-resolution pass.  Their low-resolution copies were
                // deliberately removed from the world/full classification
                // passes above, so vertical/diagonal camera remainder cannot
                // be applied twice.
                if(e.type()==0x1fu) {
                    // Keep both halves of the large cannon in one native object
                    // coordinate domain. Frame 0's 4x2 tile body starts at +16px;
                    // the SAT frame starts at +15px (ROM X offset 8 plus the
                    // universal +7 SAT origin). No CA1A/R23 or R18 phase is
                    // re-applied here: the continuously presented object anchor
                    // already contains the camera motion, so body and barrel
                    // cannot accumulate a different offset during the climb.
                    draw_tile_actor(rom_,video_,e,out,wpalette,wpattern,wcolor,
                        background_.mode()==4u?28:29,start_row,0u,
                        false,x_samples,y_samples);
                } else if(e.type()==0x24u) {
                    // Exact bank06:$BDAD phase. Low bits are the MSX pre-shift;
                    // CA3B supplies the real tread animation state. Selecting all
                    // eight frames from raw object X alone made the tracks cycle
                    // too quickly and visibly desynchronize at 60 Hz.
                    const unsigned ca3b=(unsigned(background_.fast_ground_phase())+
                        unsigned(std::uint8_t(background_.ca1c()>>8u)))&7u;
                    const int t24_phase=int(stage0_t24_phase(source,std::uint8_t(ca3b),
                        std::uint8_t(background_.ca1c())));
                    draw_tile_actor(rom_,video_,e,out,wpalette,wpattern,wcolor,
                        background_.mode()==4u?28:29,start_row,background_.ca1a()&255u,
                        false,x_samples,y_samples,-1,0,0,-1,t24_phase);
                } else {
                    draw_tile_actor(rom_,video_,e,out,wpalette,wpattern,wcolor,
                        background_.mode()==4u?28:29,start_row,background_.ca1a()&255u,
                        false,x_samples,y_samples);
                }
            }
            int clip_bottom=212;
            if(e.type()==0x11u && e.state()==1u) {
                // The deck and hatch are foreground during launch. The ROM
                // hides the child under those cells; native sprites need the
                // same reveal edge until they detach from the launcher.
                for(const auto& hatch:saved_enemies) if(hatch.type()==0x26u &&
                    std::abs(int(std::int16_t(source.x_fixed()-hatch.x_fixed()))-0x20)<=32) {
                    const int hatch_y=int(std::int16_t(hatch.y_fixed()))/32;
                    const int child_y=int(std::int16_t(source.y_fixed()))/32;
                    if(child_y>hatch_y || child_y<hatch_y-40) continue;
                    for(const auto& v:decode_stage0_tile_visuals(rom_,hatch))
                        clip_bottom=std::min(clip_bottom,v.y+(background_.mode()==4u?28:29)
                            +remaining_y_samples/int(y_samples));
                }
            }
            const int actor_sprite_y=(e.type()==0x10u || e.type()==0x12u || e.type()==0x15u || e.type()==0x18u)?20:sprite_y;
            draw_entity(rom_,video_,e,out,wpalette,actor_sprite_y,x_samples,y_samples,clip_bottom);
        };
        for(const auto& e:game_.enemies) present(e);
        for(unsigned i=0;i<combat_.bullets().size();++i) draw_entity(rom_,video_,combat_.bullets()[i],out,wpalette,combat_.opening_bullet(i)?20:sprite_y,x_samples,y_samples);
        // Ship, options and their forward shots stay in one screen-space
        // origin even when the VDP scenery raster changes below them.
        draw_player_shots(rom_,video_,shots_,out,wpalette,20,x_samples,y_samples);
        for(const auto& e:option_shots_) draw_entity(rom_,video_,e,out,wpalette,20,x_samples,y_samples);
        auto missile=missile_shot_;
        missile.set_x_fixed(std::uint16_t(missile.x_fixed()+remaining_samples*32/int(x_samples)));
        missile.set_y_fixed(std::uint16_t(missile.y_fixed()+remaining_y_samples*32/int(y_samples)));
        draw_entity(rom_,video_,missile,out,wpalette,sprite_y,x_samples,y_samples);
        for(const auto& e:options_) draw_entity(rom_,video_,e,out,wpalette,20,x_samples,y_samples);
        draw_entity(rom_,video_,game_.player,out,wpalette,20,x_samples,y_samples);
    }
    return out;
}

}
