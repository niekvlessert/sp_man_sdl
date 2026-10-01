set throttle off
set renderer none
namespace eval smio {
  variable f ""; variable prev -1; variable hits 0
  proc hit {} {
    variable f; variable prev; variable hits
    set v $::wp_last_value
    if {$prev >= 0 && ($v & 0x80) != 0} {
      set r [expr {$v & 0x3f}]
      if {$r == 2 || $r == 18 || $r == 23} {
        puts $f [format "%.9f PC=%04X reg=%02d val=%02X" [machine_info time] [reg PC] $r $prev]
        flush $f; incr hits
        if {$hits >= 120} {close $f; exit}
      }
    }
    set prev $v
  }
  proc arm {} {
    variable f
    set f [open "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out/vdp_io.txt" w]
    debug set_watchpoint write_io 0x99 {} {smio::hit}
  }
  after time 8.0 {type " "}; after time 10.0 {type " "}; after time 12.0 {type " "}; after time 14.0 {type " "}
  after time 100.4 {smio::arm}
  after time 101.2 {if {$smio::f ne ""} {close $smio::f}; exit}
}
