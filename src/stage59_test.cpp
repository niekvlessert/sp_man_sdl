#include "play_session.hpp"
#include "assets.hpp"
#ifdef NDEBUG
#undef NDEBUG
#endif
#include <array>
#include <cassert>
#include <cstdint>
#include <iostream>
#include <map>
#include <vector>

namespace {
struct Ref {
    unsigned source,trigger,x;
    int y;
    unsigned mode;
    std::uint32_t hash;
};
std::uint32_t ring_hash(const sm::Stage0BackgroundStream& b) {
    std::uint32_t h=2166136261u;
    for(unsigned y=0;y<32u;++y) for(unsigned x=0;x<64u;++x)
        h=(h^b.ring_tile(x,y))*16777619u;
    return h;
}
unsigned check(sm::Stage0BackgroundStream& b,const std::vector<Ref>& refs,
               unsigned limit) {
    std::vector<bool> seen(refs.size());
    unsigned count=0;
    for(unsigned tick=0;tick<limit && !b.gated();++tick) {
        for(std::size_t i=0;i<refs.size();++i) {
            const auto& r=refs[i];
            if(seen[i] || b.source_address()!=r.source ||
               b.trigger_cursor()!=r.trigger || b.world_x()!=r.x ||
               b.world_y()!=r.y || b.mode()!=r.mode) continue;
            assert(ring_hash(b)==r.hash);
            seen[i]=true;++count;
        }
        b.step_15hz();
    }
    return count;
}
void finish(sm::Stage0BackgroundStream& b,unsigned limit=12000u) {
    for(unsigned tick=0;tick<limit && !b.gated();++tick) b.step_15hz();
    assert(b.gated());
}
}

