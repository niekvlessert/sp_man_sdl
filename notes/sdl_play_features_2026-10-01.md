# Play controls, PCM audio and opening enemy waves

## Ship height

The movement bounds remain the original bank02 $8108/$820D bounds. The
renderer's additional $38 Y bias omitted the VDP's R23 subtraction. The
sprite origin is now $14 initially, $1C late horizontally and $1B in the
diagonal section. This restores access to the upper play area without
altering the movement table. The player reaches raw Y=0 and is visible near
screen Y=20 in the initial section.

## Level jumps

Keys 0–9 select 0–90% in steps of 10%. A no-input simulation first measures
the route to its fight gate: 8592 video frames, 143.2 seconds. The session
resets and replays to floor(total_frames * digit / 10), rebuilding scenery,
wave controllers and the object pool. This includes the vertical route,
which cannot be located with horizontal world X alone. Shots reset, audio
events from replay are discarded and music seeks to the selected time.
The boss fight is excluded because its native handler is unfinished.

## Audio

`tools/export_play_audio.py` / `.tcl` run the existing sibling OpenMSX with
the user-supplied ROM. They isolate its bank1C $6000 initializer, $6003
request dispatcher and $6006 tick at 60 Hz, recording PSG/SCC PCM to WAV.
Music ID $3B is recorded for 180 seconds; effects $02/$10/$16/$15 are
recorded individually. $10 is the death-table sound for the four flyers;
$16 is requested by the normal damage handler $7C44. WAV files and their hashes are in `assets/audio`.

SDL opens a 44100 Hz mono signed-16-bit device and mixes music with up to
16 effect voices, saturating the output. M mutes, P/focus loss pauses,
R restarts and the digit shortcuts seek music. Fire sound is driven by
successful shot creation, rather than a difference in active shot counts.
Hit/explosion events come from collision/damage results. Enemy-shot PCM is
available but is not triggered while native enemy attacks remain pending.

No libvgm dependency is required for this PCM implementation. This does not
implement a native sound sequencer or chip channel priority: an isolated
effect is mixed over recorded music, instead of stealing the original chip
channels. Dynamic music requests, boss music and an exact looping boundary
remain work. The capture covers the entire currently playable route.

## Enemy scope

PlaySession now consumes the pre-$107E records previously filtered out by
the diagnostic stream. The default diagnostic stream remains unchanged.
The ROM's $51 controllers spawn types $10/$12/$15/$18. Initial positions,
formation offsets, parameter tables, velocities and acceleration come from
the original handlers/tables. Type $10 aiming uses the original quantized
angle and sine tables, rather than floating-point normalization.
Movement is presented at 60 Hz with controller logic at 15 Hz.

Basic shots collide with their original six-byte sprite components and
bank07 $8219 shape table, then use `apply_stage0_damage` and its ROM death
table. Destroyed flyers release their slot; the death animation handler
is not implemented. The sprite frame count masks its high control bit.

This is an opening-wave port, not full enemy behavior parity. Controllers
use a separate native pool rather than occupying original entity slots;
parent links, full natural attack timing, all later types, terrain combat,
player damage/death and the boss remain unfinished. Natural play needs
comparison against a synchronized original-game capture before claiming
frame-exact behavior. In particular, type $18's attack/edge-aim branch and
type $15's projectile routines are not yet executed.

## Verification

- Existing player/session and runtime regressions pass.
- The feature test measures the route, checks every digit against a fresh
  replay (enemy records and rendered image), checks upper-screen access and
  audio event clearing, observes all four flight types and exercises 21
  kills with swept player movement and repeated presses.
- `run_flyers_native_validation.py`: 10/10 original Z80 initializer fixtures
  match native fields (type, state, sprite frame, position, velocity,
  acceleration and handler parameter/timer bytes). This is initializer
  proof, not a complete flight/attack trace comparison.
- The SDL audio smoke test loads all five assets, runs the dummy-device
  callback with simultaneous effects and exercises pause/seek/mute/destruction.
- A frame-700 capture was inspected to confirm opening flyer sprites appear.
