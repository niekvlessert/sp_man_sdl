#include "play_session.hpp"
#include "stage0_enemies.hpp"
#include "spawn.hpp"
#include "rom.hpp"
#include "assets.hpp"
#ifdef NDEBUG
#undef NDEBUG
#endif
#include <algorithm>
#include <array>
#include <cassert>
#include <cstdint>
#include <iostream>

namespace {
const sm::SpawnRecord& find_type(const sm::StageSpawnStream& stream,std::uint8_t type) {
    const auto it=std::find_if(stream.records().begin(),stream.records().end(),
        [=](const auto& r){return r.type==type;});
    assert(it!=stream.records().end());
    return *it;
}
std::uint16_t be(const sm::Entity64& e,unsigned p) {
    return std::uint16_t((unsigned(e.raw[p])<<8u)|e.raw[p+1u]);
}
}

int main(int argc,char** argv) {
    if(argc!=2) return 2;
    sm::Rom rom(argv[1]);

    // Stage 6 boss: type $7B, bank06 $B513. The script record is the final
    // ordinary boss record immediately before the two $7C scene controllers.
    const auto s6=sm::StageSpawnStream::decode_stage(rom,5u);

    // $7C boss escorts: two extended records create mirrored eight-segment
    // chains. Validate the first ROM path integration tick byte-for-byte
    // against the OpenMSX trace around trigger $502A.
    for(unsigned variant=0;variant<2u;++variant) {
        const auto it=std::find_if(s6.records().begin(),s6.records().end(),
            [=](const auto& r){return r.type==0x7cu && r.payload.size()>=2u &&
                                      r.payload[1]==variant;});
        assert(it!=s6.records().end());
        assert(it->trigger==0x502au && it->control==0x88u);
        assert(it->payload.size()==4u && it->payload[0]==2u &&
               it->payload[2]==2u && it->payload[3]==0x7cu);

        sm::GameState chain_game;sm::Stage0Enemies chain_logic;
        assert(chain_logic.spawn(rom,*it,chain_game,1u));
        auto& parent=chain_game.enemies[0];
        assert(parent.state()==0u && parent.raw[0x03]==variant);
        chain_logic.step_15hz(rom,chain_game,0u,0u,false,nullptr);
        assert(chain_game.active_enemy_count()==8u);
        assert(parent.state()==1u && parent.raw[0x34]==0x80u &&
               parent.raw[0x17]==7u && parent.y_fixed()==0x1700u);
        assert(parent.x_fixed()==(variant?0x1900u:0x0500u));
        for(unsigned n=1;n<8u;++n) {
            const auto& child=chain_game.enemies[n];
            assert(child.type()==0x7cu && child.state()==1u);
            assert(child.x_fixed()==parent.x_fixed() && child.y_fixed()==0x1700u);
            assert(child.raw[0x34]==parent.raw[0x2d]);
            assert(child.raw[0x38]==n);
        }

        chain_logic.step_15hz(rom,chain_game,1u,0u,false,nullptr);
        if(!variant) {
            assert(be(parent,0x21)==0x0300u);
            assert(be(chain_game.enemies[1],0x21)==0x0480u);
            assert(be(chain_game.enemies[2],0x21)==0x0780u);
            assert(be(chain_game.enemies[3],0x21)==0x0c00u);
            assert(chain_game.enemies[1].x_fixed()==0x06bcu &&
                   chain_game.enemies[1].y_fixed()==0x172bu);
            assert(chain_game.enemies[2].x_fixed()==0x0873u &&
                   chain_game.enemies[2].y_fixed()==0x1778u);
        } else {
            assert(be(parent,0x21)==0x0600u);
            assert(be(chain_game.enemies[1],0x21)==0x0480u);
            assert(be(chain_game.enemies[2],0x21)==0x0180u);
            assert(be(chain_game.enemies[3],0x21)==0xfd00u);
            assert(chain_game.enemies[1].x_fixed()==0x1abcu &&
                   chain_game.enemies[1].y_fixed()==0x172bu);
            assert(chain_game.enemies[2].x_fixed()==0x1c7au &&
                   chain_game.enemies[2].y_fixed()==0x1735u);
        }
    }

    const auto& r6=find_type(s6,0x7bu);
    assert(r6.trigger==0x5029u && r6.control==5u);
    assert(r6.payload.size()==1u && r6.payload[0]==0xffu);
    const auto meta=sm::decode_spawn_type_metadata(rom,0x7bu);
    assert((meta.bytes==std::array<std::uint8_t,4>{0x0cu,0x8cu,0x14u,0xa0u}));

    sm::GameState game;
    sm::Stage0Enemies logic;
    std::vector<sm::PlaySound> sounds;
    assert(logic.spawn(rom,r6,game,1u));
    auto& boss=game.enemies[0];
    assert(boss.type()==0x7bu && boss.state()==0u);
    assert(boss.x_fixed()==0x0700u && boss.y_fixed()==0x1400u);
    assert(boss.raw[0x16]==0xa0u && !(boss.flags15()&1u));

    // A closed shell must not accept shots anywhere across its tile body.
    sm::Entity64 probe;probe.type()=2u;
    for(unsigned y=0;y<192u;y+=4u) for(unsigned x=0;x<256u;x+=4u) {
        probe.set_x_fixed(std::uint16_t(x*32u));probe.set_y_fixed(std::uint16_t(y*32u));
        assert(!sm::stage0_sprite_overlap(rom,probe,boss));
    }
    auto open=boss;open.set_y_fixed(0x0800u);open.raw[0x21]=1u;open.raw[6]=2u;
    unsigned hits=0;
    for(unsigned y=0;y<192u;y+=4u) for(unsigned x=0;x<256u;x+=4u) {
        probe.set_x_fixed(std::uint16_t(x*32u));probe.set_y_fixed(std::uint16_t(y*32u));
        hits+=sm::stage0_sprite_overlap(rom,probe,open);
    }
    assert(hits>0u && hits<50u); // the centre, not the 144-pixel-wide shell

    logic.step_15hz(rom,game,0u,0u,false,&sounds);
    assert(boss.state()==1u && boss.raw[0x18]==0x1eu);
    for(unsigned tick=1;tick<=30u;++tick) logic.step_15hz(rom,game,tick,0u,false,&sounds);
    assert(boss.state()==2u && boss.raw[0x17]==5u && boss.raw[0x22]==0u);

    for(unsigned tick=31;tick<=35u;++tick) logic.step_15hz(rom,game,tick,0u,false,&sounds);
    assert(boss.state()==2u && boss.raw[0x22]==1u && boss.raw[0x06]==1u);
    assert(std::count(sounds.begin(),sounds.end(),sm::PlaySound::Stage6Open)==1);
    for(unsigned tick=36;tick<=40u;++tick) logic.step_15hz(rom,game,tick,0u,false,&sounds);
    assert(boss.state()==3u && boss.raw[0x22]==2u && boss.raw[0x17]==5u);

    // $B638 permits only one active type-$0D ball at a time. It spawns at
    // boss (+8,+2), with the exact $FF80 Y vector and ROM SFX $17.
    for(unsigned tick=41;tick<=45u;++tick) logic.step_15hz(rom,game,tick,0u,false,&sounds);
    assert(boss.raw[0x21]==1u && boss.raw[0x17]==0x14u);
    auto ball=std::find_if(game.enemies.begin(),game.enemies.end(),
        [](const auto& e){return e.type()==0x0du;});
    assert(ball!=game.enemies.end());
    assert(ball->x_fixed()==0x0f00u && ball->y_fixed()==0x1600u);
    assert(std::int16_t(std::uint16_t(ball->raw[0x0b]) |
                        (std::uint16_t(ball->raw[0x0c])<<8))==-0x80);
    assert((ball->flags15()&1u)!=0u);
    assert(std::count(sounds.begin(),sounds.end(),sm::PlaySound::HatchShot)==1);

    // Native 60-Hz splitting of the ball's $FF80 velocity: four video frames
    // equal one original -$80 object step.
    const auto y0=ball->y_fixed();
    for(unsigned f=0;f<4u;++f) logic.move_60hz(game,f);
    assert(std::int16_t(ball->y_fixed()-y0)==-0x80);

    // Continue the controller without letting the old ball block later launch
    // points. Four 20-tick state-3 phases open into state 4, then state 5/6
    // closes the boss and returns to the 30-tick wait.
    ball->clear();
    unsigned tick=46u;
    while(boss.state()==3u && tick<140u) {
        logic.step_15hz(rom,game,tick++,0u,false,&sounds);
        for(auto& e:game.enemies) if(e.type()==0x0du) e.clear();
    }
    assert(boss.state()==4u && boss.raw[0x21]==4u);
    while(boss.state()!=1u && tick<220u) {
        logic.step_15hz(rom,game,tick++,0u,false,&sounds);
        for(auto& e:game.enemies) if(e.type()==0x0du) e.clear();
    }
    assert(boss.state()==1u && boss.raw[0x18]==0x1eu &&
           boss.raw[0x21]==0u && boss.raw[0x22]==0u);
    assert(std::count(sounds.begin(),sounds.end(),sm::PlaySound::Stage6Close)==1);

    // Full native route: Stage 6 must naturally spawn the boss before the
    // final scenery gate, switch to boss music, destroy through $6A, clean its
    // active ball and advance to Stage 7.
    sm::PlaySession route(rom);route.reset(5u);
    sm::Entity64* live=nullptr;bool escorts=false;
    for(unsigned f=0;f<26000u && (!live || !escorts);++f) {
        route.step_60hz({});
        auto& state=const_cast<sm::GameState&>(route.state());
        const auto it=std::find_if(state.enemies.begin(),state.enemies.end(),
            [](auto& e){return e.type()==0x7bu;});
        if(it!=state.enemies.end()) live=&*it;
        unsigned n7c=0u,parents7c=0u;
        for(const auto& e:state.enemies) if(e.type()==0x7cu) {
            ++n7c;if(e.raw[0x34]&0x80u) ++parents7c;
        }
        escorts=n7c==16u && parents7c==2u;
    }
    assert(live && escorts && route.boss_music_active());
    for(unsigned f=0;f<600u && !route.at_fight_gate();++f) route.step_60hz({});
    assert(route.at_fight_gate());

    // Stage 6 enables the common CE47/CE48 palette service (+3F=1).
    // It turns red at 160/4=40 HP, rather than its separate <16 death gate.
    auto rgb=[](std::uint16_t c) {
        auto channel=[](unsigned q){return (q*255u+3u)/7u;};
        return 0xff000000u|(channel((c>>4u)&7u)<<16u)|
            (channel((c>>8u)&7u)<<8u)|channel(c&7u);
    };
    const auto normal=sm::decode_stage_boss_palette(rom,5u);
    const auto red=sm::decode_stage_boss_damage_palette(rom,5u);
    unsigned palette_index=16u;auto image=route.render();
    for(unsigned i=0;i<16u;++i) if(normal[i]!=red[i] &&
        std::count(image.begin()+28u*256u,image.end(),rgb(normal[i]))>100) {palette_index=i;break;}
    assert(palette_index<16u && live->raw[0x3f]==1u);
    live->raw[4]=119u;
    for(unsigned f=0;f<24u;++f) route.step_60hz({});
    assert(live->raw[0x16]==41u);image=route.render();
    assert(std::count(image.begin()+28u*256u,image.end(),rgb(normal[palette_index]))>100);
    live->raw[4]=1u;
    for(unsigned f=0;f<24u;++f) route.step_60hz({});
    assert(live->raw[0x16]==40u);image=route.render();
    assert(std::count(image.begin()+28u*256u,image.end(),rgb(red[palette_index]))>100);

    // Force one live boss ball so the fatal cleanup path is covered.
    {
        auto& state=const_cast<sm::GameState&>(route.state());
        auto* b=state.allocate_enemy();assert(b);
        b->type()=0x0du;b->flags15()=1u;b->state()=0u;
    }
    live->raw[4]=0xffu;
    for(unsigned f=0;f<40u && live->type()!=0x6au;++f) route.step_60hz({});
    assert(live->type()==0x6au);
    for(const auto& e:route.state().enemies) assert(e.type()!=0x0du);

    // CE76 cascade observed on the original: variant-0 chain enters $7CC3
    // with the boss, variant-1 follows one video pass later.
    auto count_type=[&](std::uint8_t type) {
        return std::count_if(route.state().enemies.begin(),route.state().enemies.end(),
                             [=](const auto& e){return e.type()==type;});
    };
    assert(count_type(0x62u)==8u && count_type(0x7cu)==8u);
    route.step_60hz({});
    assert(count_type(0x62u)==16u && count_type(0x7cu)==0u);

    for(unsigned f=0;f<500u && route.stage_index()==5u;++f) route.step_60hz({});
    assert(route.stage_index()==6u);

    std::cout<<"Stage 6 boss PASS: $7B cycle, $0D ball, damage cleanup and Stage-7 handoff\n";
}
