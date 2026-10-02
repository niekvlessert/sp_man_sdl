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
void step_stage0_gate_object(GameState& game,Entity64& e) {
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
            else e.raw[0x05]=directional[direction8(game,e)];
        };
        // $6A13 consumes the movement installed by the preceding A3F9.
        // For this boss that movement is horizontal and stored at +11/+12.
        if(e.state()>=2u && e.state()<=6u)
            e.set_x_fixed(std::uint16_t(e.x_fixed()+signed_word(e,0x11)));
        if(e.state()==0u) {
            e.set_x_fixed(0x2800u);e.set_y_fixed(0x0c00u);
            e.raw[0x06]=6u;e.raw[0x26]=0x12u;e.raw[0x3f]=1u;
            e.state()=1u;
        } else if(e.state()==1u) {
            e.state()=2u;load_phase(2u);
        } else if(e.state()==2u) {
            // A338 decrements +26 continuously; tile 6 -> 5 only on the
            // single zero crossing. Afterwards the byte simply underflows.
            if(--e.raw[0x26]==0u && e.raw[0x06]) --e.raw[0x06];
            sprite();
            // Native playability cleanup: as soon as the main tower body is
            // substantially inside the viewport, accept player damage. The
            // original waits until the full entrance timer expires at $1200;
            // that made several seconds of visibly intersecting shots appear
            // to pass through the boss in the native test flow.
            if(e.x_fixed()<=0x1800u) e.raw[0x14]|=0x80u;
            if(expired(e,0x17)) {e.raw[0x14]|=0x80u;e.state()=3u;load_phase(3u);}
        } else if(e.state()==3u) {
            sprite();
            if(expired(e,0x17)) {e.state()=4u;load_phase(4u);}
        } else if(e.state()==4u) {
            // A3DF: once +20 reaches one it stays there, so the selector
            // decreases on every following logic tick down to zero.
            if(expired(e,0x20) && e.raw[0x06]) --e.raw[0x06];
            sprite();
            if(expired(e,0x17)) {e.state()=5u;load_phase(5u);}
        } else if(e.state()==5u) {
            sprite();
            if(expired(e,0x17)) {e.state()=6u;load_phase(6u);}
        } else {
            // A3C4 mirrors A3DF and stops at selector 5; on phase expiry
            // state 6 returns directly to state 3.
            if(expired(e,0x20) && e.raw[0x06]<5u) ++e.raw[0x06];
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
        result.push_back({int(std::int16_t(e.x_fixed()))/32+b8[c+2]+b7[s+2],
            int(std::int16_t(e.y_fixed()))/32+b8[c+1]+b7[s],b7[s+3],b7[s+1]});
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
    if(b.type()==0x26u || b.type()==0x56u || b.type()==0x64u || b.type()==0x6au) {
        if(b.type()==0x56u && std::int16_t(b.x_fixed())>0x1000)
            return false; // first natural ROM hits occur at X=$0F80 under continuous fire
        if(b.type()==0x64u) {
            // Type $64 mixes several tile matrices with a sprite-plane core.
            // The original coarse collision service effectively treats the
            // complete visible boss body as one target. Keep a contiguous
            // envelope around that silhouette so W/max-power shots cannot fly
            // through visual seams between individual matrix/core hit boxes.
            const int bx=int(std::int16_t(b.x_fixed()))/32;
            const int by=int(std::int16_t(b.y_fixed()))/32;
            const Box boss{bx-72,by-72,200,160};
            for(const auto& x:abox) if(overlaps(x,boss)) return true;
        }
        for(const auto& v:decode_stage0_tile_visuals(rom,b))
            for(unsigned ty=0;ty<v.rows;++ty) for(unsigned tx=0;tx<v.cols;++tx) {
                if(!v.tiles[ty*unsigned(v.cols)+tx]) continue;
                const Box cell{v.x+int(tx*8u),v.y+int(ty*8u),8,8};
                for(const auto& x:abox) if(overlaps(x,cell)) return true;
            }
        // Type $64 also has the animated round core on the sprite plane. The
        // original damage target is the complete boss object, so keep testing
        // its ROM sprite boxes after the composed tile cells missed.
        if(b.type()!=0x64u) return false;
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
bool Stage0Enemies::destroyed(const Entity64& enemy) {
    const unsigned id=enemy.raw[0x34];
    if(!id || id>waves_.size()) return enemy.raw[0x3d]!=0;
    auto& w=waves_[id-1];
    if(w.alive) --w.alive;
    ++w.killed;
    if(w.bonus && w.killed==w.count) {w.killed=0;return true;}
    return false;
}
void Stage0Enemies::move_60hz(GameState& game) {
    for(auto& e:game.enemies) {

        // +3E is ROM handler/script metadata, never a generic lifetime.
        // In particular type $1F explicitly writes $09 at bank06:$BC56 and
        // the value survives destruction so the replacement $6B wreck can
        // select tile frame 9. Do not count it down here.
        if(e.active() && e.raw[0x3f]==0xd1u && e.raw[0x3e]) {
            if(--e.raw[0x3e]==0) e.clear();
            continue;
        }
        if(e.active() && (flight(e.type()) || e.type()==0x11u || e.type()==0x68u || e.type()==0x70u)) {
        e.set_x_fixed(std::uint16_t(e.x_fixed()+signed_word(e,13)/4));
        e.set_y_fixed(std::uint16_t(e.y_fixed()+signed_word(e,11)/4));
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
void Stage0Enemies::step_gate_20hz(GameState& game) {
    for(auto& e:game.enemies)
        if(e.active() && (e.type()==0x64u || e.type()==0x6au))
            step_stage0_gate_object(game,e);
}
void Stage0Enemies::step_15hz(const Rom& rom,GameState& game,unsigned tick,std::uint16_t trigger,
                              bool include_gate,std::vector<PlaySound>* sounds) {
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
    // Original stage-0 reference has CA19=$05. This is observable from the
    // vehicle gates themselves: minimum-5 events execute, minimum-8 events
    // advance their cursor but are skipped. Keep the paired ROM tables intact.
    static constexpr std::uint8_t kStage0Ca19=5;
    static constexpr std::array<std::uint8_t,4> k22X{0x1b,0x18,0x10,0x04};
    static constexpr std::array<std::uint8_t,4> k22Min{3,0,5,8}; // $BD6B
    static constexpr std::array<std::uint8_t,3> k26X{0x1a,0x12,0x06};
    static constexpr std::array<std::uint8_t,3> k26Min{0,5,8}; // $BEFD
    static constexpr std::array<std::uint8_t,16> k26Delay{
        2,3,4,4,5,5,6,6,7,7,8,9,10,11,12,13}; // bank06 $BF04
    for(auto& e:game.enemies) if(e.active()) {
        if(e.type()==0x56u) {
            // Bank06 $BF14-$BFB7: the large vertical tower is a boss-like
            // object with its own damage/death continuation. It must not be
            // replaced immediately through the generic death table.
            if(e.state()==1u) {
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
                        e.raw[0x3c]=1u;
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
                // $BF9A: random 1..8 destruction cadence. Use a deterministic
                // phase of the same domain for the native replay.
                if(e.raw[0x20]>1u) --e.raw[0x20];
                else {
                    const unsigned slot=unsigned(&e-game.enemies.data());
                    e.raw[0x20]=std::uint8_t(1u+((tick+slot*3u)&7u));
                    e.raw[0x3c]=1u;
                    if(sounds) sounds->push_back(PlaySound::PlatformRumble); // $35
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
                            const auto yo=std::int8_t(q&0xffu);
                            const auto xo=std::int8_t(q>>8u);
                            if(auto* x=create(rom,game,0x69u)) {
                                x->set_y_fixed(std::uint16_t(std::uint8_t(e.raw[0x08]+yo))<<8u);
                                x->set_x_fixed(std::uint16_t(std::uint8_t(e.raw[0x0a]+xo))<<8u);
                                x->state()=1u;x->raw[0x06]=0u;
                            }
                        }
                    }
                } else {
                    if(e.raw[0x17]>1u) --e.raw[0x17];
                    else e.clear();
                }
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
            if(include_gate) step_stage0_gate_object(game,e);
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
                put(e,13,-0x0120); // fixed $5135: CA19=$05 selects $FEE0
                e.state()=3;
            }
        } else if(e.type()==0x22u) {
            if(e.state()==1u) {
                const unsigned i=e.raw[0x20];
                if(i<k22X.size() && e.raw[0x0a]<=k22X[i]) {
                    ++e.raw[0x20];
                    if(kStage0Ca19>=k22Min[i]) {
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
                    e.raw[0x06]=0;e.state()=1;
                }
            }
        } else if(e.type()==0x26u) {
            if(e.state()==1u) {
                const unsigned i=e.raw[0x26];
                if(i<k26X.size() && e.raw[0x0a]<=k26X[i]) {
                    ++e.raw[0x26];
                    if(kStage0Ca19>=k26Min[i]) {
                        int d=int(std::uint8_t(game.player.raw[0x08]))-int(std::uint8_t(e.raw[0x08]));
                        e.raw[0x25]=std::uint8_t(std::min(15,std::abs(d)));
                        e.raw[0x18]=6;e.raw[0x06]=1;e.state()=2;
                    }
                }
            } else if(e.state()==2u) {
                e.raw[0x06]=1;
                if(expired(e,0x18)) {
                    // $BEC4: launch type $11 at (+2,+2) cells. +17 receives
                    // the distance-indexed delay from $BF04.
                    if(auto* c=create(rom,game,0x11)) {
                        c->set_x_fixed(std::uint16_t(e.x_fixed()+0x200));
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
                aimed_velocity(rom,e,game.player,0x20);
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
