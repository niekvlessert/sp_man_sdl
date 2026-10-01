set throttle off
set renderer none
namespace eval smdemoval {
 variable out $::env(SM_DEMO_CAPTURE)
 variable plan {}
 variable current {}
 variable frame 0
 variable f ""
 proc invoke {} {
  reg IFF 0;reg SP 0xf300;poke 0xf300 0;poke 0xf301 0x40;reg PC 0x789c
 }
 proc next {} {
  variable plan;variable current;variable frame;variable f;variable out
  if {![llength $plan]} {after realtime 0 {exit};debug break;return}
  set current [lindex $plan 0];set plan [lrange $plan 1 end]
  lassign $current ident root frames
  foreach {port mirror bank} {0x7000 0xf0f1 1 0x9000 0xf0f2 2 0xb000 0xf0f3 3} {poke $port $bank;poke $mirror $bank}
  poke 0xc91f 0;poke 0xc91a 1;poke16 0xc91d $root;poke 0xc907 0;poke 0xc908 0
  set frame 0;set f [open [file join $out "$ident.bin"] wb];fconfigure $f -translation binary
  invoke
 }
 proc returned {} {
  variable current;variable frame;variable f
  puts -nonewline $f [binary format c* [list [peek 0xc91a] [peek 0xc91d] [peek 0xc91e] [peek 0xc908] [peek 0xc907]]]
  incr frame
  if {$frame==[lindex $current 2]} {close $f;next} else {invoke}
 }
 proc start {} {
  variable out
  source [file join $out plan.tcl]
  vdpreg 0 [expr {[vdpreg 0]&0xef}];vdpreg 1 [expr {[vdpreg 1]&0xdf}]
  debug set_bp 0x4000 {} {smdemoval::returned};next
 }
 after time 20 {smdemoval::start};after time 60 {exit}
}
