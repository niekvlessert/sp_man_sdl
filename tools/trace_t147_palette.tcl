set throttle off
set renderer none
namespace eval rr {
 variable f ""; variable n 0
 proc snap {} {
  variable f; variable n
  if {$n >= 80} {close $f; exit}
  set ph [binary encode hex [debug read_block "VDP palette" 0 32]]
  puts $f [format "%03d %.9f R0=%02X R2=%02X R8=%02X R18=%02X R23=%02X PAL=%s" $n [machine_info time] [vdpreg 0] [vdpreg 2] [vdpreg 8] [vdpreg 18] [vdpreg 23] $ph]
  incr n
  after time 0.00025 {rr::snap}
 }
 proc start {} {
  variable f
  set f [open "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out/t147_palette.txt" w]
  rr::snap
 }
 after time 8 {type " "}; after time 10 {type " "}; after time 12 {type " "}; after time 14 {type " "}
 after time 15 {catch {trainer "Space Manbow" 9 22}}
 proc fire {} {if {[machine_info time] < 145} {type " "; after time 0.12 {rr::fire}}}
 after time 15 {rr::fire}
 after time 147 {rr::start}
}
