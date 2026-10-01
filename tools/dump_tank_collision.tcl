set throttle off
set renderer none
namespace eval smtc {
 proc dump {} {
  set out "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out"
  foreach {name addr len} {tank_d988.bin 0xD988 0x480 tank_de00.bin 0xDE00 0x100 tank_ram_ca.bin 0xCA00 0x400} {
   set f [open [file join $out $name] wb]; fconfigure $f -translation binary
   puts -nonewline $f [debug read_block "memory" $addr $len]; close $f
  }
  exit
 }
 proc fire {} {if {[machine_info time] < 100} {type " "; after time 0.12 {smtc::fire}}}
 after time 8 {type " "}; after time 10 {type " "}; after time 12 {type " "}; after time 14 {type " "}
 after time 15 {smtc::fire}; after time 100 {smtc::dump}
}
