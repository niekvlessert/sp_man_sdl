set throttle off
set renderer none
namespace eval feedback {
 variable plan {};variable current {};variable f "";variable sounds {}
 proc sound {} {
  variable sounds
  lappend sounds [expr {([reg AF]>>8)&255}]
 }
 proc next {} {
  variable plan;variable current;variable f;variable sounds
  if {![llength $plan]} {puts $f COMPLETE;close $f;after realtime 0 {exit};debug break;return}
  set current [lindex $plan 0];set plan [lrange $plan 1 end];set sounds {}
  lassign $current ident kind pc bank writes outputs registers
  foreach {port mirror value} [list 0x7000 0xf0f1 4 0x9000 0xf0f2 $bank 0xb000 0xf0f3 6] {poke $port $value;poke $mirror $value}
  for {set i 0} {$i<0x2000} {incr i} {poke [expr {0xc000+$i}] 0}
  foreach {address value} $writes {poke $address $value}
  foreach name {AF BC DE HL AF2 BC2 DE2 HL2 IX IY} {reg $name 0}
  reg IX 0xce80;reg IY 0xca40;reg IFF 0
  foreach {name value} $registers {reg $name $value}
  reg SP 0xf300;poke 0xf300 0;poke 0xf301 0x40;reg PC $pc
 }
 proc returned {} {
  variable current;variable f;variable sounds
  lassign $current ident kind pc bank writes outputs registers
  if {$kind eq "chain" && [peek 0xce80]==0} {set outputs {0xce80 0xce4d}}
  set values {};foreach address $outputs {lappend values [peek $address]}
  if {$kind eq "bar"} {lappend values [expr {([reg BC]>>8)&255}]}
  if {$kind in {health tower blue carrier hatch}} {set values [concat $values $sounds]}
  puts $f "$ident [join $values ,]";next
 }
 proc start {} {
  variable f
  source [file join $::env(SM_FEEDBACK) plan.tcl]
  set f [open [file join $::env(SM_FEEDBACK) execution.log] w]
  vdpreg 0 [expr {[vdpreg 0]&0xef}];vdpreg 1 [expr {[vdpreg 1]&0xdf}]
  debug set_bp 0x4af0 {} {feedback::sound}
  debug set_bp 0x4af5 {} {feedback::sound}
  debug set_bp 0x4000 {} {feedback::returned};next
 }
 after time 20 {feedback::start}
 after time 60 {exit}
}
