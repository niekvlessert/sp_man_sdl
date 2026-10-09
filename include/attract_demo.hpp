#pragma once
#include "play_session.hpp"
namespace sm {
// Main-menu inactivity only; entering a submenu or handling input resets it.
class AttractDemoCycle {
public:
    static constexpr double idle_seconds=15.0;
    int advance(double elapsed,bool enabled) noexcept;
    void activity() noexcept {idle_=0;}
private:
    double idle_=0;
    unsigned next_=1u; // original $7863 increments initial C919=0 before use
};
// Original bank01 $7877 selectors and bank1F duration/C908/C907 recordings.
class AttractDemo {
public:
    explicit AttractDemo(const Rom& rom):rom_(rom) {}
    void reset(unsigned index);
    void step(); // one original $789C call (20 Hz)
    PlayerInput input() const noexcept;
    unsigned stage() const noexcept {return stage_;}
    unsigned checkpoint() const noexcept {return checkpoint_;}
    unsigned pointer() const noexcept {return pointer_;}
    std::uint8_t countdown() const noexcept {return countdown_;}
    std::uint8_t held() const noexcept {return held_;}
    std::uint8_t pressed() const noexcept {return pressed_;}
    bool finished() const noexcept; // original $7804 pointer+5..7 lookahead
private:
    const Rom& rom_;
    unsigned stage_=0,checkpoint_=0,pointer_=0;
    std::uint8_t countdown_=1,held_=0,pressed_=0;
};
}
