#include "stage0_enemies.hpp"
#include "stage0_combat.hpp"
#include "spawn.hpp"
#ifdef NDEBUG
#undef NDEBUG
#endif
#include <algorithm>
#include <array>
#include <cassert>
#include <cstdint>
#include <iostream>

namespace {
const sm::SpawnRecord& first_type(const sm::StageSpawnStream& stream,std::uint8_t type) {
    auto it=std::find_if(stream.records().begin(),stream.records().end(),
        [=](const auto& r){return r.type==type;});
    assert(it!=stream.records().end());
    return *it;
}
int sw(const sm::Entity64& e,unsigned p) {
    return std::int16_t(unsigned(e.raw[p])|(unsigned(e.raw[p+1])<<8u));
}
}

int main(int argc,char** argv) {
    if(argc!=2) return 2;
    sm::Rom rom(argv[1]);

    const auto s5=sm::StageSpawnStream::decode_stage(rom,4u);
    const auto s6=sm::StageSpawnStream::decode_stage(rom,5u);
    const auto s8=sm::StageSpawnStream::decode_stage(rom,7u);
    const auto s9=sm::StageSpawnStream::decode_stage(rom,8u);

    // $41: first Stage-5 program is payload 04,01. $8DA4[1]=$18.
    {
        sm::GameState g;sm::Stage0Enemies logic;
        assert(logic.spawn(rom,first_type(s5,0x41u),g,1u));
        auto& e=g.enemies[0];
        assert(e.type()==0x41u && e.state()==1u);
        assert(e.raw[0x20]==1u && e.raw[0x17]==0x18u);
        auto vis=sm::decode_stage0_tile_visuals(rom,e);
        assert(vis.size()==2u);
        assert(vis[0].cols==4u && vis[0].rows==4u);
        assert(vis[1].cols==4u && vis[1].rows==4u);
        for(unsigned t=0;t<24u;++t) logic.step_15hz(rom,g,t,0,true,nullptr);
        assert(e.raw[0x06]==8u && e.raw[0x21]==1u);
    }

    // $21: Stage-5 stream records are the fixed-$4FF1 formation
    // controllers, not visible flyers themselves. Selectors 0/1/2 map to the
    // original rows $04/$0B/$11. State 6 emits exactly three children: first
    // after $0A ticks, then every $0E ticks. A child enters at X=$1F and the
    // first handler installs the traced -$00E0 X velocity.
    {
        static constexpr std::array<std::uint8_t,3> rows{0x04u,0x0bu,0x11u};
        for(unsigned selector=0;selector<3u;++selector) {
            const auto it=std::find_if(s5.records().begin(),s5.records().end(),
                [=](const auto& r){return r.type==0x21u && !r.type_flag() &&
                                         !r.payload.empty() && r.payload[0]==selector;});
            assert(it!=s5.records().end());
            sm::GameState g;sm::Stage0Enemies logic;
            assert(logic.spawn(rom,*it,g,1u));
            auto& ctl=g.enemies[0];
            assert(ctl.type()==0x21u && ctl.state()==5u && ctl.flags15()==0u);
            logic.step_15hz(rom,g,0u,0u,true,nullptr);
            assert(ctl.state()==6u && ctl.raw[0x21]==rows[selector] &&
                   ctl.raw[0x22]==3u && ctl.raw[0x18]==0x0au);
            for(unsigned t=1u;t<=10u;++t)
                logic.step_15hz(rom,g,t,0u,true,nullptr);
            auto child=std::find_if(g.enemies.begin()+1,g.enemies.end(),
                [](const auto& e){return e.type()==0x21u && e.flags15()!=0u;});
            assert(child!=g.enemies.end());
            assert(child->state()==1u && child->x_fixed()==0x1f00u &&
                   child->y_fixed()==std::uint16_t(rows[selector])<<8u &&
                   sw(*child,13)==-0x00e0);
            assert(ctl.raw[0x22]==2u && ctl.raw[0x18]==0x0eu);
        }
    }

    // $49: 84,1F means Y=4, X=1F, upward at -$40. A terrain hit pauses,
    // then the saved velocity is negated and the direction bit flips.
    {
        sm::GameState g;sm::Stage0Enemies logic;
        assert(logic.spawn(rom,first_type(s5,0x49u),g,1u));
        auto& e=g.enemies[0];
        assert(e.type()==0x49u && e.state()==1u);
        assert(e.y_fixed()==0x0400u && e.x_fixed()==0x1f00u);
        assert(e.raw[0x21]==1u && sw(e,11)==-0x40);
        sm::Stage0Enemies::TerrainProbe hit=[](const sm::Entity64&,int,int){return std::uint8_t(1);};
        logic.step_15hz(rom,g,0,0,true,nullptr,hit,{});
        assert(e.state()==2u && sw(e,11)==0);
        e.raw[0x17]=1u;
        logic.step_15hz(rom,g,1,0,true,nullptr,{},{});
        assert(e.state()==1u && e.raw[0x21]==0u && sw(e,11)==0x40);
    }

    // $51: Stage-5 reuses the generic wave controller. The first record
    // births type-$18 at row $06 / X=$1F after the encoded first delay.
    {
        const auto& rec=first_type(s5,0x51u);
        sm::GameState g;sm::Stage0Enemies logic;
        assert(logic.spawn(rom,rec,g,1u));
        assert(g.enemies[0].type()==0x51u && g.enemies[0].state()==2u);
        for(unsigned t=0;t<4u;++t) logic.step_15hz(rom,g,t,rec.trigger,true,nullptr);
        auto child=std::find_if(g.enemies.begin(),g.enemies.end(),
            [](const auto& e){return e.type()==0x18u;});
        assert(child!=g.enemies.end() && child->x_fixed()==0x1f00u &&
               child->y_fixed()==0x0600u && child->raw[0x34]==1u);
        assert(g.enemies[0].raw[0x34]==0x80u);
    }

    // Stage 6 $51 records emit type-$44 children. These were previously
    // rejected because the native wave whitelist only knew the early flyer
    // families. First record targets Y=$12/X=$10 from spawn Y=$09/X=$1F.
    {
        const auto& rec=first_type(s6,0x51u);
        assert(rec.payload.size()>=10u && rec.payload[7]==0x44u);
        sm::GameState g;sm::Stage0Enemies logic;
        assert(logic.spawn(rom,rec,g,1u));
        for(unsigned t=0;t<5u;++t) logic.step_15hz(rom,g,t,rec.trigger,true,nullptr);
        auto child=std::find_if(g.enemies.begin(),g.enemies.end(),
            [](const auto& e){return e.type()==0x44u;});
        assert(child!=g.enemies.end());
        assert(child->state()==1u && child->x_fixed()==0x1f00u &&
               child->y_fixed()==0x0900u && child->raw[0x17]==0x1au);
        assert(sw(*child,13)==-0x70 && sw(*child,11)==0x6c);

        // Finish the approach, hold the crossing condition false, then expire
        // the 15-tick attack timer. $8FCD queues exactly one aimed shot.
        g.player.set_y_fixed(0x1600u);
        child->raw[0x17]=1u;
        logic.step_15hz(rom,g,5u,rec.trigger,true,nullptr);
        assert(child->state()==2u && child->raw[0x17]==0x0fu &&
               child->raw[0x21]==0u);
        child->raw[0x17]=1u;child->raw[0x26]=0u;
        logic.step_15hz(rom,g,6u,rec.trigger,true,nullptr);
        assert(child->state()==2u && child->raw[0x26]==1u);

        sm::Stage0Combat combat;combat.reset();
        std::vector<sm::PlaySound> sounds;
        combat.step(rom,g,0u,0,0,sounds);
        assert(child->raw[0x26]==0u);
        assert(std::any_of(combat.bullets().begin(),combat.bullets().end(),
                           [](const auto& b){return b.active();}));
    }

    // $5F is a parser command, not a live enemy. Stage 5's sole selector 3
    // record clears the object pool before the boss section.
    {
        const auto& rec=first_type(s5,0x5fu);
        const auto cmd=sm::decode_stage_scene_command(rec);
        assert(cmd.kind==sm::StageSceneCommandKind::ClearObjects);
    }

    // $0E: Stage-6 fixed-bank barrier. The two stream rows select the
    // upper/lower matrix family. It holds closed for $32 ticks, grows through
    // two six-tick phases, then remains in state 3. Fatal damage stays type
    // $0E and runs the ROM-specific 4->5->6 open/wreck sequence.
    {
        auto upper=std::find_if(s6.records().begin(),s6.records().end(),
            [](const auto& r){return r.type==0x0eu && !r.payload.empty() && r.payload[0]==0x03u;});
        auto lower=std::find_if(s6.records().begin(),s6.records().end(),
            [](const auto& r){return r.type==0x0eu && !r.payload.empty() && r.payload[0]==0x0du;});
        assert(upper!=s6.records().end() && lower!=s6.records().end());
        for(const auto* rec:{&*upper,&*lower}) {
            sm::GameState g;sm::Stage0Enemies logic;
            assert(logic.spawn(rom,*rec,g,1u));
            auto& e=g.enemies[0];
            const auto lower_half=rec->payload[0]>=8u;
            assert(e.type()==0x0eu && e.state()==0u && e.raw[0x17]==0x32u);
            assert(e.raw[0x06]==(lower_half?4u:0u));
            auto vis=sm::decode_stage0_tile_visuals(rom,e);
            assert(vis.size()==1u && vis[0].cols==8u && vis[0].rows==5u);
            for(unsigned t=0;t<50u;++t) logic.step_15hz(rom,g,t,0,true,nullptr);
            assert(e.state()==1u && e.raw[0x06]==(lower_half?5u:1u) && e.raw[0x17]==6u);
            for(unsigned t=50u;t<56u;++t) logic.step_15hz(rom,g,t,0,true,nullptr);
            assert(e.state()==2u && e.raw[0x06]==(lower_half?6u:2u) && e.raw[0x17]==6u);
            for(unsigned t=56u;t<62u;++t) logic.step_15hz(rom,g,t,0,true,nullptr);
            assert(e.state()==3u && e.raw[0x06]==(lower_half?6u:2u));
            const auto saved=e.raw[0x06],hp=e.raw[0x16];
            assert(sm::apply_stage0_damage(rom,e,std::uint8_t(hp+1u))==
                   sm::Stage0DamageResult::Destroyed);
            assert(e.type()==0x0eu && e.state()==4u && e.raw[0x05]==saved &&
                   e.raw[0x06]==8u);
            logic.step_15hz(rom,g,63u,0,true,nullptr);
            assert(e.state()==5u && e.raw[0x06]==9u);
            logic.step_15hz(rom,g,64u,0,true,nullptr);
            assert(e.state()==6u && e.raw[0x06]==std::uint8_t(saved+1u));
        }
    }

    // $2A: Stage 6 also contains one direct, difficulty-gated copy of the
    // same constant-downward actor used by the $53 generator. It was decoded
    // but rejected by the native spawn whitelist.
    {
        auto it=std::find_if(s6.records().begin(),s6.records().end(),
            [](const auto& r){return r.type==0x2au;});
        assert(it!=s6.records().end() && it->type_flag());
        sm::GameState g;sm::Stage0Enemies logic;
        assert(logic.spawn(rom,*it,g,1u));
        auto& e=g.enemies[0];
        assert(e.type()==0x2au && e.state()==0u && e.x_fixed()==0x2000u &&
               e.y_fixed()==0x0800u && sw(e,11)==0x40);
        logic.step_15hz(rom,g,0u,0u,true,nullptr);
        assert(sw(e,11)==0x40);
    }

    // $73: Stage-6 dispatch is JP $82CA, the same aimed turret logic as $29.
    // Its different metadata makes it a tile actor; the first frame is 2x2.
    {
        sm::GameState g;sm::Stage0Enemies logic;
        assert(logic.spawn(rom,first_type(s6,0x73u),g,1u));
        auto& e=g.enemies[0];
        assert(e.type()==0x73u && e.state()==1u && e.raw[0x17]==0x20u);
        auto vis=sm::decode_stage0_tile_visuals(rom,e);
        assert(vis.size()==1u && vis[0].cols==2u && vis[0].rows==2u);

        // $8304 re-aims the tile frame every (CA02+slot)&7==0 call. Player
        // directly to the right selects direction 4: lower table -> frame 3,
        // upper table -> frame 7.
        e.set_x_fixed(0x1000u);e.set_y_fixed(0x0800u);
        g.player.set_x_fixed(0x1800u);g.player.set_y_fixed(0x0800u);
        e.raw[0x2d]=3u;e.raw[0x20]=0u;
        logic.step_15hz(rom,g,5u,0u,true,nullptr);
        assert(e.raw[0x06]==3u);
        e.raw[0x20]=1u;
        logic.step_15hz(rom,g,13u,0u,true,nullptr);
        assert(e.raw[0x06]==7u);

        sm::Stage0Combat combat;combat.reset();
        std::array<sm::Entity64,4> turret{};
        for(auto& t:turret) {t.type()=0x73u;combat.spawned(t);}
        assert(turret[0].raw[0x3d]==0u && turret[1].raw[0x3d]==0u &&
               turret[2].raw[0x3d]==0u && turret[3].raw[0x3d]==1u);
    }

    // $50: first Stage-8 record is 06,1F -> +$40 vertical accumulator.
    {
        sm::GameState g;sm::Stage0Enemies logic;
        assert(logic.spawn(rom,first_type(s8,0x50u),g,1u));
        auto& e=g.enemies[0];
        assert(e.type()==0x50u && e.state()==1u);
        assert(e.x_fixed()==0x1f00u && e.y_fixed()==0x0600u);
        assert(sw(e,0x21)==0x40);
        for(unsigned t=0;t<4u;++t) logic.step_15hz(rom,g,t,0,true,nullptr);
        assert(e.raw[0x08]==7u && e.raw[0x23]==0u && e.raw[0x24]==7u);
    }

    // $4E: position/timer come from the ROM PRNG, then after six animation
    // wraps it arms damage and enters accelerating fall state 2.
    {
        sm::GameState g;sm::Stage0Enemies logic;
        assert(logic.spawn(rom,first_type(s9,0x4eu),g,1u));
        auto& e=g.enemies[0];
        assert(e.type()==0x4eu && e.state()==0u);
        logic.step_15hz(rom,g,0,0,true,nullptr);
        assert(e.state()==1u && e.raw[0x20]>=1u && e.raw[0x20]<=4u);
        assert(e.raw[0x08]==2u || e.raw[0x08]==4u ||
               e.raw[0x08]==6u || e.raw[0x08]==8u);
        for(unsigned t=1;t<200u && e.state()!=2u;++t)
            logic.step_15hz(rom,g,t,0,true,nullptr);
        assert(e.state()==2u && (e.raw[0x14]&0x80u));
        assert(e.raw[0x05]==6u && sw(e,11)==0x40 && sw(e,15)==0x10);
        logic.step_15hz(rom,g,201,0,true,nullptr);
        assert(e.raw[0x05]==7u && sw(e,11)==0x50);
    }

    // Stage 9's sole $51 controller is a repeating type-$4C wave.
    // $4C dispatches directly to the same $9477 state machine as $4E; it was
    // previously rejected by the early-game-only wave whitelist.
    {
        const auto& rec=first_type(s9,0x51u);
        assert(rec.payload.size()>=10u && rec.payload[9]==0x4cu);
        sm::GameState g;sm::Stage0Enemies logic;
        assert(logic.spawn(rom,rec,g,1u));
        for(unsigned t=0;t<4u;++t) logic.step_15hz(rom,g,t,rec.trigger,true,nullptr);
        auto child=std::find_if(g.enemies.begin(),g.enemies.end(),
            [](const auto& e){return e.type()==0x4cu;});
        assert(child!=g.enemies.end());
        assert(child->state()==1u && child->raw[0x34]==1u);
        assert(child->raw[0x20]>=1u && child->raw[0x20]<=4u);
        assert(child->raw[0x08]==2u || child->raw[0x08]==4u ||
               child->raw[0x08]==6u || child->raw[0x08]==8u);
        for(unsigned t=4u;t<220u && child->active() && child->state()!=2u;++t)
            logic.step_15hz(rom,g,t,rec.trigger,true,nullptr);
        assert(child->active() && child->state()==2u);
        assert((child->raw[0x14]&0x80u) && sw(*child,11)==0x40 &&
               sw(*child,15)==0x10);
    }

    // $5A: Stage-9 contains the paired upper/lower growth walls. OpenMSX
    // Stage-9 traces show frame 10->17 for payload $82 and frame 0->9 for
    // payload $15, one step per CA02&3==0 call after X crosses $15.
    {
        auto upper=std::find_if(s9.records().begin(),s9.records().end(),
            [](const auto& r){return r.type==0x5au && !r.payload.empty() && r.payload[0]==0x82u;});
        auto lower=std::find_if(s9.records().begin(),s9.records().end(),
            [](const auto& r){return r.type==0x5au && !r.payload.empty() && r.payload[0]==0x15u;});
        assert(upper!=s9.records().end() && lower!=s9.records().end());
        for(const auto pair:{std::pair{&*upper,17u},std::pair{&*lower,9u}}) {
            sm::GameState g;sm::Stage0Enemies logic;
            assert(logic.spawn(rom,*pair.first,g,1u));
            auto& e=g.enemies[0];
            const bool top=pair.first->payload[0]&0x80u;
            assert(e.type()==0x5au && e.state()==1u && e.x_fixed()==0x2000u);
            assert(e.y_fixed()==std::uint16_t(top?0x0200u:0x1500u));
            assert(e.raw[0x06]==(top?0x0au:0u));
            assert(e.raw[0x17]==(top?8u:0x0au));
            logic.step_15hz(rom,g,0u,0u,true,nullptr);
            assert(e.raw[0x06]==(top?0x0au:0u)); // still right of X=$15
            e.set_x_fixed(0x14e0u);
            for(unsigned t=4u;t<80u && e.raw[0x17]!=1u;t+=4u)
                logic.step_15hz(rom,g,t,0u,true,nullptr);
            assert(e.raw[0x06]==pair.second && e.raw[0x17]==1u);
            const auto held=e.raw[0x06];
            logic.step_15hz(rom,g,84u,0u,true,nullptr);
            assert(e.raw[0x06]==held && e.raw[0x17]==1u);
            const auto vis=sm::decode_stage0_tile_visuals(rom,e);
            assert(vis.size()==1u && vis[0].cols==5u);
            assert(vis[0].rows==(top?7u:9u));
        }
    }

    std::cout<<"Late level enemies PASS: Stage-5 $21/$41/$49/$51; Stage-6 $0E/$2A/$44/$51/$73; Stage-8 $50; Stage-9 $4C/$4E/$51/$5A\n";
}
