set throttle off
set renderer none
namespace eval smstamp {
 variable out $::env(SM_STAMP_CAPTURE)
 variable plan {}
 variable current {}
 variable stack 0
 variable f ""
 proc next {} {
  variable plan;variable current;variable stack;variable f
  if {![llength $plan]} {puts $f COMPLETE;close $f;after realtime 0 {exit};debug break;return}
  set current [lindex $plan 0];set plan [lrange $plan 1 end]
  lassign $current id typ tile x y fx fy pointers
  foreach {port mirror bank} {0x7000 0xf0f1 4 0x9000 0xf0f2 5 0xb000 0xf0f3 6} {poke $port $bank;poke $mirror $bank}
  for {set i 0} {$i<0x600} {incr i} {poke [expr {0xd800+$i}] [expr {($i*17)&255}]}
  for {set i 0} {$i<64} {incr i} {poke [expr {0xce80+$i}] 0}
  poke 0xce80 $typ;poke 0xce86 $tile
  poke 0xce87 [expr {$y&255}];poke 0xce88 [expr {$y>>8}]
  poke 0xce89 [expr {$x&255}];poke 0xce8a [expr {$x>>8}]
  poke 0xca1a $fy;poke 0xca1c $fx
  reg IX 0xce80;reg DE $pointers;reg IFF 0;reg SP $stack
  poke $stack 0;poke [expr {$stack+1}] 0x40;reg PC 0x7b65
 }
 proc returned {} {
  variable out;variable current;variable f
  set id [lindex $current 0]
  set q [open [file join $out "$id.bin"] wb];fconfigure $q -translation binary
  puts -nonewline $q [debug read_block memory 0xd800 0x600];close $q
  puts $f "RETURN $id";flush $f;next
 }
 proc start {} {
  variable out;variable stack;variable f
  source [file join $out plan.tcl];set f [open [file join $out execution.log] w]
  set stack [expr {[reg SP]-2}]
  vdpreg 0 [expr {[vdpreg 0]&0xef}];vdpreg 1 [expr {[vdpreg 1]&0xdf}]
  debug set_bp 0x4000 {} {smstamp::returned};next
 }
 foreach t {8 10 12 14} {after time $t {type " "}}
 after time 20 {smstamp::start}
 after time 60 {exit}
}
