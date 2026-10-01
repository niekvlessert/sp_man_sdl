set throttle off
set renderer none
namespace eval smclean {
  variable armed 0
  proc u16 {a} {expr {[peek $a] | ([peek [expr {$a+1}]] << 8)}}
  proc u24 {a} {expr {[peek $a] | ([peek [expr {$a+1}]] << 8) | ([peek [expr {$a+2}]] << 16)}}
  proc savebin {path addr len} {set f [open $path wb]; fconfigure $f -translation binary; puts -nonewline $f [debug read_block memory $addr $len]; close $f}
  proc grab {} {
    set d "/tmp/sm_clean_a25f"; file delete -force $d; file mkdir $d
    smclean::savebin "$d/d988.bin" 0xD988 0x480
    smclean::savebin "$d/objects.bin" 0xCE80 0x500
    set f [open "$d/state.txt" w]
    puts $f [format "time=%.9f X=%06X Y=%06X C0BB=%02X C09B=%02X C0CA=%04X C0CC=%04X C0D2=%02X C0D5=%02X CA34=%04X R2=%02X R4=%02X R5=%02X R10=%02X R18=%02X R23=%02X" [machine_info time] [smclean::u24 0xC0B9] [smclean::u24 0xC0BC] [peek 0xC0BB] [peek 0xC09B] [smclean::u16 0xC0CA] [smclean::u16 0xC0CC] [peek 0xC0D2] [peek 0xC0D5] [smclean::u16 0xCA34] [vdpreg 2] [vdpreg 4] [vdpreg 5] [vdpreg 10] [vdpreg 18] [vdpreg 23]]
    close $f; exit
  }
  proc poll {} {
    set p [smclean::u16 0xC0CA]
    set x [smclean::u24 0xC0B9]
    if {$p == 0xA25F || ($x >= 0x0BF800 && $x <= 0x0C0000)} {smclean::grab; return}
    if {[machine_info time] < 125} {after time 0.016 {smclean::poll}} else {exit}
  }
  after time 8 {type " "}; after time 10 {type " "}; after time 12 {type " "}; after time 14 {type " "}
  after time 45 {smclean::poll}
}
