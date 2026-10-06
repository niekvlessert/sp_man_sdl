# Genericization audit — 2026-10-06

## Implemented: packed ROM tile-placement scripts

`src/spawn.cpp` contained the same packed placement-list decoder repeated for large actors and bosses in several stages. The shared ROM grammar now lives in `include/rom_tile_script.hpp` and `src/rom_tile_script.cpp`.

The decoder is stage-agnostic: it takes a ROM bank, CPU-window base, pointer-table address and selector, and returns unresolved `{matrix, y, x}` placements. Current users include types `$47/$55`, `$56`, `$6B`, `$14/$77`, `$3E`, `$41`, `$78` and `$79`. This removes roughly 260 lines of duplicated parser code from `spawn.cpp` and should be the default path for remaining levels whenever the ROM reaches the common `$7B65`-style packed matrix compositor.

Type `$2E` intentionally remains separate. Its stream is a related but different delta-accumulating grammar with repeat commands (`$80..$FD`), so forcing it through the simple placement decoder would hide real ROM behavior.

## Implemented: entity runtime primitives

The duplicated low-level helpers from `stage0_enemies.cpp`, `stage0_combat.cpp` and `play_session.cpp` now share `entity_runtime`:

- 16-bit raw/entity reads and writes
- exact `$6AD2/$6ADF` leave-at-1 timer semantics
- `$6A7F` velocity integration
- `$6A9A` acceleration integration
- `$6B94-$6BE5` 8-direction target classification
- target-angle and global-angle velocity services
- `$7362/$737C` fixed heading-to-velocity conversion

Child allocation is also centralized as `allocate_stage_entity()`, including metadata copy and the +2D pool index byte. This removes another repeated source of subtle object-init mistakes.

These primitives are intentionally ROM-semantic rather than generic game-engine helpers: when a remaining enemy handler calls one of the same original fixed-bank routines, the SDL port should call the matching shared primitive too.

## Also fixed while validating the refactor

The old `play-features` late-render regression was a real renderer inconsistency: coarse `render()` moved the player/options with the late scenery raster while `render_wide()` correctly kept them screen-relative. The coarse renderer now uses the same player SAT origin, and the regression passes again.

## Next useful extraction: projectile emitters

Many remaining enemy/boss handlers still repeat: countdown/reload, allocate projectile record, inherit source position plus offset, aim/select heading, install speed/flags/type, and optionally emit sound. The new angle/heading primitives already remove the arithmetic duplication. A small descriptor-driven projectile allocator is the next sensible extraction, but state-machine timing should remain in each enemy handler.

## Medium priority: boss lifecycle

Stages 3-9 repeat linked-child ownership, weak-state damage gates, palette flash, death replacement/cleanup and stage handoff across `stage0_enemies.cpp` and `play_session.cpp`. These should become small lifecycle primitives rather than one large Boss class, because the ROM implementations are similar but not identical.

## Low priority: test helpers

Boss regression tests repeat `find_type()`, ROM setup and pool searches. A shared test header would reduce noise, but it does not help the game port itself and should come after runtime primitives/projectile construction.

## Rule for remaining ports

Before adding level-specific code, check whether the ROM routine is one of the already mapped common engines: packed tile compositor, angle/velocity tables, object timer, motion integrator, bullet allocator, or damage service. Genericize when the ROM itself is generic; keep truly custom object state machines local.
