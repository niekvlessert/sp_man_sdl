set throttle off
set renderer none
namespace eval smtank {
 variable f ""
 variable counts
 array set counts {}
 proc hit {} {
  variable f; variable counts
  set pc [format %04X [reg PC]]
  if {![info exists counts($pc)]} {set counts($pc) 0}
  incr counts($pc)
  puts $f [format "%.6f PC=%s addr=%04X val=%02X" [machine_info time] $pc $::wp_last_address $::wp_last_value]
 }
 proc arm {} {
  variable f
  set f [open "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out/tank_ring_writes.txt" w]
  debug set_watchpoint write_mem {0xE000 0xE7FF} {} {smtank::hit}
 }
 proc done {} {
  variable f; variable counts
  puts $f "--- COUNTS ---"
  foreach pc [lsort [array names counts]] {puts $f "$pc $counts($pc)"}
  close $f; exit
 }
 proc fire {} {if {[machine_info time] < 106} {type " "; after time 0.12 {smtank::fire}}}
 after time 8 {type " "}; after time 10 {type " "}; after time 12 {type " "}; after time 14 {type " "}
 after time 15 {smtank::fire}
 after time 90 {smtank::arm}
 after time 106 {smtank::done}
}
