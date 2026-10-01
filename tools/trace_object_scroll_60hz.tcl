set throttle off
set renderer none
namespace eval smo {
  variable f ""
  variable n 0
  proc snap {} {
    variable f; variable n
    set found -1; set ox 0; set oy 0
    for {set i 1} {$i < 16} {incr i} {
      set b [expr {0xCE80+$i*0x40}]
      if {[peek $b] == 0x20} {set found $i; set ox [peek16 [expr {$b+9}]]; set oy [peek16 [expr {$b+7}]]; break}
    }
    puts $f [format "%03d %.6f ptr=%04X X=%06X BB=%02X slot=%d ox=%04X oy=%04X CA1C=%04X" $n [machine_info time] [peek16 0xC0CA] [expr {[peek16 0xC0BA]|([peek 0xC0BC]<<16)}] [peek 0xC0BB] $found $ox $oy [peek16 0xCA1C]]
    flush $f; incr n
    if {$n < 160} {after time 0.0166667 {smo::snap}} else {close $f; exit}
  }
  proc start {} {variable f; set f [open "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out/object_scroll_60hz.txt" w]; smo::snap}
  after time 8.0 {type " "}; after time 10.0 {type " "}; after time 12.0 {type " "}; after time 14.0 {type " "}
  after time 99.0 {smo::start}
}
