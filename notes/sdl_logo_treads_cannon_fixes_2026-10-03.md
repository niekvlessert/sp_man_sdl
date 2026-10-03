# Original title animation, tread/floor synchronization and cannon mounts

The original cartridge is executed in openMSX for extraction and routine
inspection. Native SDL presentation uses its artwork and timing while retaining
continuous 60-Hz movement between the original scenery logic updates.

## Title capture

Host screenshots were stale with unthrottled emulation: the previous 500-frame
pack contained only 10 successive images. The exporter now reads physical VRAM,
VDP registers and palettes every emulated 1/60 second, with the renderer disabled.
Capture begins at 5.5 seconds, before Konami draws, rather than after that sequence.
SCREEN5 decoding respects display enable, 192/212-line mode, vertical adjustment,
page selection, vertical scroll and palette-zero transparency/border behavior.

The replacement contains 650 frames, with 122 image transitions (49 during the
early Konami sequence). Frame 560 marks readiness. This preserves original
artwork changes and pauses; it does not invent 60 different drawings per second.
The title test checks frame count, readiness and meaningful changes in both logos.

## Tread and floor

Fixed-ROM $5DD8 updates CA3A and CA3B; bank-6 $BDAD selects the original eight
phases from CA3B, object X and the CA1C fractional carry. The three matrices use
phase, phase+8 and phase+16. These selectors and original wheel artwork remain.

The final logical row of the $24 matrices also contains rocks. Drawing that row
over the independent native floor imposed the old scenery cadence on patches
under the vehicle. The native tile actor now omits that rock row, so the continuous
floor owns it. Vehicle movement remains at 60 Hz. A 64-frame regression checks
that adding the chassis leaves the floor below it unchanged.

## Large cannon mounts

After the stage-0 camera reaches 3072 pixels, the native large-cannon origin was
one tile left of its pedestal. Inspection over the affected section showed a
stable one-tile discrepancy rather than an increasing numerical drift. The native
presentation shifts type $1F and its type $6B/frame-9 wreck by eight pixels.
Both the tile body and sprite barrel share this origin. Hit detection and attack
aim/muzzle creation use the same adjustment; underlying scenery coordinates are
restored after combat processing. Original ROM data is unchanged.

A 64-frame regression compares the wreck edge with the blue pedestal during the
vertical section and checks its intended two-pixel overhang at quarter-pixel
presentation resolution.

## Validation

The build and title-animation, continuous-scroll, late-combat, feedback, runtime,
timeline and scroll-feedback checks pass. Existing continuous aircraft reveal,
deck occlusion and native floor/stars checks remain enabled.
