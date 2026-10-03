#include "stage0_combat.hpp"
#include "stage0_enemies.hpp"
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
std::uint8_t direction8(const Entity64& target,const Entity64& source) {
    // Fixed $6B94-$6BE5, using the high position bytes exactly like the ROM.
    auto sm=[](std::uint8_t t,std::uint8_t s) {
        const int d=int(t)-int(s);
        return std::pair<unsigned,bool>{unsigned(d<0?-d:d)&0x7fu,d<0};
    };
    const auto [dx,left]=sm(target.raw[0x0a],source.raw[0x0a]);
    const auto [dy,above]=sm(target.raw[0x08],source.raw[0x08]);
    std::uint8_t c=left?(above?0u:6u):(above?2u:4u);
    const bool same=left==above;
    if((dy>=(dx>>1u) && same) || (dy<(dx>>1u) && !same)) ++c;
    return std::uint8_t(c&7u);
}
}
unsigned PlayerUpgrades::difficulty(const Rom& rom) const {
    // Bank02 $83E7: sum the five active weapon record weights, divide by 16,
    // add the power tier ($4E79), and cap at $0F. Speed is independent.
    const auto b=rom.bank(2);
    const unsigned weights=b[0x42d+(wave?9u:0u)]+(missile?b[0x42f]:0u)+
                           options*b[0x42e];
    return std::min(15u,(weights>>4u)+power_level());
}
void Stage0Combat::spawned(Entity64& e) {
    // Bank05 $82CA/$82E4, every fourth small turret awards a pickup.
    if((e.type()==0x20 || e.type()==0x29) && (++turret_count_&3)==0) e.raw[0x3d]=1;
}
bool Stage0Combat::fire(const Rom& rom,const Entity64& source,const Entity64& target,unsigned difficulty,int yo,int xo) {
    auto it=std::find_if(bullets_.begin(),bullets_.end(),[](auto& b){return !b.active();});
    if(it==bullets_.end()) return false;
    opening_bullets_[std::size_t(it-bullets_.begin())]=source.type()==0x10u || source.type()==0x12u || source.type()==0x15u || source.type()==0x18u;
    auto& b=*it;b.clear();b.type()=0x60;b.state()=0;b.raw[5]=0;b.flags15()=0x21;b.raw[0x17]=4;
    b.set_x_fixed(std::uint16_t(source.x_fixed()+xo*32));
    b.set_y_fixed(std::uint16_t(source.y_fixed()+yo*32));
    const int dx=int(std::uint8_t(target.x_fixed()/32))-int(std::uint8_t(b.x_fixed()/32));
    const int dy=int(std::uint8_t(target.y_fixed()/32))-int(std::uint8_t(b.y_fixed()/32));
    const auto bank=rom.bank(4);
    const unsigned angle=bank[0x13ed+(unsigned(std::abs(dy))&0xf0)+(unsigned(std::abs(dx))>>4)];
    const unsigned speed=bank[0x11a8+difficulty]; // original $7197 / CA19
    put(b,11,(dy<0?-1:1)*int(unsigned(bank[0x13ad+angle])*speed/32));
    put(b,13,(dx<0?-1:1)*int(unsigned(bank[0x13ad+63-angle])*speed/32));
    if(source.type()==0x1f || source.type()==0x1e) {
        // $9CC0 -> $7362: the large cannon fires along its five discrete
        // barrel directions, rather than re-aiming between burst shots.
        const unsigned heading=rom.bank(5)[0x1d0d+unsigned(source.type()==0x1e?0:source.raw[5])];
        const unsigned p=0x138d+heading*2;
        const auto signs=bank[p];const unsigned a=bank[p+1];
        const unsigned cannon_speed=rom.bank(5)[0x1d15+difficulty/2];
        put(b,11,(signs&1?-1:1)*int(unsigned(bank[0x13ad+a])*cannon_speed/32));
        put(b,13,(signs&2?-1:1)*int(unsigned(bank[0x13ad+63-a])*cannon_speed/32));
        b.set_x_fixed(std::uint16_t((source.x_fixed()&0xff00u)+xo*32));
        b.set_y_fixed(std::uint16_t((source.y_fixed()&0xff00u)+yo*32));
        b.type()=0x67;b.state()=0;b.raw[5]=std::uint8_t(heading/2);b.flags15()=0x35;
        b.raw[0x17]=4;
    } else if(source.type()==0x2cu) {
        // Bank05 $8420 -> $9CB5 uses BC=0, therefore heading entry 0 from
        // $9D0D. It shares the type-$67 projectile speed table with cannons.
        constexpr unsigned heading=0u;
        const unsigned p=0x138d+heading*2u;
        const auto signs=bank[p];const unsigned a=bank[p+1u];
        const unsigned speed=rom.bank(5)[0x1d15u+difficulty/2u];
        put(b,11,(signs&1u?-1:1)*int(unsigned(bank[0x13ad+a])*speed/32u));
        put(b,13,(signs&2u?-1:1)*int(unsigned(bank[0x13ad+63u-a])*speed/32u));
        b.type()=0x67u;b.state()=0u;b.raw[5]=0u;b.flags15()=0x35u;b.raw[0x17]=4u;
    }
    return true;
}
bool Stage0Combat::fire_type15_pair(const Entity64& source) {
    // Bank05 $9BFA/$9C07: the hovering type-$15 flyer emits two type-$61
    // rounds from its coarse cell. They first separate vertically for six
    // logic ticks, then both turn left at $0080 per logic tick.
    bool fired=false;
    for(int vy:{-0x0060,0x0060}) {
        auto it=std::find_if(bullets_.begin(),bullets_.end(),[](auto& b){return !b.active();});
        if(it==bullets_.end()) break;
        opening_bullets_[std::size_t(it-bullets_.begin())]=true;
        auto& b=*it;b.clear();b.type()=0x61;b.state()=0;b.raw[5]=0;
        b.flags15()=0x31;b.raw[0x17]=6;
        b.set_x_fixed(std::uint16_t(source.raw[0x0a])<<8u);
        b.set_y_fixed(std::uint16_t(source.raw[0x08])<<8u);
        put(b,11,vy);put(b,13,0);fired=true;
    }
    return fired;
}
void Stage0Combat::drop(const Rom& rom,Entity64& slot,std::uint16_t x,std::uint16_t y) {
    const auto bank=rom.bank(4);
    // $7024 advances through six unique items and the repeated first byte;
    // $7049 maps their selector values to tile icons.
    auto kind=bank[0x1042+pickup_cursor_];pickup_cursor_=(pickup_cursor_+1)%6;
    // $6FF7/$6FE1 substitutes $0C when W is already equipped. Both $0C
    // and $0D have distinct handlers; the icon alone does not imply a blast.
    if(kind==3 && upgrades_.missile) kind=14;
    if(kind==10 && upgrades_.wave) kind=12;
    if(kind==7 && upgrades_.options==2) kind=14;
    slot.clear();slot.type()=3;slot.state()=1;slot.flags15()=0x56;
    slot.raw[3]=kind;slot.raw[6]=bank[0x1049+kind];
    slot.raw[0x13]=4;slot.raw[0x14]=4;
    slot.set_x_fixed(x);slot.set_y_fixed(y);
}
void Stage0Combat::award_destroyed(const Rom& rom,std::uint8_t original_type) {
    const auto bank=rom.bank(4);
    const unsigned rec=0x1e74u+unsigned(original_type)*3u;
    if(rec+2>=bank.size()) return;
    const unsigned selector=bank[rec+2];
    if(selector==0 || selector>10) return;
    const unsigned q=0x1cf6u+(selector-1u)*2u;
    const unsigned bcd=unsigned(bank[q])|(unsigned(bank[q+1])<<8);
    if((bcd&0xffu)==0xffu) return;
    const unsigned value=(bcd&0xfu)+10u*((bcd>>4)&0xfu)+100u*((bcd>>8)&0xfu)+1000u*((bcd>>12)&0xfu);
    score_+=value;
}

