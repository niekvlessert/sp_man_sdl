#include "enhanced_weapons.hpp"
#include <algorithm>
#include <cmath>
namespace sm {
namespace {
struct Color {double r=0,g=0,b=0,a=0;};
double clamp(double value) {return std::clamp(value,0.0,1.0);}
}
void composite_enhanced_weapons(std::vector<std::uint32_t>& image,
                                std::span<const std::uint32_t> layer,unsigned frame,
                                WeaponLook look,int direction) {
    constexpr int width=1024,height=848,margin=7;
    if(image.size()!=width*height || layer.size()!=image.size()) return;
    int l=width,r=-1,t=height,b=-1;
    for(int y=112;y<height;++y) for(int x=0;x<width;++x) if(layer[y*width+x]) {
        l=std::min(l,x);r=std::max(r,x);t=std::min(t,y);b=std::max(b,y);
    }
    if(r<l) return;
    // ROM pixels supply only the live footprint/anchor. Draw new continuous
    // geometry inside it; do not enlarge or blur the old bitmap.
    const double cx=(l+r+1)*0.5,cy=(t+b+1)*0.5;
    const double hw=(r-l+1)*0.5,hh=(b-t+1)*0.5;
    const double phase=frame*0.22;
    auto surface=[&](double x,double y) {
        double u=(x-cx)/hw,v=(y-cy)/hh;
        if(direction==1) {u=(cy-y)/hh;v=(x-cx)/hw;}
        if(direction==2) u=-u;
        const double q=std::hypot(u,v);
        Color c;
        if(look==WeaponLook::Wave) {
            // Smooth crescent with a hot inner edge, curved amber shell and
            // small moving sparks in its wake instead of square ROM dots.
            const double ring=std::hypot((u+0.75)/1.7,v);
            const double d=std::abs(ring-0.92);
            c.a=clamp((0.12-d)*std::min(hw,hh));
            const double hot=std::exp(-d*d/0.0018);
            c={1.0,0.30+0.70*hot,0.04+0.84*hot,c.a};
            if(u<-0.85 || std::abs(v)>1.02) c.a=0;
            for(int i=0;i<5;++i) {
                const double sx=-0.78+0.10*std::sin(phase+i*1.7);
                const double sy=(i-2)*0.30+0.02*std::cos(phase+i);
                const double d2=std::hypot((u-sx)*hw,(v-sy)*hh);
                if(d2<1.7) c={1,0.82,0.35,clamp(1.7-d2)};
            }
        } else if(look==WeaponLook::Missile || look==WeaponLook::LargeMissile) {
            const bool large=look==WeaponLook::LargeMissile;
            const double body_half=0.27*(u>0.60?clamp((1-u)/0.40):1.0);
            const double body=std::min((u+0.83)*hw,(body_half-std::abs(v))*hh);
            if(body>0) {
                const double metal=clamp(0.88-std::abs(v+0.08)*2.4);
                c={0.30+0.65*metal,0.39+0.58*metal,0.52+0.45*metal,clamp(body)};
                if(std::abs(v)<0.045 && u<0.65) c=large?Color{0.24,0.70,1,c.a}:Color{0.95,0.13,0.10,c.a};
                if(u>0.62) c={0.46,0.84,1,c.a};
            }
            // Swept titanium fins, with an engraved dark edge and highlight.
            const double av=std::abs(v);
            if(u>=-0.84 && u<=-0.10 && av>0.22) {
                const double outer=0.23+(-u-0.10)*0.97;
                const double fin=std::min({(outer-av)*hh,(av-0.22)*hh,(u+0.84)*hw});
                if(fin>0) {
                    const double shine=clamp(fin/2.5);
                    c={0.32+shine*0.51,0.43+shine*0.47,0.62+shine*0.37,clamp(fin)};
                }
            }
            // Flickering exhaust is part of the visual, never the hitbox.
            if(u<-0.72 && std::abs(v)<0.22) {
                const double flame=clamp((u+1.22)/0.50)*std::exp(-v*v/0.012);
                const double flicker=0.82+0.18*std::sin(phase+u*19);
                if(flame>c.a) c=large?Color{0.4,0.85,1,flame*flicker}:Color{1,0.70,0.14,flame*flicker};
            }
        } else if(look==WeaponLook::Burst) {
            const double d=std::abs(q-0.80);
            c={0.55,0.87,1,clamp((0.13-d)*std::min(hw,hh))};
        } else {
            const double shape=std::hypot(u,v*(1.0+0.15*u));
            const double coverage=clamp((0.96-shape)*std::min(hw,hh));
            const double core=std::exp(-v*v*9.0)*clamp(1.2-std::abs(u)*0.6);
            c=look==WeaponLook::OptionBolt?Color{0.32+core*0.66,0.75+core*0.25,1,coverage}:
                Color{1,0.43+core*0.57,0.07+core*0.90,coverage};
        }
        return c;
    };
    for(int y=std::max(112,t-margin);y<=std::min(height-1,b+margin);++y)
        for(int x=std::max(0,l-margin);x<=std::min(width-1,r+margin);++x) {
            // Two-by-two coverage samples give true subpixel contours.
            Color color;
            for(double dy:{0.25,0.75}) for(double dx:{0.25,0.75}) {
                const auto s=surface(x+dx,y+dy);
                color.r+=s.r*s.a*0.25;color.g+=s.g*s.a*0.25;
                color.b+=s.b*s.a*0.25;color.a+=s.a*0.25;
            }
            const auto halo_sample=surface(std::clamp(x+0.5,double(l),double(r+1)),
                                            std::clamp(y+0.5,double(t),double(b+1)));
            const double distance=std::hypot(std::max({double(l)-x,0.0,double(x-r)}),
                                              std::max({double(t)-y,0.0,double(y-b)}));
            const double halo=halo_sample.a*std::exp(-distance*distance/12.0)*0.26;
            if(color.a==0 && halo<0.001) continue;
            auto& dest=image[y*width+x];
            auto channel=[&](unsigned shift,double value,double light) {
                double bg=((dest>>shift)&255)/255.0;
                bg+=(1-bg)*halo*light;
                return unsigned(std::clamp(std::lround((value+bg*(1-color.a))*255),0l,255l));
            };
            dest=0xff000000u|(channel(16,color.r,halo_sample.r)<<16)|
                (channel(8,color.g,halo_sample.g)<<8)|channel(0,color.b,halo_sample.b);
        }
}
}
