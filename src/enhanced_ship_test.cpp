#include "enhanced_ship.hpp"
#include "play_session.hpp"
#ifdef NDEBUG
#undef NDEBUG
#endif
#include <algorithm>
#include <cassert>
#include <fstream>
#include <iostream>
int main(int argc,char** argv) {
    assert(argc==3);sm::Rom rom(argv[1]);sm::EnhancedShip art(argv[2]);
    sm::PlaySession session(rom);for(unsigned f=0;f<100;++f) session.step_60hz({});
    auto& player=const_cast<sm::GameState&>(session.state()).player;
    player.set_x_fixed(0x1000);player.set_y_fixed(0x0900);
    auto save=[&](const char* name,const auto& image) {
        if(const auto root=std::getenv("SM_SHIP_PREVIEW")) {
            std::ofstream out(std::string(root)+name+".ppm",std::ios::binary);
            out<<"P6\n1024 848\n255\n";
            for(auto c:image)for(int shift:{16,8,0})out.put(char(c>>shift));
        }
    };
    for(unsigned pose=0;pose<3;++pose) {
        player.raw[5]=pose;
        const auto record=player.raw;const auto frame=session.frame();
        const auto original=session.render_continuous();
        auto enhanced=session.render_continuous(false);const auto background=enhanced;
        assert(player.raw==record && session.frame()==frame);
        art.draw(enhanced,player);
        assert(player.raw==record);
        const unsigned x=player.x_fixed()/8+28,y=player.y_fixed()/8+(pose?100:96);
        unsigned changed=0;
        for(unsigned i=0;i<enhanced.size();++i) {
            const auto px=i%1024,py=i/1024;
            const bool inside=px>=x && px<x+76 && py>=y && py<y+(pose?72:80);
            if(!inside) assert(enhanced[i]==original[i]); // no leftover ROM fragments / scenery changes
            changed+=enhanced[i]!=background[i];
        }
        assert(changed>2000 && enhanced!=original);
        if(pose==0) {save("original",original);save("enhanced",enhanced);}
        if(pose==1) save("bank-up",enhanced);
        if(pose==2) save("bank-down",enhanced);
        assert(session.render_continuous()==original);
    }
    player.raw[5]=0;
    const auto backdrop=session.render_continuous(false);
    auto entry=backdrop,burn=backdrop,next=backdrop;
    const auto record=player.raw;
    art.draw_engine(entry,player,8u,8u);
    art.draw_engine(burn,player,100u,100u);
    art.draw_engine(next,player,101u,101u);
    assert(entry!=burn && burn!=next && player.raw==record);
    auto repeated=backdrop;art.draw_engine(repeated,player,100u,100u);
    assert(repeated==burn); // pause/replay is deterministic
    for(unsigned i=0;i<112u*1024u;++i) assert(entry[i]==backdrop[i] && burn[i]==backdrop[i]);
    art.draw(entry,player);art.draw(burn,player);
    save("engine-entry",entry);save("engine-burning",burn);
    player.clear();auto background=session.render_continuous();const auto before=background;
    art.draw(background,player);assert(background==before);
    art.draw_engine(background,player,8u,8u);assert(background==before);
    // Background enhancement belongs below actors/HUD and retains the same
    // continuous scroll. Its world-space texture must move on every frame.
    auto& state=const_cast<sm::GameState&>(session.state());state.enemies={};
    auto previous=session.render_continuous(false,true);
    save("stage1-background",previous);
    auto previous_original=session.render_continuous(false);
    for(unsigned frame=0;frame<16u;++frame) {
        const auto raw=state.player.raw;const auto original=session.render_continuous(false);
        const auto enhanced=session.render_continuous(false,true);
        assert(enhanced!=original && state.player.raw==raw);
        assert(session.render_continuous(false)==original);
        for(unsigned i=0;i<112u*1024u;++i) assert(enhanced[i]==original[i]);
        session.step_60hz({});state.enemies={};state.player.clear();
        const auto next=session.render_continuous(false,true);
        const auto next_original=session.render_continuous(false);
        unsigned checked=0;
        for(unsigned y=280;y<740;y+=3) for(unsigned x=40;x<970;x+=3) {
            const auto c=previous[y*1024+x+2];
            // Blue hull faces, excluding stars and the independent rock strip.
            bool unchanged=true;
            // The HD background now uses a true two-pass Scale2x reconstruction,
            // whose filter footprint reaches across neighbouring MSX pixels.
            // Verify continuity only where that complete source neighbourhood
            // translated by the expected two output samples.
            for(int dy=-8;dy<=8;dy+=4) for(int dx=-8;dx<=8;dx+=4) {
                const auto a=(int(y)+dy)*1024+int(x)+dx;
                unchanged&=next_original[std::size_t(a)]==
                           previous_original[std::size_t(a+2)];
            }
            if(unchanged && (c&255u)>((c>>16)&255u)*1.5 && (c&255u)>((c>>8)&255u)*1.2) {
                assert(next[y*1024+x]==c);++checked;
            }
        }
        assert(checked>1000u);previous=next;previous_original=next_original;
    }
    session.reset(1);
    assert(session.render_continuous(false,true)==session.render_continuous(false));
    std::cout<<"Enhanced ship: 3 poses, original bounds/anchors, clean replacement and unchanged game state PASS\n";
}
