set throttle off
set renderer none
namespace eval smgate {
  proc save {p a n} {set f [open $p wb]; fconfigure $f -translation binary; puts -nonewline $f [debug read_block memory $a $n]; close $f}
  proc hit {} {
    if {[peek16 0xC0CA] != 0xA438 || [peek16 0xC0BB] != 0x1100 || [peek16 0xC0C1] != 0x0000} {return}
    set d /tmp/sm_a438_gate; file delete -force $d; file mkdir $d
    smgate::save $d/ring.bin 0xE000 0x800
    smgate::save $d/d988.bin 0xD988 0x480
    smgate::save $d/objects.bin 0xCE80 0x500
    set f [open $d/state.txt w]
    puts $f [format "time=%.9f PC=%04X X=%04X Y=%04X C0CA=%04X C0CC=%04X C0E8=%04X R4=%02X R10=%02X R23=%02X" [machine_info time] [reg PC] [peek16 0xC0BB] [peek16 0xC0C1] [peek16 0xC0CA] [peek16 0xC0CC] [peek16 0xC0E8] [vdpreg 4] [vdpreg 10] [vdpreg 23]]
    close $f; exit
  }
  proc arm {} {debug set_bp 0x6F1F {} {smgate::hit}}
  foreach t {8 10 12 14} {after time $t {type " "}}
  after time 145 {smgate::arm}; after time 165 {exit}
}
