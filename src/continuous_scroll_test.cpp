#include "rom.hpp"
#include "level.hpp"
#define private public
#include "play_session.hpp"
#undef private
#ifdef NDEBUG
#undef NDEBUG
#endif
#include <algorithm>
#include <cassert>
#include <chrono>
#include <filesystem>
#include <fstream>
#include <iostream>

namespace {
constexpr unsigned width=1024,height=848;
bool blue(unsigned c) {
    return (c&255u)*10u>((c>>16u)&255u)*13u && (c&255u)*10u>((c>>8u)&255u)*13u;
}
bool orange(unsigned c) {
    return ((c>>16u)&255u)*10u>((c>>8u)&255u)*13u && ((c>>16u)&255u)*10u>(c&255u)*13u;
}
void clear_actors(sm::PlaySession& s,bool keep_vehicle) {
    s.game_.player.clear();
    for(auto& e:s.game_.enemies) if(!keep_vehicle || e.type()!=0x24u) e.clear();
}
void capture(const std::filesystem::path& p,const std::vector<std::uint32_t>& image) {
    std::ofstream f(p,std::ios::binary);f<<"P6\n1024 848\n255\n";
    for(auto c:image) for(int shift:{16,8,0}) f.put(char(c>>shift));
}
}
int main(int argc,char** argv) {
    if(argc<2 || argc>3) return 2;
    sm::Rom rom(argv[1]);sm::PlaySession s(rom);
    const std::filesystem::path out=argc==3?argv[2]:"";
    if(!out.empty()) std::filesystem::create_directories(out);
    unsigned checked=0;
    // Opening presentation has a three-half-pixel latency buffer.  It may hold
    // the first three frames, but it must never wrap the fine phase backwards
    // by 7.5 pixels while the decoded tile-window base is still clamped.
    s.reset();clear_actors(s,false);auto opening=s.render_continuous();
    for(unsigned f=1;f<=3u;++f) {
        s.step_60hz({});clear_actors(s,false);const auto next=s.render_continuous();
        unsigned equal=0,total=0;
        for(unsigned y=120;y<650;++y) for(unsigned x=40;x<980;++x) {
            ++total;equal+=opening[y*width+x]==next[y*width+x];
        }
        assert(equal*100u>=total*99u);opening=next;
    }
    s.step_60hz({});clear_actors(s,false);const auto opening_move=s.render_continuous();
    unsigned shifted=0,total=0;
    for(unsigned y=120;y<650;++y) for(unsigned x=40;x<978;++x) {
        ++total;shifted+=opening[y*width+x+2u]==opening_move[y*width+x];
    }
    assert(shifted*100u>=total*99u);

    // M/type-$07 owns one independent CD20 slot.  A vertical wall is a hit,
    // not a surface-following stop: retire it immediately so another M can fire.
    s.reset();
    auto& m=s.missile_shot_;m.clear();m.type()=7;m.flags15()=5;
    m.raw[0x13]=3;m.raw[0x14]=3;m.raw[0x17]=1;
    m.set_x_fixed(0x0200);m.set_y_fixed(0x1500);m.raw[11]=0;m.raw[12]=1;
    s.frame_=3;s.step_60hz({});assert(!m.active());

    // The blue LARGE missile is two type-$08 SAT records.  The second record
    // contains CC colour lines and must visibly combine with the first record;
    // rendering the records independently used to drop that half entirely.
    s.reset();while(s.frame()<100u) s.step_60hz({});clear_actors(s,false);
    for(unsigned i=0;i<2u;++i) {
        auto& q=s.shots_[i];q.clear();q.type()=8;q.state()=0;q.raw[3]=i?1:5;q.raw[5]=i?0:4;
        q.raw[0x13]=3;q.raw[0x14]=3;q.flags15()=5;q.raw[0x17]=5;
        q.set_x_fixed(0x1000);q.set_y_fixed(0x0800);
    }
    const auto large_pair=s.render_continuous();const auto second=s.shots_[1];
    s.shots_[1].clear();const auto large_single=s.render_continuous();s.shots_[1]=second;
    unsigned cc_pixels=0;for(unsigned i=0;i<large_pair.size();++i) cc_pixels+=large_pair[i]!=large_single[i];
    assert(cc_pixels>500u);
    // $8950 dynamically replaces the two 16x16 sprite patterns from
    // bank02:$8B30.  The CC record is complementary to the base pattern: its
    // own pixels must remain visible after the first normal SAT entry.  Check
    // one such base-hole/CC-pixel explicitly; rendering CC only as an OR mask
    // makes the LARGE missile look transparent.
    {
        const auto b2=rom.bank(2),b8=rom.bank(8),b9=rom.bank(9);
        const auto video=sm::Screen4Snapshot::from_stage0_rom(rom);
        auto le16=[](auto b,unsigned p){return std::uint16_t(b[p])|(std::uint16_t(b[p+1])<<8u);};
        const auto b7=rom.bank(7);const unsigned list=le16(b7,0x496u+14u)-0xa000u;
        const unsigned cc_def=le16(b8,list+8u)-0xa000u;
        bool checked_cc=false;
        for(unsigned row=0;row<16u && !checked_cc;++row) {
            const auto base_bits=std::uint16_t((unsigned(b2[0x0b30u+row])<<8u)|b2[0x0b40u+row]);
            const auto cc_bits=std::uint16_t((unsigned(b2[0x0b50u+row])<<8u)|b2[0x0b60u+row]);
            const unsigned cc_color=b9[unsigned(b8[cc_def+4u])*16u+row]&15u;
            // A CC sprite is suppressed on scanlines where no preceding base
            // sprite has pattern bits at all (SpriteChecker does not emit the
            // empty base entry). Pick a line where the base sprite is present.
            if(!base_bits || !cc_color) continue;
            for(unsigned bit=0;bit<16u;++bit) if(!(base_bits&(0x8000u>>bit))&&(cc_bits&(0x8000u>>bit))) {
                const unsigned sx=(135u+bit)*4u,sy=(85u+row)*4u;
                assert(large_pair[sy*1024u+sx]==video.palette[cc_color]);
                checked_cc=true;break;
            }
        }
        assert(checked_cc);
    }

    // Compare actual colored texture pixels on every video frame, including
    // coarse-tick and tile carries. Empty black patches cannot pass this test.
    for(unsigned anchor:{100u,3300u,6897u,7500u}) {
        s.reset();while(s.frame()<anchor) s.step_60hz({});
        clear_actors(s,true);auto previous=s.render_continuous();
        assert(previous.size()==width*height);
        if(anchor==3300u) assert(std::any_of(s.game_.enemies.begin(),s.game_.enemies.end(),
            [](const auto& e){return e.type()==0x24u && std::int16_t(e.x_fixed())>0;}));
        if(!out.empty()) capture(out/(std::to_string(anchor)+".ppm"),previous);
        for(unsigned n=0;n<32u;++n) {
            s.step_60hz({});clear_actors(s,true);const auto next=s.render_continuous();
            const int dx=anchor==6897u?1:2,dy=anchor==6897u?1:0;
            unsigned colored=0;
            for(int y=400;y<(anchor==3300u?680:760);++y) for(int x=100;x<900;++x) {
                if(!blue(previous[unsigned(y)*width+unsigned(x)])) continue;
                ++colored;
                assert(previous[unsigned(y)*width+unsigned(x)]==next[unsigned(y+dy)*width+unsigned(x-dx)]);
            }
            assert(colored>20000u);++checked;
            if(anchor==3300u) {
                unsigned armor=0;
                for(unsigned y=680;y<800;++y) for(unsigned x=100;x<900;++x) {
                    if(!orange(previous[y*width+x])) continue;
                    ++armor;assert(previous[y*width+x]==next[y*width+x-2u]);
                }
                assert(armor>1000u); // the actual tread/chassis actor is visible
            }
            previous=next;
        }
    }
    // Rock strip is five times faster than the opening scenery: 2.5px/frame
    // versus 0.5px/frame. Both advance on all 60 displayed frames.
    for(unsigned anchor:{100u,2568u,4300u}) {
        s.reset();while(s.frame()<anchor) s.step_60hz({});
        clear_actors(s,false);auto previous=s.render_continuous();
        for(unsigned n=0;n<64u;++n) {
            s.step_60hz({});clear_actors(s,false);const auto next=s.render_continuous();
            for(unsigned y:{800u,810u,825u,835u}) for(unsigned x=40;x<970;++x)
                assert(next[y*width+x]==previous[y*width+x+10u]);
            previous=next;
        }
    }
    while(!s.at_fight_gate()) s.step_60hz({});
    clear_actors(s,false);auto previous=s.render_continuous();
    for(unsigned n=0;n<64u;++n) {
        s.step_60hz({});clear_actors(s,false);const auto next=s.render_continuous();
        for(unsigned y:{815u,820u,830u,835u,840u}) for(unsigned x=40;x<970;++x)
            assert(next[y*width+x]==previous[y*width+x+8u]);
        previous=next;
    }
    // The slow stars need quarter-pixel X; half-pixel X would hold every
    // other frame. Track one unobstructed star in the opening sky.
    s.reset();while(s.frame()<100u) s.step_60hz({});clear_actors(s,false);
    previous=s.render_continuous();const auto star=s.video_.palette[8];
    int sx=-1;
    for(unsigned x=50;x<950;++x) if(previous[124u*width+x]==star) {sx=int(x);break;}
    assert(sx>=0);
    for(unsigned n=0;n<32u;++n) {
        s.step_60hz({});clear_actors(s,false);const auto next=s.render_continuous();
        --sx;assert(next[124u*width+unsigned(sx)]==star);
        assert(next[124u*width+unsigned(sx+4)]!=star);
    }
    // Tile-based pickup icons remain visible in the new opening compositor.
    auto& pickup=s.game_.enemies[0];pickup.type()=3;pickup.flags15()=0x56;
    pickup.raw[3]=3;pickup.raw[6]=3;pickup.set_x_fixed(0x0d00);pickup.set_y_fixed(0x0c00);
    const auto with_pickup=s.render_continuous();pickup.clear();
    const auto without_pickup=s.render_continuous();
    assert(with_pickup!=without_pickup);
    // A fully airborne ROM pose supplies a hull reference. Every colored
    // aircraft pixel above the foreground deck must already be present during
    // entry/rise, regardless of MSX stamp phase. The deck hides the lower hull.
    s.reset();while(s.frame()<3607u) s.step_60hz({});clear_actors(s,false);
    const auto backdrop=s.render_continuous();
    auto& plane=s.game_.enemies[0];plane.type()=0x55;plane.state()=3;
    const auto carrier_meta=sm::decode_spawn_type_metadata(rom,0x55);
    std::copy(carrier_meta.bytes.begin(),carrier_meta.bytes.end(),plane.raw.begin()+0x13);
    plane.raw[0x22]=16;plane.raw[0x17]=1;plane.raw[6]=5;plane.raw[5]=0;
    plane.set_x_fixed(0x800);plane.set_y_fixed(0x900);
    const auto reference_actor=plane;
    const auto reference=s.render_continuous();
    std::vector<unsigned> hull_pixels;
    unsigned lower_hull=0;
    for(unsigned i=0;i<reference.size();++i) {
        if(reference[i]==backdrop[i] || reference[i]==0xff000000u) continue;
        hull_pixels.push_back(i);
        lower_hull+=i/width>unsigned((9*8+29+8)*4);
    }
    assert(hull_pixels.size()>10000u && lower_hull>1000u);
    const unsigned deck_line=(16u*8u+8u+29u)*4u;
    unsigned hull_cases=0;
    for(unsigned state:{1u,2u,3u}) for(unsigned y=8;y<=16;++y)
        for(int x:{-8,4,28}) for(unsigned phase=0;phase<6;++phase) {
            plane=reference_actor;plane.state()=std::uint8_t(state);plane.raw[6]=std::uint8_t(phase);
            plane.set_x_fixed(std::uint16_t(x*256));plane.set_y_fixed(std::uint16_t(y*256));
            const auto origin=s.present_carrier(plane,s.frame());
            const int dx=(x-8)*32,dy=int(origin.y_fixed()/8u)-9*32;
            const auto translated=s.render_continuous();
            unsigned visible_samples=0;
            for(auto i:hull_pixels) {
                const int px=int(i%width)+dx,py=int(i/width)+dy;
                if(px<0 || px>=int(width) || py<28*4 || py>=int(deck_line)) continue;
                assert(translated[unsigned(py)*width+unsigned(px)]==reference[i]);
                ++visible_samples;
            }
            // With the original non-firing jet frame, the complete foreground
            // remains byte-identical, including its dark holes and tread art.
            for(unsigned py=deck_line;py<height;++py) for(unsigned px=0;px<width;++px)
                assert(translated[py*width+px]==backdrop[py*width+px]);
            assert(visible_samples>1000u);++hull_cases;
        }
    if(!out.empty()) capture(out/"complete_carrier.ppm",s.render_continuous());
    // Reproduce an aircraft partly overlapping the deck, near the end of its
    // rise delay. Exterior black clearing tiles must reveal the existing deck.
    s.reset();while(s.frame()<3607u) s.step_60hz({});clear_actors(s,false);
    const auto deck=s.render_continuous();
    auto& e=s.game_.enemies[0];e.type()=0x55;e.state()=2;
    const auto meta=sm::decode_spawn_type_metadata(rom,0x55);
    std::copy(meta.bytes.begin(),meta.bytes.end(),e.raw.begin()+0x13);
    e.raw[0x22]=16;e.raw[0x17]=1;e.raw[6]=4;e.raw[5]=0;
    e.set_x_fixed(0x700);e.set_y_fixed(0xc00);
    const auto image=s.render_continuous();
    const auto presented=s.present_carrier(e,s.frame());
    const unsigned pb=s.background_.pattern_base(),cb=s.background_.color_base();
    const unsigned start_row=(s.background_.scroll_row()&0xf8u)>>3u;
    unsigned revealed=0,visible=0;
    for(unsigned i=0;i<image.size();++i) visible+=image[i]!=deck[i];
    for(const auto& v:sm::decode_stage0_tile_visuals(rom,presented))
        for(unsigned ty=0;ty<v.rows;++ty) for(unsigned tx=0;tx<v.cols;++tx) {
            const unsigned tile=v.tiles[ty*v.cols+tx];if(!tile) continue;
            const unsigned physical=(start_row+e.raw[8]+unsigned(v.tile_y_offset)+ty)&31u;
            for(unsigned py=0;py<8u;++py) for(unsigned px=0;px<8u;++px) {
                const unsigned index=(physical/8u)*0x800u+tile*8u+py;
                const auto bits=s.video_.vram[pb+index],color=s.video_.vram[cb+index];
                const unsigned ci=(bits&(0x80u>>px))?color>>4:color&15u;
                if(ci!=0u && ci!=15u) continue;
                const int x=(v.x+int(tx*8u+px))*4+int(presented.x_fixed()&31u)/8;
                const int y=(v.y+29+int(ty*8u+py))*4+int(presented.y_fixed()&31u)/8;
                if(x<0 || x>=int(width) || y<0 || y>=int(height)) continue;
                const auto i=unsigned(y)*width+unsigned(x);
                if(deck[i]!=0xff000000u && image[i]==deck[i]) ++revealed;
            }
        }
    assert(visible>10000u && revealed>100u);
    if(!out.empty()) {capture(out/"carrier.ppm",image);capture(out/"deck.ppm",deck);}
    const auto state=s.state();const auto frame=s.frame();
    assert(s.render_continuous()==image && s.frame()==frame);
    for(unsigned i=0;i<20u;++i) assert(s.state().enemies[i].raw==state.enemies[i].raw);
    // Local timing is useful evidence of capacity, not a portable speed gate.
    auto start=std::chrono::steady_clock::now();
    for(unsigned n=0;n<120u;++n) {s.step_60hz({});s.render_continuous();}
    const auto ms=std::chrono::duration<double,std::milli>(std::chrono::steady_clock::now()-start).count()/120;
    std::cout<<"Continuous scroll PASS: "<<checked<<" textured frames, 256 floor frames, 32 quarter-pixel star frames, "
             <<hull_cases<<" complete aircraft poses, "<<revealed
             <<" restored deck samples; local simulation+render "<<ms<<" ms/frame\n";
}
