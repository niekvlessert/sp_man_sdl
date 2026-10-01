set throttle off
set renderer none
namespace eval smc {
 variable done 0
 proc hit {} {
  variable done
  if {$done} {return}
  set done 1
  foreach {addr len name} {0x6E00 0x800 live_6e00_7600.bin 0x7200 0x400 live_7200_7600.bin} {
   set f [open "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out/$name" wb]
   fconfigure $f -translation binary
   puts -nonewline $f [debug read_block memory $addr $len]
   close $f
  }
  exit
 }
 after time 8.0 {type " "}; after time 10.0 {type " "}; after time 12.0 {type " "}; after time 14.0 {type " "}
 after time 94.0 {debug set_bp 0x6F43 {} {smc::hit}}
 after time 110.0 {exit}
}
