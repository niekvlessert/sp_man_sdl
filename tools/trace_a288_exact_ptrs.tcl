set throttle off
set renderer none
namespace eval smp {
  variable f ""; variable last -1; variable n 0
  proc snap {} {
    variable f; variable last; variable n
    set p [peek16 0xC0CA]
    if {$p != $last} {
      set last $p
      puts $f [format "%.6f PTR=%04X X=%06X Y=%06X B6=%04X DA=%02X M=%02X" [machine_info time] $p [expr {[peek16 0xC0BA]|([peek 0xC0BC]<<16)}] [expr {[peek16 0xC0C0]|([peek 0xC0C2]<<16)}] [peek16 0xC0B6] [peek 0xC0DA] [peek 0xC0CE]]
      flush $f
    }
    incr n
    if {$n < 500} {after time 0.0166667 {smp::snap}} else {close $f; exit}
  }
  proc start {} {variable f; set f [open "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out/a288_exact_ptrs.txt" w]; smp::snap}
  after time 8 {type " "}; after time 10 {type " "}; after time 12 {type " "}; after time 14 {type " "}
  after time 96.0 {smp::start}
}
