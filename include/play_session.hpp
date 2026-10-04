#pragma once
#include "spawn.hpp"
#include "runtime.hpp"
#include "stage0_enemies.hpp"
#include "play_sound.hpp"
#include <algorithm>
#include "stage0_combat.hpp"

namespace sm {
struct PlayerInput {
    bool up=false, down=false, left=false, right=false, fire=false;
    bool fire_pressed=false; // latched SDL edge, including taps between ticks
    bool option_mode_pressed=false; // original C907 bit5 / M-key rising edge
};

// Native subset of bank02: basic ship and forward weapon, before power-ups.
void move_player(const Rom& rom, Entity64& player, std::uint8_t directions,
                 std::uint8_t speed_level = 0);
void initialize_basic_shot(const Rom& rom, const Entity64& player, Entity64& shot);
void initialize_primary_shot(const Rom& rom,const Entity64& player,Entity64& shot,
                             unsigned power_level,bool wave);
void advance_shot(Entity64& shot) noexcept;
void position_option(const Entity64& player,Entity64& option,unsigned mode) noexcept;
void select_ground_missile_velocity(Entity64& missile,bool surface_below,
                                    bool lower_surface,bool surface_ahead) noexcept;
std::array<std::uint8_t,24*48> compose_stage0_horizontal_tiles(
    const LevelMap& level, unsigned stream_camera_pixels);

class PlaySession {
public:
    explicit PlaySession(const Rom& rom);
    void reset(unsigned stage=0);
    void seek_decile(unsigned step); // 0=start, 9=90% of the selected stage route
    void set_max_test_loadout() noexcept { combat_.set_max_test_loadout(); }
    void set_test_loadout(bool maximum) noexcept;
    void step_60hz(PlayerInput input);
    std::vector<std::uint32_t> render();
    // 512x212 native presentation: two horizontal samples per logical pixel.
    // This allows the streamed world to move by 0.5 logical pixel per 60-Hz
    // frame while screen-space actors/HUD remain on the 256-pixel grid.
    std::vector<std::uint32_t> render_wide();
    std::vector<std::uint32_t> render_smooth(); // 512x848: quarter-pixel Y at 60 Hz
    std::vector<std::uint32_t> render_continuous(); // 1024x848: quarter-pixel X/Y
    const GameState& state() const noexcept { return game_; }
    std::span<const Entity64> shots() const noexcept { return shots_; }
    unsigned stage_index() const noexcept { return stage_index_; }
    unsigned frame() const noexcept { return frame_; }
    unsigned stage_frame() const noexcept { return frame_-stage_start_frame_; }
    bool music_playing() const noexcept { return music_playing_; }
    bool boss_music_active() const noexcept {
        if(!music_playing_) return false;
        if(stage_index_==0u) return camera_pixels()>=4224u;
        if(stage_index_==1u)
            return std::any_of(game_.enemies.begin(),game_.enemies.end(),
                               [](const auto& e){return e.type()==0x7au;});
        if(stage_index_==2u)
            return std::any_of(game_.enemies.begin(),game_.enemies.end(),
                               [](const auto& e){return e.type()==0x3eu || e.type()==0x6au;});
        if(stage_index_==3u)
            return std::any_of(game_.enemies.begin(),game_.enemies.end(),
                               [](const auto& e){return e.type()==0x14u || e.type()==0x6au;});
        if(stage_index_==4u)
            return std::any_of(game_.enemies.begin(),game_.enemies.end(),
                               [](const auto& e){return e.type()==0x77u || e.type()==0x6au;});
        if(stage_index_==5u)
            return std::any_of(game_.enemies.begin(),game_.enemies.end(),
                               [](const auto& e){return e.type()==0x7bu || e.type()==0x6au;});
        if(stage_index_==6u)
            return std::any_of(game_.enemies.begin(),game_.enemies.end(),
                               [](const auto& e){return e.type()==0x43u;});
        return false;
    }
    unsigned camera_pixels() const noexcept { return camera_half_pixels_ / 2; }
    bool at_fight_gate() const noexcept { return background_.gated(); }
    std::span<const PlaySound> sound_events() const noexcept { return sound_events_; }
    const PlayerUpgrades& upgrades() const noexcept {return combat_.upgrades();}
    std::span<const Entity64> enemy_bullets() const noexcept {return combat_.bullets();}
    std::span<const Entity64> options() const noexcept {return options_;}
    std::span<const Entity64> option_shots() const noexcept {return option_shots_;}
    const Entity64& missile_shot() const noexcept { return missile_shot_; }
    bool scene_palette_active() const noexcept { return scene_palette_active_; }
    std::uint8_t scene_palette_phase() const noexcept { return scene_palette_phase_; }
private:
    Entity64 present_carrier(const Entity64& source,unsigned frame) const;
    void begin_next_stage();
    unsigned stage_index_=0,stage_start_frame_=0;
    bool music_playing_=true;
    std::vector<std::uint32_t> render_early_presentation(unsigned x_samples,unsigned y_samples);
    std::vector<std::uint32_t> render_presentation(unsigned x_samples,unsigned y_samples);
    const Rom& rom_;
    LevelMap visual_level_;
    LevelRuntime stream_runtime_;
    Screen4Snapshot video_;
    std::array<std::uint32_t,16> late_normal_palette_{};
    std::array<std::uint32_t,16> tower_normal_palette_{};
    std::array<std::uint32_t,16> tower_flash_palette_{};
    std::array<std::uint32_t,16> vehicle_tower_normal_palette_{};
    std::array<std::uint32_t,16> vehicle_tower_flash_palette_{};
    int bomb_palette_bias_=0;
    unsigned bomb_palette_ticks_=0;
    std::uint8_t boss_hit_timer_=0;   // original CE47
    std::uint8_t boss_palette_flags_=0; // original CE48: bit0 red, bit1 hit flash
    std::uint8_t boss_palette_kind_=0;  // 0, $56 vertical tower, or $64 terminal gate
    bool scene_palette_active_=false;   // original CE60=1 / CE61=1
    std::uint8_t scene_palette_phase_=0; // original CE68, 0..9
    std::uint32_t scene_palette_color_=0xff000000u;
    std::uint32_t scene_base_palette9_=0xff000000u;
    StageSpawnStream spawns_;
    Stage0BackgroundStream background_;
    Stage0Enemies enemies_;
    std::array<Entity64,20> previous_gate_actors_{};
    unsigned presentation_frame_=0;
    Stage0Combat combat_;
    Stage0Screen4Presenter presenter_;
    std::uint8_t prev_fast_ground_phase_=0; // combined CA3A+CA1D for hardware render()
    std::uint8_t prev_fast_ground_ca3a_=0;  // raw CA3A for native 60-Hz strip
    std::uint8_t prev_fast_ground_row_=0;
    std::uint8_t prev_fast_ground_r18_=0;
    std::uint16_t prev_star_x_phase_=0;
    std::uint16_t prev_parallax_phase_=0;
    bool prev_world_phase_valid_=false;
    int render_fast_ground_phase_override_=-1;
    bool render_subpixel_=false;
    bool render_native_wide_=false; // canonical world: no VDP R18/fallback presentation
    GameState game_;
    std::array<Entity64, 3> shots_{}; // $CC40/$CC60/$CC80, original basic weapon pool
    unsigned frame_=0, camera_half_pixels_=0, logic_start_frame_=0;
    bool fire_was_down_=false;
    unsigned level_frames_=0;
    std::array<Entity64,4> option_shots_{};
    Entity64 missile_shot_{}; // $CD20, persistent M/missile weapon pool
    std::array<Entity64,2> options_{};
    unsigned option_mode_=0;
    std::array<Entity64,48> player_history_{};
    std::vector<PlaySound> sound_events_; // events from the most recent simulation tick
};
}
