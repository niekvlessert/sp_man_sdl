#pragma once
#include "play_sound.hpp"
#include <SDL.h>
#include <array>
#include <cstdint>
#include <filesystem>
#include <vector>
#include <span>

struct tagKSS;
struct tagKSSPLAY;

namespace sm {
class PlayAudio {
public:
    PlayAudio(const std::filesystem::path& directory,const std::filesystem::path& rom_path);
    ~PlayAudio();
    PlayAudio(const PlayAudio&)=delete;
    PlayAudio& operator=(const PlayAudio&)=delete;
    void seek(double seconds);
    void set_stage(unsigned stage);
    void set_boss_music(bool active);
    void play(PlaySound sound);
    void pause(bool paused);
    void mute(bool muted);
    void set_speed(unsigned speed);
    void set_music_playing(bool playing);
    void set_music_track(unsigned track);
    void request_music_control(unsigned request);
    void request_rom_audio(std::span<const unsigned> requests);
private:
    struct Voice { unsigned clip=0;std::size_t position=0;bool active=false; };
    inline static constexpr std::array<std::uint8_t,9> stage_track_ids_{
        59u,60u,61u,62u,63u,64u,65u,67u,58u};
    inline static constexpr std::uint8_t boss_track_id_=57u;
    static void callback(void* self, Uint8* output, int bytes);
    std::vector<Sint16> load(const std::filesystem::path& path);
    void reset_music_unlocked();
    void seek_unlocked(double seconds);
    SDL_AudioDeviceID device_=0;
    SDL_AudioSpec format_{};
    tagKSS* kss_=nullptr;
    tagKSSPLAY* kss_player_=nullptr;
    unsigned current_stage_=0;
    std::uint8_t current_track_=stage_track_ids_[0];
    bool boss_music_active_=false;
    std::array<std::vector<Sint16>,static_cast<std::size_t>(PlaySound::Count)> effects_;
    std::array<Voice,16> voices_{};
    std::array<Sint16,5120> music_scratch_{}; // 1024 output frames at 5x turbo
    std::uint64_t music_position_=0;          // emulated 44.1 kHz samples since reset
    bool muted_=false;
    bool music_playing_=true;
    unsigned speed_=1;
};
}
