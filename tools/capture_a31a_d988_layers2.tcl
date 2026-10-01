set throttle off
set renderer none
namespace eval smdl2 {
  variable outdir "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out/a31a_layers2"
  variable stage 0
  proc save {name addr size} {
    variable outdir
    file mkdir $outdir
    set f [open [file join $outdir $name] wb]
    fconfigure $f -translation binary
    puts -nonewline $f [debug read_block memory $addr $size]
    close $f
  }
  proc rawcopy {} {
    variable stage
    if {$stage != 0 || [peek16 0xC0CA] != 0xA31A || [peek 0xC0CE] != 4} { return }
    smdl2::save raw.bin 0xD988 0x480
    smdl2::save ring.bin 0xE000 0x800
    set stage 1
  }
  proc precomp {} {
    variable stage
    if {$stage != 1} { return }
    smdl2::save precomp.bin 0xD988 0x480
    smdl2::save e800.bin 0xE800 0x100
    set stage 2
  }
  proc final {} {
    variable stage
    variable outdir
    if {$stage != 2} { return }
    smdl2::save final.bin 0xD988 0x480
    set f [open [file join $outdir state.txt] w]
    puts $f [format "time=%.9f C0CC=%04X C0D2=%02X C0D5=%02X C0E8=%04X H2=%04X" [machine_info time] [peek16 0xC0CC] [peek 0xC0D2] [peek 0xC0D5] [peek16 0xC0E8] [reg HL2]]
    close $f
    set stage 3
    exit
  }
  proc arm {} {
    debug set_bp 0x6DBC {} {smdl2::rawcopy}
    debug set_bp 0x6EE7 {} {smdl2::precomp}
    debug set_bp 0x771D {} {smdl2::final}
  }
  after time 8.0 {type " "}
  after time 10.0 {type " "}
  after time 12.0 {type " "}
  after time 14.0 {type " "}
  after time 95.0 {smdl2::arm}
  after time 140.0 {exit}
}
