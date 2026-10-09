#include <algorithm>
#include "debug_overlay.hpp"
#include <filesystem>
#include <stdexcept>
#include <string>
#include <cstdlib>
namespace sm {
DebugOverlay::DebugOverlay() {
    if(TTF_Init()!=0) throw std::runtime_error(TTF_GetError());
#ifdef __EMSCRIPTEN__
    const char* fonts[]={"/assets/fonts/debug.ttf"};
#elif defined(__ANDROID__)
    const std::string path=std::string(SDL_AndroidGetInternalStoragePath())+"/assets/fonts/debug.ttf";
    const char* fonts[]={path.c_str()};
#elif defined(__APPLE__)
    const char* fonts[]={"/System/Library/Fonts/SFNS.ttf","/System/Library/Fonts/Helvetica.ttc"};
#elif defined(_WIN32)
    std::string root=std::getenv("WINDIR")?std::getenv("WINDIR"):"C:/Windows";
    std::string path=root+"/Fonts/segoeui.ttf";
    const char* fonts[]={path.c_str()};
#else
    const char* fonts[]={"/usr/share/fonts/truetype/dejavu/DejaVuSans.ttf","/usr/share/fonts/TTF/DejaVuSans.ttf","/usr/share/fonts/truetype/liberation2/LiberationSans-Regular.ttf"};
#endif
    for(auto path:fonts) if(std::filesystem::exists(path) && (font_=TTF_OpenFont(path,19))) break;
    if(!font_) {TTF_Quit();throw std::runtime_error("No system UI font available for debug overlay");}
}
DebugOverlay::~DebugOverlay() {TTF_CloseFont(font_);TTF_Quit();}
void DebugOverlay::draw(SDL_Renderer* renderer,const DebugMode& mode) {
    int w,h;SDL_GetRendererOutputSize(renderer,&w,&h);
    // UI uses logical points so the OS font remains readable at any game scale.
    SDL_RenderSetLogicalSize(renderer,800,660);
    panel_={80,85,640,490};close_={674,99,30,30};god_={104,159,586,36};disable_={104,509,240,40};
    SDL_SetRenderDrawBlendMode(renderer,SDL_BLENDMODE_BLEND);
    SDL_SetRenderDrawColor(renderer,0,0,0,185);SDL_Rect shade{0,0,800,660};SDL_RenderFillRect(renderer,&shade);
    SDL_SetRenderDrawColor(renderer,31,34,40,255);SDL_RenderFillRect(renderer,&panel_);
    SDL_SetRenderDrawColor(renderer,103,115,132,255);SDL_RenderDrawRect(renderer,&panel_);
    auto text=[&](int x,int y,const std::string& label,SDL_Color color=SDL_Color{230,234,240,255}) {
        auto* s=TTF_RenderUTF8_Blended(font_,label.c_str(),color);
        if(!s) throw std::runtime_error(TTF_GetError());
        auto* t=SDL_CreateTextureFromSurface(renderer,s);SDL_Rect r{x,y,s->w,s->h};
        SDL_FreeSurface(s);SDL_RenderCopy(renderer,t,nullptr,&r);SDL_DestroyTexture(t);
    };
    text(104,107,"Debug mode");text(close_.x+7,close_.y,"×");
    text(112,165,mode.invulnerable?"[x] Invulnerability (G)":"[ ] Invulnerability (G)");
#ifdef __APPLE__
    const std::string modifier="Cmd";
#else
    const std::string modifier="Ctrl";
#endif
    text(112,212,modifier+" + 1–9   Select stage");
    text(112,250,"0–9   Jump to 0–90% of the current stage");
    text(112,288,"W   Toggle maximum / no upgrades");
    text(112,326,modifier+" + T   Toggle 500% speed");
    text(112,364,"Page Up / Down   Pause and rewind / advance 100 frames");
    text(112,402,"R   Restart current stage");
    text(112,440,"Stage and frame counters in the window title");
    SDL_SetRenderDrawColor(renderer,64,72,86,255);SDL_RenderFillRect(renderer,&disable_);
    text(116,517,"Disable debug mode");text(397,520,"Escape or × to close");
    SDL_RenderSetLogicalSize(renderer,0,0);
    SDL_SetRenderDrawBlendMode(renderer,SDL_BLENDMODE_NONE);
}
bool DebugOverlay::event(const SDL_Event& event,DebugMode& mode,SDL_Window* window) {
    if(!mode.overlay) return false;
    if(event.type==SDL_KEYDOWN && !event.key.repeat) {
        if(event.key.keysym.sym==SDLK_ESCAPE) mode.overlay=false;
        if(event.key.keysym.sym==SDLK_g) mode.invulnerable=!mode.invulnerable;
    }
    if(event.type==SDL_MOUSEBUTTONDOWN && event.button.button==SDL_BUTTON_LEFT) {
        int w,h;SDL_GetWindowSize(window,&w,&h);
        const double scale=std::min(double(w)/800,double(h)/660);
        SDL_Point p{int((event.button.x-(w-800*scale)/2)/scale),int((event.button.y-(h-660*scale)/2)/scale)};
        if(SDL_PointInRect(&p,&close_)) mode.overlay=false;
        else if(SDL_PointInRect(&p,&god_)) mode.invulnerable=!mode.invulnerable;
        else if(SDL_PointInRect(&p,&disable_)) mode.disable();
    }
    return true;
}
}
