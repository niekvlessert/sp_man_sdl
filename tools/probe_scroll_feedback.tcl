set throttle off
set renderer none
namespace eval review {
 variable seen;array set seen {};variable killed 0;variable movement_times {}
 proc word {p} {expr {[peek $p]|([peek [expr {$p+1}]]<<8)}}
 proc save {name} {
  set d "$::env(SM_SCROLL_OUT)/$name";file mkdir $d
  foreach {file area addr size} {ram.bin memory 0xc000 0x3800 vram.bin {physical VRAM} 0 0x20000 palette.bin {VDP palette} 0 32} {
   set f [open "$d/$file" wb];fconfigure $f -translation binary;puts -nonewline $f [debug read_block $area $addr $size];close $f
  }
  set f [open "$d/state.txt" w];puts $f "time=[machine_info time]"
  foreach p {0xc0ba 0xc0c0 0xc0ca 0xc0b6 0xca34 0xca1a 0xca1c} {puts $f [format "%04X=%04X" $p [word $p]]}
  foreach p {0xc0ce 0xc0da 0xc0d2 0xc0b4 0xc0b5 0xca3a 0xce4c} {puts $f [format "%04X=%02X" $p [peek $p]]}
  for {set i 0} {$i<24} {incr i} {puts $f [format "R%d=%02X" $i [vdpreg $i]]};close $f
 }
 proc movement {} {variable movement_times;lappend movement_times [machine_info time]}
 debug set_bp 0x8108 {[peek 0xf0f2]==2 && [machine_info time]>20 && [machine_info time]<21} {review::movement}
 proc ring {} {
  variable seen
  set src [word 0xc0ca];set x [word 0xc0bb];set y [word 0xc0c1]
  if {$src>=0xa2c7&&$src<0xa2e5 || $src>=0xa336&&$src<0xa342} {
   set key [format "stream_%04X_%04X_%04X" $src $x $y];save $key
  }
 }
 debug set_bp 0x7af1 {[peek 0xf0f1]==9} {review::ring}
 debug set_bp 0x7b08 {[peek 0xf0f1]==9} {review::ring}
 proc tick {} {
  variable seen;variable killed
  poke 0xca53 3;poke 0xca54 3
  set src [word 0xc0ca];set x [word 0xc0bb];set y [word 0xc0c1]
  for {set p 0xce80} {$p<0xd380} {incr p 64} {
   set ty [peek $p]
   if {$ty==0x56&&!$killed&&[peek [expr {$p+10}]]<16&&[peek [expr {$p+1}]]==1} {poke [expr {$p+4}] 255;set killed 1}
   if {$ty==0x47 || $ty==0x1e} {
    set fr [peek [expr {$p+6}]];set key [format "actor_%02X_%02X_%02X" $ty $fr [peek [expr {$p+1}]]]
    if {![info exists seen($key)]} {set seen($key) 1;save $key}
   }
  }
  after time 0.067 {review::tick}
 }
 after time 8 {type " "};after time 10 {type " "};after time 12 {type " "};after time 14 {type " "}
 after time 15 {review::tick}
 after time 148 {set f [open "$::env(SM_SCROLL_OUT)/movement_times.txt" w];puts $f $review::movement_times;close $f;exit}
}
