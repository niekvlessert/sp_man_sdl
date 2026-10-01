set throttle off
set renderer none
namespace eval smdyn {
  variable f ""
  proc wh {} {
    variable f
    set a $::wp_last_address
    if {$a < 0xCE80 || $a >= 0xD380} { return }
    if {(($a - 0xCE80) & 0x3F) != 0} { return }
    set v $::wp_last_value
    if {$v != 0x1F && $v != 0x24} { return }
    set slot [expr {($a - 0xCE80) / 0x40}]
    puts $f [format "%.6f slot=%02d type=%02X PC=%04X IX=%04X CA34=%04X PTR=%04X" [machine_info time] $slot $v [reg PC] [reg IX] [peek16 0xCA34] [peek16 0xC0CA]]
    flush $f
  }
  proc start {} {
    variable f
    set f [open "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out/dynamic_1f24.txt" w]
    debug set_watchpoint write_mem {0xCE80 0xD37F} {} {smdyn::wh}
  }
  foreach t {8 10 12 14} {after time $t {type " "}}
  after time 90.0 {smdyn::start}
  after time 113.0 {close $smdyn::f; exit}
}
