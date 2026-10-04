#include "play_timeline.hpp"
#include "play_audio.hpp"
#include "title_animation.hpp"
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
    const auto asset_root=std::filesystem::absolute(argv[1]).parent_path();
    sm::TitleAnimation title_animation(asset_root/"assets/title/title.anim");
    std::unique_ptr<sm::PlayAudio> audio;
    try {audio=std::make_unique<sm::PlayAudio>(asset_root/"assets/audio");audio->set_music_playing(false);}
    catch(const std::exception& e) {std::cerr<<"Audio unavailable: "<<e.what()<<"\nRun python3 tools/export_play_audio.py to regenerate ROM audio.\n";}
    auto* window=SDL_CreateWindow("Space Manbow - native play",SDL_WINDOWPOS_CENTERED,
        SDL_WINDOWPOS_CENTERED,1024,848,SDL_WINDOW_RESIZABLE|SDL_WINDOW_ALLOW_HIGHDPI);
    if(!window) throw std::runtime_error(SDL_GetError());
    auto* renderer=SDL_CreateRenderer(window,-1,SDL_RENDERER_ACCELERATED|SDL_RENDERER_PRESENTVSYNC);
    if(!renderer) renderer=SDL_CreateRenderer(window,-1,SDL_RENDERER_SOFTWARE);
    if(!renderer) throw std::runtime_error(SDL_GetError());
    SDL_RendererInfo renderer_info{};
    SDL_GetRendererInfo(renderer,&renderer_info);
    const bool renderer_vsync=(renderer_info.flags&SDL_RENDERER_PRESENTVSYNC)!=0;
    auto* texture=SDL_CreateTexture(renderer,SDL_PIXELFORMAT_ARGB8888,
        SDL_TEXTUREACCESS_STREAMING,1024,848);
    auto* title_texture=SDL_CreateTexture(renderer,SDL_PIXELFORMAT_ARGB8888,
        SDL_TEXTUREACCESS_STREAMING,int(title_animation.width()),int(title_animation.height()));
    if(!texture || !title_texture) throw std::runtime_error(SDL_GetError());
    SDL_SetTextureScaleMode(texture,SDL_ScaleModeNearest);SDL_SetTextureScaleMode(title_texture,SDL_ScaleModeNearest);
    std::cout<<"Space: start; Arrows: move; Z/Space: fire; M: rotate options; F10: mute; 0: fresh start; 1-9: jump + max weapons; Cmd/Ctrl-1/2: stage; W: max/no upgrades; Cmd/Ctrl-T: turbo 500%; Page Up/Down: pause and -/+100 frames; P: pause; R: restart; Esc: exit\n";
    unsigned audio_stage=0;
    // VRAM/palette captures include the cartridge's full Konami/title sequence.
    // Frame 344 is the first visible title drawing in the original VDP capture;
    // the pack declares when the complete start prompt has appeared.
    const unsigned title_first_frame=0u,title_ready_frame=title_animation.ready_frame();
    const unsigned title_start_frame=std::min(344u,title_ready_frame);
    bool running=true,started=false,paused=false,fire_pending=false,option_pending=false,muted=false,turbo=false;
    double accumulator=0,title_elapsed=0;
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
                case SDLK_r:
                    if(!started) title_elapsed=0;
                    else {timeline.reset(session_ptr().stage_index());audio_stage=session_ptr().stage_index();if(audio) {audio->set_stage(audio_stage);audio->seek(0);}}
                    reset_clock=true;fire_pending=false;option_pending=false;break;
                case SDLK_t:
#ifdef __APPLE__
                    if(event.key.keysym.mod & KMOD_GUI)
#else
                    if(event.key.keysym.mod & KMOD_CTRL)
