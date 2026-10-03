# Continuous world scrolling and aircraft compositing — 2026-10-03

This supersedes the native display details in the earlier 512×848 notes.
The user's priority is continuous movement of the background, rock floor and
large vehicle; the limited original tread animation can remain limited.

## Native display

The SDL game now uses `render_continuous()`, a 1024×848 texture representing
quarter-pixel coordinates in X and Y at 60 Hz. A slow 0.25px/frame star movement
therefore advances one sample each video frame, rather than holding every
other frame at the previous half-pixel X resolution. ROM sprite/tile artwork
remains unchanged. The old 256×212, 512×212 and 512×848 capture interfaces are
retained for their existing tools and comparisons.

The opening previously returned a doubled 256×212 image, losing half-pixel
camera displacement and holding the fast-floor phase for four video frames.
It now samples the decoded level directly with fractional camera coordinates,
draws stars independently, and draws actors at matching positions. Its camera
presentation delay matches the vehicle renderer at the A13F handoff.

The 64px ROM rock strip now uses one unwrapped native clock throughout stage0,
with 2px/frame of its own motion plus continuous camera displacement. This
produces 2.5px/frame against the opening's 0.5px/frame scenery, and 2px/frame
at the stationary boss gate. The ROM's CA3A/tile/raster state remains untouched
for the hardware renderer and ROM-helper validation. This native clock replaces
interpolation of wrapped phase bytes, avoiding pauses and phase-boundary jumps.

The vehicle and diagonal/vertical sections use the higher-resolution compositor;
their tile matrices, clips and sprite components follow the same scene position.
Animation selectors and state/attack logic retain their original cadence. No
new sprite drawings are needed to increase positional update smoothness.

## Aircraft black rectangles

Follow-up from the user's next screenshot: transparency alone did not complete
the aircraft. Fixed-bank `$5A19` selects six height-dependent stamp scripts;
script 0 contains only the upper two 5-row matrices, while later scripts add
the lower hull/engines. Native presentation now always uses complete script 5,
including while waiting on the deck and first entering the right screen edge.
Gameplay byte `+06`, sprite flame selection, launch sounds and combat timers
remain unchanged.

The next openMSX reference clarified foreground occlusion: making the full hull
available does not mean drawing its lower engines over the tracked vehicle.
Script 0's five rows start at Y−4 and end at Y+1; the subsequent lower matrices
grow one row per tile of ascent. This keeps the visible hull above the fixed
deck edge `(object +22 + 1) * 8 + screen bias`. Native compositing now clips
the complete tile hull at that edge, revealing it continuously as it rises.
This uses the retained original deck coordinate, not the moving aircraft Y,
and keeps the foreground deck, its dark holes and the tracks intact. Original
sprite jet/flame selectors retain their separate overlay behavior.

The hull's tile patterns/colors are identical in SCREEN4 thirds 1 and 2.
Third 3 contains vehicle/floor patterns, so deriving the lookup from the
aircraft's low screen position produced incorrect lower-hull pixels. Native
hull drawing explicitly uses third 1 instead of the current screen row.

Type `$55`'s tile matrices contain black clearing cells around the aircraft.
Moving these matrices independently made those cells erase the vehicle deck.
Native aircraft tile drawing now uses a separate layer: exterior backdrop is
flood-filled from the boundary and made transparent; enclosed dark details stay
opaque. Sprite components are then drawn at the same interpolated position.
The entire hull is drawn at an unclipped local origin before resolving exterior
transparency, then translated/clipped into the viewport. Flood-filling a hull
already clipped at the right edge incorrectly opened enclosed details to the
exterior, losing visible pixels during entry. The complete local mask fixes
this at both screen edges.
Backdrop indices use a unique temporary marker, so palette flashes cannot
accidentally turn white hull pixels into transparency. Aircraft clearing cells
also no longer suppress stars before the opaque aircraft hull is composed.

This intentionally changes MSX stamp/erase presentation to suit native motion.
It does not modify ROM data or the carrier's combat/state timing.

## Checks

`space-manbow-continuous-scroll-test` compares actual rendered colored pixels,
not just velocity values or empty sky, on consecutive video frames:

- Blue opening, large vehicle body, diagonal motion and later horizontal
  scenery: continuous translation at quarter-pixel resolution.
- Rock strip: every video frame, including coarse ticks, tile carries, the
  opening→vehicle handoff, and the stopped boss gate.
- Slow star: one quarter-pixel X sample on each of 32 video frames.
- Rising aircraft partly over the deck: more than 100 previously black erase
  samples reveal the original deck while the aircraft remains visibly drawn.
- Complete aircraft: compare every colored pixel above the foreground deck of a fully airborne
  ROM pose against translated poses at 9 heights, 3 X positions (including
  left/right clipping), 6 original stamp selectors and 3 launch/hover states.
  More than 1,000 lower-hull samples are included in the reference.
- Foreground occlusion: all pixels below the deck edge remain identical to the
  carrier-free scene in those 486 poses, using the original inactive jet frame.
  Waiting aircraft therefore enter behind the vehicle rather than over its
  deck/tracks, while airborne hull pixels remain complete.
- Repeated rendering preserves object state and pixels.

Result: **128 textured motion frames**, including the visible `$24` tread/chassis
actor's orange armor; **256 floor frames**; **32 slow-star frames**; **230 deck
samples** restored in the overlapping-aircraft fixture. Opening pickup icons
are also checked for visibility. The complete-hull comparison passes all
**486 poses**, including the previously missing pixels at the right edge.

Local simulation plus 1024×848 rendering measured approximately 2ms/frame in
the carrier scene (60 Hz allows 16.67ms). This excludes SDL upload, window
presentation and other system load; it establishes capacity on this machine,
not a universal FPS guarantee. The default 1024×848 window resolves quarter-pixel
motion; smaller windows necessarily have fewer physical pixels for that motion.

Existing player, play-features, timeline, late-combat, feedback and scroll-feedback
regressions remain applicable. ROM logic/cadence is unchanged; native scrolling
is deliberately smoother than the original MSX raster display. Captures for
inspection are under ignored `tools/probe_out/continuous_scroll/`.
