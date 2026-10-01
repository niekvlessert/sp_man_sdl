#include "stage0_combat.hpp"
#include "stage0_enemies.hpp"
#ifdef NDEBUG
#undef NDEBUG
#endif
#include <cassert>
#include <iostream>

int main(int argc,char** argv) {
    if(argc!=2) return 2;
    sm::Rom rom(argv[1]);sm::Stage0Combat combat;sm::GameState game;
    std::vector<sm::PlaySound> sounds;
    // ROM $7042 cycle and $7049 icon indices, including the wrap to speed.
    for(unsigned kind:{2u,14u,3u,7u,10u,11u,2u,14u}) {
        sm::Entity64 pickup;combat.drop(rom,pickup,0x500,0x800);
        assert(pickup.type()==3 && pickup.raw[3]==kind);
        assert(pickup.raw[6]==rom.bank(4)[0x1049+kind]);
        const auto icon=sm::decode_stage0_tile_visuals(rom,pickup);
        assert(icon.size()==1 && icon[0].cols==2 && icon[0].rows==2);
    }
    for(unsigned i=0;i<20;++i) combat.collect(14,game,sounds);
    assert(combat.upgrades().power==16 && combat.upgrades().power_level()==2);
    combat.collect(10,game,sounds);assert(combat.upgrades().wave);
    combat.reset();combat.collect(10,game,sounds);
    sm::Entity64 blue;
    for(unsigned i=0;i<5;++i) combat.drop(rom,blue,0x500,0x800);
    assert(blue.raw[3]==12 && blue.raw[6]==8); // duplicate W -> blue capsule
    combat.collect(10,game,sounds);
    combat.collect(3,game,sounds);assert(!combat.upgrades().wave);
    combat.collect(11,game,sounds);assert(combat.upgrades().mega_bomb);
    combat.consume_mega_bomb();assert(!combat.upgrades().mega_bomb);
    for(unsigned i=0;i<3;++i) combat.collect(7,game,sounds);
    assert(combat.upgrades().options==2);
    for(unsigned i=0;i<6;++i) combat.collect(2,game,sounds);
    assert(combat.upgrades().speed==4);
    // Large cannon HP is five. The ROM destroys on damage > HP, not >= HP.
    sm::SpawnRecord spawn;spawn.type=spawn.raw_type=0x1f;spawn.payload={8};
    assert(sm::instantiate_stage0_spawn(rom,spawn,game));
    auto& cannon=game.enemies[0];assert(cannon.raw[0x16]==5);
    for(unsigned i=0;i<5;++i) assert(sm::apply_stage0_damage(rom,cannon,1)==sm::Stage0DamageResult::Hit);
    assert(sm::apply_stage0_damage(rom,cannon,1)==sm::Stage0DamageResult::Destroyed);
    game={};combat.reset();sounds.clear();
    spawn.type=spawn.raw_type=0x20;spawn.payload={11};
    for(unsigned i=0;i<4;++i) {
        assert(sm::instantiate_stage0_spawn(rom,spawn,game));
        auto& e=game.enemies[i];combat.spawned(e);
        assert(bool(e.raw[0x3d])==(i==3));
        e.set_x_fixed(0x1400);e.set_y_fixed(0x800);
    }
    game.player.set_x_fixed(0x500);game.player.set_y_fixed(0x400);
    for(unsigned frame=1;frame<256;++frame) combat.step(rom,game,frame,0,0,sounds);
    assert(!sounds.empty());
    bool projectile=false;for(auto& b:combat.bullets()) projectile|=b.active();
    assert(projectile);
    // Blue clears vulnerable enemies and their bullets but leaves the chassis.
    auto& chassis=game.enemies[4];chassis.type()=0x24;chassis.raw[0x14]=5;
    combat.collect(13,game,sounds);
    for(unsigned i=0;i<4;++i) assert(!game.enemies[i].active());
    assert(chassis.active());for(auto& b:combat.bullets()) assert(!b.active());
    combat.reset();assert(combat.upgrades().power==0 && combat.upgrades().options==0);
    std::cout<<"Combat PASS: pickup icons/cycle/effects, cannon HP, four-turret bonus, firing and blue clear\n";
}
