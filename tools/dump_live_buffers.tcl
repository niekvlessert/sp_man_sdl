set throttle off
set renderer none
namespace eval smbuf {
  variable outdir "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out"
  proc dump {} {
    variable outdir
    foreach {name addr size} {d988 0xD988 0x480 e800 0xE800 0x100 c000 0xC000 0x100} {
      set f [open [file join $outdir live_${name}.bin] wb]
      fconfigure $f -translation binary
      puts -nonewline $f [debug read_block memory $addr $size]
      close $f
    }
    set s [open [file join $outdir live_buffers_state.txt] w]
    puts $s [format "time=%.6f pc=%04X mode=%s" [machine_info time] [reg PC] [get_screen_mode]]
    foreach a {0xC09B 0xC0B3 0xC0D5 0xC0E8 0xCA10 0xCA12 0xCA14 0xCA1A 0xCA1C} {
      puts $s [format "%04X=%02X" $a [debug read memory $a]]
    }
    close $s
    exit
  }
  after time 8.0 {type " "}
  after time 10.0 {type " "}
  after time 12.0 {type " "}
  after time 14.0 {type " "}
  after time 20.0 {smbuf::dump}
}
