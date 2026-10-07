#include "play_audio.hpp"
#include <kss/kss.h>
#include <kssplay.h>
#include <algorithm>
#include <cmath>
#include <cstring>
#include <fstream>
#include <iterator>
#include <stdexcept>

namespace sm {
namespace {
constexpr std::size_t kRomSize=0x40000u;
constexpr std::size_t kRomBankSize=0x2000u;
constexpr std::uint16_t kKssLoadAddress=0x0100u;
constexpr std::uint16_t kKssLoadLength=0x7f00u;
constexpr std::uint16_t kKssInitAddress=0x0100u;
constexpr std::uint16_t kKssPlayAddress=0x0119u;
constexpr std::size_t kKssHeaderSize=16u;

void put16(std::vector<std::uint8_t>& out,std::size_t offset,std::uint16_t value) {
    out[offset]=std::uint8_t(value);out[offset+1u]=std::uint8_t(value>>8u);
}

std::vector<std::uint8_t> read_rom(const std::filesystem::path& path) {
    std::ifstream input(path,std::ios::binary);
    if(!input) throw std::runtime_error("cannot open Space Manbow ROM for libkss: "+path.string());
    std::vector<std::uint8_t> rom((std::istreambuf_iterator<char>(input)),{});
    if(rom.size()!=kRomSize)
        throw std::runtime_error("libkss music expects the 256 KiB Space Manbow ROM");
    // Guard the three entry jumps of the original bank-$1C sound driver and
    // the fixed mapper helper it calls. This prevents silently executing an
    // unrelated 256 KiB cartridge through the wrapper below.
    static constexpr std::array<std::uint8_t,9> driver_signature{
        0xc3,0x09,0x60,0xc3,0x29,0x69,0xc3,0xd6,0x6a};
    static constexpr std::array<std::uint8_t,8> mapper_signature{
        0x3e,0x1c,0x32,0xf1,0xf0,0x32,0x00,0x70};
    if(!std::equal(driver_signature.begin(),driver_signature.end(),rom.begin()+28u*kRomBankSize) ||
       !std::equal(mapper_signature.begin(),mapper_signature.end(),rom.begin()+0x0bc8u))
        throw std::runtime_error("ROM does not contain the expected Space Manbow PSG/SCC driver");
    return rom;
}

std::vector<std::uint8_t> make_kss_image(const std::filesystem::path& rom_path) {
    const auto rom=read_rom(rom_path);
    // libkss 8 KiB banking matches the cartridge's $9000/$B000 mapper writes.
    // Bank $1C is kept fixed at $6000 (the original also writes $7000, which
    // can therefore be ignored), while bank $1D/$1E and later music banks are
    // selected by the untouched ROM code. All 32 original 8 KiB banks are
    // supplied verbatim as KSS bank data.
    std::vector<std::uint8_t> image(kKssHeaderSize+kKssLoadLength+rom.size(),0u);
    image[0]='K';image[1]='S';image[2]='C';image[3]='C';
    put16(image,4,kKssLoadAddress);put16(image,6,kKssLoadLength);
    put16(image,8,kKssInitAddress);put16(image,10,kKssPlayAddress);
    image[12]=0u;                       // bank offset 0
    image[13]=std::uint8_t(0x80u|32u); // 32 x 8 KiB banks
    image[14]=0u;image[15]=0u;          // no extension / PSG+SCC only

    auto main_at=[&](std::uint16_t address) -> auto {
        return image.begin()+std::ptrdiff_t(kKssHeaderSize+address-kKssLoadAddress);
    };
    // Init wrapper. KSSPLAY supplies the requested ROM sound ID in A:
    //   save ID; install original mapper state; clear C600-C8FF exactly like
    //   the validated OpenMSX exporter; call $6000; restore ID; call $6003.
    // The per-vblank callback remains the original $6006 entry point.
    static constexpr std::array<std::uint8_t,29> wrapper{
        0xf5,                         // PUSH AF
        0xcd,0xc8,0x4b,              // CALL $4BC8 (map $1C/$1D/$1E)
        0xaf,                         // XOR A
        0x21,0x00,0xc6,              // LD HL,$C600
        0x11,0x01,0xc6,              // LD DE,$C601
        0x01,0xff,0x02,              // LD BC,$02FF
        0x77,                         // LD (HL),A
        0xed,0xb0,                   // LDIR -> clear $C600-$C8FF
        0xcd,0x00,0x60,              // CALL $6000
        0xf1,                         // POP AF
        0xcd,0x03,0x60,              // CALL $6003 (request track)
        0xc9,                         // RET
        0xcd,0x06,0x60,              // $0119: CALL $6006
        0xc9                          // RET
    };
    std::copy(wrapper.begin(),wrapper.end(),main_at(kKssInitAddress));
    std::copy(rom.begin(),rom.begin()+kRomBankSize,main_at(0x4000u));
    std::copy(rom.begin()+28u*kRomBankSize,rom.begin()+29u*kRomBankSize,main_at(0x6000u));
    std::copy(rom.begin(),rom.end(),image.begin()+std::ptrdiff_t(kKssHeaderSize+kKssLoadLength));
    return image;
}
}

PlayAudio::PlayAudio(const std::filesystem::path& directory,const std::filesystem::path& rom_path) {
    SDL_AudioSpec wanted{};wanted.freq=44100;wanted.format=AUDIO_S16SYS;
    wanted.channels=1;wanted.samples=1024;wanted.callback=callback;wanted.userdata=this;
    device_=SDL_OpenAudioDevice(nullptr,0,&wanted,&format_,0);
    if(!device_) throw std::runtime_error(SDL_GetError());
    try {
        auto image=make_kss_image(rom_path);
        kss_=KSS_bin2kss(image.data(),std::uint32_t(image.size()),"space_manbow_rom.kss");
        if(!kss_) throw std::runtime_error("libkss rejected generated Space Manbow KSS image");
        kss_player_=KSSPLAY_new(std::uint32_t(format_.freq),1u,16u);
        if(!kss_player_ || KSSPLAY_set_data(kss_player_,kss_)!=0)
            throw std::runtime_error("libkss player initialization failed");
        // Space Manbow uses the original SCC, not SCC+.
        KSSPLAY_set_device_type(kss_player_,KSS_DEVICE_SCC,VM_SCC_STANDARD);
        reset_music_unlocked();

        unsigned index=0;
        for(const auto name:{"shot","wave_shot","power_shot","explosion","hit","enemy_shot","pickup","powerup","option_mode","missile_launch","tower_explosion","turret_explosion","heavy_vehicle_explosion","large_cannon_explosion","boss_hit","platform_explosion","platform_burst","platform_rumble","cannon_shot","claw_close","claw_open","terrain_hit","terrain_break","bomb_expand","bomb_blast","carrier_launch","hatch_shot","stage3_arm_extend","stage3_arm_retract","stage6_open","stage6_close","stage7_arrive","stage7_break","stage8_break","stage4_laser","stage8_wall"})
            effects_[index++]=load(directory/(std::string(name)+".wav"));
    } catch(...) {
        if(kss_player_) {KSSPLAY_delete(kss_player_);kss_player_=nullptr;}
        if(kss_) {KSS_delete(kss_);kss_=nullptr;}
        SDL_CloseAudioDevice(device_);device_=0;throw;
    }
    SDL_PauseAudioDevice(device_,0);
}
PlayAudio::~PlayAudio() {
    if(device_) SDL_CloseAudioDevice(device_);
    if(kss_player_) KSSPLAY_delete(kss_player_);
    if(kss_) KSS_delete(kss_);
}
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
void PlayAudio::reset_music_unlocked() {
    if(!kss_player_) return;
    current_track_=boss_music_active_?boss_track_id_:
        stage_track_ids_[std::min<unsigned>(current_stage_,stage_track_ids_.size()-1u)];
    KSSPLAY_reset(kss_player_,current_track_,0u);
    music_position_=0u;
}
void PlayAudio::seek_unlocked(double seconds) {
    reset_music_unlocked();
    if(!kss_player_) return;
    const auto target=std::uint64_t(std::max(0.0,seconds)*double(format_.freq));
    std::uint64_t remaining=target;
    while(remaining) {
        const auto block=std::uint32_t(std::min<std::uint64_t>(remaining,1u<<20u));
        KSSPLAY_calc_silent(kss_player_,block);remaining-=block;
    }
    music_position_=target;
}
void PlayAudio::set_stage(unsigned stage) {
    if(stage>=stage_track_ids_.size()) return;
    SDL_LockAudioDevice(device_);
    current_stage_=stage;boss_music_active_=false;reset_music_unlocked();voices_={};music_playing_=true;
    SDL_UnlockAudioDevice(device_);
}
void PlayAudio::set_music_track(unsigned track) {
    if(track<57u || track>68u) return;
    SDL_LockAudioDevice(device_);
    boss_music_active_=false;current_track_=std::uint8_t(track);
    if(kss_player_) KSSPLAY_reset(kss_player_,current_track_,0u);
    music_position_=0u;voices_={};
    SDL_UnlockAudioDevice(device_);
}
void PlayAudio::set_boss_music(bool active) {
    SDL_LockAudioDevice(device_);
    if(active!=boss_music_active_) {boss_music_active_=active;reset_music_unlocked();}
    SDL_UnlockAudioDevice(device_);
}
void PlayAudio::seek(double seconds) {
    SDL_LockAudioDevice(device_);seek_unlocked(seconds);voices_={};SDL_UnlockAudioDevice(device_);
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
void PlayAudio::set_speed(unsigned speed) {
    SDL_LockAudioDevice(device_);speed_=speed==5?5:1;SDL_UnlockAudioDevice(device_);
}
void PlayAudio::set_music_playing(bool playing) {
    SDL_LockAudioDevice(device_);music_playing_=playing;SDL_UnlockAudioDevice(device_);
}
void PlayAudio::callback(void* self, Uint8* output, int bytes) {
    auto& audio=*static_cast<PlayAudio*>(self);
    auto* samples=reinterpret_cast<Sint16*>(output);
    const int total=bytes/int(sizeof(Sint16));
    int base=0;
    while(base<total) {
        const int count=std::min(1024,total-base);
        const bool have_music=audio.music_playing_ && audio.kss_player_;
        if(have_music) {
            const auto generated=std::uint32_t(count*int(audio.speed_));
            KSSPLAY_calc(audio.kss_player_,audio.music_scratch_.data(),generated);
            audio.music_position_+=generated;
        }
        for(int j=0;j<count;++j) {
            int mixed=have_music?audio.music_scratch_[std::size_t(j)*audio.speed_]:0;
            for(auto& voice:audio.voices_) if(voice.active) {
                if(voice.clip>=audio.effects_.size()) {voice.active=false;continue;}
                const auto& clip=audio.effects_[voice.clip];
                if(clip.empty() || voice.position>=clip.size()) {voice.active=false;continue;}
                mixed+=clip[voice.position];voice.position+=audio.speed_;
                if(voice.position>=clip.size()) voice.active=false;
            }
            samples[base+j]=audio.muted_?0:Sint16(std::clamp(mixed,-32768,32767));
        }
        base+=count;
    }
}
}
