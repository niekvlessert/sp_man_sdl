# Genericization audit — 2026-10-06

## Implemented: packed ROM tile-placement scripts

`src/spawn.cpp` contained the same packed placement-list decoder repeated for large actors and bosses in several stages. The shared ROM grammar now lives in `include/rom_tile_script.hpp` and `src/rom_tile_script.cpp`.

The decoder is stage-agnostic: it takes a ROM bank, CPU-window base, pointer-table address and selector, and returns unresolved `{matrix, y, x}` placements. Current users include types `$47/$55`, `$56`, `$6B`, `$14/$77`, `$3E`, `$41`, `$78` and `$79`. This removes roughly 260 lines of duplicated parser code from `spawn.cpp` and should be the default path for remaining levels whenever the ROM reaches the common `$7B65`-style packed matrix compositor.

Type `$2E` intentionally remains separate. Its stream is a related but different delta-accumulating grammar with repeat commands (`$80..$FD`), so forcing it through the simple placement decoder would hide real ROM behavior.

## Good next extraction: entity runtime primitives

There are still duplicated low-level helpers in `stage0_enemies.cpp`, `stage0_combat.cpp` and `play_session.cpp`: 16-bit entity field read/write (`put`, `set_word`, `signed_word`, `velocity`), ROM timer semantics (`expired` and `timer` are the same leave-at-1 countdown primitive), 8-direction target calculation, and angle-table to velocity conversion. These are strong candidates for a small `entity_runtime.hpp` module. It would make new enemy handlers shorter and reduce the chance of accidentally using ordinary C++ countdown semantics where the Z80 helper has special behavior.

## Medium priority: declarative projectile emitters

Many remaining enemy/boss handlers repeat: countdown/reload, allocate a bullet record, inherit source position plus offset, aim/select heading, install speed/flags/type, and optionally emit sound. A small descriptor-driven emitter would help port regular enemies without moving state-machine timing out of the individual handler.

## Medium priority: boss lifecycle

Stages 3-9 repeat linked-child ownership, weak-state damage gates, palette flash, death replacement/cleanup and stage handoff across `stage0_enemies.cpp` and `play_session.cpp`. These should become small lifecycle primitives rather than one large Boss class, because the ROM implementations are similar but not identical.

## Low priority: test helpers

Boss regression tests repeat `find_type()`, ROM setup and pool searches. A shared test header would reduce noise, but it does not help the game port itself and should come after runtime primitives.

## Rule for remaining ports

Before adding level-specific code, check whether the ROM routine is one of the already mapped common engines: packed tile compositor, angle/velocity tables, object timer, bullet allocator, or damage service. Genericize when the ROM itself is generic; keep truly custom object state machines local.
