set throttle off
set renderer none
namespace eval smobj {
  variable out "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out/a336_objects.bin"
  proc hit {} {
    variable out
    if {[peek16 0xC0CA] != 0xA336 || [peek 0xC0CE] != 4} { return }
    set f [open $out wb]
    fconfigure $f -translation binary
    puts -nonewline $f [debug read_block memory 0xCE80 0x500]
    close $f
    set s [open "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out/a336_objects_state.txt" w]
    puts $s [format "time=%.9f CA1A=%04X CA1C=%04X C0CC=%04X" [machine_info time] [peek16 0xCA1A] [peek16 0xCA1C] [peek16 0xC0CC]]
    close $s
    exit
  }
  proc arm {} { debug set_bp 0x6EE7 {} {smobj::hit} }
  foreach t {8 10 12 14} {after time $t {type " "}}
  after time 95.0 {smobj::arm}
}
