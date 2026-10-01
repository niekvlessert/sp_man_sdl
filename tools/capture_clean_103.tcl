set throttle off
set renderer none
namespace eval smclean {
  proc savebin {path addr len} {
    set f [open $path wb]; fconfigure $f -translation binary
    puts -nonewline $f [debug read_block "memory" $addr $len]; close $f
  }
  proc grab {} {
    set d "/tmp/sm_clean_103"; file delete -force $d; file mkdir $d
    smclean::savebin "$d/d988.bin" 0xD988 0x480
    smclean::savebin "$d/objects.bin" 0xCE80 0x500
    set f [open "$d/state.txt" w]
    puts $f [format "time=%.9f X=%06X Y=%06X C0BB=%02X C09B=%02X C0CA=%04X C0CC=%04X C0D2=%02X C0D5=%02X CA34=%04X R2=%02X R4=%02X R5=%02X R10=%02X R18=%02X R23=%02X" [machine_info time] [peek24 0xC0B9] [peek24 0xC0BC] [peek 0xC0BB] [peek 0xC09B] [peek16 0xC0CA] [peek16 0xC0CC] [peek 0xC0D2] [peek 0xC0D5] [peek16 0xCA34] [vdpreg 2] [vdpreg 4] [vdpreg 5] [vdpreg 10] [vdpreg 18] [vdpreg 23]]
    close $f; exit
  }
  after time 8 {type " "}; after time 10 {type " "}; after time 12 {type " "}; after time 14 {type " "}
  after time 103.01 {smclean::grab}
}
