set throttle off
set renderer none
namespace eval smbg {
 variable f ""; variable hits 0
 proc h {tag} {
  variable f; variable hits
  incr hits
  set iy [reg IY]
  set de [reg DE]
  set tid [expr {$de >= 0xD988 && $de <= 0xDDFF ? [peek $de] : 0xFF}]
  set prop [expr {$tid == 0xFF ? 0xFF : [peek [expr {0xDE00+$tid}]]}]
  puts $f [format "%.9f %-5s PC=%04X IX=%04X IY=%04X iy0=%02X iy1=%02X iy3=%02X DE=%04X tile=%02X prop=%02X CA47=%04X CA49=%04X" [machine_info time] $tag [reg PC] [reg IX] $iy [peek $iy] [peek [expr {$iy+1}]] [peek [expr {$iy+3}]] $de $tid $prop [peek16 0xCA47] [peek16 0xCA49]]
  flush $f
 }
 proc arm {} {
  variable f
  set f [open "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out/special_bg_hits.txt" w]
  debug set_bp 0x875F {} {smbg::h 875F}
  debug set_bp 0x87BF {} {smbg::h 87BF}
  debug set_bp 0x83A4 {} {smbg::h 83A4}
 }
 proc done {} {variable f; puts $f [format "hits=%d" $::smbg::hits]; close $f; exit}
 proc fire {} {if {[machine_info time] < 106} {type " "; after time 0.08 {smbg::fire}}}
 after time 8 {type " "}; after time 10 {type " "}; after time 12 {type " "}; after time 14 {type " "}
 after time 15 {smbg::fire}; after time 90 {smbg::arm}
 after time 90 {poke 0xCA49 0; poke 0xCA4A 0x00}
 after time 92 {poke 0xCA4A 0x02}; after time 94 {poke 0xCA4A 0x04}
 after time 96 {poke 0xCA4A 0x06}; after time 98 {poke 0xCA4A 0x08}
 after time 100 {poke 0xCA4A 0x0A}; after time 102 {poke 0xCA4A 0x0C}; after time 104 {poke 0xCA4A 0x0E}
 after time 106 {smbg::done}
}
