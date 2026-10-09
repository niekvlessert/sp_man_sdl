#include "rom.hpp"
#include "level.hpp"
#define private public
#include "play_session.hpp"
#undef private
#include "assets.hpp"
#include "spawn.hpp"
#ifdef NDEBUG
#undef NDEBUG
#endif
#include <algorithm>
#include <array>
#include <cassert>
#include <iostream>

namespace {
sm::Entity64* enter(sm::PlaySession& s,unsigned stage,unsigned type) {
    s.reset(stage);
    sm::Entity64* boss=nullptr;
    for(unsigned f=0;f<30000u;++f) {
        s.step_60hz({});
        for(auto& e:s.game_.enemies) if(e.type()==type) boss=&e;
        if(boss && s.at_fight_gate() && boss->state()) return boss;
    }
    assert(false);return nullptr;
}
std::uint32_t rgb(unsigned grb) {
    auto c=[](unsigned v){return (v*255u+3u)/7u;};
    return 0xff000000u|(c((grb>>4)&7u)<<16)|(c((grb>>8)&7u)<<8)|c(grb&7u);
}
}
int main(int argc,char** argv) {
    if(argc!=2) return 2;
    sm::Rom rom(argv[1]);
    sm::PlaySession tubes(rom);tubes.set_invulnerable(true);tubes.reset(4u);
    bool approaching=false;
    for(unsigned f=0;f<20000u;++f) {
        tubes.step_60hz({});
        for(const auto& e:tubes.game_.enemies)
            if(e.type()==0x76u && e.raw[5]==2u && e.x_fixed()<0x1900u && !tubes.at_fight_gate()) approaching=true;
        if(approaching) break;
    }
    assert(approaching);
    // Compare actual native tube pixels against the scene without actors.
    // Four output samples per original pixel: the left edge moves by four
    // samples on EVERY frame, including between the 15-Hz name-table updates.
    int previous=-1;
    for(unsigned f=0;f<12u;++f) {
        tubes.step_60hz({});tubes.game_.player.clear();
        const auto actors=tubes.game_.enemies;
        const auto full=tubes.render_continuous();
        tubes.game_.enemies={};const auto empty=tubes.render_continuous();tubes.game_.enemies=actors;
        int left=1024;
        for(unsigned y=160;y<300;++y) for(unsigned x=100;x<850;++x)
            if(full[y*1024u+x]!=empty[y*1024u+x]) left=std::min(left,int(x));
        assert(left<1024);
        if(previous>=0) assert(left==previous-4);
        previous=left;
    }

    sm::PlaySession armour(rom);armour.set_invulnerable(true);auto* core=enter(armour,4u,0x77u);
    for(unsigned f=0;f<20u;++f) armour.step_60hz({});
    auto pipe=std::find_if(armour.game_.enemies.begin(),armour.game_.enemies.end(),[](const auto& e) {
        return e.type()==0x76u && e.raw[5]==2u && e.x_fixed()==0x0c00u && e.y_fixed()==0u;
    });
    assert(pipe!=armour.game_.enemies.end() && pipe->raw[0x16]==3u);
    armour.game_.player.set_x_fixed(0x0600u);armour.game_.player.set_y_fixed(0x0300u);
    sm::PlayerInput fire;fire.fire_pressed=true;armour.step_60hz(fire);
    for(unsigned f=0;f<16u;++f) armour.step_60hz({});
    assert(pipe->raw[0x16]==2u);
    assert(std::none_of(armour.shots().begin(),armour.shots().end(),[](const auto& s){return s.active();}));
    // Clear all linked armour through the normal death service, then ensure
    // the ROM scenery palette stays black even while the exposed core flashes.
    for(auto& e:armour.game_.enemies) if(e.type()==0x76u) e.raw[4]=0xffu;
    for(unsigned f=0;f<200u && core->state()<5u;++f) armour.step_60hz({});
    assert(core->state()==5u && core->raw[0x37]==0u);
    core->raw[4]=1u;
    for(unsigned f=0;f<24u;++f) {
        armour.step_60hz({});armour.render_continuous();
        for(unsigned i:{9u,11u,12u}) assert(armour.video_.tower_palette[i]==0xff000000u);
    }

    const auto video=sm::decode_stage_video(rom,5u);
    assert(video.object_pattern_base[0x0d]==0u && video.object_pattern_page[0x0d]==1u);
    // Original stage-6 VRAM at $D680: all four quadrants of the round ball.
    constexpr std::array<unsigned char,32> ball{
        0x00,0x03,0x0c,0x10,0x26,0x2f,0x4f,0x46,0x60,0x60,0x30,0x3c,0x17,0x0e,0x03,0x00,
        0x00,0xc0,0xf0,0x38,0x14,0x1c,0x0e,0x0a,0x1a,0x16,0x24,0xcc,0x98,0x70,0xc0,0x00};
    assert(std::equal(ball.begin(),ball.end(),video.vram.begin()+0xd680u));

    sm::PlaySession warp(rom);warp.set_invulnerable(true);auto* boss=enter(warp,6u,0x43u);
    const auto palette=sm::decode_stage_boss_palette(rom,6u);
    warp.render();
    for(unsigned i=0;i<16u;++i) if(i!=11u) assert(warp.video_.tower_palette[i]==rgb(palette[i]));
    // Prevent an independently destructible bubble from intercepting this
    // shot, so this exercises scenery passage and the boss's controller box.
    for(auto& e:warp.game_.enemies) if(e.type()!=0x43u) e.clear();
    boss->raw[0x17]=0xffu;
    warp.game_.player.set_x_fixed(0x0500u);warp.game_.player.set_y_fixed(boss->y_fixed());
    warp.step_60hz(fire);
    bool crossed_scenery=false;
    for(unsigned f=0;f<64u && boss->raw[2]==0xffu;++f) {
        for(const auto& shot:warp.shots()) if(shot.active() && shot.x_fixed()>0x1500u) crossed_scenery=true;
        warp.step_60hz({});
    }
    assert(crossed_scenery && boss->raw[2]==0xfeu);
    assert(std::none_of(warp.shots().begin(),warp.shots().end(),[](const auto& s){return s.active();}));
    std::cout<<"Boss regressions PASS: 60-Hz tubes, bullet blocking, black scenery, round balls, Warp Machine palette and live bullet damage\n";
}
