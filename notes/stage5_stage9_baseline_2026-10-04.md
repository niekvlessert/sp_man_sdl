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

These records are decoded exactly. Stage-specific handlers not already shared
with earlier stages are deliberately not approximated yet.

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
stage-end `$7C` scene controllers remain a later environment/controller port;
they are not children of `$7B`.

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
ROM-derived `$AC96/$ACC8` palette cycle.

The next work for these stages is the remaining regular object/enemy/controller
restoration and the stage-9 boss, not basic stage loading, scenery decoding or
the stage-5/6/7/8 bosses.
