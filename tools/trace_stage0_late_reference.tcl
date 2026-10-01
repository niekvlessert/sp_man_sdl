set throttle off
catch {set renderer SDL}
catch {set scale_factor 1}
namespace eval smlate {
 variable outdir "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out/stage0_late_reference"
 variable f ""; variable seq 0
 proc snap {} {
  variable outdir; variable f; variable seq
  set t [machine_info time]
  if {$t >= 118.0} {
   set tag [format "%03d_%06.2f" $seq $t]
   screenshot -raw -size auto [file join $outdir "frame_${tag}.png"]
   puts $f [format "SNAP %s PC=%04X R4=%02X R10=%02X R23=%02X C0CA=%04X C0CC=%04X CA19=%02X" $tag [reg PC] [vdpreg 4] [vdpreg 10] [vdpreg 23] [peek16 0xC0CA] [peek16 0xC0CC] [peek 0xCA19]]
   flush $f; incr seq
  }
  if {$t < 180.0} {after time 1.0 {smlate::snap}} else {close $f; exit}
 }
 proc fire {} {if {[machine_info time] < 180.0} {type " "; after time 0.12 {smlate::fire}}}
 proc start {} {
  variable outdir; variable f
  file delete -force $outdir; file mkdir $outdir
  set f [open [file join $outdir trace.txt] w]
  catch {trainer "Space Manbow" 9 22} tr
  puts $f "trainer=$tr"; flush $f
  smlate::snap; smlate::fire
 }
 after time 8.0 {type " "}; after time 10.0 {type " "}
 after time 12.0 {type " "}; after time 14.0 {type " "}
 after time 15.0 {smlate::start}
}
