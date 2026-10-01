set throttle off
set renderer none
namespace eval smr4 {
 variable f ""; variable last -1
 proc poll {} {
  variable f; variable last
  set t [machine_info time]; set r [vdpreg 4]
  if {$r != $last} {
   puts $f [format "%.6f R4=%02X CA10=%02X C0CA=%04X C0CC=%04X C0CD=%02X CA34=%02X PC=%04X" $t $r [peek 0xCA10] [peek16 0xC0CA] [peek16 0xC0CC] [peek 0xC0CD] [peek 0xCA34] [reg PC]]
   flush $f; set last $r
  }
  if {$t < 156.0} {after time 0.008333 {smr4::poll}} else {close $f; exit}
 }
 proc fire {} {if {[machine_info time] < 156.0} {type " "; after time 0.20 {smr4::fire}}}
 proc start {} {
  variable f; set f [open "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out/stage0_r4_trace.txt" w]
  trainer "Space Manbow" 9 22; smr4::poll; smr4::fire
 }
 after time 8.0 {type " "}; after time 10.0 {type " "}; after time 12.0 {type " "}; after time 14.0 {type " "}; after time 15.0 {smr4::start}
}
