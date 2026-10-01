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
    for(const auto& x:boxes(rom,a)) for(const auto& y:boxes(rom,b))
        if(x.w && x.h && y.w && y.h && x.x<y.x+y.w && y.x<x.x+x.w &&
           x.y<y.y+y.h && y.y<x.y+x.h) return true;
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
    for(auto& e:game.enemies) if(e.active() && flight(e.type())) {
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
void Stage0Enemies::step_15hz(const Rom& rom,GameState& game,unsigned tick,std::uint16_t trigger) {
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
