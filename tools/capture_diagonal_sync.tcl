set throttle off
catch {set renderer SDL}
namespace eval smdiag {
  variable outdir "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out/diagonal_sync"
  proc dumpbin {name block addr len} {
    variable outdir
    set f [open [file join $outdir $name] wb]
    fconfigure $f -translation binary
    puts -nonewline $f [debug read_block $block $addr $len]
    close $f
  }
  proc poll {} {
    variable outdir
    set src [peek16 0xC0CA]
    set mode [peek 0xC0CE]
    if {$src == 0xA31A && $mode == 4} {
      file delete -force $outdir; file mkdir $outdir
      smdiag::dumpbin ring.bin memory 0xE000 0x800
      smdiag::dumpbin d988.bin memory 0xD988 0x480
      smdiag::dumpbin vram.bin "physical VRAM" 0 0x20000
      smdiag::dumpbin palette.bin "VDP palette" 0 32
      set f [open [file join $outdir state.txt] w]
      puts $f [format "time=%.9f PC=%04X C0CA=%04X C0CC=%04X C0CE=%02X X=%06X Y=%06X CA34=%04X" [machine_info time] [reg PC] $src [peek16 0xC0CC] $mode [expr {[peek 0xC0BA] | ([peek 0xC0BB]<<8) | ([peek 0xC0BC]<<16)}] [expr {[peek 0xC0C0] | ([peek 0xC0C1]<<8) | ([peek 0xC0C2]<<16)}] [peek16 0xCA34]]
      for {set r 0} {$r < 28} {incr r} {puts $f [format "R%02d=%02X" $r [vdpreg $r]]}
      close $f
      screenshot -raw -size auto [file join $outdir frame.png]
      after time 0.05 {exit}
      return
    }
    if {[machine_info time] > 140.0} {exit}
    after time 0.005 {smdiag::poll}
  }
  proc fire {} {if {[machine_info time] < 140.0} {type " "; after time 0.20 {smdiag::fire}}}
  after time 8.0 {type " "}
  after time 10.0 {type " "}
  after time 12.0 {type " "}
  after time 14.0 {type " "}
  after time 15.0 {catch {trainer "Space Manbow" 9 22}; smdiag::fire; smdiag::poll}
}
