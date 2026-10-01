# Title/demo/ending source domains — 2026-10-01

This continues the audio-domain extraction at 54.25% coverage. All work remains
ROM extraction and verification; SDL, core/SDK and firmware are unchanged.
ROM SHA-256: `bca5696ebbf4a3493bb226baa03ba8f8c5cc4876a4ad0eaa9722f583a42192b0`.

## Result

**54.25% → 64.22%**, adding **26112 unique classified bytes**.
Catalogue: 2454 entries, 168338 classified bytes, 93806 unknown bytes.
These additions are rooted demo data and observed planar graphics sources;
no entire bank is declared executable merely from linear disassembly.

Previously unclassified banks now have:

| Bank (hex) | Classified bytes | Percentage | Identified use |
| --- | ---: | ---: | --- |
| 0B | 6910 | 84.35% | observed planar graphics sources |
| 0C | 3362 | 41.04% | observed planar graphics sources |
| 0D | 3192 | 38.96% | observed planar graphics sources |
| 16 | 7484 | 91.36% | observed planar graphics sources |
| 1F | 4644 | 56.69% | three attract-demo input streams |

These roles describe the extracted ranges, not every remaining byte in a bank.

## Separate planar graphics path

Bank03 `$ADD0/$AE07` normalizes a descriptor's source pointer into the paired
6000/8000 mapping. `$AF3A`, `$AF93` and `$AFF4` convert one, two or three source
bitplanes per row through color indices stored at CA00. Sources are read in
8-row tile order; plane0 is the lowest significance bit. Each eight-pixel row
becomes four packed pixels (high nibble first) in CB00. The later VRAM copy and
its mirrored alternative remain separate from this expansion check.

The third source format is **three planes**, despite the descriptor helper's
four packed color bytes providing eight colors. It must not be mislabeled 4bpp.
Palette colors are not encoded directly in these source bitplanes.

Natural traces now identify **44 unique source strips**, with aliases/overlaps
counted once in coverage. **61 original expansion calls** compare byte-exactly
with our decoder, including all three formats. Each record verifies original
CPU source bytes against their mapped ROM offsets, then every expanded CB00
byte against independent Python conversion. This is a different format/path
from the existing RLE upload groups.

Exports:

- exact `assets/raw/planar_strip_*.bin` sources, with format and tile counts;
- `assets/tables/screen_planar_strips.json`: mapping, context, color indices,
  decoded hashes and observed VDP palette bytes;
- `assets/decoded/screen_strip_*.bin`: original-order packed pixel bytes;
- `assets/previews/screen_strip_*.png`: colored tile atlases, at most32 columns,
  using the palette captured before the original conversion.

Atlases are source previews, not composed screenshots. They do not prove final
screen placement, transparency/backdrop behavior, raster palette timing or every
possible loader context. Shared sources with different color/palette contexts
retain separate decoded/previews while physical coverage counts their union.

## Attract-demo input data

Bank01 `$7863` cycles three four-byte selector records at `$7877`:

| Index | Stage | Checkpoint | Bank1F root | Input records | Playback frames |
| --- | ---: | ---: | --- | ---: | ---: |
| 0 | 3 | 0 | ACB4 | 461 | 1448 |
| 1 | 0 | 1 | A000 | 585 | 1291 |
| 2 | 1 | 2 | A6E4 | 493 | 1011 |

`$784D` loads stage, checkpoint and pointer. `$789C` decrements C91A; at zero
it reads three bytes through `$78D4`: duration, input to C908, input to C907.
Zero duration wraps through the byte countdown and represents256 calls.
`$78D4` temporarily maps bank1F at A000, reads the byte, then restores bank03.
The BIOS-backed alternative for recording/playback mode2 is outside this work.

The three streams end in an aligned nine-byte fence `[01, FF, FF, FF, FF, FF,
FF, FF, FF]`. The external `$77F0` lookahead tests upcoming bytes to leave the
demo. The fence is retained, not interpreted as additional ordinary input rows.
The remaining3548 bytes of bank1F are allFF, recorded as a possible fill tail
without promoting them to known-unused ROM coverage.

**3750/3750 original playback frames exact**: synthetic calls to the original
`$789C` compare countdown, source pointer and both input bytes after every call
through all ordinary records of all three streams. RAM fixtures initialize the
pointer/countdown; cartridge code/data are unmodified. This checks helper timing,
not the full-game outer termination logic or recording mode.

Exports: `attract_demo_selectors.bin`, raw/table `attract_demo_stream_*.bin/json`,
`assets/tables/attract_demos.json`, `demo_playback_validation.json`.

## Captured contexts and provenance

Title/demo:600 emulated seconds, no input/ROM patch/invincibility. All three
selector indices and stages0/1/3 start naturally; the third begins near588s and
is only partially traversed by this capture. **3390 unique demo byte reads**
match the original ROM. Full helper playback is separately covered above.

Ending: saved stage8, existing declared boss pending-damage assistance and
invincibility, then original ending execution for160 additional emulated seconds
after the earlier eight-second transition stop. The assistance is logged under
`tools/probe_out/screen_domains/ending/boss/trace.log`. This exercises ending
source conversions; it does not establish completion of every credits phase.
Ending routines may reuse gameplay RAM, so later CA00/CA10 values must not be
interpreted automatically as ordinary gameplay states.

Trace hashes, ROM/emulator hashes, source ranges, byte counts and checks are in
`notes/screen_domains_validation.json`, exported to
`assets/tables/screen_domains_validation.json`. Input plans, binary snapshots and
comparison hashes for demo calls are under
`tools/probe_out/demo_playback_validation/`; its passing report is
`notes/demo_playback_validation.json` and the matching exported table.

Reproduce from project root:

```sh
python3 tools/run_screen_domain_traces.py
python3 tools/catalog_rom.py
python3 tools/run_demo_playback_validation.py
python3 tools/catalog_rom.py
python3 tools/test_catalog_rom.py
python3 tools/verify_catalog.py --stage0-vram /tmp/sm_catalog_vram.bin
```

The optional VRAM argument uses the existing independent local reference.
The trace runner accepts `title_demo` or `ending` to repeat only one context;
the catalogue requires completed captures for both before importing evidence.

Remaining: unobserved planar source ranges/descriptor scripts, composed title
and ending placement, palette timing, remaining RLE/raw assets, and rooted
executable-code/RAM-relocation boundaries. The remaining93 KiB are a mixture
of code, data and potential fill; they are not93 KiB of missing graphics alone.

Final verification:16 catalogue/parser tests PASS; source/hash/coverage verifier
PASS; stage0 VRAM131072/131072 byte-exact. Fresh generation into
`/tmp/sm_screen_domains_catalog_clean`: 3725 files with zero byte
differences and no unexpected generated files.
