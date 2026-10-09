# Stage 1–9 player contact audit

Scope: every scrolling sector from start to active boss in stages 1 through 9;
ordinary enemies, harmless controllers/effects/wrecks, projectile launch states,
ship poses, scenery and boss terrain contexts. Existing combat and boss tests
cover HP, damage propagation, attack phases and destruction alongside this audit.

## Independent original-ROM evidence

`tools/audit_stage_player_contacts.py` takes all distinct actor collision poses
from the existing guarded natural stage traces. Those traces run the
unmodified cartridge with stage selection and player protection, without firing.
The audit relocates these records for synthetic boundary sweeps and executes
original bank07 $8039 (object pool) or $8280 (projectile pool) in OpenMSX. It
tests all three player poses, one-pixel boundaries and wider separations along
both axes, plus diagonal separation. Projectiles include $60/$61/$67 birth and
armed flags. No cartridge code or sprite data is patched.

15,210 original execution results are saved in
`fixtures/stage-player-contact/rom-contacts.tsv`. Native contacts match every
result. Seven complete DE00 maps (256 bytes each) from natural stage traces
match the native ROM decoder: stage 1 main/vehicle/gate, stage 2 main/boss and
stage 3 main/boss. ROM, emulator and source trace hashes are in the adjacent
`provenance.json`. Reproduction requires the existing natural trace files at
`tools/probe_out/all_enemies_audit_verified/`; immutable fixtures suffice for
the normal regression suite.

The stages 4–9 extension adds 22,464 original execution results in
`fixtures/late-stage-player-contact/rom-contacts.tsv`, all matching native
contacts. Its 12 complete terrain maps cover the main and boss contexts of
stages 4–8, stage 9's boss context, and stage 6's extra barrier map.
The stage 9 trace has only the boss DE00 map; its entrance map is decoded
from the cartridge but has no independent natural table capture here.
Together the two sets contain 37,674 contact results and 19 terrain tables.

Reproduce the late-stage extension with:
`python3 tools/audit_stage_player_contacts.py --stages 4 5 6 7 8 9 --out notes/fixtures/late-stage-player-contact`.

## Corrections

- Ordinary contact uses the original $B0 flags, coarse extents and directional
  sprite-component geometry. Active wrecks and decorative controllers are not
  automatically hostile.
- Secondary-pool contact uses bit 4 as $8280 does, including `game.lasers`.
  Type $60's four-tick $21 launch phase is harmless until flags become $31.
  The manually added 8x5 anchor fallback has been removed.
- Projectile constructors now initialize the original +13/+14 extents from
  the common $66F7 metadata path: four cells in each axis for $60/$61/$67.
- Terrain uses nonzero ROM collision components, rather than four corners of
  a 16x16 enclosing square. For the level ship pose, its shape is 6x4 at offset
  (9,13). Solid property bit 0 is separate from rendering/pickup flags; $24
  pickup/weapon tiles and property-$02 decorations do not kill the player.
  This footprint reconstruction is checked at every pixel edge; it is based on
  extracted shapes and solid-property helpers, not a natural ROM death capture.
- Terrain maps are loaded from ROM scripts instead of partial hand-written
  stage 1/2 ranges. Stage 1 resets now initialize their maps independently of
  previous stages. The vehicle script is $8666. The terminal gate uses the
  additional encounter pointer $8189 -> $8656, rather than $8177 -> $8649.
- Stages beyond stage 1 use their own streamed terrain immediately, including
  the first two entrance frames that previously took the early-stage path.
- Stage 6 barrier constructor $4F1C calls $6C5C with context index 1. Bank10
  pointer $818B -> $8E45 changes $28..$2B and $40..$4B from property $03
  (solid) to $02 (decorative), and installs the $A0/$A3..$A9/$AC..$AE/$BD
  barrier properties. The native session now switches when type $0E spawns,
  retains that map after barriers disappear, and replaces it at the boss.
  A new route assertion checks all 256 properties before/after activation,
  at the boss, and after reset. Collision lookups now choose the current
  context at query time, including an actor spawned earlier in the same tick.

## Route and regression verification

The native route observer uses invulnerability to inspect all sectors without
dying. Its isolated contact probes remain vulnerable and are compared to ROM.
Each route then runs another 1,200 frames with its original boss active.

| Stage | Frames to gate | Native route actor types | Contact fixture types |
| --- | ---: | ---: | ---: |
| 1 | 8,784 | 17 | 25 |
| 2 | 12,176 | 19 | 24 |
| 3 | 10,016 | 15 | 19 |
| 4 | 11,008 | 8 | 15 |
| 5 | 6,144 | 9 | 14 |
| 6 | 15,264 | 12 | 17 |
| 7 | 7,168 | 6 | 12 |
| 8 | 4,640 | 3 | 9 |
| 9 | 1,024 | 5 | 11 |

The fixture type totals also include original actors/controllers absent from
a single stationary native route, plus projectile families. All observed
natural contact poses are represented, including non-hostile tile bosses.
The normal suite passes all 40 tests, including the original boss, combat,
scrolling, ROM enemy-handler, player-death and new stage-contact checks.

This is stage-wide route coverage with independent collision probes and
existing behavior tests. It does not establish every native frame is identical
to a natural ROM playthrough.
Display-versus-integrated camera phases and complete checkpoint/continue
handling remain separate from these collision helper comparisons.
