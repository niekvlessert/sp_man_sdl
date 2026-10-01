set throttle off
set renderer none
namespace eval smow {
  variable f ""
  variable out "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out/diagonal_overlay_writers.txt"
  variable targets {}
  proc init_targets {} {
    variable targets
    foreach rc {{12 24} {12 25} {12 26} {12 27} {12 29} {12 30} {13 24} {13 25} {13 26} {13 27} {13 29} {13 30} {14 18} {14 19} {15 18} {15 19} {22 12} {22 13} {22 14} {22 15} {23 12} {23 13} {23 14} {23 15}} {
      lassign $rc r c
      lappend targets [expr {0xD988 + $r*0x30 + $c}]
    }
  }
  proc hit {} {
    variable f; variable targets
    if {[lsearch -exact $targets $::wp_last_address] < 0} {return}
    if {[peek 0xC0CE] != 4} {return}
    set ptr [peek16 0xC0CA]
    if {$ptr < 0xA307 || $ptr > 0xA329} {return}
    puts $f [format "%.9f PC=%04X addr=%04X val=%02X PTR=%04X RC=%04X IX=%04X IY=%04X" [machine_info time] [reg PC] $::wp_last_address $::wp_last_value $ptr [peek16 0xC0CC] [reg IX] [reg IY]]
    flush $f
  }
  proc arm {} {
    variable f; variable out
    smow::init_targets
    set f [open $out w]
    debug set_watchpoint write_mem {0xD988 0xDE07} {} {smow::hit}
  }
  proc done {} {variable f; if {$f ne ""} {close $f}; exit}
  after time 8.0 {type " "}
  after time 10.0 {type " "}
  after time 12.0 {type " "}
  after time 14.0 {type " "}
  after time 90.0 {smow::arm}
  after time 125.0 {smow::done}
}
