set throttle off
set renderer none
namespace eval smtank {
 variable counts
 array set counts {}
 proc hit {} {
  variable counts
  set pc [format %04X [reg PC]]
  if {![info exists counts($pc)]} {set counts($pc) 0}
  incr counts($pc)
 }
 proc arm {} {debug set_watchpoint write_mem {0xD988 0xDDFF} {} {smtank::hit}}
 proc done {} {
  variable counts
  set f [open "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out/tank_d988_pcs.txt" w]
  foreach pc [lsort [array names counts]] {puts $f "$pc $counts($pc)"}
  close $f; exit
 }
 proc fire {} {if {[machine_info time] < 106} {type " "; after time 0.12 {smtank::fire}}}
 after time 8 {type " "}; after time 10 {type " "}; after time 12 {type " "}; after time 14 {type " "}
 after time 15 {smtank::fire}; after time 90 {smtank::arm}; after time 106 {smtank::done}
}
