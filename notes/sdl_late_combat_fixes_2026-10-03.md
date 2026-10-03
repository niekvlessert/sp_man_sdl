# Late stage-0, wapens en originele gevechtswaarden

2026-10-03. Reparaties aan de speelbare SDL-route tot en met de eerste baas.
De ROM levert tegelmatrices, spritepagina's, objectmetadata, bewegings- en
schadetabellen, richtingswaarden, geluidselectors en de stage-streams.

## Beweging en beeld

De native SDL-textuur is 512×848 met nearest-neighbor presentatie en dezelfde
256:212-beeldverhouding. De camera beweegt per video-frame op halve X-pixels
of kwart Y-pixels. De oorspronkelijke scenery-logica blijft op 15 Hz en de
baaslogica op 20 Hz. Dezelfde interpolatie is toegepast op de relevante
sprites en tegelobjecten; rendering verandert geen objectstate.

Toren en klauw gebruiken volledige ROM-matrices en geometrische clipping.
Bij de voertuigingang schrijft de initialisatie de eerste A13F-kolom naar
fysieke kolom31; de gewone presentatie-rewind mag die niet naar kolom30
verplaatsen. De onafhankelijke vroege viewport/ring-check geeft na herstel
**5408/5408 bytes exact**.
$3D volgt de baas en kiest zijn onderstelframe met CA3B, X en de originele
fine-scrollcarry. $40 gebruikt zijn oorspronkelijke lanceer-, richt- en
acceleratiefasen. De juiste D800-spritepagina voorkomt de losse flyer- en
kogelpatronen die eerder in plaats van baas/projectielen werden gelezen.

FF10 kiest de alternatieve route alleen bij een vernietigde toren. Na $6A
volgt de volgende stage. De initialisatie leest checkpoint, metatiles,
patroon-/kleurdata, sprites en palet uit de ROM, vult de 31 startkolommen en
schakelt de muziek om. Stage1/context0 gebruikt R4=$03/R10=$00 en geen
stage0-sterren of snelle grondstrook. Bij X544 komen sourceA4CB/trigger1044
overeen met een onafhankelijke originele snapshot.

## Sterkte, treffers en kogels

- CA19-equivalent wordt bepaald door normale/W-bewapening, M, aantal opties
  en power volgens bank02 $83E7, met maximum15. Speed telt niet mee.
- Moeilijkheid stuurt ook de relevante spawn-gates, schotkansen en snelheden.
- Trefferschade wordt eerst in object +04 gezet en op de oorspronkelijke
  servicecadans verbruikt. Gelijktijdige W-pellets overschrijven pending
  damage zoals $76A9; ze leveren geen extra directe schade per pellet.
- HP komt uit de ROM-metadata. HP=0 is nog niet vernietigd: de carry bij
  schade groter dan de resterende HP bepaalt de vernietiging.
- De kunstmatige grote $64-hitbox is vervangen door echte componenten en
  tegelcellen. Negatieve spritecomponent-offsets worden correct geïnterpreteerd.
- Eigen type-$67-kanonschoten volgen de vaste looprichting, ROM-mondpositie,
  snelheidstabel en SFX$19. Algemene schoten gebruiken de CA19-snelheidstabel.
- Vijandcollision gaat vóór terraincollision; een solide kanoncel slikt de
  treffer niet meer in voordat schade is geregistreerd.

## M, N en het blauwe item

M (selector3) geeft een blijvende type-$07-grondraket, onafhankelijk van W.
De raket valt, landt en volgt het terrein met de oorspronkelijke vier
snelheidsparen. Ook native voertuigoverlays tellen mee als terrein. M levert
**twee** schade-eenheden per treffer volgens de originele $76A9-route.

Het blauwe item (selector11) zet een eenmalige grote type-$08-salvo klaar;
het volgende primaire schot verbruikt die voorraad. Reizen, contact met
terrein, expansie, beide globale blastfasen en onmiddellijke beëindiging
volgen bank02 $88E6..$8949. $7058 zet kwetsbare vijanden op HP0/pending1,
zodat hun gewone vernietigings-, score-, geluid- en pickup-pad blijft werken.
$708B behandelt de eerste speciale baas afzonderlijk: de eerste baas gaat
naar originele begin-HP/4-1 ($0E), terwijl de toren $56 is uitgesloten.

N (selector12) selecteert normaal vuur en veroorzaakt geen blast. Selector13
vraagt het powergeluid en veroorzaakt evenmin een blast. Dubbele M en
maximale O worden vervangen door rood; dubbele W door N.

Expansie en ontploffing gebruiken SFX$0D/$0E. De donkere/lichte paletreactie
wordt native gepresenteerd. Dit is geen bitexacte herimplementatie van de
volledige hardwarepalet-interpolator. C0D8 is de paletherstelteller, geen
bewijs voor een apart schermschudeffect.

## Audio

27 PCM-assets uit de originele PSG/SCC-driver: twee muziekstukken en 25
selectors voor schieten, geraakt worden, pickups, specifieke explosies,
kanon, klauw en bom. `tools/export_play_audio.py` bevat de selectorprovenance;
SDL laadt/mengt de clips zonder libvgm. Deze mixer reproduceert nog niet de
PSG/SCC-kanaalprioriteit of afgebroken effecten bij kanaalconflicten.

## Validatie en grenzen

`tools/run_late_combat_native_validation.py` voert ongewijzigde Z80-routines
uit tegen dezelfde RAM-inputs als de C++-handlers. Rapport:
`notes/late_combat_native_validation.json`, **254/254 exact**:

- $40-aanvalsfases, richting en PRNG-inputs;
- 96 $3D fase/scrollcarry-combinaties;
- 48 bewapenings-/powercombinaties voor CA19;
- 14 typegevallen voor de blauwe blast;
- 40 kanonrichting/snelheid/subpixelgevallen;
- 8 terreinmaskers voor M-raketbeweging.

De aanvullende `space-manbow-late-combat-test` controleert echte
sessioncollision met M, N zonder blast, de volledige blauwe aanval inclusief
SFX/pickups/baasuitsluiting, HP+1-treffers, landen op voertuigterrein,
kwartpixel-Y-textuurbeweging op vier opeenvolgende frames, natuurlijke
baasaanvallen, baasvernietiging door spelerprojectielen, zichtbare volgende
achtergrond, behoud van upgrades en correcte reset.

Deze geïsoleerde bytevergelijkingen bewijzen niet dat alle gameplay op elke
natuurlijke frame identiek is. PRNG-consumptie verschilt zolang niet alle
originele systeemhandlers draaien. De gerepareerde scope is stage0 en de
volgende-stage-intro; de negen stages, alle volgende vijandfamilies, HUD en
spelersterfte/respawn zijn nog geen volledig afgewerkte port. De gecorrigeerde
visuele inspectie trekt eerdere conclusies op basis van stale emulatorbeelden in.

De afsluitende build en regressies slagen: runtime (7744 frames/75 ROM-spawns),
speler/session, play-features (8784 routeframes/10 deterministische jumps),
combat, late-combat en SDL-audio. De bestaande ROM-checks geven speler405/405,
flyers10/10 en W8/8 exact. Een drie seconden durende interactieve SDL-run
met dummy video/audio start en rendert zonder fouten. Een lokale meting van
120 baasframes geeft gemiddeld 0,97 ms voor simulatie plus `render_smooth()`;
dat meet CPU-tijd op deze machine, niet GPU-presentatie of volledige frametiming.
