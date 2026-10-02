set throttle off
set renderer none
namespace eval c56 {
 variable f [open "/tmp/t56_collision_exact.txt" w]
 proc hit {} {
  variable f
  set ix [reg IX]; set iy [reg IY]
  set tx [peek $ix]; set ty [peek $iy]
  if {$tx != 0x56 && $ty != 0x56} {return}
  puts $f [format "COL t=%.6f IX=%04X type=%02X xy=%04X,%04X f5=%02X IY=%04X type=%02X xy=%04X,%04X f5=%02X" [machine_info time] $ix $tx [peek16 [expr {$ix+9}]] [peek16 [expr {$ix+7}]] [peek [expr {$ix+5}]] $iy $ty [peek16 [expr {$iy+9}]] [peek16 [expr {$iy+7}]] [peek [expr {$iy+5}]]]
  flush $f
 }
 proc fire {} {if {[machine_info time] < 141.0} {type " "; after time 0.08 {c56::fire}}}
}
debug set_bp 0x813F {} {c56::hit}
after time 8 {type " "}
after time 10 {type " "}
after time 12 {type " "}
after time 14 {type " "}
after time 15 {c56::fire}
after time 141 {close $c56::f; exit}
