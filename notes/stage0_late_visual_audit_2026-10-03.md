# Visuele inspectie: vóór de toren tot en met de eindbaas

Datum: 2026-10-03. Doel: dezelfde zichtbare inhoud als de originele ROM,
met soepele presentatie in SDL. Verschillen in de interne C++/Z80-uitvoering
zijn alleen relevant wanneer ze zichtbaar gedrag veranderen.

## Referentie en werkwijze

De toren met de bal is type **$56**. De blauwe eindbaas met grijparm is
type **$64**. Oudere notities en broncommentaren noemen $64 soms nog een
"tower/gate"; dat is een onjuiste visuele naam.

De originele, ongewijzigde cartridge is opnieuw uitgevoerd in de bestaande
OpenMSX-build, machine Panasonic_FS-A1WSX. Screenshots en objectrecords zijn
vastgelegd van 100 tot 215 emulatieseconden. RAM-only onkwetsbaarheid via
CA53/CA54 voorkomt dat de stilstaande speler de route afbreekt. De route
gebruikt geen autofire. Na twintig seconden observatie van $64 is één
gelogde pending-damage-injectie HP+1 gebruikt om de afloop te kunnen bekijken.
Er zijn geen cartridgebytes aangepast.

OpenMSX slaat bij throttle=off videoframes over op basis van de werkelijke
klok, ook met maxframeskip=0. De definitieve referentie schakelt daarom vóór
iedere screenshot 0,05 emulatieseconden throttle in en gebruikt frameskip=0.
Alleen `original_synced/` geldt als definitieve beeldreferentie. De twee
eerdere runs zijn diagnostiek en mogen niet als synchrone referentie dienen.

SDL-beelden komen uit de werkelijke `PlaySession::render_wide()`-presentatie
(512x212), niet uit de oudere `--capture-at`-route die gewone `render()` gebruikt.
Er is een run zonder input en een aparte run met maximale bewapening en vuur
vanaf native frame 7200. Dat tweede pad dient om vernietiging/afloop te observeren.

Beelden zijn gekoppeld op camera X/Y, streamfase en, bij de baas, objectpositie,
fase en tile-selector. De torenvergelijking bij ROM t=123 heeft exact dezelfde
camera X=3896/Y=-192 als SDL f=7680. Tijdens de verticale overgang lopen de
wereldcoördinaten zelf uiteen: bij dezelfde scriptfase A3F6 heeft de ROM
X=4254/Y=-66 en SDL X=4166/Y=-58. Die vergelijking bewijst een ontbrekend
scènedeel, maar is geen exacte pixelvergelijking bij identieke toestand.
Bij de baas vergelijken ROM t=150 en SDL f=9720 beide fase6/tile3/sprite4;
de ankers verschillen slechts twee logische pixels in X.

Bewijs onder `tools/probe_out/late_visual_audit_2026-10-03/`:
`comparison_selected.png`, `comparison.png`, `comparison_pairs.json`,
`native_motion.json`, originele/native states.tsv en `provenance.json`.
De map bevat ook de diagnostische native inspector en reproductiescripts.

## Aangetoonde verschillen

### 1. Toren en omringend voertuig staan in de verkeerde beeldfase/positie

Bij X=3896/Y=-192 verschijnt de toren in de ROM pas aan de rechterkant.
SDL toont op precies die camera al een vrijwel complete toren midden in beeld.
Ook de volgorde/plaatsing van de naburige dekdelen en kanonnen verschilt.
Dit is dus geen verschil dat alleen ontstaat door een andere afspeeltijd.
De native overlays en het geroteerde achtergrondbeeld delen hier geen
correcte zichtbare oorsprong. Het opnieuw gebruiken van ROM-tegels alleen
garandeert de juiste plaatsing niet.

### 2. Bovenkant verdwijnt abrupt en de toren wordt te vroeg verwijderd

`draw_tile_actor()` in `src/play_session.cpp` verbergt $56 expliciet wanneer
zijn anker links van **x=96** komt. Daardoor verdwijnt het bovendeel terwijl de
basis nog zichtbaar is. `scroll_stage0_objects()` gebruikt bovendien voor
$56 de algemene grens -$0200, slechts -16 pixels, om het hele object te verwijderen.

De ROM houdt $56 juist actief met negatieve ankercoördinaten: bijvoorbeeld
X=$EE80 rond t=129 en X=$DF80 rond t=132. Het samengestelde voertuig/torenbeeld
is in die laatste referentie nog duidelijk zichtbaar. Clipping moet volgen
uit de volledige zichtbare geometrie en de juiste scènetransformatie.

### 3. Bij de verticale terugkeer verdwijnt te veel decor

Tijdens A3B2..A3F6 blijft de toren met het aansluitende voertuig in de ROM
zichtbaar terwijl het beeld verticaal terugschuift. SDL toont daar al vrijwel
alleen sterren en de speler. Het voertuig schuift daardoor onvoldoende als
een samenhangend geheel uit beeld. Objectverwijdering, achtergrondpositie
en de omschakeling van raster/patrooncontext moeten gezamenlijk worden hersteld.

### 4. Verticaal scrollen is nog niet soepel op 60 Hz

