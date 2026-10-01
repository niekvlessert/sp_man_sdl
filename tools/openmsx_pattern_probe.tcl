set throttle off
set maxframeskip 0
set scale_factor 1
namespace eval smpat {
  variable outdir "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out"
  variable do_patch 0
  if {[info exists ::env(SM_PATCH)]} { set do_patch $::env(SM_PATCH) }
  proc perturb {} {
    variable do_patch
    if {$do_patch} {
      # One complete GRAPHIC2/SCREEN4 pattern quarter only.
      debug write_block VRAM 0x18000 [string repeat [binary format c 0] 0x800]
    }
    after frame {smpat::freeze}
  }
  proc freeze {} {
    set ::pause true
    after realtime 0.30 {smpat::finish}
  }
  proc finish {} {
    variable outdir
    variable do_patch
    set tag [expr {$do_patch ? "B" : "A"}]
    screenshot -raw -size auto [file join $outdir "patq_${tag}.png"]
    set sf [open [file join $outdir "patq_${tag}_state.txt"] w]
    puts $sf [format "time=%.6f pc=%04X mode=%s R2=%02X R4=%02X R8=%02X R23=%02X patch=%d" [machine_info time] [reg PC] [get_screen_mode] [vdpreg 2] [vdpreg 4] [vdpreg 8] [vdpreg 23] $do_patch]
    close $sf
    exit
  }
  after time 8.0 {type " "}
  after time 10.0 {type " "}
  after time 12.0 {type " "}
  after time 14.0 {type " "}
  after time 20.0 {smpat::perturb}
}
