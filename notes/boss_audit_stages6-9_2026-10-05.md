# ROM audit: bosses of stages 6–9 — 2026-10-05

## Check run

The current four native boss test executables pass. This is not visual/trajectory
parity: most assertions test controller states, selected timers and injected
fatal damage, not the final composed screen or complete projectile motion.

Fresh original-cartridge runs captured **800 handler-entry records per boss**
(3,200 total), without firing or damage injection. Each record includes emulated
time, CA02, CA19 and the entire 64-byte boss object. The only interventions were
F0FC stage selection before gameplay, space to start menus, and CA53/54 player
invincibility. No cartridge code was patched. Original VDP registers, palette
and VRAM were saved at the end. Native full-route records and screenshots were
also captured. ROM SHA-256:
`bca5696ebbf4a3493bb226baa03ba8f8c5cc4876a4ad0eaa9722f583a42192b0`.

Local evidence: `tools/probe_out/boss_audit_2026-10-05/` (ignored scratch captures).
Reproduce original cycles with:

```sh
python3 tools/run_late_boss_audit.py --stages 6 7 8 9 --updates 800
```

The reusable capture tool was checked with a fresh stage-8 run. Native
capture source and the original comparison captures remain in the evidence
folder. Handler-entry alignment differs at initialization: stage 6's first
native record is state 0, whereas the original first recorded handler is state
1; stage 8's first native record is one controller update ahead. Comparisons
align these initialization differences. Random projectile outcomes and elapsed
wall-clock time are not treated as byte-identical fixtures: player/difficulty,
PRNG history and original MSX workload differ.

## Confirmed problems

### Stage 6: missing boss composition / wrong sprite (high priority)

ROM bank06 `$B5FD–B637` composes the outer body using `$B670`, plus an animated
central layer when +21 is nonzero. The centre temporarily shifts Y by `1 - +21`
and selects matrix `+05 + 3`. The original object's +15 is `$14`, so it is not an
ordinary SAT sprite.

Native `decode_stage0_tile_visuals()` has no `$7B` compositor; its generic fallback
requires bit 1, absent in `$14`. The live native boss therefore decodes **zero
tile matrices**. Spawn and initialization force bit 0 instead, making the native
screen show a blue player-shaped sprite where the actual boss should be. This
was confirmed in the native stage-6 screenshot. Native animation advances +05
but never draws that ROM centre layer.

The state/timer cycle itself is good: after initialization alignment, opening,
firing, closing and the next cycle match the original 155-update period through
all 800 samples. The graphics error is not caught by that controller test.

### Stage 8: missing dynamic layers and destruction sound (high priority)

The `$ACDE` packed shell scripts are implemented, but they are only part of the
original frame:

- `$AB42–AB5D` draws weak-point matrix `+2B + $1D` when the phase is nonzero.
- `$AC65–AC83` draws the two secondary matrices `$0F..$11` and `$12..$14`,
  selected by +20. Native advances that selector without drawing those layers.
- `$AC86–AC93` draws destruction/exit matrix +25 in state 8. Native increments
  +25 without adding it to the visible composition.
- `$AB2F–AB34` requests SFX `$51` when state 7 becomes state 8. The native
  transition emits no corresponding sound; there is no matching PlaySound event.

**Follow-up correction:** the direct F0FC=7 reference start itself has corrupt graphics. Stage 8 retains Stage 7’s atlas. A normal Stage-7 boss defeat and handoff establishes the valid reference; the port now inherits that atlas instead of the title-work snapshot. All 267 used pattern/color variants in the tested boss pose agree with that natural transition.

The initial native stage-8 screenshot also has substantial body/raster artifacts. The
exact raster/overlay cause is not isolated by this audit, so these should not be
ascribed solely to the missing layers. The raw resident graphics matched the **invalid direct-start reference**, not the natural transition:
original `$10000..$13FFF` hashes to `217ED24F`, matching the native resident asset.
The selected pattern/color bases also match (`$10000/$12000`). Focus further
investigation on composition/raster sampling, not re-extracting those assets.

After initialization alignment, all tracked stage-8 controller state, position,
phase and weak-point bytes match the original through 799 compared samples.
Correct state values therefore do not establish a correctly rendered weak point.

State 8 is also a deliberate approximation: ROM `$AB8F–ABCD` converges the player
coordinates to a boss-relative target. Native completes after a fixed 18 calls,
which reproduces one captured exit duration rather than the general routine.

### Stage 9: simplified projectile trajectories (high priority)

ROM bank06 `$B6DE–B745` selects an angle with `(random & $3F) + $40`, computes
velocity via `$9DE8/$7240/$6BEB`, and installs nonzero acceleration in +0F/+11.
`$B748–B751` integrates acceleration with `$6A9A` on CA02&7 == 0 before advancing
the phase timer.

