set throttle on
set maxframeskip 0
catch {set renderer SDL}
catch {set scale_factor 1}
namespace eval smsmoke {
  variable outdir "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out"
  proc grab {} {
    variable outdir
    set f [open [file join $outdir rt_A_state.txt] w]
    puts $f [format "time=%.6f pc=%04X mode=%s renderer=%s" [machine_info time] [reg PC] [get_screen_mode] [set ::renderer]]
    for {set i 0} {$i < 32} {incr i} {catch {puts $f [format "R%02d=%02X" $i [vdpreg $i]]}}
    close $f
    screenshot -raw -size auto [file join $outdir rt_A.png]
    exit
  }
  after time 8.0 {type " "}
  after time 10.0 {type " "}
  after time 12.0 {type " "}
  after time 14.0 {type " "}
  after time 20.0 {smsmoke::grab}
}
