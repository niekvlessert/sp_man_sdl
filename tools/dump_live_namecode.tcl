set throttle off
set renderer none
namespace eval smdump {
  variable outdir "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out"
  proc one {name addr size} {
    variable outdir
    set f [open [file join $outdir $name] wb]
    fconfigure $f -translation binary
    puts -nonewline $f [debug read_block memory $addr $size]
    close $f
  }
  proc dump {} {
    smdump::one live_code_6000.bin 0x6000 0x2000
    smdump::one live_ring_e000.bin 0xE000 0x800
    exit
  }
  after time 8.0 {type " "}
  after time 10.0 {type " "}
  after time 12.0 {type " "}
  after time 14.0 {type " "}
  after time 20.0 {smdump::dump}
}
