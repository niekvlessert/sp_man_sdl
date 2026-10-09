# Normal enemy audit — 2026-10-08

Scope: all nine stage spawn tables, natural original-ROM handler traces for
all nine stages, source comparison of differences and existing behavior/damage
regressions. This is not exhaustive frame-by-frame parity for every route,
weapon combination, difficulty or repeat loop. Natural runs use no player fire,
so destruction branches are covered by source checks and native regression
tests rather than these live captures.

## Spawn coverage

Every actor/controller record was accepted in an isolated fresh native pool:

| Stage | ROM records | Actor/controller records accepted | Scene commands |
| --- | ---: | ---: | ---: |
| 1 | 86 | 81/81 | 5 |
| 2 | 164 | 155/155 | 9 |
| 3 | 72 | 71/71 | 1 |
| 4 | 61 | 60/60 | 1 |
| 5 | 80 | 79/79 | 1 |
| 6 | 110 | 106/106 | 4 |
| 7 | 28 | 27/27 | 1 |
| 8 | 40 | 37/37 | 3 |
| 9 | 11 | 11/11 | 0 |

Scene commands are types $5F/$65 and deliberately do not instantiate enemies.
Counts include the bosses and controllers; these are not counts of individual
visible enemies. Older stage-3/4 baseline notes predate the regular-enemy ports.

## Findings and fixes

- Stage 1: reviewed shared turret/cannon fire, blue enemy attack, carrier muzzle
  offsets, hatch/launcher children and damage/wreck handling. No new discrepancy
  found in this pass; existing combat/feedback/entity tests cover these paths.
- Stage 3: type $27, bank05 $817D-$8188, must re-aim immediately at coarse X<2.
  The native condition previously stopped re-aiming there. Fixed and tested with
  the player moving between successive ticks. Reviewed $1C/$1D, $25, $28,
  $32/$33 and lattice/controller coverage in the current implementation/tests.
- Stage 4: type $39, bank05 $8C6F-$8C98, selects a second terrain probe from
  $8D1B when its anchor overlaps the upper/left edge. The native code always
  selected the first probe and also reversed on an invalid ($FF) terrain result.
  Now reads the exact ROM offsets and rejects invalid probes. All four directions
  tested in normal/edge positions. Existing tests also cover $17/$19, $2D,
  $37 formations, $38 cardinal emissions and $39/$6F paired homing children.
- Stage 6: screenshot identified by rendering type $0E matrix 2 from the ROM.
  This is a stationary expanding barrier, not an inert decoration. Fixed-bank
  $4F98 fires when CA02 & $0B == 0. $4F9E/$4FB5 offsets the upper muzzle by
  X+3/Y+6 cells, lower by X+3/Y+0. $7110 jitters the target X/Y independently
  by -4..+3 cells. $4FD3-$4FEC fires three final rounds with half difficulty
  before leaving a non-shooting wreck. These attacks were entirely missing.
  Added them through the existing projectile pool without a shooting SFX
  ($7110 does not request one). Regression checks cover cadence, both muzzle
  families, target spread, final volley and preservation of difficulty/position.

## Original-ROM evidence

ROM SHA-256: `bca5696ebbf4a3493bb226baa03ba8f8c5cc4876a4ad0eaa9722f583a42192b0`.

`tools/trace_stage6_barrier_audit.tcl` uses the guarded real-gameplay boot,
RAM-only stage selection and player invincibility. No gameplay fire input,
weapon changes, injected damage or cartridge patches. Captured 180 handler
entries and 11 natural $7110 calls; open upper-barrier attack evidence:

```text
SHOT 44 state=3 frame=2 x=1B y=09
SHOT 50 state=3 frame=2 x=19 y=09
SHOT 54 state=3 frame=2 x=19 y=09
SHOT 60 state=3 frame=2 x=17 y=09
SHOT 64 state=3 frame=2 x=17 y=09
SHOT 70 state=3 frame=2 x=15 y=09
SHOT 74 state=3 frame=2 x=15 y=09
SHOT 80 state=3 frame=2 x=13 y=09
SHOT 84 state=3 frame=2 x=13 y=09
SHOT 90 state=3 frame=2 x=11 y=09
SHOT 94 state=3 frame=2 x=11 y=09
```

