# All stage transitions and checkpoint selectors — 2026-10-01

Continues `rom_gate_transition_validation_2026-10-01.md`. Original ROM SHA-256:
`bca5696ebbf4a3493bb226baa03ba8f8c5cc4876a4ad0eaa9722f583a42192b0`.
Banks and object types below are hexadecimal. SDL/core/firmware/SDK unchanged.

## Nine assisted stage transitions

`tools/run_all_stage_boss_traces.py` starts each saved stage separately in the
original FS-A1WSX cartridge. It selects F0FC before starting, keeps the player
invincible through CA53/54 and does not fire. At selected original damage entry
points it writes pending damage +04, with every intervention logged. Amount is
min(255,counter+1), waiting one second after first seeing that object and at least
0.2 seconds between injections. It never patches cartridge code, forces the
completion flag, enables object damage or changes the stage during gameplay.

The damage entry points include bank04:$7C44/$7C63/$7C6B/$7CAC and the custom
bank05:$8EF5 counter routine. The first exploratory pass left stages4/6/7 waiting;
source analysis identified their extra conditions. The retained final traces
include the corrected targets/entry points and all nine transitions.

| Stage | Injected types | Injections | Completion writer | Stage increment time |
| --- | --- | ---: | --- | ---: |
| 0 | 64 | 1 | bank05:9B04 | 144.178312 |
| 1 | 7A | 1 | bank05:9B04 | 187.850089 |
| 2 | 3E | 1 | bank05:9B04 | 158.697006 |
| 3 | 14 | 1 | bank05:9B04 | 169.327905 |
| 4 | 76,77 | 13 | bank05:9B04 | 99.070771 |
| 5 | 7B | 1 | bank05:9B04 | 246.141190 |
| 6 | 43 | 2 | bank05:8F3E | 113.339800 |
| 7 | 78 | 1 | bank06:ABCD | 107.812602 |
| 8 | 79 | 3 | bank04:6044 | 23.805163 |

These times reflect controlled assistance, not natural completion times.
The first six boss types have destruction replacement6A and share its death
completion at9B04. Stages6..8 use different completion paths; one generic death
handler would lose those distinctions.

Stage4/type77: state3 waits for child relationship count +37 to reach0 before
entering the palette/timer/damage-enable phases. Twelve damageable type76 parts
were present. Their destruction allows the parent to advance and enables its
ordinary boss damage. The new `type77_child_records.json` exports the twelve
six-byte records at bank06:B3DB, read via B3A0; the initial eight and additional
indices8..11 retain their raw fields and do not claim full collision semantics.

Stage6/type43: +16 is0 and damage-enable is clear. Its own8EF5 subtracts pending
+04 from counter **+02**, initialized FF. Assistance FF produces counter0 without
borrow; the next1 underflows and advances its custom death states. Those states
set CE76, wait through cleanup/audio timers and complete at8F3E. The metadata HP
field is not this object's custom counter.

Stage7/type78: damage is gated in AC2C by +29/+2B, then calls original7C6B,
bypassing the beginning of7C63. AC3F sets CE76 and enters the death/camera/player
transition states; completion is written atABCD. Its nine-state dispatch and
ten stamp selectors are now exported. Completion is not inferred from its
ordinary destruction replacement62.

Stage8/type79: three injections traverse its differing damage/cleanup phases.
The observed completion writer is the shared boss-presence latch at6044. The
original stage controller increments CA10 to9 at6318 and then branches to main
state4. **No stage9 checkpoint selector runs.** Execution continues into the
ending context; the trace samples eight seconds after selecting9. This confirms
the ending branch, not complete credits/ending behavior. RAM fields such as CE52
subsequently contain ending-context data and must not retain gameplay meanings.

`tools/summarize_all_stage_boss_traces.py` passes **45/45 checks**: per stage,
initial checkpoint0 fields match, interventions precede completion, completion
precedes the original stage increment, final index matches, and the next stage
initializes checkpoint0 exactly. For stage8 the last check verifies the ending
branch and absence of an out-of-range checkpoint selection.

Evidence: `tools/probe_out/all_stage_boss_validation/` contains nine traces, final
RAM captures, process logs, emulator/ROM provenance and comparison report.
`notes/all_stage_boss_observed_transitions.json` retains trace hashes and precise
milestone line references; it is copied into the asset tables after ROM-hash and
passed-check verification. Detailed natural boss timing and every internal state
branch remain unverified.

## All 54 checkpoint selectors

`tools/run_checkpoint_validation.py` invokes the original bank09 selector
subsection7803..782C with all nine stage indices and six checkpoint indices.
It stops before stream initialization; IRQs are disabled and RAM stage/checkpoint
fixtures are explicit. No cartridge code is patched.

**54/54 exact:** C0CA stream root, CA34 trigger, C0C8 metatile base and C0E1 resume
marker all match the exported table. This establishes original selector behavior,
including repeated roots/default checkpoint records. It does not prove that all
54 checkpoints are naturally reachable, nor validate every death/respawn path,
spawn filtering or subsequent stream execution.

Evidence: `tools/probe_out/checkpoint_validation/comparison.json`, plan and
execution log; ROM/emulator hashes are retained. The report is exported as
`assets/tables/checkpoint_validation.json`.

## Assets and composed stamps

New rooted data: type43/77/78 state-pointer tables, type77 child records, and ten
type78 stamp scripts at bank06:ACDE. `boss_handler_paths.json` records their
different damage/completion rules and evidence; it does not classify executable
code ranges. No pointer-list extent is promoted to a final animation count merely
from proximity to the next root.

The original composed-stamp comparison now covers type64,6A,78: **175/175 exact**,
25 selectors times seven position contexts, each comparing all1536 D800..DDFF
bytes. It validates matrix placement, transparency and the tested clipping and
fractional-scroll carries; palette/raster timing remains separate work.

Catalogue: **2272 entries,105932 classified bytes (40.41%),156212 unknown**.
Ten catalogue boundary tests PASS; full provenance/coverage verifier PASS;
stage0 VRAM remains131072/131072 exact. Fresh generation produced3399 files with
zero byte differences.

Reproduce:

```sh
python3 tools/run_all_stage_boss_traces.py
python3 tools/summarize_all_stage_boss_traces.py
python3 tools/run_checkpoint_validation.py
python3 tools/catalog_rom.py
python3 tools/run_object_stamp_validation.py
python3 tools/test_catalog_rom.py
python3 tools/verify_catalog.py
```

Next: collision geometry and parent/child damage propagation, natural respawn
initialization, remaining animation domains, palette timing and music/SFX.
Full ending/credits and reliable code/RAM-relocation boundaries remain open.

Follow-up: collision geometry and generic relationship cleanup are recorded in
[rom_collision_validation_2026-10-01.md](rom_collision_validation_2026-10-01.md).
