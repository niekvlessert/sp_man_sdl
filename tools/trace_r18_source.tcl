set throttle off
set renderer none
namespace eval smp {
  variable f ""; variable prev -1; variable count 0; variable dumped 0
  proc hit {} {
    variable f; variable prev; variable count; variable dumped
    set v $::wp_last_value
    if {$prev >= 0 && ($v & 0x80) != 0} {
      set r [expr {$v & 0x3f}]
      if {$r == 18 && [reg PC] == 0x42B2} {
        if {!$dumped} {
          set g [open "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out/live_4200_4340.bin" wb]
          fconfigure $g -translation binary
          puts -nonewline $g [debug read_block memory 0x4200 0x140]
          close $g
          set h [open "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out/live_c940_ca10.bin" wb]
          fconfigure $h -translation binary
          puts -nonewline $h [debug read_block memory 0xC940 0xD0]
          close $h
          set dumped 1
        }
        puts $f [format "%.9f X=%06X Y=%06X ptr=%04X mode=%02X B6=%04X BB=%02X D2=%02X C09B=%02X R2=%02X R18=%02X R23=%02X" \
          [machine_info time] [expr {[peek16 0xC0BA]|([peek 0xC0BC]<<16)}] [expr {[peek16 0xC0C0]|([peek 0xC0C2]<<16)}] \
          [peek16 0xC0CA] [peek 0xC0CE] [peek16 0xC0B6] [peek 0xC0BB] [peek 0xC0D2] [peek 0xC09B] [vdpreg 2] $prev [vdpreg 23]]
        flush $f
        incr count
        if {$count >= 180} {close $f; exit}
      }
    }
    set prev $v
  }
  proc arm {} {
    variable f
    set f [open "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out/r18_source.txt" w]
    debug set_watchpoint write_io 0x99 {} {smp::hit}
  }
  after time 8.0 {type " "}; after time 10.0 {type " "}; after time 12.0 {type " "}; after time 14.0 {type " "}
  after time 96.0 {smp::arm}
  after time 125.0 {if {$smp::f ne ""} {close $smp::f}; exit}
}
