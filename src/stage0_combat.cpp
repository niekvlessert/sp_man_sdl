#include "stage0_combat.hpp"
#include <algorithm>
#include <cstdlib>

namespace sm {
namespace {
void put(Entity64& e,unsigned p,int value) {
    e.raw[p]=std::uint8_t(value);e.raw[p+1]=std::uint8_t(unsigned(value)>>8);
}
int velocity(const Entity64& e,unsigned p) {return std::int16_t(unsigned(e.raw[p])|(unsigned(e.raw[p+1])<<8));}
bool timer(Entity64& e,unsigned field) {
    if(e.raw[field]==1) return true;
    --e.raw[field];return false;
}
}
void Stage0Combat::spawned(Entity64& e) {
    // Bank05 $82CA/$82E4, every fourth small turret awards a pickup.
    if(e.type()==0x20 && (++turret_count_&3)==0) e.raw[0x3d]=1;
}
bool Stage0Combat::fire(const Rom& rom,const Entity64& source,const Entity64& target,int yo,int xo) {
    auto it=std::find_if(bullets_.begin(),bullets_.end(),[](auto& b){return !b.active();});
    if(it==bullets_.end()) return false;
    auto& b=*it;b.clear();b.type()=0x60;b.flags15()=0x21;
    b.set_x_fixed(std::uint16_t(source.x_fixed()+xo*32));
    b.set_y_fixed(std::uint16_t(source.y_fixed()+yo*32));
    const int dx=int(std::uint8_t(target.x_fixed()/32))-int(std::uint8_t(b.x_fixed()/32));
    const int dy=int(std::uint8_t(target.y_fixed()/32))-int(std::uint8_t(b.y_fixed()/32));
    const auto bank=rom.bank(4);
    const unsigned angle=bank[0x13ed+(unsigned(std::abs(dy))&0xf0)+(unsigned(std::abs(dx))>>4)];
    const unsigned speed=bank[0x11a8]; // difficulty zero, $7197
    put(b,11,(dy<0?-1:1)*int(unsigned(bank[0x13ad+angle])*speed/32));
    put(b,13,(dx<0?-1:1)*int(unsigned(bank[0x13ad+63-angle])*speed/32));
    if(source.type()==0x1f) {
        // $9CC0 -> $7362: the large cannon fires along its five discrete
        // barrel directions, rather than re-aiming between burst shots.
        const unsigned p=0x138d+unsigned(source.raw[5])*4;
        const auto signs=bank[p];const unsigned a=bank[p+1];
        put(b,11,(signs&1?-1:1)*int(unsigned(bank[0x13ad+a])*speed/32));
        put(b,13,(signs&2?-1:1)*int(unsigned(bank[0x13ad+63-a])*speed/32));
    }
    return true;
}
void Stage0Combat::drop(const Rom& rom,Entity64& slot,std::uint16_t x,std::uint16_t y) {
    const auto bank=rom.bank(4);
    // $7024 advances through six unique items and the repeated first byte;
    // $7049 maps their selector values to tile icons.
    auto kind=bank[0x1042+pickup_cursor_];pickup_cursor_=(pickup_cursor_+1)%6;
    // $6FF7/$6FE1 substitutes $0C when W is already equipped. Both $0C
    // and $0D use the original blue icon matrices ($7049 selectors 6/8).
    if(kind==10 && upgrades_.wave) kind=12;
    if(kind==7 && upgrades_.options==2) kind=14;
    slot.clear();slot.type()=3;slot.state()=1;slot.flags15()=0x56;
    slot.raw[3]=kind;slot.raw[6]=bank[0x1049+kind];
    slot.raw[0x13]=4;slot.raw[0x14]=4;
    slot.set_x_fixed(x);slot.set_y_fixed(y);
}
void Stage0Combat::collect(std::uint8_t kind,GameState& game,std::vector<PlaySound>& sounds) {
    switch(kind) {
    case 2:upgrades_.speed=std::min(4u,upgrades_.speed+1);break;
    case 3:upgrades_.wave=false;break; // N, primary weapon state 3
    case 10:upgrades_.wave=true;break; // W, primary weapon state $0A
    case 11:upgrades_.mega_bomb=true;break;
    case 7:upgrades_.options=std::min(2u,upgrades_.options+1);break;
    case 14:upgrades_.power=std::min(16u,upgrades_.power+1);break;
    case 12:case 13:
        // Blue capsule: $7058 marks vulnerable actors for destruction.
        for(auto& e:game.enemies) if(e.active() && (e.raw[0x14]&128)) e.clear();
        bullets_={};sounds.push_back(PlaySound::Explosion);break;
    default:break;
    }
}
void Stage0Combat::step(const Rom& rom,GameState& game,unsigned frame,int dx,int dy,std::vector<PlaySound>& sounds) {
    for(auto& b:bullets_) if(b.active()) {
        // Spread each original 15-Hz velocity over four presentation ticks.
        for(unsigned p:{7u,9u}) {
            const int v=velocity(b,p+4);
            const int phase=int(frame&3);
            const int delta=v*(phase+1)/4-v*phase/4;
            if(p==7) b.set_y_fixed(std::uint16_t(b.y_fixed()+delta));
            else b.set_x_fixed(std::uint16_t(b.x_fixed()+delta));
        }
        const int x=std::int16_t(b.x_fixed())/32,y=std::int16_t(b.y_fixed())/32;
        if(x< -16 || x>=272 || y< -16 || y>=224) b.clear();
    }
    for(auto& e:game.enemies) {
        if(e.type()==3) {
            e.set_x_fixed(std::uint16_t(e.x_fixed()-dx));e.set_y_fixed(std::uint16_t(e.y_fixed()-dy));
            const int x=std::int16_t(e.x_fixed())/32,y=std::int16_t(e.y_fixed())/32;
            if(x< -16 || x>=272 || y< -16 || y>=224) {e.clear();continue;}
            if(std::abs(int(game.player.x_fixed())/32-x-8)<14 &&
               std::abs(int(game.player.y_fixed())/32-y-8)<14) {
                collect(e.raw[3],game,sounds);e.clear();
            }
        }
        if(frame&3) continue;
        bool shot=false;
        if(e.type()==0x20 && e.raw[10]<28 && e.raw[8]<22 &&
           (((frame/4)^e.raw[0x2d])&31)==0) {
            const bool below=game.player.y_fixed()>=e.y_fixed();
            if(below==bool(e.raw[0x20])) shot=fire(rom,e,game.player);
        }
        if(e.type()==0x1f && e.raw[10]<28 && e.raw[8]<24) {
            if(e.raw[0x24]==0) {
                const int x=int(std::uint8_t(game.player.x_fixed()/32))-int(std::uint8_t(e.x_fixed()/32));
                const int y=int(std::uint8_t(game.player.y_fixed()/32))-int(std::uint8_t(e.y_fixed()/32));
                const auto b4=rom.bank(4),b6=rom.bank(6);
                unsigned a=b4[0x13ed+(unsigned(std::abs(y))&0xf0)+(unsigned(std::abs(x))>>4)];
                const unsigned flags=(y<0?1:0)+(x<0?2:0);
                if(flags==0 || flags==3) a=63-a;
                const unsigned quadrant=flags==0?192:(flags==1?0:(flags==2?128:64));
                e.raw[5]=b6[0x1cdc+((a+quadrant)>>4)];
            }
            if(timer(e,0x17) && timer(e,0x18)) {
                e.raw[0x18]=4;const auto phase=e.raw[0x24]++;
                if(phase==3) {e.raw[0x24]=0;e.raw[0x17]=32;++e.raw[0x18];}
                else if(phase!=1) {
                    const auto b6=rom.bank(6);const unsigned p=0x1cb6+unsigned(e.raw[5])*2;
                    shot=fire(rom,e,game.player,int(b6[p])*8,int(b6[p+1])*8);
                }
            }
        }
        if(shot) sounds.push_back(PlaySound::EnemyShot);
    }
}
}
