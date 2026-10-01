# Sprite composition and stage-0 combat

This supersedes the pending-combat statements in `sdl_play_features_2026-10-01.md`.

## Rendering

The hollow cyan enemies came from interpreting V9938 sprite CC as requiring an
opaque primary pixel at the same coordinate. A CC layer also draws its own
pixels when the preceding primary sprite is present on that scanline. The
native compositor now combines those pixels, while preserving primary sprite
priority. This agrees with the existing sibling OpenMSX implementation in
`src/video/SpriteConverter.hh`. The final component byte is a collision-shape
selector, not a sprite-layer mask. Secondary-layer selection follows entity
flags instead. Vehicle cannon sprites are now included in native rendering.

The existing MSX right-edge blanking remains, following the request to retain
that behavior in SDL. The background's streaming/crop logic was not changed.

## Combat and pickups

Player shots now collide with vulnerable vehicle cannons as well as flyers.
Normal shot damage comes from the ROM initializer's damage byte, rather than
the previous fixed value of three. A cannon with HP five survives five
one-damage hits and dies on the sixth, matching the ROM damage comparison.

Small and large vehicle cannons emit visible projectiles. Their aiming tables,
large-cannon barrel directions and burst scheduling come from the ROM. Every
fourth small cannon carries a reward. Eligible completed flight waves can also
leave a pickup. Pickups use the original 2x2 tile graphics and selector cycle
`02, 0E, 03, 07, 0A, 0B` (speed, red, N, O, W, M). A duplicate W becomes blue;
an O when both options are present becomes red.

- N: normal forward shots, with ROM power-dependent graphics and damage.
- W: three-way shots, with ROM power-dependent graphics and damage.
- O: up to two trailing options that fire additional shots.
- M: a charged pulse/mega-bomb shot; this is not a missile selector.
- Red: increases power, capped at 16; the native top bar shows this value.
- Blue: clears currently vulnerable enemies and enemy projectiles.
- Speed: increases movement speed, capped at four increments.

Collected upgrades reset on restart and level seeking. Pickups scroll with
the camera and are collected by overlapping the ship. Projectile and pickup
pools are deterministic, and wave accounting releases controllers after
enemies are removed by clearing effects.

## Validation and remaining limits

The combat test covers cannon HP, firing, the four-cannon reward, pickup cycle
and tile icons, upgrade caps, mega-bomb consumption and blue clearing. Session
tests cover collection and firing N/W/O/M, restart, all ten deterministic seeks
and the complete 8,592-frame route. The route/feature run observes 84 cannon
shots and 272 frames with pickups. Player, background/runtime and SDL audio
regressions also pass.

`wave_native_validation.json` compares eight W-shot initializer fixtures with
the original Z80 helper at bank02 $8C47. This validates initial fields,
power damage and sprite selection, not full weapon lifetime behavior.

This is functional combat, not full original-game parity. Large cannons use
the standard projectile visual/motion path rather than the original type $67
handler. Small-cannon line-of-sight checks, complete attack timing and reward
controller behavior still need natural-play trace comparison. Cannon audio
uses the existing generic enemy-shot recording. Options use a fixed history
delay; the mega-bomb lifetime and clearing effect are simplified. ROM death
animations, terrain destruction/collision, scoring, power decay, player
damage/death/respawn, later enemy handlers and boss completion remain pending.
The top power bar is native UI rather than a complete reconstruction of the
original HUD. PCM audio still does not reproduce live chip channel priority.
