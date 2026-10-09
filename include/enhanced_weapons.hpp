#pragma once
#include <cstdint>
#include <span>
#include <vector>
namespace sm {
enum class WeaponLook { Bolt, OptionBolt, Wave, Missile, LargeMissile, Burst };
void composite_enhanced_weapons(std::vector<std::uint32_t>& image,
                                std::span<const std::uint32_t> rom_layer,unsigned frame,
                                WeaponLook look,int direction=0);
}