Native `$5E` uses eight hardcoded velocity pairs, writes both acceleration words
as zero and only decrements the timer. The projectiles therefore follow straight,
quantized trajectories instead of the ROM's changing vectors.

The `$66` controller runs on the 20-Hz scheduler but its movement is divided by
four video frames in `move_60hz()`, as for 15-Hz actors. This gives 75% of the
intended displacement at that native controller rate. Movement and acceleration
must share a consistent clock; having a 60-Hz presenter alone does not do that.

### Stage 9: high-difficulty HP and hit palette (medium priority)

ROM bank05 `$96C1–96C8` changes core HP from `$30` to `$40` when CA19 >= 5. The
native spawn path always retains `$30` (48 HP), making this phase too weak at
higher difficulty.

Both stage 6 and stage 9 call `$7C63`, but its palette service is enabled only when object +3F is nonzero. The original stage-6 records have +3F=1; its missing flash/red palette has been repaired (quarter HP = 40). **Stage 9 has +3F=0 and skips the palette service: adding the same flash/red effect there would be incorrect.** The earlier shared-palette recommendation for stage 9 is withdrawn. Stage 8
has its own `$AC2C` path and should not receive this generic palette by assumption.

## Stage 7 and interpretation limits

Custom +02 HP, subtraction borrow, the 40/20 destruction countdown and the
bubble attack interval are covered by passing tests and agree with the routines
checked. No new critical controller error was found.

The native entrance is intentionally held until X=$1900 because its scenery
clock differs. Original state 1 begins at sample 60; this native route begins
around sample 75. This is an existing spatial compensation, not a newly observed
stuck boss. It still means entrance timing is not an exact ROM match.

Original CA02 counts completed engine updates and its measured rate falls under
MSX rendering load. Native scheduler ticks and video frames cannot be compared
by raw elapsed time or phase alone. Stage 9's small burst-start phase difference
in the natural trace is not classified as a proven attack-script bug.

Death/handoff tests pass for all four stages. This audit does not claim complete
SFX waveform parity or a finished original ending/credits sequence.

## Recommended repair order

1. Implement stage-6 `$B670` outer and centre tile composition and remove the
   artificial SAT sprite; add an independent original full-frame stamp fixture.
2. Complete stage-8 dynamic layers; isolate its raster artifacts with original
   D988 plus VDP captures, and add SFX `$51` and the position-based exit.
3. Replace stage-9 `$5E` vector approximation with the ROM angle/acceleration
   routine, correct `$66` movement cadence, and implement difficulty HP.
4. Restore the enabled common damage palette for stage 6; preserve stage 9’s disabled palette service.

## Repairs completed after authorization

- Stage 6: ROM outer/centre matrices, correct tile ownership and no fabricated SAT sprite; hit geometry uses the DE00 bit-6 weak cells rather than the shell. Common white flash and red palette at 40 HP are restored.
- Stage 8: weak-point, secondary and exit matrices, inherited Stage-7 graphics and sprite loader offsets, one smooth native tile overlay, SFX $51, and position-based exit. State 8 stops servicing the secondary animation, as in $AB3A.
- Stage 9: all 64 ROM angles and signed VY/VX/AY/AX calculations, CA02&7 acceleration service, 20-Hz displacement split over three 60-Hz frames for $5E/$66, difficulty-dependent 48/64 core HP, and $66 vertical acceleration toward the player at high difficulty.
- Stage 7: no new controller defect found; existing full-route test still passes.

Independent regression fixtures: Stage-6 stamp `113C103D`, Stage-8 full stamp `51D421C5`, Stage-8 drawn pattern/color bytes from a natural transition `4A54283A`, and all 64 original projectile vectors `57035B4D` (FNV-1a). Existing Stage-3/4 stamps remain intact. Audio $51 was exported from the original driver into `assets/audio/stage8_break.wav`.

Tools: `capture_boss_visuals.tcl` now supports stage indices 2/3/5/7; index 7 advances through Stage 7 with a RAM-only fatal hit to its boss. `capture_stage9_projectile_vectors.tcl` invokes the unchanged original launch arithmetic for all 64 angles; set SM_PROJECTILE_VECTORS_OUT to an output file. No cartridge code is patched.

The native port still ends at the final boss’s ending latch; this work does not implement the original credits sequence.

Final validation: clean CMake build and 15 passing suites (bosses 6/7/8/9, independent boss visuals, bosses 4/5, stages 2/3/4/5–9, late enemies, stage-6/7 enemies, combat, late combat, continuous scrolling, SDL audio). The extended original compositor capture tool was also run successfully for stages 6 and 8.
