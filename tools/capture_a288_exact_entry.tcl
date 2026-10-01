set throttle off
set renderer none
namespace eval smae {
  proc poll {} {
    if {[peek16 0xC0CA] == 0xA288 && [peek 0xC0CE] == 2} {
      set x [expr {[peek16 0xC0BA] | ([peek 0xC0BC] << 16)}]
      set y [expr {[peek16 0xC0C0] | ([peek 0xC0C2] << 16)}]
      puts [format "t=%.9f X=%06X Y=%06X B6=%04X B8=%04X C0CC=%04X C0DA=%02X C0D2=%02X C0D5=%02X C0E6=%04X C0E8=%04X CA34=%04X" [machine_info time] $x $y [peek16 0xC0B6] [peek16 0xC0B8] [peek16 0xC0CC] [peek 0xC0DA] [peek 0xC0D2] [peek 0xC0D5] [peek16 0xC0E6] [peek16 0xC0E8] [peek16 0xCA34]]
      exit
    }
    after time 0.0005 {smae::poll}
  }
  after time 8.0 {type " "}
  after time 10.0 {type " "}
  after time 12.0 {type " "}
  after time 14.0 {type " "}
  after time 80.0 {smae::poll}
  after time 120.0 {exit}
}
