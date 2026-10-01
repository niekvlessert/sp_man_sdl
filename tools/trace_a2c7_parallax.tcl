set throttle off
set renderer none
namespace eval smpx {
  variable f ""
  variable n 0
  proc snap {} {
    variable f; variable n
    puts $f [format "%03d %.6f PTR=%04X X=%06X E8=%04X CA14=%04X D5=%02X" $n [machine_info time] [peek16 0xC0CA] [expr {[peek16 0xC0BA] | ([peek 0xC0BC]<<16)}] [peek16 0xC0E8] [peek16 0xCA14] [peek 0xC0D5]]
    flush $f
    incr n
    if {$n < 120} {after time 0.0166667 {smpx::snap}} else {close $f; exit}
  }
  proc start {} {
    variable f
    set f [open "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out/a2c7_parallax.txt" w]
    smpx::snap
  }
  foreach t {8 10 12 14} {after time $t {type " "}}
  after time 100.35 {smpx::start}
}
