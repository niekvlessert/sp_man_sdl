set throttle off
set renderer none
namespace eval sm60 {
  variable f ""
  variable n 0
  proc snap {} {
    variable f; variable n
    set t [machine_info time]
    set x [expr {[peek16 0xC0BA] | ([peek 0xC0BC] << 16)}]
    set y [expr {[peek16 0xC0C0] | ([peek 0xC0C2] << 16)}]
    puts $f [format "%04d %.9f X=%06X Y=%06X PTR=%04X RC=%04X MODE=%02X D2=%02X R23=%02X" $n $t $x $y [peek16 0xC0CA] [peek16 0xC0CC] [peek 0xC0CE] [peek 0xC0D2] [vdpreg 23]]
    flush $f
    incr n
    if {$n < 180} {after time 0.0166667 {sm60::snap}} else {close $f; exit}
  }
  proc start {} {
    variable f
    set f [open "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out/diagonal_60hz_time.txt" w]
    sm60::snap
  }
  after time 8.0 {type " "}
  after time 10.0 {type " "}
  after time 12.0 {type " "}
  after time 14.0 {type " "}
  after time 109.5 {sm60::start}
}
