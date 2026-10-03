#pragma once
#include "rom.hpp"
#include <array>
#include <cstdint>
#include <vector>

namespace sm {
struct Stage0VideoAssets {
    std::vector<std::uint8_t> vram; // reconstructed 128 KiB V9958 VRAM image
    std::array<std::uint16_t, 16> palette_grb{};       // early blue corridor
    std::array<std::uint16_t, 16> late_palette_grb{};   // ROM palette script $A43A
    std::array<std::uint16_t, 16> tower_palette_grb{};      // normal boss palette, bank07:$86E4
    std::array<std::uint16_t, 16> tower_red_palette_grb{};  // low-HP terminal boss palette, bank07:$8764
    std::array<std::uint16_t, 16> vehicle_tower_palette_grb{};     // type-$56 normal palette, bank07:$8754
    std::array<std::uint16_t, 16> vehicle_tower_red_palette_grb{}; // type-$56 low-HP palette, bank07:$87D4
    std::array<std::uint8_t, 0x80> object_pattern_base{}; // original $DF00-$DF7F
    std::array<std::uint8_t,0x80> object_pattern_page{}; // sprite R6 page selected by loader mask
};

// Rebuild the stage-0 graphics exactly as the original bank-10 loader does:
// banked RLE -> $D800 staging -> SCREEN 4 tiles plus stage sprite patterns.
Stage0VideoAssets decode_stage0_video(const Rom& rom);
Stage0VideoAssets decode_stage_video(const Rom& rom,unsigned stage);
}
