# Collision geometry and object relationships — 2026-10-01

This follows the nine assisted boss transitions and 54 checkpoint selector
comparisons. Work remains ROM extraction/validation; no SDL code is changed.
ROM SHA-256: `bca5696ebbf4a3493bb226baa03ba8f8c5cc4876a4ad0eaa9722f583a42192b0`.

## Extracted shape table

Bank07 CPU `$8219..$826C` contains 21 four-byte records:
`y_offset, y_extent, x_offset, x_extent`. The next routine starts at `$826D`.
Selector zero skips collision even though its reserved record contains bytes.
All collision selectors in the 243 currently parsed sprite-frame prefixes fit
this table. Each six-byte component supplies Y offset at byte1, X offset at
byte2 and shape selector at byte5. These are offsets plus extents, not symmetric
radii. The table adds 84 newly classified ROM bytes.

Original `$81E0` converts each 8.8 position to a pixel byte by shifting left
three and taking the high byte, then adds component and shape offsets modulo256.
`$80D0` tests both axes with this strict byte comparison:

```
((source_position - target_position + source_extent) & 255)
    < ((target_extent + source_extent) & 255)
```

The comparison is directional: zero after subtraction is accepted while equality
with the summed extent is rejected. Wraparound and zero/overflowing extents follow
byte arithmetic. The follow-up full-scan tests establish operand orientation. Do not replace this with an ordinary unbounded rectangle test.

The player/object coarse scan `$8039..$8094` uses object+13 as vertical extent,
object+14 masked7F as horizontal extent, and requires `(object+15 & B0)==B0`.
Types outside1..127 and type5F are excluded. The finer component scan follows
this coarse check. These scan rules are read from code, not validated end to end
by this fixture set. Other paths differ: bank04 `$7662` uses dimensions masked1F
and decremented. Renderer header masking must not be assumed for collision:
`$8178` returns the raw sprite header; eligibility of headers with bit7 set
remains unresolved.

## Damage and cleanup

Bank07 `$813F` overwrites the directly collided object's pending damage+04.
Attacker type4 supplies its own+06; other types2..9 supply2; remaining tested
values supply1. This helper does not itself subtract either object's HP. The
later ordinary damage/death rule remains `damage > HP`, previously validated.
Special callbacks after this helper are outside the current tests.

Bank04 `$7D3E/$7D5E` uses one-based slot identities (+2D) and relationship+34.
Generic removal decrements a validated parent's live-child counter+37. Bit7
requests a traversal that marks matching children with bit6; neighbor references
+35/+36 receive bit7 invalidation. The tested paths leave parent and child HP
unchanged. This does not establish that every custom handler lacks forwarding.

An important original behavior: death cleanup `$7D5E` decrements **returned
IY+3B**, not necessarily parent+3B. `$7D54` tail-calls neighbor cleanup `$7DA6`,
whose lookup can replace IY with the last referenced neighbor. With valid
neighbors3/4 the decrement lands in neighbor4; without neighbors it lands in the
parent. The fixture also confirms a stale parent slot identity rejects the+37
decrement but still allows the caller's+3B decrement. These synthetic cases
record ROM behavior, without asserting such stale combinations occur naturally.
The conditional last-child marker reads the same returned IY, then updates
removed IX+3D. Do not normalize these pointer effects when reconstructing code.

## Original-ROM validation

**267/267 exact** in OpenMSX, invoking original routines with RAM/register
fixtures and a return sentinel; no cartridge bytes are patched:

| Category | Calls | Coverage |
| --- | ---: | --- |
| Component geometry `$81E0` | 126 | 21 selectors × six position/offset contexts, fractional and wrapped coordinates |
| Axis overlap `$80D0` | 110 | strict edges, two axes, wraparound, zero and overflowing extents |
| Hit assignment `$813F` | 14 | attacker types, overwrite semantics, unchanged HP |
| Link cleanup `$7D3E/$7D5E` | 8 | parent counters, child marking, neighbor invalidation, unchanged HP |
| Death counter pointer | 4 | no neighbors, previous only, following only, both |
| Last-child marker | 3 | enabled, inhibited and missing marker |
| Stale identity | 2 | removal versus death caller behavior |

`notes/collision_routines_validation.json` retains expected/actual values, every
fixture, ROM/emulator hashes and limitations. The same evidence is exported as
`assets/tables/collision_validation.json`; execution logs and Tcl plan are under
`tools/probe_out/collision_validation/`. Derived shape/frame/relationship data is
in `assets/tables/collision_shapes.json`, `sprite_collision_frames.json` and
`object_relationships.json`; exact source bytes are in
`assets/raw/sprite_collision_shapes.bin`.

Catalogue: **2273 entries,106016 classified bytes (40.44%),156128 unknown**.
Ten catalogue tests PASS; complete source/hash/coverage verifier PASS;
stage0 VRAM remains131072/131072 byte-exact. Fresh generation in `/tmp/sm_collision_catalog_clean` produced
3404 files with zero byte differences and no unexpected generated files.

Reproduce from the project root:

```sh
python3 tools/catalog_rom.py
python3 tools/run_collision_validation.py
python3 tools/catalog_rom.py
python3 tools/test_catalog_rom.py
python3 tools/verify_catalog.py --stage0-vram /tmp/sm_catalog_vram.bin
```

The last command uses the existing independent stage0 reference; omit its
optional argument when that local reference is unavailable.

Next: original full collision scans and special callbacks, natural parent/child
hit paths, remaining animation domains, palette timing and music/SFX. These
fixtures do not prove full combat timing, every sprite frame, respawn behavior,
ending/credits, or executable-code/RAM-relocation boundaries.

Follow-up: full scans, velocity callbacks and bounded code coverage are recorded
in [rom_collision_scans_validation_2026-10-01.md](rom_collision_scans_validation_2026-10-01.md).
