# Natural stage starts with only the saved stage-selection byte changed.
set throttle off
set renderer none
namespace eval smentry {
 variable out $::env(SM_ENTRY_CAPTURE)
 variable stage $::env(SM_ENTRY_STAGE)
 variable seen [dict create]
 variable f ""
 proc line {key value} {
  variable seen; variable f
  if {[dict exists $seen $key]} {return}
  dict set seen $key 1
  puts $f $value
  flush $f
 }
 proc initial {} {
  line [format "init-%02X-%04X" [peek 0xca10] [reg DE]] [format "INIT %.9f stage=%02X stream=%04X trigger=%04X metatile=%04X banks=%02X,%02X,%02X" [machine_info time] [peek 0xca10] [reg DE] [reg HL] [peek16 0xc0c8] [peek 0xf0f1] [peek 0xf0f2] [peek 0xf0f3]]
 }
 proc spawn {} {
  variable out
  set stage [peek 0xca10]
  line [format "spawn-%02X" $stage] [format "SPAWN %.9f stage=%02X" [machine_info time] $stage]
  set f [open [file join $out [format "spawn_copy_%02X.bin" $stage]] wb]
  fconfigure $f -translation binary
  puts -nonewline $f [debug read_block memory 0xe900 0x600]
  close $f
 }
 proc sprite {} {
  set type [reg A]; set frame [reg B]
  line [format "sprite-%02X-%02X-%02X" [peek 0xca10] $type $frame] [format "SPRITE %.9f stage=%02X type=%02X frame=%02X banks=%02X,%02X,%02X" [machine_info time] [peek 0xca10] $type $frame [peek 0xf0f1] [peek 0xf0f2] [peek 0xf0f3]]
 }
 proc tile {} {
  set type [peek [reg IX]];set frame [reg A];set list [reg DE]
  line [format "tile-%02X-%02X-%02X-%04X" [peek 0xca10] $type $frame $list] [format "TILE %.9f stage=%02X type=%02X frame=%02X list=%04X banks=%02X,%02X,%02X" [machine_info time] [peek 0xca10] $type $frame $list [peek 0xf0f1] [peek 0xf0f2] [peek 0xf0f3]]
 }
 proc background {} {
  set address [peek16 0xc0ca]
  line [format "bg-%02X-%04X" [peek 0xca10] $address] [format "BACKGROUND %.9f stage=%02X address=%04X mode=%02X" [machine_info time] [peek 0xca10] $address [peek 0xc0ce]]
 }
 proc metatile {} {
  set address [reg HL]
  line [format "meta-%02X-%04X-%02X-%02X" [peek 0xca10] $address [peek 0xf0f2] [peek 0xf0f3]] [format "METATILE %.9f stage=%02X address=%04X bank8000=%02X bankA000=%02X bytes=%s" [machine_info time] [peek 0xca10] $address [peek 0xf0f2] [peek 0xf0f3] [string toupper [binary encode hex [debug read_block memory $address 16]]]]
 }
 proc graphics {} {
  line [format "graphics-%02X-%04X" [peek 0xca10] [reg HL]] [format "GRAPHICS %.9f stage=%02X root=%04X" [machine_info time] [peek 0xca10] [reg HL]]
 }
 proc select {} {variable stage;poke 0xf0fc $stage}
 proc fire {} {
  if {[machine_info time]<80} {
   poke 0xca53 3;poke 0xca54 3
   type " "
   after time 0.20 {smentry::fire}
  }
 }
 proc done {} {
  variable f
  puts $f [format "DONE %.9f stage=%02X stream=%04X" [machine_info time] [peek 0xca10] [peek16 0xc0ca]]
  close $f
  exit
 }
 file mkdir $out
 set f [open [file join $out trace.log] w]
 debug set_bp 0x7823 {[peek 0xf0f1]==9} {smentry::initial}
 debug set_bp 0x6238 {[peek 0xf0f1]==4 && [peek 0xf0f2]==2} {smentry::spawn}
 debug set_bp 0x8178 {[peek 0xf0f2]==7} {smentry::sprite}
 debug set_bp 0x7a70 {[peek 0xf0f1]==4 && [peek 0xf0f2]==7} {smentry::tile}
 debug set_bp 0x7858 {[peek 0xf0f1]==9} {smentry::background}
 debug set_bp 0x8046 {[peek 0xf0f2]==10} {smentry::graphics}
 debug set_bp 0x7de6 {[peek 0xf0f1]==9} {smentry::metatile}
 debug set_bp 0x7e86 {[peek 0xf0f1]==9} {smentry::metatile}
 debug set_bp 0x7f31 {[peek 0xf0f1]==9} {smentry::metatile}
 after time 2 {smentry::select}
 after time 4 {smentry::select}
 after time 6 {smentry::select}
 after time 7.9 {smentry::select}
 after time 8 {type " "}
 after time 10 {type " "}
 after time 12 {type " "}
 after time 14 {type " "}
 after time 15 {smentry::fire}
 after time 80 {smentry::done}
}
