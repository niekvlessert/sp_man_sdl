# Space Manbow ROM asset catalogue

Generated from `../space_manbow.rom` with `../tools/catalog_rom.py`.

The manifest covers every physical ROM byte, including explicit unknown ranges.
It is an inventory, not a claim that all code and assets have been understood.

- `manifest.json`: ROM SHA-256, typed source ranges, confidence, references,
  decoded hashes, and a contiguous non-overlapping coverage partition.
- `coverage.tsv`: physical ranges and their owning entries. Ends are exclusive.
- `banks.tsv`: classified/unknown byte counts per bank.
- `banks/bank_XX.bin`: all 32 original banks; XX is **hexadecimal**.
  Existing `../banks/bankNN.bin` filenames use **decimal** NN.
- `raw/`: exact ROM slices, retaining compression and descriptor bytes.
- `decoded/`: decompressed RLE streams and metatile bytes.
- `previews/`: monochrome 8x8 source-bitplane contact sheets. These are not
  palette-correct final tiles or fully composed sprites. Plane data can contain
  colors or other upload bytes; its presence in a picture does not prove format.
- `tables/`: upload descriptors, palette/root boundaries, object dispatch,
  nine stage entrypoints and spawn streams, 54 checkpoints, a bank-aware
  background graph, per-stage metatiles and tile/sprite animation prefixes.
- `tables/animation_observed_frames.json`: observed frame indices with source
  log paths, line numbers and hashes; these establish minimum list extents.
- `tables/objects.json`: all 124 dispatch types' metadata, destruction mappings,
  initial HP, damage-enable flag and BCD score references.
- `tables/type64_handler.json` and `tables/type64_stamp_scripts.json`: state/
  phase tables, frame selectors and seven composed matrix stamp scripts.
- `tables/type6A_handler.json`, `tables/type6A_stamp_scripts.json` and
  `tables/stage_controller.json`: death animation and stage-selection tables.
- `tables/boss_gate_validation.json`: traced stage0-to-stage1 transition,
  explicit intervention and provenance.
- `tables/boss_handler_paths.json`, `tables/type77_child_records.json` and
  `tables/type78_stamp_scripts.json`: additional state/child/composed-stamp data.
- `tables/collision_shapes.json` and `tables/sprite_collision_frames.json`: 21
  shape records and component geometry for the 243 known sprite-frame prefixes.
- `tables/object_relationships.json` and `tables/collision_validation.json`:
  generic parent/neighbor cleanup and 603 original-ROM routine comparisons.
- `tables/attract_demos.json` and `attract_demo_stream_*.json`: three stored
  demo input streams and original countdown playback.
- `tables/screen_planar_strips.json`: 44 observed 1/2/3-plane sources, 61 original
  expansions, packed pixel exports and palette-based tile-atlas previews.
- `tables/screen_domains_validation.json` and `demo_playback_validation.json`:
  title/demo/ending traces and 3750 exact original playback frames.
- `tables/audio_sounds.json`, `audio_music_banks.json` and `audio_sequence_graph.json`:
  sound routing, music bank selectors and a conservative rooted bytecode graph.
- `tables/audio_waveforms.json`: 112 selectors referencing 31 unique SCC wave sources.
- `tables/audio_assets_validation.json` and `audio_domains_validation.json`:
  original routing/wave-copy calls and nine stage-start boundary traces.
- `tables/collision_callbacks.json`, `type27_collision_impulses.json` and
  `type4D_collision_velocities.json`: dispatch and two four-record velocity tables.
- `tables/collision_code_ranges.json`: five bounded, manually reviewed code ranges
  rooted in the tested collision scans and callbacks.
- `tables/all_stage_boss_validation.json` and `tables/checkpoint_validation.json`:
  all nine assisted stage transitions and all 54 original checkpoint selections.

`decoded` confidence means an existing decoder or loader analysis parsed the
structure. `inferred` retains uncertainty about extent or interpretation.
Neither label alone proves runtime cadence or correct visuals for every stage.
Overlapping entries and shared compressed sources are intentional; coverage
counts their union, so repeated references never inflate byte coverage.

## Reproduce and verify

From the project directory:

