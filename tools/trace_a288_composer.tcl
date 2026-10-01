set throttle off
set renderer none
namespace eval smac {
  proc hit {} {
    if {[peek16 0xC0CA] != 0xA288 || [peek 0xC0CE] != 2} {return}
    set h2 [reg HL2]
    puts [format "t=%.9f H2=%02X L2=%02X C0E6=%04X C0E8=%04X CA1C=%04X X=%04X" [machine_info time] [expr {($h2>>8)&255}] [expr {$h2&255}] [peek16 0xC0E6] [peek16 0xC0E8] [peek16 0xCA1C] [peek16 0xC0BA]]
    exit
  }
  proc arm {} {debug set_bp 0x6EE7 {} {smac::hit}}
  after time 8.0 {type " "}
  after time 10.0 {type " "}
  after time 12.0 {type " "}
  after time 14.0 {type " "}
  after time 80.0 {smac::arm}
  after time 120.0 {exit}
}
