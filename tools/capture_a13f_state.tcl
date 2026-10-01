set throttle off
set renderer none
namespace eval sma13f {
  variable done 0
  proc hit {} {
    variable done
    if {$done || [peek16 0xC0CA] != 0xA13F} {return}
    set done 1
    set dir "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out/a13f_state"
    file mkdir $dir
    foreach {name addr len} {ring.bin 0xE000 0x800 e800.bin 0xE800 0x100 d988.bin 0xD988 0x480} {
      set f [open [file join $dir $name] wb]; fconfigure $f -translation binary
      puts -nonewline $f [debug read_block memory $addr $len]; close $f
    }
    set s [open [file join $dir state.txt] w]
    puts $s [format "time=%.9f X=%06X Y=%06X B6=%04X B8=%04X DA=%02X C0CC=%04X D2=%02X D5=%02X E6=%04X E8=%04X CA34=%04X R2=%02X R18=%02X R23=%02X" [machine_info time] [expr {[peek16 0xC0BA]|([peek 0xC0BC]<<16)}] [expr {[peek16 0xC0C0]|([peek 0xC0C2]<<16)}] [peek16 0xC0B6] [peek16 0xC0B8] [peek 0xC0DA] [peek16 0xC0CC] [peek 0xC0D2] [peek 0xC0D5] [peek16 0xC0E6] [peek16 0xC0E8] [peek16 0xCA34] [vdpreg 2] [vdpreg 18] [vdpreg 23]]
    close $s; exit
  }
  after time 8 {type " "}; after time 10 {type " "}; after time 12 {type " "}; after time 14 {type " "}
  after time 45 {debug set_bp 0x6EE7 {} {sma13f::hit}}
  after time 60 {exit}
}
