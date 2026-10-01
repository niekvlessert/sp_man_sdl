set throttle off
set renderer none
namespace eval smv {
  variable f ""
  variable n 0
  proc snap {} {
    variable f; variable n
    puts $f [format "%03d %.6f ptr=%04X X=%06X Y=%06X B6=%04X BB=%02X D2=%02X R18=%02X R23=%02X" $n [machine_info time] [peek16 0xC0CA] [expr {[peek16 0xC0BA]|([peek 0xC0BC]<<16)}] [expr {[peek16 0xC0C0]|([peek 0xC0C2]<<16)}] [peek16 0xC0B6] [peek 0xC0BB] [peek 0xC0D2] [vdpreg 18] [vdpreg 23]]
    flush $f; incr n
    if {$n < 240} {after time 0.0166667 {smv::snap}} else {close $f; exit}
  }
  proc start {} {
    variable f
    set f [open "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out/vdp_scroll_60hz.txt" w]
    smv::snap
  }
  after time 8.0 {type " "}
  after time 10.0 {type " "}
  after time 12.0 {type " "}
  after time 14.0 {type " "}
  after time 99.0 {smv::start}
}
