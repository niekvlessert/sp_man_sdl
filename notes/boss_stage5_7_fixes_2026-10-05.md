# Stage 5–7: tubes, ball sprite and Warp Machine

Checked against the local `space_manbow.rom`, using the existing OpenMSX disassembly/captures.

## Stage 5

- Type `$76` armour used the quantized D988 tile stamps. It now has one native tile-matrix render owner, uses graphics set 4, and follows the same camera remainder as the scenery at 60 Hz. ROM animation/state cadence stays intact.
- Player shots now collide with the actual tube cells. The two intermediate tube controllers (without +15 bit 4) are excluded from damage targeting. The real tube pieces retain their original 3 HP and linked destruction.
- Bank06 `$B12E–$B13C` waits for the root's +37 linked-armour count to reach zero, then calls palette script `$B4A3`. Its scenery indices 9/B/C become black. This state is retained through subsequent core hit flashes and reset on a new stage.

## Stage 6

- The boss already spawned type `$0D` at the ROM position with the ROM upward velocity. The missing fixed `$4F0D` write to `DF0D` left the provisional sprite offset in place, wrapping pattern `$D0` onto player aircraft art.
- Apply the original zero pattern offset, keeping sprite page 1. The complete 32-byte round-ball bitmap at VRAM `$D680` matches the original capture byte-for-byte.

## Stage 7

- Include Warp Machine in the boss palette initialization from `$6C4B`. All render palette paths now share it, preserving the animated index B pulse from `$8F5F`.
- Scenery collision follows `$75C2`: non-destructible scenery blocks only when DE00 bit 0 is set. Property `$02` boss scenery therefore permits player shots to pass through.
- Target the `$43` controller rectangle described by `$7606/$7670`, rather than its tiny decorative SAT sprite. Custom HP at +02 is consumed on the boss's 20-Hz cadence.
- The legacy stage-1 projectile Y correction now applies only to stage 1.

## Verification

`space-manbow-boss-regressions-test` exercises actual render pixels and actual player firing:

- 12 consecutive approach frames: tube edge moves exactly one original pixel per 60-Hz frame, including between coarse updates.
- A real shot removes one of the nearest tube's three HP and is consumed.
- Clearing linked armour exposes the core and keeps indices 9/B/C black through a core hit flash.
- Original round-ball bitmap and sprite page/offset.
- Stage-7 boss palette matches ROM; a real shot traverses the scenery and reduces custom HP from 255 to 254. The bubble attack is temporarily held off in this controlled test so it cannot intercept the test shot.

Build and 17 relevant suites pass: stage2, stage34, stage45-boss, stage59, stage6/7/8/9-boss, boss-visual, boss-palette, boss-regressions, continuous-scroll, scroll-feedback, combat, late-combat, stage67-enemies and late-level-enemies. `git diff --check` passes.

The unrelated pre-existing stage-1 coarse/wide comparison failure in `play-features-test` was documented in `boss_damage_lasers_2026-10-05.md`; this is not a claim that every repository test passes.
