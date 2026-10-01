# Space Manbow reverse engineering notes

## ROM / mapper
- 256 KiB ROM, 32 banks of 8 KiB, header `AB`, init entry `$4033`.
- Konami SCC-style 8 KiB banking. Fixed-bank orchestration lives at `$4000-$5FFF`.
- Mapper state is mirrored by the game at `$F0F1/$F0F2/$F0F3` for the `$6000/$8000/$A000` windows.
- Representative mapper writes are `$7000`, `$9000`, `$B000`.

## Fixed bank orchestration
Known preset routines:
- `$4B95`: banks 01/02/03
- `$4B99`: banks 04/05/06
- `$4BB0`: banks 04/07/08
- `$4BC8`: banks 1C/1D/1E
- `$4BDF`: banks 09/0A (third window retained)
- `$4BEF`: banks 04/02/03

`$4C2A` is a far-call thunk. Five inline bytes after `CALL $4C2A` encode
`bank6000, bank8000, bankA000, target_lo, target_hi`; the thunk temporarily maps
those banks, calls the target and restores the previous mapping.

## Engine structure inferred so far
- Fixed bank `$42F2+`: top-level state/scenario dispatcher.
- Bank set 01/02/03 is a major state/gameplay module.
- Bank 02 at `$8000` contains state logic using a structure based at `$CA40`.
  `$CA48` / `$CA4A` behave as player X/Y coordinates.
- Bank set 04/05/06 is the enemy/object subsystem.
- Bank 04 iterates 20 object slots from `$CE80`, stride `$40` (64 bytes/object).
- Enemy/object X/Y are at object offsets `+08/+0A`; behavior code compares these
  directly to player `$CA48/$CA4A`.
- Banks 05/06 contain per-object behavior/state routines.

These labels are working names derived from code behavior, not original Konami symbols.
