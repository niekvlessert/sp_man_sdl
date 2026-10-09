#include "stage0_enemies.hpp"
#include "entity_runtime.hpp"
#ifdef NDEBUG
#undef NDEBUG
#endif
#include <cassert>
#include <fstream>
#include <iostream>
#include <sstream>

static void decode(const std::string& text,sm::Entity64& e) {
    assert(text.size()==128u);
    for(unsigned i=0;i<64u;++i) e.raw[i]=std::uint8_t(std::stoul(text.substr(i*2u,2u),nullptr,16));
}
int main(int argc,char** argv) {
    if(argc!=3) return 2;
    sm::Rom rom(argv[1]);std::ifstream input(argv[2]);assert(input);
    unsigned pairs=0;
    for(std::string line;std::getline(input,line);) {
        if(line.empty() || line[0]=='#') continue;
        unsigned stage,tick,difficulty;std::string before,player,after;
        std::istringstream row(line);row>>stage>>tick>>difficulty>>before>>player>>after;assert(row);
        sm::GameState g;g.stage_index=std::uint8_t(stage);g.difficulty=std::uint8_t(difficulty);
        decode(before,g.enemies[0]);decode(player,g.player);sm::Entity64 expected;decode(after,expected);
        sm::Stage0Enemies logic;logic.step_15hz(rom,g,tick,0,false);
        // These families have self-contained motion/pose handlers. Exclude the
        // native projectile queue and common post-handler movement/culling.
        for(unsigned field:{1u,5u,6u,11u,12u,13u,14u,15u,16u,17u,18u,0x17u,0x18u,0x20u,0x21u,0x22u,0x23u}) {
            if(g.enemies[0].raw[field]!=expected.raw[field]) {
                std::cerr<<"ROM mismatch stage "<<stage+1<<" type "<<unsigned(expected.type())
                    <<" state "<<unsigned(std::stoul(before.substr(2,2),nullptr,16))
                    <<" field "<<field<<" tick "<<tick<<" got "<<unsigned(g.enemies[0].raw[field])
                    <<" expected "<<unsigned(expected.raw[field])<<'\n';return 1;
            }
        }
        ++pairs;
    }
    assert(pairs==68u);
    // All ROM actor/controller spawn records must have a native constructor.
    constexpr unsigned counts[]{81,155,71,60,79,106,27,37,11};
    for(unsigned stage=0;stage<9;++stage) {
        unsigned count=0;
        const auto stream=sm::StageSpawnStream::decode_stage(rom,stage);
        for(const auto& r:stream.records()) {
            if(r.type==0x5fu || r.type==0x65u) continue;
            sm::GameState g;g.stage_index=std::uint8_t(stage);sm::Stage0Enemies logic;
            assert(logic.spawn(rom,r,g,1u));++count;
        }
        assert(count==counts[stage]);
    }
    // Fixed $6AAC chooses the stage-specific sprite family from the ROM.
    for(unsigned stage=0;stage<5;++stage) for(auto type:{0x10u,0x12u,0x18u}) {
        sm::Entity64 e,player;e.type()=std::uint8_t(type);
        sm::initialize_stage0_flyer(rom,e,0u,0u,0u,player,0u,std::uint8_t(stage));
        const unsigned table=type==0x10u?0x12d2u:type==0x12u?0x137cu:0x1508u;
        assert(e.raw[5]==rom.bank(0)[table+stage]);
    }
    // Fixed $5337 belongs to state 3; target row zero is also valid.
    for(unsigned state:{2u,3u}) for(unsigned y:{0u,1u,255u}) {
        sm::GameState g;auto& e=g.enemies[0];e.type()=0x11u;e.state()=std::uint8_t(state);
        e.raw[8]=std::uint8_t(y);e.raw[0x26]=0u;e.raw[0x17]=9u;
        sm::Stage0Enemies logic;logic.step_15hz(rom,g,0u,0u,false);
        assert(e.state()==(state==3u && y==0u?1u:state));
        assert(e.raw[0x17]==(state==3u && y==0u?10u:9u));
    }
    // Bank05 $967B uses the literal reload table and wraps a zero entry.
    for(auto cursor:{1u,5u,6u}) {
        sm::GameState g;auto& e=g.enemies[0];e.type()=0x4fu;e.state()=1u;
        e.raw[0x17]=0u;e.raw[0x18]=10u;e.raw[0x23]=std::uint8_t(cursor);
        sm::Stage0Enemies logic;logic.step_15hz(rom,g,0u,0u,false);
        assert(e.raw[0x17]==(cursor==1u?8u:cursor==5u?0x38u:0x18u));
        assert(e.raw[0x23]==(cursor==6u?0u:cursor) && e.raw[0x26]==1u);
    }
    // Fixed $554B changes a bit-6 flyer to a straight aimed flight at the edge.
    for(auto parameter:{0x40u,0xc0u}) {
        sm::GameState g;g.player.set_x_fixed(0x1000u);g.player.set_y_fixed(0x0800u);
        auto& e=g.enemies[0];e.type()=0x18u;e.state()=1u;e.raw[0x21]=std::uint8_t(parameter);
        e.set_x_fixed(parameter==0x40u?0x0200u:0x1c00u);e.set_y_fixed(0x0500u);
        sm::entity_set_word(e,15u,0x18);e.raw[0x23]=1u;
        sm::Entity64 aimed=e;sm::rom_set_aimed_velocity(rom,aimed,g.player,0x18u);
        sm::Stage0Enemies logic;logic.step_15hz(rom,g,0u,0u,false);
        assert(e.state()==2u && sm::entity_word(e,11u)==sm::entity_word(aimed,11u)+0x18);
        auto velocity=sm::entity_word(e,11u);logic.step_15hz(rom,g,1u,0u,false);
        assert(sm::entity_word(e,11u)==velocity);
    }
    std::cout<<"Enemy ROM audit PASS: "<<pairs<<" natural handler pairs and all 9 stage spawn tables\n";
}
