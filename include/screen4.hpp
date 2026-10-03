#pragma once
#include "level.hpp"
#include "rom.hpp"
#include "stage0_background.hpp"
#include <array>
#include <cstdint>
#include <filesystem>
#include <vector>

namespace sm {
struct Screen4Snapshot {
    std::vector<std::uint8_t> vram;
    std::array<std::uint32_t, 16> palette{};
    std::array<std::uint32_t, 16> late_palette{};
    std::array<std::uint32_t, 16> tower_palette{};
    std::array<std::uint32_t, 16> tower_red_palette{};
    std::array<std::uint32_t, 16> vehicle_tower_palette{};
    std::array<std::uint32_t, 16> vehicle_tower_red_palette{};
    std::array<std::uint8_t, 0x80> object_pattern_base{};
    std::array<std::uint8_t,0x80> object_pattern_page{}; // sprite R6 page selected by loader mask

    static Screen4Snapshot load(const std::filesystem::path& vram_path,
                                const std::filesystem::path& palette_path);
    static Screen4Snapshot from_stage0_rom(const Rom& rom);
    static Screen4Snapshot from_stage_rom(const Rom& rom,unsigned stage);
};

std::vector<std::uint32_t> render_level_screen4(const LevelMap& level,
                                                const Screen4Snapshot& video);

// Stage-0 gameplay raster context proven against a live openMSX frame:
// the 24 logical level rows are placed at name-table rows 8..31 while
// R23=$24. Net result: logical row 0 begins at screen y=28, and the
// SCREEN-4 pattern/color quarter is selected from physical NT row +8.
std::vector<std::uint32_t> render_stage0_screen4_world(const LevelMap& level,
                                                       const Screen4Snapshot& video);

// Render the current 32x24 visible window of the real post-$12 stage-0
// ring streamer. Unlike render_stage0_screen4_world(), this follows the
// row/column stream modes selected by the ROM script.
std::vector<std::uint32_t> render_stage0_stream_screen4(const Stage0BackgroundStream& stream,
                                                        const Screen4Snapshot& video);

class Stage0Screen4Presenter {
public:
    void reset() noexcept;
    std::vector<std::uint32_t> render(
        const Stage0BackgroundStream& stream, const Screen4Snapshot& video,
        const std::array<std::uint8_t, 24u * 32u>& d988,
        const Stage0PresentationState* presentation = nullptr,
        int extra_x_pixels = 0, int extra_y_pixels = 0,
        const std::array<std::uint8_t,24u>* right_edge = nullptr,
        int start_row_override = -1, int graphics_set_override = -1,
        int palette_set_override = -1);

private:
    std::array<std::uint8_t, 32u * 32u> page30_{};
    std::array<std::uint8_t, 32u * 32u> page31_{};
    bool initialized_ = false;
};

std::vector<std::uint32_t> render_stage0_d988_screen4(
    const Stage0BackgroundStream& stream, const Screen4Snapshot& video,
    const std::array<std::uint8_t, 24u * 32u>& d988);
}
