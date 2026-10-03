set throttle off
set renderer none
namespace eval parity {
 proc word {p} {expr {[peek $p]|([peek [expr {$p+1}]]<<8)}}
 proc wb {path data} {set f [open $path wb];fconfigure $f -translation binary;puts -nonewline $f $data;close $f}
 proc snap {} {
  set d $::env(SM_PARITY_OUT);file mkdir $d
  wb "$d/ram.bin" [debug read_block memory 0xc000 0x3800]
  wb "$d/palette.bin" [debug read_block "VDP palette" 0 32]
  wb "$d/vram.bin" [debug read_block "physical VRAM" 0 0x20000]
  set f [open "$d/state.txt" w]
  foreach p {0xca19 0xc0d2 0xc0ce 0xc0b4 0xca3a 0xca3b 0xce48} {puts $f [format "%04X=%02X" $p [peek $p]]}
  foreach p {0xca1a 0xca1c 0xc0ca 0xc0e8} {puts $f [format "%04X=%04X" $p [word $p]]}
  for {set i 0} {$i<24} {incr i} {puts $f [format "R%d=%02X" $i [vdpreg $i]]}
  close $f;exit
 }
 proc safe {} {poke 0xca53 3;poke 0xca54 3;after time 0.1 {parity::safe}}
 after time 8 {type " "};after time 10 {type " "};after time 12 {type " "};after time 14 {type " "}
 after time 15 {parity::safe}
 set snaptime 123
 if {[info exists ::env(SM_PARITY_TIME)]} {set snaptime $::env(SM_PARITY_TIME)}
 after time $snaptime {parity::snap}
}
