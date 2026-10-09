#pragma once
#include "play_session.hpp"
#include <map>
#include <memory>

namespace sm {
// Checkpoints retain RNG, enemies, projectiles and streaming state. Input
// replay fills the gaps, so rewinding also restores the player's actions.
class PlayTimeline {
public:
    explicit PlayTimeline(const Rom& rom);
    PlaySession& session() noexcept { return *session_; }
    void reset(unsigned stage=0);
    void set_invulnerable(bool enabled);
    void toggle_upgrades();
    void jump(unsigned decile);
    void step(PlayerInput input);
    void scrub(int frames);
private:
    void advance(PlayerInput input);
    void restore(unsigned frame);
    bool invulnerable_=false;
    const Rom& rom_;
    std::unique_ptr<PlaySession> session_;
    std::vector<PlayerInput> inputs_;
    std::map<unsigned,std::unique_ptr<PlaySession>> checkpoints_;
    std::map<unsigned,bool> loadout_events_;
};
}
