# Original selector subsection only: stop before stream initialization at782C.
set throttle off
set renderer none
namespace eval smcheckpoints {
 variable out $::env(SM_CHECKPOINT_CAPTURE)
 variable plan {}
 variable current {}
 variable f ""
 proc next {} {
  variable plan;variable current;variable f
  if {![llength $plan]} {puts $f COMPLETE;close $f;after realtime 0 {exit};debug break;return}
  set current [lindex $plan 0];set plan [lrange $plan 1 end]
  lassign $current stage checkpoint
  foreach {port mirror bank} {0x7000 0xf0f1 9 0x9000 0xf0f2 10 0xb000 0xf0f3 27} {poke $port $bank;poke $mirror $bank}
  poke 0xca10 $stage;poke 0xca1e $checkpoint;reg IFF 0;reg SP 0xf300;reg PC 0x7803
 }
 proc selected {} {
  variable current;variable f
  lassign $current stage checkpoint
  puts $f [format "%d %d %04X %04X %04X %02X" $stage $checkpoint [peek16 0xc0ca] [peek16 0xca34] [peek16 0xc0c8] [peek 0xc0e1]];flush $f;next
 }
 proc start {} {
  variable out;variable f
  source [file join $out plan.tcl];set f [open [file join $out execution.log] w]
  vdpreg 0 [expr {[vdpreg 0]&0xef}];vdpreg 1 [expr {[vdpreg 1]&0xdf}]
  debug set_bp 0x782c {[peek 0xf0f1]==9} {smcheckpoints::selected};next
 }
 after time 20 {smcheckpoints::start}
 after time 60 {exit}
}