The natural trace proves opening and normal fire; the final destruction volley
is established from the original $4FD3-$4FEC source and native regression checks.

## Full-stage follow-up

The guarded all-stage capture visited 87 unique object handler types and saved
1,275 before/after pairs. These numbers include pickups, explosions, controllers
and boss parts, not just distinct visible enemy species. The trace scheduler
samples four entries per type/state/near-expiry category. It does not prove all
branches or all difficulty-gated enemies were visited.

`tools/run_all_enemies_audit.py` runs the original cartridge in isolated openMSX
instances. `tools/trace_all_enemies_audit.tcl` samples entry at bank04:$64D0 and
return at the original dispatch continuations, matching the caller stack depth.
The raw trace files are generated under ignored `tools/probe_out/`; the checked-in
`notes/fixtures/enemy-audit-provenance-2026-10-08.json` retains coverage counts,
ROM hash, machine, interventions and individual trace hashes. Replay with:

```sh
python3 tools/run_all_enemies_audit.py
```

Confirmed and fixed in this follow-up:

- Fixed $6B94-$6BE5: eight-direction aiming compared Y with half X in both native
  copies. RLCA followed by SRL extracts the sign and restores the original
  magnitude; the boundary is equal X/Y magnitude. Corrected poses and muzzle
  orientation for every family using this classifier. Quadrant/boundary checks
  and natural type-$32 pose pairs cover the fix.
- Type $11, fixed $52F4: LD B,3 cycles three frames, not six. The disassembly
  previously entered one byte too early and misleadingly printed LD B,6.
  Verified against raw ROM bytes and natural 1->2->0 animation pairs.
- Type $11, $5337: re-arm logic belongs to state 3, while state 2 returns without
  changing flight. Literal SUB/conditional NEG/CP 2 accepts exact target-row
  equality, including row zero. Added state/adjacent-row checks.
- Type $18, $554B/$5525: bit 6 enables an edge turn aimed at the player; state 2
  then retains its vector. The native version missed this turn and continued
  accelerating state 2. Added the turn and full two-axis acceleration on the
  transition tick, with the ROM absolute-speed limit test.
- Type $18, $5537: random fire is gated by CA04 (repeat campaign). Normal first
  playthrough does not advance this attack timer or shoot. Added the CA04 mirror
  and guarded the existing combat service; normal and repeat-fire tests cover it.
- Fixed $6AAC: constructors for $10/$12/$18 and $13 now select their sprite
  family from the current stage's ROM table entry. Previously later stages used
  the stage-1 sprite. In particular stage 2 uses frame 1 for $10/$12 and stage 5
  uses frame 1 for $13/$18.
- Type $4F, bank05 $965B: fire tests zero before decrementing. 1->0 must not fire;
  the following tick fires and reloads. Also restored the literal $9691 reload
  table and zero-entry wrap without inventing a cursor increment.
- Type $3B, bank06 $A1F1: low two tick bits have odd parity at phases 1/2, adding
  1/2 to base frame 4 or 10. At phases 0/3 it must keep that base, not frame zero.
  Fixed the closed-frame flicker of stage-2 boss body segments.

`enemy-rom-audit` compares 68 immutable natural handler pairs for $11/$18/$32/
$3B/$4F, covering state, pose, velocity, acceleration and timers. It also checks
all 627 actor/controller spawn records, stage sprite selection, edge turns,
state-$11 re-arming and the $4F reload cursor. Native combat/feedback tests cover
hitpoints, damage, projectile creation, extra parts and destruction; the boss
and presentation suites cover their specialized update schedules.

The diagnostic whole-pool replay is deliberately not treated as an exact parity
oracle: constructors run at native spawn, bosses have separate 20-Hz scheduling,
linked actor ordering and scrolling occur outside some handlers, and terrain
probes require the composed name table. Differences caused solely by those
contexts were not used to change gameplay.

## Validation

`cmake --build build -j4` passed.
`SDL_AUDIODRIVER=dummy ctest --test-dir build --output-on-failure -j4`
passed all 31 tests, including the new independent ROM-pair audit. The dummy
audio driver avoids requiring a default audio device in this headless run.
`git diff --check` passed.
