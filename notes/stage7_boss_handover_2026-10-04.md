# Handover — Stage 7 boss / Warp Machine — 2026-10-04

## Repo / branch / current checkpoint

Work in:

`/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl`

Branch: `main`

Last committed boss checkpoint:

- `4136ed8 restore stage 6 boss`
- before that: `f3c2874 restore stage 4 and 5 bosses`
- before that: `b0693e2 restore stage 3 boss`

**Important:** Stage 7 boss work is currently **UNCOMMITTED**. Do not reset or checkout the modified files. The working tree contains the Stage-7 implementation and passing regression test.

Current relevant modified/untracked files:

- `CMakeLists.txt`
- `assets/audio/manifest.json`
- `include/play_session.hpp`
- `include/play_sound.hpp`
- `src/play_audio.cpp`
- `src/play_session.cpp`
- `src/spawn.cpp`
- `src/stage0_enemies.cpp`
- `tools/export_play_audio.py`
- `tools/export_play_audio.tcl`
- `assets/audio/stage7_arrive.wav` (untracked)
- `assets/audio/stage7_break.wav` (untracked)
- `src/stage7_boss_test.cpp` (untracked)

There is also an unrelated untracked file:

- `notes/stage2_fidelity_report_2026-10-04.md`

Leave that Stage-2 note alone unless explicitly asked.

## What Stage 7 boss is

Stage 7 ROM spawn list (stage index 6) contains:

- ordinary enemies mostly type `$54`
- final `$5F` control record
- boss record:
  - trigger `$10F8`
  - type `$43`
  - control `$05`
  - payload `08`

Type metadata for `$43`:

- `04 04 BD 00`

The boss is the Warp Machine. Its mapped bank02 handler is `$8E81`.

Its projectile/child is type `$23`; the mapped bubble handler is `$BD74`.

## Live OpenMSX facts already established

The type-$43 handler really runs at 20 Hz.

Live breakpoint trace at `$8E81`:

- first observed:
  - X=`$1FE0`
  - Y=`$0A00`
  - state 0
  - +17=`$3C`
- X decreases by exactly `$20` every 20-Hz object tick:
  - `$1FE0, $1FC0, ... $1A00, ... $1900`
- when X reaches `$1900`, it stays there while +17 finishes counting down.
- final entrance samples:
  - X=`$1900`, +17 05,04,03,02,01
- next tick:
  - state = 1
  - X=`$1900`
  - +18=`$2D`
  - +21=`00`
- first fight tick:
  - +17=`$42`
  - +18=`$2A`
  - +21=`01`

This confirms the current native entrance anchor and first fight interval.

The live traces are still present on the current machine:

- `/tmp/boss7.log`
- `/tmp/boss7_pool.log`
- `/tmp/boss7_bps.log`
- `/tmp/boss7_8000.bin`
- `/tmp/boss7_a000.bin`
- disassembly: `/tmp/boss7_code.asm`

Do not depend on these surviving a reboot; the important observations are recorded here.

## Current native implementation

### Spawn / entry

`src/spawn.cpp`

Type `$43` is now accepted by the native spawn path.

Native spawn explicitly sets:

- X=`$2000`
- Y=`$0A00`
- +17=`$3C`
- frame selector +06 = 0
- flags15 bit 0 set
- state = 0

The live handler is first seen at X=$1FE0 because the original common object/scroll service has already moved it by $20 before the handler breakpoint.

### State machine

`src/stage0_enemies.cpp`, in the 20-Hz `step_gate_20hz()` path.

Type `$43`:

**state 0 — entrance**

- waits out +17
- native currently holds expired timer until X <= `$1900` so the native 15-Hz scenery and original 20-Hz object entrance converge on the correct spatial fight anchor
- at X=`$1A00`, emits arrival SFX once
- enters state 1 with:
  - +18=`$2D`
  - +17=1
  - custom HP +02=`$FF`

**state 1 — fight**

- +21 increments modulo 16 every 20-Hz tick
- +21 drives the weak-point palette pulse
- when +17 expires:
  - spawns type `$23`
  - updates +18 using the ROM sequence
  - first sequence is `$2D -> $2A`
  - first interval becomes `$42` (= $2A + $18 with default CA19 behavior)

**state 2 — first destruction phase**

- +21 palette pulse continues
- 40 ticks
- then emits Stage7Break (ROM SFX `$52`)
- clears all active type `$23` bubbles
- enters state 3 with +17=`$14`

**state 3 — final destruction phase**

- 20 ticks
- then sets `stage_complete_`
- Stage 7 advances to Stage 8 through the normal session path

Unlike earlier bosses, this boss does **not** convert to type `$6A`; its custom death stays type `$43` through states 2/3.

