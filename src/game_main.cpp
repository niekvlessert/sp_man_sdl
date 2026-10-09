#include "play_timeline.hpp"
#include "play_audio.hpp"
#include "title_animation.hpp"
#include "title_menu.hpp"
#include "attract_demo.hpp"
#include "attract_presentation.hpp"
#include "title_flow.hpp"
#include "debug_overlay.hpp"
#include "ending_demo.hpp"
#include "enhanced_ship.hpp"
#include <SDL.h>
#include <algorithm>
#include <cstdio>
#include <fstream>
#include <iostream>
#include <memory>
#include <stdexcept>
#include <cstdlib>
#ifdef __EMSCRIPTEN__
#include <emscripten.h>
EM_ASYNC_JS(void, wait_browser_frame, (), {
    await new Promise(resolve => {
        const tick = now => {
            if (Module.nextRenderTime === undefined) Module.nextRenderTime = now;
            if (now + 0.5 < Module.nextRenderTime) { requestAnimationFrame(tick); return; }
            Module.nextRenderTime = Math.max(Module.nextRenderTime + 1000 / 60, now);
            resolve();
        };
        requestAnimationFrame(tick);
    });
});
#endif

int main(int argc,char** argv) try {
    if(argc!=2 && !(argc==4 && std::string(argv[2])=="--capture") &&
       !(argc==5 && (std::string(argv[2])=="--capture-at" || std::string(argv[2])=="--capture-step" || std::string(argv[2])=="--capture-ending" || std::string(argv[2])=="--capture-story")) &&
       !(argc==6 && std::string(argv[2])=="--capture-demo")) {
        std::cerr<<"usage: space-manbow-game <rom> [--capture frame.ppm | --capture-at ticks frame.ppm | --capture-step 0..9 frame.ppm | --capture-demo 0..2 ticks frame.ppm | --capture-ending ticks frame.ppm | --capture-story ticks frame.ppm]\n"; return 2;
    }
    const auto asset_root=std::getenv("SM_ASSET_ROOT") ?
        std::filesystem::path(std::getenv("SM_ASSET_ROOT")) : std::filesystem::absolute(argv[1]).parent_path();
    if(argc==5 && std::string(argv[2])=="--capture-ending") {
        sm::EndingDemo ending(asset_root/"assets/ending");
        ending.advance(double(std::stoul(argv[3]))/ending.fps());
        std::ofstream out(argv[4],std::ios::binary);out<<"P6\n256 212\n255\n";
        for(auto color:ending.pixels()) for(int shift:{16,8,0}) out.put(char(color>>shift));
        if(!out) throw std::runtime_error("ending capture write failed");
        return 0;
    }
    if((argc==6 && std::string(argv[2])=="--capture-demo") ||
       (argc==5 && std::string(argv[2])=="--capture-story")) {
        sm::AttractPresentation presentation(asset_root/"assets/attract");
        if(argc==6) presentation.reset_game(unsigned(std::stoul(argv[3])));
        else presentation.reset(1u);
        const auto frames=std::stoul(argv[argc-2]);
        presentation.advance(double(frames)/60.0);
        std::ofstream out(argv[argc-1],std::ios::binary);out<<"P6\n256 212\n255\n";
        for(auto color:presentation.pixels()) for(int shift:{16,8,0}) out.put(char(color>>shift));
        if(!out) throw std::runtime_error("attract capture write failed");
        return 0;
    }
    sm::Rom rom(argv[1]); sm::PlayTimeline timeline(rom);
    timeline.set_recording(false);
    bool demo_running=false;
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
#ifdef __EMSCRIPTEN__
    // Own the browser yield: SDL's swap also sleeps with Asyncify by default,
    // otherwise timer-driven swaps draw redundant frames between refreshes.
    SDL_SetHint(SDL_HINT_EMSCRIPTEN_ASYNCIFY,"0");
    const bool profile_web=EM_ASM_INT({return new URLSearchParams(location.search).has('profile');});
#endif
    if(SDL_Init(SDL_INIT_VIDEO|SDL_INIT_EVENTS|SDL_INIT_AUDIO)!=0) throw std::runtime_error(SDL_GetError());
    sm::TitleAnimation title_animation(asset_root/"assets/title/title.anim");
    sm::TitleMenu menu(rom);
    sm::EnhancedShip enhanced_ship(asset_root/"assets/enhanced/player-hd-source.png");
    std::unique_ptr<sm::PlayAudio> audio;
    try {audio=std::make_unique<sm::PlayAudio>(asset_root/"assets/audio",argv[1]);audio->set_music_playing(false);}
    catch(const std::exception& e) {std::cerr<<"Audio unavailable: "<<e.what()<<"\nWAV assets are only required for sound effects; music is played live from the ROM through libkss.\n";}
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
    std::cout<<"Arrows: menu/move; Space/Enter: select; Z/Space: fire; M: rotate options; P: pause; F10: mute; Esc in game: confirm return; Choose Back to leave submenus\n";
    unsigned audio_stage=0;
    unsigned preview_track=999u;
    // VRAM/palette captures include the cartridge's full Konami/title sequence.
    // Konami can be skipped into the Space Manbow logo. The completed title
    // waits for a fresh Space/Enter before exposing the native menu.
    sm::TitleFlow title_flow(title_animation.frame_count(),title_animation.fps(),title_animation.ready_frame());
    sm::AttractPresentation presentation(asset_root/"assets/attract");
    sm::DebugMode debug;
    std::unique_ptr<sm::DebugOverlay> debug_overlay;
    bool running=true,started=false,paused=false,fire_pending=false,option_pending=false,muted=false,turbo=false;
    bool confirm_exit=false,paused_before_confirm=false;
    double accumulator=0;
    sm::AttractDemoCycle demo_cycle;
    bool ending_running=false;
    std::unique_ptr<sm::EndingDemo> ending;
    unsigned ending_request=0u;
    auto return_from_demo=[&](bool open_menu=false) {
        const bool ending_return=ending_running;
        demo_running=false;paused=false;
        started=false;ending_running=false;confirm_exit=false;ending_request=0u;
        menu.page=sm::TitleMenu::Page::Main;menu.music_playing=false;
        if(open_menu || ending_return) title_flow.show_menu();
        else title_flow.replay_title();
        demo_cycle.activity();accumulator=0;fire_pending=option_pending=false;
        if(audio) {audio->set_music_playing(false);audio->set_speed(turbo?5:1);}
    };
    const double frequency=double(SDL_GetPerformanceFrequency());
    auto previous=SDL_GetPerformanceCounter();
    bool redraw=true;
    while(running) {
        bool reset_clock=false;
        SDL_Event event;
        while(SDL_PollEvent(&event)) {
            redraw=true;
            if(event.type==SDL_QUIT) running=false;
            if(event.type==SDL_WINDOWEVENT && event.window.event==SDL_WINDOWEVENT_FOCUS_LOST
#ifdef __EMSCRIPTEN__
               // SDL's browser canvas initialization can emit a focus loss
               // before its first frame. Do not freeze the title's white fade.
               && (started || demo_running || ending_running)
#endif
               ) {
                paused=true;reset_clock=true;fire_pending=false;option_pending=false;
            }
            if(debug.overlay && debug_overlay->event(event,debug,window)) {
                timeline.set_invulnerable(debug.enabled && debug.invulnerable);
                if(!debug.enabled) {turbo=false;if(audio) audio->set_speed(1);}
                reset_clock=true;continue;
            }
            if(ending_running && event.type==SDL_KEYDOWN && !event.key.repeat) {
                const auto key=event.key.keysym.sym;
                if(key==SDLK_SPACE || key==SDLK_RETURN) {return_from_demo();reset_clock=true;}
                else if(key==SDLK_p) {paused=!paused;reset_clock=true;}
                else if(key==SDLK_F10) {muted=!muted;if(audio) audio->mute(muted);}
                continue;
            }
            if(demo_running && (event.type==SDL_MOUSEBUTTONDOWN ||
                (event.type==SDL_KEYDOWN && !event.key.repeat))) {
                const bool select=event.type==SDL_KEYDOWN &&
                    (event.key.keysym.sym==SDLK_SPACE || event.key.keysym.sym==SDLK_RETURN);
                return_from_demo(select);reset_clock=true;continue;
            }
            if(event.type==SDL_KEYDOWN) demo_cycle.activity();
            if(event.type==SDL_KEYDOWN && !event.key.repeat) {
                if(started && session_ptr().game_over()) {
                    if(event.key.keysym.sym==SDLK_SPACE || event.key.keysym.sym==SDLK_RETURN) {
                        started=false;paused=false;title_flow.show_menu();
                        menu.page=sm::TitleMenu::Page::Main;menu.selected=menu.enhanced?1u:0u;
                    }
                    reset_clock=true;continue;
                }
                if(confirm_exit) {
                    const auto key=event.key.keysym.sym;
                    if(key==SDLK_y) {
                        started=false;paused=false;confirm_exit=false;
                        menu.page=sm::TitleMenu::Page::Main;menu.selected=menu.enhanced?1u:0u;
                        menu.music_playing=false;
                        title_flow.show_menu();
                    } else if(key==SDLK_n) {confirm_exit=false;paused=paused_before_confirm;}
                    reset_clock=true;fire_pending=false;option_pending=false;
                    continue;
                }
                if(!started) {
                    const auto key=event.key.keysym.sym;
                    debug.type(key>=SDLK_a && key<=SDLK_z?char(key):0,
                        title_flow.menu() && menu.page==sm::TitleMenu::Page::Options);
                    if(debug.overlay) {
                        if(!debug_overlay) debug_overlay=std::make_unique<sm::DebugOverlay>();
                        timeline.set_invulnerable(debug.invulnerable);reset_clock=true;continue;
                    }
                    if(key==SDLK_ESCAPE) continue; // Back rows are the only menu exit.
                    const bool menu_key=key==SDLK_UP || key==SDLK_DOWN || key==SDLK_LEFT ||
                        key==SDLK_RIGHT || key==SDLK_SPACE || key==SDLK_RETURN;
                    if(menu_key) {
                        if(!title_flow.menu()) {
                            if(key==SDLK_SPACE || key==SDLK_RETURN) title_flow.press_space();
                            paused=false;reset_clock=true;continue;
                        }
                        if(key==SDLK_UP || key==SDLK_DOWN) menu.move(key==SDLK_UP?-1:1);
                        else if(key==SDLK_LEFT || key==SDLK_RIGHT) menu.adjust(key==SDLK_LEFT?-1:1);
                        else {
                            if(menu.activate()) {
                                started=true;timeline.reset();audio_stage=0;
                                if(audio) {audio->set_stage(0);audio->seek(0);audio->set_speed(turbo?5:1);audio->set_music_playing(true);}
                            }
                        }
                        title_flow.show_menu();
                        paused=false;reset_clock=true;fire_pending=false;option_pending=false;
                        continue;
                    }
                }
                switch(event.key.keysym.sym) {
                case SDLK_ESCAPE:
                    confirm_exit=true;paused_before_confirm=paused;paused=true;
                    reset_clock=true;fire_pending=false;option_pending=false;break;
                case SDLK_p:paused=!paused;reset_clock=true;fire_pending=false;option_pending=false;break;
                case SDLK_r:
                    if(!debug.enabled) break;
                    if(!started) title_flow.reset();
                    else {timeline.reset(session_ptr().stage_index());audio_stage=session_ptr().stage_index();if(audio) {audio->set_stage(audio_stage);audio->seek(0);}}
                    reset_clock=true;fire_pending=false;option_pending=false;break;
                case SDLK_t:
                    if(!debug.enabled) break;
#ifdef __APPLE__
                    if(event.key.keysym.mod & KMOD_GUI)
#else
                    if(event.key.keysym.mod & KMOD_CTRL)
#endif
                    {turbo=!turbo;reset_clock=true;if(audio) audio->set_speed(turbo?5:1);}
                    break;
                case SDLK_PAGEUP:case SDLK_PAGEDOWN:
                    if(!debug.enabled) break;
                    if(started) {
                        paused=true;timeline.scrub(event.key.keysym.sym==SDLK_PAGEUP?-100:100);
                        if(audio) {audio_stage=session_ptr().stage_index();audio->set_stage(audio_stage);audio->seek(double(session_ptr().stage_frame())/60);}
                    }
                    reset_clock=true;fire_pending=false;option_pending=false;break;
                case SDLK_w:if(debug.enabled && started) timeline.toggle_upgrades();break;
                case SDLK_g:
                    if(debug.enabled && started) {debug.invulnerable=!debug.invulnerable;timeline.set_invulnerable(debug.invulnerable);}
                    break;
                case SDLK_m:if(started && !paused) option_pending=true;break;
                case SDLK_F10:muted=!muted;if(audio) audio->mute(muted);break;
                case SDLK_SPACE:if(started && !paused) fire_pending=true;break;
                case SDLK_z:if(started && !paused) fire_pending=true;break;
                default:
                    if(debug.enabled && event.key.keysym.sym>=SDLK_0 && event.key.keysym.sym<=SDLK_9) {
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
        timeline.set_recording(debug.enabled);
        if(audio) {
            if(ending_running) {audio->set_music_playing(ending->music_track()!=0u);}
            else if(demo_running) {audio->set_music_playing(presentation.track()!=0u);}
            else if(started) {audio->set_boss_music(session_ptr().boss_music_active());audio->set_music_playing(session_ptr().music_playing());}
            else {
                if(menu.page==sm::TitleMenu::Page::Music) {
                    if(preview_track!=menu.music_track()) {
                        preview_track=menu.music_track();audio->set_music_track(preview_track);audio->set_speed(1);
                    }
                } else preview_track=999u;
                audio->set_music_playing(menu.page==sm::TitleMenu::Page::Music && menu.music_playing);
            }
            audio->pause(paused);
        }
        const auto now=SDL_GetPerformanceCounter();
        const double elapsed=std::min(0.25,double(now-previous)/frequency);previous=now;
        if(reset_clock || paused) accumulator=0;
        else if(ending_running) ending->advance(elapsed);
        else if(demo_running) presentation.advance(elapsed);
        else if(started) accumulator+=elapsed*(turbo?5.0:1.0);
        else title_flow.advance(elapsed);
        if(demo_running && !paused && !reset_clock) {
            if(audio) {
                for(auto request:presentation.requests()) {
                    if(request==59u || request==60u || request==62u || request==74u)
                        audio->set_music_track(request);
                    else if(request) audio->request_rom_audio(std::span<const unsigned>(&request,1u));
                }
                audio->set_music_playing(presentation.track()!=0u);
            }
            if(presentation.finished()) return_from_demo();
        }
        if(ending_running) {
            const auto request=ending->music_request();
            if(audio && request!=ending_request) {
                if(request==73u) audio->set_music_track(request);
                else if(request) audio->request_music_control(request);
                audio->set_music_playing(ending->music_track()!=0u);
            }
            ending_request=request;
            if(ending->finished()) return_from_demo();
        }
        const int demo_index=demo_cycle.advance(elapsed,!reset_clock && !paused && !started &&
            !debug.overlay && !demo_running && !ending_running && (title_flow.prompt() ||
            (title_flow.menu() && menu.page==sm::TitleMenu::Page::Main)));
        if(demo_index>=0) {
            presentation.reset(unsigned(demo_index));
            demo_running=true;accumulator=0;demo_cycle.activity();
            if(audio) {audio->set_music_playing(false);audio->set_speed(1);}
        }
        const auto* keys=SDL_GetKeyboardState(nullptr);
        sm::PlayerInput input{bool(keys[SDL_SCANCODE_UP]),bool(keys[SDL_SCANCODE_DOWN]),
            bool(keys[SDL_SCANCODE_LEFT]),bool(keys[SDL_SCANCODE_RIGHT]),
            bool(keys[SDL_SCANCODE_Z]||(menu.autofire && keys[SDL_SCANCODE_SPACE]))};
        while(!ending_running && started && accumulator>=1.0/60.0) {
            input.fire_pressed=fire_pending;fire_pending=false;
            input.option_mode_pressed=option_pending;option_pending=false;
            timeline.step(input);
            if(session_ptr().game_over()) {paused=true;accumulator=0;break;}
            accumulator-=1.0/60.0;
            if(audio && audio_stage!=session_ptr().stage_index()) {
                audio_stage=session_ptr().stage_index();audio->set_stage(audio_stage);
            }
            if(audio) {
                audio->set_boss_music(session_ptr().boss_music_active());
                audio->set_music_playing(session_ptr().music_playing());
                for(const auto sound:session_ptr().sound_events()) audio->play(sound);
            }
            if(!demo_running && session_ptr().campaign_complete()) {
                if(!ending) ending=std::make_unique<sm::EndingDemo>(asset_root/"assets/ending");
                ending->reset();ending_running=true;started=false;paused=false;
                accumulator=0;fire_pending=option_pending=false;ending_request=0;
                demo_cycle.activity();
                if(audio) {audio->set_music_playing(false);audio->set_speed(1);}
                break;
            }
        }
        // A paused scene has no animation. Keep the presented frame until
        // input, resize or expose events require a new image.
        if(paused && !redraw && !reset_clock) {
#ifdef __EMSCRIPTEN__
            wait_browser_frame();
#else
            SDL_Delay(30);
#endif
            continue;
        }
        int w,h;SDL_GetRendererOutputSize(renderer,&w,&h);
        const int dw=std::min(w,h*256/212),dh=dw*212/256;
        SDL_Rect dst{(w-dw)/2,(h-dh)/2,dw,dh};
        SDL_SetRenderDrawColor(renderer,0,0,0,255);SDL_RenderClear(renderer);
        if(ending_running) {
            const auto& pixels=ending->pixels();
            SDL_UpdateTexture(title_texture,nullptr,pixels.data(),256*4);
            SDL_RenderCopy(renderer,title_texture,nullptr,&dst);
            SDL_SetWindowTitle(window,paused?"Space Manbow - ending PAUSED":"Space Manbow - ending");
        } else if(demo_running) {
            const auto& pixels=presentation.pixels();
            SDL_UpdateTexture(title_texture,nullptr,pixels.data(),256*4);
            SDL_RenderCopy(renderer,title_texture,nullptr,&dst);
            SDL_SetWindowTitle(window,presentation.story()?"Space Manbow - intro story":"Space Manbow - original demo");
        } else if(!started) {
            auto pixels=title_animation.frame(title_flow.frame());
            if(title_flow.menu()) menu.draw(pixels,bool(audio));
            SDL_UpdateTexture(title_texture,nullptr,pixels.data(),int(title_animation.width()*4u));
            SDL_RenderCopy(renderer,title_texture,nullptr,&dst);
            SDL_SetWindowTitle(window,paused?"Space Manbow - menu PAUSED":"Space Manbow");
        } else {
#ifdef __EMSCRIPTEN__
            const auto render_start=profile_web?SDL_GetPerformanceCounter():0;
#endif
            // Both graphics choices share the corrected camera/star/actor
            // compositor. Enhanced adds scenery materials and the ship art.
            auto pixels=session_ptr().render_continuous(!menu.enhanced || session_ptr().state().player.state()==1u,menu.enhanced);
            if(menu.enhanced) {
                enhanced_ship.draw_engine(pixels,session_ptr().state().player,
                    session_ptr().frame(),session_ptr().stage_frame());
                enhanced_ship.draw_options(pixels,session_ptr().options(),session_ptr().frame());
                enhanced_ship.draw(pixels,session_ptr().state().player);
            }
            if(confirm_exit) menu.draw_exit_confirmation(pixels);
            if(session_ptr().game_over()) menu.draw_game_over(pixels);
#ifdef __EMSCRIPTEN__
            if(profile_web) EM_ASM({
                const stats=window.spaceManbowPerf || (window.spaceManbowPerf={renderMs:[]});
                stats.enhanced=!!$1;stats.frame=$2;
                stats.renderMs.push($0);
                if(stats.renderMs.length>600) stats.renderMs.shift();
            },1000.0*double(SDL_GetPerformanceCounter()-render_start)/frequency,int(menu.enhanced),session_ptr().frame());
#endif
            SDL_UpdateTexture(texture,nullptr,pixels.data(),1024*4);
            SDL_RenderCopy(renderer,texture,nullptr,&dst);
            char title[160];std::snprintf(title,sizeof(title),
                "Space Manbow - %s - stage %u - frame %u%s%s%s",demo_running?"DEMO":"native play",session_ptr().stage_index()+1u,session_ptr().frame(),paused?" PAUSED":"",turbo?" | TURBO 500%":"",
                session_ptr().campaign_complete()?" | complete":
                (session_ptr().at_fight_gate()?" | boss":""));
            SDL_SetWindowTitle(window,debug.enabled?title:(paused?"Space Manbow - paused":"Space Manbow"));
        }
        if(debug.overlay) debug_overlay->draw(renderer,debug);
        SDL_RenderPresent(renderer);
        redraw=false;
        // Present already blocks on the display when VSYNC is active. Sleeping
        // another millisecond afterwards occasionally pushes a frame over the
        // next refresh boundary and shows up as a small hitch. Only yield on
        // the non-vsync software fallback.
#ifdef __EMSCRIPTEN__
        // Allow audio callbacks and paint between frames, capped at 60 Hz even
        // on high-refresh displays. Simulation still follows elapsed time.
        wait_browser_frame();
#else
        if(!renderer_vsync) SDL_Delay(1);
#endif
    }
    debug_overlay.reset();audio.reset();SDL_DestroyTexture(title_texture);SDL_DestroyTexture(texture);SDL_DestroyRenderer(renderer);SDL_DestroyWindow(window);SDL_Quit();
    return 0;
} catch(const std::exception& e) { std::cerr<<e.what()<<'\n';SDL_Quit();return 1; }
