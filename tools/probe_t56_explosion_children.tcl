set throttle off
set renderer none
namespace eval e56 {
 variable f [open "/tmp/t56_children.txt" w]
 variable seq 0
 proc forcehp {} {
  for {set i 0} {$i<20} {incr i} {set b [expr {0xCE80+$i*0x40}]; if {[peek $b]==0x56} {poke [expr {$b+0x16}] 2}}
 }
 proc snap {} {
  variable f; variable seq
  set t [machine_info time]
  for {set i 0} {$i<20} {incr i} {
   set b [expr {0xCE80+$i*0x40}];set ty [peek $b]
   if {$ty==0x56 || $ty==0x69} {puts $f [format "%03d %.6f slot=%02d type=%02X st=%02X f6=%02X xy=%04X,%04X t17=%02X t18=%02X" $seq $t $i $ty [peek [expr {$b+1}]] [peek [expr {$b+6}]] [peek16 [expr {$b+9}]] [peek16 [expr {$b+7}]] [peek [expr {$b+0x17}]] [peek [expr {$b+0x18}]]]}
  }
  flush $f;incr seq
  if {$t<141.7} {after time 0.016667 {e56::snap}} else {close $f;exit}
 }
 proc fire {} {if {[machine_info time]<140.7} {type " ";after time 0.08 {e56::fire}}}
}
after time 8 {type " "}
after time 10 {type " "}
after time 12 {type " "}
after time 14 {type " "}
after time 15 {e56::fire}
after time 138.80 {e56::forcehp;e56::snap}
