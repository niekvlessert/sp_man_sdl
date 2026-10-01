# ROM entrypoints and original-loader validation — 2026-10-01

Follow-up: `rom_objects_validation_2026-10-01.md` records the subsequent metadata,
destruction and type64 handler milestone. Counts below describe this earlier
entrypoint milestone.

## Current catalogue

Input remains project-root `space_manbow.rom` (262144 bytes), SHA-256
`bca5696ebbf4a3493bb226baa03ba8f8c5cc4876a4ad0eaa9722f583a42192b0`.

- 2126 entries; 104181 classified bytes (39.74%), 157963 unknown bytes.
- 511 unique compressed graphics sources, 21 graphics groups, 10 sprite tables.
- Nine stage indices, nine complete spawn streams, 54 checkpoint records,
  24 distinct background entrypoints, 1134 static graph nodes.
- 844 reachable metatile definitions; 322 tile matrices and 243 sprite-frame
  definitions from conservative animation-list parsing.
- All 128 entries in each of the tile/sprite type-pointer tables registered.
  These include aliases and unused/default entries, not 128 unique animations.
- Tile roots: 44 unique, 40 with parsed prefixes. Sprite roots: 73 unique,
  70 with parsed prefixes. Invalid/placeholder roots remain explicit.
- 163 distinct type/frame observations establish minimum extents. No list is
  labelled as having a proven final frame count merely from an adjacent pointer.

All source ranges are physical and half-open; overlap counts use their union.
Generated catalogue paths use hexadecimal bank labels. Historical bank dump
filenames still use decimal bank labels.

## Original-ROM graphics validation

`tools/run_catalog_openmsx.py` boots the unmodified cartridge on a Panasonic
FS-A1WSX, then calls the original bank0A loader for each exported table. It uses
resolved FF group roots, a debugger return sentinel and disabled VDP IRQs to
isolate upload behavior. Each call records a before/after physical VRAM image.
The Python verifier applies the exported descriptors to the same before image
and compares all 131072 bytes, including unchanged locations.

Result: **31/31 tables exact**, zero mismatched bytes. The report contains ROM
and OpenMSX binary hashes plus before/after hashes for each table.

Evidence: `tools/probe_out/catalog_validation/comparison.json`, execution log,
plan, process log and the 62 before/after captures. This validates upload bytes,
flips, plane selection, source-bank resolution and destinations. It does not
validate palette preambles or natural selection/timing of every graphics group.
The OpenMSX executable is the existing local build; no core/protocol code changed.

## Natural stage and source validation

`tools/run_entrypoint_traces.py` runs 80 emulated seconds for each saved stage
index 0..8. The only gameplay interventions are the F0FC saved-stage selector
before starting, CA53/CA54 invincibility after t=15 and repeated space key input.
The machine's real startup and original game code select the tables.

Results:

- initial stream pointer, trigger and metatile base: **9/9 exact**;
- original E900 spawn copies: **9/9 exact**, each comparing all 1536 bytes;
- expected stage-specific graphics root appears naturally: **9/9**;
- mapped metatile source reads: **2582/2582 exact**;
- every observed background command address/mode is present in the static graph;
- 163 distinct sprite/tile type-and-frame observations retained with provenance.

Spawn stream record counts, including pre-origin records: 86, 164, 72, 61, 80,
110, 28, 40 and 11. The existing stage0 runtime count remains 75 because it
filters records before its $107E origin. Later spawn pointers enter bank03:
CPU8000-BFFF is the contiguous bank02/03 source window used by the original LDIR.
Stopping at bank02's end would truncate stages 6..8.

Evidence: `tools/probe_out/entrypoint_validation/` contains per-stage logs and
spawn captures, provenance and comparison reports. `notes/animation_observed_frames.json`
is the ROM-hashed input to subsequent catalogue generation. The full game and
all respawn/checkpoint paths have not been traversed by these first-80-second runs.

## Background and metatile interpretation

Bank09:$7C8C selects one six-record checkpoint table per stage. Each four-byte
record is a stream pointer and trigger, selected by CA1E via fixed $4639.
Bank09:$7D76 selects the stage's metatile base. The stream bank is 1B, while the
metatile source window maps banks19/1A at CPU8000-BFFF (all bank labels here hex).
The original writer switch at $7C5B establishes record advances:

- modes0/2: six bytes;
- modes1/4/5: fifteen bytes;
- modes3/6/7: eight bytes;
- mode8: zero advance, requiring runtime state instead of invented tile records.

The static graph follows checkpoint roots, preset mode changes and conditional
branches. Command12's 36-byte inline second source remains an explicit payload
and contributes referenced metatile IDs. Commands13/1C call packed palette
scripts through fixed $4CE0/$4CDC; the older `RUN_SUBSCRIPT` working label is not
a claim that these are general-purpose level subroutines.

Fight gates stop graph traversal rather than decoding adjacent palette bytes as
geometry. Stop commands carry an engine-transition edge. Three conditional
preset7 wait paths are opaque: the runtime switches to waiting mode7, and its
later resume depends on engine state. Seven external stop/gate nodes remain
explicit. No unsupported record boundaries remain in the explored static graph;
that does not resolve these external transitions.

## Animation lengths: aliases and holes

Sprite pointer table: bank07:$8496. Tile pointer table: bank07:$8596. Both contain
128 pointers. Lists/definitions can continue into bank08 at CPUA000-BFFF.
The tile selector is bank04:$7A70; sprite/collision selection uses bank07:$8178
and the sprite renderer at bank04:$7782/$77DC. Sprite headers retain their raw
flag byte; the renderer masks bit7 when obtaining its component count.

Type6B is a concrete counterexample to guessing list length from the next root:
its tile list at $A641 was initially bounded to eight entries, but original
runtime traces access indices9,11,12 and14. Its minimum extent is therefore 15.
Index8 points at $9671, an alternative pointer-like structure which fails the
matrix shape checks. It remains an explicit unobserved hole, not a decoded
15100-cell matrix. Nearby list aliases overlap the same address range.

The type64 raw stamp matrices at $9179/$91D7/$9381/$934B are present in the matrix
catalogue; their custom handler must not be replaced by a generic frame lookup.
Current SDL stage0-only address guards do not establish the limits of the ROM.

## Checks and next work

- Eight boundary/regression tests PASS, including RLE80 no-op, bank-crossing
  spawn records, opaque waits, gate boundaries and shared-list holes.
- Full provenance/coverage verifier PASS.
- Fresh generation: 3241 generated files byte-identical to the working output;
  the hand-written README is outside the generated set.
- Stage0 VRAM still 131072/131072 exact against the existing C++ decoder.
- Existing runtime regression PASS: 7744 frames, 27 events, 75 filtered spawns.

Next: analyze handlers to establish full animation domains, checkpoint resume
states and boss/gate transitions; validate palette scripts/animation and later
video contexts; then decode collision/destruction metadata and music/SFX.
Executable-code boundaries and the remaining unknown ranges still need a
bank-aware control-flow and RAM-relocation analysis before full SDL rebuilding.
