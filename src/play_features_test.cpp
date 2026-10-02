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
    unsigned hits=0,kills=0,enemy_shots=0,pickup_frames=0;
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
        }
    }
    for(unsigned type:{0x10u,0x12u,0x15u,0x18u}) assert(seen[type]);
    assert(hits+kills>0 && kills>0);
    assert(enemy_shots>0); // pickup collection/drop mechanics are fixture-tested below
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
        <<hits<<" hits, "<<kills<<" kills, "<<enemy_shots<<" cannon shots and "<<pickup_frames<<" frames with pickups\n";
}
