# Original gameplay; optional single pending-damage injection is logged explicitly.
set throttle off
set renderer none
namespace eval smgate {
 variable out $::env(SM_GATE_CAPTURE)
 variable assist $::env(SM_GATE_ASSIST)
 variable f ""
 variable seen [dict create]
 variable injected 0
 proc log {tag fields} {
  variable f
  puts $f [format "%s %.9f %s" $tag [machine_info time] $fields];flush $f
 }
 proc once {key tag fields} {
  variable seen
  if {[dict exists $seen $key] && [dict get $seen $key] eq $fields} {return}
  dict set seen $key $fields
  log $tag $fields
 }
 proc poll {} {
  variable assist;variable injected
  poke 0xca53 3;poke 0xca54 3
  once engine ENGINE [format "stage=%02X checkpoint=%02X stream=%04X gate=%02X bossdead=%02X transition=%02X" [peek 0xca10] [peek 0xca1e] [peek16 0xc0ca] [peek 0xc0d6] [peek 0xce52] [peek 0xce76]]
  for {set base 0xce80} {$base<0xd380} {incr base 64} {
   set type [peek $base]
   if {$type==0x64 || $type==0x6a || $type==0x62 || $type==0x3d || $type==0x40} {
    once $base OBJECT [format "base=%04X type=%02X state=%02X sprite=%02X tile=%02X hp=%02X flags=%02X" $base $type [peek [expr {$base+1}]] [peek [expr {$base+5}]] [peek [expr {$base+6}]] [peek [expr {$base+0x16}]] [peek [expr {$base+0x14}]]]
    if {$assist && !$injected && [machine_info time]>155 && $type==0x64 && ([peek [expr {$base+0x14}]]&128)} {
     poke [expr {$base+4}] 255;set injected 1
     log INJECT [format "base=%04X pending=FF hp=%02X" $base [peek [expr {$base+0x16}]]]
    }
   }
  }
  after time 0.1 {smgate::poll}
 }
 proc write {} {
  set pc [reg PC]
  log WRITE [format "address=%04X value=%02X pc=%04X banks=%02X,%02X,%02X code=%s" $::wp_last_address $::wp_last_value $pc [peek 0xf0f1] [peek 0xf0f2] [peek 0xf0f3] [binary encode hex [debug read_block memory [expr {$pc-8}] 16]]]
 }
 proc death {} {
  set ix [reg IX]
  if {$ix>=0xce80 && $ix<0xd380 && [peek $ix]==0x64} {
   log DEATH [format "base=%04X type=%02X state=%02X hp=%02X ret=%04X" $ix [peek $ix] [peek [expr {$ix+1}]] [peek [expr {$ix+0x16}]] [peek16 [reg SP]]]
  }
 }
 proc replacement {} {
  set ix [reg IX]
  if {$ix>=0xce80 && $ix<0xd380 && [peek $ix]==0x6a} {
   once replacement REPLACEMENT [format "base=%04X type=%02X state=%02X tile=%02X timer=%02X" $ix [peek $ix] [peek [expr {$ix+1}]] [peek [expr {$ix+6}]] [peek [expr {$ix+0x17}]]]
  }
 }
 proc command {} {
  set address [peek16 0xc0ca]
  if {[machine_info time]>140} {
   once bg BACKGROUND [format "address=%04X mode=%02X" $address [peek 0xc0ce]]
  }
 }
 proc initial {} {
  log INIT [format "stage=%02X stream=%04X trigger=%04X metatile=%04X" [peek 0xca10] [reg DE] [reg HL] [peek16 0xc0c8]]
 }
 proc spawn {} {
  variable out
  set stage [peek 0xca10]
  set q [open [file join $out [format "spawn_stage_%02X.bin" $stage]] wb];fconfigure $q -translation binary
  puts -nonewline $q [debug read_block memory 0xe900 0x600];close $q
  log SPAWN [format "stage=%02X" $stage]
 }
 proc graphics {} {
  log GRAPHICS [format "stage=%02X root=%04X" [peek 0xca10] [reg HL]]
 }
 proc start {} {
  variable out;variable f
  file mkdir $out;set f [open [file join $out trace.log] w]
  foreach address {0xc0d6 0xce52 0xce76 0xca10 0xca1e 0xca0f 0xca00 0xca01} {debug set_watchpoint write_mem $address {} {smgate::write}}
  debug set_bp 0x7823 {[peek 0xf0f1]==9} {smgate::initial}
  debug set_bp 0x6238 {[peek 0xf0f1]==4 && [peek 0xf0f2]==2} {smgate::spawn}
  debug set_bp 0x8046 {[peek 0xf0f2]==10} {smgate::graphics}
  debug set_bp 0x7cc3 {[peek 0xf0f1]==4} {smgate::death}
  debug set_bp 0x9ad7 {[peek 0xf0f2]==5} {smgate::replacement}
  debug set_bp 0x7858 {[peek 0xf0f1]==9} {smgate::command}
  poll
 }
 proc done {} {
  variable out;variable f
  set q [open [file join $out final_ram.bin] wb];fconfigure $q -translation binary
  puts -nonewline $q [debug read_block memory 0xc000 0x4000];close $q
  log DONE [format "stream=%04X stage=%02X gate=%02X" [peek16 0xc0ca] [peek 0xca10] [peek 0xc0d6]]
  close $f;exit
 }
 foreach t {8 10 12 14} {after time $t {type " "}}
 after time 15 {smgate::start}
 after time 230 {smgate::done}
}
