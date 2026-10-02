set throttle off
set renderer none
namespace eval h56 {
 variable f [open "/tmp/t56_hitgeom.txt" w]
 proc dump {} {
  variable f
  set ix [reg IX]
  if {[peek $ix] != 0x56 || [peek [expr {$ix+4}]] == 0} {return}
  puts $f [format "HIT t=%.6f ix=%04X towerXY=%04X,%04X hp=%02X dmg=%02X playerXY=%04X,%04X" [machine_info time] $ix [peek16 [expr {$ix+9}]] [peek16 [expr {$ix+7}]] [peek [expr {$ix+0x16}]] [peek [expr {$ix+4}]] [peek16 0xCA49] [peek16 0xCA47]]
  foreach a {0xCC40 0xCC60 0xCC80 0xCCA0 0xCCC0 0xCCE0 0xCD00 0xCB48} {
   if {[peek $a] != 0} {puts $f [format " SHOT %04X type=%02X sub=%02X frame=%02X dmg=%02X xy=%04X,%04X" $a [peek $a] [peek [expr {$a+3}]] [peek [expr {$a+5}]] [peek [expr {$a+6}]] [peek16 [expr {$a+9}]] [peek16 [expr {$a+7}]]]}
  }
  flush $f
 }
 proc fire {} {if {[machine_info time] < 141.0} {type " "; after time 0.08 {h56::fire}}}
}
debug set_bp 0x7C6B {} {h56::dump}
after time 8 {type " "}
after time 10 {type " "}
after time 12 {type " "}
after time 14 {type " "}
after time 15 {h56::fire}
after time 141 {close $h56::f; exit}
