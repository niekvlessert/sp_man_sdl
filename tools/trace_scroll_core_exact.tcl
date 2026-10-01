set throttle off
set renderer none
namespace eval smcorex {
 variable f ""; variable n 0
 proc log {tag} {
  variable f; variable n
  set t [machine_info time]
  if {$t < 103.35 || $t > 105.20} {return}
  incr n
  puts $f [format "%04d %.9f %-5s PC=%04X B6=%04X B8=%04X X=%s XV=%s Y=%s YV=%s PTR=%04X RC=%04X MODE=%02X PH=%02X" $n $t $tag [reg PC] [peek16 0xC0B6] [peek16 0xC0B8] [hex24 0xC0BA] [hex24 0xC0BD] [hex24 0xC0C0] [hex24 0xC0C3] [peek16 0xC0CA] [peek16 0xC0CC] [peek 0xC0CE] [peek 0xC0DA]]
  flush $f
 }
 proc hex24 {a} {return [format "%02X%02X%02X" [peek [expr {$a+2}]] [peek [expr {$a+1}]] [peek $a]]}
 proc arm {} {
  variable f
  set f [open "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out/scroll_core_exact.txt" w]
  foreach {a tag} {0x7AD2 AD2 0x7B09 B09 0x7C72 C72 0x7C08 C08 0x7858 CMD 0x789C PRE 0x7DB8 VWR 0x7E55 HWR 0x7EFC HUP} {debug set_bp $a {} "smcorex::log $tag"}
 }
 proc fire {} {if {[machine_info time] < 105.3} {type " "; after time 0.12 {smcorex::fire}}}
 after time 8 {type " "}; after time 10 {type " "}; after time 12 {type " "}; after time 14 {type " "}
 after time 15 {catch {trainer "Space Manbow" 9 22}; smcorex::arm; smcorex::fire}
 after time 105.3 {close $smcorex::f; exit}
}
