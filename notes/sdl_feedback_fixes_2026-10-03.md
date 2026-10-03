# Reparaties na screenshots: late stage0, options, sterren en POWER

2026-10-03. Gebaseerd op de lokale `space_manbow.rom`, SHA256
`bca5696ebbf4a3493bb226baa03ba8f8c5cc4876a4ad0eaa9722f583a42192b0`.
Dit is een aanvulling op `sdl_late_combat_fixes_2026-10-03.md`.

## Linkerrand en sterren

De SCREEN4-presenter herhaalde de eerste zichtbare tegel voor de maximaal
zeven pixels die R18 links blootlegt. De presenter leest nu de echte vorige
ringkolom. Negatieve tegelactorposities worden naar beneden afgerond voordat
hun subpixeldeel wordt toegevoegd: een actor op -0,5px stond eerder op +0,5px.

Sterren werden eerst in D988 gezet en vervolgens met de scenery geïnterpoleerd.
Bij een R18/tilecarry sprongen ze acht pixels terug. `render_wide()` en
`render_smooth()` tekenen nu een eigen laag op basis van C0E8 en de originele
sterrenzaden uit fixed bank0 $4600/$4700. De laag interpoleert de afzonderlijke
sterrenfase, ook over de 16-bit wrap en tijdens de baasstilstand. Y volgt de
verticale route vloeiend. Scenery en niet-nul objecttegelcellen schermen sterren
af, ook wanneer hun pixels zwart zijn. De sterren gebruiken paletkleur8;
de lege achtergrond is kleur15. Het hardwarediagnosepad `render()` blijft
de oorspronkelijke D988/R18-presentatie gebruiken.

De aanvullende rendertest volgt **3566 frames** langs de route vanaf sprong6,
inclusief scrollcarries, verticaal scrollen en de eindbaas. Een afzonderlijke
test gebruikt verschillende tegels voor de vorige en eerste zichtbare kolom,
zodat herhaling van de linkertegel daadwerkelijk wordt ontdekt.

## Toren en het deel erna

Het ontbrekende deel is actor **$47**, spawnrecord **$3039**. Fixed $5B2B
verwijdert hem direct als CE4C niet gezet is. Na vernietiging van toren $56
zet hij CE4D en speelt hij zeven matrixscripts uit $5B67, elk twee logic ticks.
Bij de overgang naar frame1 vraagt hij SFX$34 aan. SDL maakt de actor nu aan,
tekent de volledige scripts en laat de animatie aflopen terwijl zijn anker
links buiten beeld schuift. Hij verdwijnt na frame6.

CE4C en CE4D hebben nu afzonderlijke native state. De $56-score wordt één keer
bij torenvernietiging toegekend; de latere $47/SFX$34 kan die score niet opnieuw
toekennen. De andere scrollroute bij FF10 blijft gekoppeld aan CE4C.

$56 gebruikt nu ook de vier live frames van $BF3F/$6AC2. De vernietigingscadans
volgt de ROM-PRNG, inclusief de rood/witte CE48-flits. Zodra CE4D gezet is,
stopt alleen de aanvraag van het rumblegeluid $35; de flitsen lopen door.
De vier $69-explosieposities komen uit $BFB8. De ROM telt hun packed Y/X-offset
als één woord op: een Y-carry kan de X-cel verhogen. SDL doet nu hetzelfde.

## Koepel en options

De $26-koepel is een native tegelobject van 32px breed. De $11-schijf is een
SAT-sprite van 16px breed met een andere oorspronkelijke tekenoorsprong.
De eerdere geboorte op parentX+16 zette zijn zichtbare midden 15px rechts
van de koepelopening. Native geboorte-X is nu parentX+1px, zodat beide zichtbare
middens overeenkomen. Dezelfde native positie wordt voor collision gebruikt.
De ROM-stijgfase, verticale snelheid -$00C0, animatie, afstandsafhankelijke
vertraging en daaropvolgende richtfase blijven behouden. Deze X-compensatie
is bewust een presentatieaanpassing; geen claim dat de SDL-geboortecoördinaat
bitexact gelijk is aan de Z80-objectcoördinaat.

