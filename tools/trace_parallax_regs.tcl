set throttle off
set renderer none
namespace eval smpar {
  variable outdir "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out"
  variable f ""
  variable hits 0
  proc hit {} {
    variable f; variable hits
    incr hits
    if {$hits <= 40} {
      set alt ""
      foreach r {AF2 BC2 DE2 HL2 AF' BC' DE' HL'} {
        if {![catch {set v [reg $r]}]} {append alt [format " %s=%04X" $r $v]}
      }
      puts $f [format "%.9f PC=%04X AF=%04X BC=%04X DE=%04X HL=%04X C0E8=%04X CA1C=%04X%s" \
        [machine_info time] [reg PC] [reg AF] [reg BC] [reg DE] [reg HL] [peek16 0xC0E8] [peek16 0xCA1C] $alt]
      flush $f
    }
  }
  proc arm {} {
    variable outdir; variable f
    set f [open [file join $outdir parallax_regs.txt] w]
    debug set_bp 0x6EE7 {} {smpar::hit}
  }
  proc done {} { variable f; if {$f ne ""} {close $f}; exit }
  after time 8.0 {type " "}
  after time 10.0 {type " "}
  after time 12.0 {type " "}
  after time 14.0 {type " "}
  after time 19.7 {smpar::arm}
  after time 20.1 {smpar::done}
}
