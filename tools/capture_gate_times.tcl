set throttle off
set renderer none
namespace eval smgt {
 proc save {p a n} {set f [open $p wb]; fconfigure $f -translation binary; puts -nonewline $f [debug read_block memory $a $n]; close $f}
 proc grab {tag} {
  set d /tmp/sm_gate_times; file mkdir $d
  smgt::save $d/ring_$tag.bin 0xE000 0x800
  smgt::save $d/d988_$tag.bin 0xD988 0x480
  set f [open $d/state_$tag.txt w]
  puts $f [format "time=%.9f PC=%04X X=%04X Y=%04X C0CA=%04X C0CC=%04X C0E8=%04X R4=%02X R10=%02X R23=%02X" [machine_info time] [reg PC] [peek16 0xC0BB] [peek16 0xC0C1] [peek16 0xC0CA] [peek16 0xC0CC] [peek16 0xC0E8] [vdpreg 4] [vdpreg 10] [vdpreg 23]]
  close $f
 }
 foreach t {8 10 12 14} {after time $t {type " "}}
 after time 152.00 {smgt::grab a}
 after time 152.25 {smgt::grab b}
 after time 152.50 {smgt::grab c}
 after time 152.75 {smgt::grab d}
 after time 153.00 {exit}
}
