# Enhanced rendering performance

The music player sounds normal, while enhanced gameplay causes audio trouble.
The enhanced renderer repeatedly evaluated material trigonometry and powers
per pixel, and option/weapon effects repeated invariant trigonometry inside
their pixel loops. Normal play also recorded full rewind snapshots.

Changes:
- Precompute material phases per row/column and reuse shading where the exact
  local geometry and palette agree after scrolling.
- Move option, weapon and engine calculations outside their pixel loops.
- Record rewind history only while debug is enabled in the game.
- Yield browser rendering through requestAnimationFrame, capped at 60 Hz.
- Add opt-in `?profile` CPU render timings and a local browser profile script.

Measurements on this development machine:
- Native stage 1 opening, 180 frames: mean enhanced background/render cost
  decreased from 25.84 ms to 5.64 ms.
- Headless Chromium with maximum weapons continuously firing: mean CPU render
  time decreased from 21.72 ms to 14.96 ms; p95 decreased from 27 to 16 ms.
  This browser comparison starts after the background optimization and measures
  the additional option/weapon optimization.
- Browser simulation advanced approximately 480 frames in eight seconds.

Validation: all 41 native tests pass; cached and uncached rendering agree across
36 camera/strength/geometry cases. Six captured stage 1 frames are byte-identical
before and after the background optimization. The final web build passes ROM
validation, gameplay rendering, pause/menu and browser-error smoke checks.

CPU timings exclude GPU upload/presentation. Audio callback gaps are scheduling
observations, not measurements of audible dropouts. Actual audio playback still
needs confirmation in the target browser after deployment.
