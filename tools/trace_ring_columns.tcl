set throttle off
set renderer none
namespace eval smring {
  variable outdir "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out"
  variable f ""
  proc hit {} {
    variable f
    # $7DED is the first of the 24 row writes for one streamed tile column.
    if {[reg PC] != 0x7DED} { return }
    puts $f [format "%.9f ring=%02X val=%02X srcDE=%04X C0C8=%04X C0CA=%04X C0CC=%04X C0BB=%02X" \
      [machine_info time] [expr {$::wp_last_address & 0x3f}] $::wp_last_value [reg DE] \
      [peek16 0xC0C8] [peek16 0xC0CA] [peek16 0xC0CC] [debug read memory 0xC0BB]]
    flush $f
  }
  proc arm {} {
    variable outdir; variable f
    set f [open [file join $outdir ring_columns_trace.txt] w]
    debug set_watchpoint write_mem {0xE000 0xE7FF} {} {smring::hit}
  }
  proc done {} { variable f; if {$f ne ""} {close $f}; exit }
  after time 8.0 {type " "}
  after time 10.0 {type " "}
  after time 12.0 {type " "}
  after time 14.0 {type " "}
  after time 14.05 {smring::arm}
  after time 20.05 {smring::done}
}
