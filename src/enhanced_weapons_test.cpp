#include <algorithm>
#include "rom.hpp"
#include "level.hpp"
#define private public
#include "play_session.hpp"
#undef private
#ifdef NDEBUG
#undef NDEBUG
#endif
#include <cassert>
#include <fstream>
#include <iostream>
int main(int argc,char** argv) {
    assert(argc==2);sm::Rom rom(argv[1]);sm::PlaySession session(rom);session.set_invulnerable(true);
    for(unsigned stage:{0u,1u}) {
    session.reset(stage);
    for(unsigned f=0;f<100;++f) session.step_60hz({});
    session.game_.enemies={};session.game_.player.clear();
    // Include a real enemy projectile: enhanced weapon bloom must leave its
    // appearance and record alone, as well as the fixed HUD.
    auto& enemy=session.combat_.bullets_[0];enemy.type()=0x60u;enemy.flags15()=0x21u;
    enemy.set_x_fixed(0x500);enemy.set_y_fixed(0x500);
    for(unsigned kind=0;kind<11u;++kind) {
        session.shots_={};session.option_shots_={};session.missile_shot_.clear();
        const auto empty=session.render_continuous(false);
        const auto hd_empty=session.render_continuous(false,true);
        sm::Entity64 source;source.type()=1u;source.set_x_fixed(0x1300);source.set_y_fixed(0xa00);
        if(kind<6u) sm::initialize_primary_shot(rom,source,session.shots_[0],kind%3u,kind>=3u);
        else if(kind<9u) {
            auto& shot=session.option_shots_[0];sm::initialize_basic_shot(rom,source,shot);
            shot.raw[3]=std::uint8_t(kind);shot.raw[5]=kind==7u?1u:0u;
        } else if(kind==9u) {
            auto& missile=session.missile_shot_;missile.type()=7u;missile.flags15()=5u;
            missile.set_x_fixed(source.x_fixed());missile.set_y_fixed(source.y_fixed());
        } else for(unsigned i=0;i<2u;++i) {
            auto& missile=session.shots_[i];missile.type()=8u;missile.flags15()=5u;
            missile.raw[5]=i?0u:4u;missile.raw[3]=i?1u:5u;
            missile.set_x_fixed(source.x_fixed());missile.set_y_fixed(source.y_fixed());
        }
        const auto primary=session.shots_;const auto options=session.option_shots_;
        const auto missile=session.missile_shot_.raw,enemy_record=enemy.raw;
        const auto original=session.render_continuous(false);
        const auto hd=session.render_continuous(false,true);
        assert(original!=empty && hd!=hd_empty && original!=hd);
        assert(session.render_continuous(false)==original);
        assert(session.render_continuous(false,true)==hd);
        assert(enemy.raw==enemy_record && session.missile_shot_.raw==missile);
        for(unsigned i=0;i<primary.size();++i) assert(session.shots_[i].raw==primary[i].raw);
        for(unsigned i=0;i<options.size();++i) assert(session.option_shots_[i].raw==options[i].raw);
        int l=1024,r=-1,t=848,b=-1;
        for(int y=112;y<848;++y) for(int x=0;x<1024;++x) if(original[y*1024+x]!=empty[y*1024+x]) {
            l=std::min(l,x);r=std::max(r,x);t=std::min(t,y);b=std::max(b,y);
        }
        assert(r>=l);
        for(int y=0;y<848;++y) for(int x=0;x<1024;++x)
            if(x<l-7 || x>r+7 || y<t-7 || y>b+7 || y<112)
                assert(hd[y*1024+x]==hd_empty[y*1024+x]);
        if(const auto root=std::getenv("SM_WEAPON_PREVIEW")) {
            std::ofstream out(std::string(root)+std::to_string(stage)+"-"+std::to_string(kind)+".ppm",std::ios::binary);
            out<<"P6\n1024 848\n255\n";
            for(auto c:hd)for(int shift:{16,8,0})out.put(char(c>>shift));
        }
    }
    }
    std::cout<<"Enhanced weapons: 11 ROM-backed variants in opening/streamed scenes, original anchors, isolated effects and unchanged combat records PASS\n";
}
