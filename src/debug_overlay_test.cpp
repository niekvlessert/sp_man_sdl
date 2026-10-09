#include "debug_overlay.hpp"
#ifdef NDEBUG
#undef NDEBUG
#endif
#include <cassert>
#include <iostream>
int main() {
    assert(SDL_Init(SDL_INIT_VIDEO)==0);
    auto* window=SDL_CreateWindow("overlay test",0,0,800,660,SDL_WINDOW_HIDDEN);
    auto* renderer=SDL_CreateRenderer(window,-1,SDL_RENDERER_SOFTWARE);assert(renderer);
    {
        sm::DebugOverlay overlay;sm::DebugMode mode;
        for(char c:std::string("debug")) mode.type(c,true);
        overlay.draw(renderer,mode);
        auto* surface=SDL_CreateRGBSurfaceWithFormat(0,800,660,32,SDL_PIXELFORMAT_ARGB8888);
        assert(SDL_RenderReadPixels(renderer,nullptr,SDL_PIXELFORMAT_ARGB8888,surface->pixels,surface->pitch)==0);
        SDL_SaveBMP(surface,"/tmp/space-manbow-debug-overlay.bmp");SDL_FreeSurface(surface);
        SDL_Event click{};click.type=SDL_MOUSEBUTTONDOWN;click.button.button=SDL_BUTTON_LEFT;
        click.button.x=690;click.button.y=113;assert(overlay.event(click,mode,window));
        assert(!mode.overlay && mode.enabled);
        mode.overlay=true;SDL_Event key{};key.type=SDL_KEYDOWN;key.key.keysym.sym=SDLK_ESCAPE;
        assert(overlay.event(key,mode,window));assert(!mode.overlay && mode.enabled);
        mode.overlay=true;click.button.x=130;click.button.y=175;
        overlay.event(click,mode,window);assert(!mode.invulnerable);
        click.button.x=180;click.button.y=530;overlay.event(click,mode,window);
        assert(!mode.enabled && !mode.overlay);
    }
    SDL_DestroyRenderer(renderer);SDL_DestroyWindow(window);SDL_Quit();
    std::cout<<"Debug overlay PASS: system font render, close button, Escape, immunity toggle and disable\n";
}
