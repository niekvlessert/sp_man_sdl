set throttle off
set renderer none
namespace eval smab {
 variable out ""
 variable mutate 0
 proc dump {} {
  variable out
  set f [open $out wb]; fconfigure $f -translation binary
  puts -nonewline $f [debug read_block "memory" 0xD988 0x480]; close $f
  set o [open "${out}.objects" wb]; fconfigure $o -translation binary
  puts -nonewline $o [debug read_block "memory" 0xCE80 0x500]; close $o
  exit
 }
 proc kill24 {} {
  for {set a 0xCE80} {$a < 0xD380} {incr a 0x40} {
   if {[peek $a] == 0x24} {poke $a 0}
  }
 }
 proc fire {} {if {[machine_info time] < 92} {type " "; after time 0.08 {smab::fire}}}
 proc start {path do_mutate} {
  variable out $path; variable mutate $do_mutate
  after time 8 {type " "}; after time 10 {type " "}; after time 12 {type " "}; after time 14 {type " "}
  after time 15 {smab::fire}
  if {$do_mutate} {after time 91.30 {smab::kill24}; after time 91.40 {smab::kill24}; after time 91.50 {smab::kill24}}
  after time 91.60 {smab::dump}
 }
}
