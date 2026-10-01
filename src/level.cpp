#include "level.hpp"
#include <array>
#include <stdexcept>

namespace sm {
std::uint8_t LevelMap::get(unsigned x, unsigned y) const noexcept {
    if (x >= width_tiles || y >= HeightTiles) return 0;
    return tiles[std::size_t(y) * width_tiles + x];
}

std::optional<unsigned> LevelMap::macro_index(std::uint16_t addr) const noexcept {
    for (unsigned i = 0; i < macro_addresses.size(); ++i)
        if (macro_addresses[i] == addr) return i;
    return std::nullopt;
}

namespace {
unsigned command_payload(std::uint8_t cmd) {
    switch (cmd) {
    case 0x10: case 0x11: case 0x13: case 0x1c: return 2;
    case 0x17: case 0x19: case 0x1f: return 1;
    case 0x12: return 0x24;
    default: return 0;
    }
}
}

LevelMap LevelStreamDecoder::decode_mode0(std::uint16_t start_cpu) const {
    if (start_cpu < 0xA000 || start_cpu >= 0xC000)
        throw std::runtime_error("level stream start is outside A000-BFFF");
    const auto defs = rom_.bank(25);
    const auto stream = rom_.bank(27);
    std::size_t p = start_cpu - 0xA000u;
    std::vector<std::array<std::uint8_t, LevelMap::HeightTiles>> columns;
    LevelMap out;

    while (p < stream.size()) {
        if (stream[p] == 0xfe) { ++p; continue; }
        if (stream[p] == 0xff) {
            if (++p >= stream.size()) break;
            const auto cmd_address = std::uint16_t(0xA000u + p - 1u);
            const auto cmd = stream[p++];
            const unsigned payload = cmd < 0x10 ? 0u : command_payload(cmd);
            if (p + payload > stream.size()) break;
            LevelCommand event;
            event.world_x = unsigned(columns.size()) * 8u;
            event.address = cmd_address;
            event.command = cmd;
            event.payload.assign(stream.begin() + std::ptrdiff_t(p),
                                 stream.begin() + std::ptrdiff_t(p + payload));
            out.commands.push_back(std::move(event));
            // $12 changes the stage renderer configuration but does NOT end
            // the level stream.  Live stage-0 traces continue with the same
            // six-byte macro encoding at $A288.  $16 at $A438 is the later
            // destructible/boss gate: the original holds C0CA there while the
            // large structure is fought, so it is the natural end of this
            // static preview section.
            p += payload;
            if (cmd == 0x16) {
                out.stop_command = cmd;
                out.stop_address = std::uint16_t(0xA000u + p);
                break;
            }
            continue;
        }
        if (p + 6 > stream.size()) break;

        out.macro_addresses.push_back(std::uint16_t(0xA000u + p));
        std::array<std::uint8_t, 6> macro{};
        for (unsigned i = 0; i < 6; ++i) macro[i] = stream[p + i];
        p += 6;
        for (unsigned phase = 0; phase < 4; ++phase) {
            std::array<std::uint8_t, LevelMap::HeightTiles> col{};
            for (unsigned block = 0; block < 6; ++block) {
                const std::size_t base = std::size_t(macro[block]) * 16u + phase;
                for (unsigned row = 0; row < 4; ++row)
                    col[block * 4u + row] = defs[base + row * 4u];
            }
            columns.push_back(col);
        }
    }

    out.width_tiles = unsigned(columns.size());
    out.tiles.resize(std::size_t(out.width_tiles) * LevelMap::HeightTiles);
    for (unsigned x = 0; x < out.width_tiles; ++x)
        for (unsigned y = 0; y < LevelMap::HeightTiles; ++y)
            out.tiles[std::size_t(y) * out.width_tiles + x] = columns[x][y];
    if (!out.stop_address) out.stop_address = std::uint16_t(0xA000u + p);
    return out;
}
}
