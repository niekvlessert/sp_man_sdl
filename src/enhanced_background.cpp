#include "enhanced_background.hpp"
#include <algorithm>
#include <cmath>

namespace sm {
namespace {
double luminance(std::uint32_t c) {
    return double((c>>16)&255u)*0.23+double((c>>8)&255u)*0.49+double(c&255u)*0.28;
}
double clamp01(double v) { return std::clamp(v,0.0,1.0); }
double smooth(double a,double b,double x) {
    if(a==b) return x<a?0.0:1.0;
    x=clamp01((x-a)/(b-a));
    return x*x*(3.0-2.0*x);
}
bool dark(std::uint32_t c) {
    return (((c>>16)&255u)+((c>>8)&255u)+(c&255u))<18u;
}
}

void enhance_stage1_opening(std::vector<std::uint32_t>& pixels,
                            unsigned camera_samples,unsigned ground_samples,double strength) {
    if(pixels.size()!=1024u*848u || strength<=0.0) return;
    const auto source=pixels;
    constexpr unsigned W=1024,H=848;

    auto sample=[&](int x,int y)->std::uint32_t {
        x=std::clamp(x,0,int(W)-1);y=std::clamp(y,112,int(H)-1);
        return source[unsigned(y)*W+unsigned(x)];
    };

    for(unsigned y=112;y<H;++y) for(unsigned x=0;x<W;++x) {
        const unsigned i=y*W+x;
        const auto c=source[i];
        const double r=(c>>16)&255u,g=(c>>8)&255u,b=c&255u;
        const bool empty=dark(c);
        const bool rock=y>=784u;
        const unsigned wx=x+(rock?ground_samples:camera_samples);

        // Very faint industrial relief in the empty opening. It is world-locked,
        // so continuous scrolling remains smooth and later stars stay crisp.
        if(empty) {
            if(rock) continue;
            const double f1=std::sin(double(wx)*0.0107+std::sin(double(y)*0.018)*1.35);
            const double f2=std::sin(double(wx)*0.0043-double(y)*0.022+1.7);
            const double filament=std::pow(std::max(0.0,1.0-std::abs(f1)),7.0);
            const double mist=0.5+0.5*f2;
            const double amount=strength*(2.0+8.0*filament+3.0*mist);
            const unsigned nr=unsigned(std::clamp(std::lround(amount*0.54),0l,18l));
            const unsigned ng=unsigned(std::clamp(std::lround(amount*0.60),0l,20l));
            const unsigned nb=unsigned(std::clamp(std::lround(amount*0.68),0l,24l));
            pixels[i]=0xff000000u|(nr<<16)|(ng<<8)|nb;
            continue;
        }

        const double l=luminance(c);
        const bool blue=b>r*1.24 && b>g*1.18;

        double open_neighbour=0.0;
        for(const auto [dx,dy]:{std::pair{-1,0},std::pair{1,0},std::pair{0,-1},std::pair{0,1}})
            if(dark(sample(int(x)+dx,int(y)+dy))) open_neighbour+=0.28;
        open_neighbour=clamp01(open_neighbour);

        const double la=luminance(sample(int(x),int(y)-1));
        const double lb=luminance(sample(int(x),int(y)+1));
        const double ll=luminance(sample(int(x)-1,int(y)));
        const double lr=luminance(sample(int(x)+1,int(y)));
        const double normal_y=std::clamp((la-lb)/46.0,-1.0,1.0);
        const double bevel=std::clamp((l-la)*0.30+(l-ll)*0.18-(l-lb)*0.16-(l-lr)*0.08,-18.0,26.0);

        const unsigned hash=(wx*73856093u)^(y*19349663u)^((wx>>5)*83492791u);
        const double grain=(int((hash^(hash>>13))&31u)-15)*0.20;
        const double brush=std::sin(double(wx)*0.115+double(y)*0.63)*1.8
                          +std::sin(double(wx)*0.031-double(y)*0.19)*1.1;

        // Broad non-parallel fields produce curved biomechanical seams instead
        // of merely recolouring the original square pixels.
        const double curve_phase=double(wx)*0.018+double(y)*0.031
                                +std::sin(double(wx)*0.0048+double(y)*0.011)*2.2;
        const double curve=std::abs(std::sin(curve_phase));
        const double rib=1.0-smooth(0.055,0.20,curve);
        const double groove=1.0-smooth(0.16,0.34,curve);

        // Large staggered ring motifs break up long flat wall faces.
        const int cellx=int(wx/144u),celly=int((y-112u)/112u);
        const double cx=double(cellx*144+72+(celly&1?30:-18));
        const double cy=112.0+double(celly*112+56);
        const double dx=(double(wx)-cx)*0.78,dy=(double(y)-cy);
        const double radius=std::sqrt(dx*dx+dy*dy);
        const double ring=std::exp(-std::pow((radius-38.0)/4.6,2.0));
        const double ring2=std::exp(-std::pow((radius-24.0)/3.6,2.0));

        const double localx=double(wx&63u),localy=double(y&63u);
        const double slot=(localx>10.0 && localx<54.0 &&
                           (std::abs(localy-15.0)<1.4 || std::abs(localy-48.0)<1.2))?1.0:0.0;

        double nr,ng,nb;
        if(rock) {
            const double shade=l*0.78+10.0+bevel+grain+brush*0.45;
            nr=shade*0.86+open_neighbour*34.0;
            ng=shade*0.91+open_neighbour*38.0;
            nb=shade+open_neighbour*46.0;
        } else if(blue) {
            const double shade=13.0+l*0.58+bevel+grain+brush;
            const double chrome=open_neighbour*(82.0+40.0*std::max(0.0,-normal_y))
                               +ring*34.0+ring2*16.0;
            const double recess=(groove-rib)*18.0+slot*16.0;
            nr=shade*0.82+chrome-recess;
            ng=shade*0.91+chrome-recess*0.78;
            nb=shade*1.03+chrome-recess*0.46;

            const double lit=clamp01((rib*0.82+ring*0.62+slot*0.55-open_neighbour*0.9)
                                    *smooth(20.0,76.0,l));
            nr+=lit*112.0;ng+=lit*47.0;nb-=lit*10.0;

            const double spec=std::pow(std::max(0.0,std::sin(double(y)*0.047+double(wx)*0.006)),18.0);
            nr+=spec*18.0;ng+=spec*23.0;nb+=spec*27.0;
        } else {
            const double metal=grain+brush*0.55+bevel+open_neighbour*32.0;
            nr=r*0.88+metal;
            ng=g*0.91+metal;
            nb=b*0.95+metal;
            if(r>g*1.45 && r>b*1.35) { nr+=32.0;ng+=5.0;nb-=4.0; }
        }

        auto blend=[&](double original,double enhanced) {
            const double target=std::clamp(enhanced,0.0,255.0);
            return unsigned(std::clamp(std::lround(original+(target-original)*strength),0l,255l));
        };
        pixels[i]=0xff000000u|(blend(r,nr)<<16)|(blend(g,ng)<<8)|blend(b,nb);
    }
}
}
