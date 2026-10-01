set throttle off
set maxframeskip 0
namespace eval smab {
  variable outdir "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out"
  variable probe_addr 0xC500
  proc capture_before {} {
    variable outdir
    screenshot -raw -size auto [file join $outdir ab_before.png]
    set vf [open [file join $outdir ab_vram_before.bin] wb]
    fconfigure $vf -translation binary -encoding binary
    puts -nonewline $vf [debug read_block VRAM 0 0x20000]
    close $vf
    set sf [open [file join $outdir ab_state.txt] w]
    puts $sf [format "time=%.6f pc=%04X mode=%s R2=%02X R23=%02X" [machine_info time] [reg PC] [get_screen_mode] [vdpreg 2] [vdpreg 23]]
    close $sf
  }
  proc patch_row {} {
    variable probe_addr
    set data [string repeat [binary format c 0] 32]
    debug write_block VRAM $probe_addr $data
  }
  proc capture_after {} {
    variable outdir
    screenshot -raw -size auto [file join $outdir ab_after.png]
    set vf [open [file join $outdir ab_vram_after.bin] wb]
    fconfigure $vf -translation binary -encoding binary
    puts -nonewline $vf [debug read_block VRAM 0 0x20000]
    close $vf
    exit
  }
  after time 8.0 {type " "}
  after time 10.0 {type " "}
  after time 12.0 {type " "}
  after time 14.0 {type " "}
  after time 20.000 {smab::capture_before}
  after time 20.001 {smab::patch_row}
  after time 20.100 {smab::capture_after}
}
