set throttle off
set renderer none
namespace eval smnt {
 variable f ""; variable bank6 -1; variable bank8 -1
 proc b6 {} {variable bank6; set bank6 $::wp_last_value}
 proc b8 {} {variable bank8; set bank8 $::wp_last_value}
 proc hit {} {
  variable f; variable bank6; variable bank8
  set pc [reg PC]
  if {($pc >= 0x6E00 && $pc <= 0x7800)} {return}
  set b [expr {$pc < 0x8000 ? $bank6 : $bank8}]
  puts $f [format "%.9f bank=%02X PC=%04X addr=%04X val=%02X cam=%04X r4=%02X" [machine_info time] $b $pc $::wp_last_address $::wp_last_value [peek16 0xCA12] [vdpreg 4]]
  flush $f
 }
 proc arm {} {
  variable f
  set f [open "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out/tank_nt_mutations.txt" w]
  debug set_watchpoint write_mem {0x7000 0x7000} {} {smnt::b6}
  debug set_watchpoint write_mem {0x9000 0x9000} {} {smnt::b8}
  debug set_watchpoint write_mem {0xD988 0xDDFF} {} {smnt::hit}
 }
 proc done {} {variable f; close $f; exit}
 proc fire {} {if {[machine_info time] < 106} {type " "; after time 0.08 {smnt::fire}}}
 after time 8 {type " "}; after time 10 {type " "}; after time 12 {type " "}; after time 14 {type " "}
 after time 15 {smnt::fire}
 after time 97.5 {smnt::arm}
 after time 97.5 {poke 0xCA49 0; poke 0xCA4A 0x08}
 after time 99.0 {poke 0xCA4A 0x0A}; after time 101.0 {poke 0xCA4A 0x0C}
 after time 103.0 {poke 0xCA4A 0x0E}
 after time 106 {smnt::done}
}
