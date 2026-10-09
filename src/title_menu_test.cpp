#include "title_menu.hpp"
#include "title_animation.hpp"
#ifdef NDEBUG
#undef NDEBUG
#endif
#include <cassert>
#include <algorithm>
#include <fstream>
#include <iostream>
int main(int argc,char** argv) {
    assert(argc==3);sm::Rom rom(argv[1]);sm::TitleMenu menu(rom);
    assert(menu.selected==1u && menu.activate() && menu.enhanced);
    menu.move(-1);assert(menu.activate() && !menu.enhanced);
    menu.move(-1);assert(menu.selected==2u && !menu.activate());
    assert(menu.page==sm::TitleMenu::Page::Options && menu.selected==0u);
    sm::TitleAnimation title(argv[2]);auto image=title.frame(560);menu.draw(image);
    // Compare the actual ROM font with the independent original title capture:
    // P in KSS MUSIC PLAYER vs P in PUSH SPACE KEY, all forty glyph pixels.
    const auto original=title.frame(560);
    assert(std::count(image.begin(),image.end(),0xff24246du)==0);
    assert(std::all_of(image.begin()+190u*256u,image.end(),[](auto c){return c==0xff000000u;}));
    for(unsigned y=0;y<5;++y) for(unsigned x=0;x<8;++x)
        assert((image[(76+y)*256+106+x]==0xffffff00u)==
               (original[(148+y)*256+72+x]==0xffffffffu));
    menu.move(1);assert(menu.autofire);menu.activate();assert(!menu.autofire);
    menu.adjust(1);assert(menu.autofire);menu.activate();assert(!menu.autofire);
    menu.move(-1);menu.activate();assert(menu.page==sm::TitleMenu::Page::Music);
    menu.adjust(-1);assert(menu.track==11u && menu.music_track()==68u);
    menu.adjust(1);assert(menu.track==0u && menu.music_track()==57u);
    menu.move(1);menu.activate();assert(menu.music_playing);
    menu.activate();assert(!menu.music_playing);menu.activate();
    menu.selected=2;menu.activate(); // Only the Back row leaves the player.
    assert(menu.page==sm::TitleMenu::Page::Options && !menu.music_playing && !menu.autofire);
    menu.selected=2;menu.activate();assert(menu.page==sm::TitleMenu::Page::Main);
    assert(menu.back());
    // Both game resolutions must show identical confirmation/game-over panels.
    for(bool game_over:{false,true}) {
        std::vector<std::uint32_t> low(256u*212u,0xff123456u),high(1024u*848u,0xff123456u);
        if(game_over) {menu.draw_game_over(low);menu.draw_game_over(high);}
        else {menu.draw_exit_confirmation(low);menu.draw_exit_confirmation(high);}
        assert(std::count(low.begin(),low.end(),0xffffffffu)>0);
        for(unsigned y=0;y<848;++y) for(unsigned x=0;x<1024;++x)
            assert(high[y*1024+x]==low[(y/4)*256+x/4]);
    }
    // Optional previews for visual QA, rendered by the same menu used in SDL.
    if(const auto root=std::getenv("SM_MENU_PREVIEW")) {
        for(unsigned page=0;page<3;++page) {
            menu.page=sm::TitleMenu::Page(page);menu.selected=page==0?1:0;
            auto pixels=title.frame(560);menu.draw(pixels);
            std::ofstream out(std::string(root)+std::to_string(page)+".ppm",std::ios::binary);
            out<<"P6\n256 212\n255\n";
            for(auto c:pixels) for(int shift:{16,8,0}) out.put(char(c>>shift));
        }
    }
    std::cout<<"Title menu: original font, graphics choices, navigation, music controls and autofire PASS\n";
}
