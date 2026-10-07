# Stages 5–9 baseline — 2026-10-04

The native SDL runtime now exposes all nine ROM stages. Cmd-1..9 on macOS
(Ctrl-1..9 elsewhere) selects stage indices 0..8 directly; normal 0–9 decile
jumps then operate inside the selected stage.

## Spawn-table bank boundary

The original spawn-script address space is one contiguous CPU window:

- bank 02: `$8000-$9FFF`
- bank 03: `$A000-$BFFF`

Stage 6 begins at `$9F9A` and crosses `$9FFF->$A000`; stages 7–9 start in
bank 03. The old decoder treated every stage pointer as a bank-02 offset, which
made stage 6 fail on a bogus record length and rejected stages 7–9 completely.
The decoder now reads the complete bank02+bank03 CPU window.

ROM spawn catalog totals:

- Stage 5: 80 records — `$21×27 $27×9 $41×11 $49×23 $51×8 $5F×1 $77×1`
- Stage 6: 110 records — `$0E×8 $17×3 $2A×1 $2F×6 $48×4 $4A×38 $4D×16 $51×14 $5F×4 $73×13 $7B×1 $7C×2`
- Stage 7: 28 records — `$43×1 $4D×1 $4F×2 $54×23 $5F×1`
- Stage 8: 40 records — `$1B×1 $42×4 $46×16 $50×15 $5F×3 $78×1`
- Stage 9: 11 records — `$4E×7 $51×1 $5A×2 $79×1`

These records are decoded exactly. The late regular spawn families are now
connected to native handlers rather than being silently dropped. In particular,
Stage 6's fixed-bank type `$0E` barrier and high-difficulty direct `$2A`
record, and Stage 9's paired type-`$5A` growth walls, are restored from their
ROM handlers and guarded by late-level regression tests.

## Stage 5

The long horizontal scenery route is active and reaches source `$B31E`,
trigger `$131F`. Eight independent unmodified-OpenMSX ring captures from
`$AEF1` through `$B2C2` match byte-for-byte; the final gate ring hash also
matches.

The stage-5 `$77` boss is now restored from bank06 `$B0CC-$B4A2`. The `$99`-HP
parent constructs the original twelve-object type-`$76` armour tree: eight root
records from `$B3DB` plus the four linked descriptor children, with their live
OpenMSX positions/frame/link bytes reproduced exactly. The core remains closed
until its eight root links are gone, then arms, becomes vulnerable and enters the
ROM waypoint/type-`$5C` attack cycle. Fatal core damage clears the linked pool,
runs the shared `$6A` destruction countdown and advances to stage 6.

## Stage 6

Stage 6 required the missing ROM mode-5 streamer. Bank09 `$7E3F` is the
down-left diagonal counterpart of mode 1. It writes the entering bottom row with
column offset `yphase-$1C`, definition phase `yphase*4`, and advances fifteen
metatile bytes after the four C0DA phases.

The complete sampled route now matches the original: first mode 5, horizontal
mode 0, a second mode-5 segment, and the later mode-3 vertical section. Sixteen
independent ring anchors from `$B39A` through `$B765` match byte-for-byte.
The base route ends at `$B769`, trigger `$5034`, world X=`$0938`,
Y=`$0468`.

The stage-6 boss is now restored from bank06 `$B513-$B66F`. Type `$7B` carries
`$A0` HP and enters at `$0700/$1400`; its seven-state 15-Hz controller opens in
two five-tick steps, launches the original type-`$0D` beam sequence, closes and
returns to the 30-tick wait. `$0D` uses the traced `$FF80` vertical vector and
is limited to one live beam exactly as `$B638` does. ROM SFX `$2E/$2F` for the
open/close phases are exported as `stage6_open.wav`/`stage6_close.wav`; launch
uses the existing ROM `$17` clip. Fatal damage clears the live beam, runs the
shared `$6A` destruction countdown and advances to stage 7. The two separate
stage-end `$7C` escort controllers are also restored independently of `$7B`,
including both linked eight-record chains and their staggered death cascade.

## Stages 7–9

Their base scenery streams are enabled and independently checked against the
original ROM:

- Stage 7 ends at `$B909 / $10FF`; sampled route and final ring match.
- Stage 8 reaches `$BA6C / $2000`; early/mid base rings and final ring match.
  The original later section also has a stage-specific camera/controller handoff,
  so its exact final camera X is not claimed by the base streamer yet.
- Stage 9 ends at `$BAEA / $103F`; sampled and final rings match.

## Audio and rendering

The audio layer has explicit slots for all nine stages. Missing
`assets/audio/stageN.wav` exports remain silent rather than reusing the
previous stage track; future files are loaded automatically. All five new stage
indices can construct a `PlaySession`, step at 60 Hz and render a frame.

## Regression

`space-manbow-stage59-test` locks:

- the OpenMSX scenery hashes for stages 5–9,
- stage 6's mode-5 and mode-3 paths,
- all five gate/source boundaries,
- the bank02/bank03 spawn catalogs,
- and public direct reset/render for stage indices 4..8.

