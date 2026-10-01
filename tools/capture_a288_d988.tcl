set throttle off
set renderer none
namespace eval sma288d {
 proc save {p dev a n} {set f [open $p wb]; fconfigure $f -translation binary; puts -nonewline $f [debug read_block $dev $a $n]; close $f}
 proc hit {} {
  if {[peek16 0xC0CA] != 0xA288} {return}
  set d "/tmp/sm_a288_exact"; file delete -force $d; file mkdir $d
  sma288d::save "$d/d988.bin" memory 0xD988 0x480
  sma288d::save "$d/ring.bin" memory 0xE000 0x800
  sma288d::save "$d/objects.bin" memory 0xCE80 0x500
  set f [open "$d/state.txt" w]
  puts $f [format "time=%.9f X=%06X Y=%06X CA34=%04X C0CC=%04X D2=%02X D5=%02X R2=%02X R4=%02X R10=%02X R18=%02X R23=%02X" [machine_info time] [expr {[peek16 0xC0BA]|([peek 0xC0BC]<<16)}] [expr {[peek16 0xC0C0]|([peek 0xC0C2]<<16)}] [peek16 0xCA34] [peek16 0xC0CC] [peek 0xC0D2] [peek 0xC0D5] [vdpreg 2] [vdpreg 4] [vdpreg 10] [vdpreg 18] [vdpreg 23]]; close $f; exit
 }
 proc arm {} {debug set_bp 0x6EE7 {} {sma288d::hit}}
 foreach t {8 10 12 14} {after time $t {type " "}}
 after time 75 {sma288d::arm}; after time 110 {exit}
}
