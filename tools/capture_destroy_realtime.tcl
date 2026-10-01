set ::throttle off
set ::maxframeskip 0
catch {set renderer SDLGL-PP}
catch {set scale_factor 1}
namespace eval smcap {
 variable dir "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out/destroy_realtime"
 variable n 0
 variable f ""
 proc snap {} {
  variable dir; variable n; variable f
  set t [machine_info time]
  screenshot -raw -size auto [file join $dir [format "f_%03d_%09.6f.png" $n $t]]
  puts $f [format "%03d %.9f PC=%04X R5=%02X score=%s" $n $t [reg PC] [vdpreg 5] [binary encode hex [debug read_block "memory" 0xCA00 0x20]]]; flush $f
  incr n
  if {$t < 107.0} {after time 0.05 {smcap::snap}} else {close $f; exit}
 }
 proc fire {} {if {[machine_info time] < 107.0} {type " "; after time 0.08 {smcap::fire}}}
 proc startcapture {} {
  variable dir; variable f
  file delete -force $dir; file mkdir $dir
  set f [open [file join $dir trace.txt] w]
  set ::throttle on
  set ::maxframeskip 0
  smcap::snap
 }
 after time 8 {type " "}; after time 10 {type " "}; after time 12 {type " "}; after time 14 {type " "}
 after time 15 {smcap::fire}
 after time 94 {poke 0xCA49 0; poke 0xCA4A 0x08}
 after time 97 {smcap::startcapture}
 after time 99 {poke 0xCA4A 0x0A}; after time 101 {poke 0xCA4A 0x0C}; after time 104 {poke 0xCA4A 0x0E}
}
