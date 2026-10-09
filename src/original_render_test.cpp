#include "play_session.hpp"
#include "game_viewport.hpp"
#ifdef NDEBUG
#undef NDEBUG
#endif
#include <cassert>
#include <chrono>
#include <iostream>

int main(int argc,char** argv) {
    assert(argc==2);
    for(const auto [w,h]:{std::pair{652,652},std::pair{1100,900},std::pair{1918,1452}}) {
        const auto [dw,dh]=sm::game_viewport_size(w,h,true);
        assert(dw<=w && dh<=h && dw%256==0 && dh%212==0);
        const int scale=dw/256;
        assert(scale==dh/212);
        // Every logical pixel and a moving 16px enemy keep exactly the same
        // physical size, independent of the enemy's position in the viewport.
        for(int x=0;x<240;++x) assert((x+16)*dw/256-x*dw/256==16*scale);
    }
    assert(sm::game_viewport_size(652,652,true)==std::pair(512,424));
    assert(sm::game_viewport_size(652,652,false)==std::pair(652,539));
    assert(sm::game_viewport_size(128,106,true)==std::pair(128,106));
    sm::Rom rom(argv[1]);
    double native_ms=0,previous_ms=0;
    unsigned captures=0;
    for(unsigned stage=0;stage<9;++stage) for(unsigned checkpoint:{0u,5u,9u}) {
        sm::PlaySession session(rom);
        session.set_invulnerable(true);session.reset(stage);session.seek_decile(checkpoint);
        for(unsigned phase=0;phase<4;++phase) {
            session.step_60hz({});
            auto control=session;
            const auto frame=session.frame();
            const auto start=std::chrono::steady_clock::now();
            const auto low=session.render_original();
            const auto middle=std::chrono::steady_clock::now();
            const auto high=control.render_continuous();
            const auto end=std::chrono::steady_clock::now();
            native_ms+=std::chrono::duration<double,std::milli>(middle-start).count();
            previous_ms+=std::chrono::duration<double,std::milli>(end-middle).count();
            assert(low.size()==256u*212u && high.size()==1024u*848u);
            assert(session.frame()==frame);
            // HUD is fixed to the screen and must match exactly at both sizes.
            for(unsigned y=0;y<28;++y) for(unsigned x=0;x<256;++x)
                assert(low[y*256+x]==high[y*4*1024+x*4]);
            // Pixel-grid movement quantizes fractional anchors. The native
            // image should retain the same scene and palette: allow a one-pixel
            // neighbourhood for edges displaced by that quantization.
            unsigned matched=0;
            for(unsigned y=28;y<212;++y) for(unsigned x=0;x<256;++x) {
                bool found=false;
                for(int dy=-1;dy<=1 && !found;++dy) for(int dx=-1;dx<=1 && !found;++dx) {
                    const int hx=int(x*4)+dx*4,hy=int(y*4)+dy*4;
                    if(hx>=0 && hx<1024 && hy>=112 && hy<848)
                        found=low[y*256+x]==high[unsigned(hy)*1024+unsigned(hx)];
                }
                matched+=found;
            }
            if(matched*100u<256u*184u*98u) {
                std::cerr<<"Scene mismatch stage "<<stage+1<<" checkpoint "<<checkpoint
                         <<" phase "<<phase<<" matched "<<matched<<'\n';
                return 1;
            }
            // Rendering must leave gameplay unchanged for the next tick.
            session.step_60hz({});control.step_60hz({});
            assert(session.render_continuous()==control.render_continuous());
            ++captures;
        }
    }
    std::cout<<"Original resolution: "<<captures<<" scene/HUD/state checks PASS; mean CPU "
             <<native_ms/captures<<" ms vs "<<previous_ms/captures<<" ms\n";
}
