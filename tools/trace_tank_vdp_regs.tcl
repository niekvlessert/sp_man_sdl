set throttle off
set renderer none
namespace eval smvr {
 variable f ""; variable last ""
 proc poll {} {
  variable f; variable last
  set t [machine_info time]
  set s [format "R0=%02X R1=%02X R2=%02X R3=%02X R4=%02X R7=%02X R8=%02X R10=%02X R23=%02X" [vdpreg 0] [vdpreg 1] [vdpreg 2] [vdpreg 3] [vdpreg 4] [vdpreg 7] [vdpreg 8] [vdpreg 10] [vdpreg 23]]
  if {$s ne $last} {puts $f [format "%.9f PC=%04X %s" $t [reg PC] $s]; flush $f; set last $s}
  if {$t < 108} {after time 0.001 {smvr::poll}} else {close $f; exit}
 }
 proc fire {} {if {[machine_info time] < 108} {type " "; after time 0.08 {smvr::fire}}}
 proc start {} {variable f; set f [open "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out/tank_vdp_regs.txt" w]; smvr::poll}
 after time 8 {type " "}; after time 10 {type " "}; after time 12 {type " "}; after time 14 {type " "}
 after time 15 {smvr::fire}
 after time 90 {poke 0xCA49 0; poke 0xCA4A 0x00; smvr::start}
 after time 92 {poke 0xCA4A 0x02}; after time 94 {poke 0xCA4A 0x04}; after time 96 {poke 0xCA4A 0x06}
 after time 98 {poke 0xCA4A 0x08}; after time 100 {poke 0xCA4A 0x0A}; after time 102 {poke 0xCA4A 0x0C}; after time 104 {poke 0xCA4A 0x0E}
}
