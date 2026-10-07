# Title menu and KSS player

The main menu has Original Graphics,
Enhanced Graphics,
and Options. Enhanced is selected initially. A yellow marker and yellow text
identify the active row without blinking.

Text is drawn from the cartridge's original SCREEN5 font: bank01 $7279
for A-Z, $75B9 for 0-9, packed 8x8 E/F pixels, 32 bytes per character.
Space is blank. The independent exported title animation verifies the P
bitmap in the menu against the original PUSH SPACE KEY.

Options contains the KSS music player and Autofire When Holding Space.
The player browses the twelve original sound-driver music requests 57..68;
left/right changes track, Space/Enter activates Play/Stop. Leaving the player
stops music; gameplay resets the correct stage/boss music. Autofire defaults
on and is retained while navigating menus or restarting this app session.
With it off, Space fires only on a fresh non-repeat keydown; Z retains the
existing held-fire behavior. Settings are not saved between app launches.

Up/down selects a row; Space/Enter activates it. Space during either intro
animation first skips to the completed title/menu. Escape is ignored in menus; choosing Back is the only way to leave a
submenu. During gameplay Escape pauses and shows ARE YOU SURE / Y N.
Y returns to the main menu; N restores the prior paused/running state.

Validation: game builds; title/menu/player/timeline tests pass; audio test
passes with SDL_AUDIODRIVER=dummy and verifies audible output for all twelve
player tracks, stopped playback position, and restoration of gameplay music.
All three menu screens were rendered and inspected visually.

## Regression correction

Both graphics choices now use the corrected 1024x848 continuous compositor.
Enhanced mode now replaces the player with assets/enhanced/player-hd-source.png.
Original Graphics must
not switch back to coarse render(): it jumps the slow stars and reintroduces
obsolete cannon/raster alignment. Menu selection uses yellow text/marker on
black without a coloured row background. All keyboard instruction footers
are removed. Stage-1 and Stage-3 stars are checked frame by frame.
