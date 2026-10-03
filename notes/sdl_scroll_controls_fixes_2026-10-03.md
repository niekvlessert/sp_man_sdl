# Scroll, explosion, blue enemies and controls — 2026-10-03

The playable SDL binary has been rebuilt after this feedback round.

## Corrections

- Stream writes use the integrated world column (`C0CD`), while raster
  presentation keeps its preceding position. Reusing the preceding column
  for writes shifted newly streamed rows relative to the existing vehicle.
  The successor-column prediction now has its own cache, preventing it from
  modifying the canonical 64×32 scenery ring before the diagonal transition.
- The fast rock strip uses its own interpolated phase throughout stage 0,
  including diagonal/upward sections and the boss gate. The first gate tick
  no longer increments its phase twice. The rendered boss floor moves two
  logical pixels per video frame, with no periodic change in speed.
- The trailing platform explosion `$47` retains X=0 at creation. Its original
  `$5B2B` initializer does not call the normal right-edge spawn initializer.
  Starting at X=$2000 had placed nearly its entire large blast outside the
  viewport. All seven scripts remain selected from the ROM; the frame-1
  blast now visibly covers the following machinery.
- Blue-section `$1E` actors at triggers `$1068/$1069` are instantiated.
  Their original sprites, 160-HP metadata, approach, three vertical traversals,
  retreat, triple-shot muzzle positions, firing timers and death sound table
  are used. These actors are distinct from the gray structures already in
  the blue scenery tiles.
- Original `$8108` movement is called about every 50 ms. Native ship movement
  previously applied each ROM displacement every 16.7 ms. Each displacement
  now spans three SDL frames. A base-speed ship travels 80 logical pixels
  per second; the original speedup table still determines higher speeds.
- Key 0 is a fresh start with speed 0 and basic weapons. Keys 1–9 retain the
  maximum combat test loadout for inspection farther along the route.

## Inspection controls

- Cmd-T (macOS), Ctrl-T (Windows/Linux): toggle 500% simulation and PCM audio
  speed. Physics still executes fixed 60-Hz simulation steps.
- Page Up: pause, rewind 100 frames, clamp at frame 0.
- Page Down: pause, advance 100 frames. Recorded future input is replayed;
  beyond recorded history it advances with no input.
- P resumes. Live play after rewinding replaces the old future.

The timeline uses complete checkpoints every 100 frames and input replay,
including loadout events at decimal shortcuts. It restores scenery, RNG,
enemies, player, projectiles, options and combat state. Music is sought to
local stage time; active transient audio voices are cleared during seeking.

## Evidence

- `python3 tools/run_scroll_feedback_validation.py`: 14 original OpenMSX
  checkpoints, each comparing the complete 2048-byte scenery ring, all exact.
  Snapshots execute after completed Z80 stream writes at bank09 $7AF1/$7B08.
  Sampling arbitrary CPU instants initially caught partially written rows;
  those samples are not used as completed-frame references.
- The same probe measured 20 calls to the original movement routine in one
  second. Report: `scroll_ring_validation_2026-10-03.json`.
- `python3 tools/run_feedback_validation.py`: 564/564 exact ROM fixtures,
  including 192 `$1E` movement/shot-trigger cases and `$1E` damage/death cases.
- Scroll regression verifies two `$1E` pool slots, an actually visible large
  chain blast (>20,000 changed presentation pixels) and 64 consecutive boss
  floor frames with an exact four-sample horizontal translation each frame.
- Timeline regression checks input/state/image restoration, history branching,
  start bounds, replay across shortcut loadout changes and base movement speed.
- Runtime, player/session, combat, play features, late combat, feedback,
  timeline, scroll feedback and SDL audio regressions pass.

This evidence covers the listed fixes, not complete whole-game equivalence.
Music/SFX still use recorded PCM clips; original chip-channel priority and
all natural RNG consumption are not reproduced. Stage-1 enemy families and
player damage/respawn remain outside this feedback round.
