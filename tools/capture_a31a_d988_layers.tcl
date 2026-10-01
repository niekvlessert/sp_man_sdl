set throttle off
set renderer none
namespace eval smdl {
  variable outdir "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out/a31a_layers"
  variable armed 0
  proc save {name addr size} {
    variable outdir
    file mkdir $outdir
    set f [open [file join $outdir $name] wb]
    fconfigure $f -translation binary
    puts -nonewline $f [debug read_block memory $addr $size]
    close $f
  }
  proc rawcopy {} {
    variable armed
    if {[peek16 0xC0CA] != 0xA31A || [peek 0xC0CE] != 4} { return }
    set armed 1
    smdl::save d988_after_7755.bin 0xD988 0x480
    smdl::save ring.bin 0xE000 0x800
  }
  proc precomp {} {
    variable armed
    if {!$armed || [peek16 0xC0CA] != 0xA31A} { return }
    smdl::save d988_before_6ee7.bin 0xD988 0x480
    smdl::save e800.bin 0xE800 0x100
  }
  proc final {} {
    variable armed
    if {!$armed} { return }
    smdl::save d988_final.bin 0xD988 0x480
    set f [open [file join $smdl::outdir state.txt] w]
    puts $f [format "time=%.9f C0CC=%04X C0D2=%02X C0D5=%02X C0E8=%04X H2=%04X" [machine_info time] [peek16 0xC0CC] [peek 0xC0D2] [peek 0xC0D5] [peek16 0xC0E8] [reg HL2]]
    close $f
    exit
  }
  proc arm {} {
    debug set_bp 0x6DBC {} {smdl::rawcopy}
    debug set_bp 0x6EE7 {} {smdl::precomp}
    debug set_bp 0x771D {} {smdl::final}
  }
  after time 8.0 {type " "}
  after time 10.0 {type " "}
  after time 12.0 {type " "}
  after time 14.0 {type " "}
  after time 95.0 {smdl::arm}
  after time 140.0 {exit}
}