`space-manbow-stage45-boss-test` also locks the stage-5 `$77` metadata and
extended descriptor, all twelve original `$76` pool records (positions, frames
and parent links), armour-to-core vulnerability handoff, linked cleanup and the
stage-5 to stage-6 transition. `space-manbow-stage6-boss-test` locks the `$7B`
metadata/entrance, 30/5/20-tick state cadence, type-`$0D` relative launch and
`$FF80` motion vector, boss SFX, fatal cleanup and the stage-6 to stage-7 handoff.
`space-manbow-stage7-boss-test` locks the Warp Machine `$43` entrance at
`$2000/$0A00`, the `$1900` fight anchor, 20-Hz attack cadence, bouncing type-`$23`
bubbles, the custom +02 `$FF` HP/borrow rule, weak-point palette pulse, destruction
SFX/cleanup and the stage-7 to stage-8 handoff. `space-manbow-stage8-boss-test`
locks type `$78`'s nine-state controller, HP `$40` and `+29/+2B` vulnerability
gating, type-`$74` projectile vectors, the eight-row type-`$46` energy wall,
custom states 6–8 destruction and Stage-9 handoff. It also checks the persistent
16-KiB Stage-8 SCREEN-4 pattern/color image produced by the original startup
SCREEN-5 conversion (FNV-1a `217ED24F`). The live session now applies the
boss's `$F8/$6C75` raster anchor, the C0EB=`$04` R18 behavior and the
ROM-derived `$AC96/$ACC8` palette cycle. `space-manbow-stage9-boss-test`
locks the final type-`$79` spawn/metadata, the `$979B/$97B0` body-animation
scripts, the five-record `$9755` attack loop, type-`$5E` spread shots and
type-`$66` accelerating obstacle, selector-1-only damage window, HP `$30`,
the 3→4→5→6→7 destruction sequence and the 32-tick final ending latch.
OpenMSX A/B also confirms the `$1700/$0800` fight anchor, the exact selector-2
4x7 name-table stamp, the Stage-9 palette and C0EB=`$04`/R18=`$70` raster
presentation. The native port stops at the verified final-boss ending latch;
full credits/ending-sequence reproduction remains separate work.

Stage 5's regular spawn families are now all accounted for and covered by
`space-manbow-late-level-enemies-test` plus the shared earlier-stage tests:

- Stage 5 type `$21`: fixed-bank `$4FF1` three-flyer formation controller,
  including selectors `0/1/2 -> Y $04/$0B/$11`, `$0A/$0E` spawn cadence,
  `-$E0` entry, `+$60` turn-back and the original player-vector attack.
- Stage 5 type `$27`: shared bank05 `$8170` aimed-mover family.
- Stage 5 type `$41`: the `$8D2C` timed tile-hazard controller plus its
  explicit `$8DBC` multi-matrix compositor.
- Stage 5 type `$49`: the `$92E4` vertical patrol with terrain-triggered
  pause, saved velocity and exact direction reversal.
- Stage 5 type `$51`: the shared wave controller, verified here with the
  Stage-5 type-`$18` child record and original linked-controller slot.
- Stage 5 type `$5F`: parser command selector 3 (clear objects), not a live enemy.
- Stage 5 type `$77`: the already-restored boss/armour tree described above.
- Stage 6 type `$0E`: fixed-bank `$4F1C/$4F33` expanding barrier, including
  the `$32` closed hold, six-tick growth phases and its custom fatal states 4–6.
- Stage 6 type `$2A`: the high-difficulty direct stream instance of the
  `$8338` downward mover (in addition to `$53`-generated children).
- Stage 6 type `$73`: the ROM's direct `JP $82CA` reuse of the aimed turret
  family, including tile rendering, staggered aim, firing and fourth-turret
  pickup accounting.
- Stage 6 type `$2F`: the full `$86D0->$8708` terrain-avoidance search is
  restored. A guarded Stage-6 trace confirms direct heading, heading+2 and the
  unconditional heading+6 fallback, using the ROM's asymmetric `$873F`
  footprint and exact `$874F` movement table.
- Stage 7 type `$16` (emitted by `$4F`): fixed `$5479` now honours the
  normal-route CA04=0 early return. Guarded Stage-7 traces show state 3 holding
  +17=`$C0`, +18=`$18`, the aimed vector and camera bit; the former native
  synthetic state-4 steering has been removed.
- Stage 6 `$4A/$4D/$48` and Stage 7 `$4F/$54->$1A` have dedicated native
  handlers and regression coverage in `space-manbow-stage67-enemies-test`.
- Stage 8 type `$50`: the fixed `$5AA2` signed vertical accumulator and
  four-entry speed table; the `$46` scripted wall family is also covered.
- Stage 9 type `$4E`: the `$9655 -> $9477` PRNG start table, timed animation,
  vulnerability handoff and accelerating fall.
- Stage 9 type `$5A`: the paired `$9805` growth walls, with the traced
  frame-10→17 upper and frame-0→9 lower growth sequences.

At this point every ordinary Stage-5–9 spawn-table family is either a native
actor/controller, the shared `$51` wave controller, or a decoded scene command.
Further late-level work is therefore fidelity work (collision, timing,
presentation and stage-specific transitions), plus the post-boss
ending/credits sequence, rather than a missing regular spawn family.
