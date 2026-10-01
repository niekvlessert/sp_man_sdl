#include "graphics.hpp"
#include <algorithm>

namespace sm {
std::uint8_t IndexedSurface::get(unsigned x,unsigned y) const noexcept {
    return (x<w_ && y<h_) ? px_[std::size_t(y)*w_+x] : 0;
}
void IndexedSurface::set(unsigned x,unsigned y,std::uint8_t c) noexcept {
    if (x<w_ && y<h_) px_[std::size_t(y)*w_+x]=std::uint8_t(c&15u);
}
void IndexedSurface::copy_rect(unsigned sx,unsigned sy,unsigned dx,unsigned dy,unsigned w,unsigned h,bool transparent_zero) {
    // Source/destination can overlap like VDP VRAM copies, so stage the source.
    std::vector<std::uint8_t> tmp(std::size_t(w)*h);
    for (unsigned y=0;y<h;++y) for (unsigned x=0;x<w;++x) tmp[std::size_t(y)*w+x]=get(sx+x,sy+y);
    for (unsigned y=0;y<h;++y) for (unsigned x=0;x<w;++x) {
        const auto c=tmp[std::size_t(y)*w+x];
        if (!transparent_zero || c) set(dx+x,dy+y,c);
    }
}
std::array<std::uint8_t,64> decode_planar_tile(const std::uint8_t* src,unsigned bpp,const std::uint8_t* palette) {
    std::array<std::uint8_t,64> out{};
    if (bpp<1 || bpp>3) return out;
    for (unsigned y=0;y<8;++y) {
        for (unsigned x=0;x<8;++x) {
            unsigned idx=0;
            const unsigned bit=7u-x;
            for (unsigned plane=0;plane<bpp;++plane) {
                const auto v=src[y*bpp+plane];
                idx |= unsigned((v>>bit)&1u)<<plane;
            }
            out[y*8+x]=std::uint8_t(palette[idx]&15u);
        }
    }
    return out;
}

void blit_tiles(IndexedSurface& vram,unsigned sx,unsigned sy,unsigned dx,unsigned dy,unsigned tw,unsigned th,bool transparent_zero) {
    vram.copy_rect(sx*8u,sy*8u,dx*8u,dy*8u,tw*8u,th*8u,transparent_zero);
}
}
