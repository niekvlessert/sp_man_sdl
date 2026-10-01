set throttle off
set renderer none
namespace eval smap {
 proc save {p a n} {set f [open $p wb]; fconfigure $f -translation binary; puts -nonewline $f [debug read_block memory $a $n]; close $f}
 proc hit {} {
  if {[peek16 0xC0CA] != 0xA288} {return}
  file mkdir /tmp/sm_a288_after
  smap::save /tmp/sm_a288_after/d988.bin 0xD988 0x480
  set f [open /tmp/sm_a288_after/state.txt w]; puts $f [format "time=%.9f PC=%04X C0CA=%04X E8=%04X" [machine_info time] [reg PC] [peek16 0xC0CA] [peek16 0xC0E8]]; close $f; exit
 }
 proc arm {} {debug set_bp 0x6F1F {} {smap::hit}}
 foreach t {8 10 12 14} {after time $t {type " "}}
 after time 75 {smap::arm}; after time 110 {exit}
}
