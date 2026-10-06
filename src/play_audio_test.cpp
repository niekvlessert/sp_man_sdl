#include <SDL.h>
#include <kssplay.h>
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
    if(argc!=3) return 2;
    if(SDL_Init(SDL_INIT_AUDIO)) throw std::runtime_error(SDL_GetError());
    {
        sm::PlayAudio audio(argv[1],argv[2]);
        audio.pause(true);audio.seek(0);audio.set_music_playing(false);
        std::vector<Sint16> output(44100*3);
        const auto music_position=audio.music_position_;
        sm::PlayAudio::callback(&audio,reinterpret_cast<Uint8*>(output.data()),int(output.size()*sizeof(Sint16)));
        assert(std::all_of(output.begin(),output.end(),[](auto s){return s==0;}));
        assert(audio.music_position_==music_position);

        // WAV effects remain independent voices and must not advance libkss.
        for(auto sound:{sm::PlaySound::CarrierLaunch,sm::PlaySound::HatchShot,sm::PlaySound::TowerExplosion,
                        sm::PlaySound::Stage8Break,sm::PlaySound::Stage4Laser,sm::PlaySound::Stage8Wall}) {
            std::fill(output.begin(),output.end(),0);
            audio.play(sound);
            sm::PlayAudio::callback(&audio,reinterpret_cast<Uint8*>(output.data()),int(output.size()*sizeof(Sint16)));
            assert(std::any_of(output.begin(),output.end(),[](auto s){return s!=0;}));
            assert(audio.music_position_==music_position);
        }

        // All nine stage tracks now come directly from the original ROM.
        constexpr std::array<std::uint8_t,9> tracks{59,60,61,62,63,64,65,67,58};
        constexpr std::array<std::uint8_t,9> music_banks{23,30,30,30,24,24,24,30,23};
        audio.set_music_playing(true);
        std::vector<Sint16> music(44100*2);
        for(unsigned stage=0;stage<tracks.size();++stage) {
            audio.set_stage(stage);assert(audio.current_track_==tracks[stage]);
            std::fill(music.begin(),music.end(),0);
            sm::PlayAudio::callback(&audio,reinterpret_cast<Uint8*>(music.data()),int(music.size()*sizeof(Sint16)));
            // $6003 queues the request; the original $6006 update installs
            // the track's retained A000 music bank on the first vblank.
            assert(KSSPLAY_read_memory(audio.kss_player_,0xc8c8u)==music_banks[stage]);
            assert(std::any_of(music.begin(),music.end(),[](auto s){return s!=0;}));
            assert(audio.music_position_==music.size());
        }

        audio.set_stage(0);assert(audio.current_track_==59u);
        audio.set_boss_music(true);assert(audio.boss_music_active_ && audio.current_track_==57u);
        std::fill(music.begin(),music.end(),0);
        sm::PlayAudio::callback(&audio,reinterpret_cast<Uint8*>(music.data()),int(music.size()*sizeof(Sint16)));
        assert(KSSPLAY_read_memory(audio.kss_player_,0xc8c8u)==24u);
        assert(std::any_of(music.begin(),music.end(),[](auto s){return s!=0;}));
        audio.set_boss_music(false);assert(!audio.boss_music_active_ && audio.current_track_==59u);

        audio.seek(30.0);assert(audio.music_position_==std::uint64_t(30*44100));
        std::array<Sint16,1024> short_output{};
        const auto before=audio.music_position_;
        sm::PlayAudio::callback(&audio,reinterpret_cast<Uint8*>(short_output.data()),int(short_output.size()*sizeof(Sint16)));
        assert(audio.music_position_==before+short_output.size());
        audio.set_speed(5);const auto turbo_before=audio.music_position_;
        sm::PlayAudio::callback(&audio,reinterpret_cast<Uint8*>(short_output.data()),int(short_output.size()*sizeof(Sint16)));
        assert(audio.music_position_==turbo_before+short_output.size()*5u);
        audio.set_speed(1);

        audio.pause(false);
        for(unsigned i=0;i<unsigned(sm::PlaySound::Count);++i) {audio.play(sm::PlaySound(i));SDL_Delay(30);}
        SDL_Delay(100);audio.pause(true);audio.mute(true);audio.pause(false);SDL_Delay(50);audio.mute(false);
    }
    SDL_Quit();std::cout<<"SDL libkss ROM music + WAV SFX loading/mixing/lifecycle PASS\n";
} catch(const std::exception& e) {std::cerr<<e.what()<<'\n';SDL_Quit();return 1;}
