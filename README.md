# Space Manbow native SDL port

Build and run from this directory with the user-supplied ROM:

```sh
cmake -S . -B build
cmake --build build -j4
./build/space-manbow-game space_manbow.rom
```

Arrows move the ship. Z or Space fires once per press, matching the basic
weapon's input edge. Keys 0–9 jump to 0–90% of the stage-0 route in 10% steps.
M mutes audio, P pauses, R restarts, Escape exits. Losing window focus
pauses the game. The simulation advances at 60 Hz independently of rendering.

ROM movement tables, ship animation, basic forward shots and resident sprite
graphics run with the stage-0 background/scenery reconstruction. The upper
ship position now accounts for the original sprite origin minus VDP R23.
The original $51 wave records spawn flight types $10/$12/$15/$18, including
the opening waves previously skipped before the stream anchor. Basic shots
hit flyers and vehicle cannons using the ROM component hitboxes and damage table.
Cannons fire, take damage and can drop pickups. Reward waves also drop pickups
when completed. N selects normal fire, W selects three-way fire, O adds trailing
options, and M arms the pulse/mega-bomb shot. Red pickups increase power (shown
in the top bar); blue pickups clear vulnerable enemies and enemy shots.
These combat paths still have fidelity limits: cannon projectile handlers,
option movement and mega-bomb timing are simplified. Player damage/death,
remaining enemy handlers, terrain collision, explosion animation and boss
completion still need porting. Details and validation are in
`notes/sdl_combat_and_sprite_fixes_2026-10-01.md`.
The stage stops
at its fight gate without inserting the preview's reference object pool.
Stage0 visual corrections and remaining cadence limits are documented in
`notes/sdl_visual_fixes_2026-10-01.md`.
Native play presents camera motion between the four-frame scenery logic ticks.
This smooths scrolling without changing the underlying stream cadence.

Music and firing/hit/explosion effects play through SDL's audio mixer. The
WAV assets were recorded from the ROM's original PSG/SCC driver using the
existing sibling OpenMSX build. This playback requires no libvgm. Regenerate
the assets after supplying the ROM with `python3 tools/export_play_audio.py`.
This is PCM playback, with independent effects mixed over music; chip channel
priority and dynamic music changes are not yet reproduced. The 180-second
stage music capture covers the route to the fight gate and then wraps.
Audio assets are loaded from `assets/audio` beside the ROM.

Level jumps replay the simulation without input to reconstruct scenery and
enemy state, and seek the music to that time. Percentages refer to elapsed
time along the complete route to the fight gate, including vertical sections.
They are not percentages of horizontal map width or of an unfinished boss fight.
Implementation and validation details: `notes/sdl_play_features_2026-10-01.md`.

The previous diagnostic tools remain available:

```sh
./build/space-manbow-level-preview space_manbow.rom
./build/space-manbow-sdl space_manbow.rom
./build/space-manbow-game space_manbow.rom --capture /tmp/manbow-play.ppm
./build/space-manbow-game space_manbow.rom --capture-step 7 /tmp/manbow-70pct.ppm
```

Validation:

```sh
./build/space-manbow-runtime-test space_manbow.rom
./build/space-manbow-player-test space_manbow.rom
./build/space-manbow-play-features-test space_manbow.rom
./build/space-manbow-combat-test space_manbow.rom
SDL_AUDIODRIVER=dummy ./build/space-manbow-audio-test assets/audio
python3 tools/run_player_native_validation.py
python3 tools/run_flyers_native_validation.py
python3 tools/run_wave_native_validation.py
python3 tools/run_early_window_validation.py
```

The Python checks require the existing sibling OpenMSX build and system ROMs.
They compare native C++ output against original Z80 helpers using RAM fixtures.
See `notes/sdl_play_milestone_2026-10-01.md` for scope and the next step.
