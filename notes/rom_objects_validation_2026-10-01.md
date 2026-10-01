# Object metadata, destruction and type64 handler — 2026-10-01

Follow-up: `rom_gate_transition_validation_2026-10-01.md` validates composed
type64/6A stamps and the stage0 death/stage-selection path. Counts and unresolved
items below describe this earlier milestone.

This continues `rom_entrypoints_validation_2026-10-01.md`. Input ROM SHA-256:
`bca5696ebbf4a3493bb226baa03ba8f8c5cc4876a4ad0eaa9722f583a42192b0`.
All bank labels in this note are hexadecimal; ranges are physical and half-open.

## Exported data

`tools/catalog_objects.py` is part of ordinary catalogue generation. The catalogue
now has **2249 entries, 105460 classified bytes (40.23%), 156684 unknown bytes**.
No executable ranges were classified from linear disassembler output.

- `assets/tables/objects.json`: metadata and destruction references for all
  dispatch types 01..7C. Bank02:$9100 pointers use `(type-1)*2`; bank04:$66F7
  copies four bytes to object +13..+16. Shared definitions retain type aliases.
  Adjacent default pointers beyond the 124 dispatch types remain outside this
  export; they do not establish additional implemented types.
- Metadata +14 bit7 enables ordinary damage; +16 is initial HP. Other collision
  dimension/flag fields remain raw pending detailed collision interpretation.
- Bank04:$7E74 has three-byte destruction records indexed by **type**, including
  type00: replacement type, sound ID, score selector. Bank04:$7CC3 clears damage
  enable, resets state/frames/relationships and replaces the type. Parent/child
  cleanup is identified but not fully modelled.
- Bank04:$7CF6 contains ten words selected by selector-1. The first is FFFF,
  whose low FF skips scoring. Others are packed BCD values: 20,40,60,100,200,400,
  2000,4000,5000. $7E03 uses DAA to add these to CB0B..CB0D. This field is a
  **score selector, not a velocity selector**. Sound IDs are references only.

## Damage boundary

Original ordinary damage routine bank04:$7C44 consumes pending damage (+04)
only when +14 bit7 is set. With no pending damage it returns without subtraction.
It stores the 8-bit result at +16 and preserves subtraction flags across its
sound call. Ordinary destruction callers branch on carry: **damage > HP**.
Equality stores HP=0 without carry. The next nonzero hit then underflows.
Disabled damage retains the pending byte. Custom boss helpers $7C63/$7CAC have
different gates and are not covered by this ordinary-damage claim.

## Type64 handler and stamp scripts

Bank06:$A2D8 calls state dispatch $A2EC. Fixed $461A treats the CALL return address
as an inline indexed jump table, not executable fallthrough. Its seven targets
at $A2F2 are A300,A32D,A338,A353,A362,A371,A380. States0/1 initialize and advance;
state2 enables damage at its timer boundary; states3..5 advance; state6 returns
to3. The `(state-2)*4` phase table at $A3B0 copies fields +11,+12,+17,+20.

`type64_handler.json` exports phase data and frame selectors. Tile selector6 is
initialized and can persist until the opening countdown; the later opening/
closing cycle uses0..5. The direct sprite table at $A486 handles tile selectors
1..4; selectors0/5 use eight directional values at $A48C. Their combined sprite
domain is0..5. These are handler-local domains, not proof against external
death/reset overrides or proof of all object animation list lengths.

`type64_stamp_scripts.json` exports seven length-prefixed scripts rooted at
$A494, selected by tile selector0..6. Original $7C01 copies length-1 bytes to
D700 before mapping graphics banks07/08. Scripts contain relative origins,
matrix indices, FE origin changes and FF termination. Low count bytes select
successive matrix indices; high counts repeat one matrix. The script matrix
indices (including7 and10) are distinct from the selector0..6. This is why
ordinary one-frame lookup cannot reproduce the composed object. Actual full
stamp placement/rendering and the eventual gate-resume transition remain to
be validated; exporting the scripts does not claim those are finished.

## Validation

`python3 tools/run_object_validation.py` boots the original cartridge in the
existing OpenMSX FS-A1WSX build and invokes original routines with RAM fixtures,
a return sentinel and disabled VDP IRQs. No cartridge bytes are patched.

**284/284 exact comparisons:**

- 124 four-byte metadata initializations;
- 125 destruction pointer lookups, including type00;
- eight ordinary damage cases: zero, below/equal/above HP, HP0, byte limits and
  disabled damage;
- nine BCD bonuses plus two decimal carry/overflow cases;
- five type64 phase-record copies, four direct sprite selections and seven
  original stamp-script RAM copies.

Evidence: `tools/probe_out/object_validation/comparison.json`, `execution.log`,
`plan.tcl` and `process.log`. The report records ROM and emulator binary hashes.
These are synthetic routine checks, not a complete natural boss encounter.

Eight catalogue boundary tests PASS; full provenance/coverage verifier PASS;
stage0 reconstructed VRAM remains 131072/131072 exact against the independent
C++ decoder. Fresh generation produced 3367 byte-identical files. SDL source,
OpenMSX core, firmware and SDK were unchanged.

Next: trace type64 and other boss/gate state changes through death and stream
resume; prove custom stamp placement; analyze collision dimensions and remaining
handler animation domains. Palette timing, music/SFX, RAM relocations and reliable
executable-code boundaries remain necessary before complete SDL reconstruction.
