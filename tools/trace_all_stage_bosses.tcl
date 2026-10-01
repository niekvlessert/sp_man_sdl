# Stage selection + invincibility + explicitly logged pending-damage fixtures.
set throttle off
set renderer none
namespace eval smbosses {
 variable out $::env(SM_BOSSES_CAPTURE)
 variable initial_stage $::env(SM_BOSSES_STAGE)
 variable targets {{100} {122} {62} {20} {119 118} {123} {67 113} {120 113} {121 113}}
 variable seen [dict create]
 variable first [dict create]
 variable last_hit [dict create]
 variable changed -1
 variable armed 0
 variable f ""
 proc log {tag fields} {variable f;puts $f [format "%s %.9f %s" $tag [machine_info time] $fields];flush $f}
 proc once {key tag fields} {
  variable seen
  if {[dict exists $seen $key] && [dict get $seen $key] eq $fields} {return}
  dict set seen $key $fields;log $tag $fields
 }
 proc select {} {variable initial_stage;poke 0xf0fc $initial_stage}
 proc poll {} {
  variable changed;variable initial_stage;variable armed
  poke 0xca53 3;poke 0xca54 3
  once engine ENGINE [format "stage=%02X checkpoint=%02X stream=%04X gate=%02X bossdead=%02X transition=%02X main=%02X sub=%02X" [peek 0xca10] [peek 0xca1e] [peek16 0xc0ca] [peek 0xc0d6] [peek 0xce52] [peek 0xce76] [peek 0xca00] [peek 0xca01]]
  if {$armed && [peek 0xca10]!=$initial_stage && $changed<0} {set changed [machine_info time]}
  if {$changed>=0 && [machine_info time]>$changed+8} {done;return}
  after time 0.1 {smbosses::poll}
 }
 proc damage {routine} {
  variable initial_stage;variable targets;variable first;variable last_hit
  if {[peek 0xca10]!=$initial_stage} {return}
  set ix [reg IX];if {$ix<0xce80 || $ix>=0xd380} {return}
  set type [peek $ix]
  if {$type ni [lindex $targets $initial_stage]} {return}
  set key "$ix-$type";set t [machine_info time]
  if {![dict exists $first $key]} {dict set first $key $t}
  once "obj-$key" OBJECT [format "base=%04X type=%02X state=%02X sprite=%02X tile=%02X hp=%02X flags=%02X routine=%04X" $ix $type [peek [expr {$ix+1}]] [peek [expr {$ix+5}]] [peek [expr {$ix+6}]] [peek [expr {$ix+0x16}]] [peek [expr {$ix+0x14}]] $routine]
  if {$t<[dict get $first $key]+1 || ($routine!=0x7cac && $routine!=0x8ef5 && !([peek [expr {$ix+0x14}]]&128))} {return}
  if {[dict exists $last_hit $key] && $t<[dict get $last_hit $key]+0.2} {return}
  set hp_offset [expr {$routine==0x8ef5 ? 2 : 0x16}]
  set hp [peek [expr {$ix+$hp_offset}]];set amount [expr {min(255,$hp+1)}]
  poke [expr {$ix+4}] $amount;dict set last_hit $key $t
  log INJECT [format "base=%04X type=%02X hp=%02X pending=%02X routine=%04X" $ix $type $hp $amount $routine]
 }
 proc death {} {
  set ix [reg IX];if {$ix<0xce80 || $ix>=0xd380} {return}
  log DEATH [format "stage=%02X base=%04X type=%02X state=%02X hp=%02X ret=%04X" [peek 0xca10] $ix [peek $ix] [peek [expr {$ix+1}]] [peek [expr {$ix+0x16}]] [peek16 [reg SP]]]
 }
 proc write {} {log WRITE [format "address=%04X value=%02X pc=%04X banks=%02X,%02X,%02X" $::wp_last_address $::wp_last_value [reg PC] [peek 0xf0f1] [peek 0xf0f2] [peek 0xf0f3]]}
 proc initial {} {variable initial_stage;variable armed;if {[peek 0xca10]==$initial_stage} {set armed 1};log INIT [format "stage=%02X checkpoint=%02X stream=%04X trigger=%04X metatile=%04X" [peek 0xca10] [peek 0xca1e] [reg DE] [reg HL] [peek16 0xc0c8]]}
 proc start {} {
  variable out;variable f
  file mkdir $out;set f [open [file join $out trace.log] w]
  foreach a {0xca10 0xca1e 0xca0f 0xca00 0xca01 0xce52 0xce76 0xc0d6} {debug set_watchpoint write_mem $a {} {smbosses::write}}
  foreach a {0x7c44 0x7c63 0x7c6b 0x7cac} {debug set_bp $a {[peek 0xf0f1]==4} [list smbosses::damage $a]}
  debug set_bp 0x8ef5 {[peek 0xf0f2]==5} {smbosses::damage 0x8ef5}
  debug set_bp 0x7cc3 {[peek 0xf0f1]==4} {smbosses::death}
  debug set_bp 0x7823 {[peek 0xf0f1]==9} {smbosses::initial}
 }
 proc done {} {
  variable out;variable f
  log DONE [format "stage=%02X checkpoint=%02X stream=%04X main=%02X sub=%02X" [peek 0xca10] [peek 0xca1e] [peek16 0xc0ca] [peek 0xca00] [peek 0xca01]]
  set q [open [file join $out final_ram.bin] wb];fconfigure $q -translation binary;puts -nonewline $q [debug read_block memory 0xc000 0x4000];close $q
  close $f;exit
 }
 after time 1 {smbosses::start}
 after time 15 {set smbosses::armed 1;smbosses::poll}
 foreach t {2 4 6 7.9} {after time $t {smbosses::select}}
 foreach t {8 10 12 14} {after time $t {type " "}}
 after time 500 {smbosses::done}
}
