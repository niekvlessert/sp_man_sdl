set throttle off
set renderer none
namespace eval smtrace {
  variable outdir "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out"
  variable f ""
  variable hits 0
  proc hit {tag} {
    variable f; variable hits
    incr hits
    if {$hits <= 200} {
      puts $f [format "%.9f %-5s PC=%04X AF=%04X BC=%04X DE=%04X HL=%04X IX=%04X IY=%04X C0E8=%04X CA1C=%04X" [machine_info time] $tag [reg PC] [reg AF] [reg BC] [reg DE] [reg HL] [reg IX] [reg IY] [peek16 0xC0E8] [peek16 0xCA1C]]
      flush $f
    }
  }
  proc arm {} {
    variable outdir; variable f
    set f [open [file join $outdir namebuffer_trace.txt] w]
    debug set_bp 0x8EE7 {} {smtrace::hit 8EE7}
    debug set_bp 0x96C6 {} {smtrace::hit 96C6}
    debug set_bp 0x9755 {} {smtrace::hit 9755}
    debug set_bp 0x9761 {} {smtrace::hit 9761}
    debug set_bp 0x9794 {} {smtrace::hit 9794}
  }
  proc done {} { variable f; if {$f ne ""} {close $f}; exit }
  after time 8.0 {type " "}
  after time 10.0 {type " "}
  after time 12.0 {type " "}
  after time 14.0 {type " "}
  after time 19.8 {smtrace::arm}
  after time 20.1 {smtrace::done}
}
