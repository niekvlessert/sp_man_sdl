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

    // Stage 6 boss: type $7B, bank06 $B513. The script record is the final
    // ordinary boss record immediately before the two $7C scene controllers.
    const auto s6=sm::StageSpawnStream::decode_stage(rom,5u);
    const auto& r6=find_type(s6,0x7bu);
    assert(r6.trigger==0x5029u && r6.control==5u);
    assert(r6.payload.size()==1u && r6.payload[0]==0xffu);
    const auto meta=sm::decode_spawn_type_metadata(rom,0x7bu);
    assert((meta.bytes==std::array<std::uint8_t,4>{0x0cu,0x8cu,0x14u,0xa0u}));

    sm::GameState game;
    sm::Stage0Enemies logic;
    std::vector<sm::PlaySound> sounds;
    assert(logic.spawn(rom,r6,game,1u));
    auto& boss=game.enemies[0];
    assert(boss.type()==0x7bu && boss.state()==0u);
    assert(boss.x_fixed()==0x0700u && boss.y_fixed()==0x1400u);
    assert(boss.raw[0x16]==0xa0u && (boss.flags15()&1u));

    logic.step_15hz(rom,game,0u,0u,false,&sounds);
    assert(boss.state()==1u && boss.raw[0x18]==0x1eu);
    for(unsigned tick=1;tick<=30u;++tick) logic.step_15hz(rom,game,tick,0u,false,&sounds);
    assert(boss.state()==2u && boss.raw[0x17]==5u && boss.raw[0x22]==0u);

    for(unsigned tick=31;tick<=35u;++tick) logic.step_15hz(rom,game,tick,0u,false,&sounds);
    assert(boss.state()==2u && boss.raw[0x22]==1u && boss.raw[0x06]==1u);
    assert(std::count(sounds.begin(),sounds.end(),sm::PlaySound::Stage6Open)==1);
    for(unsigned tick=36;tick<=40u;++tick) logic.step_15hz(rom,game,tick,0u,false,&sounds);
    assert(boss.state()==3u && boss.raw[0x22]==2u && boss.raw[0x17]==5u);

    // $B638 permits only one active type-$0D beam at a time. It spawns at
    // boss (+8,+2), with the exact $FF80 Y vector and ROM SFX $17.
    for(unsigned tick=41;tick<=45u;++tick) logic.step_15hz(rom,game,tick,0u,false,&sounds);
    assert(boss.raw[0x21]==1u && boss.raw[0x17]==0x14u);
    auto beam=std::find_if(game.enemies.begin(),game.enemies.end(),
        [](const auto& e){return e.type()==0x0du;});
    assert(beam!=game.enemies.end());
    assert(beam->x_fixed()==0x0f00u && beam->y_fixed()==0x1600u);
    assert(std::int16_t(std::uint16_t(beam->raw[0x0b]) |
                        (std::uint16_t(beam->raw[0x0c])<<8))==-0x80);
    assert((beam->flags15()&1u)!=0u);
    assert(std::count(sounds.begin(),sounds.end(),sm::PlaySound::HatchShot)==1);

    // Native 60-Hz splitting of the beam's $FF80 velocity: four video frames
    // equal one original -$80 object step.
    const auto y0=beam->y_fixed();
    for(unsigned f=0;f<4u;++f) logic.move_60hz(game,f);
    assert(std::int16_t(beam->y_fixed()-y0)==-0x80);

    // Continue the controller without letting the old beam block later launch
    // points. Four 20-tick state-3 phases open into state 4, then state 5/6
    // closes the boss and returns to the 30-tick wait.
    beam->clear();
    unsigned tick=46u;
    while(boss.state()==3u && tick<140u) {
        logic.step_15hz(rom,game,tick++,0u,false,&sounds);
        for(auto& e:game.enemies) if(e.type()==0x0du) e.clear();
    }
    assert(boss.state()==4u && boss.raw[0x21]==4u);
    while(boss.state()!=1u && tick<220u) {
        logic.step_15hz(rom,game,tick++,0u,false,&sounds);
        for(auto& e:game.enemies) if(e.type()==0x0du) e.clear();
    }
    assert(boss.state()==1u && boss.raw[0x18]==0x1eu &&
           boss.raw[0x21]==0u && boss.raw[0x22]==0u);
    assert(std::count(sounds.begin(),sounds.end(),sm::PlaySound::Stage6Close)==1);

    // Full native route: Stage 6 must naturally spawn the boss before the
    // final scenery gate, switch to boss music, destroy through $6A, clean its
    // active beam and advance to Stage 7.
    sm::PlaySession route(rom);route.reset(5u);
    sm::Entity64* live=nullptr;
    for(unsigned f=0;f<26000u && !live;++f) {
        route.step_60hz({});
        auto& state=const_cast<sm::GameState&>(route.state());
        const auto it=std::find_if(state.enemies.begin(),state.enemies.end(),
            [](auto& e){return e.type()==0x7bu;});
        if(it!=state.enemies.end()) live=&*it;
    }
    assert(live && route.boss_music_active());
    for(unsigned f=0;f<600u && !route.at_fight_gate();++f) route.step_60hz({});
    assert(route.at_fight_gate());

    // Force one live boss beam so the fatal cleanup path is covered.
    {
        auto& state=const_cast<sm::GameState&>(route.state());
        auto* b=state.allocate_enemy();assert(b);
        b->type()=0x0du;b->flags15()=1u;b->state()=0u;
    }
    live->raw[4]=0xffu;
    for(unsigned f=0;f<40u && live->type()!=0x6au;++f) route.step_60hz({});
    assert(live->type()==0x6au);
    for(const auto& e:route.state().enemies) assert(e.type()!=0x0du);
    for(unsigned f=0;f<500u && route.stage_index()==5u;++f) route.step_60hz({});
    assert(route.stage_index()==6u);

    std::cout<<"Stage 6 boss PASS: $7B cycle, $0D beam, damage cleanup and Stage-7 handoff\n";
}
