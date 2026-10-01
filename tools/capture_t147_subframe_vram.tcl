set throttle off
set renderer none
namespace eval sf {
 proc wb {name data} {
  set d "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out"
  set f [open [file join $d $name] wb]
  fconfigure $f -translation binary
  puts -nonewline $f $data
  close $f
 }
 proc snap {tag} {
  sf::wb "sf_${tag}.bin" [debug read_block "physical VRAM" 0xC000 0x4000]
 }
 proc shoot {} {
  if {[machine_info time] < 145.0} {type " "; after time 0.12 {sf::shoot}}
 }
 after time 8 {type " "}
 after time 10 {type " "}
 after time 12 {type " "}
 after time 14 {type " "}
 after time 15 {catch {trainer "Space Manbow" 9 22}; sf::shoot}
 after time 147.000 {sf::snap 0000}
 after time 147.003 {sf::snap 0003}
 after time 147.006 {sf::snap 0006}
 after time 147.009 {sf::snap 0009}
 after time 147.0125 {sf::snap 00125}
 after time 147.015 {sf::snap 0015}
 after time 147.018 {sf::snap 0018}
 after time 147.019 {exit}
}
