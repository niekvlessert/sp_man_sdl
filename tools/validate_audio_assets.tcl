set throttle off
set renderer none
namespace eval smaudioval {
 variable out $::env(SM_AUDIO_CAPTURE)
 variable plan {}
 variable current {}
 variable f ""
 proc next {} {
  variable plan;variable current;variable f
  if {![llength $plan]} {puts $f COMPLETE;close $f;after realtime 0 {exit};debug break;return}
  set current [lindex $plan 0];set plan [lrange $plan 1 end]
  lassign $current ident kind value bank
  foreach {port mirror b} [list 0x7000 0xf0f1 28 0x9000 0xf0f2 29 0xb000 0xf0f3 $bank] {poke $port $b;poke $mirror $b}
  for {set i 0} {$i<0x300} {incr i} {poke [expr {0xc600+$i}] 0}
  poke 0xc8c8 $bank
  foreach name {AF BC DE HL AF2 BC2 DE2 HL2 IX IY} {reg $name 0}
  reg IFF 0;reg SP 0xf300;poke 0xf300 0;poke 0xf301 0x40
  if {$kind eq "sound"} {reg A $value;reg PC 0x693f}
  if {$kind eq "wave_lookup"} {reg A $value;reg IX 0xc6c0;reg PC 0x74b1}
  if {$kind eq "wave_copy"} {reg HL $value;reg DE 0x9800;reg PC 0x63fd}
 }
 proc returned {} {
  variable current;variable f
  lassign $current ident kind value bank
  if {$kind eq "sound"} {
   set data [binary encode hex [debug read_block memory 0xc600 0x200]]
   puts $f "$ident [peek 0xc8c8] $data"
  } elseif {$kind eq "wave_lookup"} {puts $f "$ident [peek16 0xc6e7]"} else {
   poke 0x9000 63
   set data [binary encode hex [debug read_block memory 0x9800 32]]
   puts $f "$ident $data"
  }
  flush $f;next
 }
 proc start {} {
  variable out;variable f
  source [file join $out plan.tcl];set f [open [file join $out execution.log] w]
  vdpreg 0 [expr {[vdpreg 0]&0xef}];vdpreg 1 [expr {[vdpreg 1]&0xdf}]
  debug set_bp 0x4000 {} {smaudioval::returned};next
 }
 after time 20 {smaudioval::start};after time 60 {exit}
}
