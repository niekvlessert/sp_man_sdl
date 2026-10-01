set throttle off
set renderer none
namespace eval sme {
 variable f ""; variable last ""; variable seq 0
 proc poll {} {
  variable f; variable last; variable seq
  set t [machine_info time]
  set cur [debug read_block "memory" 0xE000 0x800]
  if {$last ne "" && $cur ne $last} {
   set diffs {}
   for {set i 0} {$i < 0x800} {incr i} {
    binary scan [string index $last $i] cu ov
    binary scan [string index $cur $i] cu nv
    if {$ov != $nv} {lappend diffs [format "%03X:%02X>%02X" $i $ov $nv]}
   }
   puts $f [format "%04d %.9f n=%d %s" $seq $t [llength $diffs] [join $diffs ,]]
   flush $f; incr seq
  }
  set last $cur
  if {$t < 106.0} {after time 0.016667 {sme::poll}} else {close $f; exit}
 }
 proc fire {} {if {[machine_info time] < 106} {type " "; after time 0.08 {sme::fire}}}
 proc start {} {
  variable f; variable last
  set f [open "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out/e000_frame_deltas.txt" w]
  set last [debug read_block "memory" 0xE000 0x800]
  sme::poll
 }
 after time 8 {type " "}; after time 10 {type " "}; after time 12 {type " "}; after time 14 {type " "}
 after time 15 {sme::fire}
 after time 97.0 {poke 0xCA49 0; poke 0xCA4A 0x08; sme::start}
 after time 99.0 {poke 0xCA4A 0x0A}; after time 101.0 {poke 0xCA4A 0x0C}
 after time 103.0 {poke 0xCA4A 0x0E}
}
