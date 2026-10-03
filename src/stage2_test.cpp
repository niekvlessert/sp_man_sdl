#include "play_session.hpp"
#ifdef NDEBUG
#undef NDEBUG
#endif
#include <algorithm>
#include <array>
#include <cassert>
#include <iostream>

int main(int argc,char** argv) {
    if(argc!=2) return 2;
    sm::Rom rom(argv[1]);
    // Independent OpenMSX E000-E7FF captures, unmodified ROM, stage index 1.
    // Hash the complete canonical ring, including cells outside the viewport.
    struct Reference { unsigned source,x,y,mode; std::uint32_t hash; };
    constexpr std::array<Reference,9> references{{
        {0xa4a7u,370u,0u,0u,0x71000241u},
        {0xa577u,1264u,0u,2u,0x8619b291u},
        {0xa5b3u,1548u,12u,1u,0x41628bfbu},
        {0xa5feu,1706u,170u,1u,0x7656cbd3u},
        {0xa671u,1952u,384u,0u,0x60f9db02u},
        {0xa79du,3448u,393u,3u,0xfd32e46au},
        {0xa7c5u,3448u,544u,3u,0x89414f8au},
        {0xa836u,3470u,960u,0u,0xe2ac18a3u},
        {0xa8e9u,4400u,960u,0u,0xf0b08e33u},
    }};
    // Final-sector palette commands: $A94A blackens the selected indices,
    // then $A95D installs the green boss palette observed in OpenMSX.
    const auto stage2_video=sm::Screen4Snapshot::from_stage_rom(rom,1);
    assert(stage2_video.late_palette[1]==0xff000000u);
    assert(stage2_video.tower_palette[1]==0xff6d2424u);
    assert(stage2_video.tower_palette[4]==0xff244900u);
    assert(stage2_video.tower_palette[9]==0xff6d9200u);
    sm::Stage0BackgroundStream palette_probe(rom);palette_probe.reset_stage(1);
    bool saw_black=false,saw_green=false;
    for(unsigned i=0;i<6000u && !palette_probe.gated();++i) {
        palette_probe.step_15hz();
        saw_black|=palette_probe.palette_set()==1u;
        saw_green|=palette_probe.palette_set()==2u;
        if(saw_green) break;
    }
    assert(saw_black && saw_green);

    sm::Stage0BackgroundStream background(rom);background.reset_stage(1);
    unsigned checked=0,ticks=0;
    while(!background.gated() && ticks<15000u) {
        for(const auto& r:references) {
            if(background.source_address()!=r.source || background.world_x()!=r.x ||
               background.world_y()!=int(r.y) || background.mode()!=r.mode) continue;
            std::uint32_t hash=2166136261u;
            for(unsigned y=0;y<32u;++y) for(unsigned x=0;x<64u;++x)
                hash=(hash^background.ring_tile(x,y))*16777619u;
            assert(hash==r.hash);++checked;
        }
        assert(background.source_address()<=0xa94au);
        background.step_15hz();++ticks;
    }
    assert(checked==references.size());
    assert(background.gated() && background.source_address()==0xa94au);
    assert(background.trigger_cursor()==0x6000u);
    assert(background.x_velocity_fp()==0 && background.y_velocity_fp()==0);

    // A real shot through the open stage-2 entrance must reach the right edge.
    sm::PlaySession session(rom);session.reset(1);
    session.step_60hz({false,false,false,false,true,true});
    unsigned lifespan=0;std::uint16_t last_x=0;
    while(lifespan<100u && session.shots()[0].active()) {
        last_x=session.shots()[0].x_fixed();++lifespan;session.step_60hz({});
    }
    assert(lifespan>=45u && lifespan<65u && last_x>=0x1f00u);

    // Use actual stage records and metadata, including ceiling orientation.
    const auto stream=sm::StageSpawnStream::decode_stage(rom,1);
    unsigned turrets=0;bool floor=false,ceiling=false;
    sm::Stage0Combat combat;
    for(const auto& record:stream.records()) {
        if(record.type!=0x29u || record.trigger_flag() || record.type_flag()) continue;
        sm::GameState game;
        assert(sm::instantiate_stage0_spawn(rom,record,game,1));
        auto& turret=game.enemies[0];
        const auto meta=sm::decode_spawn_type_metadata(rom,0x29u);
        assert(turret.raw[0x16]==meta.bytes[3]);
        assert(turret.raw[6]==((record.payload[0]&128u)?4u:0u));
        ceiling|=turret.raw[0x20]!=0;floor|=turret.raw[0x20]==0;
        assert(!sm::decode_stage0_tile_visuals(rom,turret).empty());
        combat.spawned(turret);++turrets;
        assert(bool(turret.raw[0x3d])==(turrets%4u==0u));
        // Z80 kills on subtraction carry: HP=1 needs two one-damage hits.
        assert(sm::apply_stage0_damage(rom,turret,meta.bytes[3])==sm::Stage0DamageResult::Hit);
        assert(sm::apply_stage0_damage(rom,turret,1u)==sm::Stage0DamageResult::Destroyed);
    }
    assert(turrets==63u && floor && ceiling);

    // First restored regular stage-2 batch: all five $27 aimed movers and all
    // eight $2D surface runners must instantiate from the real ROM stream.
    unsigned movers27=0,runners2d=0;
    for(const auto& record:stream.records()) {
        if(record.type!=0x27u && record.type!=0x2du) continue;
        sm::GameState game;
        assert(sm::instantiate_stage0_spawn(rom,record,game,1));
        assert(game.enemies[0].type()==record.type);
        if(record.type==0x27u) { ++movers27; assert(game.enemies[0].raw[0x17]==0x0au); }
        else { ++runners2d; assert(game.enemies[0].raw[0x17]==0x28u); }
    }
    assert(movers27==5u && runners2d==8u);

    // Second regular batch: seven scripted $2B launchers plus three $2E
    // composed launchers. $2B records are extended and must not be rejected
    // just because their control byte has bit 7 set.
    unsigned launchers2b=0,launchers2e=0;
    const sm::SpawnRecord* first2b=nullptr;const sm::SpawnRecord* first2e=nullptr;
    for(const auto& record:stream.records()) {
        if(record.type!=0x2bu && record.type!=0x2eu) continue;
        sm::GameState game;
        assert(sm::instantiate_stage0_spawn(rom,record,game,1));
        auto& e=game.enemies[0];assert(e.type()==record.type);
        if(record.type==0x2bu) {
            ++launchers2b;if(!first2b) first2b=&record;
            assert(record.payload.size()==5u && record.payload[0]==3u && record.payload[3]==2u && record.payload[4]==0x16u);
            assert(e.raw[0x20]==((record.payload[1]>>7u)&1u));
            assert(e.raw[0x18]==record.payload[2] && e.raw[0x3e]==4u);
        } else {
            ++launchers2e;if(!first2e) first2e=&record;
            assert(!sm::decode_stage0_tile_visuals(rom,e).empty());
        }
    }
    assert(launchers2b==7u && launchers2e==3u && first2b && first2e);
    {
        sm::GameState game;sm::Stage0Enemies enemies;
        assert(sm::instantiate_stage0_spawn(rom,*first2b,game,1));
        const auto interval=game.enemies[0].raw[0x18];
        for(unsigned i=0;i<interval;++i) enemies.step_15hz(rom,game,i,0,false,nullptr);
        const auto child=std::find_if(game.enemies.begin(),game.enemies.end(),[](const auto& e){return e.type()==0x16u;});
        assert(child!=game.enemies.end() && child->state()==1u);
        assert(child->raw[0x20]==game.enemies[0].raw[0x20]);
    }
    {
        sm::GameState game;sm::Stage0Enemies enemies;sm::Stage0Combat child_combat;
        assert(sm::instantiate_stage0_spawn(rom,*first2e,game,1));
        enemies.step_15hz(rom,game,0,0,false,nullptr);
        auto children=[&] {return unsigned(std::count_if(game.enemies.begin(),game.enemies.end(),[](const auto& e){return e.type()==0x2cu;}));};
        assert(children()==2u && game.enemies[0].state()==1u && game.enemies[0].raw[0x37]==2u);
        // $7B65 packed frame 2: three columns, each with a top/bottom cap
        // and twelve repeated $CC/$CD body matrices ($8C,$02 in the ROM).
        const auto barrier=sm::decode_stage0_tile_visuals(rom,game.enemies[0]);
        unsigned body=0,caps=0;
        for(const auto& v:barrier) {
            if(v.tiles==std::vector<std::uint8_t>{0xccu,0xcdu}) ++body;
            if(v.tiles==std::vector<std::uint8_t>{0xcau,0xcbu}) ++caps;
        }
        assert(barrier.size()==42u && body==36u && caps==6u);
        // $8650/$865C launch the linked modules in opposite Y directions.
        std::array<int,2> child_vy{};unsigned cv=0;
        for(const auto& c:game.enemies) if(c.type()==0x2cu) {
            assert(cv<child_vy.size());
            child_vy[cv++]=std::int16_t(unsigned(c.raw[11])|(unsigned(c.raw[12])<<8u));
        }
        std::sort(child_vy.begin(),child_vy.end());
        assert(child_vy[0]==-0x60 && child_vy[1]==0x60);
        auto child=std::find_if(game.enemies.begin(),game.enemies.end(),[](const auto& e){return e.type()==0x2cu;});
        assert(child!=game.enemies.end());
        child->set_x_fixed(0x1200u);child->set_y_fixed(0x0800u);
        game.player.set_x_fixed(0x0800u);game.player.set_y_fixed(0x0a00u);
        enemies.step_15hz(rom,game,1,0,false,nullptr);
        assert(child->state()==1u);
        for(unsigned i=0;i<5u;++i) enemies.step_15hz(rom,game,2u+i,0,false,nullptr);
        assert(child->raw[0x24]==1u);
        std::vector<sm::PlaySound> sounds;child_combat.step(rom,game,0,0,0,sounds);
        assert(std::any_of(child_combat.bullets().begin(),child_combat.bullets().end(),[](const auto& b){return b.type()==0x67u;}));
        for(auto& e:game.enemies) if(e.type()==0x2cu) e.clear();
        enemies.step_15hz(rom,game,8,0,false,nullptr);
        assert(game.enemies[0].state()==2u && game.enemies[0].raw[0x06]==3u);
    }
    // Full-route $2E/$2C scheduling and fire regression. The original stage-2
    // audit at world X=$047C has ordinal 1 at Y=$0AA0 moving down and ordinal
    // 2 at Y=$0B60 moving up. This catches the native bug where a freshly
    // allocated later pool slot executed $8402 in its parent's same object
    // pass, adding one extra bounce. By X=$04AC the first visible burst has
    // produced all three fixed-heading type-$67 rounds.
    {
        sm::PlaySession route(rom);route.reset(1);
        while(route.camera_pixels()<1536u+0x047cu && route.stage_frame()<4000u)
            route.step_60hz({});
        assert(route.camera_pixels()==1536u+0x047cu);
        const auto& live=route.state();
        std::array<const sm::Entity64*,2> child{{nullptr,nullptr}};
        for(const auto& e:live.enemies) if(e.type()==0x2cu && e.raw[0x38]>=1u && e.raw[0x38]<=2u)
            child[e.raw[0x38]-1u]=&e;
        assert(child[0] && child[1]);
        assert(child[0]->y_fixed()==0x0aa0u && child[1]->y_fixed()==0x0b60u);
        const auto vy0=std::int16_t(unsigned(child[0]->raw[11])|(unsigned(child[0]->raw[12])<<8u));
        const auto vy1=std::int16_t(unsigned(child[1]->raw[11])|(unsigned(child[1]->raw[12])<<8u));
        assert(vy0==0x0060 && vy1==-0x0060);
        while(route.camera_pixels()<1536u+0x04acu && route.stage_frame()<4000u)
            route.step_60hz({});
        const auto rounds=std::count_if(route.enemy_bullets().begin(),route.enemy_bullets().end(),
            [](const auto& b){return b.active() && b.type()==0x67u;});
        assert(rounds==3u);
    }
    // Final regular family: six type-$19 terrain walkers. Five start on the
    // ordinary leftward path; the $94 record uses bit 7 to enter from the
    // opposite side with the exact +$0060 horizontal velocity.
    unsigned walkers19=0;bool reverse19=false;
    for(const auto& record:stream.records()) if(record.type==0x19u) {
        sm::GameState game;assert(sm::instantiate_stage0_spawn(rom,record,game,1));
        const auto& e=game.enemies[0];++walkers19;
        assert(e.state()==1u && e.raw[0x20]==0x40u && e.raw[0x18]==0x10u);
        assert(e.raw[0x08]==(record.payload[0]&0x7fu) && e.raw[0x0a]==record.payload[1]);
        const auto vx=std::int16_t(unsigned(e.raw[13])|(unsigned(e.raw[14])<<8));
        if(record.payload[0]&0x80u) {reverse19=true;assert(e.raw[0x22]==1u && e.raw[5]==2u && vx==0x60);}
        else assert(e.raw[0x22]==0u && vx==-0x40);
    }
    assert(walkers19==6u && reverse19);
    {
        sm::GameState game;sm::Stage0Enemies enemies;sm::Stage0Combat combat19;
        sm::SpawnRecord r;r.type=r.raw_type=0x19u;r.payload={0x14u,0x1eu};
        assert(sm::instantiate_stage0_spawn(rom,r,game,1));auto& e=game.enemies[0];
        // Empty support below/front starts the ROM jump arc.
        auto empty=[](const sm::Entity64&,int,int){return false;};
        enemies.step_15hz(rom,game,0,0,false,nullptr,empty);
        assert(e.state()==6u);
        auto vy=std::int16_t(unsigned(e.raw[11])|(unsigned(e.raw[12])<<8));
        assert(vy==-0x0100);
        // Landing returns to patrol with the original leftward velocity.
        auto ground=[](const sm::Entity64&,int xo,int yo){return xo==0x0100 && yo==0x02c0;};
        enemies.step_15hz(rom,game,1,0,false,nullptr,ground);
        assert(e.state()==1u);
        const auto vx=std::int16_t(unsigned(e.raw[13])|(unsigned(e.raw[14])<<8));assert(vx==-0x40);
        // State 5 emits the standard aimed shot through the combat service.
        e.state()=5u;e.raw[0x21]=1u;game.player.set_x_fixed(0x0800u);game.player.set_y_fixed(0x0800u);
        enemies.step_15hz(rom,game,2,0,false,nullptr,ground);assert(e.raw[0x26]==1u);
        std::vector<sm::PlaySound> sounds;combat19.step(rom,game,0,0,0,sounds);
        assert(std::any_of(combat19.bullets().begin(),combat19.bullets().end(),[](const auto& b){return b.type()==0x60u;}));
    }

    // Third regular batch: all seventeen $2F pursuers and ten $31 vertical
    // obstacles, including the conditional $B1 record, instantiate exactly
    // from the stage-2 ROM table.
    unsigned pursuers2f=0,obstacles31=0;
    for(const auto& record:stream.records()) {
        if(record.type!=0x2fu && record.type!=0x31u) continue;
        sm::GameState game;assert(sm::instantiate_stage0_spawn(rom,record,game,1));
        const auto& e=game.enemies[0];
        if(record.type==0x2fu) {
            ++pursuers2f;assert(e.state()==1u);
            assert(bool(e.raw[0x3d])==bool(record.payload[0]&0x80u));
        } else {
            ++obstacles31;assert(record.payload.size()==2u);
            assert(e.state()==0u && e.raw[3]==record.payload[1] && e.raw[5]==(record.payload[1]&1u));
            const auto vy=std::int16_t(unsigned(e.raw[11])|(unsigned(e.raw[12])<<8));
            assert(vy==-0x00a0);
        }
    }
    assert(pursuers2f==17u && obstacles31==10u);
    {
        sm::GameState game;sm::Stage0Enemies enemies;
        sm::SpawnRecord r;r.type=r.raw_type=0x2fu;r.payload={0x10u};
        assert(sm::instantiate_stage0_spawn(rom,r,game,1));
        auto& e=game.enemies[0];e.set_x_fixed(0x1000u);e.set_y_fixed(0x0800u);
        game.player.set_x_fixed(0x0c00u);game.player.set_y_fixed(0x0c00u);
        enemies.step_15hz(rom,game,0,0,false,nullptr);assert(e.state()==2u);
        enemies.step_15hz(rom,game,1,0,false,nullptr);assert(e.state()==3u && e.raw[0x17]==4u);
        const auto vy=std::int16_t(unsigned(e.raw[11])|(unsigned(e.raw[12])<<8));
        const auto vx=std::int16_t(unsigned(e.raw[13])|(unsigned(e.raw[14])<<8));
        assert((vy==0 || std::abs(vy)==0x60) && (vx==0 || std::abs(vx)==0x60) && (vx||vy));
        for(unsigned i=0;i<4u;++i) enemies.step_15hz(rom,game,2+i,0,false,nullptr);
        assert(e.state()==4u && e.raw[0x17]==4u && e.raw[11]==0u && e.raw[12]==0u && e.raw[13]==0u && e.raw[14]==0u);
        for(unsigned i=0;i<4u;++i) enemies.step_15hz(rom,game,6+i,0,false,nullptr);
        assert(e.state()==2u);
    }
    {
        sm::GameState game;sm::Stage0Enemies enemies;
        sm::SpawnRecord r;r.type=r.raw_type=0x31u;r.payload={0x0au,1u};
        assert(sm::instantiate_stage0_spawn(rom,r,game,1));auto& e=game.enemies[0];
        auto probe=[](const sm::Entity64&,int,int){return true;};
        enemies.step_15hz(rom,game,0,0,false,nullptr,probe);
        assert(e.state()==1u);
        auto vy=std::int16_t(unsigned(e.raw[11])|(unsigned(e.raw[12])<<8));assert(vy==0x0100);
        enemies.step_15hz(rom,game,1,0,false,nullptr,probe);
        assert(e.state()==0u);
        vy=std::int16_t(unsigned(e.raw[11])|(unsigned(e.raw[12])<<8));assert(vy==-0x00a0);
    }

    {
        sm::GameState game;game.difficulty=10u;
        sm::SpawnRecord r;r.type=r.raw_type=0x27u;r.payload={10u,2u};
        assert(sm::instantiate_stage0_spawn(rom,r,game,1));
        auto& e=game.enemies[0];e.set_x_fixed(0x1800u);e.set_y_fixed(0x0800u);
        game.player.set_x_fixed(0x0800u);game.player.set_y_fixed(0x1000u);
        sm::Stage0Enemies enemies;
        for(unsigned i=0;i<10u;++i) enemies.step_15hz(rom,game,i,0,false,nullptr);
        const auto vx=std::int16_t(unsigned(e.raw[13])|(unsigned(e.raw[14])<<8));
        const auto vy=std::int16_t(unsigned(e.raw[11])|(unsigned(e.raw[12])<<8));
        assert(vx<0 && vy>0 && e.raw[5]==1u);
    }
    {
        sm::GameState game;
        sm::SpawnRecord r;r.type=r.raw_type=0x2du;r.payload={12u,0u};
        assert(sm::instantiate_stage0_spawn(rom,r,game,1));
        sm::Stage0Enemies enemies;
        for(unsigned i=0;i<40u;++i) enemies.step_15hz(rom,game,i,0,false,nullptr);
        assert(game.enemies[0].state()==1u && game.enemies[0].raw[0x17]==8u);
    }

    // Type $5F is a parser command, not an entity. The ROM has four pulse-on
    // commands, four pulse-off commands, then one selector-3 object-pool clear.
    {
        unsigned on=0,off=0,clear=0,total=0;
        for(const auto& record:stream.records()) if(record.type==0x5fu) {
            ++total;const auto c=sm::decode_stage_scene_command(record);
            if(c.kind==sm::StageSceneCommandKind::PalettePulse) c.enabled?++on:++off;
            else if(c.kind==sm::StageSceneCommandKind::ClearObjects) ++clear;
            else assert(false);
            sm::GameState game;assert(!sm::instantiate_stage0_spawn(rom,record,game,1));
        }
        assert(total==9u && on==4u && off==4u && clear==1u);
        sm::PlaySession control_run(rom);control_run.reset(1);
        bool previous=control_run.scene_palette_active();unsigned transitions=0,max_phase=0;
        while(!control_run.at_fight_gate() && control_run.stage_frame()<20000u) {
            control_run.step_60hz({});
            const bool active=control_run.scene_palette_active();
            if(active!=previous) {++transitions;previous=active;}
            max_phase=std::max<unsigned>(max_phase,control_run.scene_palette_phase());
        }
        assert(control_run.at_fight_gate() && transitions==8u && !control_run.scene_palette_active());
        assert(max_phase>=9u);
        const auto& live=control_run.state();
        assert(std::count_if(live.enemies.begin(),live.enemies.end(),[](const auto& e){return e.type()==0x7au;})==1);
        assert(std::count_if(live.enemies.begin(),live.enemies.end(),[](const auto& e){return e.type()==0x3bu;})==6);
        assert(control_run.boss_music_active());
    }

    // The shared $6A destruction countdown must advance stage 2 as well.
    // Use the real stage-2 route and real $7A vulnerability bit, then invoke
    // the already-tested ROM subtraction/death conversion directly so this
    // check is independent of player aim and weapon timing.
    {
        sm::PlaySession completion(rom);completion.reset(1);
        sm::Entity64* boss=nullptr;
        while(completion.stage_frame()<20000u && !boss) {
            completion.step_60hz({});
            auto& mutable_state=const_cast<sm::GameState&>(completion.state());
            auto it=std::find_if(mutable_state.enemies.begin(),mutable_state.enemies.end(),
                [](auto& e){return e.type()==0x7au && (e.raw[0x14]&0x80u);});
            if(it!=mutable_state.enemies.end()) boss=&*it;
        }
        assert(boss && completion.boss_music_active());
        const unsigned death_frame=completion.frame();
        assert(sm::apply_stage0_damage(rom,*boss,std::uint8_t(boss->raw[0x16]+1u))==
               sm::Stage0DamageResult::Destroyed);
        assert(boss->type()==0x6au);
        bool saw_music_stop=false;
        while(completion.stage_index()==1u && completion.frame()-death_frame<300u) {
            completion.step_60hz({});
            saw_music_stop|=!completion.music_playing();
        }
        assert(saw_music_stop && completion.stage_index()==2u);
        assert(completion.music_playing() && !completion.boss_music_active());
    }

    // Final-sector type $3C: five actual ROM objects, selectors 0..4.
    // Selector zero also owns the fixed-bank $6C75 raster anchor.
    {
        unsigned count3c=0;std::array<bool,5> selectors{};
        for(const auto& record:stream.records()) if(record.type==0x3cu) {
            sm::GameState game;assert(sm::instantiate_stage0_spawn(rom,record,game,1));
            const auto& e=game.enemies[0];++count3c;
            assert(record.payload.size()==2u && e.state()==1u);
            assert(e.raw[0x08]==record.payload[0] && e.raw[0x0a]==0x20u);
            assert(e.raw[0x06]==record.payload[1] && e.raw[0x06]<selectors.size());
            selectors[e.raw[0x06]]=true;
            assert(e.flags15()==0x46u && e.raw[0x16]==1u);
            assert(!sm::decode_stage0_tile_visuals(rom,e).empty());
        }
        assert(count3c==5u && std::all_of(selectors.begin(),selectors.end(),[](bool v){return v;}));
        sm::Stage0BackgroundStream raster(rom);raster.reset_stage(1);
        const auto wx=raster.world_x();const auto wy=raster.world_y();
        raster.apply_object_raster_anchor(0x20a0u,0x0120u,0xfbu);
        assert((raster.ca1c()&0xffu)==0x60u && (raster.ca1a()&0xffu)==0xe0u);
        assert(raster.scroll_row()==0x1fu && raster.presentation_state().r18==0x0bu);
        assert(raster.world_x()==wx && raster.world_y()==wy);
    }

    // Stage-2 wave generator: one $53 controller creates two initial $2A
    // lanes, then repeats a top-entry child on the original $40-tick cadence.
    {
        const auto gen=std::find_if(stream.records().begin(),stream.records().end(),[](const auto& r){return r.type==0x53u;});
        assert(gen!=stream.records().end() && gen->control==0x88u && gen->payload==std::vector<std::uint8_t>({2u,0u,2u,0x2au}));
        sm::GameState game;sm::Stage0Enemies enemies;
        assert(sm::instantiate_stage0_spawn(rom,*gen,game,1));auto& parent=game.enemies[0];
        assert(parent.state()==0u && parent.raw[0x34]==0x80u && parent.raw[0x08]==0xfcu);
        enemies.step_15hz(rom,game,0,0,false,nullptr);assert(parent.state()==1u);
        enemies.step_15hz(rom,game,1,0,false,nullptr);assert(parent.state()==2u && parent.raw[0x18]==0x40u);
        auto children=[&] {return unsigned(std::count_if(game.enemies.begin(),game.enemies.end(),[](const auto& e){return e.type()==0x2au;}));};
        assert(children()==2u && parent.raw[0x37]==2u);
        bool lane1=false,lane16=false;
        for(const auto& c:game.enemies) if(c.type()==0x2au) {
            lane1|=c.raw[0x08]==1u;lane16|=c.raw[0x08]==0x10u;
            assert(c.raw[0x34]==parent.raw[0x2d]);
            const auto vy=std::int16_t(unsigned(c.raw[11])|(unsigned(c.raw[12])<<8));assert(vy==0x40);
        }
        assert(lane1 && lane16);
        for(unsigned t=0;t<64u;++t) enemies.step_15hz(rom,game,2u+t,0,false,nullptr);
        assert(children()==3u && parent.raw[0x18]==0x40u && parent.raw[0x37]==3u);
        assert(std::any_of(game.enemies.begin(),game.enemies.end(),[](const auto& c){return c.type()==0x2au && c.raw[0x08]==0xfcu;}));
        // $2A/$53 use their own $6C3A horizontal camera compensation and do
        // not consume the stage's vertical camera delta.
        const auto px=parent.x_fixed(),py=parent.y_fixed();
        sm::step_stage0_object_scroll_15hz(game,0x0100,0x0100,&rom);
        assert(parent.x_fixed()==std::uint16_t(px-0x20u) && parent.y_fixed()==py);
    }

    // Live unmodified OpenMSX boss trace at matching X positions. These
    // values pin the animation timer, attack timer/cursor and vulnerability
    // phase to the original rather than merely checking that the boss moves.
    {
        sm::PlaySession traced(rom);traced.reset(1);
        struct BossPoint {std::uint16_t x;std::uint8_t f6,t17,t18,p20,p21;};
        constexpr std::array<BossPoint,5> points{{
            {0x1fc0u,4u,0x03u,0x18u,0x01u,0x00u},
            {0x1c80u,1u,0x04u,0x0bu,0x05u,0x00u},
            {0x1940u,3u,0x01u,0x1eu,0x07u,0x01u},
            {0x1600u,1u,0x02u,0x11u,0x0au,0x01u},
            {0x1540u,2u,0x17u,0x0eu,0x0bu,0x01u},
        }};
        unsigned next=0;
        while(next<points.size() && traced.stage_frame()<13000u) {
            traced.step_60hz({});
            const auto it=std::find_if(traced.state().enemies.begin(),traced.state().enemies.end(),
                [](const auto& e){return e.type()==0x7au;});
            if(it==traced.state().enemies.end() || it->x_fixed()!=points[next].x) continue;
            const auto& q=points[next++];
            assert(it->raw[0x06]==q.f6 && it->raw[0x17]==q.t17 &&
                   it->raw[0x18]==q.t18 && it->raw[0x20]==q.p20 &&
                   it->raw[0x21]==q.p21);
            if(it->x_fixed()==0x1940u) {
                assert(it->raw[0x37]==6u && it->raw[0x3b]==7u);
                assert(std::count_if(traced.state().enemies.begin(),traced.state().enemies.end(),
                    [](const auto& c){return c.type()==0x3bu;})==6);
            }
        }
        assert(next==points.size());
    }

    // Stage-2 boss $7A: seven $3B links are created, six survive the original SAT/resource pass.
    {
        const auto boss_record=std::find_if(stream.records().begin(),stream.records().end(),
            [](const auto& r){return r.type==0x7au;});
        assert(boss_record!=stream.records().end());
        assert(boss_record->control==0x88u && boss_record->payload==std::vector<std::uint8_t>({2u,8u,2u,0x3bu}));
        sm::GameState game;sm::Stage0Enemies enemies;sm::Stage0Combat boss_combat;
        assert(sm::instantiate_stage0_spawn(rom,*boss_record,game,1));
        auto& boss=game.enemies[0];
        assert(boss.state()==0u && boss.raw[0x0a]==0x20u && boss.raw[0x08]==8u && boss.raw[0x34]==0x80u);
        enemies.step_15hz(rom,game,0,0,false,nullptr);
        assert(boss.state()==1u && boss.raw[0x16]==0x20u && boss.raw[0x06]==4u);
        assert((boss.raw[0x14]&0x80u)!=0u && boss.raw[0x37]==6u && boss.raw[0x3b]==7u);
        assert(!sm::decode_stage0_tile_visuals(rom,boss).empty());
        static constexpr std::array<int,7> ox{-3,-7,-10,-13,-16,-18,-21};
        static constexpr std::array<int,7> oy{-3,-3,-3,-3,-2,-2,-2};
        static constexpr std::array<unsigned,7> wait{0x40,0x80,0x20,0x40,0x30,0x80,0x08};
        unsigned children=0;
        for(const auto& c:game.enemies) if(c.type()==0x3bu) {
            ++children;const unsigned o=c.raw[0x38]-1u;assert(o<7u);
            assert(c.state()==1u && c.raw[0x34]==boss.raw[0x2d]);
            assert(int(std::int16_t(c.x_fixed()-boss.x_fixed()))==ox[o]*0x100);
            assert(int(std::int16_t(c.y_fixed()-boss.y_fixed()))==oy[o]*0x100);
            assert(c.raw[0x17]==wait[o] && c.raw[0x18]==8u);
            assert(c.raw[0x20]==(o>=4u?1u:0u));
            assert(!sm::decode_stage0_tile_visuals(rom,c).empty());
        }
        assert(children==6u);
        assert(std::none_of(game.enemies.begin(),game.enemies.end(),
            [](const auto& c){return c.type()==0x3bu && c.raw[0x38]==7u;}));
        // The initial frame-4 damage window lasts three object ticks; the next
        // ROM animation entry closes it and selects tile frame zero.
        enemies.step_15hz(rom,game,1,0,false,nullptr);
        enemies.step_15hz(rom,game,2,0,false,nullptr);
        enemies.step_15hz(rom,game,3,0,false,nullptr);
        assert(boss.raw[0x06]==0u && (boss.raw[0x14]&0x80u)==0u);
        // Advance to a later frame-4 window and prove the original subtraction-
        // carry death rule: exact HP is a hit, one additional point is fatal.
        for(unsigned t=4;t<128u && (boss.raw[0x14]&0x80u)==0u;++t)
            enemies.step_15hz(rom,game,t,0,false,nullptr);
        assert((boss.raw[0x14]&0x80u)!=0u);
        auto damage_copy=boss;
        assert(sm::apply_stage0_damage(rom,damage_copy,0x20u)==sm::Stage0DamageResult::Hit);
        assert(sm::apply_stage0_damage(rom,damage_copy,1u)==sm::Stage0DamageResult::Destroyed);
        assert(damage_copy.type()==0x6au);
        // Normal-route attack phases 5/6 feed the combat projectile service.
        game.player.set_x_fixed(0x0800u);game.player.set_y_fixed(0x0a00u);
        bool fired=false;std::vector<sm::PlaySound> sounds;
        for(unsigned t=128;t<512u;++t) {
            enemies.step_15hz(rom,game,t,0,false,nullptr);
            boss_combat.step(rom,game,t*4u,0,0,sounds);
            fired|=std::any_of(boss_combat.bullets().begin(),boss_combat.bullets().end(),
                               [](const auto& b){return b.active();});
        }
        assert(fired);
    }

    // Exercise the restored attack through the real combat service, on both
    // sides of the ceiling/floor mounting, rather than calling a shot helper.
    for(unsigned upside_down=0;upside_down<2u;++upside_down) {
        sm::GameState game;game.difficulty=15u;
        sm::SpawnRecord record;record.type=record.raw_type=0x29u;
        record.payload={std::uint8_t(13u|(upside_down?128u:0u))};
        assert(sm::instantiate_stage0_spawn(rom,record,game,1));
        game.enemies[0].set_x_fixed(0x1000u);
        game.player.set_x_fixed(0x0800u);
        game.player.set_y_fixed(upside_down?0x1100u:0x0900u);
        sm::Stage0Combat attack;std::vector<sm::PlaySound> sounds;
        bool fired=false;
        for(unsigned f=0;f<512u;++f) {
            attack.step(rom,game,f,0,0,sounds);
            fired|=std::any_of(attack.bullets().begin(),attack.bullets().end(),
                              [](const auto& shot){return shot.active();});
        }
        assert(fired);
        assert(std::find(sounds.begin(),sounds.end(),sm::PlaySound::EnemyShot)!=sounds.end());
    }
    std::cout<<"Stage 2: regular spawns, controllers, final objects and $7A boss core PASS\n";
}
