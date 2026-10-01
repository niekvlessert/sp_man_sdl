#include "level.hpp"
#include "rom.hpp"
#include "screen4.hpp"
#include "runtime.hpp"
#include "spawn.hpp"
#include "game_state.hpp"
#include <SDL.h>
#include <algorithm>
#include <cstdint>
#include <cstdio>
#include <iostream>
#include <fstream>
#include <stdexcept>
#include <vector>

namespace {
constexpr unsigned kStageHeight = 212u; // V9938 R9=$80 during level 1
std::vector<std::uint32_t> expand_x3(const std::vector<std::uint32_t>& src,
                                     unsigned w, unsigned h) {
    std::vector<std::uint32_t> out(std::size_t(w) * 3u * h);
    for (unsigned y = 0; y < h; ++y) {
        for (unsigned x = 0; x < w; ++x) {
            const auto c = src[std::size_t(y) * w + x];
            const auto o = std::size_t(y) * w * 3u + x * 3u;
            out[o] = out[o+1] = out[o+2] = c;
        }
    }
    return out;
}

bool sprite_pattern_bit(const sm::Screen4Snapshot& video, std::uint8_t pattern,
                        unsigned row, unsigned px) {
    const unsigned half = px >= 8u ? 16u : 0u;
    const unsigned bit = px & 7u;
    const unsigned a = 0xd000u + unsigned(pattern) * 8u + row + half;
    return a < video.vram.size() && (video.vram[a] & (0x80u >> bit));
}

void draw_stage0_sprite(SDL_Renderer* ren, const SDL_Rect& dst,
                        const sm::Screen4Snapshot& video,
                        const sm::Stage0SpriteVisual& sprite,
                        const std::array<std::uint32_t, 16>& palette) {
    if (sprite.layer_count == 0) return;
    for (unsigned row = 0; row < 16u; ++row) {
        const int sy = sprite.y + 1 + int(row); // V9938 sprite Y is displayed one line later
        if (sy < 0 || sy >= int(kStageHeight)) continue;
        for (int sx = sprite.x - 32; sx < sprite.x + 16; ++sx) {
            unsigned ci = 0;
            for (unsigned li = 0; li < sprite.layer_count; ++li) {
                const auto& layer = sprite.layers[li];
                const auto attr = layer.color[row];
                const int lx = sx - (sprite.x - ((attr & 0x80u) ? 32 : 0));
                if (lx < 0 || lx >= 16 ||
                    !sprite_pattern_bit(video, layer.pattern, row, unsigned(lx))) continue;
                const unsigned c = attr & 0x0fu;
                if (attr & 0x40u) {
                    if (ci != 0) ci |= c;
                } else if (c != 0) {
                    ci = c;
                }
            }
            if (ci == 0 || sx < 0 || sx >= 256) continue;
            const auto argb = palette[ci & 15u];
            SDL_SetRenderDrawColor(ren, (argb >> 16) & 255u, (argb >> 8) & 255u,
                                   argb & 255u, 255);
            const int x0 = dst.x + sx * dst.w / 256;
            const int x1 = dst.x + (sx + 1) * dst.w / 256;
            const int y0 = dst.y + sy * dst.h / int(kStageHeight);
            const int y1 = dst.y + (sy + 1) * dst.h / int(kStageHeight);
            SDL_Rect pixel{x0, y0, std::max(1, x1 - x0), std::max(1, y1 - y0)};
            SDL_RenderFillRect(ren, &pixel);
        }
    }
}

void draw_stream_star_overlay(SDL_Renderer* ren, const SDL_Rect& dst,
                              const std::array<std::uint8_t, 24u * 32u>& d988,
                              std::uint8_t star_tile) {
    SDL_SetRenderDrawColor(ren, 205, 205, 255, 255);
    for (unsigned ty = 0; ty < 21u; ++ty) {
        for (unsigned tx = 0; tx < 32u; ++tx) {
            if (d988[ty * 32u + tx] != star_tile) continue;
            const int sx = int(tx * 8u + 3u);
            const int sy = 28 + int(ty * 8u + 3u);
            if (sy < 0 || sy >= int(kStageHeight)) continue;
            const int x0 = dst.x + sx * dst.w / 256;
            const int x1 = dst.x + (sx + 1) * dst.w / 256;
            const int y0 = dst.y + sy * dst.h / int(kStageHeight);
            const int y1 = dst.y + (sy + 1) * dst.h / int(kStageHeight);
            SDL_Rect pixel{x0, y0, std::max(1, x1 - x0), std::max(1, y1 - y0)};
            SDL_RenderFillRect(ren, &pixel);
        }
    }
}

void draw_stage0_tile_visual(SDL_Renderer* ren, const SDL_Rect& dst,
                             const sm::Screen4Snapshot& video,
                             const sm::Stage0TileVisual& visual,
                             unsigned graphics_set, unsigned palette_set) {
    constexpr int kScreenY = 28;
    static constexpr std::array<std::uint8_t, 7> kR4{
        0x33u, 0x0bu, 0x13u, 0x23u, 0x2bu, 0x33u, 0x3bu};
    static constexpr std::array<std::uint8_t, 7> kR10{
        0x06u, 0x01u, 0x02u, 0x04u, 0x05u, 0x06u, 0x07u};
    const unsigned set = std::min<unsigned>(graphics_set, 6u);
    const unsigned pattern_base = (unsigned(kR4[set]) & 0x3cu) << 11u;
    const unsigned color_base = 0x02000u + unsigned(kR10[set]) * 0x4000u;
    const auto& palette = palette_set >= 2u ? video.tower_palette : video.late_palette;
    for (unsigned ty = 0; ty < visual.rows; ++ty) {
        for (unsigned tx = 0; tx < visual.cols; ++tx) {
            const auto tile = visual.tiles[ty * visual.cols + tx];
            if (tile == 0) continue; // $7AC0 treats zero tile IDs as transparent.
            const int sx0 = visual.x + int(tx * 8u);
            const int sy0 = visual.y + int(ty * 8u);
            if (sx0 <= -8 || sx0 >= 256 || sy0 <= -8 || sy0 >= int(kStageHeight)) continue;
            const int logical_row = (sy0 - kScreenY) >= 0 ? (sy0 - kScreenY) / 8 : 0;
            const unsigned physical_row = unsigned(logical_row) + 7u;
            const unsigned quarter = (physical_row / 8u) * 0x800u;
            for (unsigned py = 0; py < 8u; ++py) {
                const int sy = sy0 + int(py);
                if (sy < 0 || sy >= int(kStageHeight)) continue;
                const unsigned index = quarter + unsigned(tile) * 8u + py;
                if (pattern_base + index >= video.vram.size() || color_base + index >= video.vram.size()) continue;
                const auto pattern = video.vram[pattern_base + index];
                const auto color = video.vram[color_base + index];
                for (unsigned px = 0; px < 8u; ++px) {
                    const int sx = sx0 + int(px);
                    if (sx < 0 || sx >= 256) continue;
                    const unsigned ci = (pattern & (0x80u >> px)) ? (color >> 4) : (color & 15u);
                    const auto argb = palette[ci & 15u];
                    SDL_SetRenderDrawColor(ren, (argb >> 16) & 255u, (argb >> 8) & 255u, argb & 255u, 255);
                    const int x0 = dst.x + sx * dst.w / 256;
                    const int x1 = dst.x + (sx + 1) * dst.w / 256;
                    const int y0 = dst.y + sy * dst.h / int(kStageHeight);
                    const int y1 = dst.y + (sy + 1) * dst.h / int(kStageHeight);
                    SDL_Rect pixel{x0, y0, std::max(1, x1 - x0), std::max(1, y1 - y0)};
                    SDL_RenderFillRect(ren, &pixel);
                }
            }
        }
    }
}
}
int main(int argc, char** argv) try {
    if (argc != 2 && argc != 4 && argc != 5) {
        std::cerr << "usage: space-manbow-level-preview <Space Manbow.rom> [--dump <world.ppm> | --dump-stream <x> <screen.ppm> | --dump-scene <x> <screen.ppm>]\n";
        return 2;
    }
    sm::Rom rom(argv[1]);
    const sm::LevelStreamDecoder decoder(rom);
    // The visible stage starts at $A000. $A0C2 remains the validated later
    // logic-stream anchor; using it as a framebuffer origin skipped 992 px.
    const auto visual_level = decoder.decode_mode0(sm::kStage0VisualStart);
    const auto logic_level = decoder.decode_mode0(sm::kStage0StreamAnchor);
    const auto video = sm::Screen4Snapshot::from_stage0_rom(rom);
    const auto world = sm::render_stage0_screen4_world(visual_level, video);
    const unsigned world_w = visual_level.width_tiles * 8u;
    const auto world3 = expand_x3(world, world_w, kStageHeight);
    if (argc == 5 && (std::string(argv[2]) == "--dump-stream" ||
                      std::string(argv[2]) == "--dump-ring" ||
                      std::string(argv[2]) == "--dump-d988" ||
                      std::string(argv[2]) == "--dump-d988-scene" ||
                      std::string(argv[2]) == "--dump-scene")) {
        const unsigned x = unsigned(std::stoul(argv[3], nullptr, 0));
        unsigned dump_frame = x * 2u; // horizontal section: 0.5 visible px / 60-Hz frame
        sm::Stage0BackgroundStream stream(rom);
        sm::GameState dump_game;
        auto dump_spawns = sm::StageSpawnStream::decode_stage0(rom);
        if (std::string(argv[2]) == "--dump-scene" ||
            std::string(argv[2]) == "--dump-d988-scene") {
            // Rebuild the horizontal pre-$12 section, but stop the legacy
            // world-X spawn cursor at $1180. The original reaches $A288 with
            // CA34=$1180; records $1183..$11A0 fire only afterwards from the
            // 2-D trigger cursor. This preserves real carry-over objects while
            // preventing the late scenery records from being consumed twice.
            sm::LevelRuntime dump_runtime(logic_level);
            const unsigned prelude_px = (visual_level.width_tiles - logic_level.width_tiles) * 8u;
            const unsigned logic_start_frame = (prelude_px * 3u + 1u) / 2u;
            const unsigned frame_at_a288 = 3072u * 2u;
            const unsigned pre_target_frame = std::min(frame_at_a288, x * 2u);
            for (unsigned f = 1; f <= pre_target_frame; ++f) {
                if (f < logic_start_frame) continue;
                if (((f - logic_start_frame) & 3u) == 0u)
                    sm::step_stage0_objects(dump_game);
                dump_runtime.step_60hz();
                const unsigned dump_camera_px = f / 2u; // visible camera: 0.5 px/frame
                const unsigned spawn_x = dump_camera_px > 1008u ? dump_camera_px - 1008u : 0u; // live CA34 camera origin
                for (const auto& spawn : dump_spawns.step_to_world_x(spawn_x, 0x1180u))
                    sm::instantiate_stage0_spawn(rom, spawn, dump_game, 1u);
            }
            // Reconstruct visual state from $A13F, but do not double-scroll
            // the object pool before the real $A288/CA34 hand-off.
            stream.seek_world_x(std::min(x, 3072u));
            unsigned dump_post_ticks = 0;
            while (!stream.gated() && stream.world_x() < x) {
                for (unsigned q = 0; q < 4u; ++q)
                    sm::step_stage0_object_scroll_60hz(dump_game,
                        stream.x_velocity_fp(), stream.y_velocity_fp());
                sm::step_stage0_object_logic_15hz(dump_game);
                stream.step_15hz();
                for (const auto& spawn : dump_spawns.step_to_trigger(stream.trigger_cursor()))
                    sm::instantiate_stage0_spawn(rom, spawn, dump_game, stream.spawn_direction());
                ++dump_post_ticks;
            }
            if (x >= 3072u) dump_frame = 3072u * 2u + dump_post_ticks * 4u;
            if (stream.gated()) sm::seed_stage0_gate_reference(dump_game);
        } else {
            stream.seek_world_x(x);
        }
        if (std::string(argv[2]) == "--dump-ring") {
            std::ofstream out(argv[4], std::ios::binary);
            for (unsigned r = 0; r < 32u; ++r)
                for (unsigned c = 0; c < 64u; ++c) {
                    const char v = char(stream.ring_tile(c, r));
                    out.write(&v, 1);
                }
            std::cout << "dump-ring x=" << x << " actual=" << stream.world_x()
                      << " y=" << stream.world_y() << " src=$" << std::hex
                      << unsigned(stream.source_address()) << std::dec
                      << " -> " << argv[4] << "\n";
            return 0;
        }
        const bool dump_scene = std::string(argv[2]) == "--dump-scene" ||
                                std::string(argv[2]) == "--dump-d988-scene";
        auto d988 = stream.compose_d988_raw();
        if (x >= 1536u)
            stream.apply_fast_ground(d988, stream.fast_ground_alternate());
        if (dump_scene) {
            for (unsigned i = 0; i < dump_game.enemies.size(); ++i) {
                const auto& e = dump_game.enemies[i];
                if (!e.active()) continue;
                std::cout << " obj" << i << " type=$" << std::hex << unsigned(e.type())
                          << " state=" << unsigned(e.state()) << " f5=" << unsigned(e.raw[5])
                          << " f6=" << unsigned(e.raw[6]) << " x=$" << unsigned(e.x_fixed())
                          << " y=$" << unsigned(e.y_fixed()) << std::dec << "\n";
            }
            sm::stamp_stage0_tile_objects(rom, stream, dump_game, d988);
        }
        stream.apply_d988_parallax(d988);
        if (std::string(argv[2]) == "--dump-d988" ||
            std::string(argv[2]) == "--dump-d988-scene") {
            std::ofstream out(argv[4], std::ios::binary);
            out.write(reinterpret_cast<const char*>(d988.data()), std::streamsize(d988.size()));
            std::cout << "dump-d988 x=" << x << " actual=" << stream.world_x()
                      << " y=" << stream.world_y() << " src=$" << std::hex
                      << unsigned(stream.source_address()) << std::dec
                      << " -> " << argv[4] << "\n";
            return 0;
        }
        const auto frame = sm::render_stage0_d988_screen4(stream, video, d988);
        std::ofstream out(argv[4], std::ios::binary);
        out << "P6\n256 " << kStageHeight << "\n255\n";
        for (auto c : frame) {
            const char rgb[3] = {char((c >> 16) & 255), char((c >> 8) & 255), char(c & 255)};
            out.write(rgb, 3);
        }
        std::cout << argv[2] << " x=" << x << " actual=" << stream.world_x()
                  << " y=" << stream.world_y() << " src=$" << std::hex
                  << unsigned(stream.source_address()) << std::dec
                  << " mode=" << unsigned(stream.mode())
                  << " gfx=" << unsigned(stream.graphics_set())
                  << " gate=" << stream.gated() << " objects=" << dump_game.active_enemy_count()
                  << " -> " << argv[4] << "\n";
        return 0;
    }
    if (argc == 4) {
        if (std::string(argv[2]) != "--dump") throw std::runtime_error("expected --dump");
        std::ofstream out(argv[3], std::ios::binary);
        out << "P6\n" << world_w << " " << kStageHeight << "\n255\n";
        for (auto c : world) {
            const char rgb[3] = {char((c >> 16) & 255), char((c >> 8) & 255), char(c & 255)};
            out.write(rgb, 3);
        }
        std::cout << "dumped " << world_w << "x192 to " << argv[3] << "\n";
        return 0;
    }

    std::cout << "Native level-1 preview: " << world_w << "x" << kStageHeight << ", "
              << visual_level.macro_addresses.size() << " visual macros (full $A000 chain)\n"
              << "60 Hz camera: 0.5 MSX pixel per frame (real level-1 trace)\n";

    if (SDL_Init(SDL_INIT_VIDEO) != 0) throw std::runtime_error(SDL_GetError());
    SDL_Window* win = SDL_CreateWindow("Space Manbow SDL - native level 1",
        SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED, 1024, 768,
        SDL_WINDOW_ALLOW_HIGHDPI | SDL_WINDOW_RESIZABLE);
    if (!win) throw std::runtime_error(SDL_GetError());
    SDL_Renderer* ren = SDL_CreateRenderer(win, -1,
        SDL_RENDERER_ACCELERATED | SDL_RENDERER_PRESENTVSYNC);
    if (!ren) ren = SDL_CreateRenderer(win, -1, SDL_RENDERER_SOFTWARE);
    if (!ren) throw std::runtime_error(SDL_GetError());
    SDL_Texture* tex = SDL_CreateTexture(ren, SDL_PIXELFORMAT_ARGB8888,
        SDL_TEXTUREACCESS_STATIC, int(world_w * 3u), int(kStageHeight));
    if (!tex) throw std::runtime_error(SDL_GetError());
    SDL_SetTextureScaleMode(tex, SDL_ScaleModeNearest);
    SDL_UpdateTexture(tex, nullptr, world3.data(), int(world_w * 3u * sizeof(std::uint32_t)));
    SDL_Texture* stream_tex = SDL_CreateTexture(ren, SDL_PIXELFORMAT_ARGB8888,
        SDL_TEXTUREACCESS_STREAMING, 256, int(kStageHeight));
    if (!stream_tex) throw std::runtime_error(SDL_GetError());
    SDL_SetTextureScaleMode(stream_tex, SDL_ScaleModeNearest);
    sm::Stage0BackgroundStream background_stream(rom);
    sm::Stage0Screen4Presenter stream_presenter;

    bool run = true, paused = false;
    auto spawn_stream = sm::StageSpawnStream::decode_stage0(rom);
    // The decoder now follows the real stream through command $12 and stops
    // at the $16 fight gate ($A438), so no synthetic post-$12 extent is needed.
    sm::LevelRuntime runtime(logic_level);
    sm::GameState game;
    int camera = 0;
    bool manual_camera = false;
    unsigned visual_half_pixels = 0;
    unsigned frame = 0;
    bool gate_fixture_seeded = false;
    const unsigned prelude_px = (visual_level.width_tiles - logic_level.width_tiles) * 8u;
    const unsigned logic_start_frame = (prelude_px * 3u + 1u) / 2u; // 2/3 px stream rate
    const int view_samples = 256 * 3;
    const int max_camera = std::max(0, int(world_w * 3u) - view_samples);
    constexpr unsigned kStreamedVisualStartPx = 1536u; // exact $A13F state
    constexpr unsigned kMode2StartPx = 3072u;          // exact $A288 state
    // CA34 is offset 1008 visible pixels from the stage camera: live anchors
    // X=1536 -> $10C0 and X=3072 -> $1180. This is deliberately 16 px
    // later than the 992-px visual/logic-stream prelude.
    constexpr unsigned kSpawnCameraOriginPx = 1008u;

    // Manual browsing must seek the stage simulation too. Previously the arrow
    // keys only moved the background texture while spawns kept running in real
    // time, so dynamic scenery (notably the large $24/$26 vehicle) could never
    // be inspected at the camera position selected by the user.
    auto rebuild_for_camera = [&](int camera_samples) {
        runtime.reset();
        spawn_stream.reset();
        game = {};
        const unsigned target_frame = unsigned(std::max(0, camera_samples)) * 2u / 3u;
        const unsigned frame_at_a288 = 3072u * 2u;
        const unsigned pre_target_frame = std::min(target_frame, frame_at_a288);
        for (unsigned f = 1; f <= pre_target_frame; ++f) {
            if (f < logic_start_frame) continue;
            // The original scenery/object handlers advance by $40 once per
            // four 60-Hz frames: average 0.5 px/frame, matching the camera.
            if (((f - logic_start_frame) & 3u) == 0u)
                sm::step_stage0_objects(game);
            runtime.step_60hz();
            const unsigned rebuild_camera_px = f / 2u;
            const unsigned spawn_x = rebuild_camera_px > kSpawnCameraOriginPx ? rebuild_camera_px - kSpawnCameraOriginPx : 0u;
            for (const auto& spawn : spawn_stream.step_to_world_x(spawn_x, 0x1180u))
                sm::instantiate_stage0_spawn(rom, spawn, game);
        }
        frame = pre_target_frame;
        visual_half_pixels = pre_target_frame;
        background_stream.reset();
        stream_presenter.reset();
        const unsigned camera_px = unsigned(std::max(0, camera_samples)) / 3u;
        unsigned post_ticks = 0;
        if (camera_px >= kStreamedVisualStartPx) {
            // Up to $A288 the background streamer runs in parallel with the
            // legacy horizontal object/spawn runtime. Do not move those
            // objects a second time while reconstructing the visual ring.
            const unsigned visual_target = std::min(camera_px, kMode2StartPx);
            background_stream.seek_world_x(visual_target);
        }
        if (camera_px >= kMode2StartPx) {
            while (!background_stream.gated() && background_stream.world_x() < camera_px) {
                for (unsigned q = 0; q < 4u; ++q)
                    sm::step_stage0_object_scroll_60hz(game,
                        background_stream.x_velocity_fp(), background_stream.y_velocity_fp());
                sm::step_stage0_object_logic_15hz(game);
                background_stream.step_15hz();
                for (const auto& spawn : spawn_stream.step_to_trigger(background_stream.trigger_cursor()))
                    sm::instantiate_stage0_spawn(rom, spawn, game, background_stream.spawn_direction());
                ++post_ticks;
            }
            frame = frame_at_a288 + post_ticks * 4u;
            if (background_stream.gated()) {
                sm::seed_stage0_gate_reference(game);
                gate_fixture_seeded = true;
            }
        }
    };

    while (run) {
        SDL_Event e;
        while (SDL_PollEvent(&e)) {
            if (e.type == SDL_QUIT) run = false;
            if (e.type == SDL_KEYDOWN) {
                if (e.key.keysym.sym == SDLK_ESCAPE) run = false;
                else if (e.key.keysym.sym == SDLK_SPACE) paused = !paused;
                else if (e.key.keysym.sym == SDLK_r) {
                    runtime.reset(); spawn_stream.reset(); background_stream.reset(); stream_presenter.reset();
                    game = {}; camera = 0; manual_camera = false; visual_half_pixels = 0; frame = 0; gate_fixture_seeded = false;
                }
                else if (e.key.keysym.sym == SDLK_RIGHT) {
                    manual_camera = true;
                    camera = std::min(max_camera, camera + 96); // 32 world px
                    rebuild_for_camera(camera);
                }
                else if (e.key.keysym.sym == SDLK_LEFT) {
                    manual_camera = true;
                    camera = std::max(0, camera - 96);
                    rebuild_for_camera(camera);
                }
                else if (e.key.keysym.sym == SDLK_PAGEDOWN) {
                    manual_camera = true;
                    camera = std::min(max_camera, camera + 768); // one 256-px screen
                    rebuild_for_camera(camera);
                }
                else if (e.key.keysym.sym == SDLK_PAGEUP) {
                    manual_camera = true;
                    camera = std::max(0, camera - 768);
                    rebuild_for_camera(camera);
                }
                else if (e.key.keysym.sym == SDLK_END) {
                    manual_camera = true;
                    camera = std::min(max_camera, 4108 * 3); // exact live $A3D8 late-stage anchor
                    rebuild_for_camera(camera);
                }
                else if (e.key.keysym.sym == SDLK_t) {
                    manual_camera = true;
                    camera = std::min(max_camera, 3736 * 3); // trigger $3018 object reference; not the slope itself
                    rebuild_for_camera(camera);
                }
                else if (e.key.keysym.sym == SDLK_HOME) {
                    manual_camera = true;
                    camera = 0;
                    rebuild_for_camera(camera);
                }
                else if (e.key.keysym.sym == SDLK_RETURN) manual_camera = false;
            }
        }
        if (!paused && !manual_camera) {
            ++frame;
            const unsigned before_px = unsigned(std::max(0, camera)) / 3u;
            const bool post12_before = before_px >= kMode2StartPx;

            if (!post12_before) {
                const unsigned max_visual_half = unsigned(max_camera) * 2u / 3u;
                if (visual_half_pixels < max_visual_half) ++visual_half_pixels;
                camera = std::min(max_camera, int((visual_half_pixels * 3u) / 2u));
            }

            if (frame >= logic_start_frame) {
                const unsigned now_camera_px = unsigned(std::max(0, camera)) / 3u;
                const bool post12 = now_camera_px >= kMode2StartPx;
                // The original object pool does NOT interpolate scenery positions
                // every video frame.  $6C21 applies the full CA12/CA14 delta on
                // the same stage tick as the coarse scroll update.  Fine motion is
                // supplied by the raster presentation layer.  Moving the objects
                // by four $10/$20 substeps here made $7AC0 cross tile boundaries
                // on the wrong frames and caused the large visible jerks.
                const bool stage_tick = (((frame - logic_start_frame) & 3u) == 0u);

                if (!post12) {
                    if (stage_tick) {
                        for (unsigned q = 0; q < 4u; ++q)
                            sm::step_stage0_object_scroll_60hz(game);
                        sm::step_stage0_object_logic_15hz(game);
                    }
                    const auto events = runtime.step_60hz();
                    for (const auto& ev : events) {
                        std::cout << "stream event x=" << ev.world_x << " cmd=$"
                                  << std::hex << unsigned(ev.command) << std::dec
                                  << " bytes=" << ev.payload.size() << "\n";
                    }
                    // The ROM's CA34 spawn cursor follows the visible camera,
                    // not LevelRuntime's faster ahead-of-camera tile stream.
                    // Live anchors: X=1536 -> $10C0, X=3072 -> $1180.
                    const unsigned spawn_x = now_camera_px > kSpawnCameraOriginPx ? now_camera_px - kSpawnCameraOriginPx : 0u;
                    for (const auto& spawn : spawn_stream.step_to_world_x(spawn_x, 0x1180u)) {
                        if (sm::instantiate_stage0_spawn(rom, spawn, game))
                            std::cout << "spawn x=" << spawn.world_x << " type=$"
                                      << std::hex << unsigned(spawn.type) << std::dec << "\n";
                    }
                    // From $A13F onward render from the same stateful ring as
                    // the later 2-D stage. Keep it phase-locked to the smooth
                    // pre-$12 camera, but leave object spawning on the original
                    // horizontal runtime until CA34 reaches $1180.
                    if (stage_tick && now_camera_px >= kStreamedVisualStartPx &&
                        background_stream.world_x() < now_camera_px)
                        background_stream.step_15hz();
                } else {
                    // From command $12 onward the stage has its own 2-D camera
                    // velocity. Keep entity scroll on the same tick as that camera
                    // state, exactly like $6C21 + $7AD2 in the original.
                    if (stage_tick) {
                        for (unsigned q = 0; q < 4u; ++q)
                            sm::step_stage0_object_scroll_60hz(game,
                                background_stream.x_velocity_fp(), background_stream.y_velocity_fp());
                        sm::step_stage0_object_logic_15hz(game);
                        background_stream.step_15hz();
                        if (background_stream.gated() && !gate_fixture_seeded) {
                            sm::seed_stage0_gate_reference(game);
                            gate_fixture_seeded = true;
                        }
                        for (const auto& spawn : spawn_stream.step_to_trigger(background_stream.trigger_cursor())) {
                            if (sm::instantiate_stage0_spawn(rom, spawn, game, background_stream.spawn_direction()))
                                std::cout << "spawn trigger=$" << std::hex << spawn.trigger
                                          << " type=$" << unsigned(spawn.type) << std::dec << "\n";
                        }
                    }
                    camera = std::min(max_camera, int(background_stream.world_x() * 3u));
                }
            }
            if (camera >= max_camera) {
                runtime.reset(); spawn_stream.reset(); background_stream.reset(); stream_presenter.reset();
                game = {}; camera = 0; manual_camera = false; visual_half_pixels = 0; frame = 0; gate_fixture_seeded = false;
            }
        }
        SDL_Rect src{camera, 0, view_samples, int(kStageHeight)};
        const unsigned camera_px = unsigned(std::max(0, camera)) / 3u;
        const bool streamed_background = camera_px >= kStreamedVisualStartPx;
        int rw = 0, rh = 0;
        SDL_GetRendererOutputSize(ren, &rw, &rh);
        const int dw = std::min(rw, rh * 4 / 3);
        const int dh = dw * 3 / 4;
        SDL_Rect dst{(rw - dw) / 2, (rh - dh) / 2, dw, dh};
        SDL_SetRenderDrawColor(ren, 0, 0, 0, 255);
        SDL_RenderClear(ren);
        if (streamed_background) {
            auto d988 = background_stream.compose_d988_raw();
            // Fixed-bank $5DD8-$5E3C fast ground runs before tile-object stamps.
            // CA3A is a coarse ~15-Hz ROM state ($5DDB), not the SDL frame.
            background_stream.apply_fast_ground(d988, background_stream.fast_ground_alternate());
            sm::stamp_stage0_tile_objects(rom, background_stream, game, d988);
            background_stream.apply_d988_parallax(d988);

            // Keep D988/object state and VDP presentation on the same coarse
            // ROM tick.  R18/R23 are decoded by the renderer from the captured
            // raster rules; do not invent 60 Hz entity/camera interpolation.
            const auto streamed = stream_presenter.render(
                background_stream, video, d988);
            SDL_UpdateTexture(stream_tex, nullptr, streamed.data(), 256 * int(sizeof(std::uint32_t)));
            SDL_RenderCopy(ren, stream_tex, nullptr, &dst);
            draw_stream_star_overlay(ren, dst, d988, background_stream.star_tile());
        } else {
            SDL_RenderCopy(ren, tex, &src, &dst);
        }
        const bool late_assets = camera_px >= 1536u;
        // Sprite mode 2 is a separate V9938 layer and remains active while the
        // D988/name-table compositor is streaming. The previous preview
        // accidentally disabled the whole sprite plane in streamed mode, which
        // removed several vehicle details. Type $1F stays suppressed because
        // its player-aimed selector is not ported yet (the old forced frame
        // looked like non-original jerky rockets).
        const auto& sprite_palette = late_assets ? video.late_palette : video.palette;
        for (const auto& obj : game.enemies) {
            if (obj.type() == 0x1fu) continue;
            sm::Stage0SpriteVisual visual;
            if (sm::decode_stage0_sprite_visual(rom, video, obj, visual))
                draw_stage0_sprite(ren, dst, video, visual, sprite_palette);
        }
        SDL_RenderPresent(ren);

        char title[160];
        if (streamed_background) {
            std::snprintf(title, sizeof(title),
                "Space Manbow SDL - x %.1f y %d src $%04X trig $%04X mode %u gfx %u objects %zu%s",
                double(camera) / 3.0, background_stream.world_y(), unsigned(background_stream.source_address()),
                unsigned(background_stream.trigger_cursor()), unsigned(background_stream.mode()), unsigned(background_stream.graphics_set()),
                game.active_enemy_count(), paused ? " PAUSED" : (manual_camera ? " MANUAL" : ""));
        } else {
            std::snprintf(title, sizeof(title),
                "Space Manbow SDL - native level 1 - x %.3f - objects %zu%s",
                double(camera) / 3.0, game.active_enemy_count(),
                paused ? " PAUSED" : (manual_camera ? " MANUAL" : ""));
        }
        SDL_SetWindowTitle(win, title);
    }
    SDL_DestroyTexture(stream_tex);
    SDL_DestroyTexture(tex);
    SDL_DestroyRenderer(ren);
    SDL_DestroyWindow(win);
    SDL_Quit();
    return 0;
} catch (const std::exception& e) {
    std::cerr << "error: " << e.what() << '\n';
    return 1;
}
