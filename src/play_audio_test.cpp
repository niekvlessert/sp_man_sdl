#include "play_audio.hpp"
#include <iostream>
#include <stdexcept>
int main(int argc,char** argv) try {
    if(argc!=2) return 2;
    if(SDL_Init(SDL_INIT_AUDIO)) throw std::runtime_error(SDL_GetError());
    {
        sm::PlayAudio audio(argv[1]);
        for(auto sound:{sm::PlaySound::Shot,sm::PlaySound::WaveShot,sm::PlaySound::PowerShot,sm::PlaySound::Hit,sm::PlaySound::Explosion,sm::PlaySound::EnemyShot,sm::PlaySound::Pickup,sm::PlaySound::PowerUp,sm::PlaySound::OptionMode,sm::PlaySound::MissileLaunch,sm::PlaySound::TowerExplosion,sm::PlaySound::TurretExplosion,sm::PlaySound::HeavyVehicleExplosion,sm::PlaySound::LargeCannonExplosion,sm::PlaySound::BossHit,sm::PlaySound::PlatformExplosion,sm::PlaySound::PlatformBurst,sm::PlaySound::PlatformRumble}) audio.play(sound);
        SDL_Delay(100);audio.pause(true);audio.seek(117);audio.mute(true);
        audio.pause(false);SDL_Delay(100);audio.mute(false);audio.seek(0);
    }
    SDL_Quit();std::cout<<"SDL audio loading/mixing/lifecycle PASS\n";
} catch(const std::exception& e) {std::cerr<<e.what()<<'\n';SDL_Quit();return 1;}
