#pragma once
#include "play_sound.hpp"
#include <SDL.h>
#include <array>
#include <filesystem>
#include <vector>

namespace sm {
class PlayAudio {
public:
    explicit PlayAudio(const std::filesystem::path& directory);
    ~PlayAudio();
    PlayAudio(const PlayAudio&)=delete;
    PlayAudio& operator=(const PlayAudio&)=delete;
    void seek(double seconds);
    void set_stage(unsigned stage);
    void play(PlaySound sound);
    void pause(bool paused);
    void mute(bool muted);
    void set_speed(unsigned speed);
    void set_music_playing(bool playing);
private:
    struct Voice { unsigned clip=0;std::size_t position=0;bool active=false; };
    static void callback(void* self, Uint8* output, int bytes);
    std::vector<Sint16> load(const std::filesystem::path& path);
    SDL_AudioDeviceID device_=0;
    SDL_AudioSpec format_{};
    std::vector<Sint16> music_;
    std::array<std::vector<Sint16>,2> stage_music_;
    std::array<std::vector<Sint16>,static_cast<std::size_t>(PlaySound::Count)> effects_;
    std::array<Voice,16> voices_{};
    std::size_t music_position_=0;
    bool muted_=false;
    bool music_playing_=true;
    unsigned speed_=1;
};
}
