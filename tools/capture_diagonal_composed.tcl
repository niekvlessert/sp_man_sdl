set throttle off
set renderer none
namespace eval smdc {
  variable outdir "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out/diagonal_composed"
  variable armed 0
  variable ph -1
  variable pl -1
  proc save {name dbg addr size} {
    variable outdir
    file mkdir $outdir
    set f [open [file join $outdir $name] wb]
    fconfigure $f -translation binary
    puts -nonewline $f [debug read_block $dbg $addr $size]
    close $f
  }
  proc composer {} {
    variable armed; variable ph; variable pl
    if {[peek16 0xC0CA] != 0xA31A || [peek 0xC0CE] != 4} { return }
    set h2 [reg HL2]
    set ph [expr {($h2 >> 8) & 255}]
    set pl [expr {$h2 & 255}]
    set armed 1
  }
  proc uploaded {} {
    variable outdir; variable armed; variable ph; variable pl
    if {!$armed} { return }
    smdc::save ring.bin memory 0xE000 0x800
    smdc::save d988.bin memory 0xD988 0x480
    smdc::save e800.bin memory 0xE800 0x100
    smdc::save vram.bin "physical VRAM" 0 0x20000
    set f [open [file join $outdir state.txt] w]
    puts $f [format "time=%.9f PC=%04X H2=%02X L2=%02X C0CC=%04X C0D2=%02X C0D5=%02X C0E8=%04X CA14=%04X CA1C=%04X R2=%02X R23=%02X" [machine_info time] [reg PC] $ph $pl [peek16 0xC0CC] [peek 0xC0D2] [peek 0xC0D5] [peek16 0xC0E8] [peek16 0xCA14] [peek16 0xCA1C] [vdpreg 2] [vdpreg 23]]
    close $f
    exit
  }
  proc arm {} {
    debug set_bp 0x6EE7 {} {smdc::composer}
    debug set_bp 0x771D {} {smdc::uploaded}
  }
  after time 8.0 {type " "}
  after time 10.0 {type " "}
  after time 12.0 {type " "}
  after time 14.0 {type " "}
  after time 95.0 {smdc::arm}
  after time 140.0 {exit}
}
