set throttle off
set renderer none
namespace eval smf6 {
 variable f ""
 proc hit {} {
  variable f
  set a $::wp_last_address; set off [expr {($a-0xCE80)&0x3F}]; if {$off != 6} {return}
  set base [expr {$a-$off}]; if {[peek $base] != 0x20} {return}
  puts $f [format "%.9f slot=%d IX=%04X val=%02X state=%02X hp=%02X dmg=%02X PC=%04X raw=%s" [machine_info time] [expr {($base-0xCE80)/0x40}] $base $::wp_last_value [peek [expr {$base+1}]] [peek [expr {$base+0x16}]] [peek [expr {$base+4}]] [reg PC] [binary encode hex [debug read_block "memory" $base 0x28]]]; flush $f
 }
 proc hp {} {
  variable f
  set a $::wp_last_address; set off [expr {($a-0xCE80)&0x3F}]; if {$off != 0x16 || [reg PC] != 0x7C59} {return}
  set base [expr {$a-$off}]; if {[peek $base] != 0x20} {return}
  puts $f [format "%.9f HP slot=%d hp=%02X frame6=%02X PC=%04X" [machine_info time] [expr {($base-0xCE80)/0x40}] $::wp_last_value [peek [expr {$base+6}]] [reg PC]]; flush $f
 }
 proc start {} {variable f; set f [open "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out/type20_frame6.txt" w]; debug set_watchpoint write_mem {0xCE80 0xD37F} {} {smf6::hit; smf6::hp}}
 proc fire {} {if {[machine_info time] < 94} {type " "; after time 0.08 {smf6::fire}}}
 proc done {} {variable f; close $f; exit}
 after time 8 {type " "}; after time 10 {type " "}; after time 12 {type " "}; after time 14 {type " "}; after time 15 {smf6::fire}
 after time 89 {poke 0xCA49 0; poke 0xCA4A 0x00; smf6::start}; after time 92 {poke 0xCA4A 0x02}; after time 94 {smf6::done}
}
