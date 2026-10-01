set throttle off
set renderer none
namespace eval rr {
 variable f ""; variable n 0
 proc snap {} {
  variable f; variable n
  if {$n >= 80} {close $f; exit}
  puts $f [format "%03d %.9f R2=%02X R4=%02X R5=%02X R6=%02X R10=%02X R11=%02X R23=%02X" $n [machine_info time] [vdpreg 2] [vdpreg 4] [vdpreg 5] [vdpreg 6] [vdpreg 10] [vdpreg 11] [vdpreg 23]]
  incr n
  after time 0.00025 {rr::snap}
 }
 proc start {} {
  variable f
  set f [open "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out/t145_raster_regs.txt" w]
  rr::snap
 }
 after time 8 {type " "}; after time 10 {type " "}; after time 12 {type " "}; after time 14 {type " "}
 after time 15 {catch {trainer "Space Manbow" 9 22}}
 proc fire {} {if {[machine_info time] < 146} {type " "; after time 0.12 {rr::fire}}}
 after time 15 {rr::fire}
 after time 145 {rr::start}
}
