#include "play_session.hpp"
#include "stage0_enemies.hpp"
#include "stage0_combat.hpp"
#include "spawn.hpp"
#ifdef NDEBUG
#undef NDEBUG
#endif
#include <algorithm>
#include <array>
#include <cassert>
#include <cstdint>
#include <iostream>

namespace {
const sm::SpawnRecord& first_type(const sm::StageSpawnStream& s,std::uint8_t t) {
    auto it=std::find_if(s.records().begin(),s.records().end(),
                         [=](const auto& r){return r.type==t;});
    assert(it!=s.records().end());return *it;
}
int sw(const sm::Entity64& e,unsigned p) {
    return std::int16_t(unsigned(e.raw[p])|(unsigned(e.raw[p+1])<<8u));
}
}

int main(int argc,char** argv) {
    if(argc!=2) return 2;
    sm::Rom rom(argv[1]);
    const auto s6=sm::StageSpawnStream::decode_stage(rom,5u);
    const auto s7=sm::StageSpawnStream::decode_stage(rom,6u);

    // $4A: $14 entrance wait -> state 2 with ROM curve constants.
    {
        sm::GameState g;sm::Stage0Enemies logic;
        assert(logic.spawn(rom,first_type(s6,0x4au),g,1u));
        auto& e=g.enemies[0];
        assert(e.state()==1u && e.raw[0x17]==0x14u);
        for(unsigned t=0;t<20u;++t) logic.step_15hz(rom,g,t,0,true,nullptr);
        assert(e.state()==2u);
        assert(sw(e,11)==0x70 && sw(e,15)==0x11 && sw(e,17)==0x16);
        logic.step_15hz(rom,g,20u,0,true,nullptr);
        assert(sw(e,11)==0x81 && sw(e,13)==0x16);
    }

    // $4D: state 0 latches its world anchor. A one-cell displacement feeds
    // back as (anchor-current)/32 on the next damped steering update.
    {
        sm::GameState g;sm::Stage0Enemies logic;
        assert(logic.spawn(rom,first_type(s6,0x4du),g,1u));
        auto& e=g.enemies[0];assert(e.state()==0u);
        logic.step_15hz(rom,g,0u,0,true,nullptr);
        assert(e.state()==1u);
        const auto ax=e.x_fixed(),ay=e.y_fixed();
        assert(((unsigned(e.raw[0x28])<<8u)|e.raw[0x29])==ax);
        assert(((unsigned(e.raw[0x2a])<<8u)|e.raw[0x2b])==ay);
        e.set_x_fixed(std::uint16_t(ax+0x0100u));
        logic.step_15hz(rom,g,1u,0,true,nullptr);
        assert(sw(e,13)==-8 && sw(e,11)==0);
    }

    // $48: extended record creates a seven-record formation (one parent plus
    // six linked children). First narrow mode uses phase +2 and radius gate
    // $20. The first child after one tick is the exact sin/cos result.
    {
        sm::GameState g;sm::Stage0Enemies logic;
        const auto& r=first_type(s6,0x48u);
        assert(r.control_flag() && r.payload.size()==5u);
        assert(logic.spawn(rom,r,g,1u));
        assert(g.active_enemy_count()==7u);
        auto& p=g.enemies[0];
        assert(p.type()==0x48u && p.state()==2u && p.raw[0x34]==0x80u);
        assert(p.raw[0x03]==6u && p.raw[0x17]==1u &&
               p.raw[0x12]==2u && p.raw[0x26]==0x20u);
        for(unsigned i=1;i<=6u;++i) {
            const auto& c=g.enemies[i];
            assert(c.type()==0x48u && c.state()==0u);
            assert(c.raw[0x34]==p.raw[0x2d] && c.raw[0x03]==i-1u &&
                   c.raw[0x38]==i);
        }
        assert(p.raw[0x36]==g.enemies[1].raw[0x2d]);
        logic.step_15hz(rom,g,0u,0,true,nullptr);
        assert(p.raw[0x17]==3u);
        assert(g.enemies[1].x_fixed()==0x24f6u);
        assert(g.enemies[1].y_fixed()==0x155au);
    }

    // $4F: Stage-7 extended launcher shares the $8341 type-$16 cadence
    // with $2B and overlays a 24-tick three-way attack.
    {
        sm::GameState g;sm::Stage0Enemies logic;
        const auto& r=first_type(s7,0x4fu);
        assert(r.control_flag() && r.payload.size()==5u);
        assert(r.payload[0]==3u && r.payload[1]==0x82u &&
               r.payload[2]==0x1fu && r.payload[3]==2u && r.payload[4]==0x16u);
        assert(logic.spawn(rom,r,g,1u));
        auto& launcher=g.enemies[0];
        assert(launcher.state()==1u && launcher.x_fixed()==0x2000u &&
               launcher.y_fixed()==0x0200u);
        assert(launcher.raw[0x20]==1u && launcher.raw[0x06]==1u &&
               launcher.raw[0x17]==0x18u && launcher.raw[0x18]==0x1fu &&
               launcher.raw[0x3d]==1u);

        for(unsigned t=0;t<24u;++t) logic.step_15hz(rom,g,t,0,true,nullptr);
        assert(launcher.raw[0x26]==1u && launcher.raw[0x17]==0x18u);

        sm::Stage0Combat combat;combat.reset();
        std::vector<sm::PlaySound> shot_sounds;
        combat.step(rom,g,0u,0,0,shot_sounds);
        assert(launcher.raw[0x26]==0u);
        assert(std::count_if(combat.bullets().begin(),combat.bullets().end(),
               [](const auto& b){return b.active();})==3u);
        assert(std::find(shot_sounds.begin(),shot_sounds.end(),
                         sm::PlaySound::EnemyShot)!=shot_sounds.end());

        for(unsigned t=24u;t<31u;++t) logic.step_15hz(rom,g,t,0,true,nullptr);
        auto child=std::find_if(g.enemies.begin(),g.enemies.end(),
                                [](const auto& e){return e.type()==0x16u;});
        assert(child!=g.enemies.end());
        assert(child->raw[0x20]==1u);
        assert(child->x_fixed()==std::uint16_t(launcher.x_fixed()+0x0200u));
        assert(child->y_fixed()>=0x0400u);
        assert(launcher.raw[0x21]==1u && launcher.raw[0x22]==1u);
    }

    // $54: first Stage-7 descriptor is 04 80 13 00 02 1A. It waits at X=$15,
    // launches three $1A children eight logic ticks apart, and the top-side
    // child starts downward at +$60.
    {
        sm::GameState g;sm::Stage0Enemies logic;
        const auto& r=first_type(s7,0x54u);
        assert(r.control_flag() && r.payload.size()==6u);
        assert(logic.spawn(rom,r,g,1u));
        auto& launcher=g.enemies[0];
        assert(launcher.state()==1u && launcher.x_fixed()==0x2000u &&
               launcher.y_fixed()==0x0100u);
        assert(launcher.raw[0x20]==1u && launcher.raw[0x22]==3u &&
               launcher.raw[0x24]==0x15u && launcher.raw[0x21]==0u);
        launcher.set_x_fixed(0x1500u);
        logic.step_15hz(rom,g,0u,0,true,nullptr);
        assert(launcher.state()==2u && launcher.raw[0x17]==1u);
        logic.step_15hz(rom,g,1u,0,true,nullptr);
        assert(launcher.raw[0x23]==1u && launcher.raw[0x17]==8u);
        auto child=std::find_if(g.enemies.begin(),g.enemies.end(),
                                [](const auto& e){return e.type()==0x1au;});
        assert(child!=g.enemies.end() && child->state()==2u);
        assert(child->raw[0x24]==2u && sw(*child,11)==0x60 && sw(*child,13)==0);
        assert(child->raw[0x3d]==1u);

        // Force a route-tile encounter. Route zero starts at bank07:$8430
        // with direction byte 0, so it turns right and advances the script.
        child->raw[0x25]=9u;
        sm::Stage0Enemies::TileProbe route=[](const sm::Entity64&,int,int) {
            return std::uint8_t(0xb6u);
        };
        logic.step_15hz(rom,g,2u,0,true,nullptr,{},route);
        assert(child->raw[0x22]==1u && child->raw[0x24]==0u);
        assert(sw(*child,11)==0 && sw(*child,13)==0x60);

        // $57DF attack gate: player must be 4..9 high cells away on BOTH
        // axes. The global CE6B parity suppresses attempt one and lets attempt
        // two through; difficulty 1 selects explicit CA26 speed $12.
        g.player.set_x_fixed(std::uint16_t(child->x_fixed()+0x0500u));
        g.player.set_y_fixed(std::uint16_t(child->y_fixed()+0x0500u));
        child->raw[0x17]=1u;child->raw[0x27]=0u;child->raw[0x26]=0u;
        logic.step_15hz(rom,g,3u,0,true,nullptr);
        assert(child->raw[0x17]==0x10u && child->raw[0x26]==0u);
        child->raw[0x17]=1u;
        logic.step_15hz(rom,g,4u,0,true,nullptr);
        assert(child->raw[0x17]==0x10u && child->raw[0x26]==0x12u);

        sm::Stage0Combat combat;combat.reset();
        std::vector<sm::PlaySound> attack_sounds;
        combat.step(rom,g,0u,0,0,attack_sounds);
        assert(child->raw[0x26]==0u);
        const auto bullets=combat.bullets();
        const auto shot=std::find_if(bullets.begin(),bullets.end(),
                                     [](const auto& b){return b.type()==0x60u;});
        assert(shot!=bullets.end());
        assert(std::find(attack_sounds.begin(),attack_sounds.end(),
                         sm::PlaySound::EnemyShot)!=attack_sounds.end());

        for(unsigned t=0;t<16u;++t)
            logic.step_15hz(rom,g,5u+t,0,true,nullptr);
        assert(!launcher.active());
        assert(std::count_if(g.enemies.begin(),g.enemies.end(),
               [](const auto& e){return e.type()==0x1au;})>=3);
    }

    // Real route smoke tests: Stage 6 must reach two complete formations;
    // Stage 7 must instantiate launchers and live $1A children.
    {
        sm::PlaySession s(rom);s.reset(5u);
        unsigned best48=0,best_parent=0;
        for(unsigned f=0;f<10000u;++f) {
            s.step_60hz({});
            unsigned n=0,p=0;
            for(const auto& e:s.state().enemies) if(e.type()==0x48u) {
                ++n;if(e.raw[0x34]&0x80u) ++p;
            }
            if(n>best48){best48=n;best_parent=p;}
        }
        assert(best48>=14u && best_parent>=2u);
    }
    {
        sm::PlaySession s(rom);s.reset(6u);
        bool launcher=false,child=false,horizontal=false,launcher4f=false,child16=false;
        unsigned max4f=0u;
        for(unsigned f=0;f<9000u;++f) {
            s.step_60hz({});
            unsigned n4f=0u;
            for(const auto& e:s.state().enemies) {
                launcher|=e.type()==0x54u;
                if(e.type()==0x4fu) {launcher4f=true;++n4f;}
                child16|=e.type()==0x16u;
                if(e.type()==0x1au) {
                    child=true;horizontal|=sw(e,13)!=0;
                }
            }
            max4f=std::max(max4f,n4f);
        }
        assert(launcher && child && horizontal);
        assert(launcher4f && child16 && max4f>=2u);
    }

    std::cout<<"Stages 6/7 enemies PASS: $4A/$4D/$48/$4F and $54->$1A launcher family\n";
}
