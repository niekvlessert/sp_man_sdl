# Enhanced player ship

Generated with the built-in imagegen tool using
`assets/enhanced/player-original-reference.png` as the original-ROM reference.
Final source: `assets/enhanced/player-hd-source.png` (2172x724, RGBA).
Three square cells: neutral / up / down. The runtime crops the alpha bounds
and samples each pose within its original ROM screen bounds.

## Exact prompt

Use case: style-transfer. Asset type: production-ready enhanced player ship sprite sheet for a side-scrolling shoot-em-up. Input reference is the actual original Space Manbow player ship, with three frames left-to-right: neutral, banking up, banking down. Make a MUCH sharper beautifully detailed HD version based closely on this distinctive original, not a generic spaceship. Preserve the exact silhouette: right-facing compact fuselage, two large white swept wings trailing to the left and spreading up/down, swept top wing very tall, cobalt-blue cockpit/top fuselage, white/silver body, small red underside engine accent and tiny yellow wingtip accents. Keep the slightly top-down side view and original recognizable asymmetric silhouette, nose RIGHT. Refine into crisp clean hand-painted sci-fi sprite artwork with precise silver armor panels, cobalt glazing, metallic highlights and readable dark recesses. White dominates wings, blue cockpit, small red detail, tiny yellow tips. THREE consistent poses in one horizontal sprite sheet. Canvas 1536x512 divided into three exactly equal 512x512 cells. Each ship centered on same anchor, with identical overall extents and scale, occupying a centered box approximately 400x400, large transparent margins; no pixels touch cell borders. Neutral in first cell, subtle bank-up in second, subtle bank-down in third. True transparent alpha background, no checkerboard painted in, no ground, no backdrop, no labels, no lettering, no logo, no UI, no drop shadow, NO exhaust flame or large glow (engine animation is handled by the game), no detached particles. Sharper high-resolution artwork without blocky pixels, clean antialiased edges. These are actual three usable game sprites, not a presentation mockup.

## Integration and checks

Enhanced mode hides only the ROM player sprite while rendering the same
continuous world, options, projectiles and HUD. The PNG sprite is composited
at the original SAT position with premultiplied-alpha bilinear sampling.
Neutral bounds are 19x20 original pixels; banking poses are 19x18 and sit
one original line lower. The renderer does not mutate the player record or
change movement, collision, firing, upgrades or scrolling.

`enhanced-ship` checks all three frames, changed pixels restricted to the
original ship bounds, no original sprite fragments, unchanged game state,
repeatable original rendering and no ship when the player is inactive.
Player, menu and continuous scrolling regressions pass too. The game build
uses libpng for this RGBA asset. The in-game preview was inspected visually.
