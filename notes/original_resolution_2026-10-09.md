# Original graphics at MSX resolution

Original gameplay now uses PlaySession::render_original(), which invokes the
corrected presentation compositor at one sample per pixel in each direction.
Its output is 256x212. SDL uploads that small texture and enlarges it with nearest
neighbour sampling. Enhanced continues to use 1024x848 and quarter-pixel motion.
Original movement is quantized to whole original pixels, including stars and
interpolated actor/camera positions. This is an intentional resolution tradeoff.

Original presentation now uses integer physical-pixel scaling as well. For
example, a 652x652 drawable presents a centred 512x424 image (2x) instead of
652x539 (2.55x). Fractional nearest-neighbour scaling made a moving type-$12
flyer's visible pixel columns alternate in width. Integer scaling keeps the
sprite's pixel geometry fixed; margins absorb the unused space. Windows smaller
than 256x212 still scale down to fit. Enhanced keeps its existing fit-to-window
presentation. Viewport tests cover normal, resized and large window sizes.

Exit confirmation and game-over panels support both resolutions. Paused scenes
remain idle until input or window events require rendering. Gameplay state,
collision, damage and audio are unchanged.

Validation:
- All 42 native tests pass.
- New renderer checks cover nine stages at checkpoints 0, 5 and 9 across four
  presentation phases: 108 images. HUD equality is exact. Scene/palette checks
  allow a one-pixel neighbourhood for quantized edges; next-tick high-resolution
  rendering verifies that the low-resolution render did not mutate gameplay.
- Both overlay resolutions match exactly after nearest-neighbour expansion.
- Chromium verifies Original's 256x212 texture, confirmation/cancellation,
  switching to Enhanced's 1024x848 texture, pause, resize and return to menus.
- Original and confirmation browser screenshots were inspected locally.

Local native mean CPU render time across the 108 captures: 0.448 ms for Original
vs 1.702 ms for the previous 1024x848 route. Local headless Chromium stage-1
Original CPU mean: 0.547 ms. These exclude simulation, audio and texture
upload/presentation; they are not total process CPU measurements.

Browser verification command:
`SM_WEB_ORIGINAL_TEST=1 NODE_PATH=/private/tmp/manbow-web-test/node_modules node tools/test_web.cjs dist space_manbow.rom`
