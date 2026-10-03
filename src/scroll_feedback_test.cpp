#include "rom.hpp"
#include "level.hpp"
#define private public
#include "play_session.hpp"
#undef private
#ifdef NDEBUG
#undef NDEBUG
#endif
#include <cassert>
#include <filesystem>
#include <fstream>
#include <iostream>
#include <set>

namespace {
void capture(const std::filesystem::path& file,const std::vector<std::uint32_t>& image) {
    std::ofstream f(file,std::ios::binary);f<<"P6\n512 848\n255\n";
    for(auto c:image) for(int shift:{16,8,0}) f.put(char(c>>shift));
}
}
int main(int argc,char** argv) {
    if(argc<2 || argc>3) return 2;
    sm::Rom rom(argv[1]);sm::PlaySession s(rom);
    std::filesystem::path out=argc==3?argv[2]:"";
    if(!out.empty()) std::filesystem::create_directories(out);
    std::set<std::string> saved;std::set<unsigned> blue_slots;
    bool killed=false,chain=false;unsigned blue_frames=0;
    while(!s.at_fight_gate()) {
        for(auto& e:s.game_.enemies) if(e.type()==0x56 && !killed && e.raw[10]<16 && e.state()==1) {
            e.raw[4]=255;killed=true;
        }
        s.step_60hz({});assert(s.frame()<10000u);
        for(const auto& e:s.game_.enemies) if(e.type()==0x1e) {
            blue_slots.insert(e.raw[0x2d]);++blue_frames;
            if(!out.empty() && saved.insert("blue").second) capture(out/"blue.ppm",s.render_smooth());
        }
        if(s.frame()%4u) continue;
        auto& b=s.background_;const auto src=b.source_address();
        if(!out.empty() && ((src>=0xa2c7 && src<0xa2e5) || (src>=0xa336 && src<0xa342))) {
            char name[80];std::snprintf(name,sizeof(name),"stream_%04X_%04X_%04X",src,b.world_x(),unsigned(b.world_y())&65535u);
            if(saved.insert(name).second) {
                std::ofstream f(out/(std::string(name)+".bin"),std::ios::binary);
                for(auto v:b.ring_) f.put(char(v));
            }
        }
        for(const auto& e:s.game_.enemies) if(e.type()==0x47 && e.raw[6]==1 && !chain) {
            chain=true;const auto with=s.render_smooth();
            auto& slot=s.game_.enemies[std::size_t(&e-s.game_.enemies.data())];
            const auto original=slot;slot.clear();const auto without=s.render_smooth();slot=original;
            unsigned pixels=0;for(unsigned i=0;i<with.size();++i) pixels+=with[i]!=without[i];
            assert(pixels>20000u); // verify the visible blast, not just its actor state
            if(!out.empty()) capture(out/"chain.ppm",with);
        }
    }
    assert(killed && chain && blue_slots.size()==2u && blue_frames>1000u);
    // At the stopped boss gate the rock strip must advance by exactly two
    // logical pixels (four horizontal samples) on every native video frame.
    s.game_.enemies={};auto previous=s.render_smooth();
    for(unsigned n=0;n<64u;++n) {
        s.step_60hz({});s.game_.enemies={};const auto next=s.render_smooth();
        for(unsigned y:{815u,820u,830u,835u,840u}) for(unsigned x=32;x<480;++x)
            assert(next[y*512u+x]==previous[y*512u+x+4u]);
        previous=next;
    }
    std::cout<<"Scroll feedback PASS: two blue actors, visible chain blast and 64 constant-speed boss-floor frames\n";
}
