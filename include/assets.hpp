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
    std::array<std::uint16_t, 16> tower_palette_grb{};  // ROM palette script $A44D
    std::array<std::uint8_t, 0x80> object_pattern_base{}; // original $DF00-$DF7F
};

// Rebuild the stage-0 graphics exactly as the original bank-10 loader does:
// banked RLE -> $D800 staging -> SCREEN 4 tiles plus stage sprite patterns.
Stage0VideoAssets decode_stage0_video(const Rom& rom);
}