int main(int argc,char** argv) {
    if(argc!=2) return 2;
    sm::Rom rom(argv[1]);

    // Independent unmodified-ROM DE00 captures: main at 15s, bosses at
    // 330s with damage protection and no firing. Stage 1's final encounter
    // uses another context; its existing dedicated collision map stays intact.
    constexpr std::array<std::uint32_t,9> main_properties{
        0x126d6fccu,0x5473414du,0x5a47ad05u,0xe4b3a7e2u,0x1b7cb4a7u,
        0x4ccb87bdu,0x46cd691cu,0xaffd0845u,0xd92f8a2du};
    constexpr std::array<std::uint32_t,8> boss_properties{
        0xf813c87eu,0x9b529157u,0x164d1d87u,0x716f161bu,
        0xc7b68d71u,0x5ff09edfu,0xe932b90eu,0xd92f8a2du};
    auto property_hash=[](const auto& values) {
        std::uint32_t h=2166136261u;
        for(const auto value:values) h=(h^value)*16777619u;
        return h;
    };
    for(unsigned stage=0;stage<9u;++stage) {
        assert(property_hash(sm::decode_stage_terrain_properties(rom,stage))==main_properties[stage]);
        if(stage) assert(property_hash(sm::decode_stage_terrain_properties(rom,stage,true))==boss_properties[stage-1u]);
    }

    // Stage 5: long horizontal route. These unmodified-ROM captures span
    // almost the entire scenery stream and remain byte-exact.
    sm::Stage0BackgroundStream s5(rom);s5.reset_stage(4);
    const std::vector<Ref> r5{
        {0xaef1,0x106c,0x0364,0,0,0x3c363095},
        {0xaf7b,0x10c9,0x0648,0,0,0x797c74a9},
        {0xb005,0x1120,0x0900,0,0,0x0424f456},
        {0xb091,0x117d,0x0be8,0,0,0x9bc7c36f},
        {0xb121,0x11de,0x0ef4,0,0,0x5eb4d90c},
        {0xb1b7,0x123f,0x11f8,0,0,0xfd614521},
        {0xb235,0x1295,0x14ac,0,0,0xc6bbd591},
        {0xb2c2,0x12eb,0x175c,0,0,0xaf920978},
    };
    assert(check(s5,r5,5000u)==r5.size());finish(s5);
    assert(s5.source_address()==0xb31eu && s5.trigger_cursor()==0x131fu);
    assert(ring_hash(s5)==0xedf01d4bu);

    // Stage 6 is the important new streamer case. It crosses the spawn-bank
    // boundary and uses mode 5 twice, then mode 3. Every sampled ring below
    // comes from an independent unmodified OpenMSX run.
    sm::Stage0BackgroundStream s6(rom);s6.reset_stage(5);
    const std::vector<Ref> r6{
        {0xb39a,0x2003,0x01e3,0x0015,5,0xbeb15c0e},
        {0xb3e5,0x2015,0x0151,0x00a7,5,0xb64b8165},
        {0xb421,0x2027,0x00c6,0x0132,5,0x0b4a937a},
        {0xb470,0x300e,0x00ea,0x0180,0,0x8cadd5b3},
        {0xb55c,0x30a8,0x05bc,0x0180,0,0x87f972aa},
        {0xb60a,0x311f,0x0974,0x0180,0,0xa1ffef03},
        {0xb667,0x400b,0x0a21,0x01d7,5,0x3a08b184},
        {0xb6f6,0x500a,0x0938,0x030c,3,0x2ae29623},
        {0xb765,0x5034,0x0938,0x045d,3,0x6652704d},
    };
    assert(check(s6,r6,7000u)==r6.size());finish(s6);
    assert(s6.source_address()==0xb769u && s6.trigger_cursor()==0x5034u);
    assert(s6.world_x()==0x0938u && s6.world_y()==0x0468);
    assert(ring_hash(s6)==0x6652704du);

    // Stages 7-9 are horizontal base routes. Stage 8 later contains a
    // stage-specific camera/controller handoff, so lock only independent
    // pre-handoff rings plus the final ring contents here.
    sm::Stage0BackgroundStream s7(rom);s7.reset_stage(6);
    const std::vector<Ref> r7{
        {0xb7c0,0x1031,0x018d,0,0,0xf59ba178},
        {0xb820,0x1072,0x0395,0,0,0x714a8184},
        {0xb868,0x10a0,0x0505,0,0,0xa25e0a04},
        {0xb8d9,0x10e6,0x0733,0,0,0x050e579c},
    };
    assert(check(s7,r7,4000u)==r7.size());finish(s7);
    assert(s7.source_address()==0xb909u && s7.trigger_cursor()==0x10ffu);
    assert(ring_hash(s7)==0x1b1da70bu);

    sm::Stage0BackgroundStream s8(rom);s8.reset_stage(7);
    const std::vector<Ref> r8{
        {0xb9a1,0x1034,0x01a3,0,0,0x86cc1858},
        {0xb9bf,0x1049,0x024d,0,0,0x62516bbf},
        {0xb9d7,0x1059,0x02c8,0,0,0xee5450a8},
        {0xb9ef,0x1068,0x0340,0,0,0x7083698e},
        {0xba1f,0x1087,0x043d,0,0,0x7e393d08},
        {0xba3d,0x109c,0x04e6,0,0,0x4f5faf01},
    };
    assert(check(s8,r8,3500u)==r8.size());finish(s8);
    assert(s8.source_address()==0xba6cu && s8.trigger_cursor()==0x2000u);
    assert(ring_hash(s8)==0xd2063dc5u);

    sm::Stage0BackgroundStream s9(rom);s9.reset_stage(8);
    const std::vector<Ref> r9{{0xbacf,0x1032,0x0196,0,0,0x7d18611b}};
    assert(check(s9,r9,1500u)==r9.size());finish(s9);
    assert(s9.source_address()==0xbaeau && s9.trigger_cursor()==0x103fu);
    assert(s9.world_x()==0x01f8u && ring_hash(s9)==0x043af64eu);

    // Complete ROM spawn catalogs. Stage 6 proves the decoder can cross
    // $9FFF->$A000 into bank03; stages 7-9 begin directly in bank03.
    const std::array<unsigned,5> totals{80,110,28,40,11};
    const std::array<std::map<unsigned,unsigned>,5> expected{{
        {{0x21,27},{0x27,9},{0x41,11},{0x49,23},{0x51,8},{0x5f,1},{0x77,1}},
        {{0x0e,8},{0x17,3},{0x2a,1},{0x2f,6},{0x48,4},{0x4a,38},{0x4d,16},{0x51,14},{0x5f,4},{0x73,13},{0x7b,1},{0x7c,2}},
        {{0x43,1},{0x4d,1},{0x4f,2},{0x54,23},{0x5f,1}},
        {{0x1b,1},{0x42,4},{0x46,16},{0x50,15},{0x5f,3},{0x78,1}},
        {{0x4e,7},{0x51,1},{0x5a,2},{0x79,1}},
    }};
    for(unsigned st=4;st<9;++st) {
        const auto stream=sm::StageSpawnStream::decode_stage(rom,st);
        assert(stream.records().size()==totals[st-4]);
        std::map<unsigned,unsigned> actual;
        for(const auto& r:stream.records()) ++actual[r.type];
        assert(actual==expected[st-4]);
    }

    // All nine stages are public session targets and render without relying on
    // the stage-1/2 shortcut path.
    for(unsigned st=4;st<9;++st) {
        sm::PlaySession session(rom);session.set_invulnerable(true);session.reset(st);
        assert(session.stage_index()==st);
        for(unsigned i=0;i<60u;++i) session.step_60hz({});
        assert(session.render().size()==256u*212u);
    }
    bool rejected=false;
    sm::PlaySession invalid(rom);invalid.set_invulnerable(true);
    try {invalid.reset(9);} catch(const std::invalid_argument&) {rejected=true;}
    assert(rejected);

    std::cout<<"Stages 5-9 baseline PASS: ROM rings, mode-5/3 route, bank02/03 spawns and direct reset\n";
}
