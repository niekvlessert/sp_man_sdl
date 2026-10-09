#define private public
#include "play_session.hpp"
#undef private
#ifdef NDEBUG
#undef NDEBUG
#endif
#include <cassert>
#include <fstream>
#include <iostream>
#include <string>
#include <algorithm>

int main(int argc,char** argv) {
    if(argc<2 || argc>3) return 2;
    sm::Rom rom(argv[1]);
    const auto video=sm::Screen4Snapshot::from_stage0_rom(rom);
    assert(video.object_pattern_page[0x64]==2 && video.object_pattern_page[0x40]==2);
    assert(video.object_pattern_page[0x15]==1 && video.object_pattern_page[0x55]==1);
    if(argc==3) {
        std::ifstream in(argv[2]);std::string id,kind;
        unsigned tick,phase,fine,ri,rv,px,py;
        while(in>>id>>kind>>tick>>phase>>fine>>ri>>rv>>px>>py) {
            sm::GameState game;sm::Stage0Enemies actors;sm::Stage0Combat combat;
            game.random_index=std::uint8_t(ri);game.random_value=std::uint8_t(rv);
            game.player.set_x_fixed(std::uint16_t(px));game.player.set_y_fixed(std::uint16_t(py));
            auto& e=game.enemies[0];for(auto& b:e.raw) {unsigned v;in>>v;b=std::uint8_t(v);}
            if(kind=="difficulty") {
                sm::PlayerUpgrades u;u.wave=e.raw[1];u.missile=e.raw[2];u.options=e.raw[3];u.power=e.raw[4];
                std::cout<<id<<' '<<u.difficulty(rom)<<'\n';continue;
            }
            if(kind=="ground_missile") {
                sm::select_ground_missile_velocity(e,phase&1u,phase&2u,phase&4u);
                const auto word=[&](unsigned p){return unsigned(e.raw[p])|(unsigned(e.raw[p+1])<<8u);};
                e.set_y_fixed(std::uint16_t(e.y_fixed()+word(11)));
                e.set_x_fixed(std::uint16_t(e.x_fixed()+word(13)));
                std::cout<<id<<' ';bool first=true;
                for(unsigned p:{7u,8u,9u,10u,11u,12u,13u,14u}) {
                    if(!first) std::cout<<',';first=false;std::cout<<unsigned(e.raw[p]);
                }
                std::cout<<'\n';continue;
            }
            if(kind=="cannon") {
                game.difficulty=std::uint8_t(phase);std::vector<sm::PlaySound> sounds;
                combat.step(rom,game,0,0,0,sounds);
                std::cout<<id<<' ';bool first=true;
                const auto& bullet=combat.bullets()[0];
                for(unsigned p:{0u,1u,5u,7u,8u,9u,10u,11u,12u,13u,14u,21u,23u}) {
                    if(!first) std::cout<<',';first=false;std::cout<<unsigned(bullet.raw[p]);
                }
                std::cout<<'\n';continue;
            }
            if(kind=="blue") {combat.clear_vulnerable(rom,game);combat.blast_bosses(rom,game);}
            else actors.step_gate_20hz(rom,game,tick,nullptr,std::uint8_t(phase),std::uint8_t(fine));
            std::cout<<id<<' ';
            bool first=true;
            for(unsigned p:{1u,4u,5u,6u,7u,8u,9u,10u,11u,12u,13u,14u,15u,16u,22u,23u,24u}) {
                if(!first) std::cout<<',';first=false;std::cout<<unsigned(e.raw[p]);
            }
            std::cout<<'\n';
        }
        return 0;
    }
    // Original $76A9: M delivers two pending damage units; primary W uses
    // its +06 value. Test the session's collision/service path, not HP helpers.
    sm::PlaySession weapon(rom);weapon.set_invulnerable(true);
    auto& game=const_cast<sm::GameState&>(weapon.state());
    auto pickup=[&](unsigned kind) {
        auto& p=game.enemies[19];p.clear();p.type()=3;p.flags15()=0x56;p.raw[3]=std::uint8_t(kind);
        p.raw[0x13]=p.raw[0x14]=4;p.set_x_fixed(game.player.x_fixed());p.set_y_fixed(game.player.y_fixed());
        weapon.step_60hz({});assert(!p.active());
    };
    pickup(3);
    auto& target=game.enemies[0];target.clear();target.type()=0x26;target.state()=1;
    const auto meta=sm::decode_spawn_type_metadata(rom,0x26);
    std::copy(meta.bytes.begin(),meta.bytes.end(),target.raw.begin()+0x13);
    target.set_x_fixed(game.player.x_fixed());target.set_y_fixed(std::uint16_t(game.player.y_fixed()+0x180));
    const auto hp=target.raw[22];
    weapon.step_60hz({false,false,false,false,false,true});
    assert(target.raw[4]==2 && !weapon.missile_shot().active());
    while(weapon.frame()%4u) weapon.step_60hz({});
    assert(target.raw[22]==hp-2u);
    weapon.reset();pickup(10);assert(weapon.upgrades().wave);
    pickup(12);assert(!weapon.upgrades().wave); // N must not trigger a blast
    weapon.reset();
    pickup(11);
    auto make=[&](unsigned slot,unsigned type) -> sm::Entity64& {
        auto& e=game.enemies[slot];e.clear();e.type()=std::uint8_t(type);e.state()=1;
        const auto m=sm::decode_spawn_type_metadata(rom,std::uint8_t(type));
        std::copy(m.bytes.begin(),m.bytes.end(),e.raw.begin()+0x13);
        e.set_x_fixed(0x1600);e.set_y_fixed(0x800);return e;
    };
    make(0,0x20).raw[0x3d]=1; // delayed pickup must survive a global blast
    auto& platform=make(1,0x56);const auto platform_hp=platform.raw[22];
    auto& boss=make(2,0x64);boss.state()=3;boss.raw[23]=100;
    weapon.step_60hz({false,false,false,false,false,true});
    bool expand=false,blast=false,drop=false;
    for(unsigned i=0;i<160;++i) {
        weapon.step_60hz({});
        for(auto sound:weapon.sound_events()) {
            expand|=sound==sm::PlaySound::BombExpand;blast|=sound==sm::PlaySound::BombBlast;
        }
        for(const auto& e:game.enemies) drop|=e.type()==3;
    }
    assert(expand && blast && drop);
    assert(platform.type()==0x56 && platform.raw[22]==platform_hp);
    assert(boss.type()==0x64 && boss.raw[22]==0x0e);
    assert(std::none_of(weapon.shots().begin(),weapon.shots().end(),[](const auto& e){return e.type()==8;}));
    // Every damageable stage-0 family starts with its ROM metadata HP and
    // requires HP+1 single hits (the subtraction carry determines destruction).
    for(unsigned type:{0x10u,0x12u,0x15u,0x18u,0x1fu,0x20u,0x22u,0x26u,0x40u,0x55u,0x64u}) {
        sm::Entity64 e;e.type()=std::uint8_t(type);
        const auto m=sm::decode_spawn_type_metadata(rom,std::uint8_t(type));
        std::copy(m.bytes.begin(),m.bytes.end(),e.raw.begin()+0x13);
        e.raw[0x14]|=128;const unsigned hits=e.raw[22];
        for(unsigned i=0;i<hits;++i) assert(sm::apply_stage0_damage(rom,e,1)==sm::Stage0DamageResult::Hit);
        assert(sm::apply_stage0_damage(rom,e,1)==sm::Stage0DamageResult::Destroyed);
    }
    // The M missile must actually land and run along streamed/vehicle terrain.
    weapon.reset();while(weapon.frame()<5000u) weapon.step_60hz({});
    weapon.set_max_test_loadout();
    game.player.set_x_fixed(0x0400);game.player.set_y_fixed(0x0200);
    for(auto& e:game.enemies) if(e.type()!=0x24u) e.clear();
    weapon.step_60hz({false,false,false,false,false,true});
    bool followed_ground=false;
    for(unsigned i=0;i<300 && weapon.missile_shot().active();++i) {
        for(auto& e:game.enemies) if(e.type()!=0x24u) e.clear();
        weapon.step_60hz({});const auto& m=weapon.missile_shot();
        followed_ground|=m.active() && m.raw[11]==0 && m.raw[12]==0 && m.raw[13]==0 && m.raw[14]==2;
    }
    assert(followed_ground);
    // A quarter-pixel Y step must appear on every presented video frame,
    // including the coarse-tick boundary. Compare real vehicle texture pixels.
    weapon.reset();while(weapon.frame()<6897u) weapon.step_60hz({});
    auto previous=weapon.render_smooth();
    for(unsigned n=0;n<3;++n) {
        weapon.step_60hz({});const auto next=weapon.render_smooth();
        unsigned best=~0u;int best_y=99;
        for(int dy=-3;dy<=3;++dy) for(int dx=-3;dx<=3;++dx) {
            unsigned diff=0;
            for(int y=650;y<800;++y) for(int x=360;x<490;++x)
                diff+=previous[unsigned(y)*512u+unsigned(x)]!=next[unsigned(y+dy)*512u+unsigned(x+dx)];
            if(diff<best) {best=diff;best_y=dy;}
        }
        assert(best==0 && best_y==1);previous=next;
    }
    // The type-$64 spawn record exists for one 20-Hz slice before its
    // initializer moves it to X=$28.  Native presentation must never interpolate
    // from that uninitialized state-0 coordinate, or the boss flashes on-screen
    // once before its real entrance.
    sm::PlaySession entrance(rom);entrance.set_invulnerable(true);bool checked_hidden_entrance=false;
    for(unsigned n=0;n<10000u && !checked_hidden_entrance;++n) {
        entrance.step_60hz({});
        for(std::size_t i=0;i<entrance.game_.enemies.size();++i) {
            auto& e=entrance.game_.enemies[i];
            if(e.type()!=0x64u || e.state()!=1u || entrance.previous_gate_actors_[i].state()!=0u) continue;
            const auto with=entrance.render_smooth();const auto saved=e;e.clear();
            const auto without=entrance.render_smooth();e=saved;
            assert(with==without);checked_hidden_entrance=true;break;
        }
    }
    assert(checked_hidden_entrance);

    // At the final $6A selector wrap the original cleanup removes the boss's
    // type-$40 rockets as a pool clear, not as individually destroyed enemies.
    // They therefore disappear silently.
    sm::PlaySession cleanup(rom);cleanup.set_invulnerable(true);cleanup.game_.enemies={};cleanup.enemies_.reset();
    cleanup.spawns_.skip_before_trigger(0xffffu);
    while((cleanup.frame_+1u)%3u) cleanup.step_60hz({});
    auto& death=cleanup.game_.enemies[0];death.type()=0x6au;death.state()=0u;death.raw[6]=7u;
    auto& rocket=cleanup.game_.enemies[1];rocket.type()=0x40u;rocket.state()=3u;rocket.flags15()=1u;
    rocket.set_x_fixed(0x1000u);rocket.set_y_fixed(0x0800u);
    cleanup.step_60hz({});assert(!rocket.active());
    for(auto sound:cleanup.sound_events())
        assert(sound!=sm::PlaySound::Hit && sound!=sm::PlaySound::Explosion &&
               sound!=sm::PlaySound::TurretExplosion && sound!=sm::PlaySound::HeavyVehicleExplosion &&
               sound!=sm::PlaySound::LargeCannonExplosion);

    sm::PlaySession session(rom);session.set_invulnerable(true);
    session.seek_decile(9);
    session.set_max_test_loadout();
    bool saw_child=false,saw_underbody=false,damaged=false,saw_burst=false,saw_silent_wait=false;
    bool checked_burst_pixels=false,checked_wait_pixels=false;
    bool saw_tower_explosion_sound=false,stray_rocket_death_sound=false;
    for(unsigned n=0;n<4000 && session.stage_index()==0;++n) {
        sm::PlayerInput input{};input.fire=true;input.fire_pressed=n%5==0;
        session.step_60hz(input);
        for(const auto sound:session.sound_events()) {
            if(sound==sm::PlaySound::TowerExplosion) saw_tower_explosion_sound=true;
            else if(saw_tower_explosion_sound &&
                    (sound==sm::PlaySound::Hit || sound==sm::PlaySound::Explosion))
                stray_rocket_death_sound=true;
        }
        const bool death_active=std::any_of(session.state().enemies.begin(),session.state().enemies.end(),
            [](const auto& e){return e.type()==0x6au;});
        if(death_active)
            assert(std::none_of(session.state().enemies.begin(),session.state().enemies.end(),
                [](const auto& e){return e.type()==0x40u;}));
        for(const auto& e:session.state().enemies) {
            saw_child|=e.type()==0x40;saw_underbody|=e.type()==0x3d;
            damaged|=e.type()==0x64 && e.raw[22]<60;
            if(e.type()==0x6a) {
                assert(!session.music_playing());
                const auto visuals=sm::decode_stage0_tile_visuals(rom,e);
                if(e.state()==0) {saw_burst=true;assert(!visuals.empty());}
                else {saw_silent_wait=true;assert(visuals.empty());}
                if(e.state()==0?!checked_burst_pixels:!checked_wait_pixels) {
                    const auto with=session.render_smooth();
                    auto& mutable_e=const_cast<sm::Entity64&>(e);
                    const auto saved=mutable_e;mutable_e.clear();
                    const auto without=session.render_smooth();mutable_e=saved;
                    if(e.state()==0) {assert(with!=without);checked_burst_pixels=true;}
                    else {assert(with==without);checked_wait_pixels=true;}
                }
            }
        }
    }
    assert(saw_underbody && damaged && saw_burst && saw_silent_wait);
    assert(checked_burst_pixels && checked_wait_pixels);
    assert(saw_tower_explosion_sound && !stray_rocket_death_sound);
    assert(session.stage_index()==1); // real projectiles -> $6A -> next stage
    assert(session.music_playing());
    assert(session.upgrades().wave && session.upgrades().missile);
    for(unsigned i=0;i<360;++i) session.step_60hz({});
    assert(!session.at_fight_gate());
    const auto stage1=session.render_smooth();assert(stage1.size()==512u*848u);
    // A stage transition must load real scenery, not the old vehicle banks
    // or a single-color screen. Check the bottom third, away from ship/HUD.
    auto colors=std::vector<std::uint32_t>(stage1.begin()+512u*600u,stage1.end());
    std::sort(colors.begin(),colors.end());
    assert(std::unique(colors.begin(),colors.end())-colors.begin()>=6);
    sm::Stage0BackgroundStream next_background(rom);next_background.reset_stage(1);
    assert(next_background.world_x()==248u && next_background.scroll_row()==0u);
    assert(next_background.pattern_base()==0u && next_background.color_base()==0x2000u);
    for(unsigned i=0;i<148;++i) next_background.step_15hz();
    // Independent original-ROM snapshot at stage1 X=544 (parity_stage1).
    assert(next_background.world_x()==544u && next_background.source_address()==0xa4cbu);
    assert(next_background.trigger_cursor()==0x1044u && next_background.fast_ground_phase()==0u);
    session.reset();sm::PlaySession fresh(rom);fresh.set_invulnerable(true);
    for(unsigned i=0;i<1800;++i) {session.step_60hz({});fresh.step_60hz({});}
    assert(session.render()==fresh.render());
    for(unsigned i=0;i<20;++i) assert(session.state().enemies[i].raw==fresh.state().enemies[i].raw);
    // Exercise all boss phases without firing: attacks must be naturally spawned.
    session.seek_decile(9);
    for(unsigned i=0;i<1000;++i) {
        session.step_60hz({});
        for(const auto& e:session.state().enemies) saw_child|=e.type()==0x40;
    }
    assert(saw_child);
    const auto before=session.state();const auto frame=session.frame();
    const auto a=session.render_smooth(),b=session.render_smooth();assert(a==b);
    assert(frame==session.frame() && before.player.raw==session.state().player.raw);
    for(unsigned i=0;i<20;++i) assert(before.enemies[i].raw==session.state().enemies[i].raw);
    std::cout<<"Late combat PASS: live boss damage/attacks/ending, stage transition, reset and render purity\n";
}
