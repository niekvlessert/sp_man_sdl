#include "game_state.hpp"
#include "rom.hpp"

namespace sm {
GameState::GameState() noexcept {
    // Reference player position from the no-input openMSX stage-0 captures.
    // Some scenery handlers (notably type $20) select tile frames by the
    // 8-way vector from the object to the player.
    player.set_x_fixed(0x0500u);
    player.set_y_fixed(0x0800u);
}

std::uint16_t Entity64::x_fixed() const noexcept {
    return std::uint16_t(raw[0x09]) | (std::uint16_t(raw[0x0a]) << 8);
}

std::uint16_t Entity64::y_fixed() const noexcept {
    return std::uint16_t(raw[0x07]) | (std::uint16_t(raw[0x08]) << 8);
}

void Entity64::set_x_fixed(std::uint16_t v) noexcept {
    raw[0x09] = std::uint8_t(v);
    raw[0x0a] = std::uint8_t(v >> 8);
}

void Entity64::set_y_fixed(std::uint16_t v) noexcept {
    raw[0x07] = std::uint8_t(v);
    raw[0x08] = std::uint8_t(v >> 8);
}

Entity64* GameState::allocate_enemy() noexcept {
    for (auto& e : enemies) if (!e.active()) return &e;
    return nullptr;
}

std::size_t GameState::active_enemy_count() const noexcept {
    std::size_t n = 0;
    for (const auto& e : enemies) if (e.active()) ++n;
    return n;
}
std::uint8_t rom_random(const Rom& rom,GameState& game) {
    const auto fixed=rom.bank(0);
    game.random_value=std::uint8_t(fixed[0x600u+game.random_index]^game.random_value^
                                 fixed[0x700u+game.random_index]);
    ++game.random_index;
    return game.random_value;
}

}
