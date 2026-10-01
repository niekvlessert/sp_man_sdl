set throttle off
set maxframeskip 0
set scale_factor 1
namespace eval smprobe {
  variable outdir "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out"
  variable do_patch 0
  if {[info exists ::env(SM_PATCH)]} { set do_patch $::env(SM_PATCH) }
  variable probe_addr 0xC500
  proc patch {} {
    variable do_patch
    variable probe_addr
    if {!$do_patch} { return }
    # Change exactly one 32-byte name-table row; 0xFF makes the intervention obvious.
    debug write_block VRAM $probe_addr [string repeat [binary format c 255] 32]
  }
  proc finish {} {
    variable outdir
    variable do_patch
    set tag [expr {$do_patch ? "B" : "A"}]
    screenshot -raw -size auto [file join $outdir "row_${tag}.png"]
    set rf [open [file join $outdir "row_${tag}_bytes.bin"] wb]
    fconfigure $rf -translation binary
    puts -nonewline $rf [debug read_block VRAM 0xC400 0x400]
    close $rf
    set sf [open [file join $outdir "row_${tag}_state.txt"] w]
    puts $sf [format "time=%.6f pc=%04X mode=%s R2=%02X R4=%02X R8=%02X R23=%02X patch=%d addr=%05X" [machine_info time] [reg PC] [get_screen_mode] [vdpreg 2] [vdpreg 4] [vdpreg 8] [vdpreg 23] $do_patch 0xC500]
    close $sf
    exit
  }
  after time 8.0 {type " "}
  after time 10.0 {type " "}
  after time 12.0 {type " "}
  after time 14.0 {type " "}
  after time 19.90 {smprobe::patch}
  after time 20.00 {smprobe::finish}
}
