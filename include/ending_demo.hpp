#pragma once
#include "title_animation.hpp"
#include <utility>

namespace sm {
// Original bitmap command sequence captured from the cartridge at 60 Hz.
class EndingDemo {
public:
    explicit EndingDemo(const std::filesystem::path& directory);
    void reset() noexcept { elapsed_=0; }
    void advance(double seconds);
    unsigned frame_index() const noexcept;
    unsigned music_track() const noexcept; // 0 means silence.
    unsigned music_request() const noexcept;
    bool finished() const noexcept;
    const std::vector<std::uint32_t>& pixels() { return animation_.frame(frame_index()); }
    unsigned frame_count() const noexcept { return animation_.frame_count(); }
    unsigned fps() const noexcept { return animation_.fps(); }
private:
    TitleAnimation animation_;
    std::vector<std::pair<unsigned,unsigned>> music_cues_;
    double elapsed_=0;
};
}
