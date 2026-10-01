set throttle off
set renderer none
namespace eval sma31 {
  variable f ""; variable prev -1; variable armed 0
  proc io {} {
    variable f; variable prev
    set v $::wp_last_value
    if {$prev >= 0 && ($v & 0x80) != 0} {
      set r [expr {$v & 0x3f}]
      if {$r == 0 || $r == 1 || $r == 2 || $r == 4 || $r == 8 || $r == 9 || $r == 18 || $r == 23} {
        puts $f [format "%.9f PC=%04X R%02d=%02X" [machine_info time] [reg PC] $r $prev]; flush $f
      }
    }
    set prev $v
  }
  proc done {} {variable f; if {$f ne ""} {close $f}; exit}
  proc poll {} {
    variable f; variable armed
    if {!$armed && [peek16 0xC0CA] == 0xA31A && [peek 0xC0CE] == 4} {
      set armed 1
      set f [open "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out/a31a_vdp_frame.txt" w]
      debug set_watchpoint write_io 0x99 {} {sma31::io}
      after time 0.020 {sma31::done}
      return
    }
    if {[machine_info time] > 140.0} {sma31::done}
    after time 0.002 {sma31::poll}
  }
  proc fire {} {if {[machine_info time] < 140.0} {type " "; after time 0.20 {sma31::fire}}}
  after time 8 {type " "}; after time 10 {type " "}; after time 12 {type " "}; after time 14 {type " "}
  after time 15 {catch {trainer "Space Manbow" 9 22}; sma31::fire; sma31::poll}
}