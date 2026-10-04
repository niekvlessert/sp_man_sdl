# Stages 3 and 4 baseline — 2026-10-04

The native SDL runtime can now start ROM stages 3 and 4 directly. Internally these
are stage indices 2 and 3. Cmd-3/Cmd-4 on macOS (Ctrl-3/Ctrl-4 elsewhere) selects
them; the normal 0–9 decile shortcuts then operate inside the selected stage.

## Stage 3

The base cave streamer is active from the ROM checkpoint and reaches its native
FF14 gate at source `$ABA7`, trigger `$2000`, world X=2744, Y=0. Four
independent unmodified-openMSX `E000-E7FF` ring captures through source
`$AA1A` match byte-for-byte. Later ring hashes intentionally diverge because
the stage's dynamic type-`$72` ring modifier is not ported yet.

The ROM spawn catalog contains 72 records:

- `$1C` ×9, `$25` ×9, `$27` ×11, `$28` ×3, `$32` ×20
- `$33` ×1, `$3E` ×1, `$51` ×16, `$5F` ×1, `$72` ×1

Only previously implemented/shared families currently have behavior. The new
stage-3-specific families/controllers are preserved in the decoded spawn stream
for the next restoration pass rather than approximated with fake behavior.

## Stage 4

Stage 4's horizontal-to-vertical-to-horizontal scenery route is now implemented.
The missing ROM mode-6 writer at bank09 `$7ECE->$7EFC` writes eight metatiles
into the row above the viewport, using definition phases 12,0,4,8 while the
camera travels upward.

Nine independent openMSX ring anchors match byte-for-byte, including three
inside the vertical section and two after the return to horizontal scrolling.
The route reaches FF14 at source `$AE45`, trigger `$5000`, world X=2040,
Y=-960.

The ROM spawn catalog contains 61 records:

- `$14` ×1, `$17` ×7, `$19` ×33, `$2D` ×1
- `$37` ×1, `$38` ×7, `$39` ×10, `$5F` ×1

Shared `$19/$2D` behavior is already available. The stage-4-specific
`$14/$17/$37/$38/$39` handlers are deliberately left for a later
ROM-traced enemy pass.

## Audio

The audio runtime now has explicit stage slots 0–8. Music files beyond stage 2 have
not yet all been exported, so missing later tracks are silent instead of incorrectly
continuing the previous stage's music. Any later `assets/audio/stageN.wav` file is
loaded automatically when present.

## Regression

`space-manbow-stage34-test` locks the stage reset behavior, ROM spawn counts,
stage-3 early cave anchors, the complete sampled stage-4 route including mode 6,
and both stage gate boundaries.
