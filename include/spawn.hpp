#pragma once
#include "game_state.hpp"
#include "rom.hpp"
#include "play_sound.hpp"
#include "screen4.hpp"
#include <array>
#include <cstdint>
#include <span>
#include <vector>

namespace sm {
struct SpawnRecord {
    std::uint16_t trigger = 0;
    unsigned world_x = 0;
    std::uint8_t raw_trigger_hi = 0;
    std::uint8_t raw_type = 0;
    std::uint8_t type = 0;
    std::uint8_t control = 0;
    std::vector<std::uint8_t> payload;

    bool trigger_flag() const noexcept { return (raw_trigger_hi & 0x80u) != 0; }
    bool type_flag() const noexcept { return (raw_type & 0x80u) != 0; }
    bool control_flag() const noexcept { return (control & 0x80u) != 0; }
    unsigned encoded_length() const noexcept { return control & 0x7fu; }
};

struct SpawnTypeMetadata {
    std::array<std::uint8_t, 4> bytes{};
};

enum class StageSceneCommandKind { None, PalettePulse, ClearObjects };
struct StageSceneCommand {
    StageSceneCommandKind kind=StageSceneCommandKind::None;
    bool enabled=false;
};
// Fixed bank $62BB/$60D6: type $5F is intercepted by the stage parser and is
// never instantiated as an object. Selector 1 controls the palette service;
// selector 3 clears the active object pool.
StageSceneCommand decode_stage_scene_command(const SpawnRecord& record) noexcept;
class StageSpawnStream {
public:
    static StageSpawnStream decode_stage(const Rom& rom,unsigned stage);
    static StageSpawnStream decode_stage0(const Rom& rom, bool include_prelude=false);
    std::span<const SpawnRecord> records() const noexcept { return records_; }
    std::span<const SpawnRecord> step_to_world_x(unsigned world_x,
                                                 std::uint16_t trigger_limit = 0xffffu);
    std::span<const SpawnRecord> step_to_trigger(std::uint16_t trigger,
                                                 bool ca04 = false,
                                                 std::uint8_t ca19 = 1u);
    void reset() noexcept;
    void skip_before_trigger(std::uint16_t trigger) noexcept;
private:
    std::vector<SpawnRecord> records_;
    std::vector<SpawnRecord> fired_;
    std::size_t next_ = 0;
};


struct Stage0SpriteLayer {
    std::uint8_t pattern = 0;
    std::array<std::uint8_t, 16> color{};
};
struct Stage0SpriteVisual {
    int x = 0;
    int y = 0;
    std::array<Stage0SpriteLayer, 2> layers{};
    unsigned layer_count = 0;
};

struct Stage0TileVisual {
    int x = 0;
    int y = 0;
    int tile_x_offset = 0;
    int tile_y_offset = 0;
    std::uint8_t rows = 0;
    std::uint8_t cols = 0;
    std::vector<std::uint8_t> tiles;
};

void step_stage0_objects(GameState& game,const Rom* native_visuals=nullptr) noexcept;
void step_stage0_object_scroll_60hz(GameState& game) noexcept;
void step_stage0_object_scroll_60hz(GameState& game, std::int32_t x_velocity_fp,
                                    std::int32_t y_velocity_fp) noexcept;
void step_stage0_object_scroll_15hz(GameState& game, std::int32_t x_velocity_fp,
                                    std::int32_t y_velocity_fp,const Rom* native_visuals=nullptr) noexcept;
void step_stage0_object_logic_15hz(GameState& game) noexcept;
bool decode_stage0_sprite_visual(const Rom& rom, const Screen4Snapshot& video,
                                 const Entity64& entity, Stage0SpriteVisual& out);
bool decode_stage0_tile_visual(const Rom& rom, const Entity64& entity,
                               Stage0TileVisual& out);
std::vector<Stage0TileVisual> decode_stage0_tile_visuals(const Rom& rom,
                                                         const Entity64& entity);
std::vector<Stage0TileVisual> decode_stage0_t24_visuals_phase(const Rom& rom,
                                                               const Entity64& entity,
                                                               unsigned phase);
// Bank06:$BDAD-$BDCA exact type-$24 matrix selector. `ca3b` is the
// ROM CA3B phase and `fine_x` is the low byte of CA1C.
std::uint8_t stage0_t24_phase(const Entity64& entity,std::uint8_t ca3b,
                              std::uint8_t fine_x) noexcept;
void stamp_stage0_tile_objects(const Rom& rom, const Stage0BackgroundStream& stream,
                               const GameState& game,
                               std::array<std::uint8_t, 24u * 32u>& d988,
                               bool include_native_overlays=false);
void stamp_stage0_tile_objects_right_edge(const Rom& rom, const Stage0BackgroundStream& stream,
                                          const GameState& game,
                                          std::array<std::uint8_t, 24u>& edge);
// Deterministic A438 / 152.50-s OpenMSX reference pool used while the
// late fight handlers are being ported. This seeds enemies only; player state
// and the already byte-exact stage/raster state remain untouched.
void seed_stage0_gate_reference(GameState& game) noexcept;

enum class Stage0DamageResult { Ignored, Hit, Destroyed };
void append_stage0_damage_sounds(const Rom& rom,std::uint8_t original_type,
    Stage0DamageResult damage,std::vector<PlaySound>& sounds);
Stage0DamageResult apply_stage0_damage(const Rom& rom, Entity64& entity,
                                       std::uint8_t damage) noexcept;

SpawnTypeMetadata decode_spawn_type_metadata(const Rom& rom, std::uint8_t type);
bool instantiate_stage0_spawn(const Rom& rom, const SpawnRecord& record,
                              GameState& game, std::uint8_t spawn_direction = 1u);
}
