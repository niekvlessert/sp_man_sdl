# Native interactive ship / basic weapon milestone

`space-manbow-game` uses a separate `PlaySession` in smcore. SDL samples input,
accumulates elapsed time and advances fixed 1/60-second simulation ticks.
Camera, object logic and weapon state are owned by the session; rendering has
no SDL dependency. The diagnostic preview remains available.

## ROM behavior used

- Bank02 `$8254`: type1, initial X=$0500/Y=$0800, flags39, dimensions03/83.
- `$820D`: frame0 stationary, frame1 up, frame2 down; up wins simultaneous up/down.
- `$8108..$817C`, table `$817D`: sixteen nine-byte input rows, base velocity plus
  CB01 speed multiplier. Velocities and positions wrap as unsigned 16-bit words.
  Y candidates with high byte >=14 and X-0080 candidates with high byte >=1D
  are rejected, rather than clamped.
- `$4A63`: input C907 contains rising edges. The initial weapon gets three
  32-byte slots at CC40/CC60/CC80; holding fire does not create new shots.
- `$8CCD/$8DDC`: basic type4 shot, selector12, Y offset7 pixels/X offset6,
  Y velocity0 and X velocity0200 in 8.8 tile units. The surrounding `$8CA9`
  sets weapon damage/level byte06 to1.
- `$6A7F`: add Y/X velocities; `$86EC`: clear shots outside Y<18/X<20 or
  with pending damage. Background collision and rebound are still separate.
- Bank07 `$8496`, bank08 frame definitions and bank09 row colors render the
  ship and bullets from resident stage graphics. The sixth component byte
  is a **collision selector**, not a layer visibility mask. Components with
  selector0 remain visible. Both color layers are drawn with CC and EC flags.

`tools/run_player_native_validation.py` executes original `$820D` then `$8108`
for 16 direction masks x 5 speed levels x 5 boundary positions =400 cases.
Five `$8CCD` fixtures compare basic shot type, frame, positions, velocities
and dimensions. It compares original emulator output directly with the C++
functions, without patching ROM bytes. Evidence: `player_native_validation.json`.

The session regression covers movement, held/repeated fire, screen boundaries,
shot cleanup, deterministic reset, and a 7000-frame background/scenery run.
The original runtime regression remains required. A headless capture exercises
the same renderer used by SDL.

## Explicit limits and next step

These helper comparisons do not prove natural input cadence, complete sprite
priority/overflow behavior, or the complete gameplay loop. Later-stage
presentation retains the known coarse-scroll limitation. The game session
does not seed the diagnostic fight-gate fixture. No artificial enemy AI or
replacement targets were added.

Next: connect the validated sprite-component collision scan and pending-damage
path to the native projectile pool, then port the actual first-stage enemy
handlers. Include projectile/background collision before declaring combat
complete. Player death/respawn and boss progression follow that integration;
the first interactive milestone alone is not a completed stage.
