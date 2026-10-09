#pragma once
#include "game_state.hpp"
#include <array>
#include <cstdint>
#include <filesystem>
#include <span>
#include <vector>
namespace sm {
class EnhancedShip {
public:
    explicit EnhancedShip(const std::filesystem::path& sheet);
    void draw(std::vector<std::uint32_t>& image,const Entity64& player) const;
    void draw_engine(std::vector<std::uint32_t>& image,const Entity64& player,
                     unsigned frame,unsigned stage_frame) const;
    void draw_options(std::vector<std::uint32_t>& image,std::span<const Entity64> options,
                      unsigned frame) const;
private:
    struct Bounds {unsigned x=0,y=0,w=0,h=0;};
    unsigned width_=0,height_=0;
    std::vector<std::uint8_t> rgba_;
    std::array<Bounds,3> poses_{};
};
}
