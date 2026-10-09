#pragma once
#include "debug_mode.hpp"
#include <SDL.h>
#include <SDL_ttf.h>
namespace sm {
class DebugOverlay {
public:
    DebugOverlay();
    ~DebugOverlay();
    void draw(SDL_Renderer* renderer,const DebugMode& mode);
    bool event(const SDL_Event& event,DebugMode& mode,SDL_Window* window);
private:
    TTF_Font* font_=nullptr;
    SDL_Rect panel_{},close_{},god_{},disable_{};
};
}
