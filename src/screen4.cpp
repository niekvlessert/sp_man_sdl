#include "screen4.hpp"
#include "assets.hpp"
#include <fstream>
#include <iterator>
#include <stdexcept>

namespace sm {
namespace {
std::vector<std::uint8_t> read_binary(const std::filesystem::path& p) {
    std::ifstream f(p, std::ios::binary);
    if (!f) throw std::runtime_error("cannot open: " + p.string());
    return {std::istreambuf_iterator<char>(f), std::istreambuf_iterator<char>()};
}
std::uint8_t scale3(unsigned v) {
    return std::uint8_t((v * 255u + 3u) / 7u);
}
std::uint32_t argb_from_grb(unsigned grb) {
    const auto g = scale3((grb >> 8) & 7u);
    const auto r = scale3((grb >> 4) & 7u);
    const auto b = scale3(grb & 7u);
    return 0xff000000u | (std::uint32_t(r) << 16)
         | (std::uint32_t(g) << 8) | std::uint32_t(b);
}
}

Screen4Snapshot Screen4Snapshot::load(const std::filesystem::path& vram_path,
                                      const std::filesystem::path& palette_path) {
    Screen4Snapshot s;
    s.vram = read_binary(vram_path);
    const auto p = read_binary(palette_path);
    if (s.vram.size() < 0x1c000) throw std::runtime_error("VRAM snapshot too small");
    if (p.size() < 32) throw std::runtime_error("palette snapshot too small");
    for (unsigned i = 0; i < 16; ++i) {
        const unsigned grb = unsigned(p[2*i]) | (unsigned(p[2*i+1]) << 8);
        s.palette[i] = argb_from_grb(grb);
    }
    return s;
}

Screen4Snapshot Screen4Snapshot::from_stage0_rom(const Rom& rom) {return from_stage_rom(rom,0);}
Screen4Snapshot Screen4Snapshot::from_stage_rom(const Rom& rom,unsigned stage) {
    const auto assets = decode_stage_video(rom,stage);
    Screen4Snapshot s;
    s.vram = assets.vram;
    s.object_pattern_base = assets.object_pattern_base;
    s.object_pattern_page = assets.object_pattern_page;
    for (unsigned i = 0; i < 16; ++i) {
        s.palette[i] = argb_from_grb(assets.palette_grb[i]);
        s.late_palette[i] = argb_from_grb(assets.late_palette_grb[i]);
        s.tower_palette[i] = argb_from_grb(assets.tower_palette_grb[i]);
        s.tower_red_palette[i] = argb_from_grb(assets.tower_red_palette_grb[i]);
        s.vehicle_tower_palette[i] = argb_from_grb(assets.vehicle_tower_palette_grb[i]);
        s.vehicle_tower_red_palette[i] = argb_from_grb(assets.vehicle_tower_red_palette_grb[i]);
    }
    return s;
}

std::vector<std::uint32_t> render_level_screen4(const LevelMap& level,
                                                const Screen4Snapshot& video) {
    const unsigned w = level.width_tiles * 8u;
    std::vector<std::uint32_t> out(std::size_t(w) * 192u, video.palette[0]);
    for (unsigned ty = 0; ty < LevelMap::HeightTiles; ++ty) {
        const unsigned quarter = (ty / 8u) * 0x800u;
        for (unsigned tx = 0; tx < level.width_tiles; ++tx) {
            const unsigned tile = level.get(tx, ty);
            for (unsigned py = 0; py < 8; ++py) {
                const unsigned index = quarter + tile * 8u + py;
                const auto pattern = video.vram[0x00000u + index];
                const auto color = video.vram[0x02000u + index];
                const unsigned fg = color >> 4;
                const unsigned bg = color & 15u;
                for (unsigned px = 0; px < 8; ++px) {
                    const unsigned ci = (pattern & (0x80u >> px)) ? fg : bg;
                    out[std::size_t(ty*8u + py) * w + tx*8u + px] = video.palette[ci];
                }
            }
        }
    }
    return out;
}
std::vector<std::uint32_t> render_stage0_screen4_world(const LevelMap& level,
                                                       const Screen4Snapshot& video) {
    const unsigned w = level.width_tiles * 8u;
    // The 28 lines above the shifted name table are VDP backdrop, not
    // SCREEN-4 color index 0. Stage-0 R7 makes this border black.
    std::vector<std::uint32_t> out(std::size_t(w) * 212u, 0xff000000u);
    constexpr unsigned kScreenY = 28u; // NT row 8 (64 px) minus R23=$24 (36 px)
    for (unsigned ty = 0; ty < LevelMap::HeightTiles; ++ty) {
        const unsigned sy0 = kScreenY + ty * 8u;
        if (sy0 >= 212u) break;
        for (unsigned tx = 0; tx < level.width_tiles; ++tx) {
            const unsigned tile = level.get(tx, ty);
            const unsigned world_x = tx * 8u;

            // Stage 0 keeps all scenery sets resident and changes R4/R10 as
            // the long vehicle scene progresses.  The boundaries below come
            // from live C0CA traces mapped back onto the decoded macro stream:
            //   <1536      $03/$00  initial blue corridor
            //   1536-3072  $33/$06  purple machinery
            //   3072-3520  $0B/$01  vehicle continuation after command $12
            //   3520-3680  $13/$02
            //   3680-3840  $23/$04
            //   3840-4608  $2B/$05
            //   4608-5120  $33/$06  large destructible tower approach
            // At $A438 the original switches to $3B/$07 and holds the stream
            // for the fight; that dynamic gate is handled separately.
            unsigned r4 = 0x03u, r10 = 0x00u;
            if (world_x >= 4608u)      { r4 = 0x33u; r10 = 0x06u; }
            else if (world_x >= 3840u) { r4 = 0x2bu; r10 = 0x05u; }
            else if (world_x >= 3680u) { r4 = 0x23u; r10 = 0x04u; }
            else if (world_x >= 3520u) { r4 = 0x13u; r10 = 0x02u; }
            else if (world_x >= 3072u) { r4 = 0x0bu; r10 = 0x01u; }
            else if (world_x >= 1536u) { r4 = 0x33u; r10 = 0x06u; }
            const bool initial = r4 == 0x03u;
            const unsigned physical_name_row = ty + (initial ? 8u : 7u);
            const unsigned quarter = (physical_name_row / 8u) * 0x800u;
            const unsigned pattern_base = (r4 & 0x3cu) << 11u;
            const unsigned color_base = 0x02000u + r10 * 0x4000u;
            const auto& palette = initial ? video.palette : video.late_palette;
            for (unsigned py = 0; py < 8u && sy0 + py < 212u; ++py) {
                const unsigned index = quarter + tile * 8u + py;
                const auto pattern = video.vram[pattern_base + index];
                const auto color = video.vram[color_base + index];
                const unsigned fg = color >> 4;
                const unsigned bg = color & 15u;
                for (unsigned px = 0; px < 8u; ++px) {
                    const unsigned ci = (pattern & (0x80u >> px)) ? fg : bg;
                    out[std::size_t(sy0 + py) * w + tx * 8u + px] = palette[ci];
                }
            }
        }
    }
    return out;
}

namespace {
void upload_d988_page(std::array<std::uint8_t, 32u * 32u>& page,
                      const std::array<std::uint8_t, 24u * 32u>& d988,
                      unsigned start_row) {
    for (unsigned y = 0; y < 24u; ++y) {
        const unsigned physical_row = (start_row + y) & 31u;
        std::copy_n(d988.begin() + std::ptrdiff_t(y * 32u), 32u,
                    page.begin() + std::ptrdiff_t(physical_row * 32u));
    }
}

std::vector<std::uint32_t> render_stage0_page(
        const Stage0BackgroundStream& stream, const Screen4Snapshot& video,
        const std::array<std::uint8_t, 32u * 32u>& page,
        const Stage0PresentationState& presentation,
        int extra_x_pixels, int extra_y_pixels,
        const std::array<std::uint8_t,24u>* right_edge,
        int start_row_override, int graphics_set_override, int palette_set_override) {
    std::vector<std::uint32_t> out(256u * 212u, 0xff000000u);
    const unsigned pattern_base=stream.pattern_base(graphics_set_override);
    const unsigned color_base=stream.color_base(graphics_set_override);
    const unsigned palette_set = palette_set_override >= 0 ? unsigned(palette_set_override) : stream.palette_set();
    const auto& palette = palette_set >= 2u ? video.tower_palette : video.late_palette;
    const int r23 = int(presentation.r23) + extra_y_pixels;
    // V99x8 R#18 low nibble is NOT a linear 0..7 source offset. The hardware
    // decodes it around neutral 7: displayShift=((R18&15)^7)-7. This renderer
    // samples source coordinates, so apply the opposite sign. Keep this exactly
    // aligned with rpmsx_portable/src/video/v9938.cpp.
    const int horizontal_shift = int((presentation.r18 & 0x0fu) ^ 0x07u) - 7;
    const int x_sub = -horizontal_shift + extra_x_pixels;
    const unsigned start_row = start_row_override >= 0 ? unsigned(start_row_override) : ((unsigned(stream.scroll_row()) & 0xf8u) >> 3u);
    const auto left_edge=stream.compose_left_edge();
    for (unsigned sy = 0; sy < 212u; ++sy) {
        const unsigned display_y = unsigned(int(sy) + r23) & 255u;
        const unsigned physical_row = display_y >> 3u;
        // Only these 24 rows were composed. The other eight belong to the
        // backdrop; old page contents must not reappear during upward scroll.
        if (((physical_row + 32u - start_row) & 31u) >= 24u) continue;
        const unsigned py = display_y & 7u;
        const unsigned quarter = (physical_row / 8u) * 0x800u;
        // R18 moves the complete display. Ground motion is already encoded
        // by the separate CA3A tile pass; a second fine shift wraps backwards.
        const int row_x_sub = x_sub;
        for (unsigned sx = 0; sx < 256u; ++sx) {
            const int xq = row_x_sub + int(sx);
            const unsigned logical_row=(physical_row+32u-start_row)&31u;
            unsigned px=0;
            std::uint8_t tile=0;
            if(xq<0 && xq>=-8 && logical_row<24u) {
                // The preceding ring column is distinct from column0. Repeating
                // column0 duplicated the left rim of the late tower structure.
                tile=left_edge[logical_row];
                px=unsigned(xq+8);
            } else if(xq>=0 && xq<256) {
                const unsigned tx=unsigned(xq)>>3;
                px=unsigned(xq)&7u;
                tile=page[physical_row*32u+tx];
            } else if(xq>=256 && xq<264 && logical_row<24u && right_edge) {
                // Native right-edge extension. The background streamer already
                // exposes the real successor column (logical x=32); use it
                // instead of repeating tile 31. Repeating the final visible
                // tile produced the 1..7px-wide vertical fragments at the
                // right edge whenever R18 exposed the next column.
                px=unsigned(xq-256);
                tile=(*right_edge)[logical_row];
            } else continue;
            const unsigned index = quarter + tile * 8u + py;
            if (pattern_base + index >= video.vram.size() ||
                color_base + index >= video.vram.size()) continue;
            const auto pattern = video.vram[pattern_base + index];
            const auto color = video.vram[color_base + index];
            const unsigned ci = (pattern & (0x80u >> px)) ? (color >> 4) : (color & 15u);
            out[std::size_t(sy) * 256u + sx] = palette[ci & 15u];
        }
    }
    return out;
}
}

void Stage0Screen4Presenter::reset() noexcept {
    page30_.fill(0);
    page31_.fill(0);
    initialized_ = false;
}

std::vector<std::uint32_t> Stage0Screen4Presenter::render(
        const Stage0BackgroundStream& stream, const Screen4Snapshot& video,
        const std::array<std::uint8_t, 24u * 32u>& d988,
        const Stage0PresentationState* supplied_presentation,
        int extra_x_pixels, int extra_y_pixels,
        const std::array<std::uint8_t,24u>* right_edge,
        int start_row_override, int graphics_set_override, int palette_set_override) {
    const unsigned start_row = start_row_override >= 0 ? unsigned(start_row_override) : ((unsigned(stream.scroll_row()) & 0xf8u) >> 3u);
    if (!initialized_) {
        upload_d988_page(page30_, d988, start_row);
        upload_d988_page(page31_, d988, start_row);
        initialized_ = true;
    }

    const auto presentation = supplied_presentation ? *supplied_presentation : stream.presentation_state();
    // Synchronous vehicle captures show the page selected by R2 contains the
    // current D988 composition, while the other page still contains the prior
    // composition.  The two pages therefore prevent tearing; they are not a
    // one-tick presentation delay.  Preserve the non-updated eight NT rows in
    // each page, but upload the 24-row D988 window to the page displayed now.
    auto& active = presentation.r2 == 0x31u ? page31_ : page30_;
    upload_d988_page(active, d988, start_row);
    return render_stage0_page(stream, video, active, presentation,
                              extra_x_pixels, extra_y_pixels, right_edge,
                              int(start_row), graphics_set_override, palette_set_override);
}

std::vector<std::uint32_t> render_stage0_d988_screen4(
        const Stage0BackgroundStream& stream, const Screen4Snapshot& video,
        const std::array<std::uint8_t, 24u * 32u>& d988) {
    Stage0Screen4Presenter presenter;
    return presenter.render(stream, video, d988);
}

std::vector<std::uint32_t> render_stage0_stream_screen4(
        const Stage0BackgroundStream& stream, const Screen4Snapshot& video) {
    return render_stage0_d988_screen4(stream, video, stream.compose_d988_base());
}

}
