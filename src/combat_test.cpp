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
    for(unsigned i=0;i<20;++i) combat.collect(rom,14,game,sounds);
    assert(combat.upgrades().power==16 && combat.upgrades().power_level()==2);
    combat.collect(rom,10,game,sounds);assert(combat.upgrades().wave);
    combat.reset();combat.collect(rom,10,game,sounds);
    sm::Entity64 blue;
    for(unsigned i=0;i<5;++i) combat.drop(rom,blue,0x500,0x800);
    assert(blue.raw[3]==12 && blue.raw[6]==8); // duplicate W -> blue capsule
    combat.collect(rom,10,game,sounds);
    combat.collect(rom,3,game,sounds);assert(combat.upgrades().wave && combat.upgrades().missile);
    combat.collect(rom,11,game,sounds);assert(combat.upgrades().missile_armed);
    combat.consume_missile();assert(!combat.upgrades().missile_armed);
    for(unsigned i=0;i<3;++i) combat.collect(rom,7,game,sounds);
    assert(combat.upgrades().options==2);
    for(unsigned i=0;i<6;++i) combat.collect(rom,2,game,sounds);
    assert(combat.upgrades().speed==4);
    // Exact original player-vs-type03 pickup geometry from $7606/$7622/$7662.
    // With player X=$0500, an item whose high X byte is $06 is still inside
    // the original extent; the previous hand-made center box rejected it.
    game={};combat.reset();sounds.clear();
    game.player.type()=1;game.player.set_x_fixed(0x0500);game.player.set_y_fixed(0x0800);
    auto& edge_pick=game.enemies[0];edge_pick.type()=3;edge_pick.state()=1;
    edge_pick.raw[3]=2;edge_pick.raw[0x13]=4;edge_pick.raw[0x14]=4;
    edge_pick.set_x_fixed(0x0600);edge_pick.set_y_fixed(0x0900);
    combat.step(rom,game,0,0,0,sounds);
    assert(!edge_pick.active() && combat.upgrades().speed==1);
    auto& miss_pick=game.enemies[1];miss_pick.type()=3;miss_pick.state()=1;
    miss_pick.raw[3]=2;miss_pick.raw[0x13]=4;miss_pick.raw[0x14]=4;
    miss_pick.set_x_fixed(0x0700);miss_pick.set_y_fixed(0x0900);
    combat.step(rom,game,1,0,0,sounds);
    assert(miss_pick.active());

    // Vehicle hatch $22: threshold opens frame +06 for six logic ticks and
    // then emits the original pair of type-$70 child actors before closing.
    game={};game.difficulty=5;sm::Stage0Enemies actors;
    auto& hatch=game.enemies[0];hatch.type()=0x22;hatch.state()=1;
    hatch.set_x_fixed(0x1b00);hatch.set_y_fixed(0x0a00);hatch.raw[0x20]=0;
    actors.step_15hz(rom,game,0,0);
    assert(hatch.state()==2 && hatch.raw[6]==1 && hatch.raw[0x18]==6);
    for(unsigned t=1;t<=6;++t) actors.step_15hz(rom,game,t,0);
    assert(hatch.state()==1 && hatch.raw[6]==0);
    unsigned rounds=0;for(const auto& e:game.enemies) rounds+=e.active()&&e.type()==0x70;
    assert(rounds==2);

    // Launcher $26: open, launch three type-$11 children at the ROM cadence,
    // close for eight ticks and return to state 1.
    game={};game.difficulty=5;actors={};game.player.set_y_fixed(0x0800);
    auto& launcher=game.enemies[0];launcher.type()=0x26;launcher.state()=1;
    launcher.set_x_fixed(0x1a00);launcher.set_y_fixed(0x0f00);
    launcher.raw[0x21]=3;
    actors.step_15hz(rom,game,0,0);
    assert(launcher.state()==2 && launcher.raw[6]==1 && launcher.raw[0x18]==6);
    for(unsigned t=1;t<=14;++t) actors.step_15hz(rom,game,t,0);
    assert(launcher.state()==3 && launcher.raw[0x22]==3);
    unsigned launched=0;for(const auto& e:game.enemies) launched+=e.active()&&e.type()==0x11;
    assert(launched==3);
    game={};
    // Large cannon HP is five. The ROM destroys on damage > HP, not >= HP.
    sm::SpawnRecord spawn;spawn.type=spawn.raw_type=0x1f;spawn.payload={8};
    assert(sm::instantiate_stage0_spawn(rom,spawn,game));
    auto& cannon=game.enemies[0];assert(cannon.raw[0x16]==5);
    for(unsigned i=0;i<5;++i) assert(sm::apply_stage0_damage(rom,cannon,1)==sm::Stage0DamageResult::Hit);
    assert(sm::apply_stage0_damage(rom,cannon,1)==sm::Stage0DamageResult::Destroyed);
    game={};game.difficulty=15;combat.reset();sounds.clear();
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

    // Early pre-vehicle flyer attacks are separate ROM projectile types. $15
    // emits the paired $61 rounds at pause-timer 3; after six logic ticks the
    // rounds stop separating and turn left. $18 periodically emits aimed $60.
    game={};combat.reset();sounds.clear();
    auto& hover=game.enemies[0];hover.type()=0x15;hover.state()=2;hover.raw[0x18]=3;
    hover.set_x_fixed(0x1900);hover.set_y_fixed(0x0600);
    combat.step(rom,game,0,0,0,sounds);
    unsigned split=0;for(const auto& b:combat.bullets()) if(b.type()==0x61) {
        ++split;assert(b.state()==0 && b.flags15()==0x31 && b.raw[0x17]==6);
        assert(b.x_fixed()==0x1900 && b.y_fixed()==0x0600);
    }
    assert(split==2 && !sounds.empty() && sounds.back()==sm::PlaySound::EnemyShot);
    hover.raw[0x18]=2; // the real enemy handler continues counting after the fire point
    for(unsigned frame=4;frame<=24;frame+=4) combat.step(rom,game,frame,0,0,sounds);
    for(const auto& b:combat.bullets()) if(b.type()==0x61) {
        assert(b.state()==1 && b.raw[0x17]==0);
        assert(std::int16_t(std::uint16_t(b.raw[13])|(std::uint16_t(b.raw[14])<<8))==-0x80);
    }
    game={};combat.reset();sounds.clear();
    game.player.set_x_fixed(0x0500);game.player.set_y_fixed(0x0800);
    auto& attacker=game.enemies[0];attacker.type()=0x18;attacker.state()=1;attacker.raw[0x17]=1;
    attacker.set_x_fixed(0x1900);attacker.set_y_fixed(0x0600);
    game.difficulty=15;attacker.raw[0x23]=1u;
    combat.step(rom,game,0,0,0,sounds);
    assert(attacker.raw[0x17]==1u);
    assert(std::none_of(combat.bullets().begin(),combat.bullets().end(),[](const auto& b){return b.active();}));
    game.loop_count=1u;
    combat.step(rom,game,0,0,0,sounds);
    auto it60=std::find_if(combat.bullets().begin(),combat.bullets().end(),[](const auto& b){return b.type()==0x60;});
    assert(it60!=combat.bullets().end() && it60->state()==0 && it60->flags15()==0x21 && it60->raw[0x17]==4);
    for(unsigned frame=4;frame<=16;frame+=4) combat.step(rom,game,frame,0,0,sounds);
    it60=std::find_if(combat.bullets().begin(),combat.bullets().end(),[](const auto& b){return b.type()==0x60;});
    assert(it60!=combat.bullets().end() && it60->state()==1 && it60->flags15()==0x31 && it60->raw[0x17]==0);

    // Blue clears vulnerable enemies and their bullets but leaves the chassis.
    auto& chassis=game.enemies[4];chassis.type()=0x24;chassis.raw[0x14]=5;
    combat.clear_vulnerable(rom,game);combat.blast_bosses(rom,game);
    for(unsigned i=0;i<4;++i) assert(!game.enemies[i].active() || game.enemies[i].type()!=0x20);
    assert(chassis.active());for(auto& b:combat.bullets()) assert(!b.active());
    combat.reset();assert(combat.upgrades().power==0 && combat.upgrades().options==0);

    // Native tile-only $26 hatch: a primary shot placed on the visible body
    // must overlap it. The ROM sprite collision frame 0 is 17px too low for
    // the native pixel-overlay and previously made the visible hatch immune.
    {
        sm::Entity64 hatch26{},shot26{}; hatch26.type()=0x26; hatch26.raw[5]=0; hatch26.raw[6]=0;
        const auto meta26=sm::decode_spawn_type_metadata(rom,0x26);
        std::copy(meta26.bytes.begin(),meta26.bytes.end(),hatch26.raw.begin()+0x13);
        hatch26.set_x_fixed(0x1000); hatch26.set_y_fixed(0x0d00);
        shot26.type()=4; shot26.raw[5]=12; shot26.raw[6]=1;
        shot26.set_x_fixed(0x1000); shot26.set_y_fixed(0x0d00);
        assert(sm::stage0_sprite_overlap(rom,shot26,hatch26));
    }

    std::cout<<"Combat PASS: pickup icons/cycle/effects, cannon HP, four-turret bonus, firing and blue clear\n";
}
