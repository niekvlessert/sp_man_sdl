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
const sm::SpawnRecord& first_type(const sm::StageSpawnStream& stream,std::uint8_t type) {
    auto it=std::find_if(stream.records().begin(),stream.records().end(),
        [=](const auto& r){return r.type==type;});
    assert(it!=stream.records().end());
    return *it;
}
int sw(const sm::Entity64& e,unsigned p) {
    return std::int16_t(unsigned(e.raw[p])|(unsigned(e.raw[p+1])<<8u));
}
}

int main(int argc,char** argv) {
    if(argc!=2) return 2;
    sm::Rom rom(argv[1]);

    const auto s5=sm::StageSpawnStream::decode_stage(rom,4u);
    const auto s6=sm::StageSpawnStream::decode_stage(rom,5u);
    const auto s8=sm::StageSpawnStream::decode_stage(rom,7u);
    const auto s9=sm::StageSpawnStream::decode_stage(rom,8u);

    // $41: first Stage-5 program is payload 04,01. $8DA4[1]=$18.
    {
        sm::GameState g;sm::Stage0Enemies logic;
        assert(logic.spawn(rom,first_type(s5,0x41u),g,1u));
        auto& e=g.enemies[0];
        assert(e.type()==0x41u && e.state()==1u);
        assert(e.raw[0x20]==1u && e.raw[0x17]==0x18u);
        auto vis=sm::decode_stage0_tile_visuals(rom,e);
        assert(vis.size()==2u);
        assert(vis[0].cols==4u && vis[0].rows==4u);
        assert(vis[1].cols==4u && vis[1].rows==4u);
        for(unsigned t=0;t<24u;++t) logic.step_15hz(rom,g,t,0,true,nullptr);
        assert(e.raw[0x06]==8u && e.raw[0x21]==1u);
    }

    // $49: 84,1F means Y=4, X=1F, upward at -$40. A terrain hit pauses,
    // then the saved velocity is negated and the direction bit flips.
    {
        sm::GameState g;sm::Stage0Enemies logic;
        assert(logic.spawn(rom,first_type(s5,0x49u),g,1u));
        auto& e=g.enemies[0];
        assert(e.type()==0x49u && e.state()==1u);
        assert(e.y_fixed()==0x0400u && e.x_fixed()==0x1f00u);
        assert(e.raw[0x21]==1u && sw(e,11)==-0x40);
        sm::Stage0Enemies::TerrainProbe hit=[](const sm::Entity64&,int,int){return std::uint8_t(1);};
        logic.step_15hz(rom,g,0,0,true,nullptr,hit,{});
        assert(e.state()==2u && sw(e,11)==0);
        e.raw[0x17]=1u;
        logic.step_15hz(rom,g,1,0,true,nullptr,{},{});
        assert(e.state()==1u && e.raw[0x21]==0u && sw(e,11)==0x40);
    }

    // $73: Stage-6 dispatch is JP $82CA, the same aimed turret logic as $29.
    // Its different metadata makes it a tile actor; the first frame is 2x2.
    {
        sm::GameState g;sm::Stage0Enemies logic;
        assert(logic.spawn(rom,first_type(s6,0x73u),g,1u));
        auto& e=g.enemies[0];
        assert(e.type()==0x73u && e.state()==1u && e.raw[0x17]==0x20u);
        auto vis=sm::decode_stage0_tile_visuals(rom,e);
        assert(vis.size()==1u && vis[0].cols==2u && vis[0].rows==2u);

        sm::Stage0Combat combat;combat.reset();
        std::array<sm::Entity64,4> turret{};
        for(auto& t:turret) {t.type()=0x73u;combat.spawned(t);}
        assert(turret[0].raw[0x3d]==0u && turret[1].raw[0x3d]==0u &&
               turret[2].raw[0x3d]==0u && turret[3].raw[0x3d]==1u);
    }

    // $50: first Stage-8 record is 06,1F -> +$40 vertical accumulator.
    {
        sm::GameState g;sm::Stage0Enemies logic;
        assert(logic.spawn(rom,first_type(s8,0x50u),g,1u));
        auto& e=g.enemies[0];
        assert(e.type()==0x50u && e.state()==1u);
        assert(e.x_fixed()==0x1f00u && e.y_fixed()==0x0600u);
        assert(sw(e,0x21)==0x40);
        for(unsigned t=0;t<4u;++t) logic.step_15hz(rom,g,t,0,true,nullptr);
        assert(e.raw[0x08]==7u && e.raw[0x23]==0u && e.raw[0x24]==7u);
    }

    // $4E: position/timer come from the ROM PRNG, then after six animation
    // wraps it arms damage and enters accelerating fall state 2.
    {
        sm::GameState g;sm::Stage0Enemies logic;
        assert(logic.spawn(rom,first_type(s9,0x4eu),g,1u));
        auto& e=g.enemies[0];
        assert(e.type()==0x4eu && e.state()==0u);
        logic.step_15hz(rom,g,0,0,true,nullptr);
        assert(e.state()==1u && e.raw[0x20]>=1u && e.raw[0x20]<=4u);
        assert(e.raw[0x08]==2u || e.raw[0x08]==4u ||
               e.raw[0x08]==6u || e.raw[0x08]==8u);
        for(unsigned t=1;t<200u && e.state()!=2u;++t)
            logic.step_15hz(rom,g,t,0,true,nullptr);
        assert(e.state()==2u && (e.raw[0x14]&0x80u));
        assert(e.raw[0x05]==6u && sw(e,11)==0x40 && sw(e,15)==0x10);
        logic.step_15hz(rom,g,201,0,true,nullptr);
        assert(e.raw[0x05]==7u && sw(e,11)==0x50);
    }

    std::cout<<"Late level enemies PASS: $41/$49/$73/$50/$4E native handlers\n";
}