Framevergelijkingen f=6897..6912 geven voor de verticale verplaatsing telkens
`0,0,0,1` logische pixel over vier frames. De horizontale presentatie gebruikt
wel halve pixels. `render_wide()` fixeert de onderliggende renderfase op het
coarse eindpunt en interpoleert daarna uitsluitend de X-verplaatsing.
Dat laat de Y-beweging op de oude 15-Hz-stappen staan. Voor het gewenste beeld
moet ook Y tussen de scènes worden gepresenteerd, inclusief de bewegende overlays.

### 5. De klauw van de eindbaas wordt soms volledig weggeknipt

In `decode_stage0_tile_visuals()` wordt matrixframe7 van $64 weggegooid zodra
zijn oorsprong links van **x=32** ligt. Dat verwijdert ook een complete, nog
zichtbare klauw tijdens de normale terugtrekbeweging. De vergelijking van
ROM t=150 met SDL f=9720 laat dit zien bij dezelfde baasfase/tile-selector.
De ROM toont de hand links; SDL mist de hand en houdt losse blauwe spritefragmenten over.
Dit is een te ruime ingreep uit een eerdere artefactcorrectie.

### 6. Onderstelanimatie en echte aanvallen van de eindbaas ontbreken

De ROM creëert naast $64 een object **$3D** voor het afzonderlijke, fasegestuurde
tiledeel van het onderstel. Bank06 $A530..$A55D kiest zijn frame met CA3B en de
scrollcarry. De ROM maakt daarnaast **$40**-aanvalsobjecten via $A560; de
handler $A57F.. gebruikt meerdere bewegings-/richtfasen en spelergericht gedrag.

De referentie bij t=142 bevat $64, $3D en drie $40-objecten; bij t=150 zijn
vier $40-objecten aanwezig. De native run bevat in die ontmoeting alleen $64.
De native baas heeft wel de basis van de open/dicht-beweging, maar mist daarmee
onderstelanimatie, zichtbare salvo's en hun vervolgbeweging.

### 7. Kanonschoten hebben een ander uiterlijk

De ROM-captures tonen lange gele schoten, ook diagonaal. SDL gebruikt in deze
sectie veel kleine oranje/witte stippen. `Stage0Combat::fire()` maakt ook voor
de grote $1F-kanonnen de algemene type-$60-kogel. De eigen oorspronkelijke
projectielroute van die kanonnen is nog niet volledig overgenomen.
Het juiste projectielbeeld en bewegingspatroon moeten worden teruggebracht.

### 8. De afloop na het verslaan van de baas ontbreekt

In de ROM volgt op de gelogde vernietiging $64->$6A de vernietigingssequentie,
de voltooiingsvlag en de volgende stage-initialisatie. Rond t=160 staat de
originele stage-index op1 en daarna komt de volgende achtergrond binnen.

In de native vuur-run is $64 verdwenen, maar op f=9000..13200 blijft het beeld
bij camera4352, streamA43A en gated=true staan. Er wordt geen volgend level
gestart. De native $6A-handler verwijdert uiteindelijk alleen het object;
een aangesloten levelcontroller ontbreekt.

## Overige zichtbare afwijkingen en grenzen van de inspectie

- Tijdens het originele baasgevecht verschijnt in deze referentie een blauwe
  arena-achtergrond; SDL houdt zijn zwarte sterrenveld. De zichtbare context
  verschilt. De precieze trigger van die blauwe fase is nog niet geïsoleerd,
  dus dit mag niet worden opgelost door de hele baasachtergrond permanent blauw
  te maken zonder aanvullend onderzoek.
- HUD-lettervorm, formaat en plaatsing verschillen; de levensindicator ontbreekt.
  Scorewaarden zijn hier niet één-op-één vergelijkbaar door verschillend spelverloop.
- De native voertuigaanvallen gebruiken een vaste CA19-equivalent5. De verse
  originele run heeft CA19=1. Aantallen en precieze frequentie van die aanvallen
  zijn daarom geen eerlijke directe vergelijking. Ontbrekende baasfamilies en
  de geometrische fouten hierboven hangen niet van alleen die aantallen af.
- De destructiesequentie van $56 heeft inmiddels eigen native fasen, kleuren,
  geluiden en $69-effecten. Deze inspectie bewijst niet dat die volledige
  reeks visueel exact is. Dat moet apart met gelijke schade-/wapentoestanden
  worden vergeleken voordat nieuwe wijzigingen eraan worden voorgesteld.

## Aanbevolen volgorde

1. Herstel de positie/compositie van toren en decor; vervang de x=96-ingreep
   en de te vroege objectverwijdering door clipping op zichtbare geometrie.
2. Presenteer verticale/diagonale scènebeweging ook op 60 Hz en behoud het
   volledige voertuig tijdens de verticale overgang.
3. Herstel de volledige klauw en voeg het onderstel en de $40-aanvallen toe.
4. Controleer arena-/paletfasen, projectielbeelden en de baasafloop.

Dit onderzoek verandert geen native gameplay- of rendercode. Er is geen
volledig opnieuw uitgevoerde regressiesuite nodig geweest; het zijn verse
visuele/state-captures, ROM-handlerinspectie en meting van de bestaande uitvoer.
