set throttle off
set renderer none
namespace eval smtrace {
  variable outdir "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out"
  variable f ""
  variable hits 0
  proc hit {tag} {
    variable f; variable hits
    incr hits
    if {$hits <= 100} {
      puts $f [format "%.9f %-4s PC=%04X AF=%04X BC=%04X DE=%04X HL=%04X C0D2=%02X C09B=%02X" [machine_info time] $tag [reg PC] [reg AF] [reg BC] [reg DE] [reg HL] [debug read memory 0xC0D2] [debug read memory 0xC09B]]
      flush $f
    }
  }
  proc arm {} {
    variable outdir; variable f
    set f [open [file join $outdir ringcopy_regs.txt] w]
    foreach {a tag} {0x7755 7755 0x7758 7758 0x7761 7761 0x7794 7794} {
      debug set_bp $a {} "smtrace::hit $tag"
    }
  }
  proc done {} { variable f; if {$f ne ""} {close $f}; exit }
  after time 8.0 {type " "}
  after time 10.0 {type " "}
  after time 12.0 {type " "}
  after time 14.0 {type " "}
  after time 19.8 {smtrace::arm}
  after time 20.1 {smtrace::done}
}
