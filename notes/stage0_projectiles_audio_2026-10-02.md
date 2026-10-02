# Stage 0 projectile and firing parity — 2026-10-02

## Early flyer attacks

The original pre-vehicle route was traced against the ROM projectile pool at
`$D460` (18 records, stride `$20`). Native flight movement existed, but two
attack paths were absent.

- Type `$15`, bank05 `$804E -> $9BFA/$9C07`, fires when its state-2 pause
  timer reaches 3. It allocates two type-`$61` rounds at the flyer's coarse
  X/Y cell. Their initial Y velocities are `-$0060` and `+$0060`, X velocity
  is zero, flags are `$31`, and timer `+$17` starts at 6. When that timer
  expires both rounds stop moving vertically and turn left at `-$0080`.
- Type `$18`, fixed `$5525-$5548`, reloads `+$17` to `$17` and calls the
  standard aimed-shot path `$7143`. At the stage-0 difficulty value the
  `$750F` selector gate accepts it. Native now creates the corresponding
  type-`$60` projectile and requests the enemy-shot effect.

This restores the enemy fire seen between the blue section and the vehicle.

## Standard projectile visual state

Original runtime tracing shows type `$60` starts in state 0 with sprite flags
`$21` and timer 4. After four logic ticks it enters state 1 and changes flags
to `$31` while retaining its aimed velocity. Native previously left `$60` in
one static state; the state/flag transition is now reproduced. Type `$61`
uses the distinct ROM sprite definition described above rather than being
substituted with a generic bullet.

## Player shot visuals and sound

The W initializer comparison was extended to include sprite flags (`+$15`).
All 8 direct original-ROM fixtures still match native exactly, including
weapon frame, position, velocity, hitbox and flags. M initialization already
matches the direct `$8E50` fixture (`type 7`, weapon 4, flags `$05`).

The ROM uses different sound requests for the visible weapon variants:

- ordinary shot: `$02`
- W shot: `$03` (`$8C35`)
- maximum-power normal shot: `$04` (`$8CC0` path)
- blue two-part missile: `$0C`

Native previously mapped the first three cases to the same `$02` clip. New
`wave_shot.wav` and `power_shot.wav` assets were exported directly from the
original bank1C audio driver and are selected by the matching weapon path.
Enemy flyer fire uses the existing original `$15` enemy-shot clip.

## Verification

- combat regression covers type `$15` paired `$61` creation and turn phase,
  type `$18` aimed `$60`, and the `$60` `$21 -> $31` visual-state change;
- SDL audio smoke test covers all 10 effect variants;
- W original-ROM initializer validation: 8/8 exact including sprite flags;
- runtime, player/session and full play-feature regressions remain green.
