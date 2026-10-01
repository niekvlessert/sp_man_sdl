set throttle off
set renderer none
namespace eval sma288 {
  proc hit {} {
    if {[peek16 0xC0CA] != 0xA288} { return }
    set dir "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out/a288_state"
    file mkdir $dir
    foreach {name addr size} {objects.bin 0xCE80 0x500 ring.bin 0xE000 0x800 e800.bin 0xE800 0x100} {
      set f [open [file join $dir $name] wb]; fconfigure $f -translation binary
      puts -nonewline $f [debug read_block memory $addr $size]; close $f
    }
    set f [open [file join $dir state.txt] w]
    puts $f [format "time=%.9f X=%06X Y=%06X B6=%04X B8=%04X DA=%02X CA34=%04X C0CC=%04X D2=%02X D5=%02X E8=%04X" [machine_info time] [expr {[peek16 0xC0BA]|([peek 0xC0BC]<<16)}] [expr {[peek16 0xC0C0]|([peek 0xC0C2]<<16)}] [peek16 0xC0B6] [peek16 0xC0B8] [peek 0xC0DA] [peek16 0xCA34] [peek16 0xC0CC] [peek 0xC0D2] [peek 0xC0D5] [peek16 0xC0E8]]
    close $f; exit
  }
  proc arm {} { debug set_bp 0x6EE7 {} {sma288::hit} }
  foreach t {8 10 12 14} {after time $t {type " "}}
  after time 75.0 {sma288::arm}
  after time 110.0 {exit}
}
