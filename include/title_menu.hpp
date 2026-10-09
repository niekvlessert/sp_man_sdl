#pragma once
#include "rom.hpp"
#include <array>
#include <cstdint>
#include <string_view>
#include <vector>
namespace sm {
class TitleMenu {
public:
    enum class Page { Main, Options, Music };
    explicit TitleMenu(const Rom& rom);
    void move(int delta);
    void adjust(int delta);
    bool activate(); // true when a graphics choice starts the game
    bool back(); // true at the root
    void draw(std::vector<std::uint32_t>& pixels,bool audio_available=true) const;
    void draw_game_over(std::vector<std::uint32_t>& pixels) const;
    void draw_exit_confirmation(std::vector<std::uint32_t>& pixels) const;
    Page page=Page::Main;
    unsigned selected=1,track=0;
    bool enhanced=true,autofire=true,music_playing=false;
    unsigned music_track() const {return 57u+track;}
private:
    std::array<std::array<std::uint8_t,8>,96> font_{};
    void text(std::vector<std::uint32_t>& pixels,int x,int y,std::string_view s,std::uint32_t color) const;
    void row(std::vector<std::uint32_t>& pixels,unsigned index,int y,std::string_view s) const;
};
}
