set throttle off
set renderer none
namespace eval smm2d {
 variable out "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out"
 proc dump {tag} {
  variable out
  set f [open [file join $out "m2_${tag}_state.bin"] wb]; fconfigure $f -translation binary
  puts -nonewline $f [debug read_block "memory" 0xC0B0 0x40]; close $f
  set f [open [file join $out "m2_${tag}_ring.bin"] wb]; fconfigure $f -translation binary
  puts -nonewline $f [debug read_block "memory" 0xE000 0x800]; close $f
  set f [open [file join $out "m2_${tag}_d988.bin"] wb]; fconfigure $f -translation binary
  puts -nonewline $f [debug read_block "memory" 0xD988 0x480]; close $f
  set f [open [file join $out "m2_${tag}.txt"] w]
  puts $f [format "t=%.9f C0CA=%04X C0CC=%04X C0BB=%04X C0C1=%04X C0CE=%02X R4=%02X R10=%02X R23=%02X" [machine_info time] [peek16 0xC0CA] [peek16 0xC0CC] [peek16 0xC0BB] [peek16 0xC0C1] [peek 0xC0CE] [vdpreg 4] [vdpreg 10] [vdpreg 23]]
  close $f
 }
 proc fire {} {if {[machine_info time] < 146} {type " "; after time 0.12 {smm2d::fire}}}
 after time 8 {type " "}; after time 10 {type " "}; after time 12 {type " "}; after time 14 {type " "}
 after time 15 {catch {trainer "Space Manbow" 9 22}; smm2d::fire}
 after time 103.5 {smm2d::dump start}
 after time 145.0 {smm2d::dump tower}
 after time 145.1 {exit}
}
