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
    void reset();
    void jump(unsigned decile);
    void step(PlayerInput input);
    void scrub(int frames);
private:
    void advance(PlayerInput input);
    void restore(unsigned frame);
    const Rom& rom_;
    std::unique_ptr<PlaySession> session_;
    std::vector<PlayerInput> inputs_;
    std::map<unsigned,std::unique_ptr<PlaySession>> checkpoints_;
    unsigned loadout_frame_=~0u;
};
}
