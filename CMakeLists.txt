cmake_minimum_required(VERSION 3.20)
project(space_manbow_sdl LANGUAGES C CXX)
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
find_package(PkgConfig REQUIRED)
pkg_check_modules(SDL2 REQUIRED IMPORTED_TARGET sdl2)
find_package(PNG REQUIRED)

# Original PSG/SCC music is executed directly from the cartridge ROM through
# libkss. WAV assets remain only for sound effects.
add_subdirectory(third_party/libkss EXCLUDE_FROM_ALL)

add_library(smcore
    src/rom.cpp
    src/rom_tile_script.cpp
    src/entity_runtime.cpp
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
    src/title_menu.cpp
    src/enhanced_ship.cpp
    src/enhanced_background.cpp
    src/stage0_enemies.cpp
    src/stage0_combat.cpp
)
target_include_directories(smcore PUBLIC include)
target_link_libraries(smcore PUBLIC PNG::PNG)
target_compile_options(smcore PRIVATE -Wall -Wextra -Wpedantic)

add_executable(space-manbow-sdl src/main.cpp)
target_link_libraries(space-manbow-sdl PRIVATE smcore PkgConfig::SDL2)

add_executable(space-manbow-level-preview src/level_preview.cpp)
target_link_libraries(space-manbow-level-preview PRIVATE smcore PkgConfig::SDL2)

add_executable(space-manbow-runtime-test src/runtime_test.cpp)
target_link_libraries(space-manbow-runtime-test PRIVATE smcore)

add_executable(space-manbow-entity-runtime-test src/entity_runtime_test.cpp)
target_link_libraries(space-manbow-entity-runtime-test PRIVATE smcore)

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
add_executable(space-manbow-title-menu-test src/title_menu_test.cpp src/title_animation.cpp)
add_executable(space-manbow-enhanced-ship-test src/enhanced_ship_test.cpp)
target_link_libraries(space-manbow-enhanced-ship-test PRIVATE smcore)
target_link_libraries(space-manbow-title-menu-test PRIVATE smcore)
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


# Register the regression executables with CTest so every future level-port
# refactor can run the full ROM-backed suite with one command.
enable_testing()
function(add_sm_test name target)
    add_test(NAME ${name} COMMAND ${target} ${ARGN})
    set_tests_properties(${name} PROPERTIES WORKING_DIRECTORY ${CMAKE_SOURCE_DIR})
endfunction()

set(SM_ROM ${CMAKE_SOURCE_DIR}/space_manbow.rom)
add_sm_test(entity-runtime space-manbow-entity-runtime-test ${SM_ROM})
add_sm_test(runtime space-manbow-runtime-test ${SM_ROM})
add_sm_test(player space-manbow-player-test ${SM_ROM})
add_sm_test(play-features space-manbow-play-features-test ${SM_ROM})
add_sm_test(combat space-manbow-combat-test ${SM_ROM})
add_sm_test(audio space-manbow-audio-test ${CMAKE_SOURCE_DIR}/assets/audio ${SM_ROM})
add_sm_test(title space-manbow-title-test ${CMAKE_SOURCE_DIR}/assets/title/title.anim)
add_sm_test(title-menu space-manbow-title-menu-test ${SM_ROM} ${CMAKE_SOURCE_DIR}/assets/title/title.anim)
add_sm_test(enhanced-ship space-manbow-enhanced-ship-test ${SM_ROM} ${CMAKE_SOURCE_DIR}/assets/enhanced/player-hd-source.png)
add_sm_test(late-combat space-manbow-late-combat-test ${SM_ROM})
add_sm_test(feedback space-manbow-feedback-test ${SM_ROM})
add_sm_test(timeline space-manbow-timeline-test ${SM_ROM})
add_sm_test(scroll-feedback space-manbow-scroll-feedback-test ${SM_ROM})
add_sm_test(continuous-scroll space-manbow-continuous-scroll-test ${SM_ROM})
add_sm_test(stage2 space-manbow-stage2-test ${SM_ROM})
add_sm_test(stage34 space-manbow-stage34-test ${SM_ROM})
add_sm_test(stage59 space-manbow-stage59-test ${SM_ROM})
add_sm_test(stage45-boss space-manbow-stage45-boss-test ${SM_ROM})
add_sm_test(boss-visual space-manbow-boss-visual-test ${SM_ROM})
add_sm_test(stage6-boss space-manbow-stage6-boss-test ${SM_ROM})
add_sm_test(stage7-boss space-manbow-stage7-boss-test ${SM_ROM})
add_sm_test(stage8-boss space-manbow-stage8-boss-test ${SM_ROM})
add_sm_test(stage9-boss space-manbow-stage9-boss-test ${SM_ROM})
add_sm_test(late-level-enemies space-manbow-late-level-enemies-test ${SM_ROM})
add_sm_test(stage67-enemies space-manbow-stage67-enemies-test ${SM_ROM})
add_sm_test(boss-palette space-manbow-boss-palette-test ${SM_ROM})
add_sm_test(boss-regressions space-manbow-boss-regressions-test ${SM_ROM})
add_sm_test(stage89-presentation space-manbow-stage89-presentation-test ${SM_ROM})
add_sm_test(stage2-presentation space-manbow-stage2-presentation-test ${SM_ROM})
