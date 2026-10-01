set throttle off
set renderer none
namespace eval sma288 {
  proc poll {} {
    if {[peek16 0xC0CA] == 0xA288 && [peek 0xC0CE] == 2} {
      set f [open "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out/a288_scrollstate.txt" w]
      puts $f [format "t=%.9f X=%06X Y=%06X C0D2=%02X C09B=%02X R2=%02X R23=%02X R18=%02X" [machine_info time] [expr {[peek 0xC0BA]|([peek 0xC0BB]<<8)|([peek 0xC0BC]<<16)}] [expr {[peek 0xC0C0]|([peek 0xC0C1]<<8)|([peek 0xC0C2]<<16)}] [peek 0xC0D2] [peek 0xC09B] [vdpreg 2] [vdpreg 23] [vdpreg 18]]
      close $f; exit; return
    }
    if {[machine_info time] > 110} {exit; return}
    after time 0.005 {sma288::poll}
  }
  proc fire {} {if {[machine_info time] < 110} {type " "; after time 0.20 {sma288::fire}}}
  after time 8 {type " "}; after time 10 {type " "}; after time 12 {type " "}; after time 14 {type " "}
  after time 15 {catch {trainer "Space Manbow" 9 22}; sma288::fire; sma288::poll}
}
