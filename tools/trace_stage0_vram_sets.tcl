set throttle off
set renderer none
namespace eval smsets {
  variable outdir "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out/stage0_sets"
  variable f ""
  variable seq 0
  proc snap {} {
    variable outdir; variable f; variable seq
    file mkdir $outdir
    set t [machine_info time]
    set name [format "vram_%04d.bin" $seq]
    set vf [open [file join $outdir $name] wb]
    fconfigure $vf -translation binary
    puts -nonewline $vf [debug read_block "physical VRAM" 0 0x20000]
    close $vf
    puts $f [format "%04d %.6f PC=%04X CA10=%02X C0CA=%04X C0CC=%04X C0CD=%02X CA34=%02X R2=%02X R4=%02X R8=%02X R23=%02X" $seq $t [reg PC] [peek 0xCA10] [peek16 0xC0CA] [peek16 0xC0CC] [peek 0xC0CD] [peek 0xCA34] [vdpreg 2] [vdpreg 4] [vdpreg 8] [vdpreg 23]]
    flush $f
    incr seq
    if {$t < 170.0} {after time 1.0 {smsets::snap}} else {close $f; exit}
  }
  proc fire {} {if {[machine_info time] < 170.0} {type " "; after time 0.20 {smsets::fire}}}
  proc start {} {
    variable outdir; variable f
    file mkdir $outdir
    set f [open [file join $outdir state.txt] w]
    catch {trainer "Space Manbow" 9 22} tr
    puts $f "trainer=$tr"
    smsets::snap
    smsets::fire
  }
  after time 8.0 {type " "}
  after time 10.0 {type " "}
  after time 12.0 {type " "}
  after time 14.0 {type " "}
  after time 15.0 {smsets::start}
}
