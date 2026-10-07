#include "enhanced_background.hpp"
#include <algorithm>
#include <cmath>
namespace sm {
void enhance_stage1_opening(std::vector<std::uint32_t>& pixels,
                            unsigned camera_samples,unsigned ground_samples,double strength) {
    if(pixels.size()!=1024u*848u || strength<=0) return;
    const auto source=pixels;
    auto luminance=[](std::uint32_t c) {
        return (double((c>>16)&255)*0.23+double((c>>8)&255)*0.49+double(c&255)*0.28);
    };
    for(unsigned y=112;y<848;++y) for(unsigned x=0;x<1024;++x) {
        const unsigned i=y*1024+x;const auto c=source[i];
        const double r=(c>>16)&255,g=(c>>8)&255,b=c&255;
        if(r+g+b==0) continue; // retain the ROM's silhouette and open space
        const bool rock=y>=784;
        const unsigned wx=x+(rock?ground_samples:camera_samples);
        const bool blue=b>r*1.3 && b>g*1.3;
        const double l=luminance(c);
        // Fine brushed metal, sampled in world coordinates rather than screen
        // coordinates. No random/time noise: quarter-pixel scrolling stays calm.
        const unsigned hash=(wx*73856093u)^(y*19349663u);
        const double grain=(int((hash^(hash>>13))&15u)-7)*0.36;
        const double brush=std::sin(y*1.71+wx*0.018)*1.5;
        const double reflection=std::sin((y%128u)*0.0245)*8.0;
        const double above=luminance(source[(y-1)*1024+x]);
        const double below=y+1<848?luminance(source[(y+1)*1024+x]):l;
        const double left=x?luminance(source[i-1]):l;
        const double right=x+1<1024?luminance(source[i+1]):l;
        // One output-pixel bevels add highlights inside each ROM surface;
        // they do not expand walls or change any collision geometry.
        const double bevel=std::clamp((l-above)*0.32+(l-left)*0.16,-14.0,24.0)
            -std::clamp((l-below)*0.20+(l-right)*0.10,0.0,18.0);
        const double detail=grain+brush+reflection+bevel;
        double nr,ng,nb;
        if(blue && !rock) {
            // Deep blue titanium, with cool steel faces and cyan seams.
            nr=8+l*0.42+detail;ng=15+l*0.66+detail;nb=30+l*0.98+detail;
            if(b>170 && g<100 && (y%32u)<2u) {nr+=12;ng+=38;nb+=24;}
            if(l>36 && (wx%128u)==15u) {nr+=3;ng+=8;nb+=12;}
        } else {
            nr=r*0.95+detail;ng=g+detail;nb=b*1.04+detail;
        }
        auto blend=[&](double original,double enhanced) {
            return unsigned(std::clamp(std::lround(original+(std::clamp(enhanced,0.0,255.0)-original)*strength),0l,255l));
        };
        pixels[i]=0xff000000u|(blend(r,nr)<<16)|(blend(g,ng)<<8)|blend(b,nb);
    }
}
}
