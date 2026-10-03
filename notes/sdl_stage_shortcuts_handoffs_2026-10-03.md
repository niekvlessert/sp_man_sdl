# Stage shortcuts and native presentation handoffs

## Controls

Cmd-2 (macOS) / Ctrl-2 (Windows/Linux) starts stage 2, using stage index 1.
Cmd/Ctrl-1 returns to stage 1. Restart and decile jumps preserve the selected
stage. 0 resets it with no upgrades; 1–9 retain the previous maximum-loadout
convenience and replay to 10–90% of that stage's route. W toggles all reusable
upgrades between maximum and zero, including S speed. Clearing upgrades also
clears the existing options and M missile. Timeline events/checkpoints preserve
multiple upgrade toggles through rewind, forward replay and branching.

Stage 2 formerly stalled at its first mode-3 section because that writer had
not been implemented. Disassembly of bank09 $7EDE–$7EFB shows a 15-metatile
row write with column offset -((-(Y&$18)/8)&3), row offset -1 and the row phase
used by $7EFC. The existing mode-4 row writer supplies the same placement, so
mode 3 now shares that implementation. The no-input route reaches the gate at
frame 22128; 50% is frame 11064. This exposes scenery, not a complete stage-2
enemy/boss implementation.

## Player and hatch

Around frames 2576–2580 the player's coordinates do not change, but the native
renderer switched SAT origin from 20 to 28 pixels. The ship, options and forward
shots now keep the opening screen-space origin throughout; projectile overlap
uses the corresponding origin difference for streamed targets. Surviving opening
flyers retain their opening origin too.

Type $11 hatch children can be allocated into a pool slot already processed that
tick. Their state-0 Y still points inside the vehicle; the original $52F3 routine
moves them three cells up on initialization. State 0 is now invisible. During the
state-1 rise, the hatch's top edge clips the child until it emerges above it.

## Vehicle/background seam

Frame 5648 changes from the direct horizontal map to D988 mode 2. The D988
column origin includes one extra cell and a previous-velocity raster offset.
Native presentation now resolves both in the background window and star
occupancy mask. Actor coordinates, hitboxes and muzzle positions stay unchanged.
This supersedes the eight-pixel cannon/wreck-only correction described in
`sdl_logo_treads_cannon_fixes_2026-10-03.md`; that correction hid the background
origin discrepancy instead of fixing the whole scenery handoff.

## Checks

Continuous-scroll regression checks a fixed ship pixel position across the
opening/vehicle boundary, no state-0 hatch sprite, and leftward 0.5-pixel motion
across frame 5648 (over 97% of tested deck samples agree). The wreck remains
within two pixels of its pedestal during the climb, with no one-tile displacement.
Timeline regression covers direct stage 2 access, a 50% jump, upgrade toggles,
rewind/replay restoration, selected-stage reset and increased movement with S.

## Follow-up: opening rockets and complete object exit

Opening type-$15 rockets and other opening-flyer rounds now retain their source's
20-pixel sprite origin in a separate native bullet-pool array. This survives the
raster handoff even after the source has disappeared, without changing the ROM
projectile record or its velocity/timers. Streamed cannon rounds retain their own
origin. The array is copied with session/timeline checkpoints and reset on reuse.

The generic scenery cull previously deleted type $55 aircraft, type $22 paired
guns and type $26 hatches when their anchor crossed -16 pixels. Native scrolling
now derives their right extent from the decoded ROM tile matrices (using the
complete aircraft hull), with 16 pixels for sprite overhang/interpolation.
Existing wider ROM guards remain minimum retention bounds. Original helper
fixtures keep their culling semantics; live PlaySession passes the ROM for the
native visual bounds.

Regressions retain an opening rocket through frames 2573–2586 with unchanged
visible Y, and scroll all three reported object types off the left edge. They
must remain active after the old cull point, and can retire only after their
rendered pixels have disappeared. Build, continuous-scroll, combat, runtime,
late-combat, feedback, timeline and scroll-feedback checks pass.
