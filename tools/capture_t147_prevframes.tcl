set throttle off
set renderer none
namespace eval pf {
 proc wb {name data} {
  set d "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out"
  set f [open [file join $d $name] wb]
  fconfigure $f -translation binary
  puts -nonewline $f $data
  close $f
 }
 proc snap {tag} {
  pf::wb "pf_${tag}.bin" [debug read_block "physical VRAM" 0xC000 0x4000]
 }
 proc shoot {} {
  if {[machine_info time] < 145.0} {type " "; after time 0.12 {pf::shoot}}
 }
 after time 8 {type " "}
 after time 10 {type " "}
 after time 12 {type " "}
 after time 14 {type " "}
 after time 15 {catch {trainer "Space Manbow" 9 22}; pf::shoot}
 after time 146.970 {pf::snap 970}
 after time 146.980 {pf::snap 980}
 after time 146.985 {pf::snap 985}
 after time 146.990 {pf::snap 990}
 after time 146.995 {pf::snap 995}
 after time 147.000 {pf::snap 000; exit}
}
