#include "play_session.hpp"
#ifdef NDEBUG
#undef NDEBUG
#endif
#include <algorithm>
#include <array>
#include <cassert>
#include <iostream>

int main(int argc,char** argv) {
    if(argc!=2) return 2;
    sm::Rom rom(argv[1]);
    // Independent OpenMSX E000-E7FF captures, unmodified ROM, stage index 1.
    // Hash the complete canonical ring, including cells outside the viewport.
    struct Reference { unsigned source,x,y,mode; std::uint32_t hash; };
    constexpr std::array<Reference,9> references{{
        {0xa4a7u,370u,0u,0u,0x71000241u},
        {0xa577u,1264u,0u,2u,0x8619b291u},
        {0xa5b3u,1548u,12u,1u,0x41628bfbu},
        {0xa5feu,1706u,170u,1u,0x7656cbd3u},
        {0xa671u,1952u,384u,0u,0x60f9db02u},
        {0xa79du,3448u,393u,3u,0xfd32e46au},
        {0xa7c5u,3448u,544u,3u,0x89414f8au},
        {0xa836u,3470u,960u,0u,0xe2ac18a3u},
        {0xa8e9u,4400u,960u,0u,0xf0b08e33u},
    }};
    sm::Stage0BackgroundStream background(rom);background.reset_stage(1);
    unsigned checked=0,ticks=0;
    while(!background.gated() && ticks<15000u) {
        for(const auto& r:references) {
            if(background.source_address()!=r.source || background.world_x()!=r.x ||
               background.world_y()!=int(r.y) || background.mode()!=r.mode) continue;
            std::uint32_t hash=2166136261u;
            for(unsigned y=0;y<32u;++y) for(unsigned x=0;x<64u;++x)
                hash=(hash^background.ring_tile(x,y))*16777619u;
            assert(hash==r.hash);++checked;
        }
        assert(background.source_address()<=0xa94au);
        background.step_15hz();++ticks;
    }
    assert(checked==references.size());
    assert(background.gated() && background.source_address()==0xa94au);
    assert(background.trigger_cursor()==0x6000u);
    assert(background.x_velocity_fp()==0 && background.y_velocity_fp()==0);

    // A real shot through the open stage-2 entrance must reach the right edge.
    sm::PlaySession session(rom);session.reset(1);
    session.step_60hz({false,false,false,false,true,true});
    unsigned lifespan=0;std::uint16_t last_x=0;
    while(lifespan<100u && session.shots()[0].active()) {
        last_x=session.shots()[0].x_fixed();++lifespan;session.step_60hz({});
    }
    assert(lifespan>=45u && lifespan<65u && last_x>=0x1f00u);

    // Use actual stage records and metadata, including ceiling orientation.
    const auto stream=sm::StageSpawnStream::decode_stage(rom,1);
    unsigned turrets=0;bool floor=false,ceiling=false;
    sm::Stage0Combat combat;
    for(const auto& record:stream.records()) {
        if(record.type!=0x29u || record.trigger_flag() || record.type_flag()) continue;
        sm::GameState game;
        assert(sm::instantiate_stage0_spawn(rom,record,game,1));
        auto& turret=game.enemies[0];
        const auto meta=sm::decode_spawn_type_metadata(rom,0x29u);
        assert(turret.raw[0x16]==meta.bytes[3]);
        assert(turret.raw[6]==((record.payload[0]&128u)?4u:0u));
        ceiling|=turret.raw[0x20]!=0;floor|=turret.raw[0x20]==0;
        assert(!sm::decode_stage0_tile_visuals(rom,turret).empty());
        combat.spawned(turret);++turrets;
        assert(bool(turret.raw[0x3d])==(turrets%4u==0u));
        // Z80 kills on subtraction carry: HP=1 needs two one-damage hits.
        assert(sm::apply_stage0_damage(rom,turret,meta.bytes[3])==sm::Stage0DamageResult::Hit);
        assert(sm::apply_stage0_damage(rom,turret,1u)==sm::Stage0DamageResult::Destroyed);
    }
    assert(turrets==63u && floor && ceiling);
    // Exercise the restored attack through the real combat service, on both
    // sides of the ceiling/floor mounting, rather than calling a shot helper.
    for(unsigned upside_down=0;upside_down<2u;++upside_down) {
        sm::GameState game;game.difficulty=15u;
        sm::SpawnRecord record;record.type=record.raw_type=0x29u;
        record.payload={std::uint8_t(13u|(upside_down?128u:0u))};
        assert(sm::instantiate_stage0_spawn(rom,record,game,1));
        game.enemies[0].set_x_fixed(0x1000u);
        game.player.set_x_fixed(0x0800u);
        game.player.set_y_fixed(upside_down?0x1100u:0x0900u);
        sm::Stage0Combat attack;std::vector<sm::PlaySound> sounds;
        bool fired=false;
        for(unsigned f=0;f<512u;++f) {
            attack.step(rom,game,f,0,0,sounds);
            fired|=std::any_of(attack.bullets().begin(),attack.bullets().end(),
                              [](const auto& shot){return shot.active();});
        }
        assert(fired);
        assert(std::find(sounds.begin(),sounds.end(),sm::PlaySound::EnemyShot)!=sounds.end());
    }
    std::cout<<"Stage 2: nine original ROM tile rings, route boundary, shot lifetime and turrets PASS\n";
}
