set throttle off
set renderer none
namespace eval smgo {
 proc save {p a n} {set f [open $p wb]; fconfigure $f -translation binary; puts -nonewline $f [debug read_block memory $a $n]; close $f}
 proc grab {} {
   set d /tmp/sm_gate_obj; file delete -force $d; file mkdir $d
   smgo::save $d/objects.bin 0xCE80 0x500
   smgo::save $d/d988.bin 0xD988 0x480
   set f [open $d/state.txt w]
   puts $f [format "time=%.9f X=%04X Y=%04X CA34=%04X C0CA=%04X C0CC=%04X B4=%02X B5=%02X CA10=%02X CA19=%02X" [machine_info time] [peek16 0xC0BB] [peek16 0xC0C1] [peek16 0xCA34] [peek16 0xC0CA] [peek16 0xC0CC] [peek 0xC0B4] [peek 0xC0B5] [peek 0xCA10] [peek 0xCA19]]
   close $f; exit
 }
 foreach t {8 10 12 14} {after time $t {type " "}}
 after time 152.50 {smgo::grab}
}
