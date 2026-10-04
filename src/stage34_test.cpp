#include "play_session.hpp"
#ifdef NDEBUG
#undef NDEBUG
#endif
#include <algorithm>
#include <array>
#include <cassert>
#include <cstdint>
#include <iostream>
#include <map>

namespace {
std::uint32_t ring_hash(const sm::Stage0BackgroundStream& b) {
    std::uint32_t h=2166136261u;
    for(unsigned y=0;y<32u;++y) for(unsigned x=0;x<64u;++x)
        h=(h^b.ring_tile(x,y))*16777619u;
    return h;
}
struct Reference {
    unsigned source,trigger,x;
    int y;
    unsigned mode;
    std::uint32_t hash;
};
template<std::size_t N>
unsigned check_references(sm::Stage0BackgroundStream& b,
                          const std::array<Reference,N>& refs,
                          unsigned max_ticks) {
    unsigned checked=0;
    std::array<bool,N> seen{};
    for(unsigned tick=0;tick<max_ticks && !b.gated();++tick) {
        for(std::size_t i=0;i<N;++i) {
            const auto& r=refs[i];
            if(seen[i] || b.source_address()!=r.source ||
               b.trigger_cursor()!=r.trigger || b.world_x()!=r.x ||
               b.world_y()!=r.y || b.mode()!=r.mode) continue;
            assert(ring_hash(b)==r.hash);
            seen[i]=true;++checked;
        }
        b.step_15hz();
    }
    return checked;
}
}

int main(int argc,char** argv) {
    if(argc!=2) return 2;
    sm::Rom rom(argv[1]);

    // Stage 3: these four unmodified-ROM E000-E7FF captures precede the
    // dynamic type-$72 ring modifier. They prove the initial cave streamer,
    // preload phase and horizontal progression are byte-exact.
    constexpr std::array<Reference,4> stage3_refs{{
        {0xa9c0u,0x102fu,0x017au,0,0,0x86af7da6u},
        {0xa9d8u,0x1041u,0x020cu,0,0,0x3c8a4f2fu},
        {0xa9f6u,0x1055u,0x02acu,0,0,0xb1d50a98u},
        {0xaa1au,0x106du,0x036du,0,0,0xc7abe820u},
    }};
    sm::Stage0BackgroundStream stage3(rom);stage3.reset_stage(2);
    assert(check_references(stage3,stage3_refs,5000u)==stage3_refs.size());
    while(!stage3.gated()) stage3.step_15hz();
    assert(stage3.source_address()==0xaba7u);
    assert(stage3.trigger_cursor()==0x2000u);
    assert(stage3.world_x()==2744u && stage3.world_y()==0);
    assert(stage3.x_velocity_fp()==0 && stage3.y_velocity_fp()==0);

    // Stage 4 includes the vertical mode-6 section. These captures span the
    // horizontal approach, three independent points in the upward streamer,
    // and the return to horizontal mode. All are from the unmodified ROM.
    constexpr std::array<Reference,9> stage4_refs{{
        {0xabfbu,0x1033u,0x0199u,   0,0,0x2d1c0992u},
        {0xac1fu,0x104bu,0x025eu,   0,0,0x95480dd3u},
        {0xac3du,0x1062u,0x0316u,   0,0,0x89ffd86bu},
        {0xac61u,0x1077u,0x03bfu,   0,0,0x1ad4ebc9u},
        {0xac82u,0x200bu,0x03f8u, -84,6,0xf49a97a4u},
        {0xacb2u,0x2023u,0x03f8u,-276,6,0xfda13f29u},
        {0xaceau,0x203cu,0x03f8u,-476,6,0x7e49b627u},
        {0xad1cu,0x300cu,0x045cu,-576,0,0xcbad01fdu},
        {0xad42u,0x3025u,0x0522u,-576,0,0x77226d8cu},
    }};
    sm::Stage0BackgroundStream stage4(rom);stage4.reset_stage(3);
    assert(check_references(stage4,stage4_refs,6000u)==stage4_refs.size());
    while(!stage4.gated()) stage4.step_15hz();
    assert(stage4.source_address()==0xae45u);
    assert(stage4.trigger_cursor()==0x5000u);
    assert(stage4.world_x()==2040u && stage4.world_y()==-960);
    assert(stage4.x_velocity_fp()==0 && stage4.y_velocity_fp()==0);

    // Keep the complete ROM spawn catalogs available even before every new
    // family/controller has a native handler. These counts are the baseline
    // for the next enemy-port passes.
    const auto s3=sm::StageSpawnStream::decode_stage(rom,2);
    const auto s4=sm::StageSpawnStream::decode_stage(rom,3);
    assert(s3.records().size()==72u && s4.records().size()==61u);
    std::map<unsigned,unsigned> c3,c4;
    for(const auto& r:s3.records()) ++c3[r.type];
    for(const auto& r:s4.records()) ++c4[r.type];
    assert(c3[0x1c]==9u && c3[0x25]==9u && c3[0x27]==11u &&
           c3[0x28]==3u && c3[0x32]==20u && c3[0x33]==1u &&
           c3[0x3e]==1u && c3[0x51]==16u && c3[0x5f]==1u && c3[0x72]==1u);
    assert(c4[0x14]==1u && c4[0x17]==7u && c4[0x19]==33u &&
           c4[0x2d]==1u && c4[0x37]==1u && c4[0x38]==7u &&
           c4[0x39]==10u && c4[0x5f]==1u);

    // Public session/timeline entry points can now start stages 3 and 4
    // directly; this used to collapse every non-zero reset onto stage 2.
    sm::PlaySession p3(rom);p3.reset(2);assert(p3.stage_index()==2u);
    sm::PlaySession p4(rom);p4.reset(3);assert(p4.stage_index()==3u);
    for(unsigned i=0;i<120u;++i) {p3.step_60hz({});p4.step_60hz({});}
    assert(!p3.render().empty() && !p4.render().empty());
    bool rejected=false;
    try {p4.reset(9);} catch(const std::invalid_argument&) {rejected=true;}
    assert(rejected);

    std::cout<<"Stages 3/4 baseline PASS: ROM streams, stage reset, mode-6 vertical section and spawn catalogs\n";
}
