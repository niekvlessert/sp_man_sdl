#include "enhanced_ship.hpp"
#include <png.h>
#include <algorithm>
#include <cmath>
#include <stdexcept>
namespace sm {
EnhancedShip::EnhancedShip(const std::filesystem::path& path) {
    png_image png{};png.version=PNG_IMAGE_VERSION;
    if(!png_image_begin_read_from_file(&png,path.string().c_str()))
        throw std::runtime_error("Enhanced ship: "+std::string(png.message));
    png.format=PNG_FORMAT_RGBA;width_=png.width;height_=png.height;
    if(width_%3u || width_/3u!=height_) {png_image_free(&png);throw std::runtime_error("Enhanced ship needs three square cells");}
    rgba_.resize(PNG_IMAGE_SIZE(png));
    if(!png_image_finish_read(&png,nullptr,rgba_.data(),0,nullptr)) {
        const std::string error=png.message;png_image_free(&png);throw std::runtime_error(error);
    }
    png_image_free(&png);
    const unsigned cell=width_/3u;
    for(unsigned pose=0;pose<3;++pose) {
        unsigned l=width_,t=height_,r=0,b=0;
        for(unsigned y=0;y<height_;++y) for(unsigned x=pose*cell;x<(pose+1u)*cell;++x)
            if(rgba_[(y*width_+x)*4u+3u]>12u) {l=std::min(l,x);t=std::min(t,y);r=std::max(r,x);b=std::max(b,y);}
        if(l>r || t>b) throw std::runtime_error("Enhanced ship contains an empty pose");
        poses_[pose]={l,t,r-l+1u,b-t+1u};
    }
}
void EnhancedShip::draw_engine(std::vector<std::uint32_t>& out,const Entity64& player,
                               unsigned frame,unsigned stage_frame) const {
    if(!player.active() || player.type()!=1u || player.state()!=0u || player.raw[5]>=6u || out.size()!=1024u*848u) return;
    const unsigned pose=std::min<unsigned>(player.raw[5],2u);
    const int nozzle_x=int(std::int16_t(player.x_fixed()))/8+44;
    const double nozzle_y=int(std::int16_t(player.y_fixed()))/8+(pose==1u?139:pose==2u?149:144);
    // A bright entry burn contracts into a small live exhaust. Drive it from
    // simulation frames so pausing and timeline replay keep the same flame.
    const double entry=stage_frame<72u?std::pow(1.0-stage_frame/72.0,2.0):0.0;
    const double time=frame*0.73;
    const double pulse=0.5+0.5*std::sin(time);
    const double length=43.0+11.0*pulse+entry*260.0;
    auto glow=[&](int x,int y,double r,double g,double b) {
        if(x<0 || x>=1024 || y<112 || y>=848) return;
        auto& c=out[unsigned(y)*1024u+unsigned(x)];
        auto add=[&](unsigned shift,double light) {
            const double old=(c>>shift)&255u;
            return unsigned(std::clamp(std::lround(old+(255.0-old)*std::clamp(light,0.0,1.0)),0l,255l));
        };
        c=0xff000000u|(add(16,r)<<16)|(add(8,g)<<8)|add(0,b);
    };
    for(int x=std::max(0,nozzle_x-int(std::ceil(length)));x<=nozzle_x+8;++x) {
        const double distance=std::max(0,nozzle_x-x),u=distance/length;
        const double envelope=std::pow(std::max(0.0,1.0-u),0.65);
        const double centre=nozzle_y+std::sin(distance*0.16-time)*1.5*u;
        const double radius=(4.2+2.0*pulse+entry*5.0)*envelope+0.5;
        for(int y=std::max(112,int(centre)-28);y<=std::min(847,int(centre)+28);++y) {
            const double dy=y-centre;
            const double halo=std::exp(-dy*dy/(radius*radius*5.0))*envelope*0.42;
            const double flame=std::exp(-dy*dy/(radius*radius))*envelope;
            const double core=std::exp(-dy*dy/(radius*radius*0.18))*envelope;
            const double ripple=0.86+0.14*std::sin(distance*0.42+time*2.0);
            glow(x,y,core*0.83+halo*0.18,core*0.94+flame*0.55*ripple,
                 halo+flame*0.94*ripple);
        }
    }
    // Short moving filaments in the entry wake give direction to the glow.
    if(entry>0.01) for(unsigned i=0;i<9u;++i) {
        const double travel=std::fmod(frame*9.0+i*31.0,length);
        const int x=nozzle_x-int(travel);
        const int y=int(nozzle_y)+int(i%3u)-1;
        for(int tail=0;tail<12;++tail)
            glow(x-tail,y,entry*0.28*(1-tail/12.0),entry*0.55*(1-tail/12.0),entry*(1-tail/12.0));
    }
}
void EnhancedShip::draw_options(std::vector<std::uint32_t>& out,std::span<const Entity64> options,
                                unsigned frame) const {
    if(out.size()!=1024u*848u) return;
    for(unsigned index=0;index<options.size();++index) {
        const auto& option=options[index];
        if(!option.active() || option.type()!=2u) continue;
        // The original option occupies a 16x16 SAT cell at +7,+21.
        // Keep its centre, follow-mode position and shot origins intact.
        const double cx=int(std::int16_t(option.x_fixed()))/8.0+60.0;
        const double cy=int(std::int16_t(option.y_fixed()))/8.0+116.0;
        const double angle=frame*0.105+index*3.141592653589793;
        const double ca=std::cos(angle),sa=std::sin(angle);
        for(int y=int(cy)-36;y<=int(cy)+36;++y) for(int x=int(cx)-36;x<=int(cx)+36;++x) {
            if(x<0 || x>=1024 || y<112 || y>=848) continue;
            const double dx=x+0.5-cx,dy=y+0.5-cy,rad=std::hypot(dx,dy);
            double alpha=0,r=0,g=0,b=0;
            auto layer=[&](double opacity,double red,double green,double blue) {
                opacity=std::clamp(opacity,0.0,1.0);
                r=red*opacity+r*(1-opacity);g=green*opacity+g*(1-opacity);b=blue*opacity+b*(1-opacity);
                alpha=opacity+alpha*(1-opacity);
            };
            layer(std::exp(-rad*rad/480.0)*0.20,25,95,255);
            // Spherical blue energy core, lit from the upper left.
            if(rad<18.5) {
                const double z=std::sqrt(std::max(0.0,1-rad*rad/(18.5*18.5)));
                const double light=std::clamp(z*0.8-dx*0.025-dy*0.03,0.0,1.0);
                const double spec=std::exp(-((dx+5)*(dx+5)+(dy+6)*(dy+6))/18.0);
                layer(std::min(1.0,18.5-rad),18+light*45+spec*170,
                    65+light*115+spec*90,140+light*110);
            }
            // Rotating titanium cage: front and back arcs have different
            // lighting, with three cyan nodes that orbit at video cadence.
            const double qx=dx*ca+dy*sa,qy=-dx*sa+dy*ca;
            const double ring=std::sqrt(qx*qx+qy*qy/0.70);
            const double edge=std::clamp(3.3-std::abs(ring-24.0),0.0,1.0);
            const double rim_light=std::clamp(0.55-dy*0.015-dx*0.010+qy*0.012,0.2,1.0);
            layer(edge,55+rim_light*170,70+rim_light*165,95+rim_light*150);
            const double inner=std::clamp(1.1-std::abs(ring-21.0),0.0,1.0);
            layer(inner,15,38,70);
            for(unsigned node=0;node<3;++node) {
                const double a=angle+node*2.094395102393195;
                const double nx=24*std::cos(a),ny=20*std::sin(a);
                const double d=std::hypot(dx-nx,dy-ny);
                layer(std::clamp(3.0-d,0.0,1.0),130,235,255);
            }
            const auto bg=out[unsigned(y)*1024u+unsigned(x)];
            auto channel=[&](double v,unsigned shift) {
                return unsigned(std::clamp(std::lround(v+double((bg>>shift)&255u)*(1-alpha)),0l,255l));
            };
            out[unsigned(y)*1024u+unsigned(x)]=0xff000000u|(channel(r,16)<<16)|(channel(g,8)<<8)|channel(b,0);
        }
    }
}
void EnhancedShip::draw(std::vector<std::uint32_t>& out,const Entity64& player) const {
    if(!player.active() || player.type()!=1u || player.state()!=0u || player.raw[5]>=6u || out.size()!=1024u*848u) return;
    const unsigned pose=std::min<unsigned>(player.raw[5],2u);
    const auto crop=poses_[pose];
    // Exactly the ROM SAT bounds: +7 X, +24 Y, 19x20 pixels in neutral;
    // bank frames sit one line lower and are 19x18. Collision stays original.
    const int ox=(int(std::int16_t(player.x_fixed()))*4)/32+28;
    const int oy=(int(std::int16_t(player.y_fixed()))*4)/32+(pose?100:96);
    const unsigned w=76u,h=pose?72u:80u;
    for(unsigned y=0;y<h;++y) for(unsigned x=0;x<w;++x) {
        const int dx=ox+int(x),dy=oy+int(y);
        if(dx<0 || dx>=1024 || dy<112 || dy>=848) continue;
        // Bilinear samples in premultiplied alpha prevent dark edge fringes.
        const double sx=crop.x+(double(x)+0.5)*crop.w/w-0.5;
        const double sy=crop.y+(double(y)+0.5)*crop.h/h-0.5;
        const int ix=int(std::floor(sx)),iy=int(std::floor(sy));
        double a=0,r=0,g=0,b=0;
        for(int yy=0;yy<2;++yy) for(int xx=0;xx<2;++xx) {
            const unsigned px=unsigned(std::clamp(ix+xx,int(crop.x),int(crop.x+crop.w-1)));
            const unsigned py=unsigned(std::clamp(iy+yy,int(crop.y),int(crop.y+crop.h-1)));
            const auto* p=&rgba_[(py*width_+px)*4u];
            const double weight=(xx?sx-ix:1-(sx-ix))*(yy?sy-iy:1-(sy-iy));
            const double alpha=p[3]/255.0*weight;
            a+=alpha;r+=p[0]*alpha;g+=p[1]*alpha;b+=p[2]*alpha;
        }
        const auto bg=out[unsigned(dy)*1024u+unsigned(dx)];
        auto channel=[&](double v,unsigned shift){return unsigned(std::clamp(std::lround(v+double((bg>>shift)&255u)*(1-a)),0l,255l));};
        out[unsigned(dy)*1024u+unsigned(dx)]=0xff000000u|(channel(r,16)<<16)|(channel(g,8)<<8)|channel(b,0);
    }
}
}
