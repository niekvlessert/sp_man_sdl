# Stage 2: ROM audit and first native corrections

User stage 2 is ROM stage index 1. Reference ROM SHA-256:
`bca5696ebbf4a3493bb226baa03ba8f8c5cc4876a4ad0eaa9722f583a42192b0`.

## Reference and corrected background

176 original OpenMSX snapshots were taken at emulator times 15–190 seconds,
one second apart. Stage selection used F0FC=1 before starting; CA53/CA54 were
kept at 3 to survive the route. No enemies were shot. Each snapshot saved
C000–FFFF, physical VRAM and the VDP palette. Local captures are in ignored
`tools/probe_out/stage2_audit`. Comparisons use stream source plus original
C0BB/C0C1 world position, rather than elapsed time: the native scenery clock
and the original workload do not advance at identical wall-clock rates.

The native opening already had the correct artwork. Three stream errors caused
the later divergence:

- Bank09 $783E writes an initial phase at X=0 **before** the 31-column preload.
  $7841–$7845 then undo that phase's spawn-trigger increment. The port omitted
  this phase, putting the background a whole 8-pixel stream event behind.
- Mode 3 dispatches to $7E1C: eight metatiles, row +24, column offset zero,
  row phase `(Y & $18) / 2`. It does not share mode 4's $7EDE upward writer.
- FF14 calls $79FD/$7BD6 and stops scrolling. Stage 2 stops at source A94A,
  trigger 6000. Continuing past that point decoded the next stage as scenery.

Preset loading now resets C0DA as $78E7 does. FF12 retains the existing phase
in stage 2; stage 1's captured anchor compensation remains stage-specific.

Nine independent complete E000–E7FF ring hashes are regression fixtures in
`src/stage2_test.cpp`. They cover horizontal, two-source, diagonal, vertical
and resumed horizontal scenery. An expanded comparison found 163 exact rings
among 164 snapshots with matching native source and world coordinates; one
snapshot differs in 24 cells during a row upload. The final 12 snapshots do
not match native coordinates because the boss-sector controllers are still
missing. This comparison validates tile streaming, not the complete rendered
frame, all moving objects, or the final boss fight.

The native no-input route reaches the stream gate at frame 12176; the 50%
shortcut is frame 6088. This replaces the previously documented 22128/11064,
which included data beyond the stage boundary.

## Weapons and restored turret

Stage 2 previously reused stage 1's DE00 collision-property ranges, so normal
shots collided with empty-looking scenery. The stage-2 opening and boss-context
maps now match the original DE00 captures. A real opening shot survives about
51 native frames and reaches the right viewport edge.

Type $29 uses bank05 $82CA–$8337: payload bit 7 selects the ceiling variant,
the ROM metadata supplies size/flags/HP, $8304 selects one of eight aim frames,
and $72D4 supplies aimed firing. Every fourth turret can award a pickup. These
records were rejected by the native spawn whitelist; they now instantiate,
render, aim, shoot and use the existing ROM death/reward/sound path. The table
contains 77 records: 63 are unconditional, 14 depend on the original gates.
Stored HP is 1; the original subtraction-carry death condition requires two
one-damage hits, rather than killing at zero.

## Remaining work after the enemy/controller restoration

All 56 regular stage-2 spawn records now instantiate through their native
families: $19/$27/$2B/$2D/$2E/$2F/$31, including the $16/$2C launcher children.
The `$2C` children need two details that the isolated fixture did not expose:
new linked records must not run `$83BF` in their parent's creation pass, and
`$8402` must test the actual composed name-table byte at `(+2,+2)` rather than
an integer-cell approximation of the `$2E` artwork. The old native path added
an extra initial bounce and later let modules drift away before their fire
window. At world X=$047C the two children now reproduce the original Y=$0AA0/
$0B60 directions, and by X=$04AC the first module has emitted the complete
three-round type-$67 burst.
The $53 extended record also runs as the original type-$2A wave generator.
Type $5F was reclassified from "scene objects" to what the fixed-bank parser
actually does: $62BB intercepts these records before allocation. Four `01 01`
commands enable the palette-index-9 pulse, four `01 00` commands disable it,
and the final selector `03` clears the object pool before the end sector.
The native runtime now models those commands directly; no fake $5F entity is
created.

There are no missing Stage-2 spawn-table families left. The five `$3C`
final-sector objects instantiate with their ROM selectors and selector zero now
executes the fixed `$6C75($FB)` raster-anchor calculation. The `$7A` boss also
instantiates through its extended record and creates seven linked `$3B` body
records with the original offsets/timers. Live tracing shows ordinal 7 reaching
its initialized X=$0AC0/Y=$0600 state and then being removed by the original
`$7821/$7857` renderer-resource path before a second handler call; `$7A.+37`
therefore falls from 7 to 6 while the peak count at `+3B` remains 7. Native now
mirrors that result, follows the 14-entry vulnerability animation, and emits the
normal-route `$7306` upper/lower four-shot fans using its HP-derived speed field.
The normal `$20`-HP route reloads attack timer `+18` to `$20` exactly as `$A10F`
does, so the attack cursor advances only on real timer expiry. Five live-trace
boss checkpoints from X=$1FC0 through X=$1540 now match `+06/+17/+18/+20/+21`
exactly. The no-input route reaches the fight gate with one `$7A` and six live
`$3B` objects.

Stage 2's final-sector palette scripts are `$A94A` (black transition target) and
`$A95D` (green boss palette). They are now tracked as palette sets 1 and 2;
the boss therefore uses the original green artwork rather than the earlier blue
stage palette. Boss music is selected while `$7A` is alive. Fatal damage still
uses the ROM `$7A -> $6A` replacement, stops music during the destruction
countdown, and now advances from stage index 1 to stage index 2 when that shared
countdown finishes.

There are still fidelity details inside otherwise restored families to validate
visually. In particular `$2F`'s ROM obstacle-avoidance candidate search can be
tightened beyond the direct eight-way pursuit fallback, `$31`'s background-cell
mutation after its exact vertical terrain bounce is not yet mirrored, and the
boss's less-common CA04 attack branch plus the intermediate palette-fade
interpolation can still be tightened. Those are behavior/render refinements
rather than missing spawn families.

## Checks

`space-manbow-stage2-test space_manbow.rom` checks all nine reference rings,
the actual stream boundary, normal-shot lifetime, both turret orientations,
ROM artwork/HP, the four-turret reward cycle, and firing/projectile audio for
both mount orientations. Timeline seeking now uses the correct stage length.
Runtime, player, combat, late combat, feedback, scroll feedback, continuous
scroll and timeline checks pass. The late-image comparison at line 110 in
`play_features_test.cpp` fails both here and in a separate build of unchanged
commit `a52a013`; that existing failure remains unresolved.
