set throttle off
set renderer none
namespace eval smscreen {
 variable out $::env(SM_SCREEN_CAPTURE)
 variable seen [dict create]
 variable pending {}
 variable f ""
 proc emit {key line} {variable f;variable seen;if {[dict exists $seen $key]} {return};dict set seen $key 1;puts $f $line;flush $f}
 proc expand {planes} {
  variable pending
  set source [reg HL];set count [reg B];if {$count==0} {set count 256}
  set banks [list [peek 0xf0f1] [peek 0xf0f2] [peek 0xf0f3]]
  set colors [binary encode hex [debug read_block memory 0xca00 8]]
  set raw [binary encode hex [debug read_block memory $source [expr {8*$count*$planes}]]]
  set palette [binary encode hex [debug read_block "VDP palette" 0 32]]
  set pending [list $source $count $planes $banks $colors $raw $palette]
 }
 proc expanded {} {
  variable pending
  if {![llength $pending] || [reg HL]!=0xcb00} {return}
  lassign $pending source count planes banks colors raw palette
  set result [binary encode hex [debug read_block memory 0xcb00 [expr {32*$count}]]]
  emit "expand-$pending" "EXPAND $source $count $planes [join $banks ,] $colors $raw $result $palette"
  set pending {}
 }
 proc demo {} {
  set address [reg HL]
  emit "demo-$address" "DEMO $address [peek $address]"
 }
 proc descriptor {} {
  emit "descriptor-[reg IX]" "DESCRIPTOR [reg IX] [binary encode hex [debug read_block memory [reg IX] 7]]"
 }
 proc map {} {emit "map-[reg PC]-$::wp_last_value" "MAP [reg PC] $::wp_last_value"}
 proc engine {} {
  emit "engine-[peek 0xca00]-[peek 0xca01]-[peek 0xca10]-[peek 0xc919]" "ENGINE [machine_info time] [peek 0xca00] [peek 0xca01] [peek 0xca10] [peek 0xc919]"
  after time 0.2 {smscreen::engine}
 }
 proc done {} {variable f;puts $f COMPLETE;close $f;exit}
 file mkdir $out;set f [open [file join $out trace.log] w]
 foreach {pc planes} {0xaf0e 1 0xaf24 1 0xaf67 2 0xaf7d 2 0xafc8 3 0xafde 3} {debug set_bp $pc {[peek 0xf0f3]==3} [list smscreen::expand $planes]}
 debug set_bp 0x493d {} {smscreen::expanded}
 debug set_bp 0xb058 {[peek 0xf0f3]==3} {smscreen::expanded}
 debug set_bp 0x78e0 {[peek 0xf0f1]==1 && [peek 0xf0f3]==31} {smscreen::demo}
 debug set_bp 0xadd0 {[peek 0xf0f3]==3} {smscreen::descriptor}
 foreach address {0x7000 0x9000 0xb000} {debug set_watchpoint write_mem [list $address $address] {} {smscreen::map}}
 after time 1 {smscreen::engine}
 if {$::env(SM_SCREEN_MODE) eq "ending"} {
  set ::env(SM_BOSSES_CAPTURE) [file join $out boss]
  set ::env(SM_BOSSES_STAGE) 8
  uplevel #0 {source tools/trace_all_stage_bosses.tcl}
  rename ::smbosses::done ::smbosses::original_done
  proc ::smbosses::done {} {after time 160 {smscreen::done}}
 } else {after time 600 {smscreen::done}}
}
