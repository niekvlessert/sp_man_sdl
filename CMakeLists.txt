cmake_minimum_required(VERSION 3.20)
project(space_manbow_sdl LANGUAGES C CXX)
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
find_package(PkgConfig REQUIRED)
pkg_check_modules(SDL2 REQUIRED IMPORTED_TARGET sdl2)

# Original PSG/SCC music is executed directly from the cartridge ROM through
# libkss. WAV assets remain only for sound effects.
add_subdirectory(third_party/libkss EXCLUDE_FROM_ALL)

add_library(smcore
    src/rom.cpp
    src/graphics.cpp
    src/level.cpp
    src/assets.cpp
    src/screen4.cpp
    src/runtime.cpp
    src/game_state.cpp
    src/spawn.cpp
    src/stage0_background.cpp
    src/play_session.cpp
    src/play_timeline.cpp
    src/stage0_enemies.cpp
    src/stage0_combat.cpp
)
target_include_directories(smcore PUBLIC include)
target_compile_options(smcore PRIVATE -Wall -Wextra -Wpedantic)

add_executable(space-manbow-sdl src/main.cpp)
target_link_libraries(space-manbow-sdl PRIVATE smcore PkgConfig::SDL2)

add_executable(space-manbow-level-preview src/level_preview.cpp)
target_link_libraries(space-manbow-level-preview PRIVATE smcore PkgConfig::SDL2)

add_executable(space-manbow-runtime-test src/runtime_test.cpp)
target_link_libraries(space-manbow-runtime-test PRIVATE smcore)

add_executable(space-manbow-game src/game_main.cpp src/play_audio.cpp src/title_animation.cpp)
target_include_directories(space-manbow-game PRIVATE third_party/libkss/src third_party/libkss/modules)
target_link_libraries(space-manbow-game PRIVATE smcore PkgConfig::SDL2 kss)

add_executable(space-manbow-player-test src/player_test.cpp)
target_link_libraries(space-manbow-player-test PRIVATE smcore)

add_executable(space-manbow-play-features-test src/play_features_test.cpp)
target_link_libraries(space-manbow-play-features-test PRIVATE smcore)
add_executable(space-manbow-combat-test src/combat_test.cpp)
target_link_libraries(space-manbow-combat-test PRIVATE smcore)
add_executable(space-manbow-audio-test src/play_audio_test.cpp src/play_audio.cpp)
target_include_directories(space-manbow-audio-test PRIVATE include third_party/libkss/src third_party/libkss/modules)
target_link_libraries(space-manbow-audio-test PRIVATE PkgConfig::SDL2 kss)

add_executable(space-manbow-title-test src/title_animation_test.cpp src/title_animation.cpp)
target_include_directories(space-manbow-title-test PRIVATE include)

add_executable(space-manbow-late-combat-test src/late_combat_test.cpp)
target_link_libraries(space-manbow-late-combat-test PRIVATE smcore)

add_executable(space-manbow-feedback-test src/feedback_test.cpp)
target_link_libraries(space-manbow-feedback-test PRIVATE smcore)

add_executable(space-manbow-timeline-test src/timeline_test.cpp)
target_link_libraries(space-manbow-timeline-test PRIVATE smcore)

add_executable(space-manbow-scroll-feedback-test src/scroll_feedback_test.cpp)
target_link_libraries(space-manbow-scroll-feedback-test PRIVATE smcore)

add_executable(space-manbow-continuous-scroll-test src/continuous_scroll_test.cpp)
target_link_libraries(space-manbow-continuous-scroll-test PRIVATE smcore)

add_executable(space-manbow-stage2-test src/stage2_test.cpp)
target_link_libraries(space-manbow-stage2-test PRIVATE smcore)

add_executable(space-manbow-stage34-test src/stage34_test.cpp)
target_link_libraries(space-manbow-stage34-test PRIVATE smcore)

add_executable(space-manbow-stage59-test src/stage59_test.cpp)
target_link_libraries(space-manbow-stage59-test PRIVATE smcore)

add_executable(space-manbow-stage45-boss-test src/stage45_boss_test.cpp)
target_link_libraries(space-manbow-stage45-boss-test PRIVATE smcore)
add_executable(space-manbow-boss-visual-test src/boss_visual_test.cpp)
target_link_libraries(space-manbow-boss-visual-test PRIVATE smcore)

add_executable(space-manbow-stage6-boss-test src/stage6_boss_test.cpp)
target_link_libraries(space-manbow-stage6-boss-test PRIVATE smcore)

add_executable(space-manbow-stage7-boss-test src/stage7_boss_test.cpp)
target_link_libraries(space-manbow-stage7-boss-test PRIVATE smcore)

add_executable(space-manbow-stage8-boss-test src/stage8_boss_test.cpp)
target_link_libraries(space-manbow-stage8-boss-test PRIVATE smcore)

add_executable(space-manbow-stage9-boss-test src/stage9_boss_test.cpp)
target_link_libraries(space-manbow-stage9-boss-test PRIVATE smcore)

add_executable(space-manbow-late-level-enemies-test src/late_level_enemies_test.cpp)
target_link_libraries(space-manbow-late-level-enemies-test PRIVATE smcore)

add_executable(space-manbow-stage67-enemies-test src/stage67_enemies_test.cpp)
target_link_libraries(space-manbow-stage67-enemies-test PRIVATE smcore)

add_executable(space-manbow-boss-palette-test src/boss_palette_test.cpp)
target_link_libraries(space-manbow-boss-palette-test PRIVATE smcore)

add_executable(space-manbow-boss-regressions-test src/boss_regressions_test.cpp)
target_link_libraries(space-manbow-boss-regressions-test PRIVATE smcore)

add_executable(space-manbow-stage89-presentation-test src/stage89_presentation_test.cpp)
target_link_libraries(space-manbow-stage89-presentation-test PRIVATE smcore)

add_executable(space-manbow-stage2-presentation-test src/stage2_presentation_test.cpp)
target_link_libraries(space-manbow-stage2-presentation-test PRIVATE smcore)
