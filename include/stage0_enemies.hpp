#pragma once
#include "spawn.hpp"
#include "play_sound.hpp"
#include <functional>

namespace sm {
// Native opening-flight handlers, selected by the original $51 wave records.
void initialize_stage0_flyer(const Rom& rom, Entity64& enemy,
    std::uint8_t parameter, unsigned ordinal, unsigned logic_tick,
    const Entity64& player, std::uint8_t parameter2=0, std::uint8_t stage_index=0);
bool stage0_sprite_overlap(const Rom& rom, const Entity64& a, const Entity64& b);
bool rom_player_object_contact(const Rom& rom,const Entity64& player,const Entity64& object);
bool rom_player_bullet_contact(const Rom& rom,const Entity64& player,const Entity64& bullet);
bool rom_player_terrain_contact(const Rom& rom,const Entity64& player,
    const std::function<std::uint8_t(int,int)>& property);
bool step_stage0_blue_enemy(GameState& game,Entity64& enemy);
class Stage0Enemies {
public:
    using TerrainProbe=std::function<std::uint8_t(const Entity64&,int,int)>;
    using TileProbe=std::function<std::uint8_t(const Entity64&,int,int)>;
    using TileWrite=std::function<void(std::uint16_t,std::uint16_t,std::uint8_t)>;
    void reset() noexcept { waves_={};stage_complete_=false;type1a_shot_counter_=0;stage3_parent_prev_x_={};stage3_parent_prev_y_={}; }
    void clear_waves() noexcept { waves_={}; }
    bool spawn(const Rom& rom, const SpawnRecord& record, GameState& game,
               std::uint8_t direction=1);
    void move_60hz(GameState& game,unsigned frame=0,
                   std::vector<PlaySound>* sounds=nullptr);
    // The terminal $64/$6A handler is clocked at 20 Hz in the original.
    void step_gate_20hz(const Rom& rom,GameState& game,unsigned tick,
                         std::vector<PlaySound>* sounds=nullptr,std::uint8_t ca3b=0,std::uint8_t fine_x=0);
    bool stage_complete() const noexcept { return stage_complete_; }
    void step_15hz(const Rom& rom, GameState& game, unsigned tick, std::uint16_t trigger,
                   bool include_gate=true, std::vector<PlaySound>* sounds=nullptr,
                   const TerrainProbe& terrain_probe={},const TileProbe& tile_probe={},
                   const TileWrite& tile_write={},std::uint8_t camera_direction=1u);
    bool destroyed(const Entity64& enemy);
private:
    bool stage_complete_=false;
    std::uint8_t type1a_shot_counter_=0; // CE6B parity used by fixed $57DF
    struct Wave {
        bool active=false,repeat=false,bonus=false;
        std::uint8_t x=0,y=0,count=0,remaining=0,interval=0,timer=0,
            first_timer=0,end_trigger=0,type=0,parameter=0,parameter2=0,ordinal=0,owner=0;
        unsigned alive=0,killed=0;
    };
    std::array<Wave,16> waves_{};
    // The original object scheduler visits linked $3F children before their
    // $3E parent. The native array walks forward, so retain the parent's
    // pre-update anchor to reproduce that one-object-tick linkage lag.
    std::array<std::uint16_t,20> stage3_parent_prev_x_{};
    std::array<std::uint16_t,20> stage3_parent_prev_y_{};
};
}
