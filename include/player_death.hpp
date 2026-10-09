#pragma once
#include "rom.hpp"
#include "game_state.hpp"
#include <algorithm>
namespace sm {
// Bank02 $809D/$80DA, retaining the player's original type-1 sprite list.
class PlayerDeath {
public:
    void begin(const Rom& rom,Entity64& player) {
        const auto bank=rom.bank(2);
        first_=bank[0xb0u];end_=bank[0xdbu];
        player.state()=1;player.raw[3]=1;player.flags15()=0x2du;
        player.raw[0x14]&=0x7fu;player.raw[5]=first_;
        std::fill(player.raw.begin()+0x19,player.raw.begin()+0x20,0);
        player.raw[0x17]=bank[0xd8u];active_=true;
    }
    void tick(Entity64& player) {
        if(!active_) return;
        const auto next=unsigned(player.raw[5])+1u;
        player.raw[5]=std::uint8_t(next<end_?next:first_);
        // $6AD2 deliberately leaves timer=1 on the terminating call.
        if(player.raw[0x17]>1u) --player.raw[0x17];
        else {player.state()=2;player.type()=0;active_=false;}
    }
    bool active() const noexcept {return active_;}
private:
    bool active_=false;
    unsigned first_=6,end_=10;
};
}
