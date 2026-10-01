# Bulk audio domain extraction — 2026-10-01

Goal: make larger ROM-extraction advances before further SDL reconstruction.
This follows the collision-scan milestone at40.70% coverage. No SDL/firmware/core changes or cartridge-byte patches.
ROM SHA-256: `bca5696ebbf4a3493bb226baa03ba8f8c5cc4876a4ad0eaa9722f583a42192b0`.

## Results and coverage

**40.70% →54.25%:35533 additional unique classified ROM bytes.**
Current catalogue:2406 entries,142226 classified,119918 unknown. Of the total,
645 bytes are previously reviewed collision code. No whole audio driver bank is
promoted to executable code. Most new coverage is rooted sequence data with
`inferred` interpretation, not a claim that the soundtrack is fully decoded.

- 85 sound IDs01..55 hexadecimal;83 unique routing descriptors, with aliases.
- 26 explicit music-bank selectors for IDs39..52 hexadecimal.
- 33351 bytes of rooted sequence data in nine contiguous physical ranges.
- 112 inferred waveform selectors;31 unique32-byte SCC sources, with aliases
  and one overlapping source relationship preserved.
- Full raw source slices and structured JSON exports under `assets/`.

Previously unknown banks17/18(hex) are music sequence data, not graphics.
The stage traces observe audio opcode reads from banks17,18,1C,1D,1E.
Bank17 now has8174 classified bytes, bank18 has8169, bank1D has8110 and bank1E
has7536. These are byte coverage counts, not completeness of track timing.

## Original driver and routing

Fixed `$4BC8` maps1C/1D/1E. Audio entry jumps in bank1C:
`$6000` initialization, `$6003` sound request and `$6006` frame update.
The driver writes PSG portsA0/A1 and SCC waveform/register space9800..988F.
The frame update `$6AD6` remaps A000 from C8C8; sound IDs39..52 change that byte
through the26-byte table at `$690F`. Its values select banks17/18/1E.
Other sound IDs retain the previous music bank.

`$6967` indexes the sound pointer table at `$7A00` with ID*2. The descriptor
starts with routing flags and priority, followed by little-endian channel roots:
flags08 select channel3, flags0C select2/3, flagsF3 select0/1/4/5/6/7, otherwise
all8 channels. `$69F2` installs ID, priority, stream pointer and initial timer1
into a64-byte channel slot, clearing the remaining fields.

ID00 returns before indexing. The adjacent pointer-like entry56 points into the
pointer table itself and remains explicitly unresolved; it is not promoted to
a playable sound. The inferred table prefix boundary does not establish a
complete runtime validity range for arbitrary IDs.

Retained-bank alternatives are explicit. Some static roots are explored with
all three possible music banks; this is conservative and does not mean every
combination is naturally reachable. They explain most unresolved graph states.

## Sequence graph

The graph follows rooted channel streams, note modes, operands, loops and the
single call-return slot. It does not assume that every byte belowD0 has the same
length. Mode09, low bits of0D and syntax flags0E determine note lengths.
Instrument patterns at9B00/9BF3 are followed as alternative dependencies; octave
selection is retained as an unresolved choice instead of inventing one table.

Important cases checked against original execution:

- E0/E1/E2/E3 derive their form from the opcode, not from the operand.
- DE in mode2 sets compact-frequency flag20, changing note consumption to one
  byte; in other modes it acts as a loop marker.
- F8 may consume one or two operands depending on its first operand's bit7.
- F9 stores one return address; FA returns through that slot. Shared callees
  preserve the union of their possible return destinations.
- Operand reads follow actual mapped banks across8000/A000 window boundaries,
  not adjacent physical-file bytes when the mapping differs.
- FF ends a channel and is not indexed through the normal command dispatch.

30731 graph states,25067 context nodes,13 unresolved contexts are exported.
Twelve stop at uninitialized note modes, mostly alternative retained-bank roots;
one instrument-table alternative points outside mapped audio ROM. These stops
remain in the graph; the parser does not guess the missing meaning.

## Validation

Nine80-second stage-start traces use the saved-stage selector, invincibility
and repeated fire, as in previous natural-entrypoint work. Original ROM execution
supplies opcode reads, note end pointers and command successor pointers.

**All comparisons PASS:**20603/20603 opcode reads,10891/10891 note boundaries,
7359/7359 command successors. Multiple possible state-dependent edges/lengths
at an address are retained: these checks validate observed boundaries and
successors, not every channel-register interpretation or every song's full run.

Direct original-ROM calls also pass **479/479**:

- 255 sound-routing calls:85 IDs × three retained-bank contexts; compare all512
  bytes of the8-channel pool plus the resulting music-bank selector.
- 112 waveform lookups at `$74B1`: compare the installed source pointer.
- 112 waveform copies at `$63FD`: compare all32 SCC RAM bytes with the exported
  source after original copying and mapper switching.

These fixtures begin with empty channel pools. Priority contention, controls
80..85, modulation, SCC shared-wave channel behavior and full audio timing are
not established by them. There are no final playable track/audio exports yet.

Evidence:
`notes/audio_domains_validation.json`, `notes/audio_assets_validation.json`;
exported unchanged to matching files in `assets/tables/`. Trace hashes, ROM and
emulator hashes, fixtures, expected/actual values and limitations are retained.
Raw logs/plans are under `tools/probe_out/audio_domains/` and
`tools/probe_out/audio_asset_validation/`.

Reproduce:

```sh
python3 tools/catalog_rom.py
python3 tools/run_audio_domain_traces.py
python3 tools/summarize_audio_domain_traces.py
python3 tools/run_audio_asset_validation.py
python3 tools/catalog_rom.py
python3 tools/test_catalog_rom.py
python3 tools/verify_catalog.py --stage0-vram /tmp/sm_catalog_vram.bin
```

The last optional argument uses the existing independent local VRAM reference.
Four audio parser regressions cover shared returns, compact note boundaries,
uninitialized-mode refusal and operands crossing a remapped bank boundary.

## Remaining bank leads

Banks0B/0C/0D/16/1F still have no classified bytes. In these traces0B is selected
at fixed `$4147/$4C56`,16 at `$413F/$4143/$4C11/$4C18`;0C/0D are not observed
selected. Absence from these stage-start traces does not mean unused ROM.
Value3F at `$4C18` enables SCC through the mapper's bank1F alias, so that write
alone does not prove audio data or executable ROM in bank1F. Other1F selections
remain separate leads.

Next large step: trace the loader/consumer paths for0B/0C/0D/16/1F, including
title/demo/ending contexts omitted by stage-start captures. Audio follow-up can
then resolve pattern alternatives, priority and modulation, and export complete
track/event streams before any SDL audio reconstruction.

Final checks:14 catalogue/parser tests PASS; source/hash/coverage verifier PASS;
stage0 VRAM131072/131072 exact. Fresh generation into
`/tmp/sm_audio_domains_catalog_clean`: 3548 files, zero byte differences
and no unexpected generated files.

Follow-up: planar graphics and demo input extraction are recorded in
[rom_screen_domains_validation_2026-10-01.md](rom_screen_domains_validation_2026-10-01.md).
