# Synthetic calls to the unmodified original ROM loader. Normal gameplay boots
# first; each catalogue root is then invoked without its palette preamble.
# No ROM bytes are patched. IRQs are disabled at the VDP to isolate VRAM uploads.
set throttle off
set renderer none
namespace eval smcatalog {
 variable out [file normalize "tools/probe_out/catalog_validation"]
 if {[info exists ::env(SM_CATALOG_CAPTURE)]} {set out $::env(SM_CATALOG_CAPTURE)}
 variable plan {}
 variable current ""
 variable f ""
 variable stack 0
 proc dump {suffix} {
  variable out; variable current
  set f [open [file join $out "${current}_${suffix}.bin"] wb]
  fconfigure $f -translation binary
  puts -nonewline $f [debug read_block "physical VRAM" 0 0x20000]
  close $f
 }
 proc next {} {
  variable out; variable plan; variable current; variable stack; variable f
  if {[llength $plan] == 0} {puts $f "COMPLETE"; close $f; after realtime 0 {exit}; debug break; return}
  set job [lindex $plan 0]
  set plan [lrange $plan 1 end]
  lassign $job current address kind
  dump before
  poke 0x9000 10
  poke 0xf0f2 10
  reg IFF 0
  reg SP $stack
  poke $stack 0
  poke [expr {$stack+1}] 0x40
  reg HL $address
  if {$kind eq "graphics"} {reg PC 0x8046} else {reg PC 0x8389}
  puts $f [format "START %s %.9f root=%04X SP=%04X" $current [machine_info time] $address $stack]
  flush $f
 }
 proc returned {} {
  variable current; variable f
  dump after
  puts $f [format "RETURN %s %.9f PC=%04X SP=%04X" $current [machine_info time] [reg PC] [reg SP]]
  flush $f
  next
 }
 proc start {} {
  variable out; variable stack; variable f
  file mkdir $out
  source [file join $out plan.tcl]
  set f [open [file join $out execution.log] w]
  puts $f [format "BOOT %.9f PC=%04X banks=%02X,%02X,%02X" [machine_info time] [reg PC] [peek 0xf0f1] [peek 0xf0f2] [peek 0xf0f3]]
  set stack [expr {[reg SP]-2}]
  vdpreg 0 [expr {[vdpreg 0]&0xef}]
  vdpreg 1 [expr {[vdpreg 1]&0xdf}]
  debug set_bp 0x4000 {} {smcatalog::returned}
  next
 }
 after time 8 {type " "}
 after time 10 {type " "}
 after time 12 {type " "}
 after time 14 {type " "}
 after time 20 {smcatalog::start}
 after time 60 {exit}
}
