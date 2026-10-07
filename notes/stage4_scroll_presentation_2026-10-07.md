# Stage 4 machine alignment and vertical border — 2026-10-07

- Type $39 (bank05:$8C34, tile-only moving machinery) now shares the scenery's
  SCREEN4 horizontal raster origin in the native presentation pass: 8 pixels
  plus the coarse X velocity. Previously its matrix was rendered from the
  unadjusted object coordinate while the scenery retained R18's border offset.
  The regression compares its visible left bound to an independently stamped
  D988 page rendered through the original R18 compositor at the mode-6 entry.
  Object coordinates, terrain probes and ROM matrix data remain unchanged.
- Extracted the existing HUD drawing into one helper. The 28-line border is
  cleared and drawn after all native layers; incoming tile actors and vertically
  moving scenery can no longer overwrite POWER/SCORE. Low-resolution output
  also clears its border before drawing the HUD.
- Scenery classification passes retain hidden raster lines above the playfield
  instead of replacing those samples with HUD black. The final output clips
  those lines only after interpolation. This preserves entering image data
  when vertical presentation samples across the border.
- The existing ring-neighbour extension in screen4.cpp is preserved. No changes
  to canonical ring contents or streamer scheduling were needed.
- Expanded the mode-6 motion regression from 8 to 96 video frames and from the
  central image to the very first playfield line. Every textured sample moves
  by one quarter pixel per frame through three complete 8-pixel row carries;
  the complete HUD remains identical. A separate entering-$39 fixture verifies
  that a matrix partly above the playfield cannot draw through the HUD.
