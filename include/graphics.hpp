#pragma once
#include <array>
#include <cstdint>
#include <vector>

namespace sm {
class IndexedSurface {
public:
    IndexedSurface(unsigned w, unsigned h) : w_(w), h_(h), px_(std::size_t(w)*h) {}
    unsigned width() const noexcept { return w_; }
    unsigned height() const noexcept { return h_; }
    std::uint8_t get(unsigned x, unsigned y) const noexcept;
    void set(unsigned x, unsigned y, std::uint8_t c) noexcept;
    void copy_rect(unsigned sx,unsigned sy,unsigned dx,unsigned dy,unsigned w,unsigned h,bool transparent_zero=false);
    const std::vector<std::uint8_t>& pixels() const noexcept { return px_; }
private:
    unsigned w_,h_;
    std::vector<std::uint8_t> px_;
};

// Decode one original Space Manbow planar 8x8 tile. Plane 0 is stored first
// per row; palette maps the 1/2/3-bit source index to a 4-bit colour index.
std::array<std::uint8_t,64> decode_planar_tile(const std::uint8_t* src, unsigned bpp,
                                                const std::uint8_t* palette);

// Native equivalent of the game's AD86 -> V9938 HMMM/LMMM path.
// Coordinates and dimensions are in 8x8 tile units.
void blit_tiles(IndexedSurface& vram, unsigned src_tx,unsigned src_ty,
                unsigned dst_tx,unsigned dst_ty,unsigned tiles_w,unsigned tiles_h,
                bool transparent_zero=false);
}
