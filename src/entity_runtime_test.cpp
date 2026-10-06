#include "entity_runtime.hpp"
#ifdef NDEBUG
#undef NDEBUG
#endif
#include <array>
#include <cassert>
#include <cstdlib>
#include <iostream>

int main(int argc,char** argv) {
    if(argc!=2) return 2;
    sm::Rom rom(argv[1]);

    {
        const std::array<std::uint8_t,4> bytes{0x34u,0x12u,0xcdu,0xabu};
        assert(sm::raw_u16(bytes,0u)==0x1234u);
        assert(sm::raw_u16(bytes,2u)==0xabcdu);
    }

    sm::Entity64 e;e.clear();
    sm::entity_set_word(e,11u,-0x1234);
    assert(sm::entity_word(e,11u)==-0x1234);
    assert(sm::raw_u16(e.raw,11u)==std::uint16_t(-0x1234));

    e.raw[0x17]=2u;
    assert(!sm::rom_timer_expired(e,0x17) && e.raw[0x17]==1u);
    assert(sm::rom_timer_expired(e,0x17) && e.raw[0x17]==1u);
    e.raw[0x17]=0u;
    assert(!sm::rom_timer_expired(e,0x17) && e.raw[0x17]==0xffu);

    e.set_x_fixed(0x1000u);e.set_y_fixed(0x0800u);
    sm::entity_set_word(e,11u,-0x0040);sm::entity_set_word(e,13u,0x0020);
    sm::rom_integrate_velocity(e);
    assert(e.x_fixed()==0x1020u && e.y_fixed()==0x07c0u);
    sm::entity_set_word(e,15u,0x0010);sm::entity_set_word(e,17u,-0x0008);
    sm::rom_add_acceleration(e);
    assert(sm::entity_word(e,11u)==-0x0030 && sm::entity_word(e,13u)==0x0018);

    sm::Entity64 source,target;source.clear();target.clear();
    source.set_x_fixed(0x0800u);source.set_y_fixed(0x0800u);
    target.set_x_fixed(0x1000u);target.set_y_fixed(0x0800u);
    assert(sm::rom_direction8(target,source)==4u);
    target.set_x_fixed(0x0800u);target.set_y_fixed(0x0400u);
    assert(sm::rom_direction8(target,source)==2u);

    // The shared aimed-velocity service must remain byte-identical to the
    // fixed-bank $71xx quarter-wave table calculation used by combat.
    target.set_x_fixed(0x1400u);target.set_y_fixed(0x0300u);
    constexpr unsigned speed=0x18u;
    const int dx=int(std::uint8_t(target.x_fixed()/32u))-
                 int(std::uint8_t(source.x_fixed()/32u));
    const int dy=int(std::uint8_t(target.y_fixed()/32u))-
                 int(std::uint8_t(source.y_fixed()/32u));
    const auto b4=rom.bank(4);
    const unsigned angle=b4[0x13edu+(unsigned(std::abs(dy))&0xf0u)+
                            (unsigned(std::abs(dx))>>4u)];
    const int expected_y=(dy<0?-1:1)*int(unsigned(b4[0x13adu+angle])*speed/32u);
    const int expected_x=(dx<0?-1:1)*int(unsigned(b4[0x13adu+63u-angle])*speed/32u);
    sm::rom_set_aimed_velocity(rom,source,target,speed);
    assert(sm::entity_word(source,11u)==expected_y);
    assert(sm::entity_word(source,13u)==expected_x);

    for(unsigned heading:{0u,1u,4u,7u,12u}) {
        sm::Entity64 shot;shot.clear();
        const unsigned q=0x138du+heading*2u;
        const auto signs=b4[q];const unsigned a=b4[q+1u];
        const int ey=(signs&1u?-1:1)*int(unsigned(b4[0x13adu+a])*speed/32u);
        const int ex=(signs&2u?-1:1)*int(unsigned(b4[0x13adu+63u-a])*speed/32u);
        sm::rom_set_heading_velocity(rom,shot,heading,speed);
        assert(sm::entity_word(shot,11u)==ey);
        assert(sm::entity_word(shot,13u)==ex);
    }

    std::cout<<"Entity runtime primitives PASS\n";
}
