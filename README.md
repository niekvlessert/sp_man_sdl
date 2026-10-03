# Space Manbow native SDL port

Build and run from this directory with the user-supplied ROM:

```sh
cmake -S . -B build
cmake --build build -j4
./build/space-manbow-game space_manbow.rom
```

Arrows move the ship. Z or Space fires once per press, matching the basic
weapon's input edge. Key 0 starts fresh with the original base speed and weapons. Keys 1–9 jump to 10–90% of the stage-0 route and equip the maximum test loadout.
M changes option positions, F10 mutes audio, P pauses, R restarts, Escape exits.
Cmd-2 on macOS / Ctrl-2 on Windows or Linux starts stage 2; Cmd/Ctrl-1
returns to stage 1. Keys 0–9 then jump within the selected stage.
W toggles between maximum reusable upgrades (including speed) and no upgrades.
These changes are retained by rewind/replay. Stage 2's scenery stream now matches
original tile-buffer references through its main route. Normal shots use its
own collision map, and its small floor/ceiling turrets are restored. Other enemy
families and the boss remain incomplete; see `notes/stage2_rom_audit_2026-10-03.md`.
Cmd-T on macOS / Ctrl-T on Windows or Linux toggles 500% turbo, including audio.
Page Up pauses and rewinds 100 simulation frames (clamped at the start).
Page Down pauses and advances 100 frames, replaying recorded input where available;
beyond recorded play it advances without input. P resumes; new play branches the history. Losing window focus
pauses the game. The simulation advances at 60 Hz independently of rendering.

The Konami and Space Manbow introductions play original ROM animation captured
at 60 Hz from VDP memory, registers and palettes. Regenerate the title pack with
`python3 tools/export_title_animation.py`. See
`notes/sdl_logo_treads_cannon_fixes_2026-10-03.md` for the title, tread and cannon fixes.
Space skips the Konami introduction to the complete title screen. On the title
screen, including during its animation, Space starts the game immediately.

ROM movement tables, ship animation, basic forward shots and resident sprite
graphics run with the stage-0 background/scenery reconstruction. The upper
ship position now accounts for the original sprite origin minus VDP R23.
The original $51 wave records spawn flight types $10/$12/$15/$18, including
the opening waves previously skipped before the stream anchor. Basic shots
hit flyers and vehicle cannons using the ROM component hitboxes and damage table.
Cannons fire, take damage and can drop pickups. Reward waves also drop pickups
when completed. N selects normal fire, W selects three-way fire, O adds trailing
options, and M adds the persistent ground-following missile. Red pickups
increase power (shown in the top bar); the blue item arms a one-shot large
bomb salvo for the next primary fire. N restores normal fire. Enemy HP,
pending damage, loadout-dependent difficulty, large-cannon projectiles and
the late boss/underbody/attack phases use their original ROM data and routines.
The boss destruction sequence stops the music at the explosion, removes the
final explosion image during the transition countdown, then advances into the
next stage's background and music. That stage's own enemy families are not yet fully implemented.
Player damage/death/respawn, HUD fidelity, natural RNG consumption and audio
chip-channel priority remain incomplete.

Blue-section types $1E now use their original approach/vertical-travel/triple-shot behavior.
The trailing platform blast and the constant-speed boss floor are covered by
`notes/sdl_scroll_controls_fixes_2026-10-03.md`.

Native play uses a 1024×848 texture with quarter-pixel X/Y positions. Background,
vehicle, stars and fast ground move between the original logic ticks, including
the opening and diagonal/vertical sections. The fast ground has its own
continuous clock; limited tread animation frames do not limit vehicle movement.
Aircraft use the complete ROM hull immediately on entry, with asset patterns
independent of screen height. The vehicle deck hides the lower hull until it
rises above the deck; that reveal also moves at 60 Hz. Exterior clearing cells
are transparent, so rising aircraft no longer erase the deck with black rectangles. See
`notes/sdl_continuous_world_scroll_2026-10-03.md` for measurements and checks.
Large carriers also rise continuously between the ROM's height-dependent tile
steps. Sprite artwork/animation selectors and attack timers retain the original
15/20-Hz cadence; continuous movement at 60 Hz needs no additional sprite artwork.
See `notes/sdl_late_combat_fixes_2026-10-03.md` for implementation, exact ROM
fixture comparisons and current scope. The corrected late visual audit is
`notes/stage0_late_visual_audit_2026-10-03.md`.

Music and firing/hit/explosion effects play through SDL's audio mixer. The
WAV assets were recorded from the ROM's original PSG/SCC driver using the
existing sibling OpenMSX build. This playback requires no libvgm. Regenerate
the assets after supplying the ROM with `python3 tools/export_play_audio.py`.
This is PCM playback, with independent effects mixed over music; chip channel
priority is not yet reproduced; music changes after the first boss. The 180-second
stage music capture covers the route to the fight gate and then wraps.
Audio assets are loaded from `assets/audio` beside the ROM.
The carrier takeoff ($1A) and hatch projectile launch ($17) use their own
original-ROM recordings. Boss music state is restored by rewind/replay.

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
./build/space-manbow-late-combat-test space_manbow.rom
./build/space-manbow-feedback-test space_manbow.rom
./build/space-manbow-continuous-scroll-test space_manbow.rom
./build/space-manbow-stage2-test space_manbow.rom
./build/space-manbow-title-test assets/title/title.anim
SDL_AUDIODRIVER=dummy ./build/space-manbow-audio-test assets/audio
python3 tools/run_player_native_validation.py
python3 tools/run_flyers_native_validation.py
python3 tools/run_wave_native_validation.py
python3 tools/run_late_combat_native_validation.py
python3 tools/run_feedback_validation.py
python3 tools/run_early_window_validation.py
```

The Python checks require the existing sibling OpenMSX build and system ROMs.
They compare native C++ output against original Z80 helpers using RAM fixtures.
See `notes/sdl_play_milestone_2026-10-01.md` for scope and the next step.
The latest screenshot fixes and their original-ROM comparisons are documented
in `notes/sdl_feedback_fixes_2026-10-03.md`.
Boss-ending/audio/60-Hz carrier fixes are documented in
`notes/sdl_boss_audio_motion_fixes_2026-10-03.md`.
