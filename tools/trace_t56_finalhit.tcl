set throttle off
catch {set renderer SDL}
catch {set scale_factor 1}
namespace eval t56f {
 variable dir "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out/t56_finalhit"
 variable f ""; variable seq 0
 proc forcehp {} {
  for {set i 0} {$i < 20} {incr i} {
   set b [expr {0xCE80+$i*0x40}]
   if {[peek $b] == 0x56} {poke [expr {$b+0x16}] 2}
  }
 }
 proc snap {} {
  variable dir; variable f; variable seq
  set t [machine_info time]
  for {set i 0} {$i < 20} {incr i} {
   set b [expr {0xCE80+$i*0x40}]; set ty [peek $b]
   if {$ty == 0x56 || $ty == 0x6B || $ty == 0x62 || $ty == 0x70} {
    puts $f [format "%03d %.6f slot=%02d type=%02X st=%02X f05=%02X f06=%02X x=%04X y=%04X hp=%02X dmg=%02X t17=%02X t18=%02X t20=%02X CA34=%04X CE4C=%02X" $seq $t $i $ty [peek [expr {$b+1}]] [peek [expr {$b+5}]] [peek [expr {$b+6}]] [peek16 [expr {$b+9}]] [peek16 [expr {$b+7}]] [peek [expr {$b+0x16}]] [peek [expr {$b+4}]] [peek [expr {$b+0x17}]] [peek [expr {$b+0x18}]] [peek [expr {$b+0x20}]] [peek16 0xCA34] [peek 0xCE4C]]
   }
  }
  screenshot -raw -size auto [file join $dir [format "f_%03d_%09.5f.png" $seq $t]]
  flush $f; incr seq
  if {$t < 141.5} {after time 0.016667 {t56f::snap}} else {close $f; exit}
 }
 proc fire {} {if {[machine_info time] < 141.5} {type " "; after time 0.08 {t56f::fire}}}
 proc start {} {variable dir; variable f; file delete -force $dir; file mkdir $dir; set f [open [file join $dir trace.txt] w]; t56f::snap}
 after time 8 {type " "}; after time 10 {type " "}; after time 12 {type " "}; after time 14 {type " "}
 after time 15 {t56f::fire}
 after time 138.80 {t56f::forcehp}
 after time 138.80 {t56f::start}
}
