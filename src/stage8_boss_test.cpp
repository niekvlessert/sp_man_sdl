#include "play_session.hpp"
#include "stage0_enemies.hpp"
#include "spawn.hpp"
#include "assets.hpp"
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

    // Stage 8 keeps the preceding Stage-7 atlas. The natural-transition
    // pixel fixture lives in boss_visual_test, not a direct-start title dump.
    const auto s8=sm::StageSpawnStream::decode_stage(rom,7u);
    const auto& record=find_type(s8,0x78u);
    assert(record.trigger==0x2000u && record.control==5u);
    assert(record.payload.size()==1u && record.payload[0]==0x10u);
    const auto meta=sm::decode_spawn_type_metadata(rom,0x78u);
    assert((meta.bytes==std::array<std::uint8_t,4>{0x0bu,0x93u,0x3du,0x40u}));

    sm::GameState game;
    sm::Stage0Enemies logic;
    std::vector<sm::PlaySound> sounds;
    assert(logic.spawn(rom,record,game,1u));
    auto& boss=game.enemies[0];
    assert(boss.type()==0x78u && boss.state()==1u);
    assert(boss.x_fixed()==0x1f00u && boss.y_fixed()==0x0400u);
    assert(boss.raw[0x16]==0x40u && boss.raw[0x17]==0x20u);
    assert(boss.raw[0x21]==1u && boss.raw[0x23]==0x30u && boss.raw[0x25]==0x15u);

    // $ACDE points at ten exact packed composition scripts. Selector zero is
    // the four-matrix shell, 1..4 add one matrix, and 5..9 add two.
    static constexpr std::array<unsigned,10> visual_count{4,5,5,5,5,6,6,6,6,6};
    for(unsigned i=0;i<10u;++i) {
        boss.raw[0x06]=std::uint8_t(i);
        assert(sm::decode_stage0_tile_visuals(rom,boss).size()==visual_count[i]);
    }
    boss.raw[0x06]=0u;

    // State 1: 208 moving calls reach X=$0500/+22=$D0. The transition call
    // consumes the old -$20 vector once more and starts state 2 at $04E0.
    unsigned tick=0;
    for(unsigned i=0;i<208u;++i) logic.step_gate_20hz(rom,game,tick++,&sounds);
    assert(boss.state()==1u && boss.x_fixed()==0x0500u && boss.raw[0x22]==0xd0u);
    logic.step_gate_20hz(rom,game,tick++,&sounds);
    assert(boss.state()==2u && boss.x_fixed()==0x04e0u && boss.raw[0x22]==0u);

    // State 2 moves right for 64 calls, then stops exactly at $0CE0.
    for(unsigned i=0;i<64u;++i) logic.step_gate_20hz(rom,game,tick++,&sounds);
    assert(boss.state()==2u && boss.x_fixed()==0x0ce0u && boss.raw[0x22]==0x40u);
    logic.step_gate_20hz(rom,game,tick++,&sounds);
    assert(boss.state()==3u && boss.x_fixed()==0x0ce0u && boss.raw[0x29]==0u);

    // State 3's first weak-point phase is +2B=1/+2A=5. The $20 timer gives
    // 31 actual upward -$20 moves; its expiry zeroes motion before state 4.
    logic.step_gate_20hz(rom,game,tick++,&sounds);
    assert(boss.raw[0x2b]==1u && boss.raw[0x2a]==5u);
    for(unsigned i=1;i<32u;++i) logic.step_gate_20hz(rom,game,tick++,&sounds);
    assert(boss.state()==4u && boss.y_fixed()==0x0020u);
    assert(boss.raw[0x23]==0x50u && boss.raw[0x28]==3u);

    // Three four-frame sprite cycles = twelve calls, then the 32-call state 5.
    for(unsigned i=0;i<12u;++i) logic.step_gate_20hz(rom,game,tick++,&sounds);
    assert(boss.state()==5u && boss.raw[0x27]==0x20u);
    logic.step_gate_20hz(rom,game,tick++,&sounds);
    assert(boss.raw[0x26]==1u && boss.raw[0x17]==0x40u && boss.raw[0x21]==2u);

    // $915D creates eight secondary type-$46 wall rows at +X1/+Y4..11.
    // Native stores them in the regular fixed array so the same tile-stamp
    // compositor/collision map can reproduce their visible energy wall.
    std::array<sm::Entity64*,8> wall{};
    for(auto& e:game.enemies) if(e.type()==0x46u) {
        assert(e.raw[0x0f]<8u);wall[e.raw[0x0f]]=&e;
    }
    for(unsigned i=0;i<8u;++i) {
        assert(wall[i]);
        assert(wall[i]->state()==0u && wall[i]->raw[0x17]==0x14u);
        assert(wall[i]->x_fixed()==std::uint16_t(boss.x_fixed()+0x0100u));
        assert(wall[i]->y_fixed()==std::uint16_t(boss.y_fixed()+(4u+i)*0x0100u));
    }
    for(unsigned i=0;i<13u;++i)
        logic.step_15hz(rom,game,i,0u,false,&sounds);
    assert(std::count(sounds.begin(),sounds.end(),sm::PlaySound::Stage8Wall)==1);
    static constexpr std::array<std::uint8_t,8> wall_tile{
        0xccu,0xcdu,0xcbu,0xcbu,0xcbu,0xcbu,0xcdu,0xccu};
    for(unsigned i=0;i<8u;++i) {
        assert(wall[i]->state()==3u && wall[i]->raw[0x11]==0x0eu);
        const auto vis=sm::decode_stage0_tile_visuals(rom,*wall[i]);
        assert(vis.size()==1u && vis[0].cols==0x0eu);
        assert(!vis[0].tiles.empty() && vis[0].tiles[0]==wall_tile[i]);
    }
    for(unsigned i=13u;i<17u;++i)
        logic.step_15hz(rom,game,i,0u,false,&sounds);
    for(const auto& e:game.enemies) assert(e.type()!=0x46u);

    for(unsigned i=1;i<32u;++i) logic.step_gate_20hz(rom,game,tick++,&sounds);
    assert(boss.state()==3u && boss.raw[0x26]==0u);

    // $AC2C gates the common damage subtraction with +29 and +2B. Equality
    // leaves zero HP alive; the following borrow enters custom state 6 while
    // preserving type $78 and underflowing HP to $FF.
    boss.raw[0x29]=1u;boss.raw[0x2b]=1u;
    assert(sm::apply_stage0_damage(rom,boss,1u)==sm::Stage0DamageResult::Ignored);
    boss.raw[0x29]=0u;boss.raw[0x2b]=0u;
    assert(sm::apply_stage0_damage(rom,boss,1u)==sm::Stage0DamageResult::Ignored);
    boss.raw[0x2b]=1u;boss.raw[0x16]=1u;
    assert(sm::apply_stage0_damage(rom,boss,1u)==sm::Stage0DamageResult::Hit);
    assert(boss.raw[0x16]==0u && boss.state()==3u);
    assert(sm::apply_stage0_damage(rom,boss,1u)==sm::Stage0DamageResult::Destroyed);
    assert(boss.type()==0x78u && boss.state()==6u && boss.raw[0x16]==0xffu);
    assert((boss.raw[0x14]&0x80u)==0u && boss.raw[0x29]==1u);

    // State 6 has 63 actual -$20 moves and one zero-motion threshold call.
    const auto death_x=boss.x_fixed();
    for(unsigned i=0;i<64u;++i) logic.step_gate_20hz(rom,game,tick++,&sounds);
    assert(boss.state()==7u);
    assert(std::int16_t(boss.x_fixed()-death_x)==-std::int16_t(63u*0x20u));
    assert(boss.raw[0x06]==5u);

    for(unsigned i=0;i<20u && boss.state()==7u;++i)
        logic.step_gate_20hz(rom,game,tick++,&sounds);
    assert(boss.state()==8u && boss.raw[0x06]==9u);
    assert(std::count(sounds.begin(),sounds.end(),sm::PlaySound::Stage8Break)==1);
    // Completion depends on the player's position, not a captured duration.
    game.player.set_x_fixed(std::uint16_t(boss.x_fixed()-0x0200u+0x0140u));
    game.player.set_y_fixed(std::uint16_t(boss.y_fixed()+0x0600u-0x0060u));
    for(unsigned i=0;i<10u;++i) {
        logic.step_gate_20hz(rom,game,tick++,&sounds);
        assert(!logic.stage_complete());
    }
    assert((game.player.x_fixed()>>5u)==((boss.x_fixed()-0x0200u)>>5u));
    assert((game.player.y_fixed()>>5u)==((boss.y_fixed()+0x0600u)>>5u));
    logic.step_gate_20hz(rom,game,tick++,&sounds);
    assert(logic.stage_complete());

    // Full native route: the real stage-8 stream must spawn $78, expose boss
    // music, accept fatal damage only in an open weak phase, and hand off to
    // stage index 8 (game Stage 9) through the normal session transition.
    sm::PlaySession route(rom);route.reset(7u);
    sm::Entity64* live=nullptr;
    for(unsigned f=0;f<30000u && !live;++f) {
        route.step_60hz({});
        auto& state=const_cast<sm::GameState&>(route.state());
        const auto it=std::find_if(state.enemies.begin(),state.enemies.end(),
            [](auto& e){return e.type()==0x78u;});
        if(it!=state.enemies.end()) live=&*it;
    }
    assert(live && route.boss_music_active());
    for(unsigned f=0;f<4000u && live->state()<3u;++f) route.step_60hz({});
    assert(route.at_fight_gate() && live->state()>=3u && live->state()<=5u);
    for(unsigned f=0;f<1000u && (live->raw[0x29]!=0u || live->raw[0x2b]==0u);++f)
        route.step_60hz({});
    assert(live->raw[0x29]==0u && live->raw[0x2b]!=0u);
    live->raw[4]=0x41u;
    for(unsigned f=0;f<40u && live->state()<6u;++f) route.step_60hz({});
    assert(live->type()==0x78u && live->state()>=6u);
    assert(!route.music_playing());
    for(unsigned f=0;f<600u && route.stage_index()==7u;++f) route.step_60hz({});
    assert(route.stage_index()==8u);
    assert(route.music_playing());

    std::cout<<"Stage 8 boss PASS: $78 attack cycle, gated damage, custom death and Stage-9 handoff\n";
}
