# Synthetic boundary calls into unmodified cartridge code. RAM fixtures only.
set throttle off
set renderer none
namespace eval smobjects {
 variable out $::env(SM_OBJECT_CAPTURE)
 variable plan {}
 variable current {}
 variable stack 0
 variable f ""
 proc next {} {
  variable plan; variable current; variable stack; variable f
  if {![llength $plan]} {puts $f COMPLETE; close $f; after realtime 0 {exit}; debug break; return}
  set current [lindex $plan 0];set plan [lrange $plan 1 end]
  lassign $current kind arg hp enabled
  foreach {port mirror bank} {0x7000 0xf0f1 4 0x9000 0xf0f2 5 0xb000 0xf0f3 6} {poke $port $bank;poke $mirror $bank}
  for {set i 0} {$i<64} {incr i} {poke [expr {0xd800+$i}] 0}
  poke 0xd800 [expr {$arg&255}]
  reg IX 0xd800;reg HL 0xd800;reg IFF 0;reg SP $stack
  poke $stack 0;poke [expr {$stack+1}] 0x40
  if {$kind eq "metadata"} {reg PC 0x66f7}
  if {$kind eq "death"} {reg PC 0x7d0a}
  if {$kind eq "stamp"} {reg HL $arg;reg PC 0x7c01}
  if {$kind eq "phase"} {poke 0xd801 $arg;reg PC 0xa38e}
  if {$kind eq "sprite"} {poke 0xd806 $arg;reg PC 0xa45c}
  if {$kind eq "damage"} {
   poke 0xd804 $arg;poke 0xd814 $enabled;poke 0xd816 $hp
   reg F 0;reg PC 0x7c44
  }
  if {$kind eq "score"} {
   poke 0xcb0b [expr {$hp&255}];poke 0xcb0c [expr {$hp>>8}];poke 0xcb0d 0
   reg DE $arg;reg PC 0x7e03
  }
 }
 proc returned {} {
  variable current;variable f
  lassign $current kind arg hp enabled
  if {$kind eq "metadata"} {set result [binary encode hex [debug read_block memory 0xd813 4]]}
  if {$kind eq "death"} {set result [format "%04x" [reg HL]]}
  if {$kind eq "stamp"} {set result [binary encode hex [debug read_block memory 0xd700 $hp]]}
  if {$kind eq "phase"} {set result [format "%02x%02x%02x%02x" [peek 0xd811] [peek 0xd812] [peek 0xd817] [peek 0xd820]]}
  if {$kind eq "sprite"} {set result [format "%02x" [peek 0xd805]]}
  if {$kind eq "damage"} {set result [format "%02x,%02x,%d" [peek 0xd816] [peek 0xd804] [expr {[reg F]&1}]]}
  if {$kind eq "score"} {set result [binary encode hex [debug read_block memory 0xcb0b 3]]}
  puts $f "$kind $arg $hp $enabled $result";flush $f
  next
 }
 proc start {} {
  variable out;variable stack;variable f
  source [file join $out plan.tcl]
  set f [open [file join $out execution.log] w]
  set stack [expr {[reg SP]-2}]
  vdpreg 0 [expr {[vdpreg 0]&0xef}];vdpreg 1 [expr {[vdpreg 1]&0xdf}]
  debug set_bp 0x4000 {} {smobjects::returned}
  next
 }
 after time 8 {type " "}
 after time 10 {type " "}
 after time 12 {type " "}
 after time 14 {type " "}
 after time 20 {smobjects::start}
 after time 60 {exit}
}
