# Boss ending, missing sounds and carrier motion — 2026-10-03

Reference: user-supplied `space_manbow.rom`, SHA256
`bca5696ebbf4a3493bb226baa03ba8f8c5cc4876a4ad0eaa9722f583a42192b0`.

## Boss ending

Bank05 `$9AD7..$9B07` draws type `$6A` only in destruction state 0.
At `$9ADE` state 1 jumps to `$9AFE`, bypassing the tile stamp at `$9AE7`.
The native decoder previously kept decoding selector 0 throughout that countdown,
leaving the small final explosion visible. State 1 now has no tile visuals.
The original 20-Hz eight-selector burst and `$2F` observed countdown remain intact.

The session now records whether music should play. Conversion to `$6A` stops
music on that simulation frame; sound effects continue. Restart and the next
stage restore music. Timeline checkpoints and input replay carry this state,
so Page Up/Down restores the correct state on either side of boss death.
This is SDL PCM music control; hardware PSG/SCC channel arbitration is still
outside the port's current scope.

## Missing sound events

- Fixed `$593F..$5944`: type `$55` reaches its X trigger, requests sound `$1A`
  through `$4AF5`, and enters the rising state. Native `CarrierLaunch` occurs once
  at that transition; ordinary rise ticks do not repeat it.
- Bank06 `$BD47..$BD66`: type `$22` launches two `$70` rounds after the hatch timer,
  then requests sound `$17` through `$4AF0`. Native `HatchShot` follows the pair,
  including the original unconditional request when child allocation fails.

`carrier_launch.wav` and `hatch_shot.wav` were recorded by executing the original
bank1C PSG/SCC driver in the existing sibling OpenMSX build. The exporter/manifest
now include 27 effects and two stage music recordings. No libvgm is required.

## 60-Hz motion versus animation

The outer simulation already advances at 60 Hz. Most enemy state/attack routines
use 15-Hz ticks; the terminal boss uses 20 Hz. Existing movement and camera
presentation distribute displacement between those ticks. Raising every timer
to 60 Hz without rescaling would accelerate movement, attacks and destruction.

Type `$55` was an exception: `$5947..$5999` subtracts an entire tile from Y after
height-dependent delays from `$599A`. Native presentation now distributes the
next upward tile displacement over the full delay, with 60-Hz positions, while
keeping the simulation coordinates, timers, shots and frame selectors intact.
The body and sprite components share that position. Pattern-third selection
continues to use the authoritative ROM coordinate to avoid premature bank/row
changes during interpolation. The carrier is drawn directly at half-pixel X /
quarter-pixel Y resolution. Its descent remains on the original tile cadence.

Continuous position changes require no new sprite artwork. Unique animation
poses are limited to the ROM frames; this change does not fabricate intermediate
poses or claim 60 unique drawings per second.

## Verification

- Build succeeded; `git diff --check` clean.
- Feedback OpenMSX fixtures: **570/570 exact**, including three takeoff-trigger
  fixtures and three hatch-timer fixtures with original sound requests.
- Late-combat OpenMSX fixtures: **254/254 exact**.
- Native late-combat regression: live bullets defeat the boss; burst pixels are
  present in state 0; removing the state-1 actor changes no rendered pixels;
  music stops through destruction/countdown and resumes with the next stage.
- Timeline regression: rewind before death restores music, replay back into
  destruction stops it, and advancing to the next stage restores it.
- Audio regression: no samples with stopped music and no effects; takeoff,
  hatch and explosion clips remain audible while music position stays frozen;
  stage switch restores music. Loading/mixing/pause/mute/turbo also pass.
- Carrier presentation: all 28 video frames between the first two delayed tile
  anchors have monotonic height changes, without mutating the actor. Natural
  captures at frames 3632–3639 visually checked for joined body/sprite parts.
- Existing runtime, player, play-features, combat, feedback and scroll-feedback
  native regressions pass.

These are local ROM-helper and native presentation/mixer checks, not an
exhaustive whole-game visual/audio equivalence claim.