#endif
                    {turbo=!turbo;reset_clock=true;if(audio) audio->set_speed(turbo?5:1);}
                    break;
                case SDLK_PAGEUP:case SDLK_PAGEDOWN:
                    if(started) {
                        paused=true;timeline.scrub(event.key.keysym.sym==SDLK_PAGEUP?-100:100);
                        if(audio) {audio_stage=session_ptr().stage_index();audio->set_stage(audio_stage);audio->seek(double(session_ptr().stage_frame())/60);}
                    }
                    reset_clock=true;fire_pending=false;option_pending=false;break;
                case SDLK_w:if(started) timeline.toggle_upgrades();break;
                case SDLK_m:if(started && !paused) option_pending=true;break;
                case SDLK_F10:muted=!muted;if(audio) audio->mute(muted);break;
                case SDLK_SPACE:
                    if(!started) {
                        const unsigned title_frame=std::min(title_animation.frame_count()-1u,
                            title_first_frame+unsigned(title_elapsed*double(title_animation.fps())));
                        if(title_frame<title_start_frame) {
                            // Skip Konami to the complete title screen. A second
                            // press starts play; key repeat cannot skip both.
                            title_elapsed=double(title_ready_frame-title_first_frame)/double(title_animation.fps());
                            paused=false;reset_clock=true;fire_pending=false;option_pending=false;
                        } else {
                            // Space also starts during the title's own reveal,
                            // without waiting for the PUSH SPACE KEY drawing.
                            started=true;paused=false;timeline.reset();audio_stage=0;
                            if(audio) {audio->set_stage(0);audio->seek(0);audio->set_music_playing(true);}
                            reset_clock=true;fire_pending=false;option_pending=false;
                        }
                    } else if(!paused) fire_pending=true;
                    break;
                case SDLK_z:if(started && !paused) fire_pending=true;break;
                default:
                    if(event.key.keysym.sym>=SDLK_0 && event.key.keysym.sym<=SDLK_9) {
                        started=true;paused=false;
#ifdef __APPLE__
                        const bool stage_key=(event.key.keysym.mod & KMOD_GUI)!=0;
#else
                        const bool stage_key=(event.key.keysym.mod & KMOD_CTRL)!=0;
#endif
                        if(stage_key && event.key.keysym.sym>=SDLK_1 && event.key.keysym.sym<=SDLK_9)
                            timeline.reset(unsigned(event.key.keysym.sym-SDLK_1));
                        else timeline.jump(unsigned(event.key.keysym.sym-SDLK_0));
                        audio_stage=session_ptr().stage_index();
                        if(audio) {audio->set_stage(audio_stage);audio->seek(double(session_ptr().stage_frame())/60);audio->set_music_playing(true);}
                        reset_clock=true;fire_pending=false;option_pending=false;
                    }
                    break;
                }
            }
        }
        if(audio) {
            if(started) {audio->set_boss_music(session_ptr().boss_music_active());audio->set_music_playing(session_ptr().music_playing());}
            else audio->set_music_playing(false);
            audio->pause(paused);
        }
        const auto now=SDL_GetPerformanceCounter();
        const double elapsed=std::min(0.25,double(now-previous)/frequency);previous=now;
        if(reset_clock || paused) accumulator=0;
        else if(started) accumulator+=elapsed*(turbo?5.0:1.0);
        else title_elapsed+=elapsed;
        const auto* keys=SDL_GetKeyboardState(nullptr);
        sm::PlayerInput input{bool(keys[SDL_SCANCODE_UP]),bool(keys[SDL_SCANCODE_DOWN]),
            bool(keys[SDL_SCANCODE_LEFT]),bool(keys[SDL_SCANCODE_RIGHT]),
            bool(keys[SDL_SCANCODE_Z]||keys[SDL_SCANCODE_SPACE])};
        while(started && accumulator>=1.0/60.0) {
            input.fire_pressed=fire_pending;fire_pending=false;
            input.option_mode_pressed=option_pending;option_pending=false;
            timeline.step(input);accumulator-=1.0/60.0;
            if(audio && audio_stage!=session_ptr().stage_index()) {
                audio_stage=session_ptr().stage_index();audio->set_stage(audio_stage);
            }
            if(audio) {
                audio->set_boss_music(session_ptr().boss_music_active());
                audio->set_music_playing(session_ptr().music_playing());
                for(const auto sound:session_ptr().sound_events()) audio->play(sound);
            }
        }
        int w,h;SDL_GetRendererOutputSize(renderer,&w,&h);
        const int dw=std::min(w,h*256/212),dh=dw*212/256;
        SDL_Rect dst{(w-dw)/2,(h-dh)/2,dw,dh};
        SDL_SetRenderDrawColor(renderer,0,0,0,255);SDL_RenderClear(renderer);
        if(!started) {
            const auto frame=std::min(title_animation.frame_count()-1u,
                title_first_frame+unsigned(title_elapsed*double(title_animation.fps())));
            const auto& pixels=title_animation.frame(frame);
            SDL_UpdateTexture(title_texture,nullptr,pixels.data(),int(title_animation.width()*4u));
            SDL_RenderCopy(renderer,title_texture,nullptr,&dst);
            SDL_SetWindowTitle(window,paused?"Space Manbow - title PAUSED":"Space Manbow - title - SPACE to start");
        } else {
            const auto pixels=session_ptr().render_continuous();SDL_UpdateTexture(texture,nullptr,pixels.data(),1024*4);
            SDL_RenderCopy(renderer,texture,nullptr,&dst);
            char title[160];std::snprintf(title,sizeof(title),
                "Space Manbow - native play - frame %u%s%s%s",session_ptr().frame(),paused?" PAUSED":"",turbo?" | TURBO 500%":"",
                session_ptr().at_fight_gate()?" | boss":(session_ptr().stage_index()?" | stage 2":""));
            SDL_SetWindowTitle(window,title);
        }
        SDL_RenderPresent(renderer);
        // Present already blocks on the display when VSYNC is active. Sleeping
        // another millisecond afterwards occasionally pushes a frame over the
        // next refresh boundary and shows up as a small hitch. Only yield on
        // the non-vsync software fallback.
        if(!renderer_vsync) SDL_Delay(1);
    }
    audio.reset();SDL_DestroyTexture(title_texture);SDL_DestroyTexture(texture);SDL_DestroyRenderer(renderer);SDL_DestroyWindow(window);SDL_Quit();
    return 0;
} catch(const std::exception& e) { std::cerr<<e.what()<<'\n';SDL_Quit();return 1; }
