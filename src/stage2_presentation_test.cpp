#include "rom.hpp"
#include "level.hpp"
#define private public
#include "play_session.hpp"
#undef private
#include "stage0_enemies.hpp"
#ifdef NDEBUG
#undef NDEBUG
#endif
#include <cassert>
#include <iostream>

int main(int argc,char** argv) {
    if(argc!=2) return 2;
    sm::Rom rom(argv[1]);
    // Independent original $7B65 calls: all six $2E opening/closing scripts,
    // all 1536 D800..DDFF bytes, X=$1000/Y=$0800, CA1A/CA1C low=0.
    constexpr std::uint32_t original[]{0x152fd715u,0x878b48b5u,0xfe593855u,
        0xc8ed2df5u,0x12934045u,0x10d3eb15u};
    sm::Entity64 tube;tube.type()=0x2e;tube.set_x_fixed(0x1000);tube.set_y_fixed(0x800);
    for(unsigned frame=0;frame<6;++frame) {
        tube.raw[6]=std::uint8_t(frame);
        std::array<std::uint8_t,1536> buffer{};
        for(unsigned i=0;i<buffer.size();++i) buffer[i]=std::uint8_t(i*17u);
        for(const auto& v:sm::decode_stage0_tile_visuals(rom,tube))
            for(unsigned y=0;y<v.rows;++y) for(unsigned x=0;x<v.cols;++x) {
                const auto value=v.tiles[y*v.cols+x];
                if(value) buffer[unsigned(16+v.tile_y_offset+int(y))*48u+unsigned(24+v.tile_x_offset+int(x))]=value;
            }
        std::uint32_t hash=2166136261u;
        for(auto value:buffer) hash=(hash^value)*16777619u;
        assert(hash==original[frame]);
    }
    sm::GameState game;sm::Stage0Enemies logic;
    auto& head=game.enemies[0];head.type()=0x31;head.set_x_fixed(0x800);head.set_y_fixed(0x800);
    logic.step_15hz(rom,game,0,0,false,nullptr,[](const auto&,int,int y){return std::uint8_t(y==6*256?3:0);});
    auto beam=sm::decode_stage0_tile_visuals(rom,head);
    assert(beam.size()==1 && beam[0].tile_y_offset==2 && beam[0].rows==4 && beam[0].cols==2);
    head.raw[3]=1;
    logic.step_15hz(rom,game,1,0,false,nullptr,[](const auto&,int,int y){return std::uint8_t(y==-5*256?3:0);});
    beam=sm::decode_stage0_tile_visuals(rom,head);
    assert(beam.size()==1 && beam[0].tile_y_offset==-4 && beam[0].rows==5);

    sm::PlaySession session(rom);session.set_invulnerable(true);session.reset(1);
    while(session.background_.world_x()<1242u) session.step_60hz({});
    assert(session.background_.world_x()==1242u);
    session.game_.enemies={};session.game_.player.clear();session.combat_.reset();
    // Original VRAM $C000 row 0 at world X=$04DA from stage2_audit/025.
    // Native scrolling continues through the two fractional camera pixels,
    // rather than leaving the scenery one cell to the right of its actors.
    constexpr std::uint8_t row[]{0x21,0x23,0x23,0x21,0x3e,0x22,0x28,0x3e,
        0x21,0x23,0x23,0x21,0x3e,0x22,0x28,0x3e,0x22,0x28,0x29,0x27,
        0x3e,0x22,0x28,0x3e,0x3e,0x22,0x28,0x3e,0x3e,0x22,0x28,0x3e};
    for(unsigned phase=0;phase<4;++phase) {
        session.frame_=1988u+phase;
        const auto image=session.render_continuous();
        for(unsigned y=0;y<8;++y) for(unsigned x=8*4;x<248*4;++x) {
            const unsigned source=(x+8u-(3u-phase)*2u)/4u;
            const unsigned address=unsigned(row[source/8u])*8u+y;
            const auto bits=session.video_.vram[address],color=session.video_.vram[0x2000u+address];
            const auto c=(bits&(0x80u>>(source&7u)))?color>>4u:color&15u;
            assert(image[(28u+y)*4u*1024u+x]==session.video_.palette[c]);
        }
    }
    // The $53 generator's $2A machines are sprite assemblies tied to the
    // shaft's X coordinate. All six 16px components span exactly 48px; no
    // duplicate at the old SAT +7 origin may survive the native pass.
    for(unsigned phase=0;phase<4u;++phase) {
        session.frame_=1988u+phase;
        auto& machine=session.game_.enemies[0];machine.clear();machine.type()=0x2au;
        machine.state()=1u;machine.set_x_fixed(0x0900u);machine.set_y_fixed(0x0800u);
        const auto meta=sm::decode_spawn_type_metadata(rom,machine.type());
        std::copy(meta.bytes.begin(),meta.bytes.end(),machine.raw.begin()+0x13);
        machine.flags15()=0u;const auto hidden=session.render_continuous();
        machine.flags15()=meta.bytes[2];const auto shown=session.render_continuous();
        unsigned left=1024u,right=0u;
        for(unsigned y=112u;y<848u;++y) for(unsigned x=0;x<1024u;++x)
            if(shown[y*1024u+x]!=hidden[y*1024u+x]) {
                left=std::min(left,x);right=std::max(right,x);
            }
        assert(left==72u*4u+(3u-phase)*2u);
        assert(right-left+1u==48u*4u);
    }
    session.game_.enemies={};session.frame_=1991u;

    // A $29 turret is a 16px tile assembly; its $62 explosion must stay
    // centred on that footprint rather than acquire the SAT +7px border.
    // Exercise both mounts, all explosion frames and every camera phase.
    for(unsigned mount=0;mount<2u;++mount) for(unsigned phase=0;phase<4u;++phase) {
        session.game_.enemies={};session.frame_=1988u+phase;
        const auto empty=session.render_continuous();
        auto& turret=session.game_.enemies[0];turret.type()=0x29u;turret.state()=1u;
        const auto meta=sm::decode_spawn_type_metadata(rom,turret.type());
        std::copy(meta.bytes.begin(),meta.bytes.end(),turret.raw.begin()+0x13);
        turret.raw[6]=std::uint8_t(mount?4u:0u);
        turret.set_x_fixed(0x0900u);turret.set_y_fixed(mount?0x0500u:0x0f00u);
        const auto body=session.render_continuous();
        auto centre=[&](const auto& image) {
            unsigned left=1024u,right=0u,top=848u,bottom=0u;
            for(unsigned y=112u;y<848u;++y) for(unsigned x=0;x<1024u;++x)
                if(image[y*1024u+x]!=empty[y*1024u+x]) {
                    left=std::min(left,x);right=std::max(right,x);
                    top=std::min(top,y);bottom=std::max(bottom,y);
                }
            assert(left<=right && top<=bottom);
            return std::pair(left+right,top+bottom);
        };
        const auto body_centre=centre(body);
        assert(sm::apply_stage0_damage(rom,turret,255u)==sm::Stage0DamageResult::Destroyed);
        assert(turret.type()==0x62u);turret.flags15()=0x2du;
        for(unsigned frame=0;frame<4u;++frame) {
            turret.raw[5]=std::uint8_t(frame);
            const auto effect_centre=centre(session.render_continuous());
            assert(effect_centre.first==body_centre.first);
            // Ceiling art leaves its final scanline black, so its visible
            // bounds are half a source pixel above the full 16px footprint.
            assert(effect_centre.second==body_centre.second+(mount?4u:0u));
        }
    }
    session.game_.enemies={};session.frame_=1991u;

    // $2B retains +3E=$04 through $7CC3 and becomes the original $6B
    // wreck. No part of the old two-row launcher may survive outside it.
    const auto scenery=session.render_continuous();
    auto& launcher=session.game_.enemies[0];launcher.type()=0x2b;
    const auto metadata=sm::decode_spawn_type_metadata(rom,0x2b);
    std::copy(metadata.bytes.begin(),metadata.bytes.end(),launcher.raw.begin()+0x13);
    launcher.set_x_fixed(0x900);launcher.set_y_fixed(0x900);launcher.raw[0x3e]=4;
    assert(sm::apply_stage0_damage(rom,launcher,255)==sm::Stage0DamageResult::Destroyed);
    for(unsigned tick=0;tick<3;++tick) logic.step_15hz(rom,session.game_,tick,0,false);
    assert(launcher.type()==0x6b && launcher.state()==1 && launcher.raw[6]==4);
    const auto wreck=sm::decode_stage0_tile_visuals(rom,launcher);
    assert(wreck.size()==1 && wreck[0].rows==1);
    const auto destroyed=session.render_continuous();
    unsigned changed=0;
    for(unsigned y=28*4;y<212*4;++y) for(unsigned x=0;x<1024;++x)
        if(destroyed[y*1024+x]!=scenery[y*1024+x]) {
            ++changed;
            assert(x>=unsigned(wreck[0].x)*4 && x<unsigned(wreck[0].x+int(wreck[0].cols)*8)*4);
            assert(y>=unsigned(wreck[0].y+29)*4 && y<unsigned(wreck[0].y+29+8)*4);
        }
    assert(changed>0);
    std::cout<<"Stage 2 presentation PASS: six original tube stamps, clean launcher wreck, both red-beam directions and four camera phases aligned to original scenery\n";
}
