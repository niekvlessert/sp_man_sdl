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
}

int main(int argc,char** argv) {
    if(argc!=2) return 2;
    sm::Rom rom(argv[1]);

    // Stage 4 boss: type $14, bank06 $AE0A.  The ROM enters at X=$2800,
    // moves left by $40 per 20-Hz object tick, and reaches X=$1440 on the
    // 80-tick boundary.  This is independently visible in the OpenMSX trace.
    const auto s4=sm::StageSpawnStream::decode_stage(rom,3u);
    const auto& r4=find_type(s4,0x14u);
    assert(r4.trigger==0x5000u && r4.control==5u &&
           r4.payload.size()==1u && r4.payload[0]==0xffu);
    const auto m4=sm::decode_spawn_type_metadata(rom,0x14u);
    assert((m4.bytes==std::array<std::uint8_t,4>{0x08u,0x85u,0x14u,0xf0u}));

    sm::GameState g4;
    sm::Stage0Enemies e4;
    assert(sm::instantiate_stage0_spawn(rom,r4,g4,1u));
    auto& b4=g4.enemies[0];
    assert(b4.type()==0x14u && b4.state()==0u && b4.raw[0x16]==0xf0u);
    assert(!sm::decode_stage0_tile_visuals(rom,b4).empty());
    e4.step_gate_20hz(rom,g4,0u);
    assert(b4.state()==1u && b4.x_fixed()==0x2800u && b4.y_fixed()==0x0900u);
    e4.step_gate_20hz(rom,g4,1u);
    assert(b4.x_fixed()==0x27c0u && b4.raw[0x20]==1u);
    for(unsigned tick=2u;tick<80u;++tick) e4.step_gate_20hz(rom,g4,tick);
    assert(b4.state()==1u && b4.x_fixed()==0x1440u && b4.raw[0x20]==0x4fu);
    e4.step_gate_20hz(rom,g4,80u);
    assert(b4.state()==2u && b4.x_fixed()==0x1440u &&
           b4.raw[0x20]==0x50u && b4.raw[0x17]==0x20u);
    bool saw58=false;
    for(unsigned tick=81u;tick<145u && !saw58;++tick) {
        e4.step_gate_20hz(rom,g4,tick);
        for(const auto& e:g4.enemies) if(e.type()==0x58u) {
            saw58=true;
            assert(e.x_fixed()==std::uint16_t(std::uint8_t(b4.raw[0x0a]-5u))<<8u);
            assert(e.y_fixed()==std::uint16_t(std::uint8_t(b4.raw[0x08]+((tick&1u)?-3:9)))<<8u);
        }
    }
    assert(saw58);

    // Original B085..B0C0 vectors, all 128 angles across both rails.
    std::uint32_t vector_hash=2166136261u;
    for(unsigned angle=0;angle<128u;++angle) {
        sm::GameState g;sm::Stage0Enemies logic;
        auto& shot=g.enemies[0];shot.type()=0x58u;
        shot.raw[0x20]=angle<64u?1u:0u;
        g.random_value=std::uint8_t((angle&63u)^rom.bank(0)[0x600]^rom.bank(0)[0x700]);
        logic.step_gate_20hz(rom,g,0u);
        for(unsigned p=11;p<19;++p) vector_hash=(vector_hash^shot.raw[p])*16777619u;
        auto velocity=[](const sm::Entity64& e,unsigned p) {
            return std::int16_t(std::uint16_t(e.raw[p])|(std::uint16_t(e.raw[p+1])<<8u));
        };
        for(unsigned tick=1;tick<=9u;++tick) {
            logic.step_gate_20hz(rom,g,tick);
            assert(velocity(shot,11)==int(tick)*velocity(shot,15));
            assert(velocity(shot,13)==int(tick)*velocity(shot,17));
        }
        assert(shot.state()==2u);
        const auto before=shot;
        for(unsigned f=0;f<3u;++f) logic.move_60hz(g,f);
        assert(std::int16_t(shot.x_fixed()-before.x_fixed())==velocity(before,13));
        assert(std::int16_t(shot.y_fixed()-before.y_fixed())==velocity(before,11));
    }
    assert(vector_hash==0x3e6ee3efu);
    // AEAB/9157: two lasers (growth limit eight cells) with a 20-tick warning, alternating
    // CC/CD cells and original sound request $2C at the growth transition.
    sm::GameState lasers;sm::Stage0Enemies laser_logic;std::vector<sm::PlaySound> laser_sounds;
    auto& owner=lasers.enemies[0];owner.type()=0x14u;owner.state()=2u;
    owner.set_x_fixed(0x1440u);owner.set_y_fixed(0x0900u);
    owner.raw[0x22]=8u;owner.raw[0x11]=10u;owner.raw[0x21]=0u;
    laser_logic.step_gate_20hz(rom,lasers,0u,&laser_sounds);
    unsigned rails=0;
    for(const auto& q:lasers.enemies) if(q.type()==0x46u) {
        ++rails;assert(q.x_fixed()==owner.x_fixed());
        assert(q.y_fixed()==owner.y_fixed() || q.y_fixed()==owner.y_fixed()+0x0700u);
        assert(q.raw[0x03]==1u && q.raw[0x11]==0u);
    }
    assert(rails==2u);owner.clear();
    for(unsigned tick=1;tick<=26;++tick) laser_logic.step_15hz(rom,lasers,tick,0u,false,&laser_sounds);
    assert(std::count(laser_sounds.begin(),laser_sounds.end(),sm::PlaySound::Stage4Laser)==1);
    for(const auto& q:lasers.enemies) if(q.type()==0x46u) {
        const auto v=sm::decode_stage0_tile_visuals(rom,q);
        assert(v.size()==1u && v[0].cols==10u);
        for(unsigned n=1;n<v[0].tiles.size();++n) assert(v[0].tiles[n]!=v[0].tiles[n-1]);
    }

    // Stage 5 boss: extended type $77 record.  State 1 builds the exact
    // twelve-object $76 pool seen in the original: eight root armour records
    // from $B3DB plus four descriptor children owned by the two controllers.
    const auto s5=sm::StageSpawnStream::decode_stage(rom,4u);
    const auto& r5=find_type(s5,0x77u);
    assert(r5.trigger==0x1310u && r5.control==0x8bu);
    assert((r5.payload==std::vector<std::uint8_t>{2u,5u,0x85u,2u,0x76u,2u,0x76u}));
    const auto m5=sm::decode_spawn_type_metadata(rom,0x77u);
    const auto p5=sm::decode_spawn_type_metadata(rom,0x76u);
    assert((m5.bytes==std::array<std::uint8_t,4>{0x0cu,0x0cu,0x04u,0x99u}));
    assert((p5.bytes==std::array<std::uint8_t,4>{0x02u,0x82u,0x56u,0x03u}));

    sm::GameState g5;
    sm::Stage0Enemies e5;
    assert(sm::instantiate_stage0_spawn(rom,r5,g5,1u));
    auto& b5=g5.enemies[0];
    e5.step_gate_20hz(rom,g5,0u);
    e5.step_gate_20hz(rom,g5,1u);
    e5.step_gate_20hz(rom,g5,2u);
    assert(b5.state()==3u && b5.x_fixed()==0x1f00u && b5.y_fixed()==0x0600u);
    assert(b5.raw[0x16]==0x99u && b5.raw[0x37]==8u && b5.raw[0x3b]==8u);
    assert(!sm::decode_stage0_tile_visuals(rom,b5).empty());

    struct Part {std::uint16_t x,y;std::uint8_t f5,f6,link,state,children;};
    constexpr std::array<Part,12> live{{
        {0x0c00,0x0900,0,0x09,0x81,1,2},
        {0x1a00,0x0900,1,0x08,0x81,1,2},
        {0x1000,0x0000,2,0x0b,0x01,2,0},
        {0x1400,0x0000,2,0x07,0x01,2,0},
        {0x1800,0x0000,2,0x0c,0x01,2,0},
        {0x1000,0x0d00,2,0x0e,0x01,2,0},
        {0x1400,0x0f00,2,0x06,0x01,2,0},
        {0x1800,0x0d00,2,0x0f,0x01,2,0},
        {0x0c00,0x0d00,2,0x0d,0x02,2,0},
        {0x0c00,0x0000,2,0x0a,0x02,2,0},
        {0x1d00,0x0d00,2,0x0d,0x03,2,0},
        {0x1d00,0x0000,2,0x0a,0x03,2,0},
    }};
    for(unsigned i=0;i<live.size();++i) {
        const auto& e=g5.enemies[i+1u];
        const auto& q=live[i];
        assert(e.type()==0x76u && e.x_fixed()==q.x+0x0f00u && e.y_fixed()==q.y);
        assert((e.flags15()&1u)==0u); // tile armour, never a SAT sprite
        assert(e.raw[5]==q.f5 && e.raw[6]==q.f6 && e.raw[0x34]==q.link);
        assert(e.state()==q.state && e.raw[0x37]==q.children);
    }

    // Full Stage-4 death path: type $14 is a real boss damage target and its
    // $6A countdown must advance to Stage 5.
    sm::PlaySession route4(rom);route4.set_invulnerable(true);route4.reset(3u);
    sm::Entity64* live4=nullptr;
    for(unsigned f=0;f<18000u && !live4;++f) {
        route4.step_60hz({});
        auto& state=const_cast<sm::GameState&>(route4.state());
        auto it=std::find_if(state.enemies.begin(),state.enemies.end(),
            [](auto& e){return e.type()==0x14u;});
        if(it!=state.enemies.end()) live4=&*it;
    }
    assert(live4 && route4.boss_music_active());
    while(live4->state()<2u) route4.step_60hz({});
    assert(live4->raw[0x16]==0xf0u);
    auto rgb=[](std::uint16_t c) {
        auto channel=[](unsigned q){return (q*255u+3u)/7u;};
        return 0xff000000u|(channel((c>>4u)&7u)<<16u)|
            (channel((c>>8u)&7u)<<8u)|channel(c&7u);
    };
    const auto normal=sm::decode_stage_boss_palette(rom,3u);
    const auto red=sm::decode_stage_boss_damage_palette(rom,3u);
    unsigned palette_index=16u;
    auto image=route4.render();
    for(unsigned i=0;i<16u;++i) if(normal[i]!=red[i] &&
        std::count(image.begin()+28u*256u,image.end(),rgb(normal[i]))>100) {palette_index=i;break;}
    assert(palette_index<16u);
    // At 61 HP the white flash expires back to normal. At the ROM quarter
    // threshold (60) it expires to red and that colour persists without hits.
    live4->raw[4]=179u;
    for(unsigned f=0;f<24u;++f) route4.step_60hz({});
    assert(live4->raw[0x16]==61u);
    image=route4.render();
    assert(std::count(image.begin()+28u*256u,image.end(),rgb(normal[palette_index]))>100);
    live4->raw[4]=1u;
    for(unsigned f=0;f<24u;++f) route4.step_60hz({});
    assert(live4->raw[0x16]==60u);
    image=route4.render();
    assert(std::count(image.begin()+28u*256u,image.end(),rgb(red[palette_index]))>100);
    live4->raw[4]=0xffu;
    for(unsigned f=0;f<30u && live4->type()!=0x6au;++f) route4.step_60hz({});
    assert(live4->type()==0x6au);
    for(const auto& e:route4.state().enemies) assert(e.type()!=0x58u && !(e.type()==0x46u && e.raw[0x03]));
    for(unsigned f=0;f<500u && route4.stage_index()==3u;++f) route4.step_60hz({});
    assert(route4.stage_index()==4u);

    // Full Stage-5 armour/core/death path.  Destroying the eight root $76
    // records drops the parent's +37 count to zero; after the 16-tick arm
    // delay the $99-HP core becomes vulnerable.  Fatal damage then uses the
    // same $6A sequence and advances to Stage 6.
    sm::PlaySession route5(rom);route5.set_invulnerable(true);route5.reset(4u);
    sm::Entity64* live5=nullptr;
    for(unsigned f=0;f<14000u && !live5;++f) {
        route5.step_60hz({});
        auto& state=const_cast<sm::GameState&>(route5.state());
        auto it=std::find_if(state.enemies.begin(),state.enemies.end(),
            [](auto& e){return e.type()==0x77u && e.state()>=3u;});
        if(it!=state.enemies.end()) live5=&*it;
    }
    assert(live5 && route5.boss_music_active() && live5->raw[0x37]==8u);
    // Let the complete entrance scroll finish. These are independently
    // captured ROM fight positions, not just descriptor offsets at birth.
    for(unsigned f=0;f<150u;++f) route5.step_60hz({});
    assert(live5->x_fixed()==0x1000u);
    for(const auto& e:route5.state().enemies) if(e.type()==0x76u) {
        assert((e.flags15()&1u)==0u);
        bool matched=false;
        for(const auto& q:live) if(e.raw[5]==q.f5 && e.raw[6]==q.f6 &&
            e.x_fixed()==q.x && e.y_fixed()==q.y) matched=true;
        assert(matched);
    }
    {
        auto& state=const_cast<sm::GameState&>(route5.state());
        const auto id=live5->raw[0x2d];
        unsigned roots=0;
        for(auto& e:state.enemies)
            if(e.type()==0x76u && (e.raw[0x34]&0x7fu)==id) {
                e.raw[4]=0xffu;++roots;
            }
        assert(roots==8u);
    }
    for(unsigned f=0;f<120u && live5->state()!=5u;++f) route5.step_60hz({});
    assert(live5->state()==5u && live5->raw[0x37]==0u && (live5->raw[0x14]&0x80u));
    bool saw5c=false;
    for(unsigned f=0;f<240u && !saw5c;++f) {
        route5.step_60hz({});
        saw5c=std::any_of(route5.state().enemies.begin(),route5.state().enemies.end(),
            [](const auto& e){return e.type()==0x5cu;});
    }
    assert(saw5c); // core entered its bank06 $B1B4 attack cycle
    live5->raw[4]=0xffu;
    for(unsigned f=0;f<30u && live5->type()!=0x6au;++f) route5.step_60hz({});
    assert(live5->type()==0x6au);
    for(const auto& e:route5.state().enemies)
        assert(e.type()!=0x76u && e.type()!=0x5cu);
    for(unsigned f=0;f<500u && route5.stage_index()==4u;++f) route5.step_60hz({});
    assert(route5.stage_index()==5u);

    std::cout<<"Stage 4/5 bosses PASS: ROM entrance, attacks, armour tree, damage and stage handoff\n";
}
