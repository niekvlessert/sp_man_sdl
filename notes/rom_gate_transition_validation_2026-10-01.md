# Stage0 boss death, stage selection and composed stamps — 2026-10-01

Follow-up: `rom_all_stage_boss_validation_2026-10-01.md` covers all nine assisted
stage transitions, 54 checkpoint selectors and type78 stamps. Counts below
describe this earlier milestone.

Continues `rom_objects_validation_2026-10-01.md`. ROM SHA-256 remains
`bca5696ebbf4a3493bb226baa03ba8f8c5cc4876a4ad0eaa9722f583a42192b0`.
Bank labels here are hexadecimal. SDL, firmware, SDK and OpenMSX core unchanged.

## Observed stage transition

`tools/run_boss_gate_traces.py` runs the original cartridge for230 emulated
seconds twice on FS-A1WSX. Both runs start with space at8/10/12/14 and set
CA53/CA54 invincibility after15; neither fires. The assisted run writes pending
damage FF once to the first damage-enabled type64 after155. This intervention
is explicit in its trace; no cartridge bytes are patched.

Control: stage0 remains at stream A438 through230, with type64 alive.
Assisted: original boss damage, destruction and stage controller proceed:

| Time (seconds) | Original event |
| --- | --- |
| 155.002618 | Pending FF injected into type64 slot CEC0, HP3C |
| 155.022129 | Bank04:$6E53 sets CE52=1 |
| 155.022133 | Bank04:$6E56 sets CE76=1 |
| 155.022177 | $7CC3 destruction entered from boss continuation $6E44, return6E4D |
| 155.076344 | Same slot executes type6A death handler, state0/selector0 |
| 155.112704..155.412521 | Death selectors1..7 |
| 155.462624 | State1 first observed with stored timer2F |
| 157.763173 | Bank05:$9B04 sets CA0F=1 |
| 157.810006 | Bank01:$6318 increments CA10 from0 to1 |
| 157.813678 | Fixed $459F clears checkpoint CA1E |
| 157.850907 | Original stage1 E900 spawn copy |
| 158.327076 | Original stage1 graphics root867F |
| 158.891032 | Stage1 checkpoint0 initializes stream A460, trigger0, metatile8AE0 |

Type64's destruction record replaces it with type6A, sound4D and score2000.
Death-handler entry bank05:$9AD7 selects eight stamp pointers at $9B0A using +06.
The eight selectors map to five matrix indices: **0,1,2,3,4,2,1,0**.
On wrap, $7058 initiates cleanup of other eligible objects and $7523 clears the
secondary pool. The handler sets +17=30 and +01=1, then immediately falls into
$9AFE's timer body. Thus the next handler entry observes2F. Traced state1 timer
entries descend2F..01. $6AD2 returns Z for the1-to0 subtraction without storing0;
$9B04 then sets the completion flag and removes the object via $6E98.
Timer values describe handler updates, not a claim of one update per VBlank.

Fixed $440F returns A=2 when CA0F is set. Bank01 gameplay controller $62E8 advances
CA01 to2. Its next state at $6308 clears CA0F, increments CA10, handles the nine-
stage limit and invokes the next-stage initializer. Main and gameplay inline
dispatch tables at $6267/$62CA are now exported in `stage_controller.json`.
The final-stage ending and other controller branches were not traversed.

**A438 is a terminal wait location for this observed encounter.** The next
observed stream is the next stage's checkpoint root A460. C0D6 remains0 during
the encounter: arriving at A438 does not prove the FF16 command there executed.
No post-A438 fallthrough edge is added to the background graph. This refines
the older working label “fight gate” without reinterpreting adjacent palette
bytes as level geometry.

`tools/summarize_boss_gate_traces.py` verifies **12/12 checks**: control wait,
single intervention/death, ordered flags and stage selection, boss continuation,
same-slot replacement, eight selectors, timer descent, stage1 initial fields,
1536-byte original spawn copy, graphics root and static background command
address/mode coverage. Evidence is in `tools/probe_out/boss_gate_validation/`.
`notes/boss_gate_observed_transition.json` retains trace hashes, emulator/ROM
hashes and milestone line references; generation copies it into
`assets/tables/boss_gate_validation.json` after checking ROM provenance.

## Complete composed stamp buffer comparisons

`tools/run_object_stamp_validation.py` invokes original bank04:$7B65 with each
exported selector of type64 and6A. Fixtures initialize an identifiable patterned
D800..DDFF buffer and object/scroll coordinates. The original stamp path copies
its script to D700, maps bank07/08 and writes matrices through $7AA8. The Python
comparison composes the exported scripts and matrix bytes independently.

**105/105 exact comparisons**, each over all1536 buffer bytes:15 selectors
times seven position contexts. They include the ordinary gate position, origin,
left/top edges, lower/right edge, fractional object plus scroll carry and an
outside-buffer position. Comparisons preserve all unchanged patterned bytes;
zero source tiles are transparent. This validates composed tile-index placement
and these clipping/fraction cases, not VDP palette/raster timing or every possible
coordinate. The padded compositor uses48 bytes per row and32 rows. The visible
D988 region is32 columns by24 rows inside that buffer.

Evidence: `tools/probe_out/composed_stamp_validation/comparison.json`,105 RAM
captures, plan and execution log. Reports include original ROM/emulator hashes.
Type6A's five unique six-byte scripts retain aliases across its eight selectors.
The generic stamp parser rejects truncated FE origins and preserves high-count
repeat controls; these two boundaries also have unit tests.

## Catalogue and remaining work

Current catalogue: **2257 entries;105522 classified bytes (40.25%);156622 unknown**.
The new bytes are rooted data tables/scripts; no speculative code coverage was
added. Fresh generation:3379 files, zero byte differences. Ten boundary tests
PASS; full coverage/provenance verification PASS; stage0 VRAM131072/131072 exact;
the prior284 original object-routine comparisons still PASS.

Reproduce:

```sh
python3 tools/run_boss_gate_traces.py
python3 tools/summarize_boss_gate_traces.py
python3 tools/catalog_rom.py
python3 tools/run_object_stamp_validation.py
python3 tools/test_catalog_rom.py
python3 tools/verify_catalog.py
```

Next: other boss death/continuation handlers and stage-specific waits/checkpoint
paths, then collision geometry, palette timing and music/SFX. This milestone is
one controlled stage0 encounter; it does not establish complete natural gameplay,
all boss transitions or final-stage ending behavior.
