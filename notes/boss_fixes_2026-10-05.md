# Boss follow-up — 2026-10-05

- Stage 2 `$3C` side structures ignore player damage, including blue-item
  damage. Bank06 `$A2C3` never calls normal player damage; their 1-HP metadata
  serves only scripted destruction after the core raises CE52. This corrects
  the previous assumption that the player could destroy these structures.
  Core death still destroys the sides without treating each effect as another
  stage completion.
- Stage 3 attack scheduling now follows `$A6FD–A74A`: only attack case 2
  writes the rotated cursor. Cases 3 and 4 select from it without modifying
  it. The former mutation selected an already-active eye twice, skipped
  another and left the live-command counter stuck forever. The native test
  runs 3,600 video frames and checks repeated weak-point exposure for all
  three eyes and completed command cycles.
- Stage 3 shell and all eye/body pieces now render once in the quarter-pixel
  presentation pass. Their original 15-Hz positions are interpolated over
  four 60-Hz display frames; ROM animation and combat timing are unchanged.
  Idle `$3F` records use state 0, which is a visible pose, so they also receive
  movement interpolation. A cyan-geometry test checks four distinct display
  poses per original logic interval.
- Stage 4 damage uses bank07 `$86D2` stage index 3 (`$8794`) for persistent
  red, and the eight normal table (`$8714`) indices for `$666` hit flashes.
  The original 240-HP boss turns red at 60 HP. The palette applies globally
  to every rendering pass. The test checks normal at 61 HP and red at 60
  after the flash expires.
- Stage 5 `$B3B7` calls fixed-bank `$6929`, adding descriptor offsets to the
  immediate parent's position; `$B3D0` copies its fractional X. Fixed fight
  coordinates had wrongly been used during entrance, making the legs lag
  behind the core. Root pieces and grandchildren now use parent-relative
  coordinates and scroll together. Tests compare the eventual fight positions
  with an independent original OpenMSX RAM capture. No special correction of
  the core X is needed: its route scrolling already reaches `$1000`.
- Stage 5 armour retains ROM flags `$56` (controllers `$46`). Setting bit 0
  artificially displayed unrelated SAT sprites—the blue ship shapes in the
  screenshot. Tile composition already owns these visible pieces.

Validation: full build; stage 2, stage 3/4, stage 4/5 bosses, boss visual
fixtures, later boss suites, combat, timeline and continuous scrolling.
Native stage 3 and 5 frames were inspected. These fixes do not claim complete
visual/audio parity across all encounters.
