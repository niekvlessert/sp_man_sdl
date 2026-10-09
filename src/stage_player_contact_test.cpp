#include <algorithm>
#include "play_session.hpp"
#include "assets.hpp"
#ifdef NDEBUG
#undef NDEBUG
#endif
#include <cassert>
#include <fstream>
#include <iostream>
#include <set>
#include <sstream>
static sm::Entity64 decode(const std::string& hex) {
    assert(hex.size()==128);sm::Entity64 e;
    for(unsigned i=0;i<64u;++i) e.raw[i]=std::stoul(hex.substr(i*2u,2u),nullptr,16);
    return e;
}
int main(int argc,char** argv) {
    assert(argc==4);sm::Rom rom(argv[1]);std::ifstream contacts(argv[2]),terrain(argv[3]);assert(contacts && terrain);
    unsigned stage,wanted,count=0;std::string kind,p,o;std::set<unsigned> types[9];
    std::set<unsigned> stages;
    while(contacts>>stage>>kind>>p>>o>>wanted) {
        const auto player=decode(p),enemy=decode(o);
        const bool hit=kind=="object"?sm::rom_player_object_contact(rom,player,enemy):sm::rom_player_bullet_contact(rom,player,enemy);
        if(hit!=bool(wanted)) {
            std::cerr<<"Stage "<<stage<<" "<<kind<<" type "<<unsigned(enemy.type())<<" frame "<<unsigned(enemy.raw[5])
                <<" at "<<enemy.x_fixed()<<","<<enemy.y_fixed()<<" player frame "<<unsigned(player.raw[5])
                <<" got "<<hit<<" expected "<<wanted<<'\n';return 1;
        }
        assert(stage>=1u && stage<=9u);stages.insert(stage);
        types[stage-1].insert(enemy.type());++count;
    }
    assert((stages==std::set<unsigned>{1,2,3} && count==15210u) ||
           (stages==std::set<unsigned>{4,5,6,7,8,9} && count==22464u));
    unsigned contexts=0;std::string properties;
    while(terrain>>stage>>kind>>properties) {
        assert(properties.size()==512u);
        auto native=sm::decode_stage_terrain_properties(rom,stage-1u,kind=="boss");
        if(kind=="vehicle") native=sm::decode_stage0_vehicle_terrain_properties(rom);
        if(kind=="barriers") native=sm::decode_stage6_barrier_terrain_properties(rom);
        for(unsigned tile=0;tile<256u;++tile) {
            const auto actual=std::stoul(properties.substr(tile*2u,2u),nullptr,16);
            if(native[tile]!=actual) {
                std::cerr<<"Terrain stage "<<stage<<" "<<kind<<" tile "<<tile<<" native "<<unsigned(native[tile])<<" ROM "<<actual<<'\n';return 1;
            }
        }
        ++contexts;
    }
    assert(contexts==(stages.count(1u)?7u:12u));
    // Original ship collision shape is 6x4, offset (9,13); pickup/weapon
    // properties have no solid bit. Verify both sides of each footprint edge.
    auto player=decode(p);player.raw[5]=0;
    for(unsigned property:{0u,2u,0x24u})
        assert(!sm::rom_player_terrain_contact(rom,player,[&](int,int){return property;}));
    for(int y=0;y<24;++y) for(int x=0;x<24;++x) {
        const bool hit=sm::rom_player_terrain_contact(rom,player,[&](int xo,int yo){return std::uint8_t(xo==x*32 && yo==y*32?3:0);});
        assert(hit==(x>=9 && x<15 && y>=13 && y<17));
    }
    // Traverse every scrolling sector through the actual boss gate. God mode
    // is only the route observer's setting; the above probes remain vulnerable.
    for(unsigned stage:stages) {
        const unsigned s=stage-1u;
        sm::PlaySession route(rom);route.reset(s);route.set_invulnerable(true);
        const auto main_properties=sm::decode_stage_terrain_properties(rom,s);
        const auto barrier_properties=sm::decode_stage6_barrier_terrain_properties(rom);
        bool barriers_seen=false;
        if(s==5u) assert(route.terrain_property(0x28u)==3u);
        unsigned frames=0;std::set<unsigned> seen;
        while(!route.at_fight_gate() && frames<60000u) {
            route.step_60hz({});++frames;
            for(const auto& e:route.state().enemies) if(e.active()) seen.insert(e.type());
            if(s==5u) {
                barriers_seen=barriers_seen || std::any_of(route.state().enemies.begin(),route.state().enemies.end(),
                    [](const auto& e){return e.type()==0x0eu;});
                // The first $0E constructor trigger is crossed at frame 6145.
                // It loads the context even if the 20 object slots are full;
                // therefore waiting for a visible barrier is too late.
                if(!route.boss_music_active()) for(unsigned tile=0;tile<256u;++tile) {
                    if(route.terrain_property(tile)!=(frames>=6145u?barrier_properties:main_properties)[tile]) {
                        std::cerr<<"Stage 6 route frame "<<frames<<" barrier observed "<<barriers_seen<<" tile "<<tile
                            <<" got "<<unsigned(route.terrain_property(tile))<<'\n';return 1;
                    }
                }
            }
        }
        assert(route.at_fight_gate());
        for(unsigned i=0;i<1200u;++i) route.step_60hz({});
        constexpr unsigned boss[]{0x64u,0x7au,0x3eu,0x14u,0x77u,0x7bu,0x43u,0x78u,0x79u};
        assert(std::any_of(route.state().enemies.begin(),route.state().enemies.end(),[&](const auto& e){return e.type()==boss[s];}));
        if(s==5u) {
            assert(barriers_seen);
            const auto boss_properties=sm::decode_stage_terrain_properties(rom,s,true);
            for(unsigned tile=0;tile<256u;++tile) assert(route.terrain_property(tile)==boss_properties[tile]);
            route.reset(s);
            for(unsigned tile=0;tile<256u;++tile) assert(route.terrain_property(tile)==main_properties[tile]);
        }
        std::cout<<"Stage "<<s+1<<": route "<<frames<<" frames, "<<seen.size()<<" actor types, boss active; "<<types[s].size()<<" ROM contact types\n";
    }
    std::cout<<count<<" original-ROM contacts and "<<contexts<<" complete terrain tables PASS\n";
}
