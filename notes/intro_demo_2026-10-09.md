# Intro / attract presentation — 2026-10-09

The boot sequence shows Konami, then the Space Manbow logo animation, then the
original PUSH SPACE KEY prompt. Space during Konami seeks to the beginning of
Space Manbow (frame 255), preserving its animation. Once the prompt appears
(frame 560), Space opens the native graphics/options menu. The menu never opens
on a timer. Early presses during the Space Manbow animation are consumed.

After 15 seconds of inactivity at the title prompt or main menu, the full
original story with pictures plays before an original gameplay demonstration.
The cartridge cycles selectors 1, 2, 0 (stages 1, 2, 4). The story lasts 8,089
nominal 60-Hz frames; gameplay clips contain 4,717 / 3,730 / 4,630 frames for
selectors 1 / 2 / 0. Natural completion replays the Space Manbow logo and waits
at its prompt. A fresh Space/Enter during attract opens the menu, consuming
that event; another fresh key/click returns to the title animation. Options and
the music player never enter attract. Focus loss pauses playback. The selected
normal-game graphics, autofire, mute and turbo preferences are retained.

## Original-ROM capture

Visible attract playback now uses recordings from the unmodified cartridge,
not the native PlaySession autopilot. No input, stage selection, invulnerability,
damage injection or ROM patch was used. Native fixed-rate helper playback had
timing drift: the original CPU/VDP work delays gameplay updates, so matching the
recorded direction bytes alone did not reproduce its path through scenery.
The recordings preserve the original ship, scrolling, enemies and collisions;
they do not depend on the native game's debug invulnerability. This change does
not alter interactive gameplay's collision implementation.

`tools/export_attract_presentation.py` captures original VRAM, palettes, VDP
registers, raster register writes and all sound-driver requests in openMSX.
The decoder handles SCREEN4/SCREEN5 transitions within frames, register scroll
and adjustment, and mode-2 sprites. Register writes apply at the following
scanline; palettes are sampled once per frame. This is a practical reproduction,
not a claim of complete pixel-exact VDP raster emulation.

Four compressed SMTZ animation assets occupy about 14 MB. Each wraps an SMTA
v2 animation with zlib; existing uncompressed title and ending assets still
work. Music and effects run through the original live libkss sound driver,
using captured request timings, including story track $4A and engine sounds.
Capture hashes, frame counts and sound events are recorded in
`notes/attract_capture_2026-10-09.json`.

`AttractDemo` and its native checkpoint backend remain as ROM-reference tests.
They are no longer used to display the intro gameplay. Its 3,750 helper-result
fixtures still validate the original input format and selector cycle.

## Validation

All 34 tests pass, including title gating, Konami skip, story/game transitions,
all three demonstration selectors, compressed assets, corrected-ROM-frame RGB
hashes, intermediate story frames and original-driver audio queue tests. Audio tests use the dummy SDL
backend. CLI captures of story frame 1800 and demo-1 frame 600 match exporter
outputs byte for byte; representative story and all three gameplay images were
visually inspected. `git diff --check` passes. An interactive keyboard/window
run was not available in the headless execution environment.

```sh
build/space-manbow-game space_manbow.rom --capture-story 1800 /tmp/story.ppm
build/space-manbow-game space_manbow.rom --capture-demo 1 600 /tmp/demo.ppm
```

The demo selector is 0..2. Capture times are nominal 60-Hz frame offsets.

## Scrolling and story motion correction

The exporter now honors V9958 registers 25, 26 and 27, including their raster
changes. Previously R27 fine scrolling was ignored: the background stayed put
until the tile map advanced, producing large horizontal jumps. Fine scrolling
shifts only the background; sprite positions and the score plane retain their
own raster context. The left eight-pixel border mask is also reproduced.
Independent synthetic VDP tests cover fine/coarse scrolling, border masking
and the stationary sprite plane (`tools/test_attract_export.py`).

Story motion is intentionally smoother than the cartridge: ffmpeg performs
motion-compensated interpolation using 15-Hz anchors at 60-Hz output, with cut
detection and the original palette. The movie duration, sound-request timing
and scene order stay the same. The planet/ship window at frames 1200–1319
now contains 68 changing frames instead of 27; the cockpit-door window at
6300–6419 contains 33 instead of 14. Stationary text is retained. Interpolated
frames are presentation enhancements, not additional original ROM frames.
The gameplay clips use corrected VDP rendering without motion interpolation.

Regeneration requires the bundled Python (numpy/Pillow) and ffmpeg. The retained
raw capture can be reused with `SM_ATTRACT_ENCODE_ONLY=1`.
