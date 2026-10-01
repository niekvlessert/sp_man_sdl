#include "play_session.hpp"
#include <algorithm>
#include <stdexcept>

namespace sm {
namespace {
constexpr unsigned kInitialCameraPixels=31*8; // ROM preloads 31 tile columns.
std::uint16_t word(std::span<const std::uint8_t> b, unsigned p) {
    return std::uint16_t(b[p]) | (std::uint16_t(b[p+1]) << 8);
}
void set_word(Entity64& e, unsigned p, std::uint16_t value) {
    e.raw[p]=std::uint8_t(value); e.raw[p+1]=std::uint8_t(value>>8);
}
// Sprite-frame components are six bytes: pattern, Y, X, colors, hitbox selector.
// This uses the exported ROM's resident sprite assets, including CC color OR.
void draw_entity(const Rom& rom, const Screen4Snapshot& video,
                 const Entity64& entity, std::vector<std::uint32_t>& pixels,
                 const std::array<std::uint32_t,16>& palette, int sprite_origin_y) {
    if (!entity.active() || entity.type()>0x7c) return;
    if(entity.type()==3) return; // pickup icons use the ROM tile matrices
    // Bit0 enables the SAT path. Tile-only vehicles still have sprite-format
    // collision frames: $77D0 checks background hits, it does not draw them.
    // Drawing those hitboxes as sprites produced stray cyan ship-pattern pixels.
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
    for (unsigned i=0;i<count;++i) {
        const unsigned c=off+1+i*6;
        const int y=int(std::int16_t(entity.y_fixed()))/32+int(frames[c+1])+sprite_origin_y;
        const int x=int(std::int16_t(entity.x_fixed()))/32+int(frames[c+2])+7;
        const unsigned pattern=std::uint8_t(video.object_pattern_base[entity.type()]+frames[c]);
        for (unsigned row=0;row<16;++row) for (int sx=x-32;sx<x+16;++sx) {
            unsigned ci=0;
            for (unsigned layer=0;layer<2;++layer) {
                if(layer && !(entity.flags15()&8) && entity.type()>9) continue;
                const auto attr=colors[unsigned(frames[c+3+layer])*16+row];
                const int lx=sx-x+((attr&0x80)?32:0);
                if (lx<0 || lx>=16) continue;
                const unsigned p=std::uint8_t(pattern+layer*4);
                const auto bits=video.vram[0xd000+p*8+row+(lx>=8?16:0)];
                if (!(bits&(0x80u>>(lx&7)))) continue;
                const unsigned color=attr&15;
                // CC needs a preceding CC=0 sprite on this scanline, not a
                // preceding opaque pixel. Its own non-overlapping pixels are
                // visible too (V9938 sprite mode 2).
                if (attr&0x40) ci|=color;
                else if(!ci && color) ci=color;
            }
            const int sy=y+int(row)+1;
            if(ci && sx>=0 && sx<256 && sy>=0 && sy<212)
                pixels[unsigned(sy)*256+unsigned(sx)]=palette[ci&15];
        }
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
void advance_shot(Entity64& shot) noexcept {
    if (!shot.active()) return;
    // $6A7F followed by $86EC. Background collision is a separate ROM path.
    shot.set_y_fixed(std::uint16_t(shot.y_fixed()+word(shot.raw,11)));
    shot.set_x_fixed(std::uint16_t(shot.x_fixed()+word(shot.raw,13)));
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
void PlaySession::reset() {
    sound_events_.clear();
    game_={}; shots_={}; frame_=0; camera_half_pixels_=2*kInitialCameraPixels; fire_was_down_=false;
    spawns_.reset(); stream_runtime_.reset(); background_.reset(); presenter_.reset();enemies_.reset();
    option_shots_={};options_={};player_history_.fill(game_.player);
    combat_.reset();video_=Screen4Snapshot::from_stage0_rom(rom_);
    // $8254 initial ship record, including 15-tick spawn protection.
    game_.player.type()=1; game_.player.flags15()=0x39;
    game_.player.raw[0x13]=3; game_.player.raw[0x14]=0x83; game_.player.raw[0x18]=15;
    player_history_.fill(game_.player);
}
void PlaySession::step_60hz(PlayerInput input) {
    sound_events_.clear();
    ++frame_;
    const auto directions=std::uint8_t((input.up?1:0)|(input.down?2:0)|
                                      (input.left?4:0)|(input.right?8:0));
    move_player(rom_,game_.player,directions,std::uint8_t(combat_.upgrades().speed));
    if (game_.player.raw[0x18]) --game_.player.raw[0x18];
    // C907 carries rising edges, so holding fire does not invent autofire.
    player_history_[frame_%player_history_.size()]=game_.player;
    for(unsigned i=0;i<options_.size();++i) {
        auto& option=options_[i];
        if(i>=combat_.upgrades().options) {option.clear();continue;}
        const unsigned delay=16*(i+1);
        option=player_history_[(frame_+player_history_.size()-delay)%player_history_.size()];
        option.type()=2;option.flags15()=0x91;option.raw[5]=std::uint8_t((frame_/4)&3);
    }
    if (input.fire_pressed || (input.fire && !fire_was_down_)) {
        const auto& upgrades=combat_.upgrades();
        const bool pool_empty=std::none_of(shots_.begin(),shots_.end(),[](auto& s){return s.active();});
        bool fired=false;
        if(upgrades.mega_bomb && pool_empty) {
            for(unsigned i=0;i<2;++i) {
                auto& shot=shots_[i];shot.clear();shot.type()=8;
                shot.raw[3]=i?1:5;shot.raw[5]=i?0:4;
                shot.flags15()=5;shot.raw[0x17]=5;
                shot.set_x_fixed(std::uint16_t(game_.player.x_fixed()+12*32));
                shot.set_y_fixed(game_.player.y_fixed());set_word(shot,13,384);
            }
            combat_.consume_mega_bomb();fired=true;
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
            for(unsigned n=i*3;n<i*3+3;++n) if(!option_shots_[n].active()) {
                auto& shot=option_shots_[n];initialize_basic_shot(rom_,options_[i],shot);
                shot.raw[3]=2;shot.raw[5]=0;fired=true;break;
            }
        }
        if(fired) sound_events_.push_back(PlaySound::Shot);
    }
    fire_was_down_=input.fire;
    auto advance=[&](Entity64& shot) {
        if(shot.type()!=8) {advance_shot(shot);return;}
        // Bank02 $8885: travel at $180/$C0/$40, then expand and clear.
        if(--shot.raw[0x17]==0) {
            if(shot.state()<2) {
                ++shot.state();shot.raw[0x17]=5;
                set_word(shot,13,shot.state()==1?192:64);
            } else if(shot.state()==2) {
                shot.state()=3;shot.raw[0x17]=5;shot.raw[5]=std::uint8_t((shot.raw[5]&4)+1);
                set_word(shot,13,0);
            } else if(shot.state()==3 && (shot.raw[5]&3)<2) {
                ++shot.raw[5];shot.raw[0x17]=5;
            } else {
                combat_.collect(13,game_,sound_events_);shot.clear();return;
            }
        }
        shot.set_x_fixed(std::uint16_t(shot.x_fixed()+word(shot.raw,13)));
        if(shot.raw[10]>=29 && shot.state()<3) {
            shot.state()=3;shot.raw[0x17]=5;shot.raw[5]=std::uint8_t((shot.raw[5]&4)+1);set_word(shot,13,0);
        }
    };
    for(auto& shot:shots_) if(shot.active()) advance(shot);
    for(auto& shot:option_shots_) advance_shot(shot);
    enemies_.move_60hz(game_);
    const auto trigger=std::uint16_t(camera_pixels()<3072?0x1000+camera_pixels()/8:background_.trigger_cursor());
    for(const auto& spawn:spawns_.step_to_trigger(trigger)) {
        enemies_.spawn(rom_,spawn,game_,camera_pixels()<3072?1:background_.spawn_direction());
        for(auto& e:game_.enemies) if(e.type()==0x20 && !e.raw[0x3a]) {
            e.raw[0x3a]=1;combat_.spawned(e);
        }
    }
    if((frame_&3)==0) enemies_.step_15hz(rom_,game_,frame_/4,trigger);
    auto collide=[&](Entity64& shot) {
        if(!shot.active() || shot.type()==8) return;
        for(auto& enemy:game_.enemies) {
            if(!(enemy.raw[0x14]&128)) continue;
            if(!stage0_sprite_overlap(rom_,shot,enemy)) continue;
            const auto original=enemy;
            const auto damage=apply_stage0_damage(rom_,enemy,shot.type()==4?shot.raw[6]:1);
            if(damage==Stage0DamageResult::Ignored) continue;
            shot.clear();
            sound_events_.push_back(damage==Stage0DamageResult::Destroyed?PlaySound::Explosion:PlaySound::Hit);
            // The ROM replacement effect handler is not part of this flight port.
            // Release its slot rather than retain an unprocessed effect forever.
            if(damage==Stage0DamageResult::Destroyed) {
                const bool bonus=enemies_.destroyed(original);
                enemy.clear();
                if(bonus) combat_.drop(rom_,enemy,original.x_fixed(),original.y_fixed());
            }
            break;
        }
    };
    for(auto& shot:shots_) collide(shot);
    for(auto& shot:option_shots_) collide(shot);
    const bool stage_tick=frame_>=logic_start_frame_ && ((frame_-logic_start_frame_)&3)==0;
    const unsigned previous_camera=camera_pixels();
    const int pickup_y_step=stage_tick && camera_pixels()>=3072?int(background_.y_velocity_fp())/8:0;
    if (camera_pixels()<3072) {
        ++camera_half_pixels_;
        if (frame_>=logic_start_frame_) {
            stream_runtime_.step_60hz();
            if(stage_tick) sm::step_stage0_objects(game_);
            if(stage_tick && camera_pixels()>=1536 && background_.world_x()<camera_pixels())
                background_.step_15hz();
        }
    } else if(stage_tick && !background_.gated()) {
        for(unsigned i=0;i<4;++i)
            step_stage0_object_scroll_60hz(game_,background_.x_velocity_fp(),background_.y_velocity_fp());
        step_stage0_object_logic_15hz(game_); background_.step_15hz();
        camera_half_pixels_=background_.world_x()*2;
    }
    combat_.step(rom_,game_,frame_,(int(camera_pixels())-int(previous_camera))*32,pickup_y_step,sound_events_);
    const auto bank2=rom_.bank(2);
    const unsigned bitmap=0x9b0+combat_.upgrades().power_level()*64+(combat_.upgrades().wave?192:0);
    for(unsigned dest:{0xca00u,0xd200u,0xda00u})
        std::copy_n(bank2.begin()+bitmap,32,video_.vram.begin()+dest);
    for(const auto& shot:shots_) if(shot.type()==8 && !(shot.raw[5]&4)) {
        const unsigned stage=std::min(2u,unsigned(shot.raw[5]));
        for(unsigned dest:{0xca20u,0xd220u,0xda20u})
            std::copy_n(bank2.begin()+0xb30+stage*64,64,video_.vram.begin()+dest);
    }

}
void PlaySession::seek_decile(unsigned step) {
    if(step>9) throw std::invalid_argument("level shortcut must be 0..9");
    if(step==0) {reset();return;}
    if(!level_frames_) {
        PlaySession probe(rom_);
        while(!probe.at_fight_gate() && probe.frame()<60000) probe.step_60hz({});
        if(!probe.at_fight_gate()) throw std::runtime_error("stage0 route did not reach fight gate");
        level_frames_=probe.frame();
    }
    const unsigned target=level_frames_*step/10;
    reset();
    while(frame_<target) step_60hz({});
    sound_events_.clear();
    presenter_.reset();
}
std::vector<std::uint32_t> PlaySession::render() {
    std::vector<std::uint32_t> pixels(256*212, 0xff000000u);
    if(camera_pixels()>=1538) {
        auto d988=background_.compose_d988_raw();
        background_.apply_fast_ground(d988,background_.fast_ground_alternate());
        stamp_stage0_tile_objects(rom_,background_,game_,d988);
        background_.apply_d988_parallax(d988);
        auto presentation=background_.presentation_state();
        // The ROM register trace describes the program built before integration.
        // This session uploads the NEW composition, so its fine offset must use
        // that same position. Mixing the two makes every 8px carry jump backwards.
        presentation.r18=std::uint8_t(((background_.world_x()&7)-8)&15);
        // Keep the ROM logic at 15 Hz, but present the camera's progress on
        // intervening video frames. Do not reduce this offset modulo eight:
        // a carry must still sample the next column in the current composition.
        int dx=0,dy=0;
        if (!background_.gated()) {
            if(camera_pixels()<3072) dx=int(camera_pixels())-int(background_.world_x());
            else {
                const unsigned phase=(frame_-logic_start_frame_)&3;
                dx=int(background_.x_velocity_fp())*int(phase)/1024;
                dy=int(background_.y_velocity_fp())*int(phase)/1024;
            }
        }
        pixels=presenter_.render(background_,video_,d988,&presentation,dx,dy);
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
        for(unsigned y=0;y<24;++y) for(unsigned column:{unsigned(rows[y]),unsigned(rows[y+1])+13}) {
            const unsigned x=(column+(phase>>8))&31;
            if(!window[y*48+x]) window[y*48+x]=star;
        }
        // Early stage uses R4=$03/R10=$00 globally, not per world column.
        // Choosing a pattern bank by world X painted the next scene too early.
        for(unsigned sy=28;sy<212;++sy) for(unsigned sx=0;sx<256;++sx) {
            const unsigned y=(sy-28)/8,py=(sy-28)&7,xq=sx+(camera&7);
            const unsigned tile=window[y*48+xq/8],index=((y+8)/8)*0x800+tile*8+py;
            const auto bits=video_.vram[index],color=video_.vram[0x2000+index];
            const auto ci=(bits&(0x80u>>(xq&7)))?color>>4:color&15;
            pixels[sy*256+sx]=video_.palette[ci];
        }
    }
    const auto& palette=camera_pixels()>=1538?video_.late_palette:video_.palette;
    // Bank09 adds C0D2 to SAT Y; sprite mode2 subtracts R23. Previously
    // adding $38 without that subtraction placed the ship 36px too low.
    const int sprite_origin_y=camera_pixels()<1538?20:(background_.mode()==4?27:28);
    for(const auto& e:game_.enemies) draw_entity(rom_,video_,e,pixels,palette,sprite_origin_y);
    for(const auto& e:combat_.bullets()) draw_entity(rom_,video_,e,pixels,palette,sprite_origin_y);
    for(const auto& e:shots_) draw_entity(rom_,video_,e,pixels,palette,sprite_origin_y);
    for(const auto& e:option_shots_) draw_entity(rom_,video_,e,pixels,palette,sprite_origin_y);
    for(const auto& e:options_) draw_entity(rom_,video_,e,pixels,palette,sprite_origin_y);
    draw_entity(rom_,video_,game_.player,pixels,palette,sprite_origin_y);
    // Native HUD in the unused upper margin, showing the original 0..16 power.
    for(unsigned bar=0;bar<16;++bar) for(unsigned y=7;y<11;++y) for(unsigned x=0;x<5;++x)
        pixels[y*256+64+bar*6+x]=bar<combat_.upgrades().power?0xffff4020:0xff333333;
    return pixels;
}
}