```sh
python3 tools/catalog_rom.py space_manbow.rom --out assets
python3 tools/test_catalog_rom.py
python3 tools/verify_catalog.py space_manbow.rom --assets assets

# Requires the existing OpenMSX build and user-supplied machine ROMs:
python3 tools/run_catalog_openmsx.py
python3 tools/run_object_validation.py
python3 tools/run_object_stamp_validation.py
python3 tools/run_boss_gate_traces.py
python3 tools/summarize_boss_gate_traces.py
python3 tools/run_all_stage_boss_traces.py
python3 tools/summarize_all_stage_boss_traces.py
python3 tools/run_checkpoint_validation.py
python3 tools/run_collision_validation.py
python3 tools/run_audio_domain_traces.py
python3 tools/summarize_audio_domain_traces.py
python3 tools/run_audio_asset_validation.py
python3 tools/run_screen_domain_traces.py
python3 tools/run_demo_playback_validation.py
python3 tools/run_entrypoint_traces.py
python3 tools/summarize_entrypoint_traces.py
python3 tools/catalog_rom.py space_manbow.rom --out assets
```

For a fresh comparison, use a separate empty output directory. The generator
updates its output files without deleting unrelated files in the directory.
The verifier also accepts `--stage0-vram path/to/reference.bin` to compare the
reconstructed 128 KiB stage-0 VRAM with an independent reference.

Extra resolved graphics group roots can be supplied with `--group HEX_ADDRESS`.
These must point at the FF ending the command preamble in decimal bank 10,
loaded at CPU address 8000. They are recorded as inferred.

## Validation and limits

All 21 graphics groups and 10 sprite upload tables compare byte-exactly with
synthetic calls to the original Z80 loader in OpenMSX, across a full 128 KiB
VRAM image per call. Natural starts of all nine saved stage indices confirm
initial selectors and all original 1536-byte spawn copies. The first 80 seconds
per stage also validate 2582 mapped metatile-source reads.

Reports and captures are in `../tools/probe_out/catalog_validation/` and
`../tools/probe_out/entrypoint_validation/`. See the current interpretation and
remaining gaps in `../notes/rom_entrypoints_validation_2026-10-01.md`.
Object routines have 284/284 exact original-ROM comparisons; see
`../notes/rom_objects_validation_2026-10-01.md` and the report under
`../tools/probe_out/object_validation/`.
Composed type64/6A/78 stamps compare exactly in 175/175 original-ROM calls.
The stage0 boss death transition has 12/12 checks with one logged pending-damage
intervention. See `../notes/rom_gate_transition_validation_2026-10-01.md`.
All nine assisted stage transitions pass 45/45 checks, including the final-stage
ending branch; checkpoint selectors compare exactly in 54/54 calls. See
`../notes/rom_all_stage_boss_validation_2026-10-01.md` for scope and interventions.

Collision routines compare exactly in 603/603 calls: helpers, full sprite and
twenty-slot player scans, bank-switching velocity callbacks and link cleanup.
See `../notes/rom_collision_scans_validation_2026-10-01.md`. Natural combat,
high-header frames and the projectile/background collision scan remain open.

The upload tests omit palette preambles and do not prove gameplay selection or
cadence for every graphics context. Natural traces select a saved stage and use
invincibility; they do not cover the complete game or every checkpoint.

The background graph preserves branch/wait conditions and external gate
transitions. Opaque wait paths are deliberately not extrapolated as geometry.
Frame lists have inferred prefixes plus observed minimum extents. Shared tails
and unobserved holes are explicit; a parsed prefix is not a final frame count.
Custom raw matrix stamping (for example type64) remains a separate code path.

Music/SFX, complete handler/state semantics, post-gate transitions, palette
animation and reliable executable-code boundaries still require analysis.
Unclassified data is never declared code merely because a linear disassembler
printed instructions. The catalogue currently classifies 168338 bytes (64.22%);
93806 bytes remain unknown. Counts refer to a union of source ranges.

Coverage measures identified source ranges, not percent of playable behavior.
The manifest separates 645 reviewed code bytes from 167693 other classified
bytes. Previously tested routines were not included as code ranges; behavior
validation therefore advanced faster than the coverage percentage. Code is only
classified in reviewed, rooted ranges, never by treating an entire disassembled
bank as executable.

Audio extraction adds 85 sound IDs, 83 unique routing descriptors, 31 unique
32-byte SCC sources and 33351 rooted sequence bytes. Original routing, lookup
and wave copies pass 479/479 calls; observed audio reads, note lengths and command
successors match all nine first80-second traces. Sequence interpretation remains
`inferred`, with 13 explicit unresolved contexts and retained-bank alternatives.
This is not a complete soundtrack decoder/player. See
`../notes/rom_audio_domains_validation_2026-10-01.md`.

Screen-source decoding is a separate planar-to-packed path from RLE uploads.
Its colored atlases preserve captured palettes but are not composed screen
images. All 61 observed conversions and all 3750 demo helper frames compare
exactly with original ROM execution. See
`../notes/rom_screen_domains_validation_2026-10-01.md` for scope and limits.
