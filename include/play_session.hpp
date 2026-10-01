#pragma once
#include "spawn.hpp"
#include "runtime.hpp"
#include "stage0_enemies.hpp"
#include "play_sound.hpp"
#include "stage0_combat.hpp"

namespace sm {
struct PlayerInput {
    bool up=false, down=false, left=false, right=false, fire=false;
    bool fire_pressed=false; // latched SDL edge, including taps between ticks
};

// Native subset of bank02: basic ship and forward weapon, before power-ups.
void move_player(const Rom& rom, Entity64& player, std::uint8_t directions,
                 std::uint8_t speed_level = 0);
void initialize_basic_shot(const Rom& rom, const Entity64& player, Entity64& shot);
void initialize_primary_shot(const Rom& rom,const Entity64& player,Entity64& shot,
                             unsigned power_level,bool wave);
void advance_shot(Entity64& shot) noexcept;
std::array<std::uint8_t,24*48> compose_stage0_horizontal_tiles(
    const LevelMap& level, unsigned stream_camera_pixels);

class PlaySession {
public:
    explicit PlaySession(const Rom& rom);
    void reset();
    void seek_decile(unsigned step); // 0=start, 9=90% of stage0's route to its fight gate
    void step_60hz(PlayerInput input);
    std::vector<std::uint32_t> render();
    const GameState& state() const noexcept { return game_; }
    std::span<const Entity64> shots() const noexcept { return shots_; }
    unsigned frame() const noexcept { return frame_; }
    unsigned camera_pixels() const noexcept { return camera_half_pixels_ / 2; }
    bool at_fight_gate() const noexcept { return background_.gated(); }
    std::span<const PlaySound> sound_events() const noexcept { return sound_events_; }
    const PlayerUpgrades& upgrades() const noexcept {return combat_.upgrades();}
    std::span<const Entity64> enemy_bullets() const noexcept {return combat_.bullets();}
private:
    const Rom& rom_;
    LevelMap visual_level_;
    LevelRuntime stream_runtime_;
    Screen4Snapshot video_;
    StageSpawnStream spawns_;
    Stage0BackgroundStream background_;
    Stage0Enemies enemies_;
    Stage0Combat combat_;
    Stage0Screen4Presenter presenter_;
    GameState game_;
    std::array<Entity64, 3> shots_{}; // $CC40/$CC60/$CC80, original basic weapon pool
    unsigned frame_=0, camera_half_pixels_=0, logic_start_frame_=0;
    bool fire_was_down_=false;
    unsigned level_frames_=0;
    std::array<Entity64,6> option_shots_{};
    std::array<Entity64,2> options_{};
    std::array<Entity64,48> player_history_{};
    std::vector<PlaySound> sound_events_; // events from the most recent simulation tick
};
}
