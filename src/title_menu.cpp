#include "title_menu.hpp"
#include <algorithm>
#include <cstdio>
#include <cctype>
namespace sm {
TitleMenu::TitleMenu(const Rom& rom) {
    // Original SCREEN5 font: bank01 $7279 (A..Z), $75B9 (0..9), 8x8
    // packed pixels (foreground E / transparent F), 32 bytes per glyph.
    // The cartridge stores alphabet and digits consecutively, not as ASCII.
    const auto b=rom.bank(1);
    for(unsigned c=32;c<128;++c) {
        unsigned offset;
        if(c>='A' && c<='Z') offset=0x1279u+(c-'A')*32u;
        else if(c>='0' && c<='9') offset=0x15b9u+(c-'0')*32u;
        else continue;
        for(unsigned y=0;y<8;++y) for(unsigned x=0;x<8;++x) {
        const auto v=b[offset+y*4u+x/2u];
        if(((x&1u)?v&15u:v>>4u)==14u) font_[c-32u][y]|=128u>>x;
        }
    }
}
void TitleMenu::move(int delta) {selected=unsigned((int(selected)+delta+3)%3);}
void TitleMenu::adjust(int delta) {
    if(page==Page::Music) track=unsigned((int(track)+delta+12)%12);
    else if(page==Page::Options && selected==1u) autofire=!autofire;
}
bool TitleMenu::activate() {
    if(page==Page::Main) {
        if(selected<2u) {enhanced=selected==1u;return true;}
        page=Page::Options;selected=0;
    } else if(page==Page::Options) {
        if(selected==0u) {page=Page::Music;selected=0;}
        else if(selected==1u) autofire=!autofire;
        else back();
    } else {
        if(selected==0u) adjust(1);
        else if(selected==1u) music_playing=!music_playing;
        else back();
    }
    return false;
}
bool TitleMenu::back() {
    if(page==Page::Main) return true;
    if(page==Page::Music) {page=Page::Options;selected=0;music_playing=false;}
    else {page=Page::Main;selected=2;}
    return false;
}
void TitleMenu::text(std::vector<std::uint32_t>& p,int x,int y,std::string_view s,std::uint32_t color) const {
    for(auto ch:s) {
        const unsigned c=unsigned(std::toupper(static_cast<unsigned char>(ch)));
        if(c>=32u && c<128u) for(unsigned yy=0;yy<8;++yy) for(unsigned xx=0;xx<8;++xx)
            if(font_[c-32u][yy]&(128u>>xx)) {
                const int dx=x+int(xx),dy=y+int(yy);
                if(dx>=0 && dx<256 && dy>=0 && dy<212) p[dy*256+dx]=color;
            }
        x+=8;
    }
}
void TitleMenu::row(std::vector<std::uint32_t>& p,unsigned index,int y,std::string_view s) const {
    const bool active=selected==index;
    // Solid yellow marker and colour change remain visible without blinking.
    if(active) for(int yy=y;yy<y+5;++yy) for(int x=14;x<18;++x) p[yy*256+x]=0xffffff00u;
    text(p,26,y,s,active?0xffffff00u:0xffffffffu);
}
void TitleMenu::draw(std::vector<std::uint32_t>& p,bool audio_available) const {
    if(p.size()!=256u*212u) return;
    std::fill(p.begin()+(page==Page::Main?114u*256u:0u),p.end(),0xff000000u);
    if(page==Page::Main) {
        row(p,0,128,"ORIGINAL GRAPHICS");row(p,1,150,"ENHANCED GRAPHICS");row(p,2,172,"OPTIONS");
    } else if(page==Page::Options) {
        text(p,100,28,"OPTIONS",0xffffffffu);
        row(p,0,76,"KSS MUSIC PLAYER");
        row(p,1,110,"AUTOFIRE");
        text(p,24,128,"WHEN HOLDING SPACE",0xff9292dbu);
        text(p,194,110,autofire?"ON":"OFF",0xffffff00u);
        row(p,2,164,"BACK");
    } else {
        text(p,64,28,"KSS MUSIC PLAYER",0xffffffffu);
        char label[28];std::snprintf(label,sizeof(label),"TRACK %02u OF 12",track+1u);
        row(p,0,80,label);
        row(p,1,138,music_playing?"STOP":"PLAY");row(p,2,166,"BACK");
        if(!audio_available) text(p,24,199,"AUDIO UNAVAILABLE",0xff9292dbu);
    }
}
void TitleMenu::draw_exit_confirmation(std::vector<std::uint32_t>& p) const {
    const unsigned scale=p.size()==256u*212u?1u:4u;
    if(p.size()!=256u*212u*scale*scale) return;
    std::vector<std::uint32_t> panel(256u*212u,0u);
    for(unsigned y=82;y<132;++y) for(unsigned x=56;x<200;++x)
        panel[y*256u+x]=(y==82 || y==131 || x==56 || x==199)?0xffffffffu:0xff000000u;
    text(panel,80,96,"ARE YOU SURE",0xffffffffu);
    text(panel,108,116,"Y   N",0xffffff00u);
    for(unsigned y=82;y<132;++y) for(unsigned x=56;x<200;++x)
        for(unsigned yy=0;yy<scale;++yy) for(unsigned xx=0;xx<scale;++xx)
            p[(y*scale+yy)*256*scale+x*scale+xx]=panel[y*256+x];
}
void TitleMenu::draw_game_over(std::vector<std::uint32_t>& p) const {
    const unsigned scale=p.size()==256u*212u?1u:4u;
    if(p.size()!=256u*212u*scale*scale) return;
    std::vector<std::uint32_t> panel(256u*212u,0u);
    text(panel,92,96,"GAME OVER",0xffffffffu);
    text(panel,76,116,"PRESS SPACE",0xffffff00u);
    for(unsigned y=82;y<132;++y) for(unsigned x=56;x<200;++x)
        for(unsigned yy=0;yy<scale;++yy) for(unsigned xx=0;xx<scale;++xx)
            p[(y*scale+yy)*256*scale+x*scale+xx]=panel[y*256+x]?panel[y*256+x]:0xff000000u;
}

}
