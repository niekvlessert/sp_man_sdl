#include "play_audio.hpp"
#include <algorithm>
#include <cstring>
#include <stdexcept>

namespace sm {
PlayAudio::PlayAudio(const std::filesystem::path& directory) {
    SDL_AudioSpec wanted{};wanted.freq=44100;wanted.format=AUDIO_S16SYS;
    wanted.channels=1;wanted.samples=1024;wanted.callback=callback;wanted.userdata=this;
    device_=SDL_OpenAudioDevice(nullptr,0,&wanted,&format_,0);
    if(!device_) throw std::runtime_error(SDL_GetError());
    try {
        music_=load(directory/"stage0.wav");
        unsigned index=0;
        for(const auto name:{"shot","wave_shot","power_shot","explosion","hit","enemy_shot","pickup","powerup","option_mode","missile_launch","tower_explosion","turret_explosion","heavy_vehicle_explosion","large_cannon_explosion","boss_hit","platform_explosion","platform_burst","platform_rumble"})
            effects_[index++]=load(directory/(std::string(name)+".wav"));
    } catch(...) {SDL_CloseAudioDevice(device_);device_=0;throw;}
    SDL_PauseAudioDevice(device_,0);
}
PlayAudio::~PlayAudio() {if(device_) SDL_CloseAudioDevice(device_);}
std::vector<Sint16> PlayAudio::load(const std::filesystem::path& path) {
    SDL_AudioSpec source{};Uint8* bytes=nullptr;Uint32 length=0;
    if(!SDL_LoadWAV(path.string().c_str(),&source,&bytes,&length))
        throw std::runtime_error("audio asset "+path.string()+": "+SDL_GetError());
    SDL_AudioCVT convert{};
    const int status=SDL_BuildAudioCVT(&convert,source.format,source.channels,source.freq,
        format_.format,format_.channels,format_.freq);
    if(status<0) {SDL_FreeWAV(bytes);throw std::runtime_error(SDL_GetError());}
    std::vector<Uint8> storage(std::size_t(length)*convert.len_mult);
    std::memcpy(storage.data(),bytes,length);SDL_FreeWAV(bytes);
    convert.buf=storage.data();convert.len=int(length);
    if(status && SDL_ConvertAudio(&convert)<0) throw std::runtime_error(SDL_GetError());
    const auto size=std::size_t(status?convert.len_cvt:int(length));
    std::vector<Sint16> samples(size/sizeof(Sint16));
    std::memcpy(samples.data(),storage.data(),samples.size()*sizeof(Sint16));
    if(samples.empty()) throw std::runtime_error("empty audio asset: "+path.string());
    return samples;
}
void PlayAudio::seek(double seconds) {
    SDL_LockAudioDevice(device_);
    music_position_=std::size_t(std::max(0.0,seconds)*format_.freq)%music_.size();
    voices_={};SDL_UnlockAudioDevice(device_);
}
void PlayAudio::play(PlaySound sound) {
    SDL_LockAudioDevice(device_);
    auto voice=std::find_if(voices_.begin(),voices_.end(),[](auto& v){return !v.active;});
    if(voice==voices_.end()) voice=voices_.begin();
    *voice={unsigned(sound),0,true};SDL_UnlockAudioDevice(device_);
}
void PlayAudio::pause(bool paused) {SDL_PauseAudioDevice(device_,paused?1:0);}
void PlayAudio::mute(bool muted) {
    SDL_LockAudioDevice(device_);muted_=muted;SDL_UnlockAudioDevice(device_);
}
void PlayAudio::callback(void* self, Uint8* output, int bytes) {
    auto& audio=*static_cast<PlayAudio*>(self);
    auto* samples=reinterpret_cast<Sint16*>(output);
    for(int i=0;i<bytes/int(sizeof(Sint16));++i) {
        int mixed=audio.music_[audio.music_position_++];
        if(audio.music_position_==audio.music_.size()) audio.music_position_=0;
        for(auto& voice:audio.voices_) if(voice.active) {
            if(voice.clip>=audio.effects_.size()) {voice.active=false;continue;}
            const auto& clip=audio.effects_[voice.clip];
            if(clip.empty() || voice.position>=clip.size()) {voice.active=false;continue;}
            mixed+=clip[voice.position++];
            if(voice.position>=clip.size()) voice.active=false;
        }
        samples[i]=audio.muted_?0:Sint16(std::clamp(mixed,-32768,32767));
    }
}
}
