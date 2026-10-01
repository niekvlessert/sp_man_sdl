set throttle off
set renderer none
namespace eval smtrace {
  variable outdir "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out"
  variable f ""
  variable hits 0
  proc hit {} {
    variable f; variable hits
    incr hits
    if {$hits <= 300} {
      puts $f [format "%.9f PC=%04X AF=%04X BC=%04X DE=%04X HL=%04X IX=%04X IY=%04X addr=%04X val=%02X" [machine_info time] [reg PC] [reg AF] [reg BC] [reg DE] [reg HL] [reg IX] [reg IY] $::wp_last_address $::wp_last_value]
      flush $f
    }
  }
  proc arm {} {
    variable outdir; variable f
    set f [open [file join $outdir d988_write_trace.txt] w]
    debug set_watchpoint write_mem {0xD988 0xDE07} {} {smtrace::hit}
  }
  proc done {} { variable f; if {$f ne ""} {close $f}; exit }
  after time 8.0 {type " "}
  after time 10.0 {type " "}
  after time 12.0 {type " "}
  after time 14.0 {type " "}
  after time 19.8 {smtrace::arm}
  after time 20.1 {smtrace::done}
}
