set throttle off
set renderer none
namespace eval latecombat {
 variable plan {};variable current {};variable f ""
 proc next {} {
  variable plan;variable current;variable f
  if {![llength $plan]} {puts $f COMPLETE;close $f;after realtime 0 {exit};debug break;return}
  set current [lindex $plan 0];set plan [lrange $plan 1 end]
  lassign $current ident pc bank writes outputs
  foreach {port mirror value} [list 0x7000 0xf0f1 4 0x9000 0xf0f2 $bank 0xb000 0xf0f3 6] {poke $port $value;poke $mirror $value}
  for {set i 0} {$i<0x2000} {incr i} {poke [expr {0xc000+$i}] 0}
  foreach {address value} $writes {poke $address $value}
  foreach name {AF BC DE HL AF2 BC2 DE2 HL2 IX IY} {reg $name 0}
  reg IX 0xce80;reg IY 0xca40;reg IFF 0
  reg SP 0xf300;poke 0xf300 0;poke 0xf301 0x40;reg PC $pc
 }
 proc returned {} {
  variable current;variable f
  lassign $current ident pc bank writes outputs
  set values {};foreach address $outputs {lappend values [peek $address]}
  puts $f "$ident [join $values ,]";next
 }
 proc start {} {
  variable f
  source [file join $::env(SM_LATE_COMBAT) plan.tcl]
  set f [open [file join $::env(SM_LATE_COMBAT) execution.log] w]
  vdpreg 0 [expr {[vdpreg 0]&0xef}];vdpreg 1 [expr {[vdpreg 1]&0xdf}]
  debug set_bp 0x4000 {} {latecombat::returned};next
 }
 after time 20 {latecombat::start}
 after time 60 {exit}
}