## Custom HP / weak point rule

`src/spawn.cpp::apply_stage0_damage()`

Stage 7 is a deliberate exception to the common +14/+16 damage service:

- only vulnerable in state 1
- HP is stored in **+02**
- starts at `$FF`
- equal damage reduces HP to zero but is **not fatal**
- the following damage causes the borrow/fatal transition
- fatal transition:
  - +02 = 0
  - +15 = `$6F`
  - state = 2
  - +17 = `$28`

This equal-HP-then-borrow behavior is explicitly regression-tested.

`src/play_session.cpp` also treats type `$43` state 1 as a valid shot target even though the normal +14 vulnerability bit is not used.

When state 1 -> 2 happens, active `$23` bubbles are cleared, mirroring the original secondary-pool clear.

## Type $23 bubble

`src/stage0_enemies.cpp`

Bubble behavior implemented from mapped handler `$BD74`:

- created at the boss X/Y
- state 0 aims at the player with speed `$18`
- then state 1 bounces:
  - reverse Y outside rows `$01..$14` (test uses boundary $00 / >=$15)
  - reverse X at X >= `$1D`
- type `$23` movement is handled at 20 Hz and split over 3 display frames in `move_60hz()`

The regression verifies that three 60-Hz frames sum exactly to the resolved 20-Hz velocity.

## Palette pulse

`src/play_session.cpp`

A helper `stage7_weak_palette()` contains the 16-entry GRB pulse from mapped bank02:`$8F74`.

Current GRB sequence:

`756, 756, 745, 734, 723, 612, 501, 400, 300, 400, 501, 612, 723, 734, 745, 756`

During type-$43 states 1/2, palette entry `$0B` is updated from +21. The code synchronizes base/late/tower palette variants so scenery palette selection cannot lose the boss weak-point pulse.

## Stage-7 audio

New `PlaySound` entries:

- `Stage7Arrive`
- `Stage7Break`

Export mapping:

- `stage7_arrive.wav` = ROM SFX `$42`
- `stage7_break.wav` = ROM SFX `$52`

Files currently exist and are untracked:

- `assets/audio/stage7_arrive.wav`
- `assets/audio/stage7_break.wav`

Audio manifest and export scripts have already been updated.

Boss music detection for stage index 6 is also wired in `include/play_session.hpp` while type `$43` is alive.

## Regression test

New file:

`src/stage7_boss_test.cpp`

CMake target:

`space-manbow-stage7-boss-test`

It currently checks:

- boss spawn record and metadata
- X=$2000/Y=$0A00 native initial anchor
- 60-tick entrance / X=$1900 fight anchor
- first fight interval `$2D -> $2A -> $42`
- type-$23 bubble creation
- player-aimed velocity
- exact 3-frame 60-Hz velocity splitting
- bubble Y/X bounce behavior
- custom +02 HP rules
- equal-HP zero remains alive
- next damage borrow enters state 2
- 40-tick first death phase
- Stage7Break SFX
- 20-tick final phase
- full route boss music
- bubble cleanup
- Stage 7 -> Stage 8 handoff

Current result:

`Stage 7 boss PASS: Warp Machine custom HP, bouncing bubbles and Stage-8 handoff`

## Regression status at handoff

After the current **uncommitted Stage-7 changes**, the following were rebuilt and pass:

- `space-manbow-stage7-boss-test`
- `space-manbow-stage6-boss-test`
- `space-manbow-stage45-boss-test`
- `space-manbow-stage34-test`
- `space-manbow-stage59-test`
- `space-manbow-stage2-test`
- `space-manbow-runtime-test`
- `space-manbow-combat-test`
- `space-manbow-late-combat-test`
- `space-manbow-feedback-test`
- `space-manbow-scroll-feedback-test`
- `space-manbow-continuous-scroll-test`
- `space-manbow-timeline-test`
- `space-manbow-audio-test`

`git diff --check` is clean.

## Next action in the new context

Do **not** start over.

1. Inspect the current diff/status and preserve all Stage-7 modifications.
2. Do one visual OpenMSX-vs-native comparison of the Warp Machine fight, especially:
   - shell/weak-point graphics
   - palette entry $0B pulse
   - blue bubble size/appearance
   - arrival SFX timing near X=$1A00
   - destruction visual timing over state 2/state 3
3. If visuals are acceptable, update the Stage 5–9 notes/README with Stage 7 boss status if not already done.
4. Run the Stage-7 test + relevant regression suite once more.
5. Commit the current work as something like:
   `restore stage 7 boss`
6. Then proceed to Stage 8 boss.

Do not modify or add the unrelated `notes/stage2_fidelity_report_2026-10-04.md` to the Stage-7 commit unless explicitly requested.
