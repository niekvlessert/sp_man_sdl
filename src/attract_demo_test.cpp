#include "attract_demo.hpp"
#ifdef NDEBUG
#undef NDEBUG
#endif
#include <cassert>
#include <fstream>
#include <iostream>
#include <iterator>

int main(int argc,char** argv) {
    if(argc!=3) return 2;
    sm::Rom rom(argv[1]);unsigned frames=0;
    sm::AttractDemoCycle cycle;
    assert(cycle.advance(14.0,true)==-1);
    cycle.activity();assert(cycle.advance(14.0,true)==-1);
    assert(cycle.advance(20.0,false)==-1); // options/music/intro/play/paused
    assert(cycle.advance(14.0,true)==-1);
    assert(cycle.advance(1.0,true)==1);
    assert(cycle.advance(15.0,true)==2);
    assert(cycle.advance(15.0,true)==0);
    assert(cycle.advance(15.0,true)==1);
    constexpr unsigned stages[]{3u,0u,1u},checkpoints[]{0u,1u,2u};
    // These fixture bytes were emitted by calls to the original $789C helper:
    // countdown, pointer low/high, C908 held input and C907 pressed input.
    for(unsigned i=0;i<3u;++i) {
        const auto path=std::string(argv[2])+"/demo_"+std::to_string(i)+".bin";
        std::ifstream file(path,std::ios::binary);assert(file);
        const std::vector<std::uint8_t> expected{std::istreambuf_iterator<char>(file),{}};
        assert(expected.size()%5u==0u);
        sm::AttractDemo demo(rom);demo.reset(i);
        assert(demo.stage()==stages[i] && demo.checkpoint()==checkpoints[i]);
        for(unsigned f=0;f<expected.size()/5u;++f) {
            demo.step();const auto p=f*5u;
            assert(demo.countdown()==expected[p]);
            assert(demo.pointer()==(unsigned(expected[p+1u])|(unsigned(expected[p+2u])<<8u)));
            assert(demo.held()==expected[p+3u] && demo.pressed()==expected[p+4u]);
            const auto input=demo.input();
            assert(input.up==bool(expected[p+3u]&1u) && input.down==bool(expected[p+3u]&2u));
            assert(input.left==bool(expected[p+3u]&4u) && input.right==bool(expected[p+3u]&8u));
            assert(input.fire==bool(expected[p+4u]&16u));
            assert(input.option_mode_pressed==bool(expected[p+4u]&32u));
            ++frames;
        }
        assert(demo.finished());
        demo.reset(i);demo.step();
        sm::PlaySession session(rom);session.set_invulnerable(true);session.reset_attract(demo.stage(),demo.checkpoint());
        assert(session.stage_index()==stages[i] && session.frame()==0u);
        assert(session.upgrades().power==0u && session.upgrades().options==0u);
        assert(session.state().player.x_fixed()==0x0500u && session.state().player.y_fixed()==0x0800u);
        unsigned ticks=0,active=0;bool moved=false,fired=false;
        for(;ticks<6000u;++ticks) {
            if(ticks%3u==0u) demo.step();
            if(demo.finished()) break;
            auto input=demo.input();if(ticks%3u) {input.fire=false;input.option_mode_pressed=false;}
            session.step_60hz(input);
            if(session.state().active_enemy_count()) ++active;
            moved|=session.state().player.x_fixed()!=0x0500u || session.state().player.y_fixed()!=0x0800u;
            for(const auto& shot:session.shots()) fired|=shot.active();
            if(ticks%300u==0u) assert(session.render_continuous().size()==1024u*848u);
        }
        assert(ticks<6000u && ticks>1000u && active>100u && moved && fired);
        // A normal start after a demo owns fresh state, not recorded actions.
        session.reset();assert(session.frame()==0u && session.stage_index()==0u);
        assert(session.upgrades().power==0u && session.state().active_enemy_count()==0u);
        std::cout<<"Demo "<<i<<": "<<ticks<<" native frames, enemy frames "<<active<<'\n';
    }
    assert(frames==3750u);
    std::cout<<"Attract demo PASS: 3750 original helper frames, three checkpoint playthroughs\n";
}
