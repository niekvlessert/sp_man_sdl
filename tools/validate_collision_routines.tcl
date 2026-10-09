# Generic fixtures for pure geometry, hit assignment and link cleanup routines.
set throttle off
set renderer none
namespace eval smcollision {
 variable out $::env(SM_COLLISION_CAPTURE)
 variable plan {}
 variable current {}
 variable f ""
 proc next {} {
  variable plan;variable current;variable f
  if {![llength $plan]} {puts $f COMPLETE;close $f;after realtime 0 {exit};debug break;return}
  set current [lindex $plan 0];set plan [lrange $plan 1 end]
  lassign $current ident pc bank8000 bankA000 registers writes outputs
  foreach {port mirror bank} [list 0x7000 0xf0f1 4 0x9000 0xf0f2 $bank8000 0xb000 0xf0f3 $bankA000] {poke $port $bank;poke $mirror $bank}
  for {set i 0} {$i<0x500} {incr i} {poke [expr {0xce80+$i}] 0}
  for {set i 0} {$i<0x240} {incr i} {poke [expr {0xd460+$i}] 0}
  for {set i 0} {$i<0x100} {incr i} {poke [expr {0xd700+$i}] 0}
  foreach {address value} $writes {poke $address $value}
  foreach name {AF BC DE HL AF2 BC2 DE2 HL2 IX IY} {reg $name 0}
  foreach {name value} $registers {reg $name $value}
  reg IFF 0;reg SP 0xf300;poke 0xf300 0;poke 0xf301 0x40;reg PC $pc
 }
 proc returned {} {
  variable current;variable f
  lassign $current ident pc bank8000 bankA000 registers writes outputs
  set values {}
  foreach field $outputs {
   if {[string is integer -strict $field]} {lappend values [peek $field]} elseif {$field eq "carry"} {lappend values [expr {[reg F]&1}]} else {lappend values [reg $field]}
  }
  puts $f "$ident [join $values ,]";flush $f;next
 }
 proc start {} {
  variable out;variable f
  source [file join $out plan.tcl];set f [open [file join $out execution.log] w]
  vdpreg 0 [expr {[vdpreg 0]&0xef}];vdpreg 1 [expr {[vdpreg 1]&0xdf}]
  debug set_bp 0x4000 {} {smcollision::returned};next
 }
 after time 20 {smcollision::start}
 after time 60 {exit}
}
