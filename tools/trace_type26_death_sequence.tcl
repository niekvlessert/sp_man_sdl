set throttle off
catch {set renderer SDL}
catch {set scale_factor 1}
namespace eval smdeath {
 variable outdir "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out/type26_death"
 variable f ""; variable armed 0; variable frame 0; variable base 0
 proc snap {} {
  variable outdir; variable f; variable frame; variable base
  set t [machine_info time]
  set tag [format "%03d_%09.6f" $frame $t]
  screenshot -raw -size auto [file join $outdir "frame_${tag}.png"]
  set q [open [file join $outdir "d988_${tag}.bin"] wb]; fconfigure $q -translation binary
  puts -nonewline $q [debug read_block "memory" 0xD988 0x480]; close $q
  puts $f [format "%s type=%02X state=%02X hp=%02X f04=%02X f05=%02X y=%04X x=%04X R2=%02X R4=%02X R23=%02X" $tag [peek $base] [peek [expr {$base+1}]] [peek [expr {$base+0x16}]] [peek [expr {$base+4}]] [peek [expr {$base+5}]] [peek16 [expr {$base+7}]] [peek16 [expr {$base+9}]] [vdpreg 2] [vdpreg 4] [vdpreg 23]]; flush $f
  incr frame
  if {$frame < 90} {after time 0.016667 {smdeath::snap}} else {close $f; exit}
 }
 proc hit {} {
  variable armed; variable base; variable outdir; variable f
  if {$armed || [reg PC] != 0x7C59 || $::wp_last_value != 0} {return}
  set a $::wp_last_address; set off [expr {($a-0xCE80)&0x3F}]
  if {$off != 0x16} {return}
  set b [expr {$a-$off}]; if {[peek $b] != 0x26} {return}
  set base $b; set armed 1
  puts $f [format "TRIGGER %.9f base=%04X" [machine_info time] $base]; flush $f
  smdeath::snap
 }
 proc arm {} {variable outdir; variable f; file delete -force $outdir; file mkdir $outdir; set f [open [file join $outdir trace.txt] w]; debug set_watchpoint write_mem {0xCE80 0xD37F} {} {smdeath::hit}}
 proc fire {} {type " "; after time 0.08 {smdeath::fire}}
 after time 8 {type " "}; after time 10 {type " "}; after time 12 {type " "}; after time 14 {type " "}
 after time 15 {smdeath::fire}; after time 98 {poke 0xCA49 0; poke 0xCA4A 0x08}
 after time 100 {poke 0xCA4A 0x0A}; after time 101.5 {smdeath::arm}; after time 102 {poke 0xCA4A 0x0C}
 after time 104 {poke 0xCA4A 0x0E}
 after time 110 {if {!$smdeath::armed} {puts $smdeath::f "NO_TRIGGER"; close $smdeath::f; exit}}
}
