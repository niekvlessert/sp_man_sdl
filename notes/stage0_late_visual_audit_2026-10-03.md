# Inspectie van de late stage-0-sectie — gecorrigeerd

2026-10-03, vanaf het voertuig vóór de toren met rode bal ($56) tot de
klauwbaas ($64), inclusief de afloop. Doel: originele inhoud en gedrag met
soepeler native presentatie. Zie de uitgevoerde reparaties en validatie in
[sdl_late_combat_fixes_2026-10-03.md](sdl_late_combat_fixes_2026-10-03.md).

## Correctie van de oorspronkelijke beeldvergelijking

De eerste versie van deze inspectie trok drie verkeerde conclusies uit
OpenMSX SDLGL-PP-screenshots: een verschoven toren, ontbrekend voertuig tijdens
de verticale terugkeer en een blauwe baasachtergrond. Bij throttle=off kon
OpenMSX een oud videoframe teruggeven naast de actuele CPU-state. Throttle
kort inschakelen (0,05 of zelfs 0,25 emulatieseconden) garandeerde geen vers
beeld. De mappen `original_synced/`, `comparison*.png` en de eerdere
`comparison_pairs.json` zijn daarom **diagnostiek, geen betrouwbare synchrone
visuele referentie**. Het script `tools/inspect_stage0_late.tcl` waarschuwt hiervoor.

Onafhankelijke nieuwe captures:

- `tools/probe_out/parity_video_t123/`: een afzonderlijke videorun toont de
  toren bij camera X=3896/Y=-192 wel midden in beeld, zoals de native scène.
- `tools/probe_out/parity_t132/`: de actuele originele E000–E7FF-ring is leeg
  en de actieve naamtafel bevat sterren; het eerder afgebeelde voertuig was oud.
- `tools/probe_out/parity_t150/`: actuele ROM/RAM/VRAM/palet/registers ondersteunen
  geen permanent blauwe arena. Geen kunstmatige arena- of torenverschuiving toegevoegd.

ROM: `space_manbow.rom`, SHA256
`bca5696ebbf4a3493bb226baa03ba8f8c5cc4876a4ad0eaa9722f583a42192b0`.
OpenMSX-machine: Panasonic_FS-A1WSX. RAM-only spelerbescherming houdt de route
actief. Voor de stage-overgang is bij t=148 een gelogde pending-damage-injectie
gebruikt; de cartridge is ongewijzigd. Deze snapshots zijn toestandsevidence,
geen claim van een complete natuurlijke, gelijke-input-videovalidatie.

## Werkelijke defecten en hun status

| Defect | Reparatie |
| --- | --- |
| $56-bovendeel volledig verborgen bij anker x<96 | Verwijderd; volledige ROM-matrices worden aan de viewport geknipt |
| $56 en andere grote voertuigobjecten te vroeg verwijderd | Afzonderlijke grenzen voor de volledige objectgeometrie |
| $64-klauwframe volledig verborgen bij x<32 | Verwijderd; zichtbaar deel blijft getekend |
| Y-scrolling bleef 0,0,0,1 pixel per vier frames | Native presentatie op halve X- en kwart Y-pixels, elke video-frame |
| Baas- en $40-sprites lazen de pagina van eerdere flyers | Spritepagina geselecteerd uit de originele laadmaskers; $64/$40 gebruiken D800 |
| $3D-onderstel en $40-aanvalshandlers ontbraken | ROM-fasen, richtingen, acceleratie, PRNG, framecarry en 20-Hz-cadans aangesloten |
| Baasgevecht bevroor achtergrond-/onderstelanimatie | Animatiecontroller blijft lopen terwijl de stream gate stopt |
| Grote kanonnen vuurden algemene puntkogels | Eigen type-$67-schoten, vijf looprichtingen, ROM-snelheid en SFX |
| FF10-route sloeg alternatieve kolommen altijd over | Vertakking volgt de werkelijk vernietigde $56-toren |
| $6A-afloop bleef eeuwig in de boss gate | Vernietigingsreeks voltooit stage; volgende achtergrond, sprites en muziek geladen |
| Vaste moeilijkheid 5 en onmiddellijke schade per pellet | ROM-loadoutmoeilijkheid en pending-schade op de oorspronkelijke servicecadans |

De native captures in `native_smooth_final/` en `native_smooth_firing/` zijn
werkelijke `render_smooth()`-frames (512×848), met respectievelijk geen vuur
en maximaal test-loadout/vuur vanaf frame7200. De oude PNG-contactvellen
worden niet opnieuw als bewijs gebruikt.

De HUD en alle vervolglevels zijn nog geen complete, visueel gevalideerde
port. De volgende-stage-initialisatie is aangesloten; die stage heeft nog
niet alle eigen vijandhandlers. Chipkanaalprioriteiten en het volledige
natuurlijke PRNG-aanroeppatroon blijven afzonderlijke fideliteitsgrenzen.
