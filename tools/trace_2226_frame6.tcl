set throttle off
set renderer none
namespace eval smf {
 variable f ""
 proc wh {} {
  variable f
  set a $::wp_last_address; set off [expr {($a-0xCE80)&0x3F}]; if {$off != 6 && $off != 0x16} {return}
  set base [expr {$a-$off}]; set typ [peek $base]; if {$typ != 0x22 && $typ != 0x26} {return}
  puts $f [format "%.9f slot=%d type=%02X off=%02X val=%02X state=%02X frame6=%02X hp=%02X PC=%04X" [machine_info time] [expr {($base-0xCE80)/0x40}] $typ $off $::wp_last_value [peek [expr {$base+1}]] [peek [expr {$base+6}]] [peek [expr {$base+0x16}]] [reg PC]]; flush $f
 }
 proc stamp {} {
  variable f
  set ix [reg IX]; if {$ix<0xCE80 || $ix>0xD37F} {return}; set typ [peek $ix]; if {$typ != 0x22 && $typ != 0x26} {return}
  puts $f [format "%.9f STAMP slot=%d type=%02X state=%02X frame6=%02X hp=%02X HL=%04X BC=%04X DE=%04X" [machine_info time] [expr {($ix-0xCE80)/0x40}] $typ [peek [expr {$ix+1}]] [peek [expr {$ix+6}]] [peek [expr {$ix+0x16}]] [reg HL] [reg BC] [reg DE]]; flush $f
 }
 proc start {} {variable f; set f [open "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out/2226_frame6.txt" w]; debug set_watchpoint write_mem {0xCE80 0xD37F} {} {smf::wh}; debug set_bp 0x7AC0 {} {smf::stamp}}
 proc fire {} {if {[machine_info time] < 107} {type " "; after time 0.08 {smf::fire}}}
 proc done {} {variable f; close $f; exit}
 after time 8 {type " "}; after time 10 {type " "}; after time 12 {type " "}; after time 14 {type " "}; after time 15 {smf::fire}
 after time 94 {poke 0xCA49 0; poke 0xCA4A 0x08; smf::start}; after time 98 {poke 0xCA4A 0x0A}; after time 101 {poke 0xCA4A 0x0C}; after time 104 {poke 0xCA4A 0x0E}
 after time 107 {smf::done}
}
