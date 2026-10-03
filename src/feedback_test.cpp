#include "rom.hpp"
#include "level.hpp"
// Inspect presentation phases and capture reproducible poses without exposing
// test controls in the playable game's public API.
#define private public
#include "stage0_background.hpp"
#include "play_session.hpp"
#undef private
#ifdef NDEBUG
#undef NDEBUG
#endif
#include <cassert>
#include <algorithm>
#include <fstream>
#include <iostream>
#include <string>
#include <filesystem>

namespace {
sm::Entity64 actor(const sm::Rom& rom,unsigned type) {
    sm::Entity64 e;e.type()=std::uint8_t(type);e.state()=1;
    const auto m=sm::decode_spawn_type_metadata(rom,std::uint8_t(type));
    std::copy(m.bytes.begin(),m.bytes.end(),e.raw.begin()+0x13);
    e.set_x_fixed(0x1400);e.set_y_fixed(0x0800);return e;
}
void capture(const std::filesystem::path& path,const std::vector<std::uint32_t>& pixels) {
    std::ofstream f(path,std::ios::binary);f<<"P6\n512 848\n255\n";
    for(auto c:pixels) for(int shift:{16,8,0}) f.put(char(c>>shift));
}
}
int main(int argc,char** argv) {
    if(argc<2 || argc>4) return 2;
    sm::Rom rom(argv[1]);
    // Original takeoff delays remain in the simulation. Presentation should
    // move on each of the 28 video frames between the first two tile heights,
    // including across 15-Hz boundaries, without changing the actor state.
    sm::PlaySession carrier_session(rom);
    auto carrier=actor(rom,0x55);carrier.state()=2;carrier.raw[0x22]=16;
    carrier.set_y_fixed(0x0f00);carrier.raw[0x17]=7;
    int previous_y=carrier.y_fixed();
    for(unsigned frame=1;frame<28u;++frame) {
        carrier.raw[0x17]=std::uint8_t(7-frame/4u);
        const auto original=carrier.raw;
        const auto presented=carrier_session.present_carrier(carrier,frame);
        assert(int(presented.y_fixed())<previous_y);
        assert(int(presented.y_fixed())>0x0e00);
        assert(carrier.raw==original);previous_y=presented.y_fixed();
    }
    carrier.set_y_fixed(0x0e00);carrier.raw[0x17]=6;
    assert(carrier_session.present_carrier(carrier,28).y_fixed()==0x0e00);
    if(argc==3) {
        std::ifstream input(argv[2]);std::string id,kind;unsigned mode,px,py,flag;
        while(input>>id>>kind>>mode>>px>>py>>flag) {
            sm::GameState game;sm::Stage0Enemies enemies;auto& e=game.enemies[0];
            for(auto& b:e.raw) {unsigned v;input>>v;b=std::uint8_t(v);}
            game.player.set_x_fixed(std::uint16_t(px));game.player.set_y_fixed(std::uint16_t(py));
            game.tower_destroyed=flag;game.difficulty=1;
            std::vector<unsigned> values;
            if(kind=="option") {
                sm::position_option(game.player,e,mode);
                for(unsigned p:{7u,8u,9u,10u}) values.push_back(e.raw[p]);
            } else if(kind=="chain") {
                enemies.step_15hz(rom,game,0,0,false);
                values.push_back(e.type());
                if(e.active()) for(unsigned p:{1u,6u,7u,8u,23u}) values.push_back(e.raw[p]);
                values.push_back(game.platform_chain_active);
            } else if(kind=="carrier" || kind=="hatch") {
                std::vector<sm::PlaySound> sounds;
                enemies.step_15hz(rom,game,0,0,false,&sounds);
                for(unsigned p:{1u,6u,7u,8u,9u,10u,23u,24u,32u}) values.push_back(e.raw[p]);
                for(auto sound:sounds) {
                    if(sound==sm::PlaySound::CarrierLaunch) values.push_back(0x1a);
                    else if(sound==sm::PlaySound::HatchShot) values.push_back(0x17);
                    else assert(false);
                }
            } else if(kind=="blue") {
                const bool fire=sm::step_stage0_blue_enemy(game,e);
                for(unsigned p:{1u,11u,12u,13u,14u,23u,32u,33u}) values.push_back(e.raw[p]);
                if(fire) for(unsigned i=0;i<3u;++i) values.push_back(0x15);
            } else if(kind=="tower") {
                std::vector<sm::PlaySound> sounds;enemies.step_15hz(rom,game,0,0,false,&sounds);
                for(unsigned p:{0u,1u,4u,6u,22u,23u,24u}) values.push_back(e.raw[p]);
                values.push_back(game.tower_destroyed);
                for(auto sound:sounds) {
                    if(sound==sm::PlaySound::BossHit) values.push_back(0x25);
                    else if(sound==sm::PlaySound::PlatformBurst) values.push_back(0x34);
                    else if(sound==sm::PlaySound::LargeCannonExplosion) values.push_back(0x14);
                    else assert(false);
                }
            } else if(kind=="health") {
                const auto type=e.type();const auto damage=sm::apply_stage0_damage(rom,e,e.raw[4]);
                for(unsigned p:{0u,1u,4u,5u,6u,11u,12u,13u,14u,20u,21u,22u,23u}) values.push_back(e.raw[p]);
                std::vector<sm::PlaySound> sounds;sm::append_stage0_damage_sounds(rom,type,damage,sounds);
                for(auto sound:sounds) {
                    unsigned id=0;
                    switch(sound) {
                    case sm::PlaySound::Hit:id=0x16;break;
                    case sm::PlaySound::BossHit:id=0x25;break;
                    case sm::PlaySound::Explosion:id=0x10;break;
                    case sm::PlaySound::TurretExplosion:id=0x11;break;
                    case sm::PlaySound::HeavyVehicleExplosion:id=0x13;break;
                    case sm::PlaySound::LargeCannonExplosion:id=0x14;break;
                    case sm::PlaySound::TowerExplosion:id=0x4d;break;
                    default:assert(false);
                    }
                    values.push_back(id);
                }
            } else if(kind=="stamp47") {
                values.resize(0x600);
                for(unsigned i=0;i<values.size();++i) values[i]=(i*17u)&255u;
                for(const auto& v:sm::decode_stage0_tile_visuals(rom,e)) {
                    const unsigned row=(unsigned(e.raw[8])+unsigned(v.tile_y_offset)+
                        ((unsigned(e.raw[7])+flag)>>8u)+8u)&255u;
                    const unsigned col=(unsigned(e.raw[10])+unsigned(v.tile_x_offset)+
                        ((unsigned(e.raw[9])+mode)>>8u)+8u)&255u;
                    if(row>=32u || col>=40u) continue;
                    for(unsigned y=0;y<v.rows;++y) for(unsigned x=0;x<v.cols;++x) {
                        const unsigned dest=(row+y)*48u+col+x;
                        const auto tile=v.tiles[y*v.cols+x];
                        if(dest<values.size() && tile) values[dest]=tile;
                    }
                }
            } else if(kind=="bar") {
                sm::PlaySession s(rom);s.set_max_test_loadout();const auto image=s.render();
                const auto c=image[4u*256u+89u+mode*8u];
                values.push_back(c==0xffff2020u?1u:(c==0xffffff00u?2u:0u));
            } else return 2;
            std::cout<<id<<' ';bool first=true;
            for(auto v:values) {if(!first) std::cout<<',';first=false;std::cout<<v;}
            std::cout<<'\n';
        }
        return 0;
    }
    const bool save=argc==4;
    const auto directory=save?std::filesystem::path(argv[3]):std::filesystem::path{};
    if(save) std::filesystem::create_directories(directory);
    sm::PlaySession s(rom);s.set_max_test_loadout();s.step_60hz({});
    assert(std::int16_t(s.options()[0].y_fixed()-s.state().player.y_fixed())==-0x1a0);
    assert(std::int16_t(s.options()[1].y_fixed()-s.state().player.y_fixed())==0x360);
    if(save) capture(directory/"options.ppm",s.render_smooth());

    // Measure actual rendered star tracks for the entire shortcut-6 route,
    // including R18 tile carries, vertical scrolling and the stopped boss gate.
    s.seek_decile(6);s.set_max_test_loadout();
    int old_x=-1,old_y=-1;unsigned tracks=0;
    constexpr auto star=0xff9292b6u;
    for(unsigned n=0;n<4000u;++n) {
        s.step_60hz({});s.game_.enemies={};
        if(s.camera_pixels()<3072u) continue;
        const auto image=s.render_smooth();
        // The first seed row's star remains near the top, modulo the 192px
        // playfield. Track it by continuity rather than its screen ordering.
        if(old_x<0) {
            for(int y=124;y<350 && old_x<0;++y) for(int x=0;x<510;++x)
                if(image[unsigned(y)*512u+unsigned(x)]==star) {old_x=x;old_y=y;break;}
        } else {
            int best=999,xnext=-1,ynext=-1;
            for(int dy=-4;dy<=4;++dy) for(int dx=-3;dx<=3;++dx) {
                const int x=(old_x+dx+512)%512;
                const int y=112+(old_y-112+dy+768)%768;
                if(y>=848 || image[unsigned(y)*512u+unsigned(x)]!=star) continue;
                const int cost=std::abs(dx)*4+std::abs(dy);
                if(cost<best) {best=cost;xnext=x;ynext=y;}
            }
            if(xnext<0) {old_x=-1;old_y=-1;} // terrain/viewport occlusion
            else {old_x=xnext;old_y=ynext;++tracks;}
        }
        if(save && n==800u) capture(directory/"stars.ppm",image);
    }
    assert(tracks>3000u);

    // A dome launch must appear centered, rise vertically relative to the
    // deck for its ROM delay, then detach and aim at the player.
    sm::GameState game;sm::Stage0Enemies enemies;game.player.set_x_fixed(0x0400);
    auto& dome=game.enemies[0];dome=actor(rom,0x26);dome.state()=2;
    dome.raw[0x18]=1;dome.raw[0x21]=3;dome.set_x_fixed(0x1500);dome.set_y_fixed(0x0f00);
    enemies.step_15hz(rom,game,0,0,false);
    auto& disc=game.enemies[1];assert(disc.type()==0x11 && disc.state()==1);
    assert(std::int16_t(disc.x_fixed()-dome.x_fixed())==0x20);
    assert(std::int16_t(disc.y_fixed()-dome.y_fixed())==-0x100);
    const auto x=disc.x_fixed();enemies.step_15hz(rom,game,1,0,false);
    assert(disc.x_fixed()==x && disc.state()==1);

    // Chain animation must be conditional, survive negative-X scrolling,
    // cover all seven matrix scripts and request $34 once.
    for(bool destroyed:{false,true}) {
        game={};game.tower_destroyed=destroyed;auto& chain=game.enemies[0];
        chain=actor(rom,0x47);chain.state()=0;chain.set_x_fixed(0);
        std::vector<sm::PlaySound> sounds;unsigned frames=0,bounds=0;
        for(unsigned tick=0;tick<16u;++tick) {
            sm::step_stage0_object_scroll_15hz(game,0x200,0);
            enemies.step_15hz(rom,game,tick,0,false,&sounds);
            if(chain.active()) {
                frames|=1u<<chain.raw[6];
                const auto visuals=sm::decode_stage0_tile_visuals(rom,chain);
                assert(!visuals.empty());bounds+=unsigned(visuals.size());
            }
        }
        assert(!chain.active());
        assert(frames==(destroyed?127u:0u));
        assert(std::count(sounds.begin(),sounds.end(),sm::PlaySound::PlatformBurst)==int(destroyed));
        assert(!destroyed || bounds>14u);
    }

    // Real tower kill and trailing spawn on the natural route. Score is
    // awarded at tower death once, never again by a later $34 chain sound.
    s.reset();while(s.frame()<7200u) s.step_60hz({});
    bool killed=false,chain_seen=false;unsigned tower_score=0;
    for(unsigned n=0;n<2200u;++n) {
        for(auto& e:s.game_.enemies) if(e.type()==0x56u && e.state()==1u && !killed) {
            e.raw[4]=std::uint8_t(e.raw[22]+1u);killed=true;
        }
        s.step_60hz({});
        if(s.game_.tower_destroyed && !tower_score) tower_score=s.combat_.score();
        for(const auto& e:s.game_.enemies) if(e.type()==0x47u) {
            chain_seen=true;assert(s.combat_.score()==tower_score);
            if(save && e.raw[6]==5 && s.frame()%4u==0u) capture(directory/"chain.ppm",s.render_smooth());
        }
    }
    assert(killed && chain_seen && tower_score>0);

    // $BF9A still flashes white after the chain starts, but stops requesting
    // rumble $35 once CE4D is set. The random destruction cadence remains.
    game={};game.platform_chain_active=true;game.enemies[0]=actor(rom,0x56);
    auto& wreck=game.enemies[0];wreck.state()=2;wreck.raw[23]=5;wreck.raw[24]=4;wreck.raw[32]=1;
    std::vector<sm::PlaySound> wreck_sounds;
    enemies.step_15hz(rom,game,0,0,false,&wreck_sounds);
    assert((wreck.raw[0x3c]&3u)==3u && wreck.raw[32]>=1u && wreck.raw[32]<=8u);
    assert(std::find(wreck_sounds.begin(),wreck_sounds.end(),sm::PlaySound::PlatformRumble)==wreck_sounds.end());

    // Family-specific fatal sounds: impact followed by the ROM death selector.
    for(auto pair:{std::pair{0x10u,sm::PlaySound::Explosion},
                   {0x20u,sm::PlaySound::TurretExplosion},
                   {0x26u,sm::PlaySound::HeavyVehicleExplosion},
                   {0x1fu,sm::PlaySound::LargeCannonExplosion}}) {
        s.reset();s.game_.enemies[0]=actor(rom,pair.first);
        s.game_.enemies[0].raw[4]=std::uint8_t(s.game_.enemies[0].raw[22]+1u);
        for(unsigned n=0;n<4u;++n) s.step_60hz({});
        const auto events=s.sound_events();
        const auto impact=std::find(events.begin(),events.end(),sm::PlaySound::Hit);
        const auto death=std::find(events.begin(),events.end(),pair.second);
        assert(impact!=events.end() && death!=events.end() && impact<death);
    }

    // Distinct cells at the left boundary: the preceding ring column must
    // supply exposed pixels instead of repeating the first visible tile.
    sm::Stage0BackgroundStream background(rom);auto video=sm::Screen4Snapshot::from_stage0_rom(rom);
    for(auto& b:video.vram) b=0;
    const auto pb=background.pattern_base(),cb=background.color_base();
    for(unsigned q=0;q<3u;++q) for(unsigned line=0;line<8u;++line) {
        video.vram[pb+q*0x800u+8u+line]=0xff;
        video.vram[cb+q*0x800u+8u+line]=0x60;
        video.vram[pb+q*0x800u+16u+line]=0xff;
        video.vram[cb+q*0x800u+16u+line]=0xa0;
    }
    background.ring_.fill(1u);
    const unsigned col=(background.ring_col()+63u)&63u;
    for(unsigned y=0;y<32u;++y) background.ring_[y*64u+col]=2u;
    auto state=background.presentation_state();state.r18=0x0a; // source x=-6
    sm::Stage0Screen4Presenter presenter;
    auto image=presenter.render(background,video,background.compose_d988_raw(),&state);
    assert(image[40u*256u]==video.late_palette[10]);
    assert(image[40u*256u+6u]==video.late_palette[6]);
    auto edge_actor=actor(rom,0x26);edge_actor.set_x_fixed(0xfff0);
    const auto outside=sm::decode_stage0_tile_visuals(rom,edge_actor);
    edge_actor.set_x_fixed(0x0010);const auto inside=sm::decode_stage0_tile_visuals(rom,edge_actor);
    assert(!outside.empty() && outside.size()==inside.size());
    assert(outside[0].x+1==inside[0].x); // -0.5 to +0.5px crosses x=0 by exactly 1px
    std::cout<<"Feedback PASS: "<<tracks<<" smooth star frames, hatch, options, 7 chain frames, score, fatal SFX and distinct left edge\n";
}
