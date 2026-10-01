#pragma once
#include "level.hpp"
#include <cstdint>
#include <span>
#include <vector>

namespace sm {
struct RuntimeEvent {
    unsigned world_x = 0;
    std::uint8_t command = 0;
    std::vector<std::uint8_t> payload;
};

class LevelRuntime {
public:
    explicit LevelRuntime(const LevelMap& level, unsigned continuation_extent_px = 0);
    void reset() noexcept;
    std::span<const RuntimeEvent> step_60hz();

    // Two independently proven rates:
    // - level/ring stream cursor: 2/3 pixel per 60-Hz frame (2 samples at 3x)
    // - visible camera scroll:    1/2 pixel per 60-Hz frame
    // The old preview incorrectly used the stream rate for the camera.
    unsigned stream_samples() const noexcept { return stream_samples_; }
    double stream_x() const noexcept { return double(stream_samples_) / 3.0; }
    unsigned camera_half_pixels() const noexcept { return camera_half_pixels_; }
    unsigned camera_samples() const noexcept;
    double camera_x() const noexcept { return double(camera_half_pixels_) / 2.0; }
    unsigned left_tile() const noexcept { return camera_half_pixels_ / 16u; }
    unsigned right_tile(unsigned viewport_px = 256) const noexcept;
    bool finished() const noexcept { return finished_; }

private:
    unsigned world_extent_px_ = 0;
    std::vector<RuntimeEvent> events_;
    std::vector<RuntimeEvent> fired_;
    unsigned stream_samples_ = 0;
    unsigned camera_half_pixels_ = 0;
    std::size_t next_event_ = 0;
    bool finished_ = false;
};
}
