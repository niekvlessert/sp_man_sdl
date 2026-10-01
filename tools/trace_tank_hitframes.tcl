set throttle off
catch {set renderer SDL}
catch {set scale_factor 1}
namespace eval smhit {
 variable outdir "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out/tank_hitframes"
 variable f ""; variable seq 0
 proc shot {tag} {
  variable outdir; variable seq
  screenshot -raw -size auto [file join $outdir [format "hit_%03d_%s.png" $seq $tag]]
 }
 proc hit {} {
  variable f; variable seq
  if {[reg PC] != 0x7C59} {return}
  set a $::wp_last_address; set off [expr {($a-0xCE80)&0x3F}]
  if {$off != 0x16} {return}
  set base [expr {$a-$off}]; set typ [peek $base]
  if {$typ != 0x22 && $typ != 0x26} {return}
  puts $f [format "%03d t=%.9f slot=%d type=%02X hp=%02X x=%04X y=%04X state=%02X" $seq [machine_info time] [expr {($base-0xCE80)/0x40}] $typ $::wp_last_value [peek16 [expr {$base+7}]] [peek16 [expr {$base+9}]] [peek [expr {$base+1}]]]; flush $f
  smhit::shot now
  after time 0.004 {smhit::shot p04}; after time 0.008 {smhit::shot p08}; after time 0.012 {smhit::shot p12}
  incr seq
 }
 proc arm {} {variable f; variable outdir; file delete -force $outdir; file mkdir $outdir; set f [open [file join $outdir trace.txt] w]; debug set_watchpoint write_mem {0xCE80 0xD37F} {} {smhit::hit}}
 proc done {} {variable f; close $f; exit}
 proc fire {} {if {[machine_info time] < 106} {type " "; after time 0.08 {smhit::fire}}}
 after time 8 {type " "}; after time 10 {type " "}; after time 12 {type " "}; after time 14 {type " "}
 after time 15 {smhit::fire}; after time 90 {smhit::arm}
 after time 90 {poke 0xCA49 0; poke 0xCA4A 0x00}; after time 92 {poke 0xCA4A 0x02}
 after time 94 {poke 0xCA4A 0x04}; after time 96 {poke 0xCA4A 0x06}; after time 98 {poke 0xCA4A 0x08}
 after time 100 {poke 0xCA4A 0x0A}; after time 102 {poke 0xCA4A 0x0C}; after time 104 {poke 0xCA4A 0x0E}
 after time 106 {smhit::done}
}
