set throttle off
catch {set renderer SDL}
catch {set scale_factor 1}
namespace eval sm26 {
 variable outdir "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out/type26_hit_state"
 variable f ""; variable seq 0
 proc snap {id tag} {
  variable outdir
  screenshot -raw -size auto [file join $outdir [format "e%02d_%s.png" $id $tag]]
  foreach {name addr len} {d988 0xD988 0x480 ring 0xE000 0x800} {
   set q [open [file join $outdir [format "e%02d_%s_%s.bin" $id $tag $name]] wb]; fconfigure $q -translation binary
   puts -nonewline $q [debug read_block "memory" $addr $len]; close $q
  }
 }
 proc hit {} {
  variable f; variable seq
  if {[reg PC] != 0x7C59} {return}
  set a $::wp_last_address; set off [expr {($a-0xCE80)&0x3F}]
  if {$off != 0x16} {return}
  set base [expr {$a-$off}]; if {[peek $base] != 0x26} {return}
  set id $seq; incr seq
  puts $f [format "e%02d t=%.9f hp=%02X state=%02X yfix=%04X xfix=%04X" $id [machine_info time] $::wp_last_value [peek [expr {$base+1}]] [peek16 [expr {$base+7}]] [peek16 [expr {$base+9}]]]; flush $f
  sm26::snap $id now
  after time 0.004 [list sm26::snap $id p04]; after time 0.008 [list sm26::snap $id p08]
  after time 0.012 [list sm26::snap $id p12]; after time 0.020 [list sm26::snap $id p20]
 }
 proc arm {} {variable f; variable outdir; file delete -force $outdir; file mkdir $outdir; set f [open [file join $outdir trace.txt] w]; debug set_watchpoint write_mem {0xCE80 0xD37F} {} {sm26::hit}}
 proc done {} {variable f; close $f; exit}
 proc fire {} {if {[machine_info time] < 105} {type " "; after time 0.08 {sm26::fire}}}
 after time 8 {type " "}; after time 10 {type " "}; after time 12 {type " "}; after time 14 {type " "}
 after time 15 {sm26::fire}; after time 98 {poke 0xCA49 0; poke 0xCA4A 0x08}
 after time 100 {poke 0xCA4A 0x0A}; after time 101.5 {sm26::arm}; after time 102 {poke 0xCA4A 0x0C}
 after time 104 {poke 0xCA4A 0x0E}; after time 105 {sm26::done}
}
