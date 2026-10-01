# Space Manbow stage 0 native compositor pipeline

Status: 2026-10-01. This describes the currently proven native SDL reconstruction, not a generic MSX2 renderer.

## Coordinate domains

The ROM uses several coordinate/timing domains at once. Keeping them separate is essential.

- `E000-E7FF`: 64 x 32 byte tile ring. The stream decoder writes columns/rows here.
- `D988`: 32 x 24 composed visible tile window. `$7755/$4E4A` copies from the ring.
- Object positions: signed 8.8 **tile** coordinates in 0x40-byte object records.
- Camera/stream state: 24-bit style fixed-point state around `C0BA/C0BD/C0C0/C0C3`.
- VDP presentation: R2/R18/R23 plus R19 raster splits. This is a separate presentation layer over the coarse tile/object state.

## Composition order

The order validated against OpenMSX is:

1. Decode stage stream into the `E000` ring.
2. Copy the 24 visible rows from the ring into the D988 window.
3. Apply the fast lower-ground pass (`$5DD8-$5E3C`) to D988 rows 21/22.
4. Stamp tile objects with the `$7A43/$7A70/$7AC0` family.
5. Run the star/parallax filler (`$6EE7...`): stars only replace zero D988 cells.
6. Upload the 24-row D988 window into the currently selected SCREEN 4 name-table page.
7. Present through the live-style VDP state (R2/R18/R23 and raster split state).

Changing this order creates very characteristic corruption. In particular the fast ground must run before vehicle/object stamps, while stars run after them.

## Ring and stream

`Stage0BackgroundStream` mirrors the stream beginning at the `$A13F` anchor and follows the later mode changes.

Important modes currently handled:

- mode 0: six-byte vertical macro records;
- mode 2: two-source continuation used around the vehicle section;
- mode 4: diagonal row writer;
- mode 1: later row writer/tower section.

Command `$1D` has a one-stream-event defer: the source pointer advances to `$A336`, but the first `$A336` row/column write happens on the next event. This is required for the exact A336 capture.

Command `$11` updates both the graphics/raster context and the coarse R23-related state. Its context value also feeds the lower-ground selector used by the original renderer.

## Fast lower ground

The scrolling rock/ground strip is not ordinary ring data. The fixed-bank routine `$5DD8-$5E3C` chooses an 8-byte window from one of two 32-byte ROM tables and repeats it four times into each of two D988 rows.

- normal table: CPU `$5E4B`;
- alternate table: CPU `$5E6B`;
- phase: `(CA3A + CA1D) & 7` in the ROM;
- output: D988 rows 21/22, shifted down by `-CA1B` during vertical movement;
- alternate selection: original code switches when `C0B4 == 6` or `C0B5 == 6`.

The native code currently models the table contents and vertical placement exactly. The remaining bug is temporal: the interactive preview is still deriving `CA3A` from global SDL frame count rather than reproducing the exact ROM update cadence.

## Star/parallax layer

The star routine is `$6EE7...`. For each D988 row it tries two columns:

- first: `E800[y] + H`;
- second: `E800[y+1] + H + 13`.

A star tile is written only if the destination D988 cell is zero. The tile value comes from the low parallax phase (`CD - subphase` in the captured states).

A288 and A31A captures proved the native formulas byte-for-byte. A visible disappearance of stars therefore points first to timing/presentation or wrong active graphics state, not to the two star-column formulas themselves.

## VDP presentation / double buffer

The ROM alternates two raster/name-table programs. `C09B` parity selects which page is displayed while the other program/page is prepared.

Observed active states include:

- R2 `$30` / R5 `$E7` and lower R5 `$EF`;
- R2 `$31` / R5 `$F7` and lower R5 `$FF`;
- restore program uses R2 `$3F`.

`$6F43` patches R23, R18 and the next R19 split. The two active programs use different R19 offsets (`+6C` and `+8C`).

The SDL `Stage0Screen4Presenter` keeps two 32-row name-table pages and uploads the current D988 into the active R2 page. The eight untouched rows are preserved per page.

Current limitation: the presentation state is updated only from the coarse `Stage0BackgroundStream` tick. The original uses the VDP presentation layer to make a coarse D988/object state appear pixel-fine between coarse updates. This is the main suspect for the remaining 15-Hz-looking vehicle scroll.
