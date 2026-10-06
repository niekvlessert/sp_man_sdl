# Live ROM music through libkss — 2026-10-05

The native SDL game no longer uses pre-rendered WAV files for stage or boss music.
Sound effects deliberately remain WAV voices; music is synthesized live from the
user-supplied 256 KiB Space Manbow cartridge ROM by vendored libkss.

## Original driver path

The cartridge's original PSG/SCC driver lives in 8 KiB bank `$1C` and exposes:

- `$6000` — initialize audio driver
- `$6003` — request sound/music ID in A
- `$6006` — per-vblank update

The SDL audio layer creates a KSS image in memory. It keeps original ROM bank
`$1C` fixed at `$6000`, keeps bank 0 available at `$4000` for the driver's mapper
helpers, and exposes all 32 original cartridge banks verbatim as libkss 8 KiB
bank data. Thus the untouched driver continues to switch `$8000/$A000` music
data through its normal `$9000/$B000` mapper writes and continues to write the
original PSG and SCC registers/wave RAM.

A 29-byte wrapper at `$0100` performs the same setup used by the independently
validated OpenMSX PCM exporter: preserve the requested ID, call the original
`$4BC8` mapper setup, clear `$C600-$C8FF`, call `$6000`, restore the ID and call
`$6003`. The KSS play callback at `$0119` calls `$6006`.

libkss SCC mode is explicitly set to standard SCC. The ROM image is checked for
its 256 KiB size and signatures at bank `$1C` and fixed `$4BC8` before execution.

## Track mapping

Original stage-start traces give these decimal request IDs for SDL stage indices
0..8:

`59, 60, 61, 62, 63, 64, 65, 67, 58`

The common boss track is request `57`.

The corresponding original retained music banks checked by the audio regression
are:

`23, 30, 30, 30, 24, 24, 24, 30, 23`, with boss request 57 selecting bank 24.

## SDL mixing and timeline

libkss renders 44.1 kHz mono signed-16-bit samples directly in the SDL callback.
The existing WAV effects are then mixed over those samples. Muting does not stop
emulation time; pausing does. Timeline seek resets the selected ROM music request
and advances libkss silently to the requested timestamp. 500% turbo generates
five emulated music samples per output sample, preserving the previous accelerated
playback semantics.

The obsolete `stage0.wav`, `stage1.wav` and `boss.wav` captures were removed from
`assets/audio`; the exporter is SFX-only and will not recreate them.

## Validation

`space-manbow-audio-test` verifies:

- music-disabled output is silent and does not advance libkss;
- WAV effects remain audible without advancing music;
- all nine stage requests produce non-silent live libkss output;
- after the first original `$6006` update, `$C8C8` matches each track's known
  ROM music-bank selector;
- boss request 57 selects bank 24 and produces output;
- seek and 1x/5x sample advancement are correct.

Run:

```sh
SDL_AUDIODRIVER=dummy ./build/space-manbow-audio-test assets/audio space_manbow.rom
```

The full build, Stage-2 gameplay/presentation regressions and continuous-scroll
regression also pass after the integration.
