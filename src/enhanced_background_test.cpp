#include "enhanced_background.hpp"
#include <array>
#include <algorithm>
#ifdef NDEBUG
#undef NDEBUG
#endif
#include <cassert>
#include <iostream>
int main() {
    constexpr unsigned width=1024,height=848;
    const std::array<unsigned,12> cameras{0,1,2,4,8,9,36,38,2048,2050,2050,2052};
    for(unsigned pass=0;pass<3;++pass) for(unsigned camera:cameras) {
        std::vector<std::uint32_t> source(width*height,0xff000000u);
        constexpr std::array<std::uint32_t,6> colors{0xff000000u,0xff18185au,0xff4545d8u,0xff8c8ce8u,0xff888888u,0xffb00000u};
        for(unsigned y=112;y<height;++y) for(unsigned x=0;x<width;++x) {
            const unsigned world=x+camera*(y>=784?3u:1u);
            source[y*width+x]=colors[((world/16u)^(y/16u))%colors.size()];
        }
        if(pass==2) source[400u*width+500u]=0xffff4444u; // changed geometry/palette
        auto cached=source,reference=source;
        const double strength=pass==1?0.45:1.0;
        sm::enhance_stage1_opening(cached,camera,camera*3u,strength);
        sm::enhance_stage1_opening(reference,camera,camera*3u,strength,false);
        assert(cached==reference);
        assert(std::equal(source.begin(),source.begin()+112u*width,cached.begin()));
    }
    std::vector<std::uint32_t> pixels(width*height,0xff4545d8u);
    const auto unchanged=pixels;
    sm::enhance_stage1_opening(pixels,0,0,0);
    assert(pixels==unchanged);
    std::cout<<"Enhanced background cache: scroll, jumps, repeats, fading, geometry/palette changes PASS\n";
}
