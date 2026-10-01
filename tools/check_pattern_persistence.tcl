set renderer none
set throttle off
namespace eval chk {
 variable outdir "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out"
 proc dump {name addr len} {
  variable outdir
  set f [open [file join $outdir $name] wb]
  fconfigure $f -translation binary
  puts -nonewline $f [debug read_block VRAM $addr $len]
  close $f
 }
 after time 8.0 {type " "}
 after time 10.0 {type " "}
 after time 12.0 {type " "}
 after time 14.0 {type " "}
 after time 18.999 {chk::dump q1_before.bin 0x0800 0x800; chk::dump low_before.bin 0 0x4000; chk::dump high_before.bin 0x18000 0x4000}
 after time 19.000 {debug write_block VRAM 0x0800 [string repeat [binary format c 0] 0x800]}
 after time 19.001 {chk::dump q1_immediate.bin 0x0800 0x800}
 after time 20.000 {chk::dump q1_after1s.bin 0x0800 0x800; exit}
}
