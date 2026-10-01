#include "game_state.hpp"
#include "level.hpp"
#include "rom.hpp"
#include "runtime.hpp"
#include "spawn.hpp"
#ifdef NDEBUG
#undef NDEBUG
#endif
#include <cassert>
#include <algorithm>
#include <iostream>
#include <vector>

int main(int argc, char** argv) {
    if (argc != 2) return 2;
    sm::Rom rom(argv[1]);
    const auto level = sm::LevelStreamDecoder(rom).decode_mode0();
    assert(level.width_tiles * 8u == 4128u);
    assert(level.commands.size() == 27u);

    sm::LevelRuntime rt(level);
    std::vector<unsigned> commands;
    unsigned frames = 0;
    while (!rt.finished()) {
        for (const auto& e : rt.step_60hz()) commands.push_back(e.command);
        ++frames;
    }
    assert(frames == (4128u - 256u) * 2u); // camera is the slower completion condition
    assert(rt.stream_samples() == 4128u * 3u);
    assert(rt.camera_samples() == (4128u - 256u) * 3u);
    assert((commands == std::vector<unsigned>{0x1c,0x11,0x00,0x13,0x1a,0x17,0x11,0x1f,0x12,0x11,0x04,0x1b,0x11,0x11,0x1b,0x17,0x00,0x11,0x1d,0x10,0x18,0x1b,0x17,0x0b,0x19,0x1e,0x16}));

    // Optional runtime extent may still extend beyond the decoded fight gate
    // for later dynamic sections; it must never truncate the decoded stream.
    sm::LevelRuntime continued(level, 5000u);
    unsigned continued_frames = 0;
    while (!continued.finished()) { continued.step_60hz(); ++continued_frames; }
    assert(continued.stream_samples() == 5000u * 3u);
    assert(continued_frames == (5000u - 256u) * 2u);
    auto spawns = sm::StageSpawnStream::decode_stage0(rom);
    assert(spawns.records().size() == 75u);
    const auto& s0 = spawns.records()[0];
    assert(s0.trigger == 0x1080 && s0.world_x == 16u && s0.type == 0x51);
    const auto& s24 = spawns.records()[10];
    assert(s24.trigger == 0x10c3 && s24.world_x == 552u && s24.type == 0x24);
    assert(s24.encoded_length() == 6u && s24.payload.size() == 2u);
    assert(s24.payload[0] == 0x12 && s24.payload[1] == 0x00);
    const auto& s1f = spawns.records()[11];
    assert(s1f.trigger == 0x10c6 && s1f.world_x == 576u && s1f.type == 0x1f);
    assert(s1f.payload.size() == 1u && s1f.payload[0] == 0x08);
    const auto& flagged = spawns.records()[17];
    assert(flagged.trigger == 0x10e4 && flagged.trigger_flag());

    spawns.reset();
    std::vector<unsigned> spawn_frames;
    for (unsigned f = 1; f <= 900; ++f) {
        const unsigned x = (f * 2u) / 3u;
        for (const auto& s : spawns.step_to_world_x(x))
            if (s.type == 0x24 || s.type == 0x1f) spawn_frames.push_back(f);
    }
    assert(spawn_frames.size() == 2u);
    assert(spawn_frames[0] == 828u); // stream x=552, trigger $10C3
    assert(spawn_frames[1] == 864u); // stream x=576, trigger $10C6

    // Real spawn parser uses the 16-bit $CA34 scene cursor, not a linear
    // world X once stage 0 enters its 2-D sections. Trigger $3018 is the
    // large destructible type-$56 controller (HP 44).
    spawns.reset();
    const auto trig3018 = spawns.step_to_trigger(0x3018u);
    const auto t56it = std::find_if(trig3018.begin(), trig3018.end(),
        [](const sm::SpawnRecord& r) { return r.type == 0x56u; });
    assert(t56it != trig3018.end() && t56it->trigger == 0x3018u);
    sm::GameState tower_spawn;
    assert(sm::instantiate_stage0_spawn(rom, *t56it, tower_spawn));
    assert(tower_spawn.enemies[0].type() == 0x56u);
    assert(tower_spawn.enemies[0].x_fixed() == 0x2000u);
    assert(tower_spawn.enemies[0].y_fixed() == 0x0000u);
    assert(tower_spawn.enemies[0].raw[0x16] == 0x2cu);
    const auto tower_visual0 = sm::decode_stage0_tile_visuals(rom, tower_spawn.enemies[0]);
    assert(tower_visual0.size() == 2u); // frame 0 + common matrix 4 from $BFC0 list
    sm::step_stage0_objects(tower_spawn);
    assert(tower_spawn.enemies[0].x_fixed() == 0x1fc0u);
    assert(tower_spawn.enemies[0].raw[0x06] == 1u);
    const auto tower_visual1 = sm::decode_stage0_tile_visuals(rom, tower_spawn.enemies[0]);
    assert(tower_visual1.size() == 2u);

    const auto m24 = sm::decode_spawn_type_metadata(rom, 0x24);
    assert((m24.bytes == std::array<std::uint8_t,4>{0x05,0x05,0x04,0x00}));
    const auto m1f = sm::decode_spawn_type_metadata(rom, 0x1f);
    assert((m1f.bytes == std::array<std::uint8_t,4>{0x06,0x88,0x7f,0x05}));
    const auto m22 = sm::decode_spawn_type_metadata(rom, 0x22);
    assert((m22.bytes == std::array<std::uint8_t,4>{0x04,0x86,0x56,0x06}));

    // Reverse-engineered bank-04 $7A5F/$7A70 tile path: type $22 uses
    // bank-07 frame matrices selected by object byte +06.
    sm::Entity64 tile22;
    tile22.type() = 0x22;
    for (unsigned i = 0; i < 4; ++i) tile22.raw[0x13u + i] = m22.bytes[i];
    tile22.set_x_fixed(0x1d00);
    tile22.set_y_fixed(0x0d00);
    sm::Stage0TileVisual tile_visual;
    assert(sm::decode_stage0_tile_visual(rom, tile22, tile_visual));
    assert(tile_visual.x == 232 && tile_visual.y == 104);
    assert(tile_visual.rows == 2 && tile_visual.cols == 4);
    assert((tile_visual.tiles == std::vector<std::uint8_t>{0x16,0x20,0x2d,0x16,0x17,0x21,0x8a,0x17}));
    tile22.raw[0x06] = 1;
    assert(sm::decode_stage0_tile_visual(rom, tile22, tile_visual));
    assert((tile_visual.tiles == std::vector<std::uint8_t>{0x2e,0x24,0x26,0x2e,0x8e,0x2f,0x30,0x8e}));

    sm::GameState spawned;
    assert(sm::instantiate_stage0_spawn(rom, s24, spawned));
    assert(spawned.enemies[0].type() == 0x24 && spawned.enemies[0].state() == 1);
    assert(spawned.enemies[0].x_fixed() == 0x2000 && spawned.enemies[0].y_fixed() == 0x1200);
    assert(spawned.enemies[0].flags15() == 0x04 && spawned.enemies[0].raw[0x2d] == 1);

    // Type $24 does not use the generic +06 frame selector. Its handler
    // renders three resident tile bands with phase, phase+8, phase+16.
    // Wide type-$24 carry-over remains alive with its anchor far left of the
    // visible area. Live 60-Hz capture: $EF00 is the last active position; the
    // following $40 scenery step to $EEC0 removes it.
    auto wide24 = spawned.enemies[0];
    wide24.set_x_fixed(0xef40u);
    sm::GameState cull_test;
    cull_test.enemies[0] = wide24;
    sm::step_stage0_objects(cull_test);
    assert(cull_test.enemies[0].active() && cull_test.enemies[0].x_fixed() == 0xef00u);
    sm::step_stage0_objects(cull_test);
    assert(!cull_test.enemies[0].active());

    spawned.enemies[0].set_x_fixed(0x1f00);
    const auto chassis = sm::decode_stage0_tile_visuals(rom, spawned.enemies[0]);
    assert(chassis.size() == 3u);
    assert(chassis[0].rows == 4 && chassis[0].cols == 3); // frame 2 -> $8DC1
    assert(chassis[1].rows == 3 && chassis[1].cols == 10); // frame 10 -> $8E65
    assert(chassis[2].rows == 4 && chassis[2].cols == 3); // frame 18 -> $8F51
    assert(chassis[0].tiles[0] == 0xb4 && chassis[1].tiles[0] == 0x52);
    spawned.enemies[0].set_x_fixed(0x2000);
    assert(sm::instantiate_stage0_spawn(rom, s1f, spawned));
    assert(spawned.enemies[1].type() == 0x1f && spawned.enemies[1].state() == 1);
    assert(spawned.enemies[1].x_fixed() == 0x2000 && spawned.enemies[1].y_fixed() == 0x0800);
    assert(spawned.enemies[1].flags15() == 0x7f && spawned.enemies[1].raw[0x2d] == 2);

    const auto it26 = std::find_if(spawns.records().begin(), spawns.records().end(),
        [](const sm::SpawnRecord& r) { return r.type == 0x26u && !r.trigger_flag() && !r.type_flag(); });
    assert(it26 != spawns.records().end());
    assert(it26->control_flag() && it26->payload.size() == 6u);
    assert(sm::instantiate_stage0_spawn(rom, *it26, spawned));
    assert(spawned.enemies[2].type() == 0x26 && spawned.enemies[2].state() == 1);
    assert(spawned.enemies[2].x_fixed() == 0x2000 && spawned.enemies[2].y_fixed() == 0x0f00);
    assert(spawned.enemies[2].flags15() == 0x56 && spawned.enemies[2].raw[0x16] == 0x08);
    sm::Stage0TileVisual v26;
    assert(sm::decode_stage0_tile_visual(rom, spawned.enemies[2], v26));
    assert(v26.rows == 2 && v26.cols == 4); // frame 0 -> $8D7D

    // Generic damage path $7C44/$7CC3: HP is unsigned and zero itself is
    // still alive. The following hit underflows and swaps type $26 -> $6B.
    auto damage26 = spawned.enemies[2];
    assert(sm::apply_stage0_damage(rom, damage26, 2) == sm::Stage0DamageResult::Hit && damage26.raw[0x16] == 6);
    assert(sm::apply_stage0_damage(rom, damage26, 2) == sm::Stage0DamageResult::Hit && damage26.raw[0x16] == 4);
    assert(sm::apply_stage0_damage(rom, damage26, 2) == sm::Stage0DamageResult::Hit && damage26.raw[0x16] == 2);
    assert(sm::apply_stage0_damage(rom, damage26, 2) == sm::Stage0DamageResult::Hit && damage26.raw[0x16] == 0);
    assert(sm::apply_stage0_damage(rom, damage26, 2) == sm::Stage0DamageResult::Destroyed);
    assert(damage26.raw[0x16] == 0xfe && damage26.type() == 0x6b && damage26.state() == 0);
    assert(damage26.flags15() == 0x04 && (damage26.raw[0x14] & 0x80u) == 0);

    // Real level-1 trace: both first object types move left by $40 in 8.8
    // space per 60-Hz tick. Type $1F changes from frame 1 to frame 0 just
    // left of x=$1C00.
    for (unsigned i = 0; i < 16; ++i) sm::step_stage0_objects(spawned);
    assert(spawned.enemies[0].x_fixed() == 0x1c00);
    assert(spawned.enemies[1].x_fixed() == 0x1c00 && spawned.enemies[1].raw[0x05] == 1);
    sm::step_stage0_objects(spawned);
    assert(spawned.enemies[1].x_fixed() == 0x1bc0 && spawned.enemies[1].raw[0x05] == 0);

    // Live vehicle anchor at X=$0BF8 / source $A25F.  The raster builder
    // patches the inactive program, so even C09B means page $31 is currently
    // displayed.  These values were captured together in openMSX at 103.012s.
    sm::Stage0BackgroundStream raster_anchor(rom);
    raster_anchor.seek_world_x(3064u);
    assert(raster_anchor.world_x() == 3064u);
    assert(raster_anchor.source_address() == 0xA25Fu);
    const auto rp = raster_anchor.presentation_state();
    assert(rp.r2 == 0x31u && rp.r5 == 0xf7u && rp.lower_r5 == 0xffu);
    assert(rp.r18 == 0x0eu && rp.r19 == 0xa8u && rp.r23 == 0x1cu);

    // Fixed-bank $5DD8-$5E3C fast-ground compositor, exact A288 phase.
    sm::Stage0BackgroundStream ground_anchor(rom);
    ground_anchor.seek_world_x(3072u);
    auto ground_d988 = ground_anchor.compose_d988_raw();
    ground_anchor.apply_fast_ground(ground_d988);
    assert(ground_anchor.fast_ground_phase() == 3u);
    const std::array<std::uint8_t,8> ground_row22{0xc5,0xc4,0xc3,0xbf,0xc5,0xc4,0xc0,0xc1};
    for (unsigned i = 0; i < 8u; ++i) assert(ground_d988[22u * 32u + i] == ground_row22[i]);

    const auto video = sm::Screen4Snapshot::from_stage0_rom(rom);
    assert(video.object_pattern_base[0x1f] == 0xa0);
    sm::Stage0SpriteVisual visual;
    assert(sm::decode_stage0_sprite_visual(rom, video, spawned.enemies[1], visual));
    assert(visual.x == 0xed && visual.y == 0x89 && visual.layer_count == 2);
    assert(visual.layers[0].pattern == 0xa0 && visual.layers[1].pattern == 0xa4);
    assert((visual.layers[0].color == std::array<std::uint8_t,16>{
        0x00,0x00,0x00,0x00,0x03,0x03,0x06,0x08,0x0e,0x08,0x03,0x03,0x00,0x00,0x00,0x00}));
    assert((visual.layers[1].color == std::array<std::uint8_t,16>{
        0x40,0x40,0x40,0x40,0x4d,0x4d,0x4d,0x4f,0x4f,0x4f,0x4d,0x4d,0x40,0x40,0x40,0x40}));

    spawned.enemies[1].set_x_fixed(0x1c00);
    spawned.enemies[1].raw[0x05] = 1;
    assert(sm::decode_stage0_sprite_visual(rom, video, spawned.enemies[1], visual));
    assert(visual.x == 0xf7 && visual.y == 0x86);
    assert(visual.layers[0].pattern == 0xa8 && visual.layers[1].pattern == 0xac);

    sm::GameState game;
    auto* e = game.allocate_enemy();
    assert(e != nullptr);
    e->type() = 0x23;
    e->set_x_fixed(0x3456);
    e->set_y_fixed(0x789a);
    assert(e->x_fixed() == 0x3456 && e->x_pixel() == 0x34);
    assert(e->y_fixed() == 0x789a && e->y_pixel() == 0x78);
    assert(game.active_enemy_count() == 1u);

    sm::GameState gate_ref;
    sm::seed_stage0_gate_reference(gate_ref);
    assert(gate_ref.enemies[1].type() == 0x64u);
    assert(gate_ref.enemies[1].x_fixed() == 0x1200u);
    const auto gate64 = sm::decode_stage0_tile_visuals(rom, gate_ref.enemies[1]);
    assert(gate64.size() == 4u);
    assert(gate64[0].rows == 9u && gate64[0].cols == 10u);
    assert(gate64[1].rows == 9u && gate64[1].cols == 10u);
    assert(gate64[2].rows == 5u && gate64[2].cols == 13u);
    assert(gate64[3].rows == 10u && gate64[3].cols == 5u);
    const auto gate3d = sm::decode_stage0_tile_visuals(rom, gate_ref.enemies[2]);
    assert(gate3d.size() == 1u && gate3d[0].rows == 4u && gate3d[0].cols == 16u);

    std::cout << "runtime test PASS: " << frames << " frames, "
              << commands.size() << " stream events, "
              << spawns.records().size() << " ROM spawn records\n";
}
