# ROM-wide catalogue checkpoint — 2026-10-01

This is the initial catalogue checkpoint. The subsequent validation and expanded
entrypoint analysis are recorded in `rom_entrypoints_validation_2026-10-01.md`.

## Input and scope

Input: project-root `space_manbow.rom`, 262144 bytes.
SHA-256: `bca5696ebbf4a3493bb226baa03ba8f8c5cc4876a4ad0eaa9722f583a42192b0`.
This matches the earlier ROM in `additional_files/media/Space Manbow.rom` and
all 32 existing decimal-named bank dumps.

The new extraction lives in `assets/`. Existing SDL sources and historical
captures were preserved. No firmware, SDK or protocol code was changed.

## Delivered

- Complete ROM coverage partition: every byte occurs exactly once in coverage,
  with explicit unknown ranges and references into the overlapping asset catalogue.
- 571 catalogue entries; 70502 classified bytes (26.89%), 191642 unknown bytes.
  This is structural classification coverage, not a percentage of gameplay understood.
- 511 unique RLE source streams with hashes, decoded bytes, bitplane PNGs and
  reverse references into upload descriptors; shared sources deduplicated by offset.
- 21 graphics upload groups: the existing three stage-0 roots plus roots resolved
  from the loader pointer tables at bank 0A:$8165/$8177/$8189 and the global $83FD root.
- 10 sprite upload tables: global $92B8 and nine pointers at bank 0A:$83C0.
- 124 object dispatch records, stage-0 spawn records, background records through
  the first fight gate, metatile definitions, scroll presets and ground tables.
- Packed palette preambles and the two existing late stage-0 palette scripts.

Address policy: physical offsets are authoritative; ranges are half-open.
Manifest fields carry both decimal and hexadecimal bank numbers. New bank dump
filenames use hex; existing `banks/bankNN.bin` filenames use decimal.

## Verification

- Four boundary tests PASS: bank-crossing RLE with literal/repeat packets and
  source sharing, truncated RLE rejection, header/window checks, overlap union counting.
- Provenance verifier PASS: all raw slices/hashes, decoded hashes, original-bank
  reconstruction and contiguous coverage with correct entry ownership.
- Fresh generation into a second empty directory: all 1668 generated files
  byte-identical. The hand-written assets README is outside this generated count.
- Stage-0 uploads reconstructed from exported JSON and decoded bytes equal the
  existing C++ `decode_stage0_video` result: 131072/131072 VRAM bytes exact.
- SDL runtime regression remains PASS: 7744 frames, 27 stream events, 75 spawn records.

The new VRAM comparison checks extraction compatibility with our current C++
implementation. It does not independently validate the newly extracted groups
against the original game. Existing OpenMSX stage-0 anchors remain the reference.

## Next decode work, before further SDL reconstruction

1. Verify the newly resolved graphics/sprite groups against original OpenMSX
   uploads for each loader context. Determine pointer-table indices and stage use
   from callers; do not equate nine pointers with nine unique levels.
2. Identify all level/spawn entry-point tables, subscript targets and post-gate
   continuations. Parse other streams with explicit branch/wait relationships.
3. Follow tile and sprite animation lists in banks 07/08. Establish frame-list
   lengths from users/state machines before treating pointer-like bytes as frames.
4. Decode object metadata, collision and destruction tables. Keep custom raw
   matrix stamping (such as type $64) distinct from generic frame-list paths.
5. Map music/SFX driver entry points, sequence data and SCC/PSG instruments.
6. Build bank-aware code/data boundaries and symbols from entry points, dispatch
   tables and traces, including RAM relocation/self-modification. Existing linear
   disassembly and heuristic bank origins are supporting evidence only.
7. Capture consecutive video frames to understand R18/R23/raster timing, palette
   state and page selection. Static assets cannot resolve the known cadence bugs.

The completion gate is an auditable full-ROM map with each gap either decoded
or explicitly explained, plus reference validation of asset formats. SDL work
can then consume exported data without continuing to infer asset boundaries at runtime.
