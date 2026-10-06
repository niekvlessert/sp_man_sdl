#pragma once
#include <array>
#include <cstddef>
#include <cstdint>

namespace sm {
class Rom;
// Native mirror of the original 0x40-byte object record. Positions use the
// game's 8.8 tile coordinates: +07/+08 Y and +09/+0A X (32 units/pixel).
struct Entity64 {
    std::array<std::uint8_t, 0x40> raw{};
    std::uint8_t& type() noexcept { return raw[0x00]; }
    std::uint8_t type() const noexcept { return raw[0x00]; }
    std::uint8_t& state() noexcept { return raw[0x01]; }
    std::uint8_t state() const noexcept { return raw[0x01]; }
    std::uint8_t& flags15() noexcept { return raw[0x15]; }
    std::uint8_t flags15() const noexcept { return raw[0x15]; }

    std::uint16_t x_fixed() const noexcept;
    std::uint16_t y_fixed() const noexcept;
    void set_x_fixed(std::uint16_t v) noexcept;
    void set_y_fixed(std::uint16_t v) noexcept;
    std::uint8_t x_pixel() const noexcept { return raw[0x0a]; }
    std::uint8_t y_pixel() const noexcept { return raw[0x08]; }
    bool active() const noexcept { return raw[0x00] != 0; }
    void clear() noexcept { raw.fill(0); }
};

struct GameState {
    Entity64 player{}; // original structure base: $CA40
    std::array<Entity64,18> lasers{}; // original 18-record secondary pool at $D460
    std::array<Entity64,48> stage3_lattice{}; // native shadow of committed Stage-3 D988 A7 lines
    std::array<Entity64, 20> enemies{}; // original pool base: $CE80
    bool tower_destroyed=false, platform_chain_active=false; // CE4C/CE4D
    std::uint8_t difficulty = 1; // CA19 from the active weapon records
    std::uint8_t random_index = 0, random_value = 0; // C917/C918
    double camera_x = 0.0;
    std::uint8_t logic_phase = 0; // CA02&7 surrogate for staggered object handlers

    GameState() noexcept;
    Entity64* allocate_enemy() noexcept;
    std::size_t active_enemy_count() const noexcept;
};
std::uint8_t rom_random(const Rom& rom,GameState& game);
}
