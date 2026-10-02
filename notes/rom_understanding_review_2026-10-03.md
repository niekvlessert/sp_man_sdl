# ROM understanding review — 2026-10-03

Reviewed the current local notes, asset manifest, original-ROM comparison
reports and native source. Rebuilt and tested the current checkout. No gameplay
or renderer changes were made for this review.

## Overall assessment

The ROM has a substantial, verified data catalogue and increasingly detailed
stage-0 behavior reconstruction. It does not yet have a complete semantic
description of every handler or a native implementation of the entire game.
There is no defensible single percentage for gameplay understanding.

The current manifest reports:

- ROM: 262,144 bytes, 32 banks of 8 KiB.
- Classified: 168,338 bytes, **64.22%**.
- Unknown: 93,806 bytes, **35.78%**.
- Catalogue: 2,454 entries, including overlapping/shared references.
- Explicitly reviewed executable ranges: 645 bytes.

The executable count measures the catalogue's registered code intervals, not
all code that has been studied or ported. October 2 gameplay work did not update
that catalogue, so byte coverage understates recent behavioral progress.
58,240 unknown bytes lie in banks 00–06 and 09, which contain important engine
and handler paths. This is a useful priority signal, not proof that every
unknown byte there is executable code.

## Evidence by domain

| Domain | Established understanding | Boundary of the evidence |
| --- | --- | --- |
| Graphics | 511 unique RLE streams; 21 graphics groups and 10 sprite tables; 31/31 original loader comparisons | Palette preambles, natural selection/timing and complete animation domains remain separate |
| Stage data | Nine stage indices, 54 checkpoint selectors, 24 background roots, 1,134 graph nodes, 844 metatiles | Conditional waits, full routes and natural respawn paths are not all proven |
| Object infrastructure | Metadata/dispatch for types 01–7C; destruction/score tables; 284/284 object comparisons and 175/175 composed-stamp comparisons | Dispatch/metadata coverage does not mean all 124 behaviors are implemented |
| Collision | 603/603 original helper/scan/callback comparisons | Mostly synthetic contexts; native combat still has custom hitbox approximations |
| Boss transitions | All nine assisted original transitions, 45/45 checks; checkpoint selectors 54/54 exact | Damage assistance and invincibility were used; complete natural boss state behavior remains open |
| Audio | 85 sound IDs, 83 descriptors, 31 SCC sources, 33,351 rooted sequence bytes; 479/479 routing/wave comparisons | 13 unresolved sequence contexts; complete live priority/modulation/timing not reconstructed |
| Title/demo/ending | 44 observed planar source strips, 61 exact conversions, 3 demo streams and 3,750 exact helper frames | Composed screens, all palette timing and full ending/credits remain open |

These whole-ROM report counts are retained evidence, not newly repeated full
game traces during this review.

## Newer native implementation

The current code goes beyond the October 1 README and combat note:

- Native 512x212 presentation separates world geometry, stars, fast ground and
  vehicle overlays, allowing half-pixel logical motion at 60 Hz.
- Vehicle handlers include large/small cannons, hatch/launcher actors,
  launched enemies, rising craft, exhaust and persistent wrecks.
- Early flyer attacks now include distinct type-60/type-61 projectile states.
- M is a persistent ground-missile upgrade; the large two-part missile uses a
  separate armed state. W, option firing modes, scoring, explosions and
  weapon/destruction-specific audio have advanced.
- The terminal type-64 claw boss and type-6A destruction path now execute natively;
  a complete native next-stage transition is still absent.

Fidelity exceptions remain explicit in source: the second option's spacing
needs tracing; some replacement handlers use a temporary lifetime; the claw boss
uses a broad native hit envelope and earlier vulnerability for playability.
Native terrain probes exist for player projectiles, but they do not establish
complete player/terrain collision or original projectile-scan parity. Player
damage, death/respawn, full difficulty progression and later-stage native
behavior are still major gaps. Audio remains PCM mixing rather than a live
PSG/SCC driver implementation.

## Checks repeated for this review

- Build and `git diff --check`: pass.
- Catalogue/parser tests: 16/16; provenance and contiguous coverage verifier:
  pass for all 2,454 entries.
- Runtime, player/session, combat, play features and SDL dummy-audio tests:
  pass. Native route reaches the fight gate after 8,592 frames.
- Fresh original-Z80 comparisons: player/basic shot helpers 405/405, flyer
  initializers 10/10, W initializer including flags 8/8.

The route/feature test reports **zero frames containing pickups** for its
current scripted movement/fire run. It asserts combat and cannon sound activity
but not a naturally earned reward. Separate drop/collection fixtures pass.
This is a missing end-to-end reward proof, not sufficient evidence that all
normal reward paths are broken.

## Recommended next milestone

Finish a verified native stage-0 lifecycle: natural wave/cannon reward,
collection, player damage/death/checkpoint respawn, boss destruction and stage-1
initialization. Preserve the current smooth presentation while doing this.
Use original-ROM traces to validate the gameplay sequence at logical ticks.

In parallel with that implementation work, maintain a per-type handler inventory
for all 124 dispatch types: entry point, states, dependencies, ports, fixtures,
natural trace coverage and remaining approximations. Register bounded code
ranges for reviewed routines so catalogue coverage reflects the work. Then
generalize stage selection/loading and add later enemy/boss families.

Track byte classification, handler understanding and native gameplay coverage
separately. Completing more raw byte extraction alone will not complete SDL.

## Documentation drift

`README.md` and October 1 notes are milestone history and contain superseded
M/option/explosion/gate descriptions. The October 2 handover also quotes a
checkpoint hash not present in the current local log; the reviewed HEAD is
`2d94ffe`, with additional uncommitted work. Source and current validation take
precedence when assessing this checkout.
