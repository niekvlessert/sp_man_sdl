#include "play_timeline.hpp"
#ifdef NDEBUG
#undef NDEBUG
#endif
#include <cassert>
#include <iostream>
int main(int argc,char** argv) {
    if(argc!=2) return 2;
    sm::Rom rom(argv[1]);sm::PlayTimeline t(rom);
    for(unsigned f=0;f<260;++f) {
        t.step({f<30,false,false,f<70,f%15==0,f%15==0});
        if(f%11==0) t.session().render_smooth();
    }
    const auto image=t.session().render_smooth();
    const auto player=t.session().state().player.raw;
    const auto camera=t.session().camera_pixels();
    t.scrub(-100);assert(t.session().frame()==160);
    t.scrub(100);assert(t.session().frame()==260);
    assert(t.session().state().player.raw==player);
    assert(t.session().camera_pixels()==camera && t.session().render_smooth()==image);
    t.scrub(-100);t.step({false,true});assert(t.session().frame()==161);
    t.scrub(100);assert(t.session().frame()==261);
    assert(t.session().state().player.raw!=player);
    t.scrub(-1000);assert(t.session().frame()==0);
    assert(t.session().upgrades().speed==0);
    t.jump(6);const auto f=t.session().frame();assert(t.session().upgrades().speed==4);
    t.scrub(-100);assert(t.session().frame()==f-100 && t.session().upgrades().speed==0);
    t.scrub(100);assert(t.session().frame()==f && t.session().upgrades().speed==4);
    t.jump(0);assert(t.session().frame()==0 && t.session().upgrades().speed==0);
    t.jump(9);
    for(unsigned i=0;i<4000 && t.session().music_playing();++i)
        t.step({false,false,false,false,true,i%5u==0});
    assert(!t.session().music_playing());const auto death_frame=t.session().frame();
    t.scrub(-100);assert(t.session().music_playing());
    t.scrub(100);assert(t.session().frame()==death_frame && !t.session().music_playing());
    t.scrub(200);assert(t.session().stage_index()==1 && t.session().music_playing());
    t.reset();assert(t.session().music_playing());
    sm::PlaySession normal(rom),fast(rom),moving(rom);
    for(unsigned i=0;i<60;++i) moving.step_60hz({false,false,false,true});
    assert(moving.upgrades().speed==0 && moving.state().player.x_fixed()==0x0f00);
    for(unsigned i=0;i<60;++i)normal.step_60hz({});
    for(unsigned i=0;i<60*5;++i)fast.step_60hz({});
    assert(fast.frame()==normal.frame()*5);
    std::cout<<"Timeline: input/state replay, branching, bounds and shortcut loadouts PASS\n";
}
