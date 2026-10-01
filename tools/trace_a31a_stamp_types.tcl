set throttle off
set renderer none
namespace eval smst {
  variable f ""
  variable hits 0
  proc stamp {} {
    variable f; variable hits
    if {[peek16 0xC0CA] != 0xA31A || [peek 0xC0CE] != 4} { return }
    incr hits
    set ix [reg IX]
    set typ [peek $ix]
    puts $f [format "%.9f PC=%04X IX=%04X type=%02X state=%02X f6=%02X xy=%04X,%04X CA1A=%04X CA1C=%04X C0CC=%04X" [machine_info time] [reg PC] $ix $typ [peek [expr {$ix+1}]] [peek [expr {$ix+6}]] [peek16 [expr {$ix+9}]] [peek16 [expr {$ix+7}]] [peek16 0xCA1A] [peek16 0xCA1C] [peek16 0xC0CC]]
    flush $f
    if {$hits >= 20} {close $f; exit}
  }
  proc arm {} {
    variable f
    set f [open "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out/a31a_stamp_types.txt" w]
    debug set_bp 0x7AC0 {} {smst::stamp}
  }
  after time 8.0 {type " "}
  after time 10.0 {type " "}
  after time 12.0 {type " "}
  after time 14.0 {type " "}
  after time 90.0 {smst::arm}
  after time 125.0 {exit}
}
