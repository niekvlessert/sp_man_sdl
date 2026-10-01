#pragma once
#include "rom.hpp"
#include <cstdint>
#include <optional>
#include <vector>


namespace sm {
inline constexpr std::uint16_t kStage0VisualStart = 0xA000u;
inline constexpr std::uint16_t kStage0StreamAnchor = 0xA0C2u;
struct LevelCommand {
    unsigned world_x = 0;
    std::uint16_t address = 0;
    std::uint8_t command = 0;
    std::vector<std::uint8_t> payload;
};

struct LevelMap {
    static constexpr unsigned HeightTiles = 24;
    unsigned width_tiles = 0;
    std::vector<std::uint8_t> tiles;
    std::vector<std::uint16_t> macro_addresses;
    std::vector<LevelCommand> commands;
    std::uint16_t stop_address = 0;
    std::uint8_t stop_command = 0;

    std::uint8_t get(unsigned x, unsigned y) const noexcept;
    std::optional<unsigned> macro_index(std::uint16_t cpu_address) const noexcept;
};

// Decoder for the normal horizontal Space Manbow stage stream.  In mode 0,
// bank 27 supplies six metatile IDs per 32-pixel macro column.  Bank 25 holds
// 4x4 final-tile definitions, yielding 4 x 24 8x8 tiles per macro.
class LevelStreamDecoder {
public:
    explicit LevelStreamDecoder(const Rom& rom) : rom_(rom) {}
    LevelMap decode_mode0(std::uint16_t start_cpu = kStage0StreamAnchor) const;
private:
    const Rom& rom_;
};
}
