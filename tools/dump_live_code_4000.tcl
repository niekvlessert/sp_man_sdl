set throttle off
set renderer none
namespace eval smdump {
  variable outdir "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out"
  proc dump {} {
    variable outdir
    set f [open [file join $outdir live_code_4000.bin] wb]
    fconfigure $f -translation binary
    puts -nonewline $f [debug read_block memory 0x4000 0x2000]
    close $f
    exit
  }
  after time 8.0 {type " "}
  after time 10.0 {type " "}
  after time 12.0 {type " "}
  after time 14.0 {type " "}
  after time 19.84 {smdump::dump}
}
