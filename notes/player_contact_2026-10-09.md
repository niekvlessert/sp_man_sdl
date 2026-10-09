# Player contact and cannon wrecks

The new general player-damage pass used rendering/weapon overlap for every
active enemy except two hard-coded types. Persistent $6B wrecks were therefore
treated as hostile sprites even though their ROM presentation is a tile matrix.

Original bank07 $8039 excludes type $5F and types outside 1..127, requires
object +15 masked $B0 to equal $B0, then checks coarse byte extents before
calling the component scan at $80E9. $7CC3 starts destroyed actors with flags
$04; $9B38's persistent cannon wreck uses $46. Neither passes that contact gate.

Native player/object contact now uses those gates and the directional,
wrapping byte geometry at $80D0/$81E0. Weapon targeting retains its separate
existing overlap path. Wreck tile scenery properties remain a separate terrain
collision path; the object itself is no longer a hostile enemy.

`fixtures/player-contact/rom-pool.tsv` contains the two 64-byte entity records
and hit result for each of the 60 original-ROM `player_pool_scan` captures in
`collision_routines_validation.json`. That source records the ROM hash,
emulator hash, unpatched helper invocation and exact RAM writes/results.
These fixtures cover eligible/ineligible flags, excluded types, near/far
coordinates and both end slots. The new native test compares each result and
checks all four persistent wreck selectors (9/11/12/19), initial and settled
flags, and nearby offsets. The session regression also places a settled cannon
wreck directly over a vulnerable player and verifies no life loss.

This validates the shared enemy contact path for the captured cases, not every
collision in all stages. Terrain probes, projectile contact, composed boss
targets and display origins still require their own boundary verification.
Enemy HP/death rules are independent of player collision eligibility/geometry.
