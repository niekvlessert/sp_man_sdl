# Space Manbow SDL/native port handover — 2026-10-02

## Start here
Project: `/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl`

Run:
```sh
cd /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl
cmake --build build -j8
./build/space-manbow-game space_manbow.rom
```

This is a standalone Git repo, separate from RPMSX. Do **not** touch the parent RPMSX tree for this task.
Current checkpoint commit:
`19c35ce Advance stage 0 vehicle rendering and gameplay`

The October 2 work described below is committed in that checkpoint. Do not reset/revert/clean the tree unless the user explicitly asks.

Current quick tests are green:
```text
runtime test PASS: 7744 frames, 27 stream events, 75 ROM spawn records
Player/session regression PASS
Combat PASS
Play features PASS
```

Main user preference: make concrete code changes/build/test; avoid long analysis-only stretches. Use the original ROM/OpenMSX as behavioral reference, but the native renderer does not need to imitate V9938 implementation details if native 60-Hz presentation is cleaner.
## Current visual architecture

`PlaySession::render_wide()` is now the important presentation path used by `space-manbow-game`.
The SDL texture is 512x212: one logical game pixel = two horizontal presentation samples.
This is deliberate so 0.5-pixel/frame world motion can be represented at 60 Hz.

The current native mode-0 vehicle section is split into layers:
- static/world scenery: rendered from the horizontal world map (`visual_level_`) rather than exposing D988/ring carries;
- dynamic vehicle tile actors: rendered separately as pixel-positioned overlays;
- stars: separate world/parallax layer;
- fast lower ground: separate faster-moving layer;
- player, shots, options and HUD: screen-space layer.

Important consequence: do not reintroduce a full D988->native handoff in the visible vehicle entrance. Previous attempts caused tile-column build-up and 15-Hz compositor jumps.

The following large vehicle actors are intentionally excluded from the static tilemap and rendered as overlays:
`$1F, $20, $22, $24, $26, $55, $56, $6B`.

`$24` is the track/chassis object. Its position is now presented smoothly in 512-space. The ROM has eight `$24` matrix phases; analysis showed 0<->4, 1<->5, 2<->6, 3<->7 differ only ~5.7-6.8%, strongly suggesting low phase bits contain MSX pre-shift geometry while bit 2 carries real track animation.
## What is currently working well

Latest user-visible result before handover:
- complete vehicle body scrolls smoothly;
- stars/background scroll smoothly;
- track/chassis position is smooth;
- large/small cannons are on the correct positions and track the player;
- cannon motion is smooth;
- tracks animate again;
- the earlier right-edge vertical garbage/collage is no longer the main issue;
- blue-background garbage at the vehicle transition was removed;
- vehicle no longer has the earlier ship/player artefacts;
- missiles work;
- blue mega-missile works better than the first implementation;
- enemy explosions and enemy colors are much closer to the original;
- large vehicle cannons/objects can be destroyed with corrected positioning/HP behavior;
- pickup/upgrade sound effects were added/exported.

The user explicitly said at the end: `Het beweegt nu allemaal soepel!`
Do not regress the current presentation cadence while fixing remaining details.

Useful current cadence measurements in the native 512 output:
- main vehicle/world/stars: 1 presentation sample per video frame (~0.5 logical px/frame);
- direct fast-ground experiment: 5 samples/frame (world + faster ground component) without coarse resets.

`$1F` cannon overlay was isolated and measured at 0% position residual over normal frames after a 1-sample expected shift. Changes only occur on actual directional/frame changes.
## Remaining known issues / do not "fix" blindly

### Fast ground directly under the tracks
The user noticed that the stone/ground strip immediately under the tracks changed visually during the smoothing work. They then said to leave it for now because it still looks good.

Do **not** immediately assume this is only a wrong X phase. There are two ROM tables:
- normal `$5E4B`;
- alternate `$5E6B`.

The original fixed-bank routine `$5D8A-$5E3C` selects the alternate table when raster context C0B4/C0B5 reaches 6. This may represent a genuine alternate/damaged/contact ground look rather than a mere shifted copy. Investigate original behavior before changing it.

Current native fast-ground experiment renders the strip directly and gives perfectly uniform motion, but coarse-endpoint comparison showed a visual/phase offset versus ordinary `render()` (typically +20 half-samples, sometimes +4). That is why the user noticed the look changed.

If this is revisited, prefer: preserve the exact original rendered strip/state and only smooth its presentation, or prove what `$5E6B` represents first. Do not sacrifice current smoothness.

