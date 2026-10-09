#include "rom.hpp"
#include "level.hpp"
#define private public
#include "stage0_combat.hpp"
#include "play_session.hpp"
#undef private
#include "debug_mode.hpp"
#include "play_timeline.hpp"
#ifdef NDEBUG
#undef NDEBUG
#endif
#include <cassert>
#include <iostream>
int main(int argc,char**argv) {
    assert(argc==2);sm::Rom rom(argv[1]);sm::DebugMode debug;
    assert(!debug.enabled && !debug.overlay && !debug.invulnerable);
    for(char c:std::string("debug")) debug.type(c,false);
    assert(!debug.enabled);
    for(char c:std::string("debXdebug")) debug.type(c,true);
    assert(debug.enabled && debug.overlay && debug.invulnerable);
    debug.overlay=false;assert(debug.enabled);
    debug.disable();assert(!debug.enabled && !debug.invulnerable);
    debug.type('d',true);debug.type('e',true);debug.type('b',false);
    debug.type('u',true);debug.type('g',true);assert(!debug.enabled);
    sm::PlaySession game(rom);assert(!game.invulnerable() && game.lives()==3);
    game.respawn_protection_=0;
    auto& wreck=game.game_.enemies[0];wreck.clear();wreck.type()=0x6b;wreck.state()=1;
    wreck.flags15()=0x46;wreck.raw[6]=9;wreck.raw[0x13]=8;wreck.raw[0x14]=0x88;
    wreck.set_x_fixed(game.game_.player.x_fixed());wreck.set_y_fixed(game.game_.player.y_fixed());
    game.step_60hz({});assert(game.lives()==3 && !game.player_death_.active());
    wreck.clear();
    auto contact=[&] {
        game.respawn_protection_=0;
        auto& e=game.game_.enemies[0];e.clear();e.type()=0x10;e.state()=1;e.flags15()=0xb0;e.raw[0x14]=0x83;e.raw[0x13]=3;
        e.set_x_fixed(game.game_.player.x_fixed());e.set_y_fixed(game.game_.player.y_fixed());
    };
    game.set_test_loadout(true);contact();game.step_60hz({});
    assert(game.lives()==2 && game.upgrades().power==0 && game.player_death_.active());
    assert(game.state().player.raw[5]==6u);
    assert(std::find(game.sound_events().begin(),game.sound_events().end(),sm::PlaySound::PlayerDeath)!=game.sound_events().end());
    auto finish_death=[&] {
        const auto x=game.state().player.x_fixed(),y=game.state().player.y_fixed();
        for(unsigned f=0;f<120u;++f) {
            game.step_60hz({false,false,false,true,true,true});
            assert(game.state().player.x_fixed()==x && game.state().player.y_fixed()==y);
            assert(std::none_of(game.shots().begin(),game.shots().end(),[](const auto& shot){return shot.active();}));
            if(f<119u) assert(game.player_death_.active());
        }
        assert(!game.player_death_.active() && !game.state().player.active());
        if(game.lives()) {
            game.step_60hz({});assert(game.respawn_protection_>0 && game.state().player.active());
        }
    };
    finish_death();
    game.game_.enemies[0].set_x_fixed(game.game_.player.x_fixed());
    game.game_.enemies[0].set_y_fixed(game.game_.player.y_fixed());
    game.step_60hz({});assert(game.lives()==2); // respawn protection
    game.set_invulnerable(true);contact();game.step_60hz({});assert(game.lives()==2);
    game.set_invulnerable(false);contact();game.step_60hz({});assert(game.lives()==1);
    finish_death();
    contact();game.step_60hz({});assert(!game.game_over());
    finish_death();assert(game.game_over() && !game.state().player.active());
    game.reset();assert(game.lives()==3 && !game.invulnerable());
    auto& bullet=game.combat_.bullets_[0];bullet.type()=0x60;bullet.state()=1;bullet.flags15()=0x31;
    bullet.raw[0x13]=bullet.raw[0x14]=4;
    bullet.set_x_fixed(std::uint16_t(game.game_.player.x_fixed()+4*32));
    bullet.set_y_fixed(std::uint16_t(game.game_.player.y_fixed()+7*32));
    game.respawn_protection_=0;game.step_60hz({});assert(game.lives()==2);
    game.reset(2u);game.respawn_protection_=0;
    const auto solid=std::find_if(game.stage_terrain_properties_.begin(),game.stage_terrain_properties_.end(),
        [](auto property){return (property&0x01u)!=0;});
    assert(solid!=game.stage_terrain_properties_.end());
    // Place solid scenery in the actual queried viewport; object tile writes
    // use the integrated camera domain, while D988 is built before integration.
    game.background_.put(int(game.background_.ring_col())+6,
        int(game.background_.ring_row())+9,std::uint8_t(solid-game.stage_terrain_properties_.begin()));
    game.step_60hz({});assert(game.lives()==2); // solid scenery
    sm::PlayTimeline timeline(rom);assert(!timeline.session().invulnerable());
    timeline.set_invulnerable(true);timeline.reset(2);assert(timeline.session().invulnerable());
    timeline.jump(2);timeline.scrub(-100);assert(timeline.session().invulnerable());
    timeline.set_invulnerable(false);timeline.reset();assert(!timeline.session().invulnerable());
    std::cout<<"Debug mode PASS: hidden activation, default vulnerability, contacts, protection, game over and reset/rewind settings\n";
}
