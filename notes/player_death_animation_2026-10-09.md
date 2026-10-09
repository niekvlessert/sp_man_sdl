# Original player destruction animation

Bank02 $809D initializes the original type-1 player record on death: state 1,
+03=1, flags $2D, collision bit 7 cleared, sprite selector 6, +19..+1F cleared,
+17=$28. $80DA increments the selector each player update, wrapping 10 back to
6. $6AD2 decrements the timer, deliberately retaining 1 on the terminating
call. The fortieth call sets state 2 and type 0. Sound request is $4C ($80CB).

`tools/validate_player_death.tcl` directly invokes the unchanged original
initialization and animation helpers in openMSX. It seeds a known 32-byte
player record and captures all 41 records (initialization plus 40 updates),
without changing cartridge code. Immutable output is in
`notes/fixtures/player-death/rom-records.tsv`; the player-death test compares
every captured byte. This is an isolated original-routine fixture, not a
natural collision/respawn sequence capture.

Native play now retains the ship at its hit coordinates and renders the ROM
sprite frames 6/7/8/9 on the existing 20-Hz player clock (three display frames
per update, 120 frames total). Movement, firing and pickups are disabled during
destruction. The artificial full-screen bomb flash and instant teleport are
removed. $4C plays through the live original sound driver. Enhanced mode keeps
the original explosion visible, suppressing the enhanced hull and exhaust.

At animation completion the ship disappears. Native respawn then reinitializes
the player at its initial screen position and applies 90 display frames of
protection, corresponding to the ROM +18=$0F half-rate service. On the last
life, Game Over waits for animation completion. Full ROM checkpoint/continue
flow remains outside this animation correction.

Validation: all 41 original record fixtures; native stationary/no-firing death
for 120 frames, delayed game over and protected respawn; original $4C audio
mailbox request; four explosion images visually inspected. Build and all 37
regression tests pass. Preview: `notes/previews/player-death-frames.png`.
