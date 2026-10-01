set throttle off
set renderer none
namespace eval smm2 {
 variable f ""; variable hits 0
 proc hit {} {
  variable f; variable hits
  set t [machine_info time]
  if {$t < 117.0 || $t > 146.0} {return}
  incr hits
  puts $f [format "%.9f DE=%04X HL=%04X C0CA=%04X C0CC=%04X C0BB=%04X C0CE=%02X" $t [reg DE] [reg HL] [peek16 0xC0CA] [peek16 0xC0CC] [peek16 0xC0BB] [peek 0xC0CE]]
  flush $f
 }
 proc arm {} {
  variable f
  set f [open "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out/mode2_columns.txt" w]
  debug set_bp 0x7DB8 {} {smm2::hit}
 }
 proc done {} {variable f; close $f; exit}
 proc fire {} {if {[machine_info time] < 146.2} {type " "; after time 0.12 {smm2::fire}}}
 after time 8 {type " "}; after time 10 {type " "}; after time 12 {type " "}; after time 14 {type " "}
 after time 15 {catch {trainer "Space Manbow" 9 22}; smm2::arm; smm2::fire}
 after time 146.2 {smm2::done}
}
