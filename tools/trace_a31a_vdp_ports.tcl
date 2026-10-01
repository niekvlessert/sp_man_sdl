set throttle off
set renderer none
namespace eval smvp {
  variable f ""; variable prev -1; variable armed 0
  proc p99 {} {
    variable f; variable prev
    set v $::wp_last_value
    if {$prev >= 0 && ($v & 0x80) != 0} {
      set r [expr {$v & 0x3f}]
      puts $f [format "%.9f P99 PC=%04X R%02d=%02X" [machine_info time] [reg PC] $r $prev]; flush $f
    }
    set prev $v
  }
  proc p9b {} {
    variable f
    puts $f [format "%.9f P9B PC=%04X val=%02X R17=%02X R4=%02X R10=%02X" [machine_info time] [reg PC] $::wp_last_value [vdpreg 17] [vdpreg 4] [vdpreg 10]]; flush $f
  }
  proc done {} {variable f; if {$f ne ""} {close $f}; exit}
  proc poll {} {
    variable f; variable armed
    if {!$armed && [peek16 0xC0CA] == 0xA31A && [peek 0xC0CE] == 4} {
      set armed 1; set f [open "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out/a31a_vdp_ports.txt" w]
      debug set_watchpoint write_io 0x99 {} {smvp::p99}
      debug set_watchpoint write_io 0x9B {} {smvp::p9b}
      after time 0.020 {smvp::done}; return
    }
    if {[machine_info time] > 140} {smvp::done}; after time 0.002 {smvp::poll}
  }
  proc fire {} {if {[machine_info time] < 140} {type " "; after time 0.20 {smvp::fire}}}
  after time 8 {type " "}; after time 10 {type " "}; after time 12 {type " "}; after time 14 {type " "}
  after time 15 {catch {trainer "Space Manbow" 9 22}; smvp::fire; smvp::poll}
}