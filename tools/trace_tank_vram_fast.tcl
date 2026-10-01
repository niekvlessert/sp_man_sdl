set throttle off
set renderer none
namespace eval smtv {
 variable outdir "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out/tank_vram_fast"
 variable f ""; variable last ""; variable lastpal ""; variable seq 0
 proc poll {} {
  variable outdir; variable f; variable last; variable lastpal; variable seq
  set t [machine_info time]
  set cur [debug read_block "physical VRAM" 0x18000 0x4000]
  set pal [debug read_block "VDP palette" 0 32]
  if {$last eq "" || $cur ne $last || $pal ne $lastpal} {
   set vf [open [file join $outdir [format "v_%04d_%09.6f.bin" $seq $t]] wb]; fconfigure $vf -translation binary
   puts -nonewline $vf $cur; close $vf
   binary scan $pal H* ph
   puts $f [format "%04d %.6f PC=%04X R4=%02X R10=%02X pal=%s vramchg=%d palchg=%d" $seq $t [reg PC] [vdpreg 4] [vdpreg 10] [string toupper $ph] [expr {$last ne "" && $cur ne $last}] [expr {$lastpal ne "" && $pal ne $lastpal}]]
   flush $f; incr seq; set last $cur; set lastpal $pal
  }
  if {$t < 106.0} {after time 0.008333 {smtv::poll}} else {close $f; exit}
 }
 proc fire {} {if {[machine_info time] < 106} {type " "; after time 0.12 {smtv::fire}}}
 proc start {} {
  variable outdir; variable f
  file delete -force $outdir; file mkdir $outdir
  set f [open [file join $outdir trace.txt] w]
  smtv::poll
 }
 after time 8 {type " "}; after time 10 {type " "}; after time 12 {type " "}; after time 14 {type " "}
 after time 15 {smtv::fire}; after time 90 {smtv::start}
}
