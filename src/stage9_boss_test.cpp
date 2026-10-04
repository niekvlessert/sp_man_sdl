#include "play_session.hpp"
#include "stage0_enemies.hpp"
#include "spawn.hpp"
#include "rom.hpp"
#ifdef NDEBUG
#undef NDEBUG
#endif
#include <algorithm>
#include <array>
#include <cassert>
#include <cstdint>
#include <iostream>

namespace {
const sm::SpawnRecord& find_type(const sm::StageSpawnStream& stream,std::uint8_t type) {
    const auto it=std::find_if(stream.records().begin(),stream.records().end(),
        [=](const auto& r){return r.type==type;});
    assert(it!=stream.records().end());
    return *it;
}
}

int main(int argc,char** argv) {
    if(argc!=2) return 2;
    sm::Rom rom(argv[1]);

    const auto s9=sm::StageSpawnStream::decode_stage(rom,8u);
    const auto& record=find_type(s9,0x79u);
    assert(record.trigger==0x1036u && record.control==5u);
    assert(record.payload.size()==1u && record.payload[0]==0x08u);
    const auto meta=sm::decode_spawn_type_metadata(rom,0x79u);
    assert((meta.bytes==std::array<std::uint8_t,4>{0x09u,0x06u,0x1cu,0x30u}));

    sm::GameState game;
    sm::Stage0Enemies logic;
    std::vector<sm::PlaySound> sounds;
    assert(logic.spawn(rom,record,game,1u));
    auto& boss=game.enemies[0];
    assert(boss.type()==0x79u && boss.state()==1u);
    assert(boss.x_fixed()==0x2000u && boss.y_fixed()==0x0800u);
    assert(boss.raw[0x16]==0x30u);
    assert(boss.raw[0x06]==2u && boss.raw[0x20]==0x20u && boss.raw[0x21]==1u);
    assert(boss.raw[0x17]==0x38u && boss.raw[0x25]==0u &&
           boss.raw[0x26]==6u && boss.raw[0x27]==1u);

    // $97C5 points at eight one-matrix placement scripts. The final frame
    // deliberately shifts +2 X / -3 Y while expanding to 8x13.
    static constexpr std::array<std::pair<unsigned,unsigned>,8> size{{
        {4,7},{4,7},{4,7},{5,3},{7,4},{8,6},{10,9},{8,13}}};
    for(unsigned i=0;i<8u;++i) {
        boss.raw[0x06]=std::uint8_t(i);
        const auto vis=sm::decode_stage0_tile_visuals(rom,boss);
        assert(vis.size()==1u);
        assert(vis[0].cols==size[i].first && vis[0].rows==size[i].second);
        if(i==7u) assert(vis[0].tile_x_offset==2 && vis[0].tile_y_offset==-3);
    }
    boss.raw[0x06]=2u;

    // Fight animation: first $20 calls stay on selector 2. The next record is
    // selector 0 for four calls, then selector 1 creates one type-$66 child.
    unsigned tick=0;
    for(unsigned i=0;i<32u;++i) logic.step_gate_20hz(rom,game,tick++,&sounds);
    assert(boss.raw[0x06]==2u && boss.raw[0x20]==0u);
    logic.step_gate_20hz(rom,game,tick++,&sounds);
    assert(boss.raw[0x06]==0u && boss.raw[0x20]==3u);
    for(unsigned i=0;i<4u;++i) logic.step_gate_20hz(rom,game,tick++,&sounds);
    assert(boss.raw[0x06]==1u);
    const auto child66=std::find_if(game.enemies.begin(),game.enemies.end(),
        [](const auto& e){return e.type()==0x66u;});
    assert(child66!=game.enemies.end());
    assert(child66->state()==1u && child66->raw[0x16]==4u);

    // $971B only decrements the burst count when CA02&3==0. Force the gate
    // open with count two: one type-$5E shot is produced and count becomes 1.
    boss.raw[0x17]=1u;boss.raw[0x26]=2u;boss.raw[0x25]=0u;
    while((tick&3u)!=0u) ++tick;
    logic.step_gate_20hz(rom,game,tick++,&sounds);
    assert(boss.raw[0x26]==1u);
    const auto child5e=std::find_if(game.enemies.begin(),game.enemies.end(),
        [](const auto& e){return e.type()==0x5eu;});
    assert(child5e!=game.enemies.end());
    assert(child5e->state()==1u && child5e->raw[0x16]==2u);
    // FA07 relative placement: +7 Y / -6 X high cells.
    assert(child5e->raw[0x08]==std::uint8_t(boss.raw[0x08]+7u));
    assert(child5e->raw[0x0a]==std::uint8_t(boss.raw[0x0a]-6u));

    // Only body selector 1 is damageable. Equality leaves zero HP alive;
    // the following borrow enters state 2 with selector 3 and HP underflow FF.
    boss.raw[0x06]=2u;boss.raw[0x14]|=0x80u;boss.raw[0x16]=1u;
    assert(sm::apply_stage0_damage(rom,boss,1u)==sm::Stage0DamageResult::Ignored);
    boss.raw[0x06]=1u;boss.raw[0x14]|=0x80u;
    assert(sm::apply_stage0_damage(rom,boss,1u)==sm::Stage0DamageResult::Hit);
    assert(boss.raw[0x16]==0u && boss.state()==1u);
    boss.raw[0x14]|=0x80u;
    assert(sm::apply_stage0_damage(rom,boss,1u)==sm::Stage0DamageResult::Destroyed);
    assert(boss.type()==0x79u && boss.state()==2u);
    assert(boss.raw[0x06]==3u && boss.raw[0x16]==0xffu);

    // Destruction exposes 3,4,5,6 at handler entry. Four updates land on
    // selector 7/state 3 and install the exact $20 ending hold.
    for(unsigned i=0;i<3u;++i) {
        logic.step_gate_20hz(rom,game,tick++,&sounds);
        assert(boss.state()==2u && boss.raw[0x06]==std::uint8_t(4u+i));
    }
    logic.step_gate_20hz(rom,game,tick++,&sounds);
    assert(boss.state()==3u && boss.raw[0x06]==7u && boss.raw[0x17]==0x20u);
    for(const auto& e:game.enemies) assert(e.type()!=0x5eu && e.type()!=0x66u);

    for(unsigned i=0;i<31u;++i) {
        logic.step_gate_20hz(rom,game,tick++,&sounds);
        assert(!logic.stage_complete());
    }
    logic.step_gate_20hz(rom,game,tick++,&sounds);
    assert(logic.stage_complete());
    assert(!boss.active());

    // Full native route: Stage 9 must really instantiate $79 from trigger
    // $1036, enable boss music, accept fatal pending damage only in selector
    // one, then leave the final boss/ending latch without inventing stage 10.
    sm::PlaySession route(rom);route.reset(8u);
    sm::Entity64* live=nullptr;
    for(unsigned f=0;f<30000u && !live;++f) {
        route.step_60hz({});
        auto& state=const_cast<sm::GameState&>(route.state());
        const auto it=std::find_if(state.enemies.begin(),state.enemies.end(),
            [](auto& e){return e.type()==0x79u;});
        if(it!=state.enemies.end()) live=&*it;
    }
    assert(live && route.boss_music_active());
    for(unsigned f=0;f<5000u && live->raw[0x06]!=1u;++f) route.step_60hz({});
    assert(live->raw[0x06]==1u && (live->raw[0x14]&0x80u));
    live->raw[0x04]=0x31u;
    for(unsigned f=0;f<80u && live->state()<2u;++f) route.step_60hz({});
    assert(live->type()==0x79u && live->state()>=2u);
    for(unsigned f=0;f<300u && route.boss_music_active();++f) route.step_60hz({});
    assert(route.stage_index()==8u);
    assert(!route.boss_music_active());

    std::cout<<"Stage 9 boss PASS: $79 scripts, $5E/$66 attacks, gated damage, destruction and ending latch\n";
}
