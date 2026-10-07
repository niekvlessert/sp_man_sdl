#include "play_session.hpp"
#include "assets.hpp"
#ifdef NDEBUG
#undef NDEBUG
#endif
#include <algorithm>
#include <cassert>
#include <iostream>

static std::uint32_t rgb(std::uint16_t c) {
    auto channel=[](unsigned v){return (v*255u+3u)/7u;};
    return 0xff000000u|(channel((c>>4)&7)<<16)|(channel((c>>8)&7)<<8)|channel(c&7);
}
int main(int argc,char** argv) {
    if(argc!=2) return 2;
    sm::Rom rom(argv[1]);
    for(unsigned stage:{0u,1u,2u,3u,4u,5u,7u}) {
        constexpr std::uint8_t types[]{0x64,0x7a,0x3e,0x14,0x77,0x7b,0x43,0x78};
        sm::PlaySession session(rom);session.reset(stage);
        sm::Entity64* boss=nullptr;
        for(unsigned f=0;f<30000u;++f) {
            session.step_60hz({});
            auto& g=const_cast<sm::GameState&>(session.state());
            for(auto& e:g.enemies) if(e.type()==types[stage]) boss=&e;
            if(boss && session.at_fight_gate() && boss->state()!=0u) break;
        }
        assert(boss && session.at_fight_gate());
        if(stage==0u) while(boss->state()<3u) session.step_60hz({});
        if(stage==3u) while(boss->state()<2u) session.step_60hz({});
        if(stage==4u) {
            auto& g=const_cast<sm::GameState&>(session.state());
            for(auto& e:g.enemies) if(e.type()==0x76u) e.raw[4]=0xffu;
            for(unsigned f=0;f<1500u && boss->state()<5u;++f) session.step_60hz({});
        }
        if(stage==7u) while(boss->state()<3u) session.step_60hz({});
        const unsigned hp=stage==1u?32u:sm::decode_spawn_type_metadata(rom,types[stage]).bytes[3];
        const unsigned threshold=hp/4u;
        const auto normal=stage==0u?sm::decode_stage0_video(rom).tower_palette_grb:
            sm::decode_stage_boss_palette(rom,stage);
        const auto red=stage==0u?sm::decode_stage0_video(rom).tower_red_palette_grb:
            sm::decode_stage_boss_damage_palette(rom,stage);
        if(stage==1u) {
            // Independent physical VDP palette from original OpenMSX Stage-2
            // capture 170. $8709 has no writes: $A95D stays active at the gate.
            constexpr std::array<std::uint16_t,16> original{
                0x000,0x131,0x242,0x353,0x210,0x320,0x070,0x117,
                0x445,0x430,0x770,0x050,0x333,0x333,0x777,0x000};
            assert(normal==original);
            for(const auto& image:{session.render(),session.render_continuous()}) {
                assert(std::count(image.begin(),image.end(),rgb(0x131u))>100);
                assert(std::count(image.begin(),image.end(),rgb(0x000u))>10000);
            }
        }
        auto hit=[&](unsigned remaining) {
            boss->raw[0x16]=std::uint8_t(remaining+1u);
            boss->raw[0x14]|=0x80u;
            if(stage==7u) {boss->raw[0x29]=0u;boss->raw[0x2b]=1u;boss->raw[0x2a]=40u;}
            boss->raw[4]=1u;
            for(unsigned f=0;f<16u && boss->raw[0x16]!=remaining;++f) session.step_60hz({});
            assert(boss->raw[0x16]==remaining);
        };
        hit(threshold+1u);
        auto image=session.render();
        // Whole tile assemblies (not merely eye sprites) use the hit palette.
        auto count=[&](std::uint32_t color){return std::count(image.begin()+28u*256u,image.end(),color);};
        assert(count(rgb(0x666u))>200);
        if(stage==2u) {
            const auto smooth=session.render_wide();
            assert(std::count(smooth.begin()+28u*512u,smooth.end(),rgb(0x666u))>400);
        }
        for(unsigned f=0;f<24u;++f) session.step_60hz({});
        image=session.render();
        if(stage==7u) {
            // Stage 8 shares identical normal/red tables ($8744/$87C4).
            // It flashes white but must retain its original olive palette.
            const auto bank=rom.bank(7);
            assert(std::equal(bank.begin()+0x744u,bank.begin()+0x754u,bank.begin()+0x7c4u));
            assert(count(rgb(0x666u))<200);
            std::cout<<"Stage 8 white flash / original palette restored PASS\n";
            continue;
        }
        unsigned index=16u;
        for(unsigned i=0;i<16u;++i) if(normal[i]!=red[i] && count(rgb(normal[i]))>100) {index=i;break;}
        if(index==16u) std::cerr<<"No normal color stage "<<stage+1<<'\n';
        assert(index<16u);
        hit(threshold);
        for(unsigned f=0;f<24u;++f) session.step_60hz({});
        image=session.render();
        assert(count(rgb(red[index]))>100);
        std::cout<<"Stage "<<stage+1<<" white flash / red at "<<threshold<<" HP PASS\n";
    }
}
