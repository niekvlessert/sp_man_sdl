set throttle off
catch {set renderer SDL}
catch {set scale_factor 1}
namespace eval blue {
 variable fire 1
 proc shoot {} {variable fire; if {$fire && [machine_info time] < 145.0} {type " "; after time 0.12 {blue::shoot}}}
 proc wb {p d} {set f [open $p wb]; fconfigure $f -translation binary; puts -nonewline $f $d; close $f}
 proc dump {} {
  variable fire; set fire 0
  set d "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out"
  screenshot -raw -size auto "$d/t147_midband.png"
  blue::wb "$d/t147_midband_vram_full.bin" [debug read_block "physical VRAM" 0x00000 0x20000]
  blue::wb "$d/t147_midband_palette.bin" [debug read_block "VDP palette" 0 32]
  set f [open "$d/t147_midband_state.txt" w]
  puts $f [format "t=%.9f C0CA=%04X C0CC=%04X R2=%02X R4=%02X R5=%02X R6=%02X R10=%02X R11=%02X R23=%02X" [machine_info time] [peek16 0xC0CA] [peek16 0xC0CC] [vdpreg 2] [vdpreg 4] [vdpreg 5] [vdpreg 6] [vdpreg 10] [vdpreg 11] [vdpreg 23]]
  close $f; exit
 }
 after time 8 {type " "}; after time 10 {type " "}; after time 12 {type " "}; after time 14 {type " "}
 after time 15 {catch {trainer "Space Manbow" 9 22}; blue::shoot}
 after time 147.009 {blue::dump}
}
