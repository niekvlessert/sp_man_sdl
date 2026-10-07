#include "enhanced_background.hpp"
#include <algorithm>
#include <cmath>
#include <vector>

namespace sm {
namespace {

struct RGB { double r{},g{},b{}; };
RGB rgb(std::uint32_t c) { return {double((c>>16)&255u),double((c>>8)&255u),double(c&255u)}; }
std::uint32_t pack(double r,double g,double b) {
    const auto q=[](double v){return unsigned(std::clamp(std::lround(v),0l,255l));};
    return 0xff000000u|(q(r)<<16)|(q(g)<<8)|q(b);
}
bool dark(std::uint32_t c) {
    const auto p=rgb(c);return p.r+p.g+p.b<18.0;
}
bool blue(std::uint32_t c) {
    const auto p=rgb(c);return p.b>p.r*1.18&&p.b>p.g*1.08&&p.b>28.0;
}
bool red(std::uint32_t c) {
    const auto p=rgb(c);return p.r>p.g*1.42&&p.r>p.b*1.28&&p.r>42.0;
}
double lum(std::uint32_t c) {
    const auto p=rgb(c);return p.r*0.23+p.g*0.49+p.b*0.28;
}

std::vector<std::uint32_t> scale2x(const std::vector<std::uint32_t>& in,unsigned w,unsigned h) {
    std::vector<std::uint32_t> out(w*2u*h*2u);
    auto at=[&](int x,int y) {
        x=std::clamp(x,0,int(w)-1);y=std::clamp(y,0,int(h)-1);
        return in[unsigned(y)*w+unsigned(x)];
    };
    for(unsigned y=0;y<h;++y) for(unsigned x=0;x<w;++x) {
        const auto B=at(int(x),int(y)-1),D=at(int(x)-1,int(y));
        const auto E=at(int(x),int(y)),F=at(int(x)+1,int(y)),H=at(int(x),int(y)+1);
        auto e0=E,e1=E,e2=E,e3=E;
        if(B!=H&&D!=F) {
            if(D==B) e0=D;
            if(B==F) e1=F;
            if(D==H) e2=D;
            if(H==F) e3=F;
        }
        const unsigned ow=w*2u,ox=x*2u,oy=y*2u;
        out[oy*ow+ox]=e0;out[oy*ow+ox+1u]=e1;
        out[(oy+1u)*ow+ox]=e2;out[(oy+1u)*ow+ox+1u]=e3;
    }
    return out;
}

void upscale_region(const std::vector<std::uint32_t>& source,
                    std::vector<std::uint32_t>& out,
                    unsigned y0,unsigned y1,unsigned camera,double strength) {
    constexpr unsigned screen_w=1024u;
    constexpr int margin=3;
    const int logical_y0=int(y0/4u)-margin;
    const int logical_y1=int((y1-1u)/4u)+margin+1;
    const int logical_x0=int(camera/4u)-margin;
    const int logical_x1=int((camera+screen_w-1u)/4u)+margin+1;
    const unsigned bw=unsigned(logical_x1-logical_x0+1);
    const unsigned bh=unsigned(logical_y1-logical_y0+1);

    std::vector<std::uint32_t> base(bw*bh,0xff000000u);
    for(unsigned by=0;by<bh;++by) {
        const int vy=logical_y0+int(by);
        const int sy=std::clamp(vy*4+2,112,847);
        for(unsigned bx=0;bx<bw;++bx) {
            const int ux=logical_x0+int(bx);
            const int sx=std::clamp(ux*4+2-int(camera),0,1023);
            base[by*bw+bx]=source[unsigned(sy)*screen_w+unsigned(sx)];
        }
    }

    const auto x2=scale2x(base,bw,bh);
    const auto x4=scale2x(x2,bw*2u,bh*2u);
    const unsigned hw=bw*4u,hh=bh*4u;
    const int crop_x=int(camera)-logical_x0*4;
    const int crop_y=int(y0)-logical_y0*4;

    auto hd=[&](int x,int y) {
        x=std::clamp(x,0,int(hw)-1);y=std::clamp(y,0,int(hh)-1);
        return x4[unsigned(y)*hw+unsigned(x)];
    };

    for(unsigned y=y0;y<y1;++y) for(unsigned x=0;x<screen_w;++x) {
        const int hx=crop_x+int(x),hy=crop_y+int(y-y0);
        const auto c=hd(hx,hy);
        if(dark(c)){out[y*screen_w+x]=0xff000000u;continue;}

        const auto p=rgb(c);
        const auto l=hd(hx-1,hy),r=hd(hx+1,hy),u=hd(hx,hy-1),d=hd(hx,hy+1);
        const bool le=l!=c,re=r!=c,ue=u!=c,de=d!=c;

        // One-HD-pixel bevels: these are new detail that did not exist in the
        // 256x212 source, while Scale4x supplies the higher-resolution contours.
        double bevel=0.0;
        if(le) bevel+=9.0;if(ue) bevel+=12.0;
        if(re) bevel-=5.5;if(de) bevel-=7.0;

        const unsigned wx=x+camera;
        const unsigned h=(wx*73856093u)^(y*19349663u)^((wx>>4u)*83492791u);
        const double grain=(int((h^(h>>13))&7u)-3)*0.46;
        const double brush=std::sin(double(wx)*0.61+double(y)*0.23)*0.72+
                           std::sin(double(wx)*0.17-double(y)*0.71)*0.46;

        // True HD surface detail: each original 8x8 tile-sized area gets a
        // deterministic one-sample recessed seam and occasional rivet. These
        // lines exist only at 1024-wide output resolution, so the enhanced
        // mode gains real fine detail instead of merely recolouring pixels.
        const unsigned tx=wx>>5u,ty=y>>5u;
        const unsigned th=(tx*1103515245u)^(ty*2654435761u);
        const unsigned mx=wx&31u,my=y&31u;
        const unsigned vx=6u+((th>>3u)&15u),seam_y=6u+((th>>11u)&15u);
        double panel=0.0;
        if(mx==vx && my>3u && my<28u) panel-=11.5;
        else if(mx==vx+1u && my>3u && my<28u) panel+=4.5;
        if(my==seam_y && mx>3u && mx<28u) panel-=9.5;
        else if(my==seam_y+1u && mx>3u && mx<28u) panel+=3.8;
        if((th&3u)==0u && mx==((th>>17u)&23u)+4u && my==((th>>22u)&23u)+4u)
            panel+=12.0;

        double nr=p.r,ng=p.g,nb=p.b;
        if(blue(c)) {
            // Preserve the original saturated navy/cobalt palette. Only the
            // material response changes: cool bevels and fine machined detail.
            const double detail=bevel+grain+brush+panel;
            nr=p.r+detail*0.68;
            ng=p.g+detail*0.84;
            nb=p.b+detail*1.00;
            if(lum(c)>70.0) {
                const double spec=std::pow(std::max(0.0,std::sin(double(wx)*0.041+
                                                                double(y)*0.019)),28.0);
                nr+=spec*2.0;ng+=spec*4.0;nb+=spec*7.0;
            }
        } else if(red(c)) {
            nr=p.r+bevel*0.72+grain*0.2;
            ng=p.g+bevel*0.54+grain*0.2;
            nb=p.b+bevel*0.48+grain*0.2;
        } else {
            const double detail=bevel+grain+brush*0.3;
            nr=p.r+detail*0.92;ng=p.g+detail*0.96;nb=p.b+detail;
        }

        // Do not recolour the art: even at maximum enhancement the ROM colour
        // contributes 88%, which keeps Stage 1 immediately recognisable.
        const double amount=std::clamp(strength,0.0,1.0)*0.88;
        out[y*screen_w+x]=pack(p.r+(nr-p.r)*amount,
                               p.g+(ng-p.g)*amount,
                               p.b+(nb-p.b)*amount);
    }
}
}

void enhance_stage1_opening(std::vector<std::uint32_t>& pixels,
                            unsigned camera_samples,unsigned ground_samples,double strength) {
    if(pixels.size()!=1024u*848u||strength<=0.0) return;
    const auto source=pixels;
    // Main hull and independently moving rock strip are reconstructed separately
    // so both retain their native 60 Hz world-space scroll rates.
    upscale_region(source,pixels,112u,784u,camera_samples,strength);
    upscale_region(source,pixels,784u,848u,ground_samples,strength);
}
}
