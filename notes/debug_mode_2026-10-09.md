# Debug mode and normal player damage

Debug starts disabled on each launch; it is not persisted. Normal menus and
play ignore stage/percentage shortcuts, W, R, Page Up/Down, G and Cmd/Ctrl-T.
Pause (P), mute (F10), firing, option rotation and exit confirmation remain
ordinary controls. Window stage/frame diagnostics require debug mode.

Type `debug` while the Options page is active. Matching is case insensitive;
leaving Options or an unrelated key resets a partial sequence. Activation
enables diagnostic shortcuts and invulnerability and opens a modal overview.
Close it using Escape or the top-right cross; closing retains debug settings.
The overview has a clickable invulnerability toggle (also G) and a Disable
Debug Mode button. Disabling also restores normal playback speed and player
vulnerability. Reset/jump/rewind retain the selected invulnerability setting.

The overlay uses SDL_ttf and installed system fonts: SFNS/Helvetica on macOS,
Segoe UI on Windows, DejaVu/Liberation Sans on Linux. It is created lazily upon
activation, and uses window-independent logical UI coordinates with matching
mouse hit testing. The ordinary menus retain the original game font.

Previously there was no general player-damage pass. Normal PlaySession now
checks hostile projectiles, actor contact and solid/hazard terrain. A hit costs
one of three lives and clears weapons/upgrades. The original ROM explosion
animation and sound now play at the collision position before respawning;
see `player_death_animation_2026-10-09.md` for the ROM comparison. The ship
respawns at its initial screen position with 1.5 seconds of protection;
fresh starts have the same protection. Remaining ships appear in the HUD.
At zero lives, GAME OVER waits until the explosion finishes; Space/Enter
returns to the main menu. Complete ROM checkpoint handling remains separate
from the reproduced death animation.

Existing boss/layout/route fixtures deliberately fly through obstacles. Their
invulnerability is now explicit, rather than depending on absent damage.
New tests use normal defaults to verify enemy/projectile/terrain damage,
protection, game over, upgrades loss and debug settings across resets/rewinds.
The dummy-SDL overlay test renders the real system font and exercises Escape,
click-to-close, immunity and disabling. The rendered overview was visually
inspected (`notes/previews/debug-overlay.png`).

Build dependency added: SDL2_ttf. Full regression suite: 37 tests.
