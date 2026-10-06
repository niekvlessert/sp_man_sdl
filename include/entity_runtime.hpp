#pragma once
#include "game_state.hpp"
#include "rom.hpp"
#include <cstdint>
#include <span>

namespace sm {

// Small, ROM-semantic primitives shared by enemy, combat and presentation
// code. These deliberately model the original Z80 helpers rather than generic
// game-engine behavior.

std::uint16_t raw_u16(std::span<const std::uint8_t> bytes,unsigned p) noexcept;
std::int16_t entity_word(const Entity64& entity,unsigned p) noexcept;
void entity_set_word(Entity64& entity,unsigned p,int value) noexcept;

// Fixed $6AD2/$6ADF countdown semantics: a counter expires at 1 and remains
// at 1. A zero input underflows to $FF, exactly like DEC in the original
// helper's non-expired path.
bool rom_timer_expired(Entity64& entity,unsigned field) noexcept;

// Common fixed-bank motion helpers. $6A7F integrates +0B/+0D velocity into
// Y/X position; $6A9A adds +0F/+11 acceleration into those velocity words.
void rom_integrate_velocity(Entity64& entity) noexcept;
void rom_add_acceleration(Entity64& entity) noexcept;

// Fixed $6B94-$6BE5 8-direction classifier. Only position high bytes are used.
std::uint8_t rom_direction8(const Entity64& target,const Entity64& source) noexcept;

// Common ROM angle-table services used by multiple enemy families.
unsigned rom_target_global_angle(const Rom& rom,const Entity64& source,
                                 const Entity64& target);
void rom_set_global_angle_velocity(const Rom& rom,Entity64& entity,
                                   unsigned global_angle,unsigned speed);
// Fixed $7362/$737C heading entry: bank04:$738D stores sign bits plus a
// quarter-wave angle index. Used by cannon bursts and scripted bullet fans.
void rom_set_heading_velocity(const Rom& rom,Entity64& entity,
                              unsigned heading,unsigned speed);
void rom_set_aimed_velocity(const Rom& rom,Entity64& entity,
                            const Entity64& target,unsigned speed);

} // namespace sm
