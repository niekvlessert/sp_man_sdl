# Space Manbow native SDL port

Build and run from this directory with the user-supplied ROM:

```sh
cmake -S . -B build
cmake --build build -j4
./build/space-manbow-game space_manbow.rom
```

The title waits for Space before showing Original graphics, Enhanced graphics,
and Options. Options contains the KSS music player and held-Space autofire.
Arrows move/select; Space or Enter selects; Space/Z fires; M rotates the
satellites; P pauses; F10 mutes. Escape during play asks for Y/N confirmation
before returning to the menu. Submenus use their Back row.

Debug features are off by default, including invulnerability. Type `debug`
while Options is open to enable the debug overlay. Close it with Escape or
its cross. Stage selection, upgrades, turbo and rewind are gated by debug mode.
Player collision/death and stages 1–9 have ROM-backed regression tests; the
latest collision audit is in `notes/stage_player_contact_audit_2026-10-09.md`.

## Browser version and GitHub Pages

`.github/workflows/ci.yml` builds the SDL game as WebAssembly with Emscripten
5.0.7, checks the ROM upload screen in Chromium, and deploys the default branch
to Pages. Pull requests build/test without deploying. In the GitHub repository,
select **Settings → Pages → Build and deployment → Source: GitHub Actions**,
then push to the default branch or run the workflow manually. See the
[GitHub Pages workflow documentation](https://docs.github.com/en/pages/getting-started-with-github-pages/using-custom-workflows-with-github-pages).

The workflow also uploads these independent native build artifacts:

| Platform | Artifact | Runtime |
| --- | --- | --- |
| Windows x64 | ZIP | Included DLLs; run `play.cmd ROM-path` |
| Linux x64 / ARM64 | tar.gz | System SDL2, SDL2_ttf, libpng and a UI font; run `play.sh ROM-path` |
| macOS ARM64 | tar.gz | Bundled dylibs, ad-hoc signed; run `play.sh ROM-path` |
| Android ARM64 / ARMv7 | Debug-signed APK | Local ROM picker; keyboard input required |

Each native job runs independently. Pages depends only on the successful web
job, with an explicit condition that permits deployment even if another build
fails. Native failures remain visible in the workflow result. No platform
artifact includes the ROM. The APK stores a selected ROM in private app storage.
The desktop launchers set `SM_ASSET_ROOT`, so assets are found even when the ROM
lives elsewhere. macOS builds are not notarized. Android touch/gamepad controls
are not implemented; this APK uses the existing keyboard controls.

For a local Android build, install JDK 17, Gradle 8.11.1, Android platform/build
tools 35, NDK 27.0.12077973 and SDK CMake 3.22.1, then:

```sh
git clone --depth 1 --branch release-2.32.10 https://github.com/libsdl-org/SDL.git android/sdl-source
python3 tools/prepare_android.py android/sdl-source /path/to/DejaVuSans.ttf /path/to/font-license.txt
gradle -p android assembleDebug
```

SDL2, SDL2_ttf/Freetype and libpng dependency versions are pinned in
`cmake/AndroidDependencies.cmake`. Android's Java wrapper opens the system file
picker and verifies the same cartridge hash as the web launcher.

The website requires the visitor to choose their own 256 KiB Space Manbow ROM
(SHA-256 `bca5696ebbf4a3493bb226baa03ba8f8c5cc4876a4ad0eaa9722f583a42192b0`).
The cartridge is checked and placed in the browser's temporary virtual
filesystem. It is never uploaded to a server, persisted, or included in the
CI artifact. Refreshing the page requires choosing the ROM again. Existing
visual/audio asset packs ship with the game. A keyboard and a current browser
with WebAssembly/WebGL are required. Click the game to focus its keyboard input.

To build locally, activate Emscripten and provide a redistributable TTF font:

```sh
emcmake cmake -S . -B build-web -DCMAKE_BUILD_TYPE=Release \
  -DSM_WEB_FONT=/usr/share/fonts/truetype/dejavu/DejaVuSans.ttf
cmake --build build-web --target space-manbow-game -j4
python3 -m http.server 8080 --directory build-web
```

Open `http://localhost:8080`. Serve via HTTP locally or HTTPS on Pages rather
than opening the HTML as a file. CI uses DejaVu Sans for the debug overlay
and includes its license. The web loop uses
[Emscripten Asyncify](https://emscripten.org/docs/porting/asyncify.html) to yield
for input, audio and browser presentation.

The browser smoke test optionally accepts a local ROM for actual game startup:

```sh
npm install --prefix /tmp/manbow-web-test playwright@1.58.2
/tmp/manbow-web-test/node_modules/.bin/playwright install chromium
NODE_PATH=/tmp/manbow-web-test/node_modules node tools/test_web.cjs build-web space_manbow.rom
```

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

Music and firing/hit/explosion effects play through SDL's audio mixer, but they
now use separate paths. **Music is generated live by libkss from the supplied
256 KiB Space Manbow ROM**: a small in-memory KSS wrapper maps the original
bank-$1C PSG/SCC driver, calls its untouched `$6000/$6003/$6006` entry points,
and exposes all 32 original 8 KiB cartridge banks to libkss. Stage tracks use
the original requests 59,60,61,62,63,64,65,67,58; boss music uses request 57.
There are no looping stage/boss WAVs in the playback path anymore, and seeking
replays the original driver silently to the requested timeline position.

Sound effects remain independent WAV voices recorded from the same ROM driver;
this is intentional so gameplay SFX can be iterated without reimplementing the
original channel-stealing/priority rules. Regenerate those reference/effect
assets with `python3 tools/export_play_audio.py`. The carrier takeoff ($1A) and
hatch projectile launch ($17) therefore still use their original-ROM WAV
recordings. Boss music state is restored by rewind/replay. libkss is vendored
under `third_party/libkss`; no libvgm dependency is required.

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
SDL_AUDIODRIVER=dummy ./build/space-manbow-audio-test assets/audio space_manbow.rom
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
