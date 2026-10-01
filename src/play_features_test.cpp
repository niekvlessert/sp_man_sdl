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
    assert(enemy_shots>0 && pickup_frames>0);
    // Place real pickup records at the ship to test collection through the
    // session, rather than granting upgrades through a separate debug path.
    session.reset();
    auto& fixture=const_cast<sm::GameState&>(session.state());
    auto pickup=[&](unsigned kind) {
        auto& item=fixture.enemies[19];item.clear();item.type()=3;item.flags15()=0x56;
        item.raw[3]=std::uint8_t(kind);item.raw[6]=rom.bank(4)[0x1049+kind];
        item.set_x_fixed(std::uint16_t(fixture.player.x_fixed()-8*32));
        item.set_y_fixed(std::uint16_t(fixture.player.y_fixed()-8*32));
        session.step_60hz({});assert(!item.active());
    };
    pickup(10);assert(session.upgrades().wave);
    session.step_60hz({false,false,false,false,false,true});
    for(const auto& shot:session.shots()) assert(shot.type()==4 && shot.raw[5]==15 && shot.raw[6]==2);
    for(unsigned i=0;i<100;++i) session.step_60hz({});
    pickup(7);assert(session.upgrades().options==1);
    pickup(14);assert(session.upgrades().power==1);
    pickup(11);assert(session.upgrades().mega_bomb);
    session.step_60hz({false,false,false,false,false,true});
    assert(!session.upgrades().mega_bomb);
    assert(session.shots()[0].type()==8 && session.shots()[1].type()==8);
    for(unsigned i=0;i<40;++i) session.step_60hz({});
    for(const auto& shot:session.shots()) assert(!shot.active());
    session.reset();assert(session.upgrades().options==0 && session.upgrades().power==0);
    std::cout<<"Play features PASS: "<<total<<" route frames, 10 deterministic jumps, top movement, four flight types, "
        <<hits<<" hits, "<<kills<<" kills, "<<enemy_shots<<" cannon shots and "<<pickup_frames<<" frames with pickups\n";
}
