set throttle off
set renderer none
namespace eval smbg {
  variable outdir "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out"
  proc save {name addr size} {
    variable outdir
    set f [open [file join $outdir $name] wb]
    fconfigure $f -translation binary
    puts -nonewline $f [debug read_block memory $addr $size]
    close $f
  }
  proc dump {} {
    variable outdir
    smbg::save atomic_ring.bin 0xE000 0x800
    smbg::save atomic_d988.bin 0xD988 0x480
    smbg::save atomic_e800.bin 0xE800 0x100
    set f [open [file join $outdir atomic_state.txt] w]
    puts $f [format "time=%.9f PC=%04X C0CC=%04X C0D5=%02X C0E8=%04X CA14=%04X CA1C=%04X" [machine_info time] [reg PC] [peek16 0xC0CC] [debug read memory 0xC0D5] [peek16 0xC0E8] [peek16 0xCA14] [peek16 0xCA1C]]
    close $f
    exit
  }
  after time 8.0 {type " "}
  after time 10.0 {type " "}
  after time 12.0 {type " "}
  after time 14.0 {type " "}
  after time 20.0 {smbg::dump}
}