void Stage0Combat::clear_vulnerable(const Rom& rom, GameState& game) {
    // Fixed $7058: scan all 20 object slots, ignore inactive/high-bit types and
    // this exact 35-type exclusion list, then set pending damage=1 and HP=0.
    // The normal $7C44->$7CC3 path subsequently creates each actor's real
    // $62/$6B replacement. $708B handles the final eight special types
    // separately; they are intentionally included in the exclusion table.
    static constexpr std::array<std::uint8_t,35> excluded{
        0x65,0x02,0x03,0x0e,0x24,0x2a,0x35,0x72,0x75,0x39,0x48,0x4d,
        0x69,0x6a,0x6b,0x52,0x53,0x54,0x3b,0x3c,0x3d,0x7c,0x3f,0x5f,
        0x78,0x79,0x56,0x3e,0x3e,0x64,0x71,0x7a,0x14,0x77,0x7b};
    for(auto& e:game.enemies) {
        if(!e.active() || (e.type()&0x80u) ||
           std::find(excluded.begin(),excluded.end(),e.type())!=excluded.end()) continue;
        e.raw[0x04]=1;
        e.raw[0x16]=0;
    }
    bullets_={};
    (void)rom;
}
void Stage0Combat::blast_bosses(const Rom& rom,GameState& game) {
    // $708B/$70D2 changes the first special boss to CE4A-1, rather than
    // destroying it. The type-$56 tower is excluded from this service.
    static constexpr std::array<std::uint8_t,8> types{0x3e,0x3e,0x64,0x71,0x7a,0x14,0x77,0x7b};
    for(auto& e:game.enemies) if(e.active() && std::find(types.begin(),types.end(),e.type())!=types.end()) {
        e.raw[0x16]=std::uint8_t((decode_spawn_type_metadata(rom,e.type()).bytes[3]/4u)-1u); e.raw[0x3c]=1;
        break;
    }
}

