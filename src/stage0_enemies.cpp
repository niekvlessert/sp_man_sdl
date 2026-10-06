#include "stage0_enemies.hpp"
#include "assets.hpp"
#include <algorithm>
#include <cstdlib>

namespace sm {
namespace {
std::uint16_t word(std::span<const std::uint8_t> bytes,unsigned p) {
    return std::uint16_t(bytes[p])|(std::uint16_t(bytes[p+1])<<8);
}
void put(Entity64& e,unsigned p,int value) {
    e.raw[p]=std::uint8_t(value);e.raw[p+1]=std::uint8_t(unsigned(value)>>8);
}
int signed_word(const Entity64& e,unsigned p) {return std::int16_t(word(e.raw,p));}
bool flight(std::uint8_t t) {
    // $13 joins the generic $51-wave mover in Stage 3. Its own handler owns
    // the launch/turnaround phases, but position integration is the same 8.8
    // velocity service as the older $10/$12/$15/$18 families.
    return t==0x10 || t==0x12 || t==0x13 || t==0x15 || t==0x18;
}
std::uint8_t direction8(const GameState& game,const Entity64& e) noexcept {
    // Fixed bank $6B94-$6BE5, used by the type-$64 core when the tower is
    // fully open/closed. Only the high coordinate bytes participate.
    auto sm=[](std::uint8_t target,std::uint8_t object) {
        const int d=int(target)-int(object);
        return std::pair<unsigned,bool>{unsigned(d<0?-d:d)&0x7fu,d<0};
    };
    const auto [dx,left]=sm(game.player.raw[0x0a],e.raw[0x0a]);
    const auto [dy,above]=sm(game.player.raw[0x08],e.raw[0x08]);
    std::uint8_t c=left?(above?0u:6u):(above?2u:4u);
    const bool same=left==above;
    if((dy>=(dx>>1u)&&same)||(dy<(dx>>1u)&&!same)) ++c;
    return std::uint8_t(c&7u);
}
Entity64* create(const Rom& rom, GameState& game,std::uint8_t type) {
    auto* e=game.allocate_enemy();if(!e) return nullptr;
    e->clear();e->type()=type;
    const auto meta=decode_spawn_type_metadata(rom,type);
    std::copy(meta.bytes.begin(),meta.bytes.end(),e->raw.begin()+0x13);
    e->raw[0x2d]=std::uint8_t(e-game.enemies.data()+1);
    return e;
}
// Original $6AD2/$6ADF leaves the counter at one on expiration.
bool expired(Entity64& e,unsigned field) {
    if(e.raw[field]==1) return true;
    --e.raw[field];return false;
}
void step_stage0_gate_object(const Rom& rom,GameState& game,Entity64& e,std::vector<PlaySound>* sounds) {
    if(e.type()==0x64u) {
        // Bank06 $A2D8-$A493. Keep the actual phase records in the object
        // just like the Z80 does; this also reproduces the $2800 -> $1200
        // entrance and the $0800..$1200 open/close travel seen in traces.
        static constexpr std::array<std::array<std::uint8_t,4>,5> phase{{
            {{0xc0,0xff,0x58,0x01}}, {{0x00,0x00,0x24,0x01}},
            {{0xc0,0xff,0x28,0x10}}, {{0x00,0x00,0x24,0x01}},
            {{0x40,0x00,0x28,0x14}} }};
        static constexpr std::array<std::uint8_t,8> directional{2,3,4,5,5,5,2,2};
        auto load_phase=[&](unsigned state) {
            const auto& q=phase[std::min(6u,state)-2u];
            e.raw[0x11]=q[0];e.raw[0x12]=q[1];e.raw[0x17]=q[2];e.raw[0x20]=q[3];
        };
        auto sprite=[&] {
            const unsigned tile=std::min<unsigned>(e.raw[0x06],6u);
            if(tile>=1u && tile<=4u) {
                static constexpr std::array<std::uint8_t,5> direct{0,0,1,4,4};
                e.raw[0x05]=direct[tile];
            } else if(tile==6u) e.raw[0x05]=2u;
            else e.raw[0x05]=directional[(direction8(game,e)+2u)&7u];
        };
        auto attacks=[&](bool closed) {
            if(closed) ++e.raw[0x24]; else e.raw[0x24]=0;
            if(!expired(e,0x18)) return;
            const auto old=e.raw[0x23]--;
            if(old) return;
            e.raw[0x23]=2;
            if(auto* child=create(rom,game,0x40)) {
                child->raw[0x24]=e.raw[0x24];child->raw[0x21]=e.raw[0x21];
                child->set_x_fixed(std::uint16_t(std::uint8_t(e.raw[10]+12u+(e.raw[0x25]&3u)))<<8);
                child->set_y_fixed(std::uint16_t(e.raw[8])<<8);
            }
            ++e.raw[0x25];
            if(--e.raw[0x21]) return;
            const auto b=rom.bank(6);unsigned i=e.raw[0x22]++;
            if(i>=4u || b[0x453+i*2]==0) {i=0;e.raw[0x22]=0;}
            e.raw[0x18]=b[0x453+i*2];e.raw[0x21]=b[0x454+i*2];e.raw[0x25]=0;
        };
        // $6A13 consumes the movement installed by the preceding A3F9.
        // For this boss that movement is horizontal and stored at +11/+12.
        if(e.state()>=2u && e.state()<=6u)
            e.set_x_fixed(std::uint16_t(e.x_fixed()+signed_word(e,0x11)));
        if(e.state()==0u) {
            e.set_x_fixed(0x2800u);e.set_y_fixed(0x0c00u);
            e.raw[0x06]=6u;e.raw[0x26]=0x12u;e.raw[0x3f]=1u;
            if(auto* child=create(rom,game,0x3d)) {
                child->set_x_fixed(0x2c00);child->set_y_fixed(0x1200);
                child->state()=1;child->raw[0x34]=e.raw[0x2d];
            }
            e.state()=1u;
        } else if(e.state()==1u) {
            e.state()=2u;load_phase(2u);
        } else if(e.state()==2u) {
            // A338 decrements +26 continuously; tile 6 -> 5 only on the
            // single zero crossing. Afterwards the byte simply underflows.
            if(--e.raw[0x26]==0u && e.raw[0x06]) --e.raw[0x06];
            sprite();
            if(expired(e,0x17)) {
                e.raw[0x14]|=0x80u;e.state()=3u;load_phase(3u);
                e.raw[0x18]=6;e.raw[0x21]=6;e.raw[0x22]=1;
            }
        } else if(e.state()==3u) {
            sprite();attacks(false);
            if(expired(e,0x17)) {e.state()=4u;load_phase(4u);}
        } else if(e.state()==4u) {
            // A3DF: once +20 reaches one it stays there, so the selector
            // decreases on every following logic tick down to zero.
            if(expired(e,0x20) && e.raw[0x06]) {
                if(--e.raw[0x06]==0u && sounds) sounds->push_back(PlaySound::ClawOpen);
            }
            sprite();
            if(expired(e,0x17)) {e.state()=5u;load_phase(5u);}
        } else if(e.state()==5u) {
            sprite();attacks(true);
            if(expired(e,0x17)) {e.state()=6u;load_phase(6u);}
        } else {
            // A3C4 mirrors A3DF and stops at selector 5; on phase expiry
            // state 6 returns directly to state 3.
            if(expired(e,0x20) && e.raw[0x06]<5u) {
                if(++e.raw[0x06]==1u && sounds) sounds->push_back(PlaySound::ClawClose);
            }
            sprite();
            if(expired(e,0x17)) {e.state()=3u;load_phase(3u);}
        }
    } else if(e.type()==0x6au) {
        // Bank05 $9AD7..$9B04. Eight explosion stamp selectors run once;
        // on wrap the original installs timer $30 and immediately enters
        // state1, whose first externally observed value is $2F.
        if(e.state()==0u) {
            e.raw[0x06]=std::uint8_t((e.raw[0x06]+1u)&7u);
            if(e.raw[0x06]==0u) {e.state()=1u;e.raw[0x17]=0x2fu;}
        } else if(e.state()==1u) {
            if(e.raw[0x17]>1u) --e.raw[0x17];
            else e.clear();
        }
    }
}
unsigned target_global_angle(const Rom& rom,const Entity64& e,const Entity64& player) {
    const int dx=int(std::uint8_t(player.x_fixed()/32))-int(std::uint8_t(e.x_fixed()/32));
    const int dy=int(std::uint8_t(player.y_fixed()/32))-int(std::uint8_t(e.y_fixed()/32));
    const auto b4=rom.bank(4);
    const unsigned a=b4[0x13ed+(unsigned(std::abs(dy))&0xf0)+(unsigned(std::abs(dx))>>4)]&63u;
    if(dy<0) return dx<0 ? 0x7fu-a : a;       // upper-left / upper-right
    return dx<0 ? 0x80u+a : 0xffu-a;          // lower-left / lower-right
}
void global_angle_velocity(const Rom& rom,Entity64& e,unsigned global,unsigned speed) {
    const unsigned q=(global>>6)&3u,z=global&63u;
    const unsigned a=(q==1u || q==3u)?63u-z:z;
    const auto b4=rom.bank(4);
    int vy=int(unsigned(b4[0x13ad+a])*speed/32u);
    int vx=int(unsigned(b4[0x13ad+63u-a])*speed/32u);
    if(q<2u) vy=-vy;
    if(q==1u || q==2u) vx=-vx;
    put(e,11,vy);put(e,13,vx);
}
void aimed_velocity(const Rom& rom,Entity64& e,const Entity64& player,unsigned speed) {
    global_angle_velocity(rom,e,target_global_angle(rom,e,player),speed);
}
struct Box {int x,y,w,h;};
std::vector<Box> boxes(const Rom& rom,const Entity64& e) {
    std::vector<Box> result;
    if(!e.active() || e.type()>0x7c) return result;
    const auto b7=rom.bank(7),b8=rom.bank(8);
    const unsigned list=word(b7,0x496+(e.type()-1)*2);
    if(list<0xa000 || list+unsigned(e.raw[5])*2+1>=0xc000) return result;
    const unsigned def=word(b8,list-0xa000+unsigned(e.raw[5])*2);
    if(def<0xa000 || def>=0xc000) return result;
    const unsigned p=def-0xa000,count=b8[p]&127;
    if(count>32 || p+1+count*6>b8.size()) return result;
    for(unsigned i=0;i<count;++i) {
        const unsigned c=p+1+i*6,shape=b8[c+5];
        if(!shape || shape>=21) continue;
        const unsigned s=0x219+shape*4;
        result.push_back({int(std::int16_t(e.x_fixed()))/32+int(std::int8_t(b8[c+2]))+b7[s+2],
            int(std::int16_t(e.y_fixed()))/32+int(std::int8_t(b8[c+1]))+b7[s],b7[s+3],b7[s+1]});
    }
    return result;
}
}
bool stage0_sprite_overlap(const Rom& rom,const Entity64& a,const Entity64& b) {
    const auto abox=boxes(rom,a);
    auto overlaps=[](const Box& x,const Box& y) {
        return x.w && x.h && y.w && y.h && x.x<y.x+y.w && y.x<x.x+x.w &&
               x.y<y.y+y.h && y.y<x.y+x.h;
    };
    if(b.type()==0x7bu) {
        // Stage-6 DE00 marks the centre's target cells with bit 6 ($47).
        // The shell cells are $03; their visible area is not the weak point.
        const auto properties=decode_stage_terrain_properties(rom,5u,true);
        for(const auto& v:decode_stage0_tile_visuals(rom,b))
            for(unsigned ty=0;ty<v.rows;++ty) for(unsigned tx=0;tx<v.cols;++tx) {
                if(!(properties[v.tiles[ty*unsigned(v.cols)+tx]]&0x40u)) continue;
                const Box cell{v.x+int(tx*8u),v.y+int(ty*8u),8,8};
                for(const auto& x:abox) if(overlaps(x,cell)) return true;
            }
        return false;
    }
    if(b.type()==0x43u) {
        // $7606/$7670: Warp Machine uses a tile-domain controller target,
        // not its tiny decorative SAT sprite. Its +13/+14 are four cells.
        const Box target{int(std::int16_t(b.x_fixed()))/32,
                         int(std::int16_t(b.y_fixed()))/32,
                         int((b.raw[0x14]&31u)-1u)*8,int((b.raw[0x13]&31u)-1u)*8};
        for(const auto& x:abox) if(overlaps(x,target)) return true;
        return false;
    }
    // Several late-stage actors are drawn as composed tile matrices rather
    // than ordinary sprites. Their sprite definitions therefore do not cover
    // the pixels the player actually sees. In particular type $56 is the
    // destructible 64x80 upper section of the large vertical tower. Collide
    // against the exact nonzero tile cells used by the native compositor.
    if(b.type()==0x76u || b.type()==0x14u || b.type()==0x26u || b.type()==0x3cu || b.type()==0x3fu || b.type()==0x56u || b.type()==0x64u || b.type()==0x6au || b.type()==0x77u || b.type()==0x78u || b.type()==0x79u || b.type()==0x7au) {
        for(const auto& v:decode_stage0_tile_visuals(rom,b))
            for(unsigned ty=0;ty<v.rows;++ty) for(unsigned tx=0;tx<v.cols;++tx) {
                if(!v.tiles[ty*unsigned(v.cols)+tx]) continue;
                const Box cell{v.x+int(tx*8u),v.y+int(ty*8u),8,8};
                for(const auto& x:abox) if(overlaps(x,cell)) return true;
            }
        // Type $64 also has the animated round core on the sprite plane. The
        // original damage target is the complete boss object, so keep testing
        // its ROM sprite boxes after the composed tile cells missed.
        if(b.type()!=0x14u && b.type()!=0x64u && b.type()!=0x77u && b.type()!=0x7au) return false;
    }
    const auto bbox=boxes(rom,b);
    for(const auto& x:abox) for(const auto& y:bbox) if(overlaps(x,y)) return true;
    return false;
}
void initialize_stage0_flyer(const Rom& rom,Entity64& e,std::uint8_t parameter,
        unsigned ordinal,unsigned tick,const Entity64& player) {
    const auto fixed=rom.bank(0),bank5=rom.bank(5);
    e.raw[0x38]=std::uint8_t(ordinal+1);
    if(e.type()==0x12) { // fixed $534E
        e.raw[0x20]=parameter;put(e,11,parameter?-96:96);put(e,13,-192);
        e.raw[0x17]=4;e.raw[5]=fixed[0x137c];
    } else if(e.type()==0x18) { // fixed $54C1/$550D
        e.raw[0x21]=parameter;
        const unsigned row=0x150d+(parameter&3)*6;
        put(e,15,word(fixed,row));put(e,13,std::int16_t(word(fixed,row+2)));
        e.raw[0x22]=fixed[row+4];e.raw[0x23]=fixed[row+5];
        if(parameter&128) put(e,13,-signed_word(e,13));
        e.raw[0x17]=23;e.raw[5]=fixed[0x1508];
    } else if(e.type()==0x15) { // bank05 $8000/$806B
        e.raw[0x20]=(parameter>>2)&1;
        const unsigned table=word(bank5,0x6b+e.raw[0x20]*2)-0x8000;
        const unsigned off=table+ordinal*2;
        if(off+1<bank5.size()) {
            e.raw[8]=std::uint8_t(e.raw[8]+bank5[off]);
            e.raw[10]=std::uint8_t(e.raw[10]+bank5[off+1]);
        }
        e.raw[0x18]=8;put(e,13,-192);
    } else if(e.type()==0x10) { // fixed $5288, aimed flight
        e.set_x_fixed(0x1f00);e.set_y_fixed(std::uint16_t(fixed[0x12ec+(tick&15)])<<8);
        put(e,15,player.y_fixed()>=e.y_fixed()?16:-16);
        const int dx=int(std::uint8_t(player.x_fixed()/32))-int(std::uint8_t(e.x_fixed()/32));
        const int dy=int(std::uint8_t(player.y_fixed()/32))-int(std::uint8_t(e.y_fixed()/32));
        const auto b4=rom.bank(4);
        const unsigned angle=b4[0x13ed+(unsigned(std::abs(dy))&0xf0)+(unsigned(std::abs(dx))>>4)];
        put(e,11,(dy<0?-1:1)*int(unsigned(b4[0x13ad+angle])*24/32));
        put(e,13,(dx<0?-1:1)*int(unsigned(b4[0x13ad+63-angle])*24/32));
        e.raw[5]=fixed[0x12d2];
    } else if(e.type()==0x13) {
        // Fixed $53C4. Unlike the other $51 children this family has a real
        // state-0 constructor, so leave it there for the Stage-3 handler.
        e.state()=0;
        return;
    }
    e.state()=1;
}
bool Stage0Enemies::spawn(const Rom& rom,const SpawnRecord& r,GameState& game,std::uint8_t direction) {
    if(r.type!=0x51) return instantiate_stage0_spawn(rom,r,game,direction);
    // Extended $51 record: count byte, four controller fields, timing fields,
    // then a length-prefixed child descriptor at base+count ($67CE).
    // The child parameter after the length-prefixed descriptor is optional.
    // Stage 3's type-$13 waves are exactly 8 bytes long and end on the child
    // type itself; requiring 9 bytes silently dropped every one of those
    // waves. Type-$18 records carry a ninth parameter byte ($03/$83).
    if(r.payload.size()<8 || r.payload[0]+1u>=r.payload.size()) return false;
    const auto& p=r.payload;const unsigned child=p[0]+1;
    const auto type=p[child]&127;
    if(!flight(type)) return false;
    auto w=std::find_if(waves_.begin(),waves_.end(),[](auto& w){return !w.active && !w.alive;});
    if(w==waves_.end()) return false;
    // $51 is an invisible controller, but it still occupies one of the twenty
    // CE80 object slots in the original. Keeping controllers only in waves_
    // left extra main-pool slots available and let dense Stage-3 waves create
    // enemies that the MSX would reject once the pool filled.
    auto* owner=create(rom,game,0x51u);
    if(!owner) return false;
    *w={};w->active=true;w->y=p[1];w->x=p[2];w->count=p[3];w->remaining=p[3];
    w->repeat=p[4]==1;w->interval=p[5]&127;
    // $51's object-state constructor consumes one pass before substate 0
    // installs the record's first timer.  Because the native side table is
    // initialized at spawn time, compensate for that otherwise-missing pass;
    // subsequent intervals use the encoded value directly.
    w->timer=std::uint8_t(std::min<unsigned>(0xffu,unsigned(p[6])+1u));w->first_timer=p[6];
    w->end_trigger=p[7];w->type=type;w->parameter=child+1<p.size()?p[child+1]:0;
    w->bonus=(p[4]==2 && (p[5]&128)) || (p[4]==1 && p[0]>=8 && p[8]);
    w->owner=std::uint8_t(owner-game.enemies.data()+1u);
    owner->set_x_fixed(std::uint16_t(w->x)<<8u);owner->set_y_fixed(std::uint16_t(w->y)<<8u);
    owner->state()=2u;owner->raw[0x20]=w->count;
    return true;
}
bool step_stage0_blue_enemy(GameState& game,Entity64& e) {
    // $BB69-$BC2C. State 1 attacks before stopping at X=$1A; state 2
    // reverses vertical travel before testing alignment for its next burst.
    auto vertical=[&] {put(e,11,e.raw[0x20]?0x40:-0x40);};
    bool fire=false;
    if(e.state()==1u) {
        if(expired(e,0x17)) {e.raw[0x17]=8;fire=true;}
        if(e.raw[10]==0x1au) {put(e,13,0);vertical();e.state()=2;}
    } else if(e.state()==2u) {
        if(e.raw[8]<2u || e.raw[8]>=15u) {
            e.raw[0x20]^=1;vertical();
            if(++e.raw[0x21]>=3u) {put(e,11,0);put(e,13,-0xa0);e.state()=3;}
        }
        if(expired(e,0x17) && std::abs(int(game.player.raw[8])-int(e.raw[8]))<2) {
            e.raw[0x17]=40;fire=true;
        }
    }
    return fire;
}
bool Stage0Enemies::destroyed(const Entity64& enemy) {
    // $51 children store the controller's real one-based CE80 slot number in
    // +34, not an index into our native waves_ side table. Other linked actors
    // use the same field for their own parent relationships, so only the five
    // $51 flight families are eligible for this lookup.
    if(!flight(enemy.type())) return enemy.raw[0x3d]!=0;
    const auto parent=enemy.raw[0x34];
    auto it=std::find_if(waves_.begin(),waves_.end(),[&](const auto& w) {
        return w.owner==parent && w.type==enemy.type();
    });
    if(it==waves_.end()) return enemy.raw[0x3d]!=0;
    if(it->alive) --it->alive;
    ++it->killed;
    if(it->bonus && it->killed==it->count) {it->killed=0;return true;}
    return false;
}
void Stage0Enemies::move_60hz(GameState& game,unsigned frame,
                              std::vector<PlaySound>* sounds) {
    for(auto& e:game.enemies) {
        // Stage-6 $7C death is driven by global CE76. The original scheduler
        // reaches the left eight-record chain first and the right chain one
        // video pass later. +3F=$D2 is a native one-frame defer marker for the
        // second half only.
        if(e.active() && e.type()==0x7cu && e.raw[0x3f]==0xd2u) {
            e.raw[0x15]=0x2du;e.raw[0x14]&=0x7fu;
            e.raw[0x01]=0u;e.raw[0x34]=0u;e.raw[0x38]=0u;
            e.raw[0x05]=0u;e.raw[0x06]=0u;e.raw[0x17]=0u;
            for(unsigned p=0x0bu;p<=0x0eu;++p) e.raw[p]=0u;
            e.raw[0x3e]=0u;e.raw[0x3f]=0u;e.type()=0x62u;
            if(sounds) sounds->push_back(PlaySound::HeavyVehicleExplosion);
            continue;
        }

        // +3E is ROM handler/script metadata, never a generic lifetime.
        // In particular type $1F explicitly writes $09 at bank06:$BC56 and
        // the value survives destruction so the replacement $6B wreck can
        // select tile frame 9. Do not count it down here.
        if(e.active() && e.raw[0x3f]==0xd1u && e.raw[0x3e]) {
            if(--e.raw[0x3e]==0) e.clear();
            continue;
        }
        if(e.active() && (flight(e.type()) || e.type()==0x16u || e.type()==0x19u || e.type()==0x1au || (e.type()==0x1bu && e.state()==1u) || e.type()==0x42u || e.type()==0x45u || e.type()==0x1eu || e.type()==0x11u || e.type()==0x23u || e.type()==0x1du || e.type()==0x25u || e.type()==0x27u || e.type()==0x2au || e.type()==0x2cu || e.type()==0x2du || e.type()==0x2fu || e.type()==0x31u || e.type()==0x33u || e.type()==0x72u || e.type()==0x49u || e.type()==0x4au || e.type()==0x4du || e.type()==0x4eu || e.type()==0x58u || e.type()==0x5cu || e.type()==0x5eu || e.type()==0x66u || e.type()==0x68u || e.type()==0x70u || e.type()==0x74u || e.type()==0x40u || e.type()==0x0du)) {
        const int divisor=(e.type()==0x40u || e.type()==0x23u || e.type()==0x58u || e.type()==0x5eu || e.type()==0x66u)?3:4,phase=int(frame%unsigned(divisor));
        auto delta=[&](int v){return v*(phase+1)/divisor-v*phase/divisor;};
        e.set_x_fixed(std::uint16_t(e.x_fixed()+delta(signed_word(e,13))));
        // Type $2D is the exception to the normal +0B/+0C position service:
        // $8488 uses that word only as saved horizontal velocity while the
        // runner pauses to fire. Applying it as Y velocity made the native
        // ceiling/floor enemies visibly fly away from their surfaces.
        if(e.type()!=0x2du)
            e.set_y_fixed(std::uint16_t(e.y_fixed()+delta(signed_word(e,11))));
        const int x=std::int16_t(e.x_fixed())/32,y=std::int16_t(e.y_fixed())/32;
        // Type $16 children are allowed to be created by an off-screen $2B
        // launcher, but the original common object-boundary service retires
        // them at coarse X >= $20 before they can complete their launch phase.
        // Keeping them alive out to the generic native 352px margin lets those
        // hidden children accelerate/aim and later fly in from far to the right.
        const int right_guard=e.type()==0x16u ? 256 : 352;
        if(x < -80 || x>=right_guard || y < -80 || y>=256) {
            if(flight(e.type()) && e.raw[0x34]) {
                auto w=std::find_if(waves_.begin(),waves_.end(),[&](const auto& q) {
                    return q.owner==e.raw[0x34] && q.type==e.type();
                });
                if(w!=waves_.end() && w->alive) {--w->alive;w->bonus=false;}
            }
            e.clear();
        }
        }
    }
}
void Stage0Enemies::step_gate_20hz(const Rom& rom,GameState& game,unsigned tick,
                                   std::vector<PlaySound>* sounds,std::uint8_t ca3b,std::uint8_t fine_x) {
    // Stage-4 boss $14 ($AE0A) and Stage-5 boss $77 ($B0CC) use the same
    // 20-Hz object service as the terminal gate. Their camera-relative
    // entrance motion is supplied by the normal stage scroll; once the
    // background gate closes, only the explicit boss vectors below move them.
    static constexpr std::array<std::pair<std::uint8_t,std::uint8_t>,4> s4_part_a{{
        {0x0a,4},{0x0b,2},{0x0c,2},{0x0b,2}}};
    static constexpr std::array<std::uint8_t,4> s4_part_b{{3,4,5,4}};
    static constexpr std::array<std::uint8_t,4> s4_part_c{{0,0x0d,0x0e,0x0d}};
    static constexpr std::array<std::pair<std::uint8_t,std::uint8_t>,9> s4_motion{{
        {3,0x10},{4,0x20},{3,0x20},{4,0x20},{5,0x30},
        {2,0x30},{6,0x30},{2,0x30},{3,0x10}}};
    static constexpr std::array<std::pair<std::uint8_t,std::uint8_t>,3> s4_attack{{
        {8,0x18},{10,0x28},{12,0x48}}};
    static constexpr std::array<std::uint8_t,5> s4_burst_timer{{0x13,0x27,0x33,0x18,0x17}};

    struct Stage5Part { std::int8_t dx,dy; std::uint8_t frame,pattern,rx,ry; };
    static constexpr std::array<Stage5Part,12> s5_parts{{
        {-4, 3,0,0x09,1,1}, {10, 3,1,0x08,1,1},
        { 0,-6,2,0x0b,9,3}, { 4,-6,2,0x07,8,3},
        { 8,-6,2,0x0c,9,3}, { 0, 7,2,0x0e,9,3},
        { 4, 9,2,0x06,8,3}, { 8, 7,2,0x0f,9,3},
        { 0, 4,2,0x0d,10,2},{ 0,-9,2,0x0a,10,2},
        { 3, 4,2,0x0d,10,2},{ 3,-9,2,0x0a,10,2}}};
    struct Stage5Waypoint { std::uint8_t speed,y,x; };
    static constexpr std::array<Stage5Waypoint,15> s5_waypoints{{
        {0x04,0x38,0x60},{0x08,0x20,0xb8},{0x0c,0x68,0xb8},
        {0x10,0x68,0x18},{0x14,0x20,0x18},
        {0x08,0x08,0xb8},{0x08,0x60,0xb8},{0x08,0x60,0x08},
        {0x08,0x08,0x08},{0x08,0x08,0xb8},{0x08,0x60,0x08},
        {0x08,0x08,0x08},{0x08,0x60,0xb8},{0x08,0x60,0x08},
        {0x08,0x08,0x08}}};
    static constexpr std::array<std::array<std::int8_t,4>,8> s5_shot{{
        {{-8,-8,-6,-6}},{{-8,32,0,-8}},{{-8,64,6,-6}},{{32,72,8,0}},
        {{64,64,6,6}},{{72,32,0,8}},{{64,-8,-6,6}},{{32,-16,-8,0}}}};
    static constexpr std::array<std::uint8_t,8> s5_shot_frame{{6,0,3,9,8,2,5,11}};

    auto update_s4_parts=[&](Entity64& boss) {
        if(boss.raw[0x24]) --boss.raw[0x24];
        else {
            unsigned i=boss.raw[0x25]&3u;
            boss.raw[0x26]=s4_part_a[i].first;boss.raw[0x24]=s4_part_a[i].second;
            boss.raw[0x25]=std::uint8_t((i+1u)&3u);
        }
        if((tick&3u)==0u) {
            unsigned i=boss.raw[0x27]&3u;
            boss.raw[0x28]=s4_part_b[i];boss.raw[0x27]=std::uint8_t((i+1u)&3u);
        }
        if((boss.raw[0x2a]++&3u)==0u) {
            unsigned i=boss.raw[0x2b]&3u;
            boss.raw[0x2c]=s4_part_c[i];boss.raw[0x2b]=std::uint8_t((i+1u)&3u);
        }
        if((tick&1u)==0u) ++boss.raw[0x29];
    };
    auto load_s4_motion=[&](Entity64& boss) {
        unsigned i=boss.raw[0x23];
        if(i>=s4_motion.size()) i=0u;
        boss.raw[0x21]=s4_motion[i].first;boss.raw[0x22]=s4_motion[i].second;
        boss.raw[0x23]=std::uint8_t(i+1u);
    };
    auto load_s4_attack=[&](Entity64& boss) {
        unsigned i=boss.raw[0x0f];
        if(i>=s4_attack.size()) i=0u;
        boss.raw[0x10]=s4_attack[i].first;boss.raw[0x11]=s4_attack[i].second;
        boss.raw[0x0f]=std::uint8_t((i+1u)%s4_attack.size());
        boss.raw[0x17]=0x20u;
    };
    auto spawn_s4_shot=[&](Entity64& boss) {
        if(auto* c=create(rom,game,0x58u)) {
            // $B04E/$6929: alternate rails relative to the current boss.
            const bool lower=(tick&1u)==0u;
            c->set_x_fixed(std::uint16_t(std::uint8_t(boss.raw[0x0a]-5u))<<8u);
            c->set_y_fixed(std::uint16_t(std::uint8_t(boss.raw[0x08]+(lower?9:-3)))<<8u);
            c->raw[0x20]=lower?1u:0u;c->state()=0u;
        }
    };
    auto create_s5_part=[&](Entity64& parent,unsigned index) -> Entity64* {
        if(index>=s5_parts.size()) return nullptr;
        auto* c=create(rom,game,0x76u);if(!c) return nullptr;
        const auto& p=s5_parts[index];
        // $B3B7 calls $6929: descriptor offsets are relative to the
        // immediate parent's high bytes. $B3D0 copies its fractional X.
        // Camera motion then carries the whole entrance assembly together.
        c->set_x_fixed(std::uint16_t(parent.x_fixed()+int(p.dx)*0x0100));
        c->set_y_fixed(std::uint16_t((parent.y_fixed()&0xff00u)+int(p.dy)*0x0100));
        c->raw[0x05]=p.frame;c->raw[0x06]=p.pattern;
        c->raw[0x13]=p.rx;c->raw[0x14]=std::uint8_t(p.ry|0x80u);
        // The two controller roots carry bit 7 in +34 in the live pool;
        // linkage always uses the low seven bits as the parent slot id.
        c->raw[0x34]=std::uint8_t(parent.raw[0x2d] | ((parent.type()==0x77u && index<2u)?0x80u:0u));
        c->state()=0u;
        return c;
    };
    auto spawn_s5_shot=[&](Entity64& boss,unsigned attack) {
        if(auto* c=create(rom,game,0x5cu)) {
            const auto& q=s5_shot[attack&7u];
            c->raw[0x03]=std::uint8_t(attack&7u);
            c->raw[0x05]=c->raw[0x06]=s5_shot_frame[attack&7u];
            c->set_y_fixed(std::uint16_t(boss.y_fixed()+int(q[0])*32));
            c->set_x_fixed(std::uint16_t(boss.x_fixed()+int(q[1])*32));
            put(*c,13,signed_word(boss,13)/2+int(q[2])*32);
            put(*c,11,signed_word(boss,11)/2+int(q[3])*32);
            c->state()=1u;
        }
    };

    for(auto& e:game.enemies) if(e.active()) {
        if(e.type()==0x79u) {
            // Final boss, bank05 $96AC-$9804. The visible fight is one state
            // with a ROM-scripted 0/1/2 body animation and five repeating
            // attack records. Fatal damage during body selector 1 enters the
            // dedicated 3..7 destruction strip, then the ending latch.
            static constexpr std::array<std::pair<std::uint8_t,std::uint8_t>,10> anim_lo{{
                {0x20u,2u},{0x04u,0u},{0x28u,1u},{0x04u,0u},{0x30u,2u},
                {0x08u,0u},{0x18u,2u},{0x04u,0u},{0x22u,1u},{0x04u,0u}}};
            static constexpr std::array<std::pair<std::uint8_t,std::uint8_t>,10> anim_hi{{
                {0x20u,2u},{0x04u,0u},{0x08u,1u},{0x04u,0u},{0x30u,2u},
                {0x08u,0u},{0x18u,2u},{0x04u,0u},{0x20u,1u},{0x04u,0u}}};
            static constexpr std::array<std::pair<std::uint8_t,std::uint8_t>,5> attack{{
                {0x06u,0x38u},{0x87u,0x4cu},{0x08u,0x4eu},
                {0x85u,0x3cu},{0x85u,0x28u}}};

            auto spawn_type66=[&] {
                auto* c=create(rom,game,0x66u);if(!c) return;
                // $9C60->$6929 with BC=$0102: child high coordinates are
                // parent +X1/+Y2 cells; low fractions start cleared.
                c->set_x_fixed(std::uint16_t(std::uint8_t(e.raw[0x0a]+1u))<<8u);
                c->set_y_fixed(std::uint16_t(std::uint8_t(e.raw[0x08]+2u))<<8u);
                c->state()=0u;
            };
            auto animate=[&] {
                if(e.raw[0x20]==0u) {
                    const auto& table=game.difficulty<4u?anim_lo:anim_hi;
                    unsigned i=e.raw[0x21];
                    if(i>=table.size()) i=0u;
                    e.raw[0x21]=std::uint8_t(i+1u);
                    e.raw[0x20]=table[i].first;e.raw[0x06]=table[i].second;
                    if(e.raw[0x06]==1u) spawn_type66();
                }
                --e.raw[0x20];
            };
            auto load_attack=[&] {
                unsigned i=e.raw[0x27];
                if(i>=attack.size()) i=0u; // $FF at $975F restarts the list.
                const auto [count,delay]=attack[i];
                e.raw[0x27]=std::uint8_t(i+1u);
                e.raw[0x25]=count&0x80u;e.raw[0x26]=count&0x7fu;
                e.raw[0x17]=delay;
            };
            auto spawn_type5e=[&] {
                auto* c=create(rom,game,0x5eu);if(!c) return;
                // $B6C9->$6929 uses FA07 or F509 as signed cell offsets.
                const int dx=e.raw[0x25]?-11:-6;
                const int dy=e.raw[0x25]?9:7;
                c->set_x_fixed(std::uint16_t(std::uint8_t(int(e.raw[0x0a])+dx))<<8u);
                c->set_y_fixed(std::uint16_t(std::uint8_t(int(e.raw[0x08])+dy))<<8u);
                c->state()=0u;
            };

            // $6E91 uses the ordinary CA12/CA14 camera service. Native
            // scrolling owns this position at 15 Hz; the 20-Hz attack clock
            // must not independently move the eye away from its scenery.

            if(e.state()==1u) {
                animate();
                // $96DB only opens $7C63 for compositor selector one.
                if(e.raw[0x06]==1u) e.raw[0x14]|=0x80u;
                else e.raw[0x14]&=0x7fu;

                if(e.raw[0x17]!=1u) --e.raw[0x17];
                else if((tick&3u)==0u) {
                    if(e.raw[0x26] && --e.raw[0x26]!=0u) spawn_type5e();
                    else load_attack();
                }
            } else if(e.state()==2u) {
                // $9701: selectors 3,4,5,6 are externally visible; on the
                // next call selector 7 enters the 32-tick final hold.
                e.raw[0x06]=std::uint8_t((e.raw[0x06]+1u)&7u);
                if(e.raw[0x06]==7u) {
                    for(auto& c:game.enemies)
                        if(c.type()==0x5eu || c.type()==0x66u) c.clear();
                    e.raw[0x17]=0x20u;e.state()=3u;
                }
            } else if(e.state()==3u) {
                if(expired(e,0x17)) {
                    // Natural ROM path writes CA0F at $9715. Stage index 8
                    // has no checkpoint 9: the outer controller branches to
                    // its ending state instead of loading another level.
                    stage_complete_=true;
                    e.clear();
                }
            }
        } else if(e.type()==0x5eu) {
            // Final-boss spread shot, bank06 $B6DE. The original picks a
            // random direction, stores a 12-count phase timer and raises HP
            // with difficulty. Keep the measured vector family deterministic
            // through the same ROM PRNG used by the rest of native gameplay.
            if(e.state()==0u) {
                // $B6EF/$9DE8/$7240: full quarter-sine lookup, angle $40..$7F.
                global_angle_velocity(rom,e,(rom_random(rom,game)&0x3fu)+0x40u,0x0eu);
                // $B6FC/$B711 negate each velocity component after three
                // arithmetic shifts. +0F accelerates Y; +11 accelerates X.
                put(e,15,-(signed_word(e,11)>>3));
                put(e,17,-(signed_word(e,13)>>3));
                e.raw[0x17]=0x0cu;
                if(game.difficulty<4u) {e.raw[0x16]=2u;e.raw[0x18]=4u;}
                else if(game.difficulty<8u) {e.raw[0x16]=8u;e.raw[0x18]=6u;}
                else {e.raw[0x16]=0x0eu;e.raw[0x18]=7u;}
                e.state()=1u;
            } else if(e.state()==1u) {
                // $B748 only services the phase timer when CA02&7 == 0.
                // frame=3*tick at this scheduler, so the same condition is
                // tick&7 == 0.
                if((tick&7u)==0u) {
                    put(e,11,signed_word(e,11)+signed_word(e,15));
                    put(e,13,signed_word(e,13)+signed_word(e,17));
                    if(expired(e,0x17)) e.state()=2u;
                }
            } else if(e.state()==2u) {
                if(expired(e,0x18)) {
                    e.raw[0x18]=2u;
                    if(++e.raw[0x05]>=3u) e.clear();
                }
            }
        } else if(e.type()==0x66u) {
            // $9C60-created final-boss obstacle. State 0 installs VX=-$80,
            // AX=-$10 and the half-cell Y fraction. State 1 accelerates left
            // once per 20-Hz handler tick; move_60hz provides smooth motion.
            if(e.state()==0u) {
                e.set_y_fixed(std::uint16_t((e.y_fixed()&0xff00u)|0x0080u));
                put(e,13,-0x0080);put(e,17,-0x0010);
                e.raw[0x16]=game.difficulty<5u?4u:0x0cu;
                if(game.difficulty>=5u) {
                    const int distance=int(game.player.raw[0x08])-10;
                    if(std::abs(distance)>=2) put(e,15,distance<0?-8:8);
                }
                e.state()=1u;
            } else if(e.state()==1u) {
                put(e,13,signed_word(e,13)+signed_word(e,17));
                put(e,11,signed_word(e,11)+signed_word(e,15));
            }
        } else if(e.type()==0x78u) {
            // Stage-8 boss, bank06 $AA1C-$ACDD. States 1/2 are the long
            // horizontal entrance, states 3/4/5 form the attack loop, and
            // states 6/7/8 are the custom destruction/camera handoff. The
            // original handler is clocked at 20 Hz.
            auto animate5=[&] { e.raw[0x06]=std::uint8_t((e.raw[0x06]+1u)%5u); };
            auto secondary_visual=[&] {
                // $AC65 runs only on CA02-even calls and cycles +20 0..3.
                if((tick&1u)==0u) e.raw[0x20]=std::uint8_t((e.raw[0x20]+1u)&3u);
            };
            auto weak_cycle=[&] {
                // $AB42/$AB60: +2B chooses one of six weak-point phases and
                // +2A holds the phase for a difficulty-dependent interval.
                if(e.state()<3u || e.state()>=6u) return;
                if(e.raw[0x2a]) {--e.raw[0x2a];return;}
                e.raw[0x2b]=std::uint8_t((e.raw[0x2b]+1u)%6u);
                unsigned delay=6u;
                if(e.raw[0x2b]==0u) delay=game.difficulty<6u?8u:0x40u;
                else if(e.raw[0x2b]==3u) delay=game.difficulty<6u?0x40u:8u;
                e.raw[0x2a]=std::uint8_t(delay-1u);
            };
            auto spawn_type74=[&] {
                // $AB86->$9E0F. One in eight random selectors creates the
                // boss's diagonal type-$74 projectile from the right edge.
                const auto gate=rom_random(rom,game);
                if((gate&0x0eu)!=0u) return;
                auto* c=create(rom,game,0x74u);if(!c) return;
                const auto r=rom_random(rom,game);
                // $9E67 contains signed X magnitudes C0,80,40,00 and
                // doubles the signed word before storing it at +0D/+0E.
                static constexpr std::array<int,4> vx{-0x0080,-0x0100,0x0080,0x0000};
                static constexpr std::array<std::uint8_t,4> low_y{0x00,0x02,0x04,0x06};
                static constexpr std::array<std::uint8_t,4> high_y{0x10,0x12,0x14,0x16};
                // Exact $9E73 table. $C9 is a real final magnitude byte;
                // bit 0 of the random selector chooses its sign via $4612.
                static constexpr std::array<int,8> vy{0x00,0x10,0x18,0x1a,0x20,0x24,0x28,0xc9};
                const unsigned yi=((unsigned(r)<<1u)|(unsigned(r)>>7u))&3u;
                const auto& yt=std::uint8_t(e.raw[0x08]+2u)>=6u?low_y:high_y;
                c->set_x_fixed(0x1f00u);c->set_y_fixed(std::uint16_t(yt[yi])<<8u);
                put(*c,13,vx[r&3u]);
                const unsigned vi=((unsigned(r)>>1u)|(unsigned(r)<<7u))&7u;
                int yv=vy[vi];if((r&1u)==0u) yv=-yv;put(*c,11,yv);
                c->state()=0u;
            };
            auto oscillate_vertical=[&] {
                auto a=e.raw[0x23];
                if(a<0x60u) ++a;
                else {e.raw[0x24]^=1u;a=0u;}
                e.raw[0x23]=a;
                return e.raw[0x24]?0x0020:-0x0020;
            };
            weak_cycle();
            // $AC96 -> $ACD8/$6AEC. On CA02-even calls +18 walks
            // 0,1,...,7,87,86,...,81,0. The low three bits select the
            // eight-entry $ACC8 VDP-palette cycle; bit 7 marks the reverse
            // half. Keep the phase in the object record exactly as the ROM.
            if((tick&1u)==0u) {
                auto a=e.raw[0x18];
                if(a&0x80u) {
                    a=std::uint8_t((a&0x7fu)-1u);
                    if(a) a|=0x80u;
                } else {
                    ++a;
                    if(a==8u) a=0x87u;
                }
                e.raw[0x18]=a;
            }
            if(e.state()>=3u && e.state()<=5u) spawn_type74();
            if(e.state()==1u) {
                animate5();
                if(e.raw[0x22]!=0xd0u) {
                    ++e.raw[0x22];e.raw[0x29]=1u;secondary_visual();
                    e.set_x_fixed(std::uint16_t(e.x_fixed()-0x0020u));
                } else {
                    // The old $FFE0 vector is consumed once more on the
                    // transition call, yielding the traced X=$04E0 anchor.
                    e.raw[0x22]=0u;e.raw[0x29]=1u;
                    e.set_x_fixed(std::uint16_t(e.x_fixed()-0x0020u));
                    e.state()=2u;
                }
            } else if(e.state()==2u) {
                animate5();
                if(e.raw[0x22]!=0x40u) {
                    ++e.raw[0x22];e.raw[0x29]=1u;secondary_visual();
                    e.set_x_fixed(std::uint16_t(e.x_fixed()+0x0020u));
                } else {
                    e.raw[0x22]=0u;e.raw[0x29]=0u;e.state()=3u;
                }
            } else if(e.state()==3u) {
                const int vy=oscillate_vertical();
                animate5();secondary_visual();
                if(expired(e,0x17)) {
                    e.raw[0x28]=3u;e.state()=4u;
                } else e.set_y_fixed(std::uint16_t(e.y_fixed()+vy));
            } else if(e.state()==4u) {
                animate5();secondary_visual();
                e.raw[0x05]=std::uint8_t((e.raw[0x05]+1u)&3u);
                if(e.raw[0x05]==0u && e.raw[0x28] && --e.raw[0x28]==0u) {
                    e.raw[0x27]=0x20u;e.state()=5u;
                }
            } else if(e.state()==5u) {
                animate5();secondary_visual();
                if(e.raw[0x26]==0u) {
                    // $AAF2 -> bank05:$915D constructs eight type-$46
                    // secondary-pool actors. Their fixed offsets are +X 1
                    // tile and +Y 4..11 tiles; +0F is the 0..7 row ordinal.
                    // Native keeps them in the ordinary fixed array so the
                    // existing D988 compositor/collision path can see them.
                    for(unsigned ordinal=0;ordinal<8u;++ordinal) {
                        if(auto* c=create(rom,game,0x46u)) {
                            c->raw[0x03]=0u;c->raw[0x0f]=std::uint8_t(ordinal);
                            c->set_x_fixed(std::uint16_t(e.x_fixed()+0x0100u));
                            c->set_y_fixed(std::uint16_t(e.y_fixed()+(4u+ordinal)*0x0100u));
                            c->raw[0x17]=0x14u;c->state()=0u;
                        }
                    }
                    e.raw[0x26]=1u;
                    static constexpr std::array<std::uint8_t,4> timer{0x20,0x40,0x60,0x20};
                    const unsigned i=e.raw[0x21]&3u;
                    e.raw[0x21]=std::uint8_t((i+1u)&3u);e.raw[0x17]=timer[i];
                }
                if(e.raw[0x27] && --e.raw[0x27]==0u) {
                    e.raw[0x26]=0u;e.state()=3u;
                }
            } else if(e.state()==6u) {
                secondary_visual();
                // $AB03 increments +22 before testing $40. The final call
                // zeroes movement first, so only 63 of 64 calls move X.
                if(++e.raw[0x22]==0x40u) {
                    e.raw[0x06]=5u;e.state()=7u;
                } else e.set_x_fixed(std::uint16_t(e.x_fixed()-0x0020u));
            } else if(e.state()==7u) {
                secondary_visual();
                if((tick&1u)==0u) {
                    e.raw[0x06]=std::uint8_t((e.raw[0x06]+1u)%10u);
                    if(e.raw[0x06]==9u) {
                        e.state()=8u;
                        if(sounds) sounds->push_back(PlaySound::Stage8Break); // ROM $51
                    }
                }
            } else if(e.state()==8u) {
                auto a=std::uint8_t(e.raw[0x25]+1u);
                if(a==0x1eu) a=0x1bu;
                e.raw[0x25]=a;
                // $AB8F compares integer pixel positions and advances the
                // player by one pixel per handler call until both axes agree.
                auto converge=[](std::uint16_t current,std::uint16_t target) {
                    const int d=int(std::uint8_t(target>>5u))-int(std::uint8_t(current>>5u));
                    return d==0?0:(d<0?-0x20:0x20);
                };
                const int dy=converge(game.player.y_fixed(),std::uint16_t(e.y_fixed()+0x0600u));
                const int dx=converge(game.player.x_fixed(),std::uint16_t(e.x_fixed()-0x0200u));
                game.player.set_y_fixed(std::uint16_t(game.player.y_fixed()+dy));
                game.player.set_x_fixed(std::uint16_t(game.player.x_fixed()+dx));
                if(!dx && !dy) stage_complete_=true;
            }
        } else if(e.type()==0x43u) {
            // Stage-7 Warp Machine, mapped handler $8E81-$8F71. This is a
            // genuine 20-Hz boss controller with custom HP in +02. +16 stays
            // zero in the ROM. State 0 is the 60-tick scrolling entrance,
            // state 1 is the fight, then 40/20-tick destruction states.
            auto spawn_bubble=[&] {
                if(auto* c=create(rom,game,0x23u)) {
                    c->set_x_fixed(e.x_fixed());c->set_y_fixed(e.y_fixed());
                    c->state()=0u;
                }
            };
            if(e.state()==0u) {
                if(e.raw[0x09]==0u && e.raw[0x0a]==0x1au && !e.raw[0x03]) {
                    if(sounds) sounds->push_back(PlaySound::Stage7Arrive); // ROM $42
                    e.raw[0x03]=1u;
                }
                if(e.raw[0x17]>1u) --e.raw[0x17];
                else if(e.x_fixed()<=0x1900u) {
                    // In the original the 60-tick entrance and the final
                    // horizontal gate converge on X=$1900 together. Native
                    // scenery runs at 15 Hz, so hold the expired timer until
                    // the same spatial fight anchor is reached.
                    e.state()=1u;e.raw[0x18]=0x2du;e.raw[0x17]=1u;
                    e.raw[0x02]=0xffu;
                }
            } else if(e.state()==1u) {
                e.raw[0x21]=std::uint8_t((e.raw[0x21]+1u)&0x0fu); // $8F5F
                if(e.raw[0x17]>1u) --e.raw[0x17];
                else {
                    spawn_bubble();
                    int next=int(e.raw[0x18])-4;
                    if(next<0) next=0x2d;
                    next=(next+1)&0xff;
                    e.raw[0x18]=std::uint8_t(next);
                    // $8EE9-$8EF1: the active weapon difficulty shortens the
                    // interval. +$18 only applies to the traced CA19=$02 loadout.
                    e.raw[0x17]=std::uint8_t(next+0x1a-int(game.difficulty));
                }
            } else if(e.state()==2u) {
                e.raw[0x21]=std::uint8_t((e.raw[0x21]+1u)&0x0fu);
                if(e.raw[0x17]>1u) --e.raw[0x17];
                else {
                    if(sounds) sounds->push_back(PlaySound::Stage7Break); // ROM $52
                    e.raw[0x17]=0x14u;e.state()=3u;
                    for(auto& q:game.enemies) if(q.type()==0x23u) q.clear();
                }
            } else if(e.state()==3u) {
                if(e.raw[0x17]>1u) --e.raw[0x17];
                else stage_complete_=true; // ROM CA0F <- 1
            }
        } else if(e.type()==0x23u) {
            // Warp Machine's destructible blue bubble, bank handler $BD74.
            // Birth aims it at the player with speed $18. State 1 bounces at
            // Y=$01/$15 and at the right boundary X=$1D; motion is split over
            // the three display frames of the original 20-Hz object tick.
            if(e.state()==0u) {
                aimed_velocity(rom,e,game.player,0x18u);e.state()=1u;
            } else {
                const auto yh=e.raw[0x08],xh=e.raw[0x0a];
                if(yh<1u || yh>=0x15u) put(e,11,-signed_word(e,11));
                if(xh>=0x1du) put(e,13,-signed_word(e,13));
            }
        } else if(e.type()==0x14u) {
            // Bank06 $AE0A-$B065. State 1 is the 80-tick entrance while the
            // stage stream carries the boss from X=$28 to the fight gate.
            if(e.state()==0u) {
                e.set_x_fixed(0x2800u);e.set_y_fixed(0x0900u);
                e.raw[0x18]=0x13u;e.raw[0x24]=4u;e.raw[0x25]=1u;
                e.raw[0x26]=0x0au;e.raw[0x27]=1u;e.raw[0x3f]=1u;
                e.state()=1u;
            } else if(e.state()==1u) {
                e.raw[0x21]=1u;
                // $AF37 phase 1 is X=-$40. The 80th tick switches state
                // before applying another step, leaving the exact live
                // entrance anchor X=$1440.
                if(++e.raw[0x20]==0x50u) {
                    e.raw[0x21]=0u;e.raw[0x22]=0u;e.raw[0x23]=0u;e.raw[0x0f]=0u;
                    load_s4_attack(e);e.state()=2u;
                } else e.set_x_fixed(std::uint16_t(e.x_fixed()-0x0040u));
            } else if(e.state()==2u) {
                update_s4_parts(e);
                if(e.raw[0x22]) --e.raw[0x22]; else load_s4_motion(e);
                static constexpr std::array<std::array<int,2>,7> motion{{
                    {{0,0}},{{0,-0x40}},{{0,0x40}},{{0x60,0}},
                    {{-0x60,0}},{{0x40,-0x40}},{{-0x40,-0x40}}}};
                const auto& v=motion[std::min<unsigned>(e.raw[0x21],6u)];
                e.set_y_fixed(std::uint16_t(e.y_fixed()+v[0]));
                e.set_x_fixed(std::uint16_t(e.x_fixed()+v[1]));
                if(e.raw[0x18]) --e.raw[0x18];
                else {
                    // $AEAB -> $9157 emits the two horizontal tile lasers.
                    for(unsigned dy:{0u,7u}) if(auto* c=create(rom,game,0x46u)) {
                        c->set_x_fixed(e.x_fixed());
                        c->set_y_fixed(std::uint16_t(e.y_fixed()+dy*0x0100u));
                        c->raw[0x03]=1u;c->raw[0x17]=0x14u;
                    }
                    const unsigned i=e.raw[0x12]%s4_burst_timer.size();
                    e.raw[0x18]=s4_burst_timer[i];e.raw[0x12]=std::uint8_t((i+1u)%s4_burst_timer.size());
                }
                if(e.raw[0x11] && --e.raw[0x11]==0u) {
                    load_s4_attack(e);e.state()=3u;
                }
            } else if(e.state()==3u) {
                update_s4_parts(e);
                if(e.raw[0x10]) {--e.raw[0x10];spawn_s4_shot(e);}
                else if(e.raw[0x17]>1u) --e.raw[0x17];
                else {e.raw[0x17]=1u;e.state()=2u;}
            }
        } else if(e.type()==0x58u) {
            // $B066: random outward angle, accelerating from rest for
            // nine 20-Hz ticks, then coast. $7240 returns signed vectors.
            if(e.state()==0u) {
                const unsigned angle=(e.raw[0x20]?0x40u:0x80u)+(rom_random(rom,game)&0x3fu);
                global_angle_velocity(rom,e,angle,0x0au);
                auto eighth=[](int v){return v>=0?v/8:-((-v+7)/8);};
                put(e,15,eighth(signed_word(e,11)));put(e,17,eighth(signed_word(e,13)));
                put(e,11,0);put(e,13,0);
                e.raw[0x17]=9u;e.state()=1u;
            } else if(e.state()==1u) {
                put(e,11,signed_word(e,11)+signed_word(e,15));
                put(e,13,signed_word(e,13)+signed_word(e,17));
                if(expired(e,0x17)) e.state()=2u;
            }
        } else if(e.type()==0x77u) {
            // Bank06 $B0CC-$B365. The eight direct $76 armour pieces are
            // linked by +34/+37; only after all eight are gone does the core
            // arm, become vulnerable and begin the ROM waypoint/shot cycle.
            if(e.state()==0u) {
                e.set_x_fixed(0x1f00u);e.set_y_fixed(0x0600u);e.raw[0x06]=0u;
                e.raw[0x37]=e.raw[0x3b]=0u;e.raw[0x34]=0x80u;e.state()=1u;
            } else if(e.state()==1u) {
                for(unsigned i=0;i<8u;++i) if(create_s5_part(e,i)) ++e.raw[0x37];
                e.raw[0x3b]=e.raw[0x37];e.state()=2u;
            } else if(e.state()==2u) {
                e.state()=3u;
            } else if(e.state()==3u) {
                if(e.raw[0x37]==0u) {e.state()=4u;e.raw[0x17]=0x10u;}
            } else if(e.state()==4u) {
                if(e.raw[0x17]>1u) --e.raw[0x17];
                else {
                    e.raw[0x17]=0u;e.raw[0x14]|=0x80u;e.raw[0x15]|=0x10u;
                    e.raw[0x03]=0x0au;e.raw[0x18]=0x32u;e.raw[0x02]=0u;
                    e.raw[0x20]=0u;e.raw[0x25]=3u;e.state()=5u;
                }
            } else if(e.state()==5u) {
                // $6A13 consumes the previous tick vector.
                e.set_x_fixed(std::uint16_t(e.x_fixed()+signed_word(e,13)));
                e.set_y_fixed(std::uint16_t(e.y_fixed()+signed_word(e,11)));

                unsigned wi=std::min<unsigned>(e.raw[0x20],s5_waypoints.size()-1u);
                auto wp=s5_waypoints[wi];
                const auto tx=std::uint16_t(unsigned(wp.x)*32u);
                const auto ty=std::uint16_t(unsigned(wp.y)*32u);
                e.raw[0x23]=wp.y;e.raw[0x24]=wp.x;
                const int dx=std::abs(int(std::int16_t(tx-e.x_fixed())));
                const int dy=std::abs(int(std::int16_t(ty-e.y_fixed())));
                if(dx+dy<=0x0400) {
                    ++wi;if(wi>=s5_waypoints.size()) wi=5u;
                    e.raw[0x20]=std::uint8_t(wi);wp=s5_waypoints[wi];
                }
                Entity64 target;target.clear();
                target.set_x_fixed(std::uint16_t(unsigned(wp.x)*32u));
                target.set_y_fixed(std::uint16_t(unsigned(wp.y)*32u));
                global_angle_velocity(rom,e,target_global_angle(rom,e,target),wp.speed);

                if(e.raw[0x25]) --e.raw[0x25];
                else {e.raw[0x25]=3u;e.raw[0x06]=std::uint8_t((e.raw[0x06]+1u)%6u);}

                bool fire=false;
                for(unsigned n=0;n<3u && e.raw[0x18];++n)
                    if(--e.raw[0x18]==0u) {fire=true;break;}
                if(fire) {
                    const unsigned attack=e.raw[0x02]&7u;
                    spawn_s5_shot(e,attack);e.raw[0x02]=std::uint8_t((attack+1u)&7u);
                    const auto phase=e.raw[0x03];
                    e.raw[0x18]=phase&0x7fu;
                    if(phase&0x80u) {
                        auto next=std::uint8_t(phase+1u);
                        e.raw[0x03]=next>=0x88u?7u:next;
                    } else {
                        auto next=std::uint8_t(phase-1u);
                        e.raw[0x03]=next?next:0x82u;
                    }
                }
            }
        } else if(e.type()==0x76u) {
            // $B423. Pieces with frame selectors 0/1 are small controllers
            // that each create two linked armour pieces; the remaining six
            // direct parts and the four grandchildren stay in passive state 2.
            if(e.state()==0u) {
                if(e.raw[0x05]<2u) {
                    e.raw[0x37]=0u;
                    const unsigned base=8u+unsigned(e.raw[0x05])*2u;
                    if(create_s5_part(e,base)) ++e.raw[0x37];
                    if(create_s5_part(e,base+1u)) ++e.raw[0x37];
                    e.raw[0x3b]=e.raw[0x37];e.raw[0x15]&=std::uint8_t(~0x10u);
                    e.state()=1u;
                } else e.state()=2u;
            } else if(e.state()==1u && e.raw[0x37]==0u) {
                const auto parent=std::uint8_t(e.raw[0x34]&0x7fu);
                for(auto& p:game.enemies) if(p.active() && p.raw[0x2d]==parent) {
                    if(p.raw[0x37]) --p.raw[0x37];break;
                }
                e.clear();
            }
        } else if(e.type()==0x64u || e.type()==0x6au) {
            const bool finishing=e.type()==0x6au && e.raw[0x3f]!=0xd3u && e.state()==1u && e.raw[0x17]<=1u;
            const bool death_wrap=e.type()==0x6au && e.raw[0x3f]!=0xd3u && e.state()==0u && e.raw[6]==7u;
            step_stage0_gate_object(rom,game,e,sounds);
            if(death_wrap) for(auto& child:game.enemies)
                if(child.type()==0x3du) child.clear();
            if(finishing) stage_complete_=true;
        } else if(e.type()==0x3du) {
            for(const auto& parent:game.enemies) if(parent.type()==0x64u) {
                e.set_x_fixed(std::uint16_t(parent.x_fixed()+0x0400));
                e.set_y_fixed(std::uint16_t(parent.y_fixed()+0x0600));
                break;
            }
            e.raw[6]=std::uint8_t(e.raw[0x20]+((ca3b+e.raw[10]+
                (unsigned(fine_x)+e.raw[9]>=256u?1u:0u))&7u));
        } else if(e.type()==0x40u) {
            // Bank06 A57F..A639: upward launch, three-frame aim animation,
            // then accelerated aimed flight after a heading-dependent delay.
            if(e.state()==0u) {
                e.raw[0x17]=e.raw[0x24]?4u:11u;
                put(e,11,-0x0060);put(e,15,-8);e.state()=1;
            } else if(e.state()==1u) {
                put(e,11,signed_word(e,11)+signed_word(e,15));
                if(expired(e,0x17)) e.state()=2;
            } else if(e.state()==2u && (tick&3u)==0u) {
                e.raw[5]=std::uint8_t((e.raw[5]+1u)%3u);
                if(e.raw[5]<2u) continue;
                const auto angle=std::min(0x98u,target_global_angle(rom,e,game.player));
                const auto spread=(rom_random(rom,game)&7u)*4u;
                global_angle_velocity(rom,e,(angle-spread)&255u,0x1d);
                const auto b=rom.bank(6);
                e.raw[0x18]=b[0x601+((angle>>5u)&7u)];e.raw[0x17]=6;
                put(e,15,0x12);e.state()=3;
            } else if(e.state()==3u) {
                if(e.raw[8]==0xffu) e.set_y_fixed(0);
                if(expired(e,0x18)) {
                    put(e,11,signed_word(e,11)+signed_word(e,15));
                    if(expired(e,0x17)) e.raw[5]=3;
                }
            }
        }
    }
}
void Stage0Enemies::step_15hz(const Rom& rom,GameState& game,unsigned tick,std::uint16_t trigger,
                              bool include_gate,std::vector<PlaySound>* sounds,
                              const TerrainProbe& terrain_probe,const TileProbe& tile_probe,
                              const TileWrite& tile_write) {
    const auto sound_start=sounds?sounds->size():0u;
    auto step_laser=[&](Entity64& e) {
        // Bank05 $9054-$9156, normally stored in the original secondary
        // $D460 pool. Stage 8 uses eight rows with +03=0 and +0F=0..7.
        // Because C0D4=$03 during the boss fight, state 0 enters the
        // four-tick grow setup immediately instead of waiting +17=$14.
        auto update_stamp=[&] {
            e.raw[0x11]=std::uint8_t(std::min<unsigned>(e.raw[0x12],e.raw[0x0a])+1u);
            if(e.raw[0x03]) ++e.raw[0x18];
            if(!e.raw[0x03] && terrain_probe) {
                // $90FE/$910F: stop a wall at solid scenery, without
                // erasing or passing through the obstruction.
                for(unsigned n=0;n<e.raw[0x11];++n) {
                    if(terrain_probe(e,-int(n)*256,0)==3u) {
                        if(n==0u) e.clear();
                        else e.raw[0x11]=std::uint8_t(n);
                        break;
                    }
                }
            }

        };
        if(e.state()==0u) {
            // Stage 4 has C0D4=0: retain the twenty-tick warning.
            if((e.raw[0x03] || e.raw[0x3f]==0xe8u) && e.raw[0x17] && --e.raw[0x17]) return;
            e.raw[0x17]=4u;e.raw[0x12]=1u;e.raw[0x02]=e.raw[0x03]?8u:0x20u;
            e.state()=1u;
        } else if(e.state()==1u) {
            if((e.raw[0x17]&1u)==0u) update_stamp();
            if(e.raw[0x17] && --e.raw[0x17]==0u) {
                e.state()=2u;
                if(sounds) {
                    const auto sound=e.raw[0x03]?PlaySound::Stage4Laser:PlaySound::Stage8Wall;
                    // The ROM queues one request even when several rows fire.
                    if(std::find(sounds->begin()+sound_start,sounds->end(),sound)==sounds->end())
                        sounds->push_back(sound);
                }
            }
        } else if(e.state()==2u) {
            e.raw[0x12]=std::uint8_t(e.raw[0x12]+4u);update_stamp();
            if(e.raw[0x12]>=e.raw[0x02]) e.state()=3u;
        } else {
            const auto xh=std::uint8_t(e.raw[0x0a]-4u);
            if(xh>=0x20u) {e.clear();return;}
            e.raw[0x0a]=xh;update_stamp();
        }
    };
    for(auto& e:game.lasers) if(e.active()) {
        if(e.type()==0x46u) {
            step_laser(e);
        } else if(e.type()==0x75u) {
            // Bank05 $9E7C-$9F31. Type $75 is not an ordinary projectile:
            // the Stage-3 $35 endpoints create it in the secondary D460 pool
            // to paint a CA/CB lattice into the active name table. It spends
            // 32 object ticks travelling to a route corner, then paints two
            // cells per tick and immediately erases the trail backwards with
            // A7. Those writes modify the same physical E000 ring as the
            // scenery streamer; they are not a separate screen-space overlay.
            auto paint_or_erase=[&] {
                // $9EA4 chooses the operation from +0F at handler entry.
                // Paint writes happen before the route cursor advances.
                if(e.raw[0x0f]) {
                    for(unsigned n=0;n<2u && e.raw[0x0f];++n) {
                        --e.raw[0x0f];
                        if(tile_write) tile_write(e.x_fixed(),e.y_fixed(),e.raw[0x11]);
                        e.raw[0x08]=std::uint8_t(e.raw[0x08]+std::int8_t(e.raw[0x10]));
                        e.raw[0x0a]=std::uint8_t(e.raw[0x0a]+std::int8_t(e.raw[0x12]));
                    }
                    // $9EA8 CALL NZ preserves the Z flag returned by $9EFB.
                    // With an odd line length, the second $9F05 iteration sees
                    // +0F already zero, returns with Z set, and $9EAE jumps
                    // straight into the erase path in this same invocation.
                    // Even lengths reach zero on the second actual paint and
                    // begin erasing on the next invocation instead.
                    if(e.raw[0x0f]) {
                        if(e.raw[0x17]) --e.raw[0x17];
                        return;
                    }
                    if((e.raw[0x30]&1u)==0u) {
                        if(e.raw[0x17]) --e.raw[0x17];
                        return;
                    }
                }
                // $9ECA: erase from the far end backwards, two cells per tick.
                // The cursor moves first; $76D0/$76F1 then writes A7 there.
                for(unsigned n=0;n<2u && e.raw[0x18];++n) {
                    --e.raw[0x18];
                    e.raw[0x08]=std::uint8_t(e.raw[0x08]-std::int8_t(e.raw[0x10]));
                    e.raw[0x0a]=std::uint8_t(e.raw[0x0a]-std::int8_t(e.raw[0x12]));
                    if(tile_write) tile_write(e.x_fixed(),e.y_fixed(),0xa7u);
                }
                // The original frees the D460 record after the last A7 write;
                // the committed cells remain in E000 until normal streaming
                // overwrites those physical ring positions.
                if(!e.raw[0x18]) e.clear();
            };
            if(e.state()==0u) {
                // $9E85-$9E8F falls straight through after installing $20:
                // the same handler invocation immediately DEC's +17 to $1F.
                e.raw[0x17]=0x1fu;e.state()=1u;
            } else if(e.state()==1u) {
                e.set_y_fixed(std::uint16_t(e.y_fixed()+signed_word(e,11)));
                e.set_x_fixed(std::uint16_t(e.x_fixed()+signed_word(e,13)));
                // $9E8C is a literal DEC, not $6AD2. On the terminal tick
                // +17 becomes zero, state 2 is armed, and execution falls
                // straight through to $9EA4 to paint the first two cells.
                --e.raw[0x17];
                if(e.raw[0x17]==0u) {
                    e.raw[0x17]=0x0au;e.raw[0x18]=e.raw[0x0f];e.raw[0x30]=e.raw[0x0f];
                    e.flags15()=0x04u;put(e,11,0);put(e,13,0);e.state()=2u;
                    paint_or_erase();
                }
            } else {
                paint_or_erase();
            }
        }
    }

    // Bank05:$9A41 calls $6AB8 with B=4 on the object-logic cadence. Live
    // OpenMSX traces show frames 0->1->2->3 over roughly 0.2 s, not four
    // consecutive video frames. Keep frame 0 for one logic interval, then
    // retire ordinary effects on the wrap.
    for(auto& e:game.enemies) if(e.active() && e.type()==0x62) {
        e.flags15()=0x2d;
        e.raw[5]=std::uint8_t((e.raw[5]+1u)&3u);
        // $9A4B-$9A5F always retires this $62 on the wrap. If +3D was
        // nonzero the caller has already used the final explosion position
        // to create the delayed pickup.
        if(e.raw[5]==0) e.clear();
    }
    // A blue capsule/mega blast removes several children at once. Reconcile
    // their controller resources even when no individual bullet reported death.
    for(unsigned id=0;id<waves_.size();++id) {
        unsigned alive=0;
        const auto parent=waves_[id].owner;
        if(parent) for(const auto& e:game.enemies)
            alive+=e.active() && e.raw[0x34]==parent && e.type()==waves_[id].type;
        waves_[id].alive=alive;
        // $98C3 waits for the linked-child count to reach zero before $6E98
        // releases the controller object. Keep its CE80 slot reserved for that
        // whole interval; this is observable in the Stage-3 20-object pool.
        if(!waves_[id].active && !alive && waves_[id].owner) {
            const unsigned slot=waves_[id].owner-1u;
            if(slot<game.enemies.size() && game.enemies[slot].type()==0x51u)
                game.enemies[slot].clear();
            waves_[id].owner=0u;
        }
    }
    for(auto& w:waves_) if(w.active) {
        if(w.repeat && std::uint8_t(trigger)>=w.end_trigger) {w.active=false;continue;}
        if(w.timer>1) {--w.timer;continue;}
        if(auto* e=create(rom,game,w.type)) {
            e->set_x_fixed(std::uint16_t(w.x)<<8);e->set_y_fixed(std::uint16_t(w.y)<<8);
            initialize_stage0_flyer(rom,*e,w.parameter,w.ordinal++,tick,game.player);
            // $6814/$6938 stores the real controller object id in +34. This
            // is visible in live Stage-3 pools (e.g. controller slot 3 ->
            // child link $04), so do not leak the native waves_ index here.
            e->raw[0x34]=w.owner;++w.alive;
            if(w.owner) {
                const unsigned slot=w.owner-1u;
                if(slot<game.enemies.size() && game.enemies[slot].type()==0x51u)
                    game.enemies[slot].raw[0x34]=0x80u;
            }
            if(--w.remaining==0) {
                if(w.repeat) {w.remaining=w.count;w.ordinal=0;w.timer=w.first_timer;}
                else w.active=false;
            } else w.timer=std::max<std::uint8_t>(1,w.interval);
        }
    }
    // Vehicle-mounted actors from bank06. These were previously static in
    // the native port even though the original runs substantial state machines.
    static constexpr std::array<std::uint8_t,4> k22X{0x1b,0x18,0x10,0x04};
    static constexpr std::array<std::uint8_t,4> k22Min{3,0,5,8}; // $BD6B
    static constexpr std::array<std::uint8_t,3> k26X{0x1a,0x12,0x06};
    static constexpr std::array<std::uint8_t,3> k26Min{0,5,8}; // $BEFD
    static constexpr std::array<std::uint8_t,16> k26Delay{
        2,3,4,4,5,5,6,6,7,7,8,9,10,11,12,13}; // bank06 $BF04
    for(auto& e:game.enemies) if(e.active()) {
        if(e.type()==0x7bu) {
            // Bank06 $B513-$B66F: Stage-6 boss. The final vertical scenery
            // scroll supplies its entrance motion; the handler itself owns the
            // seven-state open/fire/close cycle. +22 is the opening phase and
            // +21 counts the repeated type-$0D beam launches.
            auto spawn_beam=[&] {
                if(std::any_of(game.enemies.begin(),game.enemies.end(),
                               [](const auto& q){return q.type()==0x0du;})) return;
                if(auto* c=create(rom,game,0x0du)) {
                    c->set_x_fixed(std::uint16_t(e.x_fixed()+0x0800u));
                    c->set_y_fixed(std::uint16_t(e.y_fixed()+0x0200u));
                    put(*c,11,-0x0080);put(*c,13,0);
                    c->state()=0u;
                    if(sounds) sounds->push_back(PlaySound::HatchShot); // ROM SFX $17
                }
            };
            // $B51B: once HP falls below $10 the original forces HP to zero
            // and queues one last damage unit so the ordinary $7CC3 death path
            // takes over on the following damage service.
            if(e.state()!=0u && e.raw[0x16]<0x10u) {
                e.raw[0x16]=0u;
                if(!e.raw[0x04]) e.raw[0x04]=1u;
            }
            if(e.state()==0u) {
                e.raw[0x18]=0x1eu;e.raw[0x17]=0u;
                e.raw[0x21]=0u;e.raw[0x22]=0u;e.raw[0x3f]=1u;
                e.state()=1u;
            } else if(e.state()==1u) {
                if(e.raw[0x18] && --e.raw[0x18]==0u) {
                    e.raw[0x17]=5u;e.state()=2u;
                }
            } else if(e.state()==2u) {
                if(e.raw[0x17] && --e.raw[0x17]==0u) {
                    e.raw[0x17]=5u;
                    if(e.raw[0x22]==0u && sounds) sounds->push_back(PlaySound::Stage6Open); // ROM $2E
                    ++e.raw[0x22];
                    if(e.raw[0x22]>=2u) e.state()=3u;
                }
            } else if(e.state()==3u) {
                if(e.raw[0x17] && --e.raw[0x17]==0u) {
                    spawn_beam();e.raw[0x17]=0x14u;
                    if(++e.raw[0x21]>=4u) e.state()=4u;
                }
            } else if(e.state()==4u) {
                if(e.raw[0x17] && --e.raw[0x17]==0u) {
                    spawn_beam();e.raw[0x17]=5u;e.state()=5u;
                }
            } else if(e.state()==5u) {
                if(e.raw[0x17] && --e.raw[0x17]==0u) {
                    spawn_beam();e.raw[0x17]=5u;
                    if(e.raw[0x21] && --e.raw[0x21]==0u) e.state()=6u;
                }
            } else if(e.state()==6u) {
                if(e.raw[0x17] && --e.raw[0x17]==0u) {
                    e.raw[0x17]=5u;
                    if(e.raw[0x22]==2u && sounds) sounds->push_back(PlaySound::Stage6Close); // ROM $2F
                    if(e.raw[0x22]) --e.raw[0x22];
                    if(!e.raw[0x22]) {e.state()=1u;e.raw[0x18]=0x1eu;}
                }
            }
            // $B5FD/$B60C draws the animated centre layer with +05, then
            // restores the outer selector from +22 before returning.
            if(e.raw[0x21]) e.raw[0x05]=std::uint8_t((e.raw[0x05]+1u)&7u);
            e.raw[0x06]=e.raw[0x22];
        } else if(e.type()==0x56u) {
            e.raw[0x3c]&=1u; // native mirror of CE48: clear the transient white bit
            // Bank06 $BF14-$BFB7: the large vertical tower is a boss-like
            // object with its own damage/death continuation. It must not be
            // replaced immediately through the generic death table.
            if(e.state()==1u) {
                e.raw[6]=std::uint8_t((e.raw[6]+1u)&3u); // $BF3F -> $6AC2
                const auto pending=e.raw[0x04];
                if(pending) {
                    e.raw[0x04]=0;
                    const auto old=e.raw[0x16];
                    e.raw[0x16]=std::uint8_t(old-pending);
                    if(sounds) sounds->push_back(PlaySound::BossHit); // $25
                    if(e.raw[0x16]<=0x0bu) e.raw[0x3c]=1u; // CE4A=HP/4=$0B
                    // $7C6B preserves subtraction carry: equality (HP=0) is
                    // not fatal; only damage > previous HP enters state 2.
                    if(pending>old) {
                        e.raw[0x3c]=1u;game.tower_destroyed=true;
                        e.state()=2u;e.raw[0x17]=5u;
                        e.raw[0x18]=std::uint8_t(e.raw[0x18]+1u);
                        if(!e.raw[0x20]) e.raw[0x20]=1u;
                        if(sounds) {
                            sounds->push_back(PlaySound::PlatformBurst);       // direct $34
                            sounds->push_back(PlaySound::LargeCannonExplosion); // $7CBE death-record $14
                        }
                    }
                }
            } else if(e.state()==2u || e.state()==3u) {
                // $BF9A: use the ROM PRNG for the 1..8 destruction cadence.
                if(e.raw[0x20]>1u) --e.raw[0x20];
                else {
                    e.raw[0x20]=std::uint8_t(1u+(rom_random(rom,game)&7u));
                    e.raw[0x3c]=3u; // $BF9A writes CE48=$03 (red + white flash)
                    if(sounds && !game.platform_chain_active) sounds->push_back(PlaySound::PlatformRumble); // $35
                }
                if(e.state()==2u) {
                    if(e.raw[0x18]>1u) --e.raw[0x18];
                    else {
                        e.raw[0x18]=4u;
                        if(e.raw[0x17]<=1u) {
                            e.raw[0x17]=0x70u;e.state()=3u;
                        } else {
                            const auto next=std::uint8_t(e.raw[0x17]-1u);
                            e.raw[0x17]=next;
                            if(next==3u) e.raw[0x06]=4u;
                            static constexpr std::array<std::uint16_t,4> off{
                                0x02fdu,0x08feu,0x0402u,0xfe04u}; // bank06 $BFB8
                            const auto q=off[std::min<unsigned>(next-1u,3u)];
                            if(auto* x=create(rom,game,0x69u)) {
                                // $9A6A adds the packed Y/X cells as one word;
                                // a Y carry also increments the X cell.
                                const auto packed=std::uint16_t((unsigned(e.raw[10])<<8u)|e.raw[8]);
                                const auto position=std::uint16_t(packed+q);
                                x->set_y_fixed(std::uint16_t(position&255u)<<8u);
                                x->set_x_fixed(std::uint16_t(position&0xff00u));
                                x->state()=1u;x->raw[0x06]=0u;
                            }
                        }
                    }
                } else {
                    if(e.raw[0x17]>1u) --e.raw[0x17];
                    else e.clear();
                }
            }
        } else if(e.type()==0x47u) {
            // Fixed $5B2B: the trailing machinery only explodes after CE4C.
            // Its seven packed matrix scripts advance every two logic ticks.
            if(e.state()==0u) {
                e.raw[8]=0x0d;
                if(!game.tower_destroyed) {e.clear();continue;}
                e.raw[0x17]=2;game.platform_chain_active=true;e.state()=1;
            } else if(expired(e,0x17)) {
                e.raw[0x17]=2;
                if(++e.raw[6]==7u) e.clear();
                else if(e.raw[6]==1u && sounds) sounds->push_back(PlaySound::PlatformBurst);
            }
        } else if(e.type()==0x69u) {
            // Bank05 $9A7C-$9AAA: six-frame distributed platform blast.
            if(e.state()!=1u) e.state()=1u;
            e.raw[0x06]=std::uint8_t((e.raw[0x06]+1u)%6u);
            if(e.raw[0x06]==0u) e.clear();
            else if(e.raw[0x06]==1u && sounds) sounds->push_back(PlaySound::PlatformExplosion); // $33
        } else if(e.type()==0x46u) {
            step_laser(e);
        } else if(e.type()==0x74u) {
            // Bank05 $9E7C-$9EFA: Stage-8 boss diagonal projectile. Its
            // launch vector is installed by $9E0F; the object holds it for a
            // $20-tick visible flight, then spends ten ticks in its terrain
            // interaction phase before the normal object-retire path.
            if(e.state()==0u) {e.raw[0x17]=0x20u;e.state()=1u;}
            else if(e.state()==1u) {
                if(expired(e,0x17)) {
                    e.raw[0x17]=0x0au;e.raw[0x18]=e.raw[0x0f];
                    e.raw[0x15]=0x04u;e.state()=2u;
                }
            } else if(e.state()==2u) {
                if(expired(e,0x17)) e.clear();
            }
        } else if(e.type()==0x48u) {
            // Stage-6 linked six-body formation, bank05 $91AC-$92D7.
            // Parent records have +34 bit 7. Children retain state zero and
            // derive their exact orbit from the parent's phase every logic
            // tick, just like $925D.
            const bool parent=(e.raw[0x34]&0x80u)!=0u;
            if(parent) {
                if(e.raw[0x08]>=0xf0u && e.raw[0x08]<0xf8u) {
                    const auto id=e.raw[0x2d];
                    for(auto& c:game.enemies)
                        if(c.type()==0x48u && c.raw[0x34]==id) c.clear();
                    e.clear();continue;
                }
                if(e.state()==3u) {
                    // $9221 retries allocation when the original 20-slot pool
                    // could not provide all six linked records at spawn time.
                    const auto id=e.raw[0x2d];
                    unsigned have=0;
                    std::array<Entity64*,6> link{};
                    for(auto& c:game.enemies)
                        if(c.type()==0x48u && c.raw[0x34]==id && c.raw[0x03]<6u) {
                            link[c.raw[0x03]]=&c;have=std::max(have,unsigned(c.raw[0x03])+1u);
                        }
                    while(have<6u) {
                        auto* c=create(rom,game,0x48u);if(!c) break;
                        c->set_y_fixed(std::uint16_t(e.raw[0x08])<<8u);
                        c->set_x_fixed(0x1c00u);
                        c->raw[0x03]=std::uint8_t(have);
                        c->raw[0x34]=id;c->raw[0x38]=std::uint8_t(have+1u);
                        c->state()=0u;link[have++]=c;
                    }
                    e.raw[0x03]=std::uint8_t(have);
                    e.raw[0x24]=std::uint8_t(6u-have);
                    if(have) {
                        e.raw[0x36]=link[0]?link[0]->raw[0x2d]:0u;
                        for(unsigned i=0;i<have;++i) if(link[i]) {
                            link[i]->raw[0x35]=(i==0u)?id:(link[i-1]?link[i-1]->raw[0x2d]:id);
                            link[i]->raw[0x36]=(i+1u<have && link[i+1])?link[i+1]->raw[0x2d]:0u;
                        }
                    }
                    if(have==6u) {e.raw[0x17]=1u;e.raw[0x18]=0u;e.state()=2u;}
                }
                if(e.state()==2u)
                    e.raw[0x17]=std::uint8_t(e.raw[0x17]+e.raw[0x12]);
            } else {
                const auto parent_id=e.raw[0x34]&0x3fu;
                Entity64* p=nullptr;
                for(auto& q:game.enemies)
                    if(q.type()==0x48u && (q.raw[0x34]&0x80u) && q.raw[0x2d]==parent_id) {
                        p=&q;break;
                    }
                if(!p) {e.clear();continue;}
                const unsigned ordinal=std::min<unsigned>(e.raw[0x03],5u);
                static constexpr std::array<std::uint8_t,6> angle_add{0,0,0,0x40,0x40,0x40};
                static constexpr std::array<std::uint8_t,6> radius{0x28,0x38,0x48,0x28,0x38,0x48};
                auto trig=[&](std::uint8_t a) {
                    const bool neg=(a&0x80u)!=0u;
                    unsigned q=a&0x7fu;
                    if(q&0x40u) q=(~q)&0x3fu;
                    const int v=rom.bank(4)[0x13adu+q];
                    return neg?-v:v;
                };
                auto scaled=[&](std::uint8_t a,unsigned r) {
                    const int v=trig(a)*int(r);
                    return v>=0 ? v/8 : -((-v)/8);
                };
                std::uint8_t a=std::uint8_t(p->raw[0x17]+angle_add[ordinal]);
                if(std::uint8_t(a-p->raw[0x26]+0x40u)>=0x80u)
                    a=std::uint8_t(a-0x80u);
                const int yo=scaled(a,radius[ordinal]);
                const int xo=scaled(std::uint8_t(a+0x40u),radius[ordinal]);
                e.set_y_fixed(std::uint16_t(int(std::int16_t(p->y_fixed()))+yo));
                e.set_x_fixed(std::uint16_t(int(std::int16_t(p->x_fixed()))+xo));
                if(e.raw[0x08]>=0x18u) e.raw[0x08]=0x1du;
            }
        } else if(e.type()==0x54u) {
            // Stage-7 launcher, bank05 $99E0-$9A36. The parent scrolls with
            // the stage until X reaches its ROM trigger cell, then releases a
            // type-$1A every eight logic ticks.
            if(e.state()==1u) {
                if(e.raw[0x0a]==e.raw[0x24]) {
                    ++e.raw[0x17];e.state()=2u;
                }
            } else if(e.state()==2u && expired(e,0x17)) {
                e.raw[0x17]=8u;
                if(auto* c=create(rom,game,0x1au)) {
                    c->set_y_fixed(e.y_fixed());c->set_x_fixed(e.x_fixed());
                    c->raw[0x20]=e.raw[0x20];c->raw[0x21]=e.raw[0x21];
                    c->raw[0x23]=e.raw[0x23];
                    if(e.raw[0x23]==0u) ++c->raw[0x3d];
                    c->state()=1u;
                    if(++e.raw[0x23]>=e.raw[0x22]) e.clear();
                }
            }
        } else if(e.type()==0x1au) {
            // Stage-7 launcher child, fixed $5763-$58AB. State 1 chooses one
            // of the four cardinal $60 velocities. State 2 toggles its sprite
            // phase every tick and advances a ROM route script when terrain
            // B6..C2 is reached.
            auto load_velocity=[&] {
                static constexpr std::array<std::pair<int,int>,4> v{{
                    {0,0x60},{0,-0x60},{0x60,0},{-0x60,0}}};
                const auto [vy,vx]=v[e.raw[0x24]&3u];
                put(e,11,vy);put(e,13,vx);
            };
            if(e.state()==1u) {
                e.raw[0x24]=e.raw[0x20]?2u:3u;
                load_velocity();
                ++e.raw[0x17];e.raw[0x23]&=1u;e.state()=2u;
            } else if(e.state()==2u) {
                e.raw[0x23]^=1u;
                e.raw[0x05]=std::uint8_t((e.raw[0x24]&3u)*2u+e.raw[0x23]+e.raw[0x27]);

                // Fixed $57DF-$5821: only the normal visual variant attacks.
                // $755D returns signed high-cell player deltas in D/E; both
                // absolute deltas must lie in [4,9]. A qualifying attempt
                // installs the exact $10 cooldown and increments CE6B. The
                // ROM's RRCA/RET C suppresses odd counts, so only every second
                // qualifying attempt reaches $714A. +26 queues the explicit
                // CA26 projectile speed for Stage0Combat.
                if(e.raw[0x27]==0u && expired(e,0x17)) {
                    const int dx=std::abs(int(game.player.raw[0x0a])-int(e.raw[0x0a]));
                    const int dy=std::abs(int(game.player.raw[0x08])-int(e.raw[0x08]));
                    if(dx>=4 && dx<10 && dy>=4 && dy<10) {
                        e.raw[0x17]=0x10u;
                        if(((++type1a_shot_counter_)&1u)==0u)
                            e.raw[0x26]=std::uint8_t(game.difficulty<4u?0x12u:0x16u);
                    }
                }

                if(++e.raw[0x25]>=10u) {
                    e.raw[0x25]=0u;
                    bool route=false;
                    if(tile_probe) {
                        const auto tile=tile_probe(e,0x0100,0x0100);
                        route=tile>=0xb6u && tile<0xc3u;
                    } else if(terrain_probe) {
                        route=(terrain_probe(e,0x0100,0x0100)&1u)!=0u;
                    }
                    if(route) {
                        // $8400 is in the permanent object-data bank (ROM
                        // bank 7), not the bank-05 handler page.
                        const auto b=rom.bank(7);
                        const unsigned q=0x0400u+unsigned(e.raw[0x21])*2u;
                        if(q+1u<b.size()) {
                            const auto ptr=word(b,q);
                            if(ptr>=0x8000u && ptr<0xa000u) {
                                const unsigned p=unsigned(ptr-0x8000u)+e.raw[0x22];
                                if(p<b.size() && b[p]!=0xffu) {
                                    e.raw[0x24]=b[p]&3u;++e.raw[0x22];load_velocity();
                                }
                            }
                        }
                    }
                }
            }
        } else if(e.type()==0x4au) {
            // Stage-6 curved flyer, bank05 $937B-$9460. State 0 has already
            // run through the common $6754 spawn path; native creation exposes
            // the ROM's state-1 $14 entrance wait directly.
            e.raw[0x3d]=(((tick^e.raw[0x2d])&3u)==0u)?1u:0u;
            if(e.state()==1u) {
                if(expired(e,0x17)) {
                    e.state()=2u;
                    put(e,11,0x0070);   // $93AB -> $6BF3
                    put(e,15,0x0011);   // Y acceleration
                    put(e,17,0x0016);   // X acceleration
                    e.raw[0x2a]=0xffu;  // $93F9: no safe terrain sample yet
                }
            } else if(e.state()==2u) {
                // $93DB-$93E0: animation flickers every object tick.
                e.raw[0x05]^=1u;

                // $759A/$93FE keeps the most recent non-solid 8.8 position and
                // snaps back to it when the curved path enters solid scenery.
                // The ROM stores these words high-byte first in +28..+2B.
                auto save_safe=[&] {
                    const auto x=e.x_fixed(),y=e.y_fixed();
                    e.raw[0x28]=std::uint8_t(x>>8u);e.raw[0x29]=std::uint8_t(x);
                    e.raw[0x2a]=std::uint8_t(y>>8u);e.raw[0x2b]=std::uint8_t(y);
                };
                auto restore_safe=[&] {
                    if(e.raw[0x2a]==0xffu) return;
                    e.set_x_fixed(std::uint16_t((unsigned(e.raw[0x28])<<8u)|e.raw[0x29]));
                    e.set_y_fixed(std::uint16_t((unsigned(e.raw[0x2a])<<8u)|e.raw[0x2b]));
                };
                const bool solid=terrain_probe && (terrain_probe(e,0,0)&1u);
                if(solid) restore_safe(); else save_safe();

                // $6CAE: at |VY| >= $C0 or |VX| >= $A0, reverse only that
                // axis' acceleration; $6A9A then adds both acceleration words.
                int vy=signed_word(e,11),vx=signed_word(e,13);
                int ay=signed_word(e,15),ax=signed_word(e,17);
                if(std::abs(vy)>=0x00c0) {ay=-ay;put(e,15,ay);}
                if(std::abs(vx)>=0x00a0) {ax=-ax;put(e,17,ax);}
                put(e,11,vy+ay);put(e,13,vx+ax);
            }
        } else if(e.type()==0x4du) {
            // Stage-6/7 damped world-anchor enemy, bank05 $9508-$95DC.
            // +28/+29 and +2A/+2B are high/low X/Y anchor words. Camera
            // compensation is applied in scroll_stage0_objects(), matching
            // ROM $6D2C before this steering calculation.
            auto get_anchor=[&](unsigned hi) {
                return int(std::int16_t((unsigned(e.raw[hi])<<8u)|e.raw[hi+1u]));
            };
            auto set_anchor=[&](unsigned hi,std::uint16_t v) {
                e.raw[hi]=std::uint8_t(v>>8u);e.raw[hi+1u]=std::uint8_t(v);
            };
            if(e.state()==0u) {
                set_anchor(0x28u,e.x_fixed());set_anchor(0x2au,e.y_fixed());
                e.state()=1u;
            } else {
                e.raw[0x03]&=3u;
                const int x=int(std::int16_t(e.x_fixed()));
                const int y=int(std::int16_t(e.y_fixed()));
                const int dx=get_anchor(0x28u)-x;
                const int dy=get_anchor(0x2au)-y;
                auto half=[](int v) {
                    return v>=0 ? v/2 : -(((-v)+1)/2);
                };
                put(e,13,half(signed_word(e,13))+(dx>>5));
                put(e,11,half(signed_word(e,11))+(dy>>5));
                if(e.raw[0x08]>=0x18u || e.raw[0x0a]>=0x24u) e.clear();
            }
        } else if(e.type()==0x41u) {
            // Stage-5 animated tile hazard, bank05 $8D2C-$8DA3.
            static constexpr std::array<std::uint8_t,8> mid{8,8,32,16,8,16,40,1};
            static constexpr std::array<std::uint8_t,8> tail{16,32,16,32,8,8,4,2};
            const unsigned program=e.raw[0x20]&7u;
            if(e.state()==1u) {
                if(expired(e,0x17)) {
                    const auto phase=e.raw[0x21]++;
                    e.raw[0x06]=std::uint8_t(phase+8u);
                    if(e.raw[0x06]==0x0cu) {
                        e.raw[0x06]=0u;e.raw[0x21]=0u;e.state()=2u;
                    }
                }
            } else if(e.state()==2u && expired(e,0x18)) {
                e.raw[0x06]=std::uint8_t((e.raw[0x06]+1u)&7u);
                if(e.raw[0x06]==4u) e.raw[0x18]=mid[program];
                if(e.raw[0x06]==0u) {
                    e.raw[0x17]=tail[program];e.state()=1u;
                }
            }
        } else if(e.type()==0x49u) {
            // Stage-5 vertical patrol, bank05 $92E4-$936D. It bounces from
            // level geometry, pauses for a random 0..15 timer, then resumes
            // with the exact opposite 8.8 Y velocity.
            e.raw[0x05]=std::uint8_t(tick&1u);
            if(e.state()==1u) {
                const bool hit=terrain_probe &&
                    terrain_probe(e,0x0100,e.raw[0x21]?0:0x0200)!=0u;
                if(hit) {
                    e.raw[0x22]=e.raw[0x0b];e.raw[0x23]=e.raw[0x0c];
                    put(e,11,0);
                    e.raw[0x17]=std::uint8_t(rom_random(rom,game)&0x0fu);
                    e.state()=2u;
                }
            } else if(e.state()==2u && expired(e,0x17)) {
                e.raw[0x0b]=e.raw[0x22];e.raw[0x0c]=e.raw[0x23];
                put(e,11,-signed_word(e,11));
                e.raw[0x21]^=1u;e.state()=1u;
            }
        } else if(e.type()==0x1bu) {
            // Fixed $5BC2/$5C84: trigger-driven ship generator plus the
            // original oscillating velocity and coarse player tracking.
            if(e.state()==2u) {
                const auto cursor=std::uint8_t(trigger);
                if((cursor&15u)==0u && (cursor>>4u)!=0u) {
                    const unsigned region=cursor>>4u;
                    if(region==8u) {e.clear();continue;}
                    if(region<=7u) e.raw[3]=rom.bank(0)[0x1ccfu+region-1u];
                }
                if((tick&e.raw[3])==0u) if(auto* child=create(rom,game,0x1bu)) {
                    child->set_x_fixed(0x1f00u);
                    child->set_y_fixed(std::uint16_t(rom_random(rom,game)&15u)<<8u);
                }
            } else if(e.state()==0u) {
                e.raw[0x18]=30u;e.state()=1u;
                put(e,15,(rom_random(rom,game)&1u)?-8:8);put(e,17,-8);
                put(e,11,0);put(e,13,-0xa0);
            } else {
                if(((tick^e.raw[7])&31u)==0u) e.raw[0x26]=1u; // $7143 aimed fire
                for(unsigned p:{11u,13u}) {
                    if(std::abs(signed_word(e,p))>=0xa0) put(e,p+4,-signed_word(e,p+4));
                    put(e,p,signed_word(e,p)+signed_word(e,p+4));
                }
                const bool fast=e.raw[0x18]!=0u;
                if(fast) --e.raw[0x18];
                auto follow=[](std::uint16_t position,std::uint8_t target,int speed) {
                    const int d=int(std::int8_t(std::uint8_t(target-(position>>8u)+1u)))>>1;
                    return std::uint16_t(position+(d<0?-speed:(d>0?speed:0)));
                };
                e.set_y_fixed(follow(e.y_fixed(),game.player.raw[8],fast?0x40:0x30));
                e.set_x_fixed(follow(e.x_fixed(),game.player.raw[10],fast?0x80:0x30));
            }
        } else if(e.type()==0x50u) {
            // Stage-8 vertical mover, fixed $5AA2-$5AFC. +21/+22 is the
            // signed step; +23/+24 is its 8.8 accumulator and directly feeds
            // the visible Y high byte.
            const int acc=std::int16_t(std::uint16_t(e.raw[0x23])|
                                      (std::uint16_t(e.raw[0x24])<<8u));
            const int vel=std::int16_t(std::uint16_t(e.raw[0x21])|
                                      (std::uint16_t(e.raw[0x22])<<8u));
            const auto next=std::uint16_t(acc+vel);
            e.raw[0x23]=std::uint8_t(next);e.raw[0x24]=std::uint8_t(next>>8u);
            e.raw[0x08]=e.raw[0x24];
            e.raw[0x05]=e.raw[0x06]=(e.raw[0x23]&0x80u)?0u:1u;
            const auto yh=static_cast<std::int8_t>(e.raw[0x08]);
            if(yh>=0x18) e.clear();
        } else if(e.type()==0x4eu) {
            // Stage-9 falling enemy, bank05 $9477 via $9655. State 0 chooses
            // one of eight ROM start cells and a 1..4 animation delay.
            static constexpr std::array<std::pair<std::uint8_t,std::uint8_t>,8> pos{{
                {4,1},{2,5},{2,8},{2,11},{4,15},{8,21},{4,13},{6,17}}};
            if(e.state()==0u) {
                const auto r=rom_random(rom,game);
                const auto [y,x0]=pos[r&7u];
                e.set_y_fixed(std::uint16_t(y)<<8u);
                e.set_x_fixed(std::uint16_t(std::uint8_t(x0+((r&1u)?0u:1u)))<<8u);
                e.raw[0x20]=e.raw[0x17]=std::uint8_t(((r>>3u)&3u)+1u);
                e.state()=1u;
            } else if(e.state()==1u && expired(e,0x17)) {
                e.raw[0x17]=e.raw[0x20];
                e.raw[0x05]=std::uint8_t((e.raw[0x05]+1u)%6u);
                if(e.raw[0x05]==0u) {
                    e.raw[0x05]=6u;put(e,11,0x0040);put(e,15,0x0010);
                    e.raw[0x14]|=0x80u;
                    e.set_y_fixed(std::uint16_t(e.y_fixed()+0x0200u));
                    e.state()=2u;
                }
            } else if(e.state()==2u) {
                put(e,11,signed_word(e,11)+signed_word(e,15));
                if(e.raw[0x05]!=7u) ++e.raw[0x05];
            }
        } else if(e.type()==0x55u) {
            // Fixed $58F0-$59D0. Large carrier/assault craft used throughout
            // the vehicle section. +20 is the X trigger, +21 selects the
            // hover/return variant, +22 is the original deck Y and +23 is the
            // 1..7 cruise altitude chosen at creation.
            if(e.state()==1u) {
                if(e.raw[0x0a]==e.raw[0x20]) {
                    ++e.raw[0x17]; // original starts the rise with timer 1
                    e.state()=2;
                    if(sounds) sounds->push_back(PlaySound::CarrierLaunch); // fixed $593F: $1A
                }
            } else if(e.state()==2u) {
                // $58BC: while rising, emit at most three type-$68 exhaust
                // puffs, spaced by the +24 countdown. Child placement uses
                // only the parent's high coordinate bytes: (+6,+2) tiles.
                if(e.raw[0x08] < 0x0bu) {
                    if(e.raw[0x24]) --e.raw[0x24];
                    else if(++e.raw[0x25] < 4u) {
                        e.raw[0x24]=8;
                        if(auto* c=create(rom,game,0x68u)) {
                            c->set_x_fixed(std::uint16_t(std::uint8_t(e.raw[0x0a]+6u))<<8);
                            c->set_y_fixed(std::uint16_t(std::uint8_t(e.raw[0x08]+2u))<<8);
                            c->state()=0;
                        }
                    }
                }
                if(expired(e,0x17)) {
                    const unsigned diff=std::uint8_t(e.raw[0x22]-e.raw[0x08]);
                    const auto fixed=rom.bank(0);
                    e.raw[0x17]=fixed[0x199au+std::min<unsigned>(diff,15u)];
                    e.set_y_fixed(std::uint16_t(e.y_fixed()-0x0100u));
                    if(e.raw[0x21] && e.raw[0x23]>=e.raw[0x08]) e.state()=3;
                }
            } else if(e.state()==3u) {
                if(e.raw[0x0a] < 6u) e.state()=4;
            } else if(e.state()==4u) {
                if(expired(e,0x17)) {
                    e.raw[0x17]=6;
                    e.set_y_fixed(std::uint16_t(e.y_fixed()+0x0100u));
                    if(e.raw[0x08]==e.raw[0x22]) e.state()=5;
                }
            }
            // $59AA: tile frame +06 follows height above the deck (capped at
            // five); sprite frame +05 flickers 0/1/2 with CA02 bit 0.
            const unsigned d=std::uint8_t(e.raw[0x22]-e.raw[0x08]);
            e.raw[0x06]=std::uint8_t(std::min(5u,d));
            e.raw[0x05]=(tick&1u)?0u:std::uint8_t(d<3u?0u:(d==3u?1u:2u));
        } else if(e.type()==0x64u || e.type()==0x6au) {
            if(include_gate) step_stage0_gate_object(rom,game,e,sounds);
        } else if(e.type()==0x6bu) {
            // Bank05 $9B38. $6B is the persistent wreck/replacement used by
            // destroyed $1F/$22/$26/$55 actors. The source actor's +3E is
            // intentionally retained across $7CC3 and becomes the wreck tile
            // frame (9 for $1F, 11 for $22, 12 for $26, 19 for $55 variants).
            if(e.state()==0u) {
                e.flags15()=0x04;
                // $9B42->$6AC2, B=3: 0->1->2->0. Only the wrap continues
                // into the wreck/drop branch; the first two frames return.
                e.raw[0x06]=std::uint8_t((e.raw[0x06]+1u)%3u);
                if(e.raw[0x06]!=0u) continue;
                if(e.raw[0x3e]) {
                    e.raw[0x06]=e.raw[0x3e];
                    e.flags15()=0x46;
                    e.state()=1;
                } else if(!e.raw[0x3d]) {
                    e.clear();
                }
                // The raw3D!=0/raw3E==0 branch drops a pickup through $6F55;
                // Stage0Combat owns the pickup selector, so leave that rare
                // bonus branch for the combat integration rather than inventing
                // a selector here.
            }
        } else if(e.type()==0x68u) {
            // Fixed $5112. Exhaust puff: four acceleration ticks downward,
            // then zero Y velocity and drift left. $6A9A adds +0F/+11
            // acceleration words to +0B/+0D velocity words.
            if(e.state()==0u) {
                put(e,15,0x000e); put(e,17,0);
                e.raw[0x18]=4; e.state()=1;
            } else if(e.state()==1u) {
                put(e,11,signed_word(e,11)+signed_word(e,15));
                put(e,13,signed_word(e,13)+signed_word(e,17));
                if(expired(e,0x18)) e.state()=2;
            } else if(e.state()==2u) {
                put(e,11,0);
                put(e,13,game.difficulty<4u?-0x00c0:-0x0120); // fixed $5135
                e.state()=3;
            }
        } else if(e.type()==0x19u) {
            // Fixed $557C-$5762. Stage-2 walker: patrol, timed turn, attack
            // pivot/fire, and a terrain-driven jump arc. The original helper
            // probes use 8.8 tile offsets; native receives the same collision
            // map through TerrainProbe.
            auto solid=[&](int xo,int yo)->bool {
                return terrain_probe ? terrain_probe(e,xo,yo)!=0u : false;
            };
            auto set_patrol_velocity=[&] {
                put(e,13,e.raw[0x22]?0x0060:-0x0040);
            };
            auto set_base_frame=[&] {e.raw[0x05]=e.raw[0x22]?2u:0u;};
            auto begin_jump=[&](bool steep) {
                put(e,11,steep?-0x0140:-0x0100);
                put(e,13,e.raw[0x22]?(steep?0x0040:0x0060):(steep?-0x0020:-0x0040));
                put(e,15,steep?0x0020:0x0040);
                e.state()=6u;
            };
            if(e.state()==1u) {
                // $56D8: if the forward/down support point is empty, enter
                // the normal jump arc. This is the characteristic terrain
                // following visible in the original stage-2 captures.
                const int support_x=e.raw[0x22]?0x02e0:-0x0020;
                if(terrain_probe && !solid(support_x,0x02e0)) {
                    begin_jump(false);
                } else {
                    if((tick&1u)==0u) e.raw[0x05]^=1u; // $5715 / CA02 bit0
                    if(expired(e,0x18)) {
                        e.state()=3u;
                    } else {
                        // $572F: two front probes distinguish wall, ledge and
                        // open travel. A wall starts the steeper evasive arc.
                        const int front_x=e.raw[0x22]?0x0300:-0x0100;
                        const bool low=terrain_probe && solid(front_x,0x0100);
                        const bool high=terrain_probe && solid(front_x,-0x0500);
                        if(low && !high) begin_jump(true);
                        else if(low && high) {
                            e.raw[0x17]=0x10u;e.state()=2u;
                        } else if(--e.raw[0x20]==0u) {
                            e.raw[0x20]=0x40u;e.raw[0x17]=0x10u;e.state()=2u;
                        }
                    }
                }
            } else if(e.state()==2u) {
                put(e,13,0);e.raw[0x05]=4u;
                if(expired(e,0x17)) {
                    e.raw[0x22]^=1u;set_base_frame();set_patrol_velocity();e.state()=1u;
                }
            } else if(e.state()==3u) {
                const auto dir=direction8(game,e);e.raw[0x24]=dir;
                // $55FA compares the player's horizontal half-plane with the
                // current patrol orientation and chooses the short/long pivot.
                const bool same=((dir+2u)&4u)==(e.raw[0x22]&4u);
                e.raw[0x17]=4u;e.raw[0x21]=4u;e.state()=same?5u:4u;
            } else if(e.state()==4u) {
                put(e,13,0);e.raw[0x05]=4u;
                if(expired(e,0x17)) {
                    e.raw[0x22]^=1u;set_base_frame();e.state()=5u;
                }
            } else if(e.state()==5u) {
                put(e,13,0);
                if(e.raw[0x21]>1u) --e.raw[0x21];
                else {
                    e.raw[0x21]=0u;e.raw[0x26]=1u; // $7143 shot, consumed by combat
                    set_patrol_velocity();
                    e.raw[0x18]=std::uint8_t((game.difficulty<6u?0x20u:0x10u)+e.raw[0x2d]);
                    set_base_frame();e.state()=1u;
                }
            } else if(e.state()==6u || e.state()==7u) {
                e.raw[0x3d]=1u;
                int vy=signed_word(e,11)+signed_word(e,15);
                if(vy>0x0100) vy=0x0100;
                put(e,11,vy);
                // $564F waits for a solid landing point (+1,+2.75 cells).
                if(terrain_probe && solid(0x0100,0x02c0)) {
                    put(e,11,0);put(e,15,0);set_patrol_velocity();set_base_frame();e.state()=1u;
                }
            }
        } else if(e.type()==0x3eu) {
            // Bank06 $A647-$A7C2: stage-3 boss controller. The handler writes
            // the current tick's movement vector to C0DC/C0DE via $6C6D and
            // the common object service applies it afterwards.
            static constexpr std::array<std::uint8_t,8> anim_frame{0,1,2,3,4,5,6,7};
            auto next_anim=[&] {
                unsigned i=e.raw[0x20];if(i>=anim_frame.size()) i=0u;
                e.raw[0x20]=std::uint8_t(i+1u);e.raw[0x17]=2u;e.raw[0x06]=anim_frame[i];
            };
            auto rotate_child=[](std::uint8_t a) {
                return std::uint8_t((unsigned(a)+1u)%3u);
            };
            auto attack_controller=[&] {
                switch(e.raw[0x02]) {
                case 0:
                    if(e.raw[0x18]) --e.raw[0x18];
                    if(!e.raw[0x18]) ++e.raw[0x02];
                    break;
                case 1:
                    e.raw[0x21]=0u;e.raw[0x22]=0u;
                    if(!e.raw[0x03]) {++e.raw[0x02];e.raw[0x18]=0x0au;}
                    break;
                case 2:
                    if(e.raw[0x18]) --e.raw[0x18];
                    if(!e.raw[0x18]) {
                        const auto a=rotate_child(e.raw[0x23]);e.raw[0x23]=a;
                        e.raw[0x21]=std::uint8_t(a+1u);
                        e.raw[0x22]=2u;e.raw[0x18]=5u;++e.raw[0x03];++e.raw[0x02];
                    }
                    break;
                case 3:
                    e.raw[0x21]=0u;e.raw[0x22]=0u;
                    if(e.raw[0x18]) --e.raw[0x18];
                    if(!e.raw[0x18]) {
                        const auto a=rotate_child(e.raw[0x23]);e.raw[0x21]=std::uint8_t(a+1u);
                        e.raw[0x22]=1u;e.raw[0x18]=std::uint8_t(1u+(rom_random(rom,game)&0x0fu));
                        ++e.raw[0x03];++e.raw[0x02];
                    }
                    break;
                default:
                    e.raw[0x21]=0u;e.raw[0x22]=0u;
                    if(e.raw[0x18]) --e.raw[0x18];
                    if(!e.raw[0x18]) {
                        const auto a=rotate_child(rotate_child(e.raw[0x23]));
                        e.raw[0x21]=std::uint8_t(a+1u);e.raw[0x22]=1u;
                        ++e.raw[0x03];e.raw[0x02]=1u;
                    }
                    break;
                }
            };
            const unsigned parent_slot=e.raw[0x2d]?unsigned(e.raw[0x2d]-1u):0u;
            if(parent_slot<stage3_parent_prev_x_.size()) {
                // The linked $3F records are visited before their $3E parent
                // in the original scheduler. Preserve this pre-update anchor
                // so the forward native array reproduces that one-object-tick lag.
                stage3_parent_prev_x_[parent_slot]=e.x_fixed();
                stage3_parent_prev_y_[parent_slot]=e.y_fixed();
            }
            // $A64C -> $6A13 applies the PREVIOUS tick's motion vector before
            // the state dispatch. The state handler below only installs the
            // vector to be used on the next object tick.
            if(e.state()!=0u) {
                e.set_x_fixed(std::uint16_t(e.x_fixed()+signed_word(e,13)));
                e.set_y_fixed(std::uint16_t(e.y_fixed()+signed_word(e,11)));
            }
            auto set_velocity=[&](int vx) {put(e,11,0);put(e,13,vx);};
            if(e.state()==0u) {
                e.set_x_fixed(0x1f00u);e.set_y_fixed(0x0100u);e.raw[0x18]=0x14u;
                if(parent_slot<stage3_parent_prev_x_.size()) {
                    stage3_parent_prev_x_[parent_slot]=e.x_fixed();
                    stage3_parent_prev_y_[parent_slot]=e.y_fixed();
                }
                e.raw[0x37]=0u;
                for(unsigned ordinal=1u;ordinal<=3u;++ordinal) if(auto* c=create(rom,game,0x3fu)) {
                    c->raw[0x03]=std::uint8_t(ordinal);c->raw[0x23]=1u;
                    c->raw[0x34]=e.raw[0x2d];c->raw[0x38]=std::uint8_t(ordinal);
                    c->state()=0u;++e.raw[0x37];
                }
                e.raw[0x3b]=e.raw[0x37];e.raw[0x34]=0x80u;e.raw[0x3f]=1u;
                next_anim();set_velocity(-0x20);e.state()=1u;
            } else {
                if(e.raw[0x17]>1u) --e.raw[0x17]; else next_anim();
                if(e.state()==1u) {
                    set_velocity(-0x20);
                    if(e.raw[0x0a]<0x0eu) {
                        e.state()=2u;set_velocity(0x40);attack_controller();
                        if(e.raw[0x0a]>=0x15u) e.state()=3u;
                    }
                } else if(e.state()==2u) {
                    set_velocity(0x40);attack_controller();
                    if(e.raw[0x0a]>=0x15u) e.state()=3u;
                } else {
                    set_velocity(-0x40);attack_controller();
                    if(e.raw[0x0a]<0x0au) e.state()=2u;
                }
            }
        } else if(e.type()==0x3fu) {
            // Bank06 $A850-$AA14: one of the three large stage-3 boss tile
            // actors. +03 is its 1-based ordinal, +23 selects attack family
            // 1 (fire) or 2 (open weak point), and +24 is the extension phase.
            Entity64* parent=nullptr;
            for(auto& p:game.enemies) if(p.type()==0x3eu && p.raw[0x2d]==e.raw[0x34]) {parent=&p;break;}
            if(!parent) {e.clear();continue;}
            const unsigned ordinal=std::clamp<unsigned>(e.raw[0x03],1u,3u);
            static constexpr std::array<std::int8_t,3> ox{0,0,-1};
            static constexpr std::array<std::uint8_t,3> oy{6,10,14};
            // Original object scheduling visits these linked actors before
            // their parent. Use the parent's pre-update anchor saved above.
            const unsigned link=parent->raw[0x2d]?unsigned(parent->raw[0x2d]-1u):0u;
            const auto px=link<stage3_parent_prev_x_.size() && stage3_parent_prev_x_[link]?
                stage3_parent_prev_x_[link]:parent->x_fixed();
            const auto py=link<stage3_parent_prev_y_.size() && stage3_parent_prev_y_[link]?
                stage3_parent_prev_y_[link]:parent->y_fixed();
            e.set_x_fixed(std::uint16_t(px+int(ox[ordinal-1])*0x0100));
            e.set_y_fixed(std::uint16_t(py+unsigned(oy[ordinal-1])*0x0100u));
            static constexpr std::array<std::uint8_t,24> visual{
                0x0b,0x0c,0x0d,0x0d, 0x0f,0x10,0x11,0x11, 0x12,0x13,0x14,0x14,
                0x0b,0x1c,0x18,0x19, 0x0f,0x17,0x15,0x16, 0x12,0x1d,0x1a,0x1b};
            auto update_visual=[&] {
                const unsigned family=std::clamp<unsigned>(e.raw[0x23],1u,2u)-1u;
                const unsigned phase=std::min<unsigned>(e.raw[0x24],3u);
                const auto v=visual[family*12u+(ordinal-1u)*4u+phase];
                if(v) {e.raw[0x06]=std::uint8_t(v-1u);e.raw[0x15]|=0x50u;}
                else e.raw[0x15]&=std::uint8_t(~0x50u);
            };
            if(e.raw[0x06]==0u && e.raw[0x24]==0u) update_visual();
            auto extend=[&](std::uint8_t next_state,std::uint8_t timer) {
                if(e.raw[0x17]) --e.raw[0x17];
                if(e.raw[0x17]) return;
                e.raw[0x17]=1u;
                if(e.raw[0x24]==0u && sounds) sounds->push_back(PlaySound::Stage3ArmExtend);
                if(e.raw[0x24]<3u) ++e.raw[0x24];
                update_visual();
                if(e.raw[0x24]==2u) {e.state()=next_state;e.raw[0x17]=timer;}
            };
            if(e.state()==0u) {
                if(parent->raw[0x21]==ordinal && parent->raw[0x22]) {
                    e.state()=parent->raw[0x22];e.raw[0x23]=parent->raw[0x22];
                    e.raw[0x17]=3u;e.raw[0x04]=0u;
                }
            } else if(e.state()==1u) {
                extend(4u,0x28u);
            } else if(e.state()==2u) {
                extend(5u,0x1eu);
            } else if(e.state()==3u || e.state()==4u) {
                if(e.raw[0x17]) --e.raw[0x17];
                if(!e.raw[0x17]) {e.state()=7u;e.raw[0x17]=5u;}
                else if(e.raw[0x17]==0x25u || e.raw[0x17]==0x12u) e.raw[0x26]|=1u;
                else if(e.raw[0x17]==0x1cu) e.raw[0x26]|=3u;
            } else if(e.state()==5u) {
                // $A8F5: CA02&3 gates the exposed weak-point pulse. Once the
                // arm reaches phase 3 it alternates 3,2,3,2; it does not stick
                // at phase 3 for the rest of the 30-tick vulnerability window.
                if((tick&3u)==0u) {
                    auto phase=std::uint8_t(e.raw[0x24]+1u);
                    if(phase>=4u) phase=2u;
                    e.raw[0x24]=phase;update_visual();
                }
                if(e.raw[0x17]) --e.raw[0x17];
                if(!e.raw[0x17]) {e.state()=7u;e.raw[0x17]=5u;}
            } else {
                if(e.raw[0x17]) --e.raw[0x17];
                if(!e.raw[0x17]) {
                    e.raw[0x17]=1u;
                    if(e.raw[0x24]==2u && sounds) sounds->push_back(PlaySound::Stage3ArmRetract);
                    if(e.raw[0x24]) --e.raw[0x24];
                    update_visual();
                    if(!e.raw[0x24]) {
                        if(parent->raw[0x03]) --parent->raw[0x03];
                        e.state()=0u;
                    }
                }
            }
        } else if(e.type()==0x7cu) {
            // Stage-6 boss escort chain, bank06 $B76C-$BA27. A parent owns
            // seven linked type-$7C segments. The parent follows a ROM path
            // in phase/velocity/acceleration space; every child integrates
            // those three words from its predecessor and converts phase into
            // a fixed 1.75-cell sine/cosine link.
            auto be=[](const Entity64& q,unsigned p) {
                return std::uint16_t((unsigned(q.raw[p])<<8u)|q.raw[p+1u]);
            };
            auto set_be=[](Entity64& q,unsigned p,std::uint16_t v) {
                q.raw[p]=std::uint8_t(v>>8u);q.raw[p+1u]=std::uint8_t(v);
            };
            auto find_id=[&](std::uint8_t id)->Entity64* {
                if(!id) return nullptr;
                for(auto& q:game.enemies) if(q.active() && q.raw[0x2d]==id) return &q;
                return nullptr;
            };
            auto trig=[&](std::uint8_t a) {
                const bool neg=(a&0x80u)!=0u;
                unsigned q=a&0x7fu;
                if(q&0x40u) q=(~q)&0x3fu;
                const int v=rom.bank(4)[0x13adu+q];
                return neg?-v:v;
            };
            auto link_delta=[&](std::uint8_t a) {
                const int v=trig(a)*448;
                return v>=0 ? v/256 : -((-v)/256);
            };

            if((e.raw[0x34]&0x80u)==0u && e.raw[0x3e]) {
                e.raw[0x3e]=0u;
                continue;
            }
            if(e.state()==0u) {
                const bool right=(e.raw[0x03]&1u)!=0u;
                e.raw[0x16]=0xffu;e.raw[0x05]=0x11u;e.raw[0x34]=0x80u;
                e.set_y_fixed(0x1700u);e.set_x_fixed(right?0x1900u:0x0500u);
                set_be(e,0x21u,0u);set_be(e,0x23u,0u);set_be(e,0x25u,0u);
                const std::uint16_t path=right?0xb978u:0xb9d0u;
                e.raw[0x27]=std::uint8_t(path);e.raw[0x28]=std::uint8_t(path>>8u);
                e.raw[0x17]=0u;e.raw[0x35]=0u;e.raw[0x36]=0u;

                std::array<Entity64*,7> child{};
                std::uint8_t previous=e.raw[0x2d];
                unsigned made=0u;
                for(;made<child.size();++made) {
                    auto* c=create(rom,game,0x7cu);if(!c) break;
                    c->set_x_fixed(e.x_fixed());c->set_y_fixed(e.y_fixed());
                    c->raw[0x16]=0xffu;c->raw[0x05]=0x11u;
                    const auto ordinal=std::uint8_t(made+1u);
                    if(ordinal&1u) {c->flags15()|=0x08u;--c->raw[0x05];}
                    c->raw[0x34]=e.raw[0x2d];c->raw[0x35]=previous;
                    c->raw[0x36]=0u;c->raw[0x38]=ordinal;c->raw[0x02]=ordinal;
                    c->raw[0x3e]=1u; // newly allocated records run next object pass
                    c->state()=1u;
                    if(made==0u) e.raw[0x36]=c->raw[0x2d];
                    else child[made-1u]->raw[0x36]=c->raw[0x2d];
                    previous=c->raw[0x2d];child[made]=c;
                    e.raw[0x02]=ordinal;
                }
                e.raw[0x17]=std::uint8_t(made);
                e.state()=1u;
            } else if(e.state()==1u) {
                if(e.raw[0x16]==0u) {e.clear();continue;}

                if(e.raw[0x34]&0x80u) {
                    // $B8CB/$B949: three target/step pairs. The latter two
                    // words are compared in +$8000 biased space.
                    auto bank=rom.bank(6);
                    std::uint16_t ptr=std::uint16_t(unsigned(e.raw[0x27])|
                                                    (unsigned(e.raw[0x28])<<8u));
                    auto move_toward=[](std::uint16_t cur,std::uint16_t target,
                                        std::uint16_t step) {
                        if(cur==target) return std::pair<std::uint16_t,bool>{cur,true};
                        if(cur<target) {
                            const unsigned d=unsigned(target)-cur;
                            return std::pair<std::uint16_t,bool>{
                                std::uint16_t(d<=step?target:cur+step),d<=step};
                        }
                        const unsigned d=unsigned(cur)-target;
                        return std::pair<std::uint16_t,bool>{
                            std::uint16_t(d<=step?target:cur-step),d<=step};
                    };
                    bool all=true;
                    if(ptr>=0xa000u && ptr+11u<0xc000u) {
                        unsigned p=unsigned(ptr-0xa000u);
                        const auto le=[&](unsigned q) {
                            return std::uint16_t(unsigned(bank[q])|
                                                 (unsigned(bank[q+1u])<<8u));
                        };
                        auto [phase,dp]=move_toward(be(e,0x21u),le(p),le(p+2u));
                        set_be(e,0x21u,phase);all&=dp;
                        auto [vel,dv]=move_toward(std::uint16_t(be(e,0x25u)+0x8000u),
                                                  le(p+4u),le(p+6u));
                        set_be(e,0x25u,std::uint16_t(vel+0x8000u));all&=dv;
                        auto [acc,da]=move_toward(std::uint16_t(be(e,0x23u)+0x8000u),
                                                  le(p+8u),le(p+10u));
                        set_be(e,0x23u,std::uint16_t(acc+0x8000u));all&=da;
                        if(all) {
                            ptr=std::uint16_t(ptr+12u);
                            p=unsigned(ptr-0xa000u);
                            if(ptr>=0xa000u && ptr+3u<0xc000u &&
                               bank[p]==0xffu && bank[p+1u]==0xffu)
                                ptr=std::uint16_t(unsigned(bank[p+2u])|
                                                  (unsigned(bank[p+3u])<<8u));
                            e.raw[0x27]=std::uint8_t(ptr);
                            e.raw[0x28]=std::uint8_t(ptr>>8u);
                        }
                    }
                } else {
                    auto* prev=find_id(e.raw[0x35]);
                    if(!prev) {e.clear();continue;}
                    set_be(e,0x23u,be(*prev,0x23u));
                    set_be(e,0x25u,std::uint16_t(be(*prev,0x25u)+be(e,0x23u)));
                    set_be(e,0x21u,std::uint16_t(be(*prev,0x21u)+be(e,0x25u)));
                    const auto a=e.raw[0x21];
                    const int yo=link_delta(a);
                    const int xo=link_delta(std::uint8_t(a+0x40u));
                    e.set_y_fixed(std::uint16_t(int(std::int16_t(prev->y_fixed()))+yo));
                    e.set_x_fixed(std::uint16_t(int(std::int16_t(prev->x_fixed()))+xo));
                }

                if(e.raw[0x36]==0u) {
                    e.raw[0x05]=std::uint8_t(((e.raw[0x21]>>4u)+4u)&0x0fu);
                    e.flags15()|=0x08u;
                }
            }
        } else if(e.type()==0x7au) {
            // Bank06 $A000-$A17A: stage-2 boss. Its visible body is the tile
            // actor selected by +06; seven linked type-$3B segments are
            // created at state zero, after which the original renderer drops
            // ordinal 7 on its resource-overflow path. Damage bit +14.7 is only enabled while
            // the animation selector is frame 4.
            static constexpr std::array<std::uint8_t,14> anim_timer{
                3,2,4,4,4,8,2,8,2,4,24,4,2,2};
            static constexpr std::array<std::uint8_t,14> anim_frame{
                4,0,1,2,1,2,3,4,0,1,2,1,2,3};
            static constexpr std::array<std::uint8_t,8> attack_phase{
                0x82,0x83,0x00,0x00,0x82,0x03,0x02,0x81};
            auto next_animation=[&] {
                e.raw[0x14]&=0x7fu;
                unsigned i=e.raw[0x20];if(i>=anim_frame.size()) i=0;
                e.raw[0x20]=std::uint8_t(i+1u);
                e.raw[0x17]=anim_timer[i];e.raw[0x06]=anim_frame[i];
                if(e.raw[0x06]==4u) e.raw[0x14]|=0x80u;
            };
            auto update_attack_heading=[&] {
                // $A10F-$A12A.  +18 is reloaded to max(HP,$18), not merely
                // clamped upward when HP is below $18.  At the normal $20 HP
                // this means a fresh $20-tick attack interval.
                const unsigned hp=e.raw[0x16];
                e.raw[0x18]=std::uint8_t(std::max(0x18u,hp));
                auto a=std::uint8_t(0u-std::uint8_t(hp?hp:1u));
                for(unsigned n=0;n<3u;++n) a=std::uint8_t((a>>1u)|(a<<7u));
                e.raw[0x22]=a&0x1fu;
            };
            if(e.state()==0u) {
                e.raw[0x37]=0u;
                for(unsigned ordinal=1;ordinal<=7u;++ordinal) if(auto* c=create(rom,game,0x3bu)) {
                    c->set_x_fixed(e.x_fixed());c->set_y_fixed(e.y_fixed());
                    c->raw[0x34]=e.raw[0x2d];c->raw[0x38]=std::uint8_t(ordinal);
                    ++e.raw[0x37];
                }
                // $694D snapshots the peak linked-child count in +3B.  The
                // seventh child is created normally, then the original sprite
                // renderer drops it on SAT/resource overflow; +37 falls to 6
                // while +3B remains 7.
                e.raw[0x3b]=e.raw[0x37];
                next_animation();update_attack_heading();
                e.raw[0x16]=0x20u; // $A031 with CA04=0 on the normal route
                e.state()=1u;
            } else if(e.state()==1u) {
                if(expired(e,0x17)) next_animation();
                // $A052-$A0A1 advances the attack-script cursor only when the
                // +18 timer expires.  Advancing it every object tick made the
                // native boss fire roughly 32x too often after its first shot.
                if(expired(e,0x18)) {
                    update_attack_heading();
                    unsigned phase=e.raw[0x21];if(phase>=8u) phase=0u;
                    e.raw[0x21]=std::uint8_t(phase+1u);
                    const auto command=attack_phase[phase];
                    // CA04 is zero on the normal Stage-2 route. High-bit
                    // entries are skipped by $A071-$A075; low actions 2/3
                    // queue the upper/lower $7306 four-shot fan.
                    if((command&0x80u)==0u && (command&3u)!=0u)
                        e.raw[0x26]=command&3u;
                }
            }
        } else if(e.type()==0x3bu) {
            // Bank06 $A17B-$A2A8: linked boss-body segment. +38 is the
            // one-based ordinal written by the parent. It selects exact
            // position offsets, animation family and the two phase timers.
            static constexpr std::array<std::int8_t,7> oy{-3,-3,-3,-3,-2,-2,-2};
            static constexpr std::array<std::int8_t,7> ox{-3,-7,-10,-13,-16,-18,-21};
            static constexpr std::array<std::uint8_t,7> variant{0,0,0,0,1,1,1};
            static constexpr std::array<std::uint8_t,7> wait{0x40,0x80,0x20,0x40,0x30,0x80,0x08};
            static constexpr std::array<std::uint8_t,5> frame0{0,1,2,3,4};
            static constexpr std::array<std::uint8_t,5> frame1{0,7,8,9,10};
            auto reload=[&] {
                const unsigned o=std::clamp<unsigned>(e.raw[0x38],1u,7u)-1u;
                e.raw[0x17]=wait[o];e.raw[0x18]=8u;
            };
            if(e.state()==0u) {
                const unsigned ordinal=std::clamp<unsigned>(e.raw[0x38],1u,7u);
                const unsigned o=ordinal-1u;
                e.raw[0x08]=std::uint8_t(e.raw[0x08]+oy[o]);
                e.raw[0x0a]=std::uint8_t(e.raw[0x0a]+ox[o]);
                e.raw[0x20]=variant[o];e.raw[0x05]=variant[o]?4u:0u;
                reload();e.state()=1u;
                if(ordinal==7u) {
                    // Live original: slot D180 reaches this exact initialized
                    // state (X=$0AC0,Y=$0600) and is then removed by the
                    // renderer's $7821/$7857 resource-overflow path before its
                    // next handler call. Mirror the resulting linked-pool
                    // state without imposing the MSX sprite limit globally.
                    for(auto& parent:game.enemies)
                        if(parent.type()==0x7au && parent.raw[0x2d]==e.raw[0x34]) {
                            if(parent.raw[0x37]) --parent.raw[0x37];
                            break;
                        }
                    e.clear();continue;
                }
            } else if(e.state()==1u) {
                if(expired(e,0x17)) {
                    const unsigned count=e.raw[0x20]?8u:4u;
                    e.raw[0x05]=std::uint8_t((e.raw[0x05]+1u)%count);
                    if(e.raw[0x05]==0u) {
                        e.raw[0x21]=0u;reload();e.raw[0x17]=6u;e.state()=2u;
                    }
                }
            } else if(e.state()==2u) {
                if(expired(e,0x17)) {
                    const auto& table=e.raw[0x20]?frame1:frame0;
                    const auto next=std::uint8_t(e.raw[0x21]+1u);
                    if(next>=5u) e.state()=3u;
                    else {
                        e.raw[0x21]=next;e.raw[0x06]=table[next];
                    }
                }
            } else if(e.state()==3u) {
                const unsigned phase=tick&3u;
                if(phase==1u || phase==2u) e.raw[0x06]=std::uint8_t((e.raw[0x20]?10u:4u)+phase);
                else e.raw[0x06]=0u;
                if(expired(e,0x18)) e.state()=4u;
            } else if(e.state()==4u) {
                const auto& table=e.raw[0x20]?frame1:frame0;
                if(e.raw[0x21]) {
                    --e.raw[0x21];e.raw[0x06]=table[e.raw[0x21]];
                } else {reload();e.state()=1u;}
            }
        } else if(e.type()==0x53u) {
            // Bank05 $9940-$9997. Invisible generator for type $2A. State 1
            // creates the two initial lanes at coarse Y=1 and 16; state 2
            // repeats one child every $40 object ticks from Y=$FC.
            auto child_count=[&] {
                unsigned n=0;for(const auto& c:game.enemies)
                    n+=c.active() && c.type()==0x2au && c.raw[0x34]==e.raw[0x2d];
                return n;
            };
            auto spawn_child=[&](std::uint8_t yh,std::uint8_t ordinal) {
                auto* c=create(rom,game,0x2au);if(!c) return false;
                c->set_x_fixed(e.x_fixed());c->set_y_fixed(std::uint16_t(yh)<<8u);
                put(*c,11,0x0040);c->raw[0x34]=e.raw[0x2d];c->raw[0x38]=ordinal;
                return true;
            };
            if(e.state()==0u) {
                e.set_y_fixed(0xfc00u);e.state()=1u;
            } else if(e.state()==1u) {
                unsigned ordinal=1u;
                if(spawn_child(0x01u,std::uint8_t(ordinal))) ++ordinal;
                if(spawn_child(0x10u,std::uint8_t(ordinal))) ++ordinal;
                e.raw[0x37]=std::uint8_t(child_count());e.raw[0x18]=0x40u;e.state()=2u;
            } else {
                e.raw[0x37]=std::uint8_t(child_count());
                if(!e.raw[0x20] && e.raw[0x0a]<=0x0du) e.raw[0x20]=1u;
                if(expired(e,0x18)) {
                    if(spawn_child(e.raw[0x08],2u)) e.raw[0x18]=0x40u;
                    e.raw[0x37]=std::uint8_t(child_count());
                }
            }
        } else if(e.type()==0x2au) {
            // Bank05 $8338: constant downward motion; $6C3A's horizontal
            // camera compensation is applied by scroll_stage0_objects.
            put(e,11,0x0040);
        } else if(e.type()==0x2bu || e.type()==0x4fu) {
            // Bank05 $8367-$83A6. Both launchers emit type-$16 attackers:
            // two normal 16-tick gaps followed by a 64-tick pause, with the
            // ceiling/floor orientation copied to child +20.
            if(expired(e,0x18)) {
                e.raw[0x18]=0x10u;
                if(auto* c=create(rom,game,0x16u)) {
                    const int yo=e.raw[0x20]?2:-2;
                    c->set_x_fixed(std::uint16_t(e.x_fixed()+0x0200u));
                    c->set_y_fixed(std::uint16_t(e.y_fixed()+yo*0x0100));
                    c->raw[0x20]=e.raw[0x20];
                    if(e.raw[0x3d]) {
                        ++e.raw[0x22];
                        if((e.raw[0x22]&1u)==0u) ++c->raw[0x3d];
                    }
                }
                if(++e.raw[0x21]>=3u) {
                    e.raw[0x21]=0u;e.raw[0x18]=0x40u;
                }
            }
            if(e.type()==0x4fu && expired(e,0x17)) {
                // $9658-$969F: type $4F overlays a three-way shot every
                // $18 ticks. +26 is a native-only one-shot queue consumed by
                // Stage0Combat; orientation selects {1,2,3} vs {13,14,15}.
                e.raw[0x17]=0x18u;
                e.raw[0x26]=1u;
            }
        } else if(e.type()==0x2cu) {
            // $69BF creates these children during the parent $2E handler, but
            // the original object scheduler does not execute the new record in
            // that same 15-Hz pass. The native range loop otherwise reaches the
            // freshly allocated later slot immediately, causing one spurious
            // $8402 bounce before the child has moved once. +3E is unused by
            // type $2C, so use it as a one-pass native scheduling latch.
            if(e.raw[0x3e]) {e.raw[0x3e]=0u;continue;}
            // Bank05 $8402 runs before the state dispatch. $76D0/$7B18 map
            // (+2,+2) through the active composed name table, then the handler
            // reverses Y unless the actual tile byte is exactly $CC. The old
            // native approximation inspected only the linked $2E matrices and
            // ignored raster/fine-scroll placement; later modules consequently
            // escaped vertically before reaching their three-shot window.
            bool on_cc=false;
            if(tile_probe) {
                on_cc=tile_probe(e,0x0200,0x0200)==0xccu;
            } else {
                // Standalone-test fallback: reconstruct the linked parent at
                // integer cells when no live composed-name-table probe exists.
                const int probe_y=int(std::int8_t(std::uint16_t(e.y_fixed()+0x0200u)>>8u));
                const int probe_x=int(std::int8_t(std::uint16_t(e.x_fixed()+0x0200u)>>8u));
                for(const auto& parent:game.enemies) if(parent.active() && parent.type()==0x2eu &&
                        e.raw[0x34] && parent.raw[0x2d]==e.raw[0x34]) {
                    const int py=int(std::int8_t(parent.y_fixed()>>8u));
                    const int px=int(std::int8_t(parent.x_fixed()>>8u));
                    for(const auto& v:decode_stage0_tile_visuals(rom,parent)) {
                        const int top=py+v.tile_y_offset,left=px+v.tile_x_offset;
                        for(unsigned yy=0;yy<v.rows && !on_cc;++yy)
                            for(unsigned xx=0;xx<v.cols;++xx)
                                if(top+int(yy)==probe_y && left+int(xx)==probe_x &&
                                   v.tiles[yy*unsigned(v.cols)+xx]==0xccu) {on_cc=true;break;}
                    }
                    break;
                }
            }
            if(!on_cc) put(e,11,-signed_word(e,11));
            // The child sleeps until the player is left of it and 0..7 coarse
            // cells below, then fires three fixed-angle rounds at five-tick
            // spacing and cools down for ten ticks.
            if(e.state()==0u) {
                const int dx=int(game.player.raw[0x0a])-int(e.raw[0x0a]);
                const int dy=int(game.player.raw[0x08])-int(e.raw[0x08]);
                if(dx<0 && dy>=0 && dy<8) {
                    e.state()=1u;e.raw[0x17]=3u;e.raw[0x18]=5u;
                }
            } else if(e.state()==1u) {
                if(expired(e,0x18)) {
                    e.raw[0x18]=5u;e.raw[0x24]=1u;
                    if(expired(e,0x17)) {e.state()=2u;e.raw[0x18]=10u;}
                }
            } else if(e.state()==2u && expired(e,0x18)) {
                e.state()=0u;
            }
        } else if(e.type()==0x13u) {
            // Fixed $53C4-$5421. Stage-3 $51 controllers launch this small
            // dart from the right. It cruises left for ten object ticks, then
            // turns back through the player's vertical half-plane while a
            // constant -$000F X acceleration bends the return trajectory.
            auto launch_return=[&] {
                put(e,11,game.player.y_fixed()>=e.y_fixed()?0x0040:-0x0040);
                put(e,13,0x0060);put(e,15,0);put(e,17,-0x000f);
                e.raw[0x17]=0x16u;e.state()=3u;
            };
            if(e.state()==0u) {
                put(e,11,0);put(e,13,-0x0080);put(e,15,0);put(e,17,0);
                e.raw[0x17]=0x0au;e.state()=1u;
            } else if(e.state()==1u) {
                e.state()=2u;
                if(expired(e,0x17)) launch_return();
            } else if(e.state()==2u) {
                if(expired(e,0x17)) launch_return();
            } else {
                put(e,11,signed_word(e,11)+signed_word(e,15));
                put(e,13,signed_word(e,13)+signed_word(e,17));
                if(expired(e,0x17)) e.state()=0u;
            }
        } else if(e.type()==0x1cu) {
            // Bank06 $BA3B-$BA9C. The ceiling/floor launcher periodically
            // releases one linked type-$1D. The ROM suppresses a launch while
            // the player is inside the 4x6-cell exclusion window around it.
            if(e.state()==0u) {
                const bool ceiling=e.raw[0x20]!=0u;
                e.raw[0x06]=ceiling?1u:0u;e.raw[0x3e]=ceiling?7u:6u;
                e.raw[0x18]=0x20u;e.state()=1u;
            } else if(expired(e,0x18)) {
                const int dy=std::abs(int(game.player.raw[0x08])-int(std::uint8_t(e.raw[0x08]+1u)));
                const int dx=std::abs(int(game.player.raw[0x0a])-int(std::uint8_t(e.raw[0x0a]+2u)));
                if(dy>=4 || dx>=6) {
                    e.raw[0x18]=0x30u;
                    if(auto* c=create(rom,game,0x1du)) {
                        c->raw[0x20]=e.raw[0x20];c->raw[0x34]=e.raw[0x2d];c->raw[0x38]=1u;
                        c->set_x_fixed(std::uint16_t(e.x_fixed()+0x0200u));
                        c->set_y_fixed(std::uint16_t(e.y_fixed()+(e.raw[0x20]?0x0100u:std::uint16_t(-0x0200))));
                        c->state()=0u;
                    }
                }
            }
        } else if(e.type()==0x1du) {
            // Bank06 $BA9F-$BB66. The child leaves its parent vertically,
            // stops at a player-relative turn line, then accelerates back to
            // the original Y anchor. This reproduces the characteristic arc
            // seen in the original Stage 3 trace.
            if(e.state()==0u) {
                const bool ceiling=e.raw[0x20]!=0u;
                // $BB27 rejects a child when the player is on the wrong side
                // of its launcher: below for the floor form, above for the
                // ceiling form. The target itself is playerY+1 clamped 4..16.
                if((ceiling && game.player.raw[0x08]<e.raw[0x08]) ||
                   (!ceiling && game.player.raw[0x08]>e.raw[0x08])) {
                    e.clear();continue;
                }
                e.raw[0x22]=e.raw[0x08];
                e.raw[0x21]=std::uint8_t(std::clamp(int(game.player.raw[0x08])+1,4,16));
                put(e,11,ceiling?0x00a0:-0x00a0);
                put(e,13,0);put(e,15,ceiling?-0x0018:0x0018);put(e,17,0);
                e.state()=1u;
            } else if(e.state()==1u) {
                // $BB04-$BB10 compares the coarse Y bytes and turns only on
                // exact row alignment; the +/-$00A0 launch vector is chosen so
                // the original reaches that row without needing a crossing test.
                if(e.raw[0x08]==e.raw[0x21]) {
                    // $BB48->$9CAD: if the player is at least six coarse X
                    // cells away, the turnaround also emits one horizontal
                    // type-$60 round. BC=$0000/$0400 selects heading 0/8 and
                    // $9CCB raises the difficulty-table speed by three.
                    const int dx=int(game.player.raw[0x0a])-int(e.raw[0x0a]);
                    if(std::abs(dx)>=6 && !(e.raw[0x0a]&0x80u)) {
                        static constexpr std::array<std::uint8_t,8> speed{
                            0x10,0x12,0x16,0x18,0x1c,0x1e,0x20,0x22};
                        e.raw[0x26]=std::uint8_t((dx<0?0u:8u)+1u); // native queue: heading+1
                        e.raw[0x27]=std::uint8_t(speed[std::min<unsigned>(7u,game.difficulty>>1u)]+3u);
                    }
                    put(e,11,0);e.state()=2u;
                }
            } else if(e.state()==2u) {
                // $BB1A runs the acceleration service, then retires the child
                // when its coarse Y byte exactly returns to the saved home row.
                put(e,11,signed_word(e,11)+signed_word(e,15));
                if(e.raw[0x08]==e.raw[0x22]) e.clear();
            }
        } else if(e.type()==0x25u) {
            // Bank06 $BDDB-$BE5E. Aim once, accelerate for sixteen ticks,
            // coast downward for eight, then acquire the player again.
            if(e.state()==0u) {
                e.state()=1u;
            } else if(e.state()==1u) {
                aimed_velocity(rom,e,game.player,8u);
                auto quarter=[](int v){return v>=0?v/4:-int((unsigned(-v)+3u)/4u);};
                auto half=[](int v){return v>=0?v/2:-int((unsigned(-v)+1u)/2u);};
                const int vy=quarter(signed_word(e,11)),vx=quarter(signed_word(e,13));
                // $BDFF-$BE2C stores the aimed vector /4 as velocity, then
                // shifts once more: acceleration is original /8, i.e. half
                // of the just-stored velocity (arithmetic shift semantics).
                put(e,11,vy);put(e,13,vx);put(e,15,half(vy));put(e,17,half(vx));
                e.raw[0x17]=0x10u;e.state()=2u;
            } else if(e.state()==2u) {
                e.raw[0x05]=1u;
                if(expired(e,0x17)) {
                    put(e,11,0x0020);put(e,13,0);e.raw[0x17]=8u;e.state()=3u;
                } else {
                    put(e,11,signed_word(e,11)+signed_word(e,15));
                    put(e,13,signed_word(e,13)+signed_word(e,17));
                }
            } else if(e.state()==3u) {
                e.raw[0x05]=0u;
                if(expired(e,0x17)) e.state()=1u;
            }
        } else if(e.type()==0x28u) {
            // Bank05 $821D-$82BD. This heavy floor emitter spends a long
            // closed interval, flashes its two tile selectors, then creates
            // four type-$45 homing children on consecutive handler calls.
            static constexpr std::array<std::uint8_t,8> wait{0x18,0x18,0x10,0x08,0x00,0x04,0x04,0x00};
            auto arm_wait=[&] {
                // $82AB: CA19 is rotated right twice, then masked with 7.
                // Preserve zero table entries: $6AD2 deliberately turns a
                // zero counter into $FF on its next call rather than expiring.
                auto rrca=[](std::uint8_t a){return std::uint8_t((a>>1u)|(a<<7u));};
                const unsigned i=rrca(rrca(game.difficulty))&7u;
                e.raw[0x17]=wait[i];
            };
            if(e.state()==0u) {
                e.raw[0x3e]=5u;e.raw[0x06]=2u;
                e.raw[0x17]=game.difficulty>=6u?0x10u:0x60u;
                if(game.difficulty>=6u) e.raw[0x16]=0x2cu;
                e.state()=1u;
            } else if(e.state()==1u) {
                if(expired(e,0x17)) {
                    arm_wait();e.raw[0x06]=0u;e.state()=2u;
                }
            } else if(e.state()==2u) {
                if(expired(e,0x17)) e.state()=3u;
                else if((tick&3u)==0u) {
                    e.raw[0x06]^=1u;
                    if(e.raw[0x06] && sounds) sounds->push_back(PlaySound::EnemyShot);
                }
            } else {
                if(e.raw[0x0a]<8u || (e.raw[0x0a]&0x80u)) {
                    e.raw[0x20]=0u;e.state()=2u;arm_wait();
                } else if(e.raw[0x20]<4u) {
                    // $8290->$9024->$9D1E. Four launch points surround the
                    // heavy emitter; $9D1E seeds the shared type-$70 homing
                    // state, then $9027 changes the record to type $45.
                    static constexpr std::array<std::uint8_t,4> oy{0,4,7,3};
                    static constexpr std::array<std::uint8_t,4> ox{4,0,4,9};
                    static constexpr std::array<std::uint8_t,4> heading{0x40,0x80,0xc0,0x00};
                    static constexpr std::array<std::uint8_t,4> speed{0x10,0x12,0x14,0x14};
                    static constexpr std::array<std::uint8_t,4> turn {0x10,0x11,0x12,0x13};
                    const unsigned i=e.raw[0x20]++;
                    if(auto* c=create(rom,game,0x45u)) {
                        c->set_y_fixed(std::uint16_t(std::uint8_t(e.raw[0x08]+oy[i]))<<8u);
                        c->set_x_fixed(std::uint16_t(std::uint8_t(e.raw[0x0a]+ox[i]))<<8u);
                        const unsigned d=std::min<unsigned>(3u,unsigned(game.difficulty)>>2u);
                        c->raw[0x17]=6u;c->raw[0x12]=speed[d];c->raw[0x11]=turn[d];
                        c->raw[0x0f]=heading[i];c->state()=0u;
                    }
                } else {
                    // $829E plays ROM SFX $17 after the fourth launch.
                    if(sounds) sounds->push_back(PlaySound::HatchShot);
                    e.raw[0x20]=0u;e.state()=2u;arm_wait();
                }
            }
        } else if(e.type()==0x32u) {
            // Bank05 $87C1-$87F0. Twenty of these ceiling/floor sentries make
            // up most of Stage 3. Their pose tracks the player and their shot
            // speed cycles 8,10,12,14,16 before wrapping.
            static constexpr std::array<std::uint8_t,8> floor_frame{0,1,2,3,3,3,0,0};
            static constexpr std::array<std::uint8_t,8> ceil_frame {4,4,7,7,7,6,5,4};
            if(((tick+e.raw[0x2d])&7u)==0u) {
                const auto dir=direction8(game,e)&7u;
                e.raw[0x06]=(e.raw[0x20]?ceil_frame:floor_frame)[dir];
            }
            if(expired(e,0x18)) {
                e.raw[0x18]=std::uint8_t(0x1cu+2u*e.raw[0x2d]);
                static constexpr std::array<std::uint8_t,5> speed{8,10,12,14,16};
                const unsigned i=e.raw[0x25]%speed.size();
                e.raw[0x26]=speed[i];e.raw[0x25]=std::uint8_t((i+1u)%speed.size());
            }
        } else if(e.type()==0x33u) {
            // Bank05 $87F1-$88E9. Large armoured mover: diagonal entrance,
            // right sweep, long centre hold, then the leftward exit. Terrain
            // contact reverses its vertical component during the sweep.
            auto maneuver=[&] {
                // Exact $885C-$88E7 steering. $8894 passes DE=$01FE/$0106
                // into $7595. There D is converted to the Y offset and E to
                // the X offset before $76D0 samples scenery, so the two probes
                // are (x-2,y+1) and (x+6,y+1), not the transposed coordinates.
                const bool solid=terrain_probe &&
                    ((terrain_probe(e,-0x0200,0x0100)&1u) ||
                     (terrain_probe(e, 0x0600,0x0100)&1u));
                auto sector=[&] {
                    // $756C + $88A1/$88B2 partitions the player vector using
                    // 2*abs(dy)-abs(dx), with a $180 fixed-point dead band.
                    const int dx=int(std::int16_t(game.player.x_fixed()))-
                                 int(std::int16_t(e.x_fixed()));
                    const int dy=int(std::int16_t(game.player.y_fixed()))-
                                 int(std::int16_t(e.y_fixed()));
                    const int v=2*std::abs(dy)-std::abs(dx);
                    bool z=false,c=false;
                    if(v<0) c=true;
                    else if(v<=0x180) z=true;
                    if(dy>=0 && !z) c=!c; // $88C0 CCF on the lower half-plane.
                    return std::pair<bool,bool>{z,c};
                };
                auto steer=[&](bool z,bool c) {
                    if(z) {e.raw[0x03]=1u;put(e,11,0);}
                    else if(c) {e.raw[0x03]=2u;put(e,11,0x0030);}
                    else {e.raw[0x03]=0u;put(e,11,-0x0030);}
                };
                auto collision_turn=[&] {
                    ++e.raw[0x02];
                    // $8873-$88E7: above row 9 move down, otherwise move up.
                    steer(false,e.raw[0x08]<9u);
                };
                const auto mode=e.raw[0x02];
                if(mode==0u) {
                    if(solid) collision_turn();
                    else {const auto [z,c]=sector();steer(z,c);}
                    return;
                }
                if(mode==1u) {
                    // $887B only advances this latch on coarse row 7.
                    if(e.raw[0x08]!=7u) return;
                    ++e.raw[0x02];
                }
                if(solid) {collision_turn();return;}
                const auto [z,c]=sector();
                if(z) e.raw[0x02]=0u;
            };
            // $88EA: on selected CA02 phases the large mover calls $9D1E
            // directly and therefore emits two type-$70 homing shots. (Only
            // the $9024 wrapper used by type $28 changes them to type $45.)
            // The ROM difficulty random gate at $750F must succeed first.
            if((tick&0x17u)==0u && (rom_random(rom,game)&0x0fu)<game.difficulty) {
                static constexpr std::array<std::uint8_t,2> oy{0u,6u};
                static constexpr std::array<std::uint8_t,2> heading{0x40u,0xc0u};
                for(unsigned i=0;i<2u;++i) if(auto* c=create(rom,game,0x70u)) {
                    c->set_x_fixed(std::uint16_t(e.x_fixed()+0x0200u));
                    c->set_y_fixed(std::uint16_t(e.y_fixed()+(std::uint16_t(oy[i])<<8u)));
                    c->raw[0x17]=6u;c->raw[0x12]=0x10u;c->raw[0x11]=0x10u;
                    c->raw[0x0f]=heading[i];c->state()=0u;
                }
            }
            if(e.state()==0u) {
                e.raw[0x03]=1u;e.set_x_fixed(0x1c00u);e.set_y_fixed(0u);
                e.raw[0x17]=0x50u;put(e,11,0x0020);put(e,13,-0x0020);e.state()=1u;
            } else if(e.state()==1u) {
                // $8828-$8835 only reverses horizontal travel to +$20.
                // Vertical steering is chosen by $885C on the following
                // state-2 handler call; forcing +$30 here advances the path by
                // one object tick and shifts every later terrain contact.
                if(expired(e,0x17)) {put(e,13,0x0020);e.state()=2u;}
            } else if(e.state()==2u) {
                maneuver();
                if(e.raw[0x0a]>=0x18u) {put(e,13,0);e.raw[0x17]=0x78u;e.state()=3u;}
            } else if(e.state()==3u) {
                maneuver();
                if(expired(e,0x17)) {put(e,13,-0x0040);e.state()=4u;}
            } else maneuver();
        } else if(e.type()==0x72u) {
            // Bank05 $8AD7-$8BF2. This invisible Stage-3 controller carries
            // two linked $35 endpoints and follows the eight ROM route records.
            static constexpr std::array<std::array<std::uint8_t,5>,8> route{{
                {{0x02,0x0c,0x08,0x12,0x07}},{{0x3c,0x0c,0x08,0x12,0x07}},
                {{0x28,0x0f,0x06,0x08,0x0f}},{{0x1e,0x14,0x0d,0x09,0x09}},
                {{0x32,0x0f,0x07,0x0c,0x08}},{{0x32,0x12,0x0a,0x0a,0x0c}},
                {{0x28,0x0f,0x04,0x10,0x0d}},{{0x32,0x12,0x07,0x0c,0x0c}} }};
            auto children=[&] {
                unsigned n=0;for(const auto& c:game.enemies)
                    n+=c.active() && c.type()==0x35u && c.raw[0x34]==e.raw[0x2d];
                return n;
            };
            auto load_route=[&] {
                const unsigned i=std::min<unsigned>(e.raw[0x24],route.size()-1u);const auto& q=route[i];
                e.raw[0x17]=q[0];e.raw[0x26]=q[1];e.raw[0x27]=q[2];e.raw[0x28]=q[3];e.raw[0x29]=q[4];
                // $8B90-$8B97: after record 7 the ROM wraps to record 1,
                // not record 0. Record 0 is an intentionally one-shot intro.
                e.raw[0x24]=std::uint8_t(i+1u<route.size()?i+1u:1u);
            };
            // $8AD7 calls $8B79 before the state dispatch. The long timer
            // therefore advances in every state, not only while route motion
            // is in state 2. State 0 overwrites +18 below, exactly as the ROM.
            if((tick&7u)==0u) {
                --e.raw[0x18];
                if(e.raw[0x18]==0u) e.raw[0x23]=1u;
            }
            auto route_motion=[&] {
                // $8B4C: once the long timer expires, force the fast left
                // vector before probing the scenery boundary.
                if(e.raw[0x23]) put(e,13,-0x0200);
                if(terrain_probe) {
                    const int xo=signed_word(e,13)<0?-0x0100:0x0500;
                    const auto property=terrain_probe(e,xo,0);
                    // $8BCB->$753C reverses immediately only on property 3.
                    // Carry/out-of-map takes $8BD7 instead: (X-2)<$1C returns
                    // without reversing, so the legal coarse range is $02..$1D
                    // inclusive.
                    const bool boundary=e.raw[0x0a]<2u || e.raw[0x0a]>=0x1eu;
                    if(property==3u || (property==0xffu && boundary))
                        put(e,13,-signed_word(e,13));
                }
                // $8B59 is a literal DEC. State 0/1 deliberately fall through
                // here after loading a route, so the fresh counter loses its
                // first tick in the same handler invocation.
                --e.raw[0x17];
                if(e.raw[0x17]==0u) e.state()=3u;
            };
            if(e.state()==0u) {
                e.set_x_fixed(0x1f00u);e.set_y_fixed(0x1400u);
                e.raw[0x18]=0x48u;e.raw[0x23]=0u;e.raw[0x37]=0u;
                for(unsigned n=0;n<2u;++n) if(auto* c=create(rom,game,0x35u)) {
                    c->set_x_fixed(e.x_fixed());c->set_y_fixed(std::uint16_t(n?0x0200u:0x1400u));
                    c->raw[0x05]=std::uint8_t(n);c->raw[0x21]=std::uint8_t(n?1u:2u);
                    c->raw[0x34]=e.raw[0x2d];c->raw[0x38]=std::uint8_t(n+1u);c->state()=0u;
                    ++e.raw[0x37];
                }
                put(e,13,-0x0060);load_route();e.state()=2u;route_motion();
            } else if(e.state()==1u) {
                load_route();e.state()=2u;route_motion();
            } else if(e.state()==2u) {
                route_motion();
            } else if(e.state()==3u) {
                e.raw[0x37]=std::uint8_t(children());
                if(e.raw[0x37]!=2u) {e.clear();continue;}
                e.state()=4u;
            } else if(e.state()==4u) {
                e.raw[0x22]=1u;e.state()=5u;
            } else {
                e.raw[0x22]=0u;e.state()=1u;
            }
        } else if(e.type()==0x35u) {
            // Bank05 $8910-$8AAD. The two linked endpoints follow the $72
            // parent in X. During the parent's one-tick +22 pulse each endpoint
            // creates two type-$75 secondary records. Four records together
            // paint one routed rectangle into the Stage-3 name table.
            Entity64* parent=nullptr;
            for(auto& q:game.enemies) if(q.active() && q.type()==0x72u && q.raw[0x2d]==e.raw[0x34]) {parent=&q;break;}
            if(!parent) {
                // $8952->$896A: a surviving endpoint whose linked $72 parent
                // disappeared is not deleted immediately; it retreats one
                // coarse X cell per object tick until the common left cull.
                --e.raw[0x0a];if(e.raw[0x0a]&0x80u) e.clear();continue;
            }
            if(e.state()==0u) e.state()=1u;
            e.set_x_fixed(parent->x_fixed());e.raw[0x22]=parent->raw[0x22];
            e.raw[0x26]=parent->raw[0x26];e.raw[0x27]=parent->raw[0x27];
            e.raw[0x28]=parent->raw[0x28];e.raw[0x29]=parent->raw[0x29];
            if(e.raw[0x22]) {
                auto floor_div32=[](int v) {
                    return v>=0 ? v/32 : -int((unsigned(-v)+31u)/32u);
                };
                auto secondary=[&]()->Entity64* {
                    auto it=std::find_if(game.lasers.begin(),game.lasers.end(),
                                         [](const auto& q){return !q.active();});
                    if(it==game.lasers.end()) return nullptr;
                    it->clear();it->type()=0x75u;
                    const auto m=decode_spawn_type_metadata(rom,0x75u);
                    for(unsigned j=0;j<4u;++j) it->raw[0x13u+j]=m.bytes[j];
                    return &*it;
                };
                auto line=[&](std::uint8_t tx,std::uint8_t ty,int sx,int sy,
                              std::uint8_t count,std::uint8_t tile,
                              std::int8_t dy,std::int8_t dx) {
                    if(!count) return;
                    auto* q=secondary();if(!q) return;
                    const auto start_x=std::uint16_t(e.x_fixed()+sx);
                    const auto start_y=std::uint16_t(e.y_fixed()+sy);
                    q->set_x_fixed(start_x);q->set_y_fixed(start_y);
                    put(*q,11,floor_div32(int(std::int16_t(std::uint16_t(ty)<<8u))-int(std::int16_t(start_y))));
                    put(*q,13,floor_div32(int(std::int16_t(std::uint16_t(tx)<<8u))-int(std::int16_t(start_x))));
                    q->raw[0x0f]=count;q->raw[0x10]=std::uint8_t(dy);
                    q->raw[0x11]=tile;q->raw[0x12]=std::uint8_t(dx);
                    // D460 is processed later in the same original object
                    // pass than CE80. A $75 born here therefore receives one
                    // common velocity integration and its $9E7C state-0 call
                    // immediately: by end-of-pass it is state 1 with +17=$1F.
                    q->set_y_fixed(std::uint16_t(q->y_fixed()+signed_word(*q,11)));
                    q->set_x_fixed(std::uint16_t(q->x_fixed()+signed_word(*q,13)));
                    q->raw[0x17]=0x1fu;q->state()=1u;
                };
                const std::uint8_t bx=parent->raw[0x26],by=parent->raw[0x27];
                const std::uint8_t w=parent->raw[0x28],h=parent->raw[0x29];
                if(e.raw[0x21]==1u) {
                    // $89FE: upper endpoint — left vertical and top horizontal.
                    // $899A starts the left vertical at Y+4;
                    // $89CC starts the top horizontal at X+4/Y+4.
                    line(bx,by,0,4,h,0xcbu, 1, 0);
                    line(std::uint8_t(bx+w),by,4,4,w,0xcau, 0,-1);
                } else {
                    // $8A30: lower endpoint — bottom horizontal and right vertical.
                    const auto bottom=std::uint8_t(by+h);
                    line(bx,bottom,0,1,w,0xcau, 0, 1);
                    line(std::uint8_t(bx+w),bottom,4,1,h,0xcbu,-1, 0);
                }
            }
        } else if(e.type()==0x2eu) {
            // Bank05 $8512-$8580. Initial state creates one child for the
            // low form and two for the high-nibble form. $69BF links them to
            // this parent; once the linked children are gone, the launcher
            // advances its packed-compositor closing animation.
            auto linked_children=[&] {
                unsigned n=0;
                for(const auto& c:game.enemies)
                    n+=c.active() && c.type()==0x2cu && c.raw[0x34]==e.raw[0x2d];
                return n;
            };
            if(e.state()==0u) {
                const unsigned count=e.raw[0x03]?2u:1u;
                for(unsigned n=0;n<count;++n) if(auto* c=create(rom,game,0x2cu)) {
                    c->set_x_fixed(std::uint16_t(e.x_fixed()-0x0200u));
                    c->set_y_fixed(std::uint16_t((unsigned(e.raw[0x08])+5u)<<8u));
                    // $8650/$865C: first child -$0060, second +$0060.
                    put(*c,11,n==0u?-0x0060:0x0060);
                    c->raw[0x34]=e.raw[0x2d];c->raw[0x38]=std::uint8_t(n+1u);
                    c->raw[0x3e]=1u; // defer first $83BF handler to the next object pass
                }
                e.raw[0x37]=std::uint8_t(linked_children());
                e.state()=1u;
            } else if(e.state()==1u) {
                e.raw[0x37]=std::uint8_t(linked_children());
                if(e.raw[0x37]==0u) {
                    if(e.raw[0x03]==0u) {e.raw[0x06]=1u;e.state()=3u;}
                    else {e.raw[0x06]=3u;e.state()=2u;e.raw[0x17]=3u;}
                }
            } else if(e.state()==2u && expired(e,0x17)) {
                e.raw[0x17]=3u;
                if(++e.raw[0x06]>=5u) e.state()=3u;
            }
        } else if(e.type()==0x16u) {
            // Fixed $542C. Type-$16 is the attacker emitted by $2B. Keep the
            // ROM's launch acceleration, timed re-aim and camera detach. The
            // final steering phase is persistent in native SDL rather than
            // re-entering the bank-switch continuation bookkeeping.
            if(e.state()==0u) {
                put(e,15,e.raw[0x20]?4:-4);put(e,17,0);
                e.raw[0x18]=0x10u;e.raw[0x17]=0xc0u;e.flags15()|=0x04u;e.state()=1u;
            } else if(e.state()==1u) {
                put(e,11,signed_word(e,11)+signed_word(e,15));
                put(e,13,signed_word(e,13)+signed_word(e,17));
                if(expired(e,0x18)) e.state()=2u;
            } else if(e.state()==2u) {
                aimed_velocity(rom,e,game.player,game.difficulty<4u?0x10u:0x14u);
                e.raw[0x18]=0x18u;e.state()=3u;
            } else if(e.state()==3u && expired(e,0x18)) {
                e.flags15()&=std::uint8_t(~0x04u);
                const int dx=int(game.player.raw[0x0a])-int(e.raw[0x0a]);
                const int dy=int(game.player.raw[0x08])-int(e.raw[0x08]);
                put(e,11,std::abs(dy)<2?0:(dy<0?-0x40:0x40));
                put(e,13,std::abs(dx)<2?0:(dx<0?-0x80:0x80));
                e.state()=4u;
            }
        } else if(e.type()==0x27u) {
            // Bank05 $8170-$81A9. Every ten object ticks the enemy recomputes
            // an aimed velocity. CA19 contributes half the difficulty and
            // +03 is the per-record speed bias. Frame 0/1 follows X direction.
            if(e.raw[0x0a]>=2u && expired(e,0x17)) {
                e.raw[0x17]=0x0au;
                const unsigned speed=(unsigned(game.difficulty)>>1u)+0x0au+e.raw[0x03];
                aimed_velocity(rom,e,game.player,speed);
                e.raw[0x05]=signed_word(e,13)<0 ? 1u : 0u;
            }
            // $8173-$817C only shortens +17 to two ticks when damage is
            // pending. It does not touch either velocity word, so the mover
            // keeps flying while the next aimed-vector recalculation is pulled
            // forward. Clearing velocity here created a non-ROM hit-stop.
            if(e.raw[0x04]) e.raw[0x17]=2u;
        } else if(e.type()==0x2du) {
            // Bank05 $844D-$84F8. These are surface runners, not free-flying
            // enemies. +0B/+0C is a saved copy of the horizontal velocity
            // during the firing pause; it is deliberately NOT Y velocity for
            // this object family. $84DC feeds one of two three-entry heading
            // lists to $7306, so each expiry emits THREE type-$60 rounds.
            //
            // $84AA/$6B53 reverses the live horizontal velocity when the
            // surface probe hits an end/obstacle. Use the composed terrain
            // probe at the ROM's forward coarse offsets (-1 or +5 cells).
            const int vx=signed_word(e,13);
            if(terrain_probe && vx) {
                const int front=vx<0 ? -0x0100 : 0x0500;
                // $753C tests bit 0 of the DE00 property byte. Out-of-range
                // probes return $FF in the native map and reverse as well.
                if(terrain_probe(e,front,0)&1u) put(e,13,-vx);
            }
            if(e.state()==0u) {
                if(expired(e,0x17)) {
                    // $8488 + $6BFA: save X velocity in +0B, stop X, then
                    // enter the two eight-tick firing phases.
                    put(e,11,signed_word(e,13));
                    put(e,13,0);
                    e.raw[0x17]=8u;e.raw[0x18]=2u;e.state()=1u;
                }
            } else if(e.state()==1u && expired(e,0x17)) {
                // $84DC -> $7306. Combat owns the secondary projectile pool;
                // +26 is a native one-tick handoff requesting this burst.
                e.raw[0x26]=1u;
                e.raw[0x17]=8u;
                if(e.raw[0x18]>1u) {
                    --e.raw[0x18];
                    // $849D restores the pre-pause horizontal velocity after
                    // the first burst, so the runner moves between bursts.
                    put(e,13,signed_word(e,11));
                } else {
                    e.raw[0x18]=0u;e.state()=0u;e.raw[0x17]=0x28u;
                }
            }
        } else if(e.type()==0x2fu) {
            // Bank05 $8694-$8707. State 1 waits until the player enters the
            // 8x8 coarse-cell neighbourhood. States 2..4 alternate a four-
            // tick 8-direction movement burst and a four-tick pause. $8708
            // can steer around solid scenery; native SDL keeps the exact ROM
            // direction/speed table and falls back to direct pursuit when no
            // terrain probe is available here.
            if(e.state()==1u) {
                const int dx=std::abs(int(game.player.raw[0x0a])-int(e.raw[0x0a]));
                const int dy=std::abs(int(game.player.raw[0x08])-int(e.raw[0x08]));
                if(dx<8 && dy<8) e.state()=2u;
            } else if(e.state()==2u) {
                const unsigned dir=direction8(game,e)&7u;
                static constexpr std::array<int,8> vy{0,-0x60,-0x60,-0x60,0,0x60,0x60,0x60};
                static constexpr std::array<int,8> vx{-0x60,-0x60,0,0x60,0x60,0x60,0,-0x60};
                e.raw[0x20]=std::uint8_t(dir);put(e,11,vy[dir]);put(e,13,vx[dir]);
                e.raw[0x17]=4u;e.state()=3u;
            } else if(e.state()==3u && expired(e,0x17)) {
                put(e,11,0);put(e,13,0);e.raw[0x17]=4u;e.state()=4u;
            } else if(e.state()==4u && expired(e,0x17)) {
                e.state()=2u;
            }
        } else if(e.type()==0x31u) {
            // Fixed $5CDF/$5D3D. Variant byte +03 also selects sprite frame
            // +05. State 0 rises at -$00A0 until the probe one cell right and
            // one cell above touches solid terrain; state 1 descends at
            // +$0100 until the probe one cell right/five below touches it.
            auto solid=[&](int xo,int yo)->bool {
                if(terrain_probe) return terrain_probe(e,xo,yo)!=0u;
                const int y=int(std::int16_t(e.y_fixed()));
                return e.state()==0u ? y<=0x0500 : y>=0x1300;
            };
            if(e.state()==0u && solid(0x0100,-0x0100)) {
                put(e,11,0x0100);e.state()=1u;
            } else if(e.state()==1u && solid(0x0100,0x0500)) {
                put(e,11,-0x00a0);e.state()=0u;
            }
            const int start=e.raw[3]?0:2, direction=e.raw[3]?-1:1;
            unsigned length=0;
            for(;length<24u;++length) {
                const int offset=start+direction*int(length);
                const int row=int(std::int8_t(e.raw[8]))+offset;
                if(row<0 || row>=24 || (terrain_probe && terrain_probe(e,0,offset*256)==3u)) break;
            }
            e.raw[0x3e]=std::uint8_t(length);
        } else if(e.type()==0x22u) {
            if(e.state()==1u) {
                const unsigned i=e.raw[0x20];
                if(i<k22X.size() && e.raw[0x0a]<=k22X[i]) {
                    ++e.raw[0x20];
                    if(game.difficulty>=k22Min[i]) {
                        e.raw[0x18]=6;e.raw[0x06]=1;e.state()=2;
                    }
                }
            } else if(e.state()==2u) {
                e.raw[0x06]=1;
                if(expired(e,0x18)) {
                    // $BD47 calls $9D1E twice: two type-$70 rounds emerge one
                    // cell above the hatch, separated by three X cells.
                    for(unsigned n=0;n<2;++n) if(auto* c=create(rom,game,0x70)) {
                        c->set_x_fixed(std::uint16_t(e.x_fixed()+(n?0x300:0)));
                        c->set_y_fixed(std::uint16_t(e.y_fixed()-0x100));
                        c->raw[0x17]=6;c->raw[0x12]=0x10;c->raw[0x11]=0x10;
                        c->raw[0x0f]=n?0x20:0x60;c->state()=0;
                    }
                    if(sounds) sounds->push_back(PlaySound::HatchShot); // bank06 $BD5D: $17
                    e.raw[0x06]=0;e.state()=1;
                }
            }
        } else if(e.type()==0x26u) {
            if(e.state()==1u) {
                const unsigned i=e.raw[0x26];
                if(i<k26X.size() && e.raw[0x0a]<=k26X[i]) {
                    ++e.raw[0x26];
                    if(game.difficulty>=k26Min[i]) {
                        int d=int(std::uint8_t(game.player.raw[0x08]))-int(std::uint8_t(e.raw[0x08]));
                        e.raw[0x25]=std::uint8_t(std::min(15,std::abs(d)));
                        e.raw[0x18]=6;e.raw[0x06]=1;e.state()=2;
                    }
                }
            } else if(e.state()==2u) {
                e.raw[0x06]=1;
                if(expired(e,0x18)) {
                    // $BEC4 stores (+2,+2) cells in hardware coordinates. SDL
                    // tiles and SAT sprites have different native origins: a
                    // 16px disc has its center at anchor+15, while the 32px
                    // hatch center is anchor+16. Compensate X at birth so both
                    // its visible pose and collision geometry leave the hatch
                    // center; retain the ROM rise, delay and homing velocity.
                    if(auto* c=create(rom,game,0x11)) {
                        c->set_x_fixed(std::uint16_t(e.x_fixed()+0x20));
                        c->set_y_fixed(std::uint16_t(e.y_fixed()+0x200));
                        c->raw[0x17]=k26Delay[e.raw[0x25]&15u];c->state()=0;
                    }
                    e.raw[0x18]=4;
                    if(++e.raw[0x22]>=std::max<std::uint8_t>(1,e.raw[0x21])) {
                        e.raw[0x18]=8;e.state()=3;
                    }
                }
            } else if(e.state()==3u && expired(e,0x18)) {
                e.raw[0x22]=0;e.raw[0x06]=0;e.state()=1;
            }
        } else if(e.type()==0x11u) {
            // Fixed $52F3-$534D. The ROM cycles all six sprite frames. On the
            // first tick the launcher child is moved three whole Y cells up,
            // receives -$00C0 Y velocity, and becomes camera-relative (flag 2).
            e.raw[5]=std::uint8_t((e.raw[5]+1u)%6u);
            if(e.state()==0u) {
                e.raw[0x08]=std::uint8_t(e.raw[0x08]-3u);
                put(e,11,-0x00c0);put(e,13,0);
                e.flags15()|=0x04u;e.state()=1;
            } else if(e.state()==1u && expired(e,0x17)) {
                // Fixed $531E: CA19=$05 selects speed $20. $6B6C aims at
                // the player and then the child detaches from camera scrolling.
                aimed_velocity(rom,e,game.player,game.difficulty<4u?0x12:0x20);
                e.flags15()&=std::uint8_t(~0x04u);e.state()=2;
            } else if(e.state()==2u && e.raw[0x26]) {
                // $5337 can re-arm the launch phase when a non-zero target Y
                // was supplied. The vehicle-launched records normally keep +26=0.
                const int d=int(e.raw[0x26])-int(e.raw[0x08]);
                if(d>=0 && d<2) {e.state()=1;++e.raw[0x17];}
            }
        } else if(e.type()==0x70u || e.type()==0x45u) {
            // Bank05 $9D60-$9DA0 (type $45 dispatches through $903C->$9D60).
            // +0F is a full-circle 0..255 heading,
            // +12 is speed and +11 is the later homing turn step.
            if(e.state()==0u) {
                global_angle_velocity(rom,e,e.raw[0x0f],e.raw[0x12]);
                e.state()=1;
            } else if(e.state()==1u && expired(e,0x17)) {
                e.raw[0x18]=0x60;e.state()=2;
            } else if(e.state()==2u) {
                // $9D86 updates only once per four logic ticks. It turns by
                // exactly +11 toward the shortest circular path; velocity is
                // then recomputed from the new heading. At timer expiry the
                // projectile simply keeps its final velocity.
                if(e.raw[0x18]==1u) continue;
                if(e.raw[0x18]>1u) --e.raw[0x18];
                if((tick&3u)==0u) {
                    const unsigned target=target_global_angle(rom,e,game.player);
                    const unsigned cur=e.raw[0x0f],delta=(target-cur)&0xffu;
                    const unsigned step=e.raw[0x11];
                    e.raw[0x0f]=std::uint8_t(delta<0x7fu?cur+step:cur-step);
                    global_angle_velocity(rom,e,e.raw[0x0f],e.raw[0x12]);
                }
            }
        }
        if(e.active() && e.type()==0x13u) {
            // Dispatch continuation $6DF5->$6EED.  This is an object-space
            // screen bound, independent of camera motion: Y must be
            // $FC..$FF or $00..$17 and X $FE..$FF or $00..$21.  The native
            // camera-scroll cull alone misses this during Stage 3's low/zero
            // horizontal-scroll sections, leaving $13 children alive at
            // X=$FDxx/$F6xx and consequently keeping their $51 owners alive.
            const auto inside=[](std::uint8_t v,std::uint8_t positive_limit,
                                 std::uint8_t negative_limit) {
                return (v&0x80u)?v>=negative_limit:v<positive_limit;
            };
            if(!inside(e.raw[0x08],0x18u,0xfcu) ||
               !inside(e.raw[0x0a],0x22u,0xfeu)) e.clear();
        }
    }

    for(auto& e:game.enemies) if(e.active() && flight(e.type())) {
        if(e.type()==0x12) {
            if(e.state()==1) {
                if(e.raw[10]<3) {put(e,11,0);put(e,13,0);e.state()=2;}
                else if(e.raw[8]>=19) {put(e,11,-signed_word(e,11));e.raw[0x20]^=1;}
            } else if(e.state()==2 && expired(e,0x17)) {
                put(e,11,e.raw[0x20]?32:-32);put(e,13,256);e.state()=3;
            }
        } else if(e.type()==0x18) {
            const int acceleration=signed_word(e,15),velocity=signed_word(e,11)+acceleration;
            put(e,11,velocity);
            const int limit=int(e.raw[0x22])+(int(e.raw[0x23])<<8);
            if((acceleration>0 && velocity>=limit) || (acceleration<0 && velocity<=-limit)) put(e,15,-acceleration);
        } else if(e.type()==0x15) {
            if(e.state()==1 && expired(e,0x18)) {
                e.raw[0x18]=6;e.state()=2;put(e,13,0);
            } else if(e.state()==2 && expired(e,0x18)) {
                e.raw[0x18]=40;e.state()=1;put(e,13,-192);
            }
        } else if(e.type()==0x10) {
            if(e.state()==1 && std::abs(int(game.player.raw[10])-int(e.raw[10]))<8) e.state()=2;
            if(e.state()==2) put(e,11,signed_word(e,11)+signed_word(e,15));
        }
    }
}
}
