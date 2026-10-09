#include "entity_runtime.hpp"
#include <cstdlib>

namespace sm {

std::uint16_t raw_u16(std::span<const std::uint8_t> bytes,unsigned p) noexcept {
    return std::uint16_t(bytes[p])|(std::uint16_t(bytes[p+1u])<<8u);
}

std::int16_t entity_word(const Entity64& entity,unsigned p) noexcept {
    return std::int16_t(raw_u16(entity.raw,p));
}

void entity_set_word(Entity64& entity,unsigned p,int value) noexcept {
    const auto word=std::uint16_t(value);
    entity.raw[p]=std::uint8_t(word);
    entity.raw[p+1u]=std::uint8_t(word>>8u);
}

bool rom_timer_expired(Entity64& entity,unsigned field) noexcept {
    if(entity.raw[field]==1u) return true;
    --entity.raw[field];
    return false;
}

void rom_integrate_velocity(Entity64& entity) noexcept {
    entity.set_y_fixed(std::uint16_t(entity.y_fixed()+entity_word(entity,11u)));
    entity.set_x_fixed(std::uint16_t(entity.x_fixed()+entity_word(entity,13u)));
}

void rom_add_acceleration(Entity64& entity) noexcept {
    entity_set_word(entity,11u,entity_word(entity,11u)+entity_word(entity,15u));
    entity_set_word(entity,13u,entity_word(entity,13u)+entity_word(entity,17u));
}

std::uint8_t rom_direction8(const Entity64& target,const Entity64& source) noexcept {
    auto magnitude=[](std::uint8_t t,std::uint8_t s) {
        const int d=int(t)-int(s);
        return std::pair<unsigned,bool>{unsigned(d<0?-d:d)&0x7fu,d<0};
    };
    const auto [dx,left]=magnitude(target.raw[0x0a],source.raw[0x0a]);
    const auto [dy,above]=magnitude(target.raw[0x08],source.raw[0x08]);
    std::uint8_t c=left?(above?0u:6u):(above?2u:4u);
    const bool same=left==above;
    if((dy>=dx&&same)||(dy<dx&&!same)) ++c;
    return std::uint8_t(c&7u);
}

unsigned rom_target_global_angle(const Rom& rom,const Entity64& source,
                                 const Entity64& target) {
    const int dx=int(std::uint8_t(target.x_fixed()/32u))-
                 int(std::uint8_t(source.x_fixed()/32u));
    const int dy=int(std::uint8_t(target.y_fixed()/32u))-
                 int(std::uint8_t(source.y_fixed()/32u));
    const auto b4=rom.bank(4);
    const unsigned a=b4[0x13edu+(unsigned(std::abs(dy))&0xf0u)+
                         (unsigned(std::abs(dx))>>4u)]&63u;
    if(dy<0) return dx<0 ? 0x7fu-a : a;
    return dx<0 ? 0x80u+a : 0xffu-a;
}

void rom_set_global_angle_velocity(const Rom& rom,Entity64& entity,
                                   unsigned global_angle,unsigned speed) {
    const unsigned q=(global_angle>>6u)&3u,z=global_angle&63u;
    const unsigned a=(q==1u||q==3u)?63u-z:z;
    const auto b4=rom.bank(4);
    int vy=int(unsigned(b4[0x13adu+a])*speed/32u);
    int vx=int(unsigned(b4[0x13adu+63u-a])*speed/32u);
    if(q<2u) vy=-vy;
    if(q==1u||q==2u) vx=-vx;
    entity_set_word(entity,11u,vy);
    entity_set_word(entity,13u,vx);
}

void rom_set_heading_velocity(const Rom& rom,Entity64& entity,
                              unsigned heading,unsigned speed) {
    const auto bank=rom.bank(4);
    const unsigned p=0x138du+heading*2u;
    const auto signs=bank[p];
    const unsigned a=bank[p+1u];
    entity_set_word(entity,11u,(signs&1u?-1:1)*
        int(unsigned(bank[0x13adu+a])*speed/32u));
    entity_set_word(entity,13u,(signs&2u?-1:1)*
        int(unsigned(bank[0x13adu+63u-a])*speed/32u));
}

void rom_set_aimed_velocity(const Rom& rom,Entity64& entity,
                            const Entity64& target,unsigned speed) {
    rom_set_global_angle_velocity(
        rom,entity,rom_target_global_angle(rom,entity,target),speed);
}

} // namespace sm
