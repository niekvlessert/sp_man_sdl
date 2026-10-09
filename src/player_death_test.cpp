#include "player_death.hpp"
#include "play_session.hpp"
#ifdef NDEBUG
#undef NDEBUG
#endif
#include <cassert>
#include <fstream>
#include <iostream>
int main(int argc,char**argv) {
    assert(argc==3);sm::Rom rom(argv[1]);sm::Entity64 player;
    player.type()=1;player.flags15()=0x39;player.raw[0x13]=3;player.raw[0x14]=0x83;
    player.set_x_fixed(0x0500u);player.set_y_fixed(0x0800u);
    sm::PlayerDeath death;death.begin(rom,player);
    std::ifstream input(argv[2]);unsigned tick,count=0;std::string bytes;
    while(input>>tick>>bytes) {
        assert(tick==count && bytes.size()==64u);
        if(tick) death.tick(player);
        for(unsigned i=0;i<32u;++i) assert(player.raw[i]==std::stoul(bytes.substr(i*2,2),nullptr,16));
        assert(death.active()==(tick<40u));++count;
    }
    assert(count==41u && player.type()==0 && player.state()==2);
    std::cout<<"Player death PASS: all 41 original ROM records, four type-1 explosion frames and terminating state\n";
}
