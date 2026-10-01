set throttle off
set renderer none
namespace eval smplayer {
 variable plan {};variable current {};variable f "";variable selecting 0
 proc next {} {
  variable plan;variable current;variable f;variable selecting
  if {![llength $plan]} {puts $f COMPLETE;close $f;after realtime 0 {exit};debug break;return}
  set current [lindex $plan 0];set plan [lrange $plan 1 end]
  lassign $current ident pc writes outputs
  foreach {port mirror bank} {0x7000 0xf0f1 4 0x9000 0xf0f2 2 0xb000 0xf0f3 3} {poke $port $bank;poke $mirror $bank}
  for {set i 0} {$i<0x300} {incr i} {poke [expr {0xca40+$i}] 0}
  poke 0xc900 0;poke 0xc908 0
  foreach {address value} $writes {poke $address $value}
  foreach name {AF BC DE HL AF2 BC2 DE2 HL2 IX IY} {reg $name 0}
  reg IX 0xcc40;reg IY 0xcb40;reg B 3
  reg IFF 0;reg SP 0xf300;poke 0xf300 0;poke 0xf301 0x40
  set selecting [expr {$pc==0x8108}]
  reg PC [expr {$selecting?0x820d:$pc}]
 }
 proc returned {} {
  variable current;variable f;variable selecting
  lassign $current ident pc writes outputs
  if {$selecting} {
   set selecting 0;reg SP 0xf300;reg PC 0x8108;return
  }
  set values {};foreach address $outputs {lappend values [peek $address]}
  puts $f "$ident [join $values ,]";next
 }
 proc start {} {
  variable f
  source [file join $::env(SM_PLAYER_CAPTURE) plan.tcl]
  set f [open [file join $::env(SM_PLAYER_CAPTURE) execution.log] w]
  vdpreg 0 [expr {[vdpreg 0]&0xef}];vdpreg 1 [expr {[vdpreg 1]&0xdf}]
  debug set_bp 0x4000 {} {smplayer::returned};next
 }
 after time 20 {smplayer::start}
 after time 60 {exit}
}