void Stage0Combat::collect(const Rom& rom,std::uint8_t kind,GameState& game,std::vector<PlaySound>& sounds) {
    // Original bank02 $87BF->$83A4 always requests SFX $09 after a pickup.
    // Red/power ($0E) and selector $0D additionally request $0A inside
    // their item handler before the common $09.
    if(kind==13 || kind==14) sounds.push_back(PlaySound::PowerUp);
    switch(kind) {
    case 2:upgrades_.speed=std::min(4u,upgrades_.speed+1);break;
    case 3:
        // Original $8443->$84AC selects CB48 and writes state=$80, mode=$03:
        // this is the persistent M (ground-missile) weapon, independent of W.
        upgrades_.missile=true;break;
    case 10:upgrades_.wave=true;break; // W, primary weapon state $0A
    case 11:
        // Original $8457 sets CB1D. This is the blue one-shot LARGE missile
        // salvo consumed by the next primary fire, not the normal M upgrade.
        upgrades_.missile_armed=true;break;
    case 7:upgrades_.options=std::min(2u,upgrades_.options+1);break;
    case 14:upgrades_.power=std::min(16u,upgrades_.power+1);break;
    case 12:upgrades_.wave=false;break; // N: $8437 -> primary selector $01
    case 13:break; // $844B requests the power-up chime; no $7058 blast here.
    default:break;
    }
    game.difficulty=std::uint8_t(upgrades_.difficulty(rom));
    sounds.push_back(PlaySound::Pickup);
}
void Stage0Combat::step(const Rom& rom,GameState& game,unsigned frame,int dx,int dy,std::vector<PlaySound>& sounds) {
    for(auto& b:bullets_) if(b.active()) {
        // Exact projectile-state cadence from the original D460 pool. Type $60
        // exposes flags $21 for its four-tick launch phase and then $31. Type
        // $61 separates vertically for six ticks before turning left.
        if((frame&3u)==0u) {
            if(b.type()==0x60u && b.state()==0u && b.raw[0x17]) {
                if(--b.raw[0x17]==0u) {b.state()=1;b.flags15()=0x31;}
            } else if(b.type()==0x61u && b.state()==0u && b.raw[0x17]) {
                if(--b.raw[0x17]==0u) {
                    b.state()=1;put(b,11,0);put(b,13,-0x0080);
                }
            }
        }
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
            // Original $7606->$7622->$7662 special-case for player type 1
            // against pickup type 3. Positions are 8.8 tile coordinates: the
            // player anchor is biased by +1 coarse cell and the pickup's +13/
            // +14 metadata supplies the Y/X extent. $7681/$769D subtract one
            // from that extent before the final unsigned byte comparison.
            // Our entity coordinates already include the 60-Hz camera fraction,
            // so no separate CA1A/CA1C low-byte correction is needed here.
            auto pickup_axis_hit=[](std::uint16_t player,std::uint16_t item,std::uint8_t extent) {
                // Native presentation carries fractional camera/player motion, so
                // the byte-only ROM comparison becomes unnecessarily picky near
                // cell boundaries. Preserve the metadata extent but compare in
                // 1/32-pixel space with one pixel of forgiveness on each side.
                const int cells=std::max(2,int(extent&0x1fu)-1);
                // The ROM's high-byte test spans three adjacent 8-pixel cells
                // for the normal 4-wide pickup.  A symmetric continuous form
                // is ~12 px from centre; add 2 px for fractional presentation.
                const int radius=(cells*4+2)*32;
                return std::abs(int(std::int16_t(player-item))) <= radius;
            };
            if(pickup_axis_hit(game.player.x_fixed(),e.x_fixed(),e.raw[0x14]) &&
               pickup_axis_hit(game.player.y_fixed(),e.y_fixed(),e.raw[0x13])) {
                collect(rom,e.raw[3],game,sounds);e.clear();
            }
        }
        if(frame&3) continue;
        bool shot=false;
        if(e.type()==0x15u && e.state()==2u && e.raw[0x18]==3u) {
            // Bank05 $804E->$9BFA. The hover flyer fires the distinctive
            // vertical type-$61 pair exactly when its six-tick pause timer
            // reaches three.
            shot=fire_type15_pair(e);
        }
        if(e.type()==0x19u && e.raw[0x26]) {
            // Fixed $5624 -> $7143: one standard aimed enemy round after the
            // four-tick pivot/fire countdown.
            e.raw[0x26]=0u;shot=fire(rom,e,game.player,game.difficulty) || shot;
        }
        if(e.type()==0x2cu && e.raw[0x24]) {
            // $83EA->$8420 queues one fixed-heading shot. The enemy handler
            // owns the three-shot cadence; combat owns the projectile pool.
            e.raw[0x24]=0u;
            shot=fire(rom,e,game.player,game.difficulty) || shot;
        }
        if(e.type()==0x1eu && step_stage0_blue_enemy(game,e)) {
                for(auto offset:std::array<std::pair<int,int>,3>{{{-8,8},{16,0},{40,8}}})
                    shot=fire(rom,e,game.player,game.difficulty,offset.first,offset.second)||shot;
        }
        if(e.type()==0x18u) {
            // Fixed $5525-$5548. +17 is a 23-tick attack timer; at stage-0
            // $750F accepts random selectors below the current CA19 value;
            // then $7143 creates a standard aimed type-$60 round.
            if(e.raw[0x17]>1u) --e.raw[0x17];
            else if(e.raw[0x17]==1u) {
                e.raw[0x17]=0x17;
                if((rom_random(rom,game)&15u)<game.difficulty) shot=fire(rom,e,game.player,game.difficulty);
            }
        }
        if((e.type()==0x20 || e.type()==0x29) && e.raw[10]<28 && e.raw[8]<22 &&
           (((frame/4)^e.raw[0x2d])&31)==0) {
            const bool below=game.player.y_fixed()>=e.y_fixed();
            if((rom_random(rom,game)&15u)<game.difficulty && below==bool(e.raw[0x20])) shot=fire(rom,e,game.player,game.difficulty) || shot;
        }
        if(e.type()==0x55 && e.state()>=2u && e.state()<=4u &&
           (((frame/4)^e.raw[0x2d])&15u)==0u) {
            // Fixed $59D0. Direction $6B94 is halved to select one of four
            // signed high-byte muzzle offsets from $5A11, then $7143 creates
            // a standard aimed type-$60 projectile. Keep the low 8.8 bytes.
            const auto fixed=rom.bank(0);
            const unsigned i=(direction8(game.player,e)>>1u)&3u;
            const int yo=std::int8_t(fixed[0x1a11u+i*2u]);
            const int xo=std::int8_t(fixed[0x1a12u+i*2u]);
            auto muzzle=e;
            muzzle.set_y_fixed(std::uint16_t(int(e.y_fixed())+yo*0x100));
            muzzle.set_x_fixed(std::uint16_t(int(e.x_fixed())+xo*0x100));
            const int dxp=std::abs(int(std::int16_t(game.player.x_fixed()-muzzle.x_fixed())));
            const int dyp=std::abs(int(std::int16_t(game.player.y_fixed()-muzzle.y_fixed())));
            // $7725 with BC=$0C00 suppresses the shot only in the immediate
            // close-radius around the player.
            if(dxp+dyp>=0x0c00) shot=fire(rom,muzzle,game.player,game.difficulty);
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
                    shot=fire(rom,e,game.player,game.difficulty,int(b6[p])*8,int(b6[p+1])*8);
                }
            }
        }
        if(shot) sounds.push_back(e.type()==0x1f ? PlaySound::CannonShot : PlaySound::EnemyShot);
    }
}
}