### `$24` track matrix phases
Position is smooth, but the original eight ROM matrices combine pre-shift geometry and genuine track animation. Pair analysis:
`0<->4 6.55%`, `1<->5 6.84%`, `2<->6 5.65%`, `3<->7 5.65%` residual at common alignment.
This suggests bit 2 is the true animation state. If track animation ever looks jerky again, separate animation from MSX pre-shift rather than reintroducing coarse position changes.
## Important debugging history / traps

Several approaches looked promising but caused regressions:
- rendering D988/ringbuffer directly through the full vehicle entrance exposed stale/not-yet-filled right-edge columns;
- a successor-column lookahead initially stopped at +2 px, but the streamer only produced the real future column after a full +8 px tile phase;
- prefetching future columns directly into the live ring made staging data visible too early;
- delaying the whole renderer switch to camera 1544 fixed edge garbage but produced a visible compositor handoff/jump when the vehicle entered;
- interpreting R18 as a simple unsigned source offset was wrong and caused additional apparent phase errors;
- smoothing only the coarse D988 output produced 15-Hz content morphs even when position moved every video frame;
- putting large vehicle actors back into the static world tilemap made tracks/cannons coarse again.

Key conclusion: for the native port, use the MSX to recover geometry, animation and relative speeds, but keep the visible mode-0 vehicle presentation native/world-space and continuous.

A very useful exact bad frame during edge debugging was frame 2809. Earlier, zeroing D988 column 31 removed the vertical collage, proving the artefact was background/name-table data rather than SDL or sprites. That investigation eventually led away from exposing the ringbuffer directly in the native mode-0 renderer.

Another useful transition range is frames ~2576-2645 / camera ~1536-1570. This covers A13F, first vehicle scenery and first `$24` entrance.
## Gameplay work already present in this uncommitted tree

Do not assume this branch only contains renderer work. It also includes substantial gameplay fixes from the same session:
- pickups/upgrades and their sounds;
- score/HUD/powerup bar changes;
- O/options behavior work;
- M/missile behavior and blue mega-missile work;
- wave/primary shot work;
- enemy destruction/explosions;
- vehicle-mounted enemy handlers;
- cannon hit points and destruction;
- large vehicle/turret positioning and tracking;
- stage-0 enemy activity and additional vehicle enemies;
- right-edge/background streaming fixes and tests.

Main touched files include:
`src/play_session.cpp`, `src/spawn.cpp`, `src/stage0_background.cpp`, `src/stage0_enemies.cpp`, `src/stage0_combat.cpp`, `src/screen4.cpp`, plus their headers and regression tests.

New audio files currently in the tree:
`assets/audio/pickup.wav`, `powerup.wav`, `option_mode.wav`, `missile_launch.wav`.
Their manifest/export code was updated as well.

Extra reverse-engineering note from this work:
`notes/stage0_vehicle_enemy_handlers_2026-10-02.md`.
## Regression commands

Run these before and after nontrivial changes:
```sh
cmake --build build -j8
./build/space-manbow-runtime-test space_manbow.rom
./build/space-manbow-player-test space_manbow.rom
./build/space-manbow-combat-test space_manbow.rom
./build/space-manbow-play-features-test space_manbow.rom
git diff --check
```

At handover creation all four tests pass.

Useful generated videos from debugging live in `captures/`, but they are diagnostic output rather than source. Do not rely on old captures to judge a newer build. The most recent native-world experiment was `vehicle_native_world.mp4`, but visual checks should preferably be made from a fresh capture/current executable.

### Recommended next task
Do not start by rewriting the smooth-scroll architecture. Continue with remaining gameplay fidelity issues or inspect the fast-ground look only if the user asks.

The user repeatedly asked to compare behavior with the original code. For gameplay mechanics, inspect the reverse-engineered handlers/disassembly before inventing behavior. For presentation, native 60-Hz interpolation is explicitly acceptable.
## Paste into a clean ChatGPT context

```text
Continue the standalone native Space Manbow SDL/RP2350 port on my local Mac.
Project: /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl

First read notes/HANDOVER_SPACE_MANBOW_2026-10-02.md and the relevant existing notes. Do not reset/revert the tree. The latest renderer architecture deliberately uses a native 512x212 presentation path so 0.5 logical pixel/frame motion is smooth at 60 Hz. The vehicle, stars, tracks and cannons are currently visually smooth; preserve that.

Use the original ROM/OpenMSX/disassembly for gameplay behavior and animation/reference, but the native presentation does not need to mimic V9938 implementation details. Work directly on the local code, build and test changes rather than only analysing them.

Before changes run the four regression binaries listed in the handover. Then continue with the next gameplay/visual fidelity issue I give you.
```

## Git safety
The original ROM remains local/untracked. Build products remain ignored. Debug captures should remain unversioned. This handover is included in the October 2 checkpoint commit.
