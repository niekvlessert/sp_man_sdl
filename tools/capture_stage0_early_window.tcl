set throttle off
set renderer none
namespace eval smearly {
 variable wanted {256 336 1024 1534 1536}
 variable seen {}
 proc hit {} {
  variable wanted;variable seen
  if {[peek 0xf0f1]!=9 || [peek 0xca40]!=1 || [peek 0xca10]!=0} {return}
  set x [peek16 0xc0bb]
  if {$x ni $wanted || [dict exists $seen $x]} {return}
  dict set seen $x 1
  set out $::env(SM_EARLY_CAPTURE)
  set f [open [file join $out "d988_$x.bin"] wb];fconfigure $f -translation binary
  puts -nonewline $f [debug read_block memory 0xd988 1152];close $f
  if {$x==1536} {
   set f [open [file join $out ring_1536.bin] wb];fconfigure $f -translation binary
   puts -nonewline $f [debug read_block memory 0xe000 2048];close $f
  }
  set f [open [file join $out state.txt] a]
  puts $f [format "x=%d t=%.9f bank6000=%d ptr=%04X e8=%04X ca3a=%02X" $x [machine_info time] [peek 0xf0f1] [peek16 0xc0ca] [peek16 0xc0e8] [peek 0xca3a]];close $f
  if {[dict size $seen]==[llength $wanted]} {set f [open [file join $out complete.txt] w];puts $f COMPLETE;close $f;exit}
 }
 foreach t {8 10 12 14} {after time $t {type " "}}
 after time 10 {debug set_bp 0x6ee7 {} {smearly::hit}}
 after time 60 {exit}
}
