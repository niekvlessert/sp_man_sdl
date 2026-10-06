# Boss damage palettes and Stage-4 lasers

Verified against the supplied Space Manbow ROM with OpenMSX executing unchanged
Z80 code; only RAM, registers and mapper selection are controlled by probes.

- Bank04 $69D7 sets CE4A to starting HP / 4. Stage 2 calls it after assigning
  its normal $20 HP at bank06 $A02D, so its red threshold is 8 HP (not metadata
  HP, which is zero). Stage 3: 30; stage 4: 60; stage 5: 38; stage 6: 40.
- Bank04 $7C63/$7C6B clears CE48 bit 1 each damage-service pass; a hit with
  idle CE47 sets CE47=4 and the white flag. This is one object-tick flash with
  four-tick rearm, rather than a four-tick white hold. $6A22 selects the palette.
- Normal and alternate eight-entry tables reside at bank07 $86C0/$86D2.
  White uses GRB $666 on those eight indices, affecting the entire boss
  assembly, not only the weak point. Restore Stage-2/3/5 handling and use the
  appropriate 15/20-Hz boss clock while rendering at 60 Hz.
- Stage 8 explicitly calls $7C6B through $AC2C, so restore its flash too.
  $8744/$87C4 are identical: it must not acquire an invented red phase.
  Preserve independent $AC96 palette pulses at indices 5/9.
- Stage 7 owns its $8F5F index-$0B pulse; Stage 9 keeps +3F=0 and does not
  activate this common palette service. Existing behavior retained.

Stage-4 attacks had two separate omissions/errors:

1. $AEAB calls bank05 $9157 twice, at relative Y offsets 0 and 7. These are
   type $46, +03=1 laser rows, previously entirely absent. Restore the $14-tick
   warning, four-tick start, +4-cell growth with limit 8, then leftward travel.
   $913A alternates CC/CD cells; sound request $2C begins growth.
2. $B04E spawns type $58 at parent high X-5, Y-3 (odd CA02) or Y+9 (even),
   rather than fixed screen coordinates. $B066 chooses outward random angles
   $80..$BF / $40..$7F, acceleration is arithmetic signed velocity / 8 at
   speed $0A, starting from rest. $B0B6 accelerates nine 20-Hz calls then
   coasts. Restore this and distribute motion over three 60-Hz frames.

`tools/capture_stage4_projectile_vectors.tcl` records all 128 original launch
vectors. Their FNV-1a hash is `3e6ee3ef`, checked by the native Stage-4/5 test.
The same bank05 laser handler emits $31 for Stage-8 wall rows; both $2C and
$31 WAV assets have been exported through the original PSG/SCC driver.

Validation: new boss palette regression follows actual stage routes and checks
white pixels, normal restoration, quarter-HP red persistence for stages 1..6,
and Stage-8 white restoration. Stage-4 tests additionally verify parent-relative
rails, every original launch vector, nine-tick acceleration, 60-Hz displacement,
laser timing, alternating cells and sound requests.

All 17 relevant suites pass (boss palettes, stages 2/3/4/5/6/7/8/9, visual
fixtures, late enemies/combat, continuous scrolling, feedback and audio), and
`git diff --check` passes. An additional legacy `play-features-test` still
fails its Stage-1 coarse-versus-wide endpoint assertion at line 110. Repeating
that check with Stage-1 damage cadence restored to the previous 15-Hz variant
produces the same failure; the dedicated continuous-scroll and feedback
regressions pass. This legacy comparison is not resolved by these boss fixes.
