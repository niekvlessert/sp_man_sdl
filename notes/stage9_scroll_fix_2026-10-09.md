# Final boss entrance: eye/body alignment

The Stage-9 eye already followed the continuous camera. Its scenery shell did
not: once type $79 appeared, render() forced the native fine-placement R18 to
zero. D988 still advanced its source by whole eight-pixel ring columns. The
body therefore stayed put between columns and jumped at each carry, while the
eye advanced normally. The existing state-only camera-anchor assertion could
not detect that rendered mismatch.

Removed the Stage-9 override; the native compositor retains its fine camera
placement through approach and fight. Stage 8's separate raster override is
unchanged. The native R18 field represents fine placement, rather than copying
physical cartridge R18 literally: a fresh original-ROM probe observed physical
R18=$70, raster mode C0EB=$04 and all eight R27 values during Stage 9.
997 R27 writes were sampled between emulated times 15.00127 and 23.31197s.
The reference used the original cartridge, a pre-game stage selector, Space to
start and player invulnerability; no firing, enemy damage or ROM code patches.

The regression now compares actual upper-shell pixels on at least 50 adjacent
approach frames. Each must equal the preceding frame shifted left by one
quarter-pixel, including ring-column carries. Eye/camera state attachment and
the held-pose fight's stable images remain checked separately. This verifies
rendered motion instead of merely verifying controller coordinates.

ROM SHA256: bca5696ebbf4a3493bb226baa03ba8f8c5cc4876a4ad0eaa9722f583a42192b0.

## Eye seam alignment

After restoring fine scrolling, the generic actor origin left the eye one
native pixel left and one pixel down relative to its scenery shell. Stage 9
now draws that matrix with the sector's tile origin: Y bias 28 and X shift +1,
in both the low-resolution and continuous presentation paths.

The image regression compares all eight ROM matrix selectors (fight and
destruction) with the independent name-table stamping/presenter path, including
the surrounding shell. Every fourfold-scaled output pixel in the tested
region must match. This test failed before the origin correction and passes
afterward; the continuous entrance test still passes. A close-up capture was
visually inspected for the formerly exposed vertical/horizontal seams.
All 34 tests pass; git diff --check passes.
