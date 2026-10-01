set throttle off
set renderer none
namespace eval smread {
 variable counts
 array set counts {}
 proc hit {} {
  variable counts
  set pc [format %04X [reg PC]]
  if {![info exists counts($pc)]} {set counts($pc) 0}
  incr counts($pc)
 }
 proc arm {} {debug set_watchpoint read_mem {0xD988 0xDDFF} {} {smread::hit}}
 proc done {} {
  variable counts
  set f [open "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out/tank_d988_reads.txt" w]
  foreach pc [lsort [array names counts]] {puts $f "$pc $counts($pc)"}; close $f; exit
 }
 proc fire {} {if {[machine_info time] < 101} {type " "; after time 0.12 {smread::fire}}}
 after time 8 {type " "}; after time 10 {type " "}; after time 12 {type " "}; after time 14 {type " "}
 after time 15 {smread::fire}; after time 98 {smread::arm}; after time 101 {smread::done}
}
