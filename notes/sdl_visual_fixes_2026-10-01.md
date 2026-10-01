# Interactive stage0 visual corrections

## Follow-up: invisible shots, vehicle entrance, edges and motion

The second user report revealed missing direct weapon uploads. Bank02
`$8732/$8749/$87FB` copies the basic weapon's 32 bytes at `$89B0` into VRAM
`$CA00/$D200/$DA00`. This is separate from the compressed sprite tables.
Those uploads now run during native asset initialization. The bytes also
match retained original `live_vram.bin` and `composed_vram.bin` snapshots.
The render regression compares identical sessions with/without firing and
requires 32 visible changed pixels. SDL key-down edges are latched until a
simulation tick so a short tap cannot disappear between keyboard polls.
Holding a key still fires once per press; collision/damage remains unconnected.

The A13F reset reconstructed one column incorrectly: the first macro phase
had already overwritten physical ring column31 in the original. Keeping the
retiring blue-scene column produced both the right-edge buildup and the tall
strip later at the vehicle's left end. Reset now writes the completed phase0
before starting phase1. A fresh natural OpenMSX capture matches the entire
2048-byte ring, in addition to the previous 3360 early viewport bytes:
**5408/5408 exact**.

The raster renderer now clips the horizontal display into black border rather
than wrapping tile column0 into the right edge. It also draws only the 24 rows
in the current composition; the eight unused rows cannot expose stale tiles
as the name-table row origin rotates during upward scrolling. A deliberately
bright tile fixture exercises both reused pages over 1800 streamer ticks,
including diagonal mode, and checks the top and right borders remain black.

For native play, presentation now advances within the four-frame logic tick.
This smooths the vehicle's previous held-frame/two-pixel motion while retaining
the streamer, object logic and their state transitions at their existing
cadence. The interpolation offset is applied before sampling, including tile
carries, rather than wrapping the fine phase independently. A vehicle ROI
regression now checks one-pixel movement between intermediate frames as well
as two-pixel movement across a completed logic tick. This deliberately improves
SDL presentation; it does not claim exact original raster timing. The older
cadence limitation below describes the previous presentation behavior.

Build, player/session regression, original runtime regression, 405 player
helper fixtures and 5408 early viewport/ring bytes pass. Entrance and upward
scroll captures were inspected. Complete gameplay/pixel equivalence, upgraded
weapons, combat and boss behavior remain outside this visual correction.

## Earlier corrections

User report: missing early stars, ground scrolling at background speed, static
early tracks, a gap/vertical stripe at the vehicle handoff, backwards jumps,
and cyan sprite artifacts.

## Changes

The play session now composes the early window per tick instead of cropping a
pre-rendered world texture. It uses the ROM star patterns/row positions, the
separate `$5DD8` ground table pass, and the existing object tile matrix path.
The early graphics bank is global R4=$03/R10=$00; choosing it from each tile's
world X incorrectly showed future graphics before the actual context switch.

The stream camera and the left edge of the early tile window differ by 31
columns (248 pixels). Original early D988 is arranged at **48 bytes per row**,
not 32. Comparing 32 consecutive columns from each of the first 21 rows with
the native function at camera 256/336/1024/1534/1536 gives **3360/3360 exact**.
The session starts with stream camera248 while showing decoded column0.
Previously the static renderer used decoded column192 at camera1536, while
the ring renderer showed column161. That difference caused the visible gap
and repeated scene. The original graphics context is latched on the next tick;
the native switch now follows at camera1538.

The session sends a presentation override matching its current D988. The
old default register model rewound one camera integration tick, appropriate
for the original raster-build breakpoint but not for an immediate upload of
the newly composed window. At X3078->3080 this mixed old fine phase with the
new tile column and moved scenery backwards. The new render comparison finds
99.64% of nonblack pixels in the vehicle ROI moving left by the expected 2px.
The regression requires >=99%, including the tile carry.

R18 moves the entire display uniformly. The artificial second, modulo-eight
ground fine shift was removed: its carry independently jumped backwards.
The faster ground motion comes from the separate ROM tile-table phase.

Sprite-format collision frames are not proof that an entity draws sprites.
`$77D0` is a background collision check. Tile-only types20/22/24/26 have such
frames but their flag15 bit0 is clear. Rendering them emitted unrelated
resident sprite patterns with vehicle collision-frame colors, explaining
cyan fragments near the ground. Both play mode and preview now require the
sprite-enable flag for those entities. Ship/projectile drawing remains active.
The earlier note claiming vehicle collision frames should be visible sprite
details is superseded by this correction.

## Verification and limits

```sh
cmake --build build -j4
./build/space-manbow-player-test space_manbow.rom
./build/space-manbow-runtime-test space_manbow.rom
python3 tools/run_early_window_validation.py
python3 tools/run_player_native_validation.py
./build/space-manbow-game space_manbow.rom --capture-at 6000 /tmp/vehicle.ppm
```

Early viewport:3360/3360; player helpers:405/405. Session and original runtime
regressions pass. Start, handoff and vehicle captures have been inspected.
The tests protect addressing, star presence, collision-frame suppression and
vehicle motion across a tile boundary. They do not establish complete pixel
equivalence or all track animation phases.

Coarse stage logic still advances once per four native frames. Existing
original traces hold R18 across multiple video frames; simply inventing an
intermediate R18 ramp would contradict that evidence. The backwards tile-carry
jumps are fixed; complete natural cadence/raster synchronization still needs
comparison with original frame sequences. Boss/combat implementation remains
the next gameplay work after validating the corrected presentation visually.
