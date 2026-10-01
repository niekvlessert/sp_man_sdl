set throttle off
set renderer none
namespace eval smflash {
 variable outdir "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out/type20_spriteflash"
 variable prev ""; variable prevr5 0; variable prevt 0.0; variable hitno 0; variable armed 1
 proc sample {} {
  variable prev; variable prevr5; variable prevt
  set prev [debug read_block "physical VRAM" 0xF000 0x1000]
  set prevr5 [vdpreg 5]; set prevt [machine_info time]
  if {[machine_info time] < 94} {after time 0.001 {smflash::sample}}
 }
 proc save {tag} {
  variable outdir
  set t [machine_info time]; set r5 [vdpreg 5]
  set f [open [file join $outdir [format "%s_%.6f_r5%02X.bin" $tag $t $r5]] wb]
  fconfigure $f -translation binary; puts -nonewline $f [debug read_block "physical VRAM" 0xF000 0x1000]; close $f
  set o [open [file join $outdir [format "%s_%.6f_obj.bin" $tag $t]] wb]
  fconfigure $o -translation binary; puts -nonewline $o [debug read_block "memory" 0xCE80 0x500]; close $o
 }
 proc hpwrite {} {
  variable outdir; variable prev; variable prevr5; variable prevt; variable hitno; variable armed
  if {!$armed || [reg PC] != 0x7C59} {return}
  set a $::wp_last_address; set off [expr {($a-0xCE80)&0x3F}]; if {$off != 0x16} {return}
  set base [expr {$a-$off}]; if {[peek $base] != 0x20} {return}
  set armed 0; incr hitno
  set f [open [file join $outdir [format "hit_%02d.txt" $hitno]] w]
  puts $f [format "hit t=%.9f prevt=%.9f prevr5=%02X r5=%02X slot=%d raw=%s" [machine_info time] $prevt $prevr5 [vdpreg 5] [expr {($base-0xCE80)/0x40}] [binary encode hex [debug read_block "memory" $base 0x40]]]; close $f
  set p [open [file join $outdir [format "hit_%02d_pre_r5%02X.bin" $hitno $prevr5]] wb]; fconfigure $p -translation binary; puts -nonewline $p $prev; close $p
  smflash::save h0; after time 0.001 {smflash::save h1}; after time 0.004 {smflash::save h4}; after time 0.008 {smflash::save h8}
  after time 0.012 {smflash::save h12}; after time 0.016 {smflash::save h16}; after time 0.025 {smflash::save h25}; after time 0.033 {smflash::save h33}
  after time 0.050 {smflash::save h50}; after time 0.100 {smflash::save h100}; after time 0.120 {set ::smflash::armed 1}
 }
 proc fire {} {if {[machine_info time] < 94} {type " "; after time 0.08 {smflash::fire}}}
 proc start {} {
  variable outdir; file delete -force $outdir; file mkdir $outdir
  debug set_watchpoint write_mem {0xCE80 0xD37F} {} {smflash::hpwrite}
  smflash::sample
 }
 after time 8 {type " "}; after time 10 {type " "}; after time 12 {type " "}; after time 14 {type " "}
 after time 15 {smflash::fire}
 after time 89 {poke 0xCA49 0; poke 0xCA4A 0x00; smflash::start}
 after time 92 {poke 0xCA4A 0x02}
 after time 94 {exit}
}
