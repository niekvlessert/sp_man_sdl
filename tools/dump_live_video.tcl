set throttle off
set renderer none
namespace eval smdump {
  variable outdir "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out"
  proc dump {} {
    variable outdir
    set f [open [file join $outdir live_vram.bin] wb]
    fconfigure $f -translation binary
    puts -nonewline $f [debug read_block "physical VRAM" 0 0x20000]
    close $f
    set p [open [file join $outdir live_palette.bin] wb]
    fconfigure $p -translation binary
    puts -nonewline $p [debug read_block "VDP palette" 0 32]
    close $p
    set s [open [file join $outdir live_video_state.txt] w]
    puts $s [format "time=%.6f pc=%04X mode=%s" [machine_info time] [reg PC] [get_screen_mode]]
    for {set i 0} {$i < 32} {incr i} {catch {puts $s [format "R%02d=%02X" $i [vdpreg $i]]}}
    close $s
    exit
  }
  after time 8.0 {type " "}
  after time 10.0 {type " "}
  after time 12.0 {type " "}
  after time 14.0 {type " "}
  after time 20.0 {smdump::dump}
}
