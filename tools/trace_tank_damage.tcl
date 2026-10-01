set throttle off
set renderer none
namespace eval smdmg {
 variable f ""
 proc hit {} {
  variable f
  set a $::wp_last_address
  set off [expr {($a - 0xCE80) & 0x3F}]
  if {$off != 4 && $off != 0x16 && $off != 1 && $off != 0x18} {return}
  set base [expr {$a - $off}]; set slot [expr {($base - 0xCE80) / 0x40}]
  puts $f [format "%.6f slot=%02d type=%02X off=%02X val=%02X state=%02X hp=%02X dmg=%02X PC=%04X" [machine_info time] $slot [peek $base] $off $::wp_last_value [peek [expr {$base+1}]] [peek [expr {$base+0x16}]] [peek [expr {$base+4}]] [reg PC]]
  flush $f
 }
 proc arm {} {variable f; set f [open "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out/tank_damage.txt" w]; debug set_watchpoint write_mem {0xCE80 0xD37F} {} {smdmg::hit}}
 proc done {} {variable f; close $f; exit}
 proc fire {} {if {[machine_info time] < 106} {type " "; after time 0.08 {smdmg::fire}}}
 after time 8 {type " "}; after time 10 {type " "}; after time 12 {type " "}; after time 14 {type " "}
 after time 15 {smdmg::fire}; after time 90 {smdmg::arm}
 after time 90 {poke 0xCA49 0; poke 0xCA4A 0x00}
 after time 92 {poke 0xCA4A 0x02}; after time 94 {poke 0xCA4A 0x04}
 after time 96 {poke 0xCA4A 0x06}; after time 98 {poke 0xCA4A 0x08}
 after time 100 {poke 0xCA4A 0x0A}; after time 102 {poke 0xCA4A 0x0C}; after time 104 {poke 0xCA4A 0x0E}
 after time 106 {smdmg::done}
}
