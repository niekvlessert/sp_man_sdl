set throttle off
set renderer none
namespace eval smkeys {
 variable f ""
 proc log {tag} {
  variable f
  binary scan [debug read_block "memory" 0xCA40 0x40] H* h
  puts $f [format "%s t=%.3f player=%s" $tag [machine_info time] [string toupper $h]]; flush $f
 }
 proc start {} {
  variable f
  set f [open "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out/cursor_matrix.txt" w]
  smkeys::log base
 }
 after time 8 {type " "}; after time 10 {type " "}; after time 12 {type " "}; after time 14 {type " "}
 after time 18 {smkeys::start}
 after time 19 {keymatrixdown 8 4; smkeys::log b4down}; after time 20 {keymatrixup 8 4; smkeys::log b4up}
 after time 21 {keymatrixdown 8 5; smkeys::log b5down}; after time 22 {keymatrixup 8 5; smkeys::log b5up}
 after time 23 {keymatrixdown 8 6; smkeys::log b6down}; after time 24 {keymatrixup 8 6; smkeys::log b6up}
 after time 25 {keymatrixdown 8 7; smkeys::log b7down}; after time 26 {keymatrixup 8 7; smkeys::log b7up}
 after time 27 {smkeys::log final; close $smkeys::f; exit}
}
