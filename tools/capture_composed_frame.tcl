set throttle off
set renderer none
namespace eval smcf {
  variable outdir "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out"
  variable ph -1
  variable pl -1
  variable armed 0
  proc save {name dbg addr size} {
    variable outdir
    set f [open [file join $outdir $name] wb]
    fconfigure $f -translation binary
    puts -nonewline $f [debug read_block $dbg $addr $size]
    close $f
  }
  proc composer {} {
    variable ph; variable pl; variable armed
    if {[machine_info time] < 20.02} { return }
    set h2 [reg HL2]
    set ph [expr {($h2 >> 8) & 255}]
    set pl [expr {$h2 & 255}]
    set armed 1
  }
  proc uploaded {} {
    variable outdir; variable ph; variable pl; variable armed
    if {!$armed || [machine_info time] < 20.02} { return }
    smcf::save composed_ring.bin memory 0xE000 0x800
    smcf::save composed_d988.bin memory 0xD988 0x480
    smcf::save composed_e800.bin memory 0xE800 0x100
    smcf::save composed_vram.bin "physical VRAM" 0 0x20000
    set f [open [file join $outdir composed_state.txt] w]
    puts $f [format "time=%.9f PC=%04X H2=%02X L2=%02X C0CC=%04X C0D2=%02X C0D5=%02X C0E8=%04X CA14=%04X CA1C=%04X R2=%02X R23=%02X" \
      [machine_info time] [reg PC] $ph $pl [peek16 0xC0CC] [debug read memory 0xC0D2] [debug read memory 0xC0D5] [peek16 0xC0E8] [peek16 0xCA14] [peek16 0xCA1C] [vdpreg 2] [vdpreg 23]]
    close $f
    exit
  }
  proc arm {} {
    debug set_bp 0x6EE7 {} {smcf::composer}
    debug set_bp 0x771D {} {smcf::uploaded}
  }
  after time 8.0 {type " "}
  after time 10.0 {type " "}
  after time 12.0 {type " "}
  after time 14.0 {type " "}
  after time 19.8 {smcf::arm}
  after time 20.2 {exit}
}
