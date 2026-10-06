# Isolate the original Z80 boss compositor for native rendering regressions.
# SM_BOSS_VISUAL_STAGE=2/3/5/7 (stages 3/4/6/8). Output directory must exist.
# Stage 8 is reached through Stage 7; a direct F0FC=7 start has stale graphics.
set throttle off
set renderer none
set idx $::env(SM_BOSS_VISUAL_STAGE)
set start_idx [expr {$idx==7?6:$idx}]
foreach t {2 4 6 7.9} {after time $t "poke 0xf0fc $start_idx"}
foreach t {8 10 12 14} {after time $t {type " "}}
proc survive {} {poke 0xca53 3;poke 0xca54 3;after time 1 survive}
after time 15 survive
set killed 0
proc advance_stage7 {} {
 set ix [reg IX]
 if {$::idx==7 && [peek 0xca10]==6 && [peek [expr {$ix+1}]]==1 && !$::killed} {
  poke [expr {$ix+2}] 0;poke [expr {$ix+4}] 1;set ::killed 1
 }
}
debug set_bp 0x8e81 {[peek 0xf0f2]==5} advance_stage7
set armed 0
proc arm {} {
 if {[peek 0xca10]!=$::idx || [peek [expr {[reg IX]+1}]]<1} {return}
 if {$::idx==5 && ![peek [expr {[reg IX]+0x21}]]} {return}
 if {$::idx==7 && [peek [expr {[reg IX]+1}]]!=4} {return}
 if {$::idx==3 && [peek [expr {[reg IX]+1}]]!=2} {return}
 debug write_block memory 0xd988 [string repeat [binary format c 0] 1152]
 set ::armed 1
 if {$::idx==7} {
  set ::shell [peek [expr {[reg IX]+6}]]
  set sp [reg SP];set pc [expr {[peek $sp]+256*[peek [expr {$sp+1}]]}]
  debug set_bp $pc {$::armed} capture
 }
}
proc capture {} {
 if {!$::armed} {return}
 if {$::idx==7} {poke [expr {[reg IX]+6}] $::shell}
 foreach {n start count} [list stamp 0xd988 1152 object [reg IX] 64 fine 0xca1a 4] {
 set f [open [file join $::env(SM_BOSS_VISUAL_OUT) "$::idx-$n.bin"] wb];fconfigure $f -translation binary;puts -nonewline $f [debug read_block memory $start $count];close $f
 }
 foreach {n dev size} {vram VRAM 131072 palette "VDP palette" 32} {
  set f [open [file join $::env(SM_BOSS_VISUAL_OUT) "$::idx-$n.bin"] wb];fconfigure $f -translation binary
  puts -nonewline $f [debug read_block $dev 0 $size];close $f
 }
 exit
}
if {$idx==2} {
 debug set_bp 0xa652 {[peek 0xf0f3]==6} arm
 debug set_bp 0xa655 {[peek 0xf0f3]==6} capture
} elseif {$idx==5} {
 debug set_bp 0xb51e {[peek 0xf0f3]==6} arm
 debug set_bp 0xb521 {[peek 0xf0f3]==6} capture
} elseif {$idx==7} {
 debug set_bp 0xaa21 {[peek 0xf0f3]==6} arm
} else {
 debug set_bp 0xae18 {[peek 0xf0f3]==6} arm
 debug set_bp 0xae73 {[peek 0xf0f3]==6} capture
}
after time 400 exit
