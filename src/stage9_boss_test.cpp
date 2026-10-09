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

    // Independent original Z80 fixture: all 64 launch angles, sampled after
    // $B6F3..$B745 with CA26=$0E. Hash VY/VX/AY/AX, including signed rounding.
    std::uint32_t vector_hash=2166136261u;
    for(unsigned angle=0;angle<64u;++angle) {
        sm::GameState projectile_game;sm::Stage0Enemies projectile_logic;
        auto& projectile=projectile_game.enemies[0];projectile.type()=0x5eu;
        projectile_game.random_value=std::uint8_t(angle^rom.bank(0)[0x600]^rom.bank(0)[0x700]);
        projectile_logic.step_gate_20hz(rom,projectile_game,0u);
        for(unsigned p=11;p<19;++p) vector_hash=(vector_hash^projectile.raw[p])*16777619u;
        const auto before=projectile;
        for(unsigned f=0;f<3u;++f) projectile_logic.move_60hz(projectile_game,f);
        auto velocity=[](const sm::Entity64& e,unsigned p) {
            return std::int16_t(std::uint16_t(e.raw[p])|(std::uint16_t(e.raw[p+1])<<8u));
        };
        assert(std::int16_t(projectile.x_fixed()-before.x_fixed())==velocity(before,13));
        assert(std::int16_t(projectile.y_fixed()-before.y_fixed())==velocity(before,11));
        projectile_logic.step_gate_20hz(rom,projectile_game,7u);
        assert(velocity(projectile,11)==velocity(before,11));
        projectile_logic.step_gate_20hz(rom,projectile_game,8u);
        assert(velocity(projectile,11)==velocity(before,11)+velocity(before,15));
        assert(velocity(projectile,13)==velocity(before,13)+velocity(before,17));
        assert(projectile.raw[0x17]==11u);
    }
    assert(vector_hash==0x57035b4du);
    for(unsigned difficulty:{4u,5u,8u}) {
        sm::GameState hard;hard.difficulty=std::uint8_t(difficulty);sm::Stage0Enemies controller;
        assert(controller.spawn(rom,record,hard,1u));
        assert(hard.enemies[0].raw[0x16]==(difficulty<5u?48u:64u));
        hard.enemies[0].clear();auto& obstacle=hard.enemies[0];obstacle.type()=0x66u;
        hard.player.set_y_fixed(0x0400u);controller.step_gate_20hz(rom,hard,0u);
        const auto x=obstacle.x_fixed();
        for(unsigned f=0;f<3u;++f) controller.move_60hz(hard,f);
        assert(std::int16_t(obstacle.x_fixed()-x)==-0x80);
        controller.step_gate_20hz(rom,hard,1u);
        assert(std::int16_t(std::uint16_t(obstacle.raw[13])|(std::uint16_t(obstacle.raw[14])<<8u))==-0x90);
        assert(std::int16_t(std::uint16_t(obstacle.raw[11])|(std::uint16_t(obstacle.raw[12])<<8u))==(difficulty<5u?0:-8));
    }

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
    sm::PlaySession route(rom);route.set_invulnerable(true);route.reset(8u);
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
    // The visible 4x7 tile core extends well below the stale sprite proxy.
    // Test a real primary shot inside its lower half, and one outside it.
    sm::Entity64 shot;sm::Entity64 player;player.set_x_fixed(200u*32u);
    player.set_y_fixed(96u*32u);sm::initialize_basic_shot(rom,player,shot);
    const auto core=sm::decode_stage0_tile_visuals(rom,*live).front();
    shot.set_x_fixed(std::uint16_t((core.x+8)*32));
    shot.set_y_fixed(std::uint16_t((core.y+32)*32));
    assert(sm::stage0_sprite_overlap(rom,shot,*live));
    shot.set_y_fixed(150u*32u);
    assert(!sm::stage0_sprite_overlap(rom,shot,*live));

    // Exercise interactive firing, not only injected pending damage. Keep the
    // ROM boss HP/attack script intact and place the ship in the core's lane.
    auto& player_state=const_cast<sm::GameState&>(route.state()).player;
    player_state.set_y_fixed(0x0c00u);
    const auto hp=live->raw[0x16];
    for(unsigned f=0;f<1600u && live->raw[0x16]==hp;++f)
        route.step_60hz({false,false,false,false,true,f%5u==0u});
    assert(live->raw[0x16]<hp);
    // Drain the interactive shots before injecting a synthetic fatal hit:
    // $76A9 can otherwise replace that pending byte with an in-flight shot.
    for(unsigned f=0;f<60u;++f) route.step_60hz({});
    // Wait for an open phase before the fatal test injection.
    for(unsigned f=0;f<5000u && live->raw[0x06]!=1u;++f) route.step_60hz({});
    live->raw[0x04]=0x31u;
    for(unsigned f=0;f<80u && live->state()<2u;++f) route.step_60hz({});
    assert(live->type()==0x79u && live->state()>=2u);
    assert(!route.music_playing() && !route.campaign_complete());
    assert(live->raw[0x3f]!=0xd1u);
    bool held=false;
    for(unsigned f=0;f<300u && !route.campaign_complete();++f) {
        held|=live->type()==0x79u && live->state()==3u;
        route.step_60hz({});
    }
    assert(route.stage_index()==8u);
    assert(held && route.campaign_complete());
    assert(!live->active());
    assert(!route.boss_music_active());

    std::cout<<"Stage 9 boss PASS: $79 scripts, $5E/$66 attacks, gated damage, destruction and ending latch\n";
}
