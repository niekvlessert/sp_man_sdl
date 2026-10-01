set throttle off
set renderer none
namespace eval smp {
 variable f ""; variable b6 -1; variable b8 -1
 proc wb6 {} {variable b6; set b6 $::wp_last_value}
 proc wb8 {} {variable b8; set b8 $::wp_last_value}
 proc hit {} {
  variable f; variable b6; variable b8
  if {[reg PC] != 0x7DED} {return}
  puts $f [format "%.9f addr=%04X val=%02X HL=%04X DE=%04X BC=%04X C0C8=%04X C0CA=%04X C0BB=%02X b6=%02X b8=%02X" [machine_info time] $::wp_last_address $::wp_last_value [reg HL] [reg DE] [reg BC] [peek16 0xC0C8] [peek16 0xC0CA] [peek 0xC0BB] $b6 $b8]; flush $f
 }
 proc arm {} {variable f; set f [open "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out/patch_7db8.txt" w]; debug set_watchpoint write_mem {0x7000 0x7000} {} {smp::wb6}; debug set_watchpoint write_mem {0x9000 0x9000} {} {smp::wb8}; debug set_watchpoint write_mem {0xE000 0xE7FF} {} {smp::hit}}
 proc done {} {variable f; close $f; exit}
 proc fire {} {if {[machine_info time] < 106} {type " "; after time 0.08 {smp::fire}}}
 after time 8 {type " "}; after time 10 {type " "}; after time 12 {type " "}; after time 14 {type " "}
 after time 15 {smp::fire}; after time 90 {smp::arm}
 after time 90 {poke 0xCA49 0; poke 0xCA4A 0x00}; after time 92 {poke 0xCA4A 0x02}; after time 94 {poke 0xCA4A 0x04}; after time 96 {poke 0xCA4A 0x06}; after time 98 {poke 0xCA4A 0x08}; after time 100 {poke 0xCA4A 0x0A}; after time 102 {poke 0xCA4A 0x0C}; after time 104 {poke 0xCA4A 0x0E}
 after time 106 {smp::done}
}
