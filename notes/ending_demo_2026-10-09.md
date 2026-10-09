# Original ending demo

The native game now switches to the ending once the final boss's complete
explosion/hold sets `PlaySession::campaign_complete()`. Gameplay then stops.
The ending runs at normal speed in either graphics mode, supports P/F10, and
returns to the main menu after its final fade. A fresh Space/Enter skips it;
a held fire button or repeated key events do not skip it. Menu preferences are
preserved and the attract-demo idle timer restarts on return.

## Cartridge evidence

The final-stage controller increments CA10 to 9 at bank01:$6318 and chooses
CA00=4 via $6496. The ending branch $6440 saves the player state and calls
$647C, whose $6018 trampoline maps bank03:$A62A to initialize the ending's
bitmap interpreter. $6484 services it until completion; $644E then restores
player state and restarts stage 1 in the original cartridge.

We capture the original ending starting at its first service call ($6484),
after the initialization transfers, and stop exactly at $644E. The resulting
14,811 frames at 60 Hz last 246.85 seconds and contain the planetary departure,
full staff credits, miniature ship/enemy/boss showcase, and final fade. This
native frontend returns to its main menu instead of starting the ROM's second
campaign loop. The capture is the same for Original and Enhanced graphics.

`tools/export_ending_animation.py` runs the real cartridge in bundled openMSX.
The existing boss probe supplies stage selection, invincibility and logged
pending damage to reach the final boss. **All assistance stops at $6440**, since
ending bitmap code reuses gameplay RAM. No ROM patches or gameplay RAM writes
occur during the ending. The decoder verifies SCREEN5 and hardware-sprite
suppression on every frame; the ending uses bitmap commands for its actors.

`assets/ending/ending.anim` is an 18.5 MB SMTA v2 RLE pack. Version 2 adds a
zero-run frame that repeats the preceding image; the loader resolves these to
the original image offset, including backwards seeks. The existing version 1
title animation stays compatible. 4,355 distinct successive images occur.
ROM/asset hashes, event times and six RGB frame hashes are recorded in
`ending_capture_2026-10-09.json`; the visual contact sheet is
`previews/ending-overview.png`.

Music events observed at the original bank1C:$693F request entry, relative to
capture start, are $53 at 1.058921 s, $49 at 2.658154 s and $84 at 235.758294 s.
`assets/ending/music.tsv` aligns them to the next 60-Hz frame. Ending tune $49
plays live through libkss. Its $84 fade is sent to the untouched sound driver
through a mailbox checked in the vblank wrapper, preserving the running tune
and its original fade curve. $53 is the original fade-disable control.

## Verification

- All 33 CTest tests pass, including title v1 compatibility and final boss's
  destruction/completion latch.
- Ending test decodes every frame, checks all six source RGB hashes, backwards
  repeat access, timing/music/fade cues, completion and reset.
- Audio test verifies the ending produces music, consumes the fade mailbox,
  continues the same tune position, and completes the ROM fade.
- `space-manbow-game space_manbow.rom --capture-ending 4800 frame.ppm` matches
  the independently decoded cartridge capture byte for byte. Other representative
  frames were visually inspected in the contact sheet.
- Interactive input/automatic menu return was reviewed in the app event loop;
  no interactive full four-minute SDL run is claimed.

Re-export with the bundled workspace Python (includes numpy):

```sh
/Users/niek/.cache/codex-runtimes/codex-primary-runtime/dependencies/python/bin/python3 tools/export_ending_animation.py
```
