# Stage 2 fidelity report — 2026-10-04

“Stage 2” here means the game's second level, ROM stage index 1. This report
reviews the current native SDL code against the original-ROM/OpenMSX audit and
its stored captures. It records known gaps; it does not claim a fresh full
frame-by-frame playthrough comparison.

Reference ROM SHA-256:
`bca5696ebbf4a3493bb226baa03ba8f8c5cc4876a4ad0eaa9722f583a42192b0`.

## Findings

| Priority | Area | Difference from original | Scope and evidence |
| --- | --- | --- | --- |
| High | Player damage and respawn | Player hit, death, and checkpoint respawn are not implemented completely. Stage 2 therefore cannot yet reproduce the original survival loop. | Port-wide gap, recorded in the current README. |
| Medium | Type `$2F` pursuers | The ROM's `$8708` obstacle-avoidance candidate search is not reproduced. Native pursuers select a direct eight-way pursuit heading; they can take a different path or press into scenery where the original steers around it. | Applies to the 17 Stage-2 `$2F` records. Code: [`stage0_enemies.cpp`](../src/stage0_enemies.cpp), lines 1000–1020. The existing test checks basic pursuit timing/directions, not obstacle-avoidance parity. |
| Medium | Type `$31` vertical obstacles | The bounce points use the live terrain probe, but the original also mutates the background cell at the terrain contact. That terrain change is absent, so scenery can remain intact where the original visibly changes it. | Applies at terrain bounces for the 10 `$31` records. Code: [`stage0_enemies.cpp`](../src/stage0_enemies.cpp), lines 1022–1036. |
| Medium | End-sector palette transition | The final black and green palette targets are correct, but the intermediate fade interpolation is not fully reproduced. The SDL renderer switches between precomputed palette sets; the original gradually updates colors during the transition. | Visual mismatch at the final-sector/boss transition, not a wrong final boss palette. The stage test checks target colors and palette-set changes, not every intermediate RGB step. See [`stage2_test.cpp`](../src/stage2_test.cpp), lines 27–42, and [`stage0_background.cpp`](../src/stage0_background.cpp), lines 470–479. |
| Low / conditional | Boss `$7A` alternate attack branch | The common normal-route attack script is restored and matches five traced boss checkpoints. The less-common `CA04` attack branch remains incomplete/unverified, so alternate controller state can produce different attacks. | Does not appear on the audited normal route, where `CA04=0`. Code: [`stage0_enemies.cpp`](../src/stage0_enemies.cpp), lines 705–720. |
| Needs recheck | Streamed scenery during row upload | The expanded historical ring comparison matched 163 of 164 snapshots at matching source/coordinates. One snapshot differed in 24 ring cells during a row upload. The current automated test locks nine complete ring states, but there is no evidence in the current test that this one transient discrepancy was rechecked after later controller work. | Treat as a localized, possibly transient mismatch, not evidence that the whole route is wrong. Current anchors are in [`stage2_test.cpp`](../src/stage2_test.cpp), lines 13–25. |
| Low / system-wide | Sound mixing | Stage music and effects use ROM-recorded PCM, but original PSG/SCC channel priority and live chip mixing are not reproduced exactly. | Heard throughout the game, including Stage 2. README lists chip-channel priority as incomplete. |

## What currently matches well

- The stage's major horizontal, diagonal, vertical, and resumed-horizontal
  scenery sections have nine exact full-ring hash fixtures. An earlier
  176-snapshot OpenMSX sweep found exact rings at 163/164 matching coordinates.
- The original Stage-2 start phase, mode-3 writer, and `$A94A` end gate are
  represented. The native route stops at the Stage-2 boundary instead of
  decoding the following stage as scenery.
- Stage-2 terrain collision properties and the opening shot path were corrected
  against original capture data.
- The regular spawn catalog is restored for all 56 records and all Stage-2
  families. Tests cover the `$2D` surface runners' fixed lane and three-shot
  fans, the `$2E/$2C` laser modules, and the `$7A` boss's normal attack path.
- The final green boss palette, normal-route boss vulnerability animation, and
  boss destruction/stage transition have targeted ROM-derived checks.

## Coverage limits

The 176 reference snapshots audited scenery with no enemies shot. Ring hashes
prove streamed tile state at sampled anchors; they do not prove pixel-perfect
full frames, enemy motion, collision outcomes, or every palette transition.
Current tests provide focused behavior checks rather than full visual parity
for every Stage-2 event. The boss trace coverage is strongest on the normal
route; conditional attack paths remain less certain.

## Suggested order to close the gaps

1. Port and trace `$2F`'s original terrain candidate search.
2. Reproduce `$31`'s background-cell mutation at each vertical terrain bounce.
3. Match the final palette interpolation frame by frame against the stored ROM
   captures.
4. Re-run the full scenery-anchor comparison to determine whether the 24-cell
   row-upload mismatch remains.
5. Trace the `$7A` alternate `CA04` branch and complete player damage/respawn.
