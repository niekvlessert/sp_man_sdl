#pragma once
#include <cstdint>
#include <filesystem>
#include <vector>

namespace sm {
class TitleAnimation {
public:
    explicit TitleAnimation(const std::filesystem::path& path);
    unsigned width() const noexcept { return width_; }
    unsigned height() const noexcept { return height_; }
    unsigned fps() const noexcept { return fps_; }
    unsigned frame_count() const noexcept { return frame_count_; }
    unsigned ready_frame() const noexcept { return ready_frame_; }
    const std::vector<std::uint32_t>& frame(unsigned index);
private:
    std::vector<std::uint8_t> data_;
    std::vector<std::uint32_t> palette_;
    std::vector<std::size_t> offsets_;
    std::vector<std::uint32_t> pixels_;
    unsigned width_=0,height_=0,fps_=0,frame_count_=0;
    unsigned ready_frame_=0;
    unsigned decoded_=~0u;
};
}
