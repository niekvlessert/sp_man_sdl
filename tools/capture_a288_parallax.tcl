set throttle off
set renderer none
namespace eval smp {
  proc poll {} {
    if {[peek16 0xC0CA] == 0xA288 && [peek 0xC0CE] == 2} {
      set od "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out/a288_parallax"
      file mkdir $od
      set f [open [file join $od e800.bin] wb]; fconfigure $f -translation binary
      puts -nonewline $f [debug read_block memory 0xE800 0x18]; close $f
      set x [expr {[peek16 0xC0BA] | ([peek 0xC0BC] << 16)}]
      set y [expr {[peek16 0xC0C0] | ([peek 0xC0C2] << 16)}]
      set f [open [file join $od state.txt] w]
      puts $f [format "t=%.9f X=%06X Y=%06X C0D2=%02X C0D5=%02X C0E6=%04X C0E8=%04X C0EA=%02X CA10=%02X CA12=%04X CA14=%04X CA1A=%04X CA1C=%04X" [machine_info time] $x $y [peek 0xC0D2] [peek 0xC0D5] [peek16 0xC0E6] [peek16 0xC0E8] [peek 0xC0EA] [peek 0xCA10] [peek16 0xCA12] [peek16 0xCA14] [peek16 0xCA1A] [peek16 0xCA1C]]
      close $f; exit
    }
    after time 0.002 {smp::poll}
  }
  after time 8.0 {type " "}
  after time 10.0 {type " "}
  after time 12.0 {type " "}
  after time 14.0 {type " "}
  after time 80.0 {smp::poll}
  after time 120.0 {exit}
}