Bank02 $839C geeft de standaardradius $0280. $8324 telt bij beide options
$00E0 op. De netto ankerafstand is daardoor -$01A0 boven en +$0360 onder
de speler: -13px en +27px. De tweede option stond eerder op +13px. Alle drie
CB1B-posities (-$80,0,+$80) worden toegepast via dezelfde native helper.

## Levenspunten en geluid

De ROM trekt pending damage van +16 af. Gelijkheid laat HP0 in leven;
pas subtraction carry (damage > resterende HP) veroorzaakt vernietiging.
Onderstaande aantallen gelden voor één schade-eenheid per treffer, eerste
ronde, en een kwetsbaar object. Sterker normaal vuur, W en M leveren andere
schade-eenheden; M levert twee.

| Object | Type | Begin-HP | Gewone treffers | Vernietigingsselector |
| --- | --- | ---: | ---: | --- |
| Gewone flyers/schijven | $10/$11/$12/$18 | 0 | 1 | $10 |
| Flyer $15 | $15 | 1 | 2 | $10 |
| Groot kanon | $1F | 5 | 6 | $14 |
| Kleine turret | $20 | 1 | 2 | $11 |
| Dubbele lanceerder | $22 | 6 | 7 | $13 |
| Koepel | $26 | 8 | 9 | $13 |
| Groot vliegend voertuig | $55 | 10 | 11 | $13 |
| Toren met rode bal | $56 | 44 | 45 | $34 + $14, daarna $35/$33 |
| Eerste eindbaas | $64 | 60 | 61 | $4D |

$7C44 vraagt ook bij een fatale treffer impact$16 aan, vóór de selector uit
de death-table. $7C63 gebruikt boss-impact$25. Deze fatale impact ontbrak in
SDL en is toegevoegd. $56 houdt zijn eigen boss/death-service.

De juiste selectors zijn hiermee gecontroleerd. De PCM-mixer blijft een
beperking: hij mengt opgenomen originele PSG/SCC-clips, maar reproduceert
niet alle kanaalprioriteiten en afgebroken effecten van de live sounddriver.
Dit rapport claimt daarom geen bitexacte audiomix.

## POWER en verificatie

Bank01 $6BFD kiest familie1 voor de eerste acht gevulde blokjes en familie2
voor blokjes8..15. Native POWER gebruikt nu rood, daarna geel; lege blokjes
blijven grijs. De native HUD-lettervormen en celafmetingen zijn hiermee niet
volledig omgezet naar de oorspronkelijke HUD-rasterdata.

`python3 tools/run_feedback_validation.py` voert ongewijzigde ROM-routines
uit tegen dezelfde inputs als de native code. Resultaat **357/357 exact**,
vastgelegd in `feedback_rom_validation_2026-10-03.json`:

- 48 optionposities: vier radii, beide kanten, drie modi, twee subpixelposities;
- 18 $47-stategevallen, inclusief verwijderen bij intacte toren;
- 35 $47-matrixcomposities: alle zeven frames, vijf posities/clippinggevallen,
  telkens alle 1536 bytes van D800..DDFF vergeleken;
- 176 gewone schade/death-gevallen, vier schadesterktes en relevante HP-grenzen,
  inclusief de volgorde van de aangevraagde geluidselectors;
- 64 afzonderlijke $56-gevallen, inclusief live animatie, fataal/niet-fataal,
  CE4C, timers en geluidselectors;
- 16 POWER-kleurkeuzes; de native zijde leest de daadwerkelijk gerenderde HUD.

`space-manbow-feedback-test` controleert daarnaast de speelbare route:
sterrenbeweging, optionafstand, gecentreerde koepeluitgang, alle zeven
kettingframes, score precies één keer, witte flits zonder rumble na CE4D,
fatale impact vóór explosie en correcte linkerrand/negatieve subpixelpositie.

Ook geslaagd: build, runtime, speler/session, play-features, combat, late-combat,
SDL-audio en SDL-start met video/audio. Eerdere onafhankelijke vergelijkingen
blijven groen: late-combat **254/254**, vroege viewport **5408/5408 bytes**.
Beeldcaptures staan in `tools/probe_out/feedback_native/`. De tests bewijzen
de genoemde helpers en presentatiegevallen; geen volledige ROM-equivalentie.
