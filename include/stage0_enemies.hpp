#pragma once
#include "spawn.hpp"
#include "play_sound.hpp"

namespace sm {
// Native opening-flight handlers, selected by the original $51 wave records.
void initialize_stage0_flyer(const Rom& rom, Entity64& enemy,
    std::uint8_t parameter, unsigned ordinal, unsigned logic_tick,
    const Entity64& player);
bool stage0_sprite_overlap(const Rom& rom, const Entity64& a, const Entity64& b);
bool step_stage0_blue_enemy(GameState& game,Entity64& enemy);
class Stage0Enemies {
public:
    void reset() noexcept { waves_={};stage_complete_=false; }
    bool spawn(const Rom& rom, const SpawnRecord& record, GameState& game,
               std::uint8_t direction=1);
    void move_60hz(GameState& game,unsigned frame=0);
    // The terminal $64/$6A handler is clocked at 20 Hz in the original.
    void step_gate_20hz(const Rom& rom,GameState& game,unsigned tick,
                         std::vector<PlaySound>* sounds=nullptr,std::uint8_t ca3b=0,std::uint8_t fine_x=0);
    bool stage_complete() const noexcept { return stage_complete_; }
    void step_15hz(const Rom& rom, GameState& game, unsigned tick, std::uint16_t trigger,
                   bool include_gate=true, std::vector<PlaySound>* sounds=nullptr);
    bool destroyed(const Entity64& enemy);
private:
    bool stage_complete_=false;
    struct Wave {
        bool active=false,repeat=false,bonus=false;
        std::uint8_t x=0,y=0,count=0,remaining=0,interval=0,timer=0,
            first_timer=0,end_trigger=0,type=0,parameter=0,ordinal=0;
        unsigned alive=0,killed=0;
    };
    std::array<Wave,16> waves_{};
};
}
