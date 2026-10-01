set throttle off
set renderer none
namespace eval smstamp {
 variable f ""
 proc log {tag} {
  variable f
  set ix [reg IX]; set sp [reg SP]; set ret [peek16 $sp]
  set typ [expr {$ix >= 0xCE80 && $ix <= 0xD37F ? [peek $ix] : 0xFF}]
  set st  [expr {$typ == 0xFF ? 0xFF : [peek [expr {$ix+1}]]}]
  puts $f [format "%.9f %s ret=%04X IX=%04X type=%02X state=%02X x=%04X y=%04X AF=%04X BC=%04X DE=%04X HL=%04X" [machine_info time] $tag $ret $ix $typ $st [expr {$typ==0xFF?0:[peek16 [expr {$ix+7}]]}] [expr {$typ==0xFF?0:[peek16 [expr {$ix+9}]]}] [reg AF] [reg BC] [reg DE] [reg HL]]
  flush $f
 }
 proc arm {} {
  variable f
  set f [open "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out/tile_stamper_calls.txt" w]
  debug set_bp 0x7A43 {} {smstamp::log 7A43}
  debug set_bp 0x7A96 {} {smstamp::log 7A96}
  debug set_bp 0x7AC0 {} {smstamp::log 7AC0}
 }
 proc done {} {variable f; close $f; exit}
 proc fire {} {if {[machine_info time] < 106} {type " "; after time 0.08 {smstamp::fire}}}
 after time 8 {type " "}; after time 10 {type " "}; after time 12 {type " "}; after time 14 {type " "}
 after time 15 {smstamp::fire}; after time 90 {smstamp::arm}
 after time 90 {poke 0xCA49 0; poke 0xCA4A 0x00}
 after time 92 {poke 0xCA4A 0x02}; after time 94 {poke 0xCA4A 0x04}
 after time 96 {poke 0xCA4A 0x06}; after time 98 {poke 0xCA4A 0x08}
 after time 100 {poke 0xCA4A 0x0A}; after time 102 {poke 0xCA4A 0x0C}; after time 104 {poke 0xCA4A 0x0E}
 after time 106 {smstamp::done}
}
