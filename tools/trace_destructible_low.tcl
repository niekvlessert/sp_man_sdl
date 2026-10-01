set throttle off
catch {set renderer SDL}
catch {set scale_factor 1}
namespace eval smdest {
 variable outdir "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out/destructible_low"
 variable f ""
 variable seq 0
 proc hexblock {addr len} {
  binary scan [debug read_block "memory" $addr $len] H* h
  return [string toupper $h]
 }
 proc log_objects {} {
  variable f
  set t [machine_info time]
  for {set i 0} {$i < 20} {incr i} {
   set a [expr {0xCE80 + $i * 0x40}]
   set typ [peek $a]
   if {$typ != 0} {
    puts $f [format "OBJ %.6f %02d @%04X type=%02X state=%02X f05=%02X xy=%04X,%04X hp13-18=%s tail=%s" $t $i $a $typ [peek [expr {$a+1}]] [peek [expr {$a+5}]] [peek16 [expr {$a+9}]] [peek16 [expr {$a+7}]] [hexblock [expr {$a+0x13}] 6] [hexblock [expr {$a+0x20}] 16]]
   }
  }
  flush $f
 }
 proc snap {} {
  variable outdir; variable f; variable seq
  set t [machine_info time]
  if {$t >= 78.0 && $t <= 124.0} {
   set tag [format "%03d_%06.2f" $seq $t]
   screenshot -raw -size auto [file join $outdir "frame_${tag}.png"]
   set rf [open [file join $outdir "ram_${tag}.bin"] wb]; fconfigure $rf -translation binary
   puts -nonewline $rf [debug read_block "memory" 0xCE80 0x500]; close $rf
   set vf [open [file join $outdir "vram_${tag}.bin"] wb]; fconfigure $vf -translation binary
   puts -nonewline $vf [debug read_block "physical VRAM" 0xC000 0x4000]; close $vf
   puts $f [format "SNAP %s PC=%04X R2=%02X R4=%02X R10=%02X R23=%02X C0CA=%04X C0CC=%04X" $tag [reg PC] [vdpreg 2] [vdpreg 4] [vdpreg 10] [vdpreg 23] [peek16 0xC0CA] [peek16 0xC0CC]]
   incr seq
  }
  puts $f [format "PLAYER %.6f x=%04X y=%04X" $t [peek16 0xCA47] [peek16 0xCA49]]
  log_objects
  if {$t < 125.0} {after time 0.25 {smdest::snap}} else {close $f; exit}
 }
 proc fire {} {
  if {[machine_info time] < 102.0} {type " "; after time 0.12 {smdest::fire}}
 }
 proc start {} {
  variable outdir; variable f
  file delete -force $outdir; file mkdir $outdir
  set f [open [file join $outdir trace.txt] w]
  catch {trainer "Space Manbow" 9 22} tr
  puts $f "trainer=$tr"; flush $f
  smdest::snap; smdest::fire
 }
 after time 8.0 {type " "}
 after time 10.0 {type " "}
 after time 12.0 {type " "}
 after time 14.0 {type " "}
 after time 15.0 {smdest::start}
 after time 92.0 {poke 0xCA49 0; poke 0xCA4A 0x0A}
}
