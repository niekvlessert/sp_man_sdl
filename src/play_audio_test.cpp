#include <SDL.h>
#include <array>
#include <filesystem>
#include <vector>
#define private public
#include "play_audio.hpp"
#undef private
#ifdef NDEBUG
#undef NDEBUG
#endif
#include <algorithm>
#include <cassert>
#include <iostream>
#include <stdexcept>
int main(int argc,char** argv) try {
    if(argc!=2) return 2;
    if(SDL_Init(SDL_INIT_AUDIO)) throw std::runtime_error(SDL_GetError());
    {
        sm::PlayAudio audio(argv[1]);
        audio.pause(true);audio.seek(0);audio.set_music_playing(false);
        std::vector<Sint16> output(44100*3);
        const auto music_position=audio.music_position_;
        sm::PlayAudio::callback(&audio,reinterpret_cast<Uint8*>(output.data()),int(output.size()*sizeof(Sint16)));
        assert(std::all_of(output.begin(),output.end(),[](auto s){return s==0;}));
        for(auto sound:{sm::PlaySound::CarrierLaunch,sm::PlaySound::HatchShot,sm::PlaySound::TowerExplosion}) {
            audio.play(sound);
            sm::PlayAudio::callback(&audio,reinterpret_cast<Uint8*>(output.data()),int(output.size()*sizeof(Sint16)));
            assert(std::any_of(output.begin(),output.end(),[](auto s){return s!=0;}));
            assert(audio.music_position_==music_position);
        }
        audio.set_music_playing(true);audio.seek(30);
        sm::PlayAudio::callback(&audio,reinterpret_cast<Uint8*>(output.data()),int(output.size()*sizeof(Sint16)));
        assert(std::any_of(output.begin(),output.end(),[](auto s){return s!=0;}));
        audio.set_stage(1);assert(audio.music_playing_);
        audio.set_stage(2);assert(audio.current_stage_==2u);assert(audio.music_.empty());
        audio.seek(30); // missing stage-3 export is intentionally silent, never modulo-zero
        audio.set_stage(3);assert(audio.current_stage_==3u);assert(audio.music_.empty());
        audio.set_stage(8);assert(audio.current_stage_==8u);assert(audio.music_.empty());
        audio.seek(30);
        audio.set_stage(0);assert(audio.music_playing_);
        const auto stage0_head=audio.music_.front();
        audio.set_boss_music(true);assert(audio.boss_music_active_);assert(audio.music_.front()==audio.boss_music_.front());
        audio.set_boss_music(false);assert(!audio.boss_music_active_);assert(audio.music_.front()==stage0_head);
        audio.pause(false);
        for(unsigned i=0;i<unsigned(sm::PlaySound::Count);++i) {
            audio.play(sm::PlaySound(i));
            SDL_Delay(30); // allow the callback to consume each effect before stage reset
        }
        audio.set_speed(5);audio.set_stage(1);audio.seek(2);audio.set_stage(0);
        SDL_Delay(100);audio.set_speed(1);
        SDL_Delay(100);audio.pause(true);audio.seek(117);audio.mute(true);
        audio.pause(false);SDL_Delay(100);audio.mute(false);audio.seek(0);
    }
    SDL_Quit();std::cout<<"SDL audio loading/mixing/lifecycle PASS\n";
} catch(const std::exception& e) {std::cerr<<e.what()<<'\n';SDL_Quit();return 1;}
