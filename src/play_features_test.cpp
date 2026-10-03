#include "play_session.hpp"
#ifdef NDEBUG
#undef NDEBUG
#endif
#include <cassert>
#include <algorithm>
#include <iostream>
#include <stdexcept>

int main(int argc,char** argv) {
    if(argc!=2) return 2;
    sm::Rom rom(argv[1]);sm::PlaySession session(rom);
    unsigned total=0;
    while(!session.at_fight_gate() && session.frame()<60000) session.step_60hz({});
    assert(session.at_fight_gate());total=session.frame();
    // Live terminal-gate regression using exactly the interactive jump/test
    // loadout: max power + W + two options + M. The tower must become
    // vulnerable at the ROM entrance boundary and those real projectiles must lower
    // HP; a synthetic single-shot fixture is not sufficient for this path.
    session.set_max_test_loadout();
    assert(session.upgrades().power==16u && session.upgrades().speed==4u &&
           session.upgrades().options==2u && session.upgrades().wave &&
           session.upgrades().missile && !session.upgrades().missile_armed);
    for(unsigned i=0;i<400u;++i) {
        sm::PlayerInput input{}; input.fire=true; input.fire_pressed=(i%5u)==0u;
        session.step_60hz(input);
    }
    auto tower=std::find_if(session.state().enemies.begin(),session.state().enemies.end(),
        [](const auto& e){return e.type()==0x64u;});
    assert(tower==session.state().enemies.end() ||
           ((tower->raw[0x14]&0x80u)!=0u && tower->raw[0x16]<0x3cu));
    const auto death=rom.bank(4);
    auto death_sound_id=[&](unsigned type){return death[0x1e74u+type*3u+1u];};
    assert(death_sound_id(0x20u)==0x11u);
    assert(death_sound_id(0x22u)==0x13u && death_sound_id(0x26u)==0x13u &&
           death_sound_id(0x55u)==0x13u);
    assert(death_sound_id(0x1fu)==0x14u && death_sound_id(0x64u)==0x4du);
    // The large vertical tower is type $56, not the terminal $64 gate. Its
    // visible upper section is a composed tile actor; max-loadout shots must
    // damage those exact tile cells during the natural late-stage route.
    sm::PlaySession vertical(rom);
    while(vertical.frame()<7200u) vertical.step_60hz({});
    vertical.set_max_test_loadout();
    unsigned tower56_start=0; bool saw56=false,damaged56=false;
    for(unsigned i=0;i<500u;++i) {
        sm::PlayerInput input{};input.fire=true;input.fire_pressed=(i%8u)==0u;
        vertical.step_60hz(input);
        auto t=std::find_if(vertical.state().enemies.begin(),vertical.state().enemies.end(),
            [](const auto& e){return e.type()==0x56u;});
        if(t!=vertical.state().enemies.end()) {
            if(!saw56) {saw56=true;tower56_start=t->raw[0x16];}
            damaged56|=t->raw[0x16]<tower56_start;
        } else if(saw56) {damaged56=true;break;}
    }
    assert(saw56 && damaged56);
    for(unsigned digit=0;digit<10;++digit) {
        session.seek_decile(digit);
        assert(session.frame()==total*digit/10);
        assert(session.sound_events().empty());
        sm::PlaySession replay(rom);
        for(unsigned i=0;i<session.frame();++i) replay.step_60hz({});
        assert(session.state().player.raw==replay.state().player.raw);
        for(unsigned i=0;i<20;++i)
            assert(session.state().enemies[i].raw==replay.state().enemies[i].raw);
        assert(session.render()==replay.render());
    }
    // Wide 60-Hz presentation regression around shortcut 7 / mode-2 vehicle
    // continuation. The world must keep moving left by exactly one 512-space
    // sample each video frame, including across the 15-Hz coarse-tick boundary.
    session.seek_decile(7);
    auto prev_wide=session.render_wide();
    for(unsigned n=0;n<4;++n) {
        session.step_60hz({});
        const auto next_wide=session.render_wide();
        int best_dx=99; unsigned best_diff=~0u;
        for(int dx=-4;dx<=4;++dx) {
            unsigned diff=0;
            for(unsigned y=130;y<205;++y) for(int x=20;x<492;++x) {
                const int xx=x+dx;if(xx<0 || xx>=512) continue;
                diff+=prev_wide[y*512u+unsigned(x)]!=next_wide[y*512u+unsigned(xx)];
            }
            if(diff<best_diff) {best_diff=diff;best_dx=dx;}
        }
        assert(best_dx==-1);
        prev_wide=next_wide;
    }
    // Post-upward mode-0 must return to the real streamed D988/raster scene,
    // not the earlier vehicle-only static native fallback. Across four phases,
    // one is the exact scenery endpoint and must match ordinary render 2x-wide.
    // The last two ground rows and stars now have independent smooth phases;
    // check their displacement separately rather than snapped raster pixels.
    // Stars are checked separately in
    // feedback-test rather than requiring the old R18-snapped star pixels.
    session.reset();
    const unsigned late_target=total*99u/100u;
    while(session.frame()<late_target) session.step_60hz({});
    unsigned best_late_mismatch=~0u;
    for(unsigned n=0;n<4;++n) {
        const auto normal=session.render(),wide=session.render_wide();
        unsigned mismatch=0;
        for(unsigned y=28;y<196;++y) for(unsigned x=0;x<256;++x) {
            constexpr auto star=0xff9292b6u;
            if(normal[y*256u+x]==star || wide[y*512u+x*2u]==star || wide[y*512u+x*2u+1u]==star) continue;
            mismatch+=(wide[y*512u+x*2u]!=normal[y*256u+x]) ||
                      (wide[y*512u+x*2u+1u]!=normal[y*256u+x]);
        }
        best_late_mismatch=std::min(best_late_mismatch,mismatch);
        session.step_60hz({});
    }
    assert(best_late_mismatch<64u);

    session.seek_decile(0);assert(session.frame()==0);
    bool rejected=false;
    try {session.seek_decile(10);} catch(const std::invalid_argument&) {rejected=true;}
    assert(rejected);
    // Sprite origin is D2-R23; an upward ship reaches the initial y=20 area.
    for(unsigned i=0;i<100;++i) session.step_60hz({true});
    assert(session.state().player.y_fixed()==0);
    sm::PlaySession stationary(rom);
    for(unsigned i=0;i<100;++i) stationary.step_60hz({});
    const auto top=session.render(),middle=stationary.render();
    unsigned changed=0;
    for(unsigned y=20;y<40;++y) for(unsigned x=32;x<80;++x)
        changed+=top[y*256+x]!=middle[y*256+x];
    assert(changed>20);
    session.reset();
    session.step_60hz({false,false,false,false,false,true});
    assert(session.sound_events().size()==1 && session.sound_events()[0]==sm::PlaySound::Shot);
    session.step_60hz({});assert(session.sound_events().empty());
    // All four original opening-flight types must appear during natural play.
    std::array<bool,256> seen{};
    unsigned hits=0,kills=0,enemy_shots=0,pickup_frames=0,large_cannon_sfx=0;
    for(unsigned i=0;i<total;++i) {
        sm::PlayerInput input;
        input.down=(i%720)<360;input.up=!input.down;
        input.fire_pressed=(i%8)==0;
        session.step_60hz(input);
        for(const auto& e:session.state().enemies) seen[e.type()]=true;
        pickup_frames+=std::any_of(session.state().enemies.begin(),session.state().enemies.end(),[](auto& e){return e.type()==3;});
        for(auto sound:session.sound_events()) {
            enemy_shots+=sound==sm::PlaySound::EnemyShot;
            hits+=sound==sm::PlaySound::Hit;kills+=sound==sm::PlaySound::Explosion;
            large_cannon_sfx+=sound==sm::PlaySound::LargeCannonExplosion;
        }
    }
    for(unsigned type:{0x10u,0x12u,0x15u,0x18u}) assert(seen[type]);
    assert(hits+kills>0 && kills>0);
    assert(enemy_shots>0 && large_cannon_sfx>0); // includes ROM death SFX $14 for type $1F
    // Place real pickup records at the ship to test collection through the
    // session, rather than granting upgrades through a separate debug path.
    session.reset();
    auto& fixture=const_cast<sm::GameState&>(session.state());
    auto pickup=[&](unsigned kind) {
        auto& item=fixture.enemies[19];item.clear();item.type()=3;item.flags15()=0x56;
        item.raw[3]=std::uint8_t(kind);item.raw[6]=rom.bank(4)[0x1049+kind];
        item.raw[0x13]=4;item.raw[0x14]=4; // original type-$03 collision extents
        item.set_x_fixed(fixture.player.x_fixed());
        item.set_y_fixed(fixture.player.y_fixed());
        session.step_60hz({});assert(!item.active());
    };
    pickup(10);assert(session.upgrades().wave);
    session.step_60hz({false,false,false,false,false,true});
    for(const auto& shot:session.shots()) assert(shot.type()==4 && shot.raw[5]==15 && shot.raw[6]==2);
    for(unsigned i=0;i<100;++i) session.step_60hz({});
    pickup(7);assert(session.upgrades().options==1);
    assert(std::find(session.sound_events().begin(),session.sound_events().end(),sm::PlaySound::Pickup)!=session.sound_events().end());
    session.step_60hz({});
    assert(session.options()[0].active() && session.options()[0].type()==2 && session.options()[0].state()==3);
    assert(session.options()[0].x_fixed()==std::uint16_t(session.state().player.x_fixed()-0x80));
    assert(session.options()[0].y_fixed()==std::uint16_t(session.state().player.y_fixed()-0x1a0));
    session.step_60hz({false,false,false,false,false,false,true}); // original C907 bit5 / M edge
    assert(session.options()[0].x_fixed()==session.state().player.x_fixed());
    assert(std::find(session.sound_events().begin(),session.sound_events().end(),sm::PlaySound::OptionMode)!=session.sound_events().end());
    session.step_60hz({});
    session.step_60hz({false,false,false,false,false,true,false});
    auto oit=std::find_if(session.option_shots().begin(),session.option_shots().end(),[](const auto& s){return s.active();});
    assert(oit!=session.option_shots().end());
    assert(oit->raw[5]==1);
    assert(std::int16_t(unsigned(oit->raw[11])|(unsigned(oit->raw[12])<<8))==std::int16_t(0xfe00));
    assert(std::int16_t(unsigned(oit->raw[13])|(unsigned(oit->raw[14])<<8))==0);
    for(unsigned i=0;i<100;++i) session.step_60hz({});
    session.reset();
    pickup(14);assert(session.upgrades().power==1);
    // First red level uses the original upgraded primary frame/damage. Also
    // compare against an otherwise byte-identical no-fire session so an
    // invisible-but-active projectile cannot regress unnoticed.
    sm::PlaySession red_base(rom);
    auto& rb=const_cast<sm::GameState&>(red_base.state());
    auto& ri=rb.enemies[19];ri.clear();ri.type()=3;ri.flags15()=0x56;ri.raw[3]=14;
    ri.raw[6]=rom.bank(4)[0x1049+14];ri.raw[0x13]=4;ri.raw[0x14]=4;
    ri.set_x_fixed(rb.player.x_fixed());ri.set_y_fixed(rb.player.y_fixed());red_base.step_60hz({});
    session.step_60hz({false,false,false,false,false,true});
    red_base.step_60hz({});
    assert(session.shots()[0].active() && session.shots()[0].raw[5]==13 && session.shots()[0].raw[6]==2);
    const auto red_frame=session.render(), red_idle=red_base.render();
    unsigned red_pixels=0;for(unsigned i=0;i<red_frame.size();++i) red_pixels+=red_frame[i]!=red_idle[i];
    assert(red_pixels>0);
    for(unsigned i=0;i<100;++i) session.step_60hz({});
    // M ($03) is the persistent CD20 ground-missile weapon, independent of W.
    pickup(3);assert(session.upgrades().missile);
    session.step_60hz({false,false,false,false,false,true});
    assert(session.missile_shot().active() && session.missile_shot().type()==7);
    for(unsigned i=0;i<100;++i) session.step_60hz({});
    pickup(11);assert(session.upgrades().missile_armed);
    session.step_60hz({false,false,false,false,false,true});
    assert(!session.upgrades().missile_armed);
    assert(session.shots()[0].type()==8 && session.shots()[1].type()==8);
    assert(std::find(session.sound_events().begin(),session.sound_events().end(),sm::PlaySound::MissileLaunch)!=session.sound_events().end());
    const auto missile_x=session.shots()[0].x_fixed();
    for(unsigned i=0;i<8;++i) session.step_60hz({});
    assert(session.shots()[0].active() && session.shots()[0].x_fixed()!=missile_x);
    session.reset();assert(session.upgrades().options==0 && session.upgrades().power==0);
    std::cout<<"Play features PASS: "<<total<<" route frames, 10 deterministic jumps, top movement, four flight types, "
        <<hits<<" hits, "<<kills<<" kills, "<<enemy_shots<<" aimed enemy shots and "<<pickup_frames<<" frames with pickups\n";
}
