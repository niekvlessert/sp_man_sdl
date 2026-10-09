#pragma once
#include <algorithm>
#include <cmath>
namespace sm {
// Frame 255 is the cartridge's transition from Konami to Space Manbow.
class TitleFlow {
public:
    TitleFlow(unsigned count,unsigned fps,unsigned ready=560u)
        :count_(count),fps_(fps),ready_(std::min(ready,count-1u)) {}
    void advance(double seconds) noexcept {
        if(!menu_ && std::isfinite(seconds) && seconds>0)
            elapsed_=std::min(elapsed_+seconds,double(count_-1u)/fps_);
    }
    void press_space() noexcept {
        if(prompt()) menu_=true;
        else if(frame()<konami_end_frame) elapsed_=double(konami_end_frame)/fps_;
        // Space Manbow's logo is always shown; an early press is consumed.
    }
    unsigned frame() const noexcept {return std::min(count_-1u,unsigned(elapsed_*fps_));}
    bool prompt() const noexcept {return !menu_ && frame()>=ready_;}
    bool menu() const noexcept {return menu_;}
    void show_menu() noexcept {elapsed_=double(count_-1u)/fps_;menu_=true;}
    void show_prompt() noexcept {elapsed_=double(count_-1u)/fps_;menu_=false;}
    void replay_title() noexcept {elapsed_=double(konami_end_frame)/fps_;menu_=false;}
    void reset() noexcept {elapsed_=0;menu_=false;}
    static constexpr unsigned konami_end_frame=255u;
private:
    unsigned count_,fps_,ready_;
    double elapsed_=0;
    bool menu_=false;
};
}
