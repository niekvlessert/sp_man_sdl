set throttle off
catch {set renderer SDL}
catch {set scale_factor 1}
namespace eval tower {
 proc wb {name data} {
  set d "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out"
  set f [open [file join $d $name] wb]
  fconfigure $f -translation binary
  puts -nonewline $f $data
  close $f
 }
 proc snap {tag} {
  set d "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out"
  screenshot -raw -size auto "$d/tower_intact_${tag}.png"
 }
 after time 8 {type " "}
 after time 10 {type " "}
 after time 12 {type " "}
 after time 14 {type " "}
 after time 15 {catch {trainer "Space Manbow" 9 22}}
 after time 142 {tower::snap 142}
 after time 144 {tower::snap 144}
 after time 146 {tower::snap 146}
 after time 148 {tower::snap 148}
 after time 150 {tower::snap 150}
 after time 152 {tower::snap 152; exit}
}
