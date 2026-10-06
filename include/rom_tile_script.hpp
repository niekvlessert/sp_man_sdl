#pragma once
#include <cstdint>
#include <span>
#include <vector>

namespace sm {

// Generic decoder for the packed matrix-placement grammar used by Space
// Manbow's large tile actors across several stages/banks.
//
// A pointed script is:
//   length, y, x, count, matrix..., FE, y, x, count, matrix..., FF
// Offsets are signed tile coordinates. The returned matrix IDs remain
// unresolved so callers can feed them into the appropriate object/frame
// decoder. Keeping this parser stage-agnostic makes later level ports reuse
// the exact same ROM grammar instead of cloning it per enemy/boss.
struct RomTilePlacement {
    std::uint8_t matrix=0;
    int y=0;
    int x=0;
};

std::vector<RomTilePlacement> decode_packed_tile_placement_list(
    std::span<const std::uint8_t> bank,std::uint16_t cpu_base,
    std::uint16_t list_cpu) noexcept;

std::vector<RomTilePlacement> decode_packed_tile_placement_table(
    std::span<const std::uint8_t> bank,std::uint16_t cpu_base,
    std::uint16_t table_cpu,unsigned selector) noexcept;

} // namespace sm
