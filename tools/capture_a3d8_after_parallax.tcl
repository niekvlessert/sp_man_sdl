set throttle off
set renderer none
namespace eval sma3d8 {
  proc save {p a n} {set f [open $p wb]; fconfigure $f -translation binary; puts -nonewline $f [debug read_block memory $a $n]; close $f}
  proc hit {} {
    if {[peek16 0xC0CA] != 0xA3D8 || [peek16 0xC0BB] != 0x100C} {return}
    file mkdir /tmp/sm_a3d8_after
    sma3d8::save /tmp/sm_a3d8_after/d988.bin 0xD988 0x480
    set f [open /tmp/sm_a3d8_after/state.txt w]
    puts $f [format "time=%.9f PC=%04X C0CA=%04X C0CC=%04X C0E8=%04X R4=%02X R10=%02X R23=%02X" [machine_info time] [reg PC] [peek16 0xC0CA] [peek16 0xC0CC] [peek16 0xC0E8] [vdpreg 4] [vdpreg 10] [vdpreg 23]]
    close $f; exit
  }
  proc arm {} {debug set_bp 0x6F1F {} {sma3d8::hit}}
  foreach t {8 10 12 14} {after time $t {type " "}}
  after time 132 {sma3d8::arm}; after time 150 {exit}
}
