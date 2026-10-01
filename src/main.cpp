#include "rom.hpp"
#include "game_state.hpp"
#include "level.hpp"
#include "graphics.hpp"
#include <SDL.h>
#include <array>
#include <cstdint>
#include <cstdio>
#include <iostream>
#include <stdexcept>
#include <string>
#include <vector>

namespace {
constexpr std::array<std::uint32_t,16> kPalette = {
    0xff000000,0xff000000,0xff24db24,0xff6dff6d,
    0xff2424ff,0xff496dff,0xffb62424,0xff49dbff,
    0xffff2424,0xffff6d6d,0xffdbdb24,0xffdbdb92,
    0xff249224,0xffdb49b6,0xffb6b6b6,0xffffffff
};
constexpr std::array<std::uint8_t,8> kMap = {0,4,8,12,2,6,10,15};

void decode_bank(std::span<const std::uint8_t> bank,unsigned mode,std::vector<std::uint32_t>& out) {
    out.assign(256u*256u,kPalette[0]);
    if (mode==4) {
        for (std::size_t i=0;i<bank.size();++i) {
            const auto v=bank[i]; const unsigned y=unsigned(i/128),x=unsigned(i%128)*2u;
            out[std::size_t(y)*256+x]=kPalette[v>>4];
            out[std::size_t(y)*256+x+1]=kPalette[v&15];
        }
        return;
    }
    const unsigned bytesPerTile=8u*mode;
    const unsigned count=unsigned(bank.size())/bytesPerTile;
    for (unsigned t=0;t<count;++t) {
        std::uint8_t pal[8]{};
        const unsigned n=1u<<mode;
        for (unsigned i=0;i<n;++i) pal[i]=kMap[i*(8u/n)];
        const auto tile=sm::decode_planar_tile(bank.data()+std::size_t(t)*bytesPerTile,mode,pal);
        const unsigned tx=(t%32u)*8u,ty=(t/32u)*8u;
        if (ty>=256u) break;
        for (unsigned y=0;y<8;++y) for (unsigned x=0;x<8;++x)
            out[std::size_t(ty+y)*256+tx+x]=kPalette[tile[y*8+x]];
    }
}
}

int main(int argc,char** argv) try {
    const bool analyze = argc == 3 && std::string(argv[2]) == "--analyze";
    if (argc<2 || argc>3 || (argc==3 && !analyze)) {
        std::cerr<<"usage: space-manbow-sdl <Space Manbow.rom> [--analyze]\n"; return 2;
    }
    sm::Rom rom(argv[1]); sm::KonamiSccMap mapper(rom); sm::GameState game;
    const auto level = sm::LevelStreamDecoder(rom).decode_mode0();
    std::cout<<"Space Manbow ROM: "<<rom.size()/1024<<" KiB, "<<rom.banks()
             <<" banks, init=$"<<std::hex<<rom.init_address()<<std::dec<<"\n"
             <<"Level 1 mode0: "<<level.macro_addresses.size()<<" macros, "
             <<level.width_tiles*8u<<" px decoded, stop=$"<<std::hex<<level.stop_address
             <<" cmd=$"<<unsigned(level.stop_command)<<std::dec<<"\n";
    if (const auto i=level.macro_index(0xA1F3))
        std::cout<<"Validated live pointer $A1F3: macro "<<*i<<", world X="<<(*i*32u)<<" px\n";
    if (analyze) return 0;
    std::cout<<"ROM browser: left/right=bank, 1/2/3=planar bpp, 4=raw SCREEN5-ish, Esc=quit\n";
    if (SDL_Init(SDL_INIT_VIDEO|SDL_INIT_AUDIO|SDL_INIT_GAMECONTROLLER)!=0) throw std::runtime_error(SDL_GetError());
    SDL_Window* win=SDL_CreateWindow("Space Manbow SDL / ROM browser",SDL_WINDOWPOS_CENTERED,SDL_WINDOWPOS_CENTERED,768,768,SDL_WINDOW_ALLOW_HIGHDPI|SDL_WINDOW_RESIZABLE);
    if (!win) throw std::runtime_error(SDL_GetError());
    SDL_Renderer* ren=SDL_CreateRenderer(win,-1,SDL_RENDERER_ACCELERATED|SDL_RENDERER_PRESENTVSYNC);
    if (!ren) ren=SDL_CreateRenderer(win,-1,SDL_RENDERER_SOFTWARE);
    if (!ren) throw std::runtime_error(SDL_GetError());
    SDL_Texture* tex=SDL_CreateTexture(ren,SDL_PIXELFORMAT_ARGB8888,SDL_TEXTUREACCESS_STREAMING,256,256);
    if (!tex) throw std::runtime_error(SDL_GetError());
    unsigned bank=0,mode=4; bool dirty=true,run=true; std::vector<std::uint32_t> pixels;
    while (run) {
        SDL_Event e; while (SDL_PollEvent(&e)) {
            if (e.type==SDL_QUIT) run=false;
            if (e.type==SDL_KEYDOWN) {
                const auto k=e.key.keysym.sym;
                if (k==SDLK_ESCAPE) run=false;
                else if (k==SDLK_RIGHT) { bank=(bank+1u)%unsigned(rom.banks()); dirty=true; }
                else if (k==SDLK_LEFT) { bank=(bank+unsigned(rom.banks())-1u)%unsigned(rom.banks()); dirty=true; }
                else if (k>=SDLK_1 && k<=SDLK_4) { mode=unsigned(k-SDLK_0); dirty=true; }
            }
        }
        if (dirty) {
            decode_bank(rom.bank(bank),mode,pixels); SDL_UpdateTexture(tex,nullptr,pixels.data(),256*int(sizeof(std::uint32_t)));
            char title[160]; std::snprintf(title,sizeof(title),"Space Manbow SDL - bank %02u offset $%05X - %u bpp%s",bank,bank*0x2000u,mode,mode==4?" raw":" planar");
            SDL_SetWindowTitle(win,title); std::cout<<title<<"\n"; dirty=false;
        }
        int w=0,h=0; SDL_GetRendererOutputSize(ren,&w,&h); SDL_SetRenderDrawColor(ren,12,12,16,255); SDL_RenderClear(ren);
        const int side=std::min(w,h); SDL_Rect dst{(w-side)/2,(h-side)/2,side,side}; SDL_RenderCopy(ren,tex,nullptr,&dst); SDL_RenderPresent(ren);
        game.camera_x+=0.0;
    }
    SDL_DestroyTexture(tex); SDL_DestroyRenderer(ren); SDL_DestroyWindow(win); SDL_Quit(); return 0;
} catch(const std::exception& e) { std::cerr<<"error: "<<e.what()<<"\n"; return 1; }
