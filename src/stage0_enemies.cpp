#include "stage0_enemies.hpp"
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
bool flight(std::uint8_t t) {return t==0x10 || t==0x12 || t==0x15 || t==0x18;}
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
    // Several late-stage actors are drawn as composed tile matrices rather
    // than ordinary sprites. Their sprite definitions therefore do not cover
    // the pixels the player actually sees. In particular type $56 is the
    // destructible 64x80 upper section of the large vertical tower. Collide
    // against the exact nonzero tile cells used by the native compositor.
    if(b.type()==0x26u || b.type()==0x3cu || b.type()==0x56u || b.type()==0x64u || b.type()==0x6au || b.type()==0x7au) {
        for(const auto& v:decode_stage0_tile_visuals(rom,b))
            for(unsigned ty=0;ty<v.rows;++ty) for(unsigned tx=0;tx<v.cols;++tx) {
                if(!v.tiles[ty*unsigned(v.cols)+tx]) continue;
                const Box cell{v.x+int(tx*8u),v.y+int(ty*8u),8,8};
                for(const auto& x:abox) if(overlaps(x,cell)) return true;
            }
        // Type $64 also has the animated round core on the sprite plane. The
        // original damage target is the complete boss object, so keep testing
        // its ROM sprite boxes after the composed tile cells missed.
        if(b.type()!=0x64u && b.type()!=0x7au) return false;
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
    }
    e.state()=1;
}
bool Stage0Enemies::spawn(const Rom& rom,const SpawnRecord& r,GameState& game,std::uint8_t direction) {
    if(r.type!=0x51) return instantiate_stage0_spawn(rom,r,game,direction);
    // Extended $51 record: count byte, four controller fields, timing fields,
    // then a length-prefixed child descriptor at base+count ($67CE).
    if(r.payload.size()<9 || r.payload[0]+1u>=r.payload.size()) return false;
    const auto& p=r.payload;const unsigned child=p[0]+1;
    const auto type=p[child]&127;
    if(!flight(type)) return false;
    auto w=std::find_if(waves_.begin(),waves_.end(),[](auto& w){return !w.active && !w.alive;});
    if(w==waves_.end()) return false;
    *w={};w->active=true;w->y=p[1];w->x=p[2];w->count=p[3];w->remaining=p[3];
    w->repeat=p[4]==1;w->interval=p[5]&127;w->timer=p[6];w->first_timer=p[6];
    w->end_trigger=p[7];w->type=type;w->parameter=child+1<p.size()?p[child+1]:0;
    w->bonus=(p[4]==2 && (p[5]&128)) || (p[4]==1 && p[0]>=8 && p[8]);
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
    // Type $2C uses +34 as an object-parent link, not a $51 wave id.
    if(enemy.type()==0x2cu) return enemy.raw[0x3d]!=0;
    const unsigned id=enemy.raw[0x34];
    if(!id || id>waves_.size()) return enemy.raw[0x3d]!=0;
    auto& w=waves_[id-1];
    if(w.alive) --w.alive;
    ++w.killed;
    if(w.bonus && w.killed==w.count) {w.killed=0;return true;}
    return false;
}
void Stage0Enemies::move_60hz(GameState& game,unsigned frame) {
    for(auto& e:game.enemies) {

        // +3E is ROM handler/script metadata, never a generic lifetime.
        // In particular type $1F explicitly writes $09 at bank06:$BC56 and
        // the value survives destruction so the replacement $6B wreck can
        // select tile frame 9. Do not count it down here.
        if(e.active() && e.raw[0x3f]==0xd1u && e.raw[0x3e]) {
            if(--e.raw[0x3e]==0) e.clear();
            continue;
        }
        if(e.active() && (flight(e.type()) || e.type()==0x16u || e.type()==0x19u || e.type()==0x1eu || e.type()==0x11u || e.type()==0x27u || e.type()==0x2au || e.type()==0x2cu || e.type()==0x2du || e.type()==0x2fu || e.type()==0x31u || e.type()==0x68u || e.type()==0x70u || e.type()==0x40u)) {
        const int divisor=e.type()==0x40u?3:4,phase=int(frame%unsigned(divisor));
        auto delta=[&](int v){return v*(phase+1)/divisor-v*phase/divisor;};
        e.set_x_fixed(std::uint16_t(e.x_fixed()+delta(signed_word(e,13))));
        e.set_y_fixed(std::uint16_t(e.y_fixed()+delta(signed_word(e,11))));
        const int x=std::int16_t(e.x_fixed())/32,y=std::int16_t(e.y_fixed())/32;
        if(x < -80 || x>=352 || y < -80 || y>=256) {
            const unsigned id=e.raw[0x34];
            if(id && id<=waves_.size() && waves_[id-1].alive) {
                --waves_[id-1].alive;waves_[id-1].bonus=false;
            }
            e.clear();
        }
        }
    }
}
void Stage0Enemies::step_gate_20hz(const Rom& rom,GameState& game,unsigned tick,
                                   std::vector<PlaySound>* sounds,std::uint8_t ca3b,std::uint8_t fine_x) {
    for(auto& e:game.enemies) if(e.active()) {
        if(e.type()==0x64u || e.type()==0x6au) {
            const bool finishing=e.type()==0x6au && e.state()==1u && e.raw[0x17]<=1u;
            const bool death_wrap=e.type()==0x6au && e.state()==0u && e.raw[6]==7u;
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
                              const TerrainProbe& terrain_probe) {
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
        for(const auto& e:game.enemies) alive+=e.active() && e.raw[0x34]==id+1;
        waves_[id].alive=alive;
    }
    for(auto& w:waves_) if(w.active) {
        if(w.repeat && std::uint8_t(trigger)>=w.end_trigger) {w.active=false;continue;}
        if(w.timer>1) {--w.timer;continue;}
        if(auto* e=create(rom,game,w.type)) {
            e->set_x_fixed(std::uint16_t(w.x)<<8);e->set_y_fixed(std::uint16_t(w.y)<<8);
            initialize_stage0_flyer(rom,*e,w.parameter,w.ordinal++,tick,game.player);
            e->raw[0x34]=std::uint8_t(&w-waves_.data()+1);++w.alive;
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
        if(e.type()==0x56u) {
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
            auto solid=[&](int xo,int yo) {
                return terrain_probe ? terrain_probe(e,xo,yo) : false;
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
        } else if(e.type()==0x7au) {
            // Bank06 $A000-$A17A: stage-2 boss. Its visible body is the tile
            // actor selected by +06; seven linked type-$3B segments are
            // created at state zero. Damage bit +14.7 is only enabled while
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
                const unsigned hp=e.raw[0x16];
                if(hp<0x18u) e.raw[0x18]=0x18u;
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
                next_animation();update_attack_heading();
                e.raw[0x16]=0x20u; // $A031 with CA04=0 on the normal route
                e.state()=1u;
            } else if(e.state()==1u) {
                if(expired(e,0x17)) next_animation();
                if(expired(e,0x18)) update_attack_heading();
                unsigned phase=e.raw[0x21];if(phase>=8u) phase=0u;
                e.raw[0x21]=std::uint8_t(phase+1u);
                const auto command=attack_phase[phase];
                // CA04 is zero on the normal Stage-2 route. High-bit entries
                // are therefore skipped by $A071-$A075. Low commands 2/3
                // both issue one $7306 attack; combat consumes this marker.
                if((command&0x80u)==0u && (command&3u)!=0u)
                    e.raw[0x26]=command&3u;
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
                const unsigned o=std::clamp<unsigned>(e.raw[0x38],1u,7u)-1u;
                e.raw[0x08]=std::uint8_t(e.raw[0x08]+oy[o]);
                e.raw[0x0a]=std::uint8_t(e.raw[0x0a]+ox[o]);
                e.raw[0x20]=variant[o];e.raw[0x05]=variant[o]?4u:0u;
                reload();e.state()=1u;
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
        } else if(e.type()==0x2bu) {
            // Bank05 $8367-$83A6. The extended launcher emits type-$16
            // attackers. Two normal 16-tick gaps are followed by a 64-tick
            // pause; ceiling/floor orientation is copied to child +20.
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
        } else if(e.type()==0x2cu) {
            // Bank05 $83BF-$8401. $8402 runs before the state dispatch:
            // probe (+2,+2) in the composed name table and reverse Y whenever
            // that cell is not $CC.  For the linked $2E launcher we can test
            // the exact parent compositor directly; this keeps the two child
            // modules trapped between the laser caps just like the original.
            bool on_cc=false;
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
            // $8173 observes pending damage and forces the next retarget very
            // quickly; the damage service clears +04 after applying the hit.
            if(e.raw[0x04]) e.raw[0x17]=2u;
        } else if(e.type()==0x2du) {
            // Bank05 $844D-$84F8. Preserve the ROM's 40-tick cruise and two
            // 8-tick manoeuvre phases. The four-byte direction scripts are
            // $84F1={2,4,6,FF} and $84F5={A,C,E,FF}; mapped here to the same
            // three coarse headings at native 8.8 speed $0200.
            if(e.state()==0u) {
                if(expired(e,0x17)) {
                    put(e,0x11,signed_word(e,13));
                    put(e,13,0);
                    e.raw[0x17]=8u;e.raw[0x18]=2u;e.state()=1u;
                }
            } else {
                if(expired(e,0x17)) {
                    static constexpr std::array<int,3> vy{-0x0200,0,0x0200};
                    const unsigned phase=2u-e.raw[0x18];
                    put(e,11,vy[std::min(phase,2u)]);
                    put(e,13,e.raw[0x20] ? -0x0200 : 0x0200);
                    e.raw[0x17]=8u;
                    if(e.raw[0x18]>1u) --e.raw[0x18];
                    else {
                        put(e,13,signed_word(e,0x11));
                        e.state()=0u;e.raw[0x17]=0x28u;e.raw[0x18]=2u;
                    }
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
            auto solid=[&](int xo,int yo) {
                if(terrain_probe) return terrain_probe(e,xo,yo);
                const int y=int(std::int16_t(e.y_fixed()));
                return e.state()==0u ? y<=0x0500 : y>=0x1300;
            };
            if(e.state()==0u && solid(0x0100,-0x0100)) {
                put(e,11,0x0100);e.state()=1u;
            } else if(e.state()==1u && solid(0x0100,0x0500)) {
                put(e,11,-0x00a0);e.state()=0u;
            }
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
        } else if(e.type()==0x70u) {
            // Bank05 $9D60-$9DA0. +0F is a full-circle 0..255 heading,
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
