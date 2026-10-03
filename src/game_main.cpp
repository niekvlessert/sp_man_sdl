#include "play_timeline.hpp"
#include "play_audio.hpp"
#include <SDL.h>
#include <algorithm>
#include <cstdio>
#include <fstream>
#include <iostream>
#include <memory>
#include <stdexcept>

int main(int argc,char** argv) try {
    if(argc!=2 && !(argc==4 && std::string(argv[2])=="--capture") &&
       !(argc==5 && (std::string(argv[2])=="--capture-at" || std::string(argv[2])=="--capture-step"))) {
        std::cerr<<"usage: space-manbow-game <rom> [--capture frame.ppm | --capture-at ticks frame.ppm | --capture-step 0..9 frame.ppm]\n"; return 2;
    }
    sm::Rom rom(argv[1]); sm::PlayTimeline timeline(rom);
    auto session_ptr=[&]() -> sm::PlaySession& {return timeline.session();};
    if(argc>=4) {
        const bool seek=std::string(argv[2])=="--capture-step";
        const auto frames=argc==5?std::stoul(argv[3]):90u;
        if(seek) session_ptr().seek_decile(frames);
        for(unsigned f=0;!seek && f<frames;++f)
            session_ptr().step_60hz(argc==5?sm::PlayerInput{}:sm::PlayerInput{false,false,false,f<16,f%12==0});
        const auto pixels=session_ptr().render(); std::ofstream out(argv[argc-1],std::ios::binary);
        out<<"P6\n256 212\n255\n";
        for(const auto color:pixels) for(int shift:{16,8,0}) out.put(char(color>>shift));
        if(!out) throw std::runtime_error("capture write failed");
        return 0;
    }
    if(SDL_Init(SDL_INIT_VIDEO|SDL_INIT_EVENTS|SDL_INIT_AUDIO)!=0) throw std::runtime_error(SDL_GetError());
    std::unique_ptr<sm::PlayAudio> audio;
    try {audio=std::make_unique<sm::PlayAudio>(std::filesystem::absolute(argv[1]).parent_path()/"assets/audio");}
    catch(const std::exception& e) {std::cerr<<"Audio unavailable: "<<e.what()<<"\nRun python3 tools/export_play_audio.py to regenerate ROM audio.\n";}
    auto* window=SDL_CreateWindow("Space Manbow - native play",SDL_WINDOWPOS_CENTERED,
        SDL_WINDOWPOS_CENTERED,1024,848,SDL_WINDOW_RESIZABLE|SDL_WINDOW_ALLOW_HIGHDPI);
    if(!window) throw std::runtime_error(SDL_GetError());
    auto* renderer=SDL_CreateRenderer(window,-1,SDL_RENDERER_ACCELERATED|SDL_RENDERER_PRESENTVSYNC);
    if(!renderer) renderer=SDL_CreateRenderer(window,-1,SDL_RENDERER_SOFTWARE);
    if(!renderer) throw std::runtime_error(SDL_GetError());
    auto* texture=SDL_CreateTexture(renderer,SDL_PIXELFORMAT_ARGB8888,
        SDL_TEXTUREACCESS_STREAMING,1024,848);
    if(!texture) throw std::runtime_error(SDL_GetError());
    SDL_SetTextureScaleMode(texture,SDL_ScaleModeNearest);
    std::cout<<"Arrows: move; Z/Space: fire; M: rotate options; F10: mute; 0: fresh start; 1-9: jump + max weapons; Cmd/Ctrl-T: turbo 500%; Page Up/Down: pause and -/+100 frames; P: pause; R: restart; Esc: exit\n";
    unsigned audio_stage=0;
    bool running=true,paused=false,fire_pending=false,option_pending=false,muted=false,turbo=false; double accumulator=0;
    const double frequency=double(SDL_GetPerformanceFrequency());
    auto previous=SDL_GetPerformanceCounter();
    while(running) {
        bool reset_clock=false;
        SDL_Event event;
        while(SDL_PollEvent(&event)) {
            if(event.type==SDL_QUIT) running=false;
            if(event.type==SDL_WINDOWEVENT && event.window.event==SDL_WINDOWEVENT_FOCUS_LOST) {
                paused=true;reset_clock=true;fire_pending=false;option_pending=false;
            }
            if(event.type==SDL_KEYDOWN && !event.key.repeat) {
                switch(event.key.keysym.sym) {
                case SDLK_ESCAPE:running=false;break;
                case SDLK_p:paused=!paused;reset_clock=true;fire_pending=false;option_pending=false;break;
                case SDLK_r:timeline.reset();if(audio) {audio->set_stage(0);audio->seek(0);} audio_stage=0;reset_clock=true;fire_pending=false;option_pending=false;break;
                case SDLK_t:
#ifdef __APPLE__
                    if(event.key.keysym.mod & KMOD_GUI)
#else
                    if(event.key.keysym.mod & KMOD_CTRL)
#endif
                    {turbo=!turbo;reset_clock=true;if(audio) audio->set_speed(turbo?5:1);}
                    break;
                case SDLK_PAGEUP:case SDLK_PAGEDOWN:
                    paused=true;timeline.scrub(event.key.keysym.sym==SDLK_PAGEUP?-100:100);
                    if(audio) {audio_stage=session_ptr().stage_index();audio->set_stage(audio_stage);audio->seek(double(session_ptr().stage_frame())/60);}
                    reset_clock=true;fire_pending=false;option_pending=false;break;
                case SDLK_m:if(!paused) option_pending=true;break;
                case SDLK_F10:muted=!muted;if(audio) audio->mute(muted);break;
                case SDLK_z:case SDLK_SPACE:if(!paused) fire_pending=true;break;
                default:
                    if(event.key.keysym.sym>=SDLK_0 && event.key.keysym.sym<=SDLK_9) {
                        timeline.jump(unsigned(event.key.keysym.sym-SDLK_0));
                        if(audio) {audio->set_stage(0);audio->seek(double(session_ptr().frame())/60);} audio_stage=0;
                        reset_clock=true;fire_pending=false;option_pending=false;
                    }
                    break;
                }
            }
        }
        if(audio) {audio->set_music_playing(session_ptr().music_playing());audio->pause(paused);}
        const auto now=SDL_GetPerformanceCounter();
        const double elapsed=std::min(0.25,double(now-previous)/frequency);previous=now;
        if(reset_clock || paused) accumulator=0;
        else accumulator+=elapsed*(turbo?5.0:1.0);
        const auto* keys=SDL_GetKeyboardState(nullptr);
        sm::PlayerInput input{bool(keys[SDL_SCANCODE_UP]),bool(keys[SDL_SCANCODE_DOWN]),
            bool(keys[SDL_SCANCODE_LEFT]),bool(keys[SDL_SCANCODE_RIGHT]),
            bool(keys[SDL_SCANCODE_Z]||keys[SDL_SCANCODE_SPACE])};
        while(accumulator>=1.0/60.0) {
            input.fire_pressed=fire_pending;fire_pending=false;
            input.option_mode_pressed=option_pending;option_pending=false;
            timeline.step(input);accumulator-=1.0/60.0;
            if(audio && audio_stage!=session_ptr().stage_index()) {
                audio_stage=session_ptr().stage_index();audio->set_stage(audio_stage);
            }
            if(audio) {
                audio->set_music_playing(session_ptr().music_playing());
                for(const auto sound:session_ptr().sound_events()) audio->play(sound);
            }
        }
        const auto pixels=session_ptr().render_continuous(); SDL_UpdateTexture(texture,nullptr,pixels.data(),1024*4);
        int w,h;SDL_GetRendererOutputSize(renderer,&w,&h);
        const int dw=std::min(w,h*256/212),dh=dw*212/256;
        SDL_Rect dst{(w-dw)/2,(h-dh)/2,dw,dh};
        SDL_SetRenderDrawColor(renderer,0,0,0,255);SDL_RenderClear(renderer);
        SDL_RenderCopy(renderer,texture,nullptr,&dst);SDL_RenderPresent(renderer);
        char title[160];std::snprintf(title,sizeof(title),
            "Space Manbow - native play - frame %u%s%s%s",session_ptr().frame(),paused?" PAUSED":"",turbo?" | TURBO 500%":"",
            session_ptr().at_fight_gate()?" | boss":(session_ptr().stage_index()?" | stage 2":""));
        SDL_SetWindowTitle(window,title);SDL_Delay(1);
    }
    audio.reset();SDL_DestroyTexture(texture);SDL_DestroyRenderer(renderer);SDL_DestroyWindow(window);SDL_Quit();
    return 0;
} catch(const std::exception& e) { std::cerr<<e.what()<<'\n';SDL_Quit();return 1; }
