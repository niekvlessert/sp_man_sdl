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
std::int16_t word(const sm::Entity64& e,unsigned p) {
    return std::int16_t(std::uint16_t(e.raw[p]) | (std::uint16_t(e.raw[p+1])<<8u));
}
}

int main(int argc,char** argv) {
    if(argc!=2) return 2;
    sm::Rom rom(argv[1]);

    const auto s7=sm::StageSpawnStream::decode_stage(rom,6u);
    const auto& record=find_type(s7,0x43u);
    assert(record.trigger==0x10f8u && record.control==5u);
    assert(record.payload.size()==1u && record.payload[0]==8u);
    const auto meta=sm::decode_spawn_type_metadata(rom,0x43u);
    assert((meta.bytes==std::array<std::uint8_t,4>{4u,4u,0xbdu,0u}));

    sm::GameState game;
    sm::Stage0Enemies logic;
    std::vector<sm::PlaySound> sounds;
    assert(logic.spawn(rom,record,game,1u));
    auto& boss=game.enemies[0];
    assert(boss.type()==0x43u && boss.state()==0u);
    assert(boss.x_fixed()==0x2000u && boss.y_fixed()==0x0a00u);
    assert(boss.raw[0x17]==0x3cu && boss.raw[0x16]==0u);

    // Live $8E81 is 20 Hz. The native 15-Hz scenery reaches X=$1900 a little
    // later, so state 0 deliberately holds its expired timer at one until the
    // original fight anchor is reached.
    for(unsigned tick=0;tick<59u;++tick)
        logic.step_gate_20hz(rom,game,tick,&sounds);
    assert(boss.state()==0u && boss.raw[0x17]==1u);
    boss.set_x_fixed(0x1900u);
    logic.step_gate_20hz(rom,game,59u,&sounds);
    assert(boss.state()==1u && boss.raw[0x02]==0xffu);
    assert(boss.raw[0x18]==0x2du && boss.raw[0x17]==1u);

    // First fight tick: $8F42 creates the type-$23 blue bubble. Default
    // first-loop CA19=$02 gives interval $2A+$18 == $42.
    logic.step_gate_20hz(rom,game,60u,&sounds);
    assert(boss.raw[0x18]==0x2au && boss.raw[0x17]==0x42u);
    assert(boss.raw[0x21]==1u);
    auto bubble=std::find_if(game.enemies.begin(),game.enemies.end(),
        [](const auto& e){return e.type()==0x23u;});
    assert(bubble!=game.enemies.end());
    assert(bubble->state()==1u && bubble->x_fixed()==0x1900u &&
           bubble->y_fixed()==0x0a00u && bubble->raw[0x16]==5u);
    const auto vx=word(*bubble,13),vy=word(*bubble,11);
    assert(vx!=0 || vy!=0);
    const auto x0=bubble->x_fixed(),y0=bubble->y_fixed();
    for(unsigned frame=0;frame<3u;++frame) logic.move_60hz(game,frame);
    assert(std::int16_t(bubble->x_fixed()-x0)==vx);
    assert(std::int16_t(bubble->y_fixed()-y0)==vy);

    // $BD88/$BD92: bubbles reverse vertically outside rows 1..20 and reverse
    // X velocity at row $1D. Use a fresh object so the 60-Hz flight state is
    // irrelevant to this boundary check.
    bubble->set_y_fixed(0x0000u);bubble->set_x_fixed(0x1d00u);
    const auto old_vx=word(*bubble,13),old_vy=word(*bubble,11);
    logic.step_gate_20hz(rom,game,61u,&sounds);
    assert(word(*bubble,13)==-old_vx);
    assert(word(*bubble,11)==-old_vy);

    // Warp Machine damage is custom $8EF5: +02 is HP, equal damage leaves
    // zero HP alive, and only a following borrow enters the 40-tick death state.
    assert(sm::apply_stage0_damage(rom,boss,2u)==sm::Stage0DamageResult::Hit);
    assert(boss.raw[0x02]==0xfdu && boss.state()==1u);
    boss.raw[0x02]=1u;
    assert(sm::apply_stage0_damage(rom,boss,1u)==sm::Stage0DamageResult::Hit);
    assert(boss.raw[0x02]==0u && boss.state()==1u); // exact-equal is not fatal
    assert(sm::apply_stage0_damage(rom,boss,1u)==sm::Stage0DamageResult::Hit);
    assert(boss.state()==2u && boss.raw[0x17]==0x28u && boss.raw[0x15]==0x6fu);

    bubble->clear();
    sounds.clear();
    for(unsigned tick=62u;tick<102u;++tick)
        logic.step_gate_20hz(rom,game,tick,&sounds);
    assert(boss.state()==3u && boss.raw[0x17]==0x14u);
    assert(std::count(sounds.begin(),sounds.end(),sm::PlaySound::Stage7Break)==1);
    for(unsigned tick=102u;tick<122u;++tick)
        logic.step_gate_20hz(rom,game,tick,&sounds);
    assert(logic.stage_complete());

    // Full route: the boss naturally enters at $2000/$0A00, reaches the
    // $1900 gate before state 1, activates boss music, then follows the custom
    // equal-HP/borrow rule and advances to stage 8 after 40+20 object ticks.
    sm::PlaySession route(rom);route.reset(6u);
    sm::Entity64* live=nullptr;
    for(unsigned f=0;f<18000u && !live;++f) {
        route.step_60hz({});
        auto& state=const_cast<sm::GameState&>(route.state());
        const auto it=std::find_if(state.enemies.begin(),state.enemies.end(),
            [](auto& e){return e.type()==0x43u;});
        if(it!=state.enemies.end()) live=&*it;
    }
    assert(live && route.boss_music_active());
    for(unsigned f=0;f<600u && (!route.at_fight_gate() || live->state()!=1u);++f)
        route.step_60hz({});
    assert(route.at_fight_gate() && live->state()==1u && live->x_fixed()==0x1900u);
    for(unsigned f=0;f<30u;++f) route.step_60hz({}); // let at least one bubble exist
    live->raw[4]=0xffu;
    for(unsigned f=0;f<20u && live->raw[0x02]!=0u;++f) route.step_60hz({});
    assert(live->raw[0x02]==0u && live->state()==1u);
    live->raw[4]=1u;
    for(unsigned f=0;f<20u && live->state()==1u;++f) route.step_60hz({});
    assert(live->state()==2u);
    for(const auto& e:route.state().enemies) assert(e.type()!=0x23u);
    for(unsigned f=0;f<300u && route.stage_index()==6u;++f) route.step_60hz({});
    assert(route.stage_index()==7u);

    std::cout<<"Stage 7 boss PASS: Warp Machine custom HP, bouncing bubbles and Stage-8 handoff\n";
}
