set throttle off
set renderer none
namespace eval smmode {
 variable f ""
 proc snap {} {
  variable f
  set t [machine_info time]
  if {$t >= 100.0} {
   puts $f [format "%.2f C0CA=%04X C0CC=%04X C0BB=%04X C0C1=%04X C0CE=%02X R4=%02X R10=%02X R23=%02X" $t [peek16 0xC0CA] [peek16 0xC0CC] [peek16 0xC0BB] [peek16 0xC0C1] [peek 0xC0CE] [vdpreg 4] [vdpreg 10] [vdpreg 23]]
   flush $f
  }
  if {$t < 153.0} {after time 0.5 {smmode::snap}} else {close $f; exit}
 }
 proc fire {} {if {[machine_info time] < 153.0} {type " "; after time 0.12 {smmode::fire}}}
 proc start {} {
  variable f
  set f [open "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out/stage0_scroll_modes.txt" w]
  catch {trainer "Space Manbow" 9 22}
  smmode::snap; smmode::fire
 }
 after time 8 {type " "}; after time 10 {type " "}; after time 12 {type " "}; after time 14 {type " "}; after time 15 {smmode::start}
}
