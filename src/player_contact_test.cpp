#include "stage0_enemies.hpp"
#ifdef NDEBUG
#undef NDEBUG
#endif
#include <cassert>
#include <fstream>
#include <iostream>
#include <string>
int main(int argc,char** argv) {
    assert(argc==3);sm::Rom rom(argv[1]);std::ifstream fixture(argv[2]);assert(fixture);
    auto decode=[](const std::string& hex) {
        sm::Entity64 e;assert(hex.size()==128u);
        for(unsigned i=0;i<64u;++i) e.raw[i]=std::stoul(hex.substr(i*2u,2u),nullptr,16);
        return e;
    };
    std::string p,o;unsigned expected,count=0;
    while(fixture>>p>>o>>expected) {
        assert(sm::rom_player_object_contact(rom,decode(p),decode(o))==bool(expected));++count;
    }
    assert(count==60u);
    sm::Entity64 player;player.clear();player.type()=1;player.raw[0x13]=3;player.raw[0x14]=0x83;
    player.set_x_fixed(0x1000);player.set_y_fixed(0x1000);
    // $7CC3 and $9B38's wreck states retain source dimensions and position,
    // but neither the initial explosion nor the persistent rubble is hostile.
    for(unsigned frame:{9u,11u,12u,19u}) for(unsigned flags:{4u,0x46u}) {
        auto wreck=player;wreck.type()=0x6b;wreck.flags15()=flags;wreck.raw[6]=frame;
        for(int offset=-512;offset<=512;offset+=32) {
            wreck.set_x_fixed(std::uint16_t(player.x_fixed()+offset));
            assert(!sm::rom_player_object_contact(rom,player,wreck));
        }
    }
    std::cout<<"Player contact PASS: 60 original-ROM scans and all persistent cannon wreck frames\n";
}
