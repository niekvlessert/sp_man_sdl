# Full collision scans, callbacks and coverage — 2026-10-01

Follow-up to `rom_collision_validation_2026-10-01.md`. ROM SHA-256:
`bca5696ebbf4a3493bb226baa03ba8f8c5cc4876a4ad0eaa9722f583a42192b0`.
No SDL changes; no cartridge bytes patched.

## Why coverage moved slowly

The percentage measures the union of classified physical source bytes, not how
much gameplay has been validated. Repeated references and tests add no bytes.
The preceding milestone added an 84-byte shape table, moving40.41% to40.44%.
Most executable routines, even when already studied/tested, had not been added
as bounded code ranges. Linear disassembly alone remains insufficient evidence.

This milestone adds **677 unique bytes**:32 callback-table bytes and645 reviewed
collision-code bytes. Total is **106693/262144 =40.70%**,2280 entries;155451 bytes
remain unknown. The manifest now reports `reviewed_code_bytes` separately from
`other_classified_bytes` (106048). The latter covers the previous data/structure
inventory; it is not a count of complete usable graphics or audio assets.

## Full scans

Original bank07 `$80E9` performs sprite lookup, nested component comparisons,
mutual pending-damage assignment and callback dispatch.128 fixtures cover four
target types10/11/27/4D, attacker types1/2/5/7, and eight position contexts using
original sprite ROM data. Only known frames with ordinary headers are selected.

Original `$8039` scans all20 object slots.60 fixtures cover first/last slots,
type exclusions, flags and coarse separation; four further cases place two
objects in the pool. The scan continues after a hit and later eligible hits
**overwrite** the player's pending damage; they do not accumulate it.

The original fine comparison places the IY component in BC and IX component in
DE. Consequently its byte expression is directional: `(IXpos-IYpos+IXextent)`
is compared strictly against the summed extents. Equality with zero is accepted,
equality with the sum is rejected. Swapping operands can change a boundary
result. The previous note's broad statement that all touching edges miss has
been corrected. Coarse scan and fine scan must retain their respective operand
orientation, rather than assuming symmetric floating-point rectangles.

## Special collision callbacks

Original bank04 `$6459..$6484` saves banks at F0F2/F0F3, maps gameplay banks5/6,
dispatches on IX type, then restores the original banks7/8.144 fixtures test
bank restoration and both velocity callbacks, type3's fixed RET and default
returns. Pending damage/HP processing remains a different path.

- Type27, bank05 `$81AA..$820C`: attacker types4/7 contribute signed velocity
  shifted right twice, added to its own Y/X words with16-bit wrapping. Types5/6
  select one of four impulse records by+12; selectors>=4 do nothing.
- Type4D, bank05 `$95DD..$9636`: attacker types4/7 contribute signed velocity
  shifted right once. Types5/6 use the four-record table. Own status+03 masked05
  inhibits Y replacement; masked0A inhibits X replacement.
- Type3 jumps to fixed `$5100` (RET); other dispatcher types return unchanged.

The two16-byte tables contain X then Y words, with signed interpretation when
used as velocity. Selectors0..3 are `(X,Y)`=(0040,0000),(0000,0040),(FFC0,0000),
(0000,FFC0). Identical contents remain separate physical source ranges.

## Classification and evidence

Five reviewed executable intervals (end exclusive):

| Bank | CPU range | Meaning |
| --- | --- | --- |
|07|8039..80A5|twenty-slot player/object scan|
|07|80E9..8219|sprite/component scan and helpers through component geometry|
|04|6459..6485|bank-switching callback wrapper and dispatch|
|05|81AA..820D|type27 impulse callback|
|05|95DD..9637|type4D velocity callback|

Bounds were reviewed from rooted control flow and terminal returns. This does
not classify the intervening unused routines, whole banks, or every branch as
runtime-tested. Classification requires the passing full-scan/callback evidence
in addition to prior helper validation.

**603/603 original-ROM comparisons PASS**:267 prior helper/link cases,144
callback cases,128 fine scans,60 pool scans and four scan-order cases. Fixtures,
expected/actual values, ROM and emulator hashes are retained in
`notes/collision_routines_validation.json` and exported unchanged to
`assets/tables/collision_validation.json`. Execution log and input plan are in
`tools/probe_out/collision_validation/`.

New exports: `collision_callbacks.json`, `type27_collision_impulses.json`,
`type4D_collision_velocities.json`, `collision_code_ranges.json`, plus exact raw
slices for these tables/routines. `collision_scan_model.py` records the Python
interpretation used for comparison with original-ROM execution.

Reproduce:

```sh
python3 tools/catalog_rom.py
python3 tools/run_collision_validation.py
python3 tools/catalog_rom.py
python3 tools/test_catalog_rom.py
python3 tools/verify_catalog.py --stage0-vram /tmp/sm_catalog_vram.bin
```

The optional VRAM argument uses the existing independent local reference.
Ten catalogue tests PASS, including non-inflating code/data coverage accounting;
source/hash/coverage checks PASS; stage0 VRAM remains131072/131072 exact.

Remaining: natural combat and parent/child interactions, high-header sprite
eligibility, the projectile/background collision path, broader custom handlers,
remaining animation domains, palette timing and music/SFX. These synthetic scans
do not establish every game's hit context or full frame/cadence behavior.

Fresh generation in `/tmp/sm_collision_scans_catalog_clean`: 3415 files,
zero byte differences and no unexpected generated files.

Follow-up: bulk music/SFX domain extraction and validation are recorded in
[rom_audio_domains_validation_2026-10-01.md](rom_audio_domains_validation_2026-10-01.md).
