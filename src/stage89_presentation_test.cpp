#include "rom.hpp"
#include "level.hpp"
#define private public
#include "play_session.hpp"
#undef private
#include "assets.hpp"
#include "stage0_enemies.hpp"
#ifdef NDEBUG
#undef NDEBUG
#endif
#include <algorithm>
#include <cassert>
#include <iostream>

int main(int argc,char** argv) {
    if(argc!=2) return 2;
    sm::Rom rom(argv[1]);
    sm::Stage0Enemies logic;sm::GameState game;
    const auto catalog=sm::StageSpawnStream::decode_stage(rom,7u);
    assert(std::count_if(catalog.records().begin(),catalog.records().end(),[](const auto& r){return r.type==0x42u;})==4);
    assert(std::count_if(catalog.records().begin(),catalog.records().end(),[](const auto& r){return r.type==0x46u;})==16);
    auto record=[&](unsigned type)->const sm::SpawnRecord& {
        const auto it=std::find_if(catalog.records().begin(),catalog.records().end(),[=](const auto& r){return r.type==type;});
        assert(it!=catalog.records().end());return *it;
    };
    assert(logic.spawn(rom,record(0x42u),game,1u));
    auto& rock=game.enemies[0];
    assert(rock.type()==0x42u && rock.state()==1u && rock.raw[0x3d]==1u);
    assert(rock.x_fixed()==0x2000u && rock.y_fixed()==0x1200u);
    const auto y=rock.y_fixed();
    for(unsigned f=0;f<4u;++f) logic.move_60hz(game,f);
    assert(rock.y_fixed()==y-16u);

    // Fixed:$5A84 is deliberately a one-time constructor: after state 1 the
    // handler returns immediately and common movement owns the +/-$0010 drift.
    // Audit all four Stage-8 records so both vertical directions stay covered.
    bool rock_up=false,rock_down=false;
    for(const auto& rec:catalog.records()) if(rec.type==0x42u) {
        sm::GameState rg;sm::Stage0Enemies rl;
        assert(rl.spawn(rom,rec,rg,1u));
        auto& q=rg.enemies[0];
        const int vy=std::int16_t(unsigned(q.raw[11])|(unsigned(q.raw[12])<<8u));
        rock_up|=vy<0;rock_down|=vy>0;
        const auto qy=q.y_fixed();
        rl.step_15hz(rom,rg,0u,rec.trigger,false);
        assert(q.state()==1u);
        assert(std::int16_t(unsigned(q.raw[11])|(unsigned(q.raw[12])<<8u))==vy);
        for(unsigned f=0;f<4u;++f) rl.move_60hz(rg,f);
        assert(q.y_fixed()==std::uint16_t(qy+vy));
    }
    assert(rock_up && rock_down);

    assert(logic.spawn(rom,record(0x46u),game,1u));
    assert(game.active_enemy_count()==1u); // lasers use their own pool
    for(unsigned row=0;row<8u;++row) {
        const auto& laser=game.lasers[row];
        assert(laser.type()==0x46u && laser.raw[0x0f]==row);
        assert(laser.x_fixed()==0x1f00u && laser.y_fixed()==(2u+row)*256u);
    }
    std::vector<sm::PlaySound> sounds;
    for(unsigned tick=0;tick<19u;++tick) logic.step_15hz(rom,game,tick,0x104cu,false,&sounds);
    for(unsigned row=0;row<8u;++row) assert(game.lasers[row].state()==0u);
    logic.step_15hz(rom,game,19u,0x104cu,false,&sounds);
    for(unsigned row=0;row<8u;++row) assert(game.lasers[row].state()==1u);
    for(unsigned tick=20;tick<25u;++tick) logic.step_15hz(rom,game,tick,0x104cu,false,&sounds);
    assert(std::count(sounds.begin(),sounds.end(),sm::PlaySound::Stage8Wall)==1);
    for(unsigned row=0;row<8u;++row) {
        const auto v=sm::decode_stage0_tile_visuals(rom,game.lasers[row]);
        assert(v.size()==1u && v[0].cols>=6u);
        assert(std::all_of(v[0].tiles.begin(),v[0].tiles.end(),[](auto tile){return tile==0xcbu;}));
    }
    game={};assert(logic.spawn(rom,record(0x1bu),game,1u));
    assert(game.enemies[0].state()==2u && game.enemies[0].flags15()==0u);
    logic.step_15hz(rom,game,0u,0x1020u,false);
    assert(game.enemies[0].raw[3]==0x6fu && game.active_enemy_count()==2u);
    assert(game.enemies[1].state()==1u && game.enemies[1].raw[0x18]==30u);
    logic.step_15hz(rom,game,1u,0x1080u,false);
    assert(!game.enemies[0].active()); // original generator terminates here

    // Independent 64-byte original sprite fixtures from a natural 7->8
    // transition. Reapplying the global loader used to erase these families.
    const auto assets=sm::decode_stage_video(rom,7u);
    auto hash=[&](unsigned offset) {
        std::uint32_t h=2166136261u;
        for(unsigned n=0;n<64u;++n) h=(h^assets.vram[offset+n])*16777619u;
        return h;
    };
    assert(hash(0xdea0u)==0x5a2eec51u);
    assert(hash(0xdc60u)==0x4165373eu);
    assert(hash(0xdaa0u)==0x8e8e3dd2u);

    sm::PlaySession level(rom);level.set_invulnerable(true);level.reset(7u);
    bool rocks=false,ships=false,movers=false,walls=false,wall_pixels=false,stars=false;
    for(unsigned frame=0;frame<14000u;++frame) {
        level.step_60hz({});
        for(const auto& e:level.state().enemies) {
            rocks|=e.type()==0x42u;ships|=e.type()==0x1bu && e.state()==1u;movers|=e.type()==0x50u;
        }
        for(const auto& e:level.game_.lasers) walls|=e.active();
        if(frame==500u) {
            const auto actors=level.game_.enemies;level.game_.enemies={};
            const auto sky=level.render_continuous();level.game_.enemies=actors;
            stars=std::count(sky.begin()+112u*1024u,sky.end(),level.video_.palette[8])>100;
        }
        if(!wall_pixels && std::any_of(level.game_.lasers.begin(),level.game_.lasers.end(),[](const auto& e){return e.raw[0x11]>5u;})) {
            const auto visible=level.render_continuous();const auto lasers=level.game_.lasers;
            level.game_.lasers={};const auto empty=level.render_continuous();level.game_.lasers=lasers;
            wall_pixels=visible!=empty;
        }
        if(level.at_fight_gate()) break;
    }
    assert(rocks && ships && movers && walls && wall_pixels && stars);

    sm::PlaySession final(rom);final.set_invulnerable(true);final.reset(8u);
    sm::Entity64* boss=nullptr;int camera_anchor=-1;unsigned approach_frames=0;
    std::vector<std::uint32_t> previous_body;
    unsigned checked_body_frames=0;
    for(unsigned frame=0;frame<16000u;++frame) {
        final.step_60hz({});
        for(auto& e:final.game_.enemies) if(e.type()==0x79u) boss=&e;
        if(boss) {
            const int anchor=int(boss->x_fixed())+int(final.camera_pixels()*32u);
            if(camera_anchor<0) camera_anchor=anchor;
            assert(anchor==camera_anchor); // eye and scenery use ONE camera clock
            ++approach_frames;
            if(!final.at_fight_gate() && boss->x_fixed()<=0x1900u) {
                const auto body=final.render_continuous();
                if(!previous_body.empty()) {
                    // The upper shell is scenery, not part of the eye matrix.
                    // It must advance one quarter-pixel left on EVERY frame,
                    // including ring-column carries. State-only anchor checks
                    // missed the renderer's former eight-pixel jumps here.
                    for(unsigned y=140u;y<220u;++y)
                        for(unsigned x=400u;x<940u;++x)
                            assert(body[y*1024u+x]==previous_body[y*1024u+x+1u]);
                    ++checked_body_frames;
                }
                previous_body=body;
            }
        }
        if(boss && final.at_fight_gate()) break;
    }
    assert(boss && approach_frames>200u && boss->x_fixed()==0x1700u);
    assert(checked_body_frames>=50u);
    for(auto& e:final.game_.enemies) if(e.type()!=0x79u) e.clear();
    final.game_.player.clear();final.combat_.reset();
    boss->raw[0x20]=255u;boss->raw[0x17]=255u; // hold pose and attack script
    const auto steady=final.render_continuous();
    // Compare the eye and its seam with the cartridge's name-table placement,
    // not merely with another frame from our native actor renderer.
    const auto selector=boss->raw[0x06];
    for(unsigned pose=0;pose<8u;++pose) {
        boss->raw[0x06]=std::uint8_t(pose);
        const auto native=final.render_continuous();
        auto stamped=final.background_.compose_d988_raw();
        sm::stamp_stage0_tile_objects(rom,final.background_,final.game_,stamped,true);
        sm::Stage0Screen4Presenter reference_presenter;
        const auto reference=reference_presenter.render(final.background_,final.video_,stamped);
        for(unsigned y=52u;y<188u;++y) for(unsigned x=180u;x<256u;++x)
            for(unsigned yy=0;yy<4u;++yy) for(unsigned xx=0;xx<4u;++xx)
                assert(native[(y*4u+yy)*1024u+x*4u+xx]==reference[y*256u+x]);
    }
    boss->raw[0x06]=selector;
    for(unsigned frame=0;frame<24u;++frame) {
        final.step_60hz({});
        // The restored final-sector spawn stream can still introduce $51/$4C
        // actors at the gate. This fixture measures the held boss pose, so
        // exclude those unrelated moving actors on every presentation frame.
        for(auto& e:final.game_.enemies) if(e.type()!=0x79u) e.clear();
        assert(final.render_continuous()==steady); // every 60-Hz presentation phase
    }
    std::cout<<"Stages 8/9 presentation PASS: original rocks/ships/16 laser events, inherited sprites, visible stars/walls, attached final-boss eye and stable fight\n";
}
