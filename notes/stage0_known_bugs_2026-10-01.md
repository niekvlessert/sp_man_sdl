# Stage 0 known visual bugs - 2026-10-01

This list corresponds to the four user screenshots supplied on 2026-10-01 after the first major compositor reconstruction.

The interactive play-mode corrections in `sdl_visual_fixes_2026-10-01.md`
supersede the old renderer-handoff and vehicle-sprite hypotheses below.
The backwards jump came from mixing current composition with the preceding
raster phase; original traces do not support an invented per-frame R18 ramp.

## P0 - presentation cadence becomes visibly jerky at the vehicle

Symptom: on entering the vehicle section the whole scene jumps to a different-looking composition and then scrolls in coarse, obvious steps until the end.

Strong technical suspect: after command `$12`, `background_stream.step_15hz()` advances the coarse camera/object state only once every four SDL frames. The preview then sets `camera = world_x * 3`, and `presentation_state()` derives R18 only from that coarse world X. There is no per-video-frame VDP fine-scroll phase between coarse D988 updates.

This is consistent with the reverse-engineering conclusion that object/tile state is coarse while R18/raster presentation supplies the pixel-fine motion.

Do not solve this by interpolating individual objects. The fix belongs in the presentation layer.

## P0 - fast lower ground has wrong temporal speed

Symptom: before the vehicle, the rock strip appears to travel roughly with the background; after the transition it becomes much too fast. User estimate for the desired visible speed is approximately 2x the main background.

The old native code fed `apply_fast_ground()` with `(global_frame + 3) & 7` on every SDL frame. Existing live D988 write traces show the real `$5E2C..$5E3A` pass repeating about every 70-75 ms, and `$5DDB` increments CA3A once per such pass. The native code now keeps CA3A as a coarse ~15-Hz stream state instead.

The table data, row placement and A288 phase were already proven exact. Retest visually: this should remove the approximately 4x-too-fast post-transition ground, while preserving the A288 byte anchor.

## P0 - stars disappear, then reappear at the bad transition

Symptom: stars are absent in the earlier streamed vehicle approach, then suddenly appear when the whole scene jumps.

The D988 star-placement formula is already exact at A288/A31A, so the likely causes are:

- the parallax state is not advanced at the original 60-Hz cadence before `$12`;
- the active graphics/presentation state changes on a coarse tick rather than the correct raster/video-frame boundary;
- the two-page presenter is showing a different temporal composition than the current D988 state during the transition.

## P0 - vehicle enters as disconnected fragments

Screenshot 2 shows isolated vertical pieces and only the right part of the vehicle before the full body becomes visible.

The ring is already exact at the important anchors, so this is not a level-stream decode problem. Candidate causes are object carry-over timing, the `$24/$26` stamping phase at the `$12` boundary, and especially the missing per-frame presentation phase.

The fix should preserve the validated object matrices and change only when/how their already-composed D988 is presented.

## P0 - vehicle scroll is very choppy

Symptom: once the large vehicle is on screen it moves in obvious jumps.

This correlates directly with the current 15-Hz post-$12 coarse world-X update. R18 is not currently animated between those updates. Restore a true video-frame `PresentationState` before changing any object positions.

## P1 - tank tracks do not animate in the first visible vehicle phase

Symptom: at first the tracks are static. Later they animate at a believable tempo.

Earlier traces proved that the first apparent track motion is not simply type `$24` byte `+06` animation and pattern VRAM remains static. There are separate object/compositor contributions. The fact that the later tempo looks correct suggests the matrix/frame data is mostly right but the early carry-over/presentation phase is not.

Re-evaluate only after the post-$12 presentation cadence is fixed; otherwise object-frame diagnostics are contaminated by the screen-wide jerk.

## P1 - lower ground / vehicle overlap changes abruptly

Screenshots 3 and 4 show the rock layer and vehicle body entering/clipping in a way that does not look like the original continuous reveal.

The compositor order is already proven as ring -> fast ground -> objects -> stars. Therefore the remaining likely issue is temporal/page selection: an active name-table page is receiving a coarse composition at a different moment than the fine R18 phase used to display it.

## Regression requirements

Any fix to these bugs must retain:

- A288 final D988: 768/768 exact;
- A31A final D988: 768/768 exact;
- A336 final D988: 768/768 exact;
- A3D8 ring: 2048/2048 exact;
- A438 held ring: 2048/2048 exact;
- runtime regression test PASS.

These tests validate coarse composition. New tests are still needed for **four consecutive 60-Hz presentation frames** at the same coarse D988 state, because that is where the remaining motion bugs live.

## Fixes applied after screenshot review

- Fast-ground phase no longer uses the 60-Hz SDL frame counter. `CA3A` is now maintained as coarse stage state and advances on the ~15-Hz scene tick, matching `$5DDB-$5DE1` and the live `$5E2C..$5E3A` write cadence.
- Alternate fast-ground selection now accepts the active graphics context (`graphics_set == 6`) as well as the pending C0B5 request, matching the ROM's C0B4/C0B5 checks.
- Streamed mode no longer disables the complete V9938 sprite plane. The one-component bank-08 sprite frames for vehicle types `$20/$22/$24/$26` are decoded and drawn on top of the D988 layer.
- Type `$1F` sprite half remains deliberately suppressed until its player-aimed selector is ported; this avoids the previously observed non-original "rockets".
- Streamed sprites now use the late stage palette instead of the initial level palette.

Build and `space-manbow-runtime-test` remain PASS after these changes.
