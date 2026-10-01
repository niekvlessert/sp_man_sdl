set throttle off
set renderer none
namespace eval smptr {
  variable f ""
  variable last -1
  variable n 0
  proc snap {} {
    variable f; variable last; variable n
    set p [peek16 0xC0CA]
    if {$p != $last} {
      set last $p
      set x [expr {[peek16 0xC0BA] | ([peek 0xC0BC] << 16)}]
      set y [expr {[peek16 0xC0C0] | ([peek 0xC0C2] << 16)}]
      puts $f [format "%.6f PTR=%04X X=%06X Y=%06X B6=%04X B8=%04X RC=%04X M=%02X D2=%02X D5=%02X" [machine_info time] $p $x $y [peek16 0xC0B6] [peek16 0xC0B8] [peek16 0xC0CC] [peek 0xC0CE] [peek 0xC0D2] [peek 0xC0D5]]
      flush $f
    }
    incr n
    if {$n < 350} {after time 0.0166667 {smptr::snap}} else {close $f; exit}
  }
  proc start {} {
    variable f
    set f [open "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out/a288_a31a_ptrs.txt" w]
    smptr::snap
  }
  foreach t {8 10 12 14} {after time $t {type " "}}
  after time 99.0 {smptr::start}
}
