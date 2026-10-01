#include "runtime.hpp"
#include <algorithm>

namespace sm {
LevelRuntime::LevelRuntime(const LevelMap& level, unsigned continuation_extent_px)
    : world_extent_px_(std::max(level.width_tiles * 8u, continuation_extent_px)) {
    events_.reserve(level.commands.size());
    for (const auto& c : level.commands) {
        RuntimeEvent e;
        e.world_x = c.world_x;
        e.command = c.command;
        e.payload = c.payload;
        events_.push_back(std::move(e));
    }
}

void LevelRuntime::reset() noexcept {
    stream_samples_ = 0;
    camera_half_pixels_ = 0;
    next_event_ = 0;
    finished_ = false;
    fired_.clear();
}

unsigned LevelRuntime::camera_samples() const noexcept {
    const unsigned world_px = world_extent_px_;
    const unsigned max_camera_px = world_px > 256u ? world_px - 256u : 0u;
    const unsigned samples = (camera_half_pixels_ * 3u) / 2u;
    return std::min(samples, max_camera_px * 3u);
}

unsigned LevelRuntime::right_tile(unsigned viewport_px) const noexcept {
    const unsigned right_samples = camera_samples() + viewport_px * 3u - 1u;
    return right_samples / 24u;
}

std::span<const RuntimeEvent> LevelRuntime::step_60hz() {
    fired_.clear();
    if (finished_) return fired_;
    const unsigned old_x = stream_samples_ / 3u;
    const unsigned max_x = world_extent_px_;
    if (stream_samples_ < max_x * 3u)
        stream_samples_ = std::min(stream_samples_ + 2u, max_x * 3u);
    const unsigned new_x = stream_samples_ / 3u;

    const unsigned max_camera_px = max_x > 256u ? max_x - 256u : 0u;
    if (camera_half_pixels_ < max_camera_px * 2u)
        ++camera_half_pixels_; // exactly 0.5 visible pixel/frame
    while (next_event_ < events_.size() && events_[next_event_].world_x <= new_x) {
        if (events_[next_event_].world_x >= old_x)
            fired_.push_back(events_[next_event_]);
        ++next_event_;
    }
    if (new_x >= max_x && camera_half_pixels_ >= max_camera_px * 2u) finished_ = true;
    return fired_;
}
}
