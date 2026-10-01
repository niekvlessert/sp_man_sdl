set throttle off
set renderer none
namespace eval smaudio {
 variable out $::env(SM_AUDIO_CAPTURE)
 variable stage $::env(SM_AUDIO_STAGE)
 variable seen [dict create]
 variable command 0
 variable note {}
 variable f ""
 proc emit {key value} {
  variable seen;variable f
  if {[dict exists $seen $key]} {return}
  dict set seen $key 1;puts $f $value
 }
 proc physical {address} {
  if {$address<0x8000} {return [list [peek 0xf0f1] $address]}
  if {$address<0xa000} {return [list [peek 0xf0f2] $address]}
  return [list [peek 0xf0f3] $address]
 }
 proc request {} {
  emit "req-[reg A]-[peek 0xc8c8]" "REQUEST [reg A] [peek 0xc8c8]"
 }
 proc read {} {
  variable note
  set a [reg HL];lassign [physical $a] bank address
  set ix [reg IX]
  set fields [list $bank $address [peek $a] [peek [expr {$ix+9}]] [peek [expr {$ix+13}]] [peek [expr {$ix+14}]]]
  if {[peek $a]<0xd0} {set note [list $bank $address [peek $a]]}
  emit "read-$fields" "READ [join $fields { }]"
 }
 proc note_end {} {
  variable note
  if {[llength $note]} {emit "note-$note-[reg HL]" "NOTE [join $note { }] [reg HL]";set note {}}
 }
 proc command_start {} {variable command;set command [reg HL]}
 proc command_end {} {
  variable command
  lassign [physical $command] bank address
  emit "command-$bank-$address-[reg HL]" "COMMAND $bank $address [peek $command] [reg HL]"
 }
 proc wave {} {
  emit "wave-[reg A]" "WAVE [reg A]"
 }
 proc mapper {} {emit "map-[reg PC]-$::wp_last_value" "MAP [reg PC] $::wp_last_value"}
 proc select {} {variable stage;poke 0xf0fc $stage}
 proc fire {} {
  if {[machine_info time]<80} {poke 0xca53 3;poke 0xca54 3;type " ";after time 0.20 {smaudio::fire}}
 }
 proc done {} {variable f;puts $f COMPLETE;close $f;exit}
 file mkdir $out;set f [open [file join $out trace.log] w]
 debug set_bp 0x693f {[peek 0xf0f1]==28} {smaudio::request}
 debug set_bp 0x6b9a {[peek 0xf0f1]==28} {smaudio::read}
 debug set_bp 0x6d3c {[peek 0xf0f1]==28} {smaudio::note_end}
 debug set_bp 0x728b {[peek 0xf0f1]==28} {smaudio::command_start}
 debug set_bp 0x6ba7 {[peek 0xf0f1]==28} {smaudio::command_end}
 debug set_bp 0x74b1 {[peek 0xf0f1]==28} {smaudio::wave}
 foreach address {0x7000 0x9000 0xb000} {debug set_watchpoint write_mem [list $address $address] {} {smaudio::mapper}}
 after time 2 {smaudio::select};after time 4 {smaudio::select};after time 6 {smaudio::select};after time 7.9 {smaudio::select}
 after time 8 {type " "};after time 10 {type " "};after time 12 {type " "};after time 14 {type " "}
 after time 15 {smaudio::fire};after time 80 {smaudio::done}
}
