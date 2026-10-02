# Stage 0 vehicle enemy handlers — 2026-10-02

This note records the ROM-backed behavior reconstructed for the large vehicle section.
The reference is `tools/probe_out/destructible/trace.txt` plus fixed/bank05/bank06 disassembly.

## Visible actor families

- `$1F`: large aimed cannon/turret. Bank06 `$BC3A/$BCC0`. `+05` is player-aim sector, not an X-position animation.
- `$20`: small vehicle turret. Bank05 `$82CA`; orientation updates through `$8304` and fires via `$72D4`.
- `$22`: hatch launcher. Bank06 `$BD0F`; opens at gated X thresholds and launches a pair of `$70` actors.
- `$24`: wide vehicle/chassis tile object. Bank06 `$BD9B`; special three-band tile compositor.
- `$26`: launcher. Bank06 `$BE5F`; opens at gated X thresholds and launches three `$11` actors.
- `$55`: large craft that rises from the vehicle. Fixed `$58F0-$5A10`; custom tile compositor at `$5A19`.
- `$68`: `$55` thruster/exhaust child. Fixed `$5112`.
- `$6B`: persistent destroyed vehicle/wreck replacement. Bank05 `$9B38`.
- `$70`: `$22` projectile. Bank05 `$9D60-$9DA0`.
- `$11`: `$26` launched enemy. Fixed `$52F3-$534D`.

## Reference difficulty state

The destructible reference run has `CA19=$05`.
This is observable from independent gates: minimum-5 `$22/$26` events execute, minimum-8 events advance their cursor but do not activate, and the `$1F` path remains below its `CA19>=6` branch.

## `$55` large craft

Direct records use payloads `[16,$1A]`, `[16,$96]`, `[16,$9C]`, `[16,$9D]`.
`+22` retains deck Y; `+20=payload1&$7F`; `+21=bit7`; `+23` is the selected cruise height.
State 1 waits for the X trigger. State 2 rises and emits at most three `$68` thruster actors.
Bit-7 variants enter state 3 at cruise height, move left, then state 4 descends at the left side; state 5 is finished/passive.
`$59AA` derives tile frame `+06` from height above deck and sprite frame `+05` from the same height/phase.
`$59D0` fires a standard aimed `$60` bullet every 16 logic ticks from a direction-dependent muzzle offset.

## `$68` thruster

State 0 sets Y acceleration `+$000E` and timer 4.
State 1 integrates acceleration. State 2 zeros Y velocity and, with `CA19=$05`, selects X velocity `$FEE0`; state 3 drifts away.
This reproduces the natural trace's downward puff followed by the fast leftward exhaust motion.

## `$22/$70`

`$22` threshold/minimum pairs at `$BD6B` are `($1B,3),($18,0),($10,5),($04,8)`.
At `CA19=$05` the first three can activate; the `$04` event is skipped after advancing the cursor.
Each activation opens frame `+06=1` for six ticks, then `$BD47` creates two `$70` children one cell above, separated by three X cells.
`$70` starts with full-circle heading `+0F`, speed `+12`, turn step `+11`; after timer `+17` it enters long homing state and adjusts heading once per four logic ticks.

## `$26/$11`

`$26` threshold/minimum pairs are `($1A,0),($12,5),($06,8)`.
With `CA19=$05`, it launches at `$1A` and `$12`; the `$06` event advances `+26` but does not open.
While open it creates three `$11` children at `(+2,+2)` with four-tick spacing and the distance-indexed delay table `$BF04`.
`$11` cycles six sprite frames. Its first state subtracts three Y cells, sets Y velocity `$FF40`, and temporarily enables camera-relative flag bit 2.
When `+17` expires, `CA19=$05` selects aim speed `$20`; it aims at the player, clears the camera-relative bit and continues in state 2.

## Wreck semantics

`$7CC3` replacement deliberately preserves source fields such as `+3E`; it must not be treated as a generic native lifetime.
`$1F` carries `$09`, `$22` carries `$0B`, and `$26` carries `$0C`; `$6B:$9B38` consumes this value as the persistent wreck tile frame.
The old native `+3E` lifetime fallback and the 60-Hz `$1F` X-threshold frame override were therefore incorrect and were removed.

## Native presentation

Vehicle tile actors `$20/$22/$24/$26/$55` are rendered as complete pixel-positioned overlays and clipped at the viewport.
They are not first stamped into the visible 32-column name table. This removes the 8-pixel right-edge construction artifact while retaining ROM tile matrices.
