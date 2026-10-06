# Stage 8 enemies/stars/lasers and Stage 9 boss presentation

## Original ROM evidence

Checked the local `space_manbow.rom`, its original spawn records and Z80
handlers. OpenMSX captures included a natural Stage 7 -> 8 transition; a
forced Stage 8 start alone retains title work graphics and gives misleading
sprite/pattern references.

Stage 8's 40 spawn records include four type-$42 rocks, sixteen type-$46
laser events, type-$50 vertical obstacles and one type-$1B ship generator.
The rocks and laser records were decoded but rejected by native spawning.
The generator was also unsupported. Each laser event allocates eight rows
in the original secondary pool at $D460, rather than the main twenty-object
pool. The ordinary rows use tile $CB, wait twenty logic ticks, then enter the
four-tick warning and growing/retracting wall sequence ($9054/$915D).
Boss walls retain the separate CC/CD/CB row arrangement (C0D4=$03).

The ship controller ($5BC2/$5C84, table $5CCF) changes its spawn mask with
the trigger region and terminates at low trigger byte $80. Children use the
original oscillating velocity, player tracking and aimed-fire request.
Rocks initialize via $5AA1 and use the vertical direction encoded in their
spawn payload.

Stage 8 inherits R4=$13 / R10=$02 and resident sprite RAM from Stage 7.
Reloading the global sprite table overwrote these families. Independent
64-byte sprite hashes captured from original VRAM:

- $DEA0, ship family: `5A2EEC51`
- $DC60, rock family: `4165373E`
- $DAA0, vertical obstacle family: `8E8E3DD2`

## Native fixes

- Restore rocks, generator/children, sixteen eight-row laser events and their
  original sprite/atlas data. A separate laser pool prevents starvation of
  ordinary enemies. Restore the independently scrolling Stage 8 stars.
- Laser growth probes scenery before laser stamping. Probing the previously
  composed laser cells made the wall collide with itself and disappear.
- Final boss $79 ($96AC -> $6E91) uses the ordinary camera service, not an
  additional synthesized horizontal movement on the 20-Hz attack clock.
- Draw its tile body and sprite eye through one native presentation path,
  with the same camera remainder. Retain its raster mode in renderer passes
  that temporarily hide actors. Stop applying camera interpolation once the
  fight gate stops the camera; the old fallback caused perpetual jitter.
- Service final-boss pending damage on the same 20-Hz clock as its handler.

## Validation

`space-manbow-stage89-presentation-test space_manbow.rom` checks original
spawn counts, initialization, laser warning/growth/audio, generator startup
and termination, all three independent sprite hashes, visible stars/walls
on the full Stage 8 route, a constant boss/camera anchor through the Stage 9
approach, and pixel-identical frozen boss poses over 24 presentation frames.

Existing Stage 2–9, boss visuals/palettes/regressions, late enemy/combat and
continuous-scroll tests also pass. The Stage 9 interactive damage and ending
check passes; its synthetic fatal-hit section now drains existing shots
first so an in-flight real shot cannot replace the injected pending byte.

This verifies the reported missing families and presentation faults. It is
not an exhaustive frame-by-frame comparison of every possible gameplay path.
