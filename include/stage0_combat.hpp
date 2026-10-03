#pragma once
#include "play_sound.hpp"
#include "spawn.hpp"

namespace sm {
struct PlayerUpgrades {
    unsigned power=0,speed=0,options=0;
    bool wave=false,missile=false,missile_armed=false;
    unsigned difficulty(const Rom& rom) const;
    unsigned power_level() const { return power==0?0:(power<9?1:2); }
};
// Original bullet pool $D460 (18 records), damageable cannon handlers and
// pickup selector $7042. The main stage stream retains ownership of scenery.
class Stage0Combat {
public:
    void reset() { bullets_={};opening_bullets_={};upgrades_={};pickup_cursor_=0;turret_count_=0;score_=0; }
    void spawned(Entity64& enemy);
    void step(const Rom& rom,GameState& game,unsigned frame,int camera_dx,int camera_dy,
              std::vector<PlaySound>& sounds);
    void drop(const Rom& rom,Entity64& slot,std::uint16_t x,std::uint16_t y);
    void collect(const Rom& rom,std::uint8_t kind,GameState& game,std::vector<PlaySound>& sounds);
    void blast_bosses(const Rom& rom,GameState& game);
    void clear_vulnerable(const Rom& rom, GameState& game);
    void award_destroyed(const Rom& rom,std::uint8_t original_type);
    unsigned score() const noexcept { return score_; }
    const PlayerUpgrades& upgrades() const {return upgrades_;}
    void clear_upgrades() noexcept { upgrades_={}; }
    void consume_missile() {upgrades_.missile_armed=false;}
    // Native play-test convenience: equivalent to collecting the reusable
    // stage-0 upgrades to their maxima. The one-shot LARGE capsule is kept
    // unarmed so every jump starts with the same repeatable weapon state.
    void set_max_test_loadout() noexcept {
        upgrades_.power=16;upgrades_.speed=4;upgrades_.options=2;
        upgrades_.wave=true;upgrades_.missile=true;upgrades_.missile_armed=false;
    }
    std::span<const Entity64> bullets() const {return bullets_;}
    bool opening_bullet(std::size_t slot) const noexcept { return opening_bullets_[slot]; }
private:
    bool fire(const Rom& rom,const Entity64& source,const Entity64& target,unsigned difficulty,int yoff=0,int xoff=0);
    bool fire_type15_pair(const Entity64& source);
    bool fire_fixed_pattern(const Rom& rom,const Entity64& source,unsigned speed,
                            std::span<const std::uint8_t> headings,int y_cells);
    std::array<Entity64,18> bullets_{};
    std::array<bool,18> opening_bullets_{}; // native origin inherited from launch source
    PlayerUpgrades upgrades_{};
    unsigned pickup_cursor_=0,turret_count_=0,score_=0;
};
}
