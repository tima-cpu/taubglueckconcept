# Taubglück — Website-Redesign (Konzept)

Ein Redesign-Konzept für [taubglueck.de](https://taubglueck.de/), die Promo-Website der
Dating-App **Taubglück** für gehörlose, schwerhörige und taubblinde Menschen, CODAs und
Gebärdensprachdolmetscher\*innen.

> **Hinweis:** Dies ist ein Entwurf, nicht die offizielle Website. Alle Texte sind
> Vorschläge und müssen vor einem Livegang fachlich und rechtlich geprüft werden.

## Dateien

| Datei | Zweck |
|---|---|
| `index.html` | Die komplette Seite, eigenständig lauffähig (keine Build-Kette, keine Abhängigkeiten außer Google Fonts) |
| `build.sh` | Erzeugt `dist/artifact.html` — dieselbe Seite als Fragment ohne `<html>/<head>/<body>` |
| `dist/artifact.html` | Generiert. Nicht von Hand bearbeiten. |

Lokal ansehen: `index.html` im Browser öffnen.

## Was am Bestand nicht funktioniert

1. **Die Seite zeigt das Produkt nicht.** Das Telefon-Mockup hat einen leeren Bildschirm.
   Wer nicht schon weiß, was Taubglück ist, erfährt es hier nicht.
2. **Die Navigation besteht nur aus Rechtstexten** — AGB, Datenschutz, EULA, FAQ,
   Impressum. Es gibt keinen einzigen Link, der etwas über die App erzählt.
3. **Die Seite ist reiner Fließtext auf Deutsch.** Für viele Nutzer\*innen ist DGS die
   Erstsprache und Deutsch die Zweitsprache. Eine Website für diese Zielgruppe ohne ein
   einziges Gebärdenvideo hat das Sprachverhältnis genau falsch herum.
4. **Vollflächiges Gelb** über die halbe Ansicht ermüdet und lässt keine Hierarchie zu.
   Das Gelb ist ein gutes Markenzeichen — als Akzent, nicht als Fläche.
5. **Kein Vertrauensaufbau.** Die ID-Verifizierung ist das stärkste Argument der App und
   kommt auf der Seite nicht vor.

## Die Idee

**Gebärdensprache zuerst, Ton nirgends.**

Die Seite behandelt DGS nicht als Barrierefreiheits-Zusatz, sondern als gleichrangige
Sprachspur. Der `DGS`-Schalter im Kopf ist so prominent wie die Navigation und blendet in
den Abschnitten Videokarten ein. Untertitel und Mitlesetext gehören immer dazu — für
schwerhörige und spät ertaubte Menschen, für die DGS *nicht* die Erstsprache ist.

Weitere tragende Entscheidungen:

- **Das Produkt zeigen.** Der Held der Seite ist die echte Rasteransicht der App, nicht ein
  leeres Telefon.
- **Stöbern statt wischen.** Taubglück ist kein Swipe-Spiel, sondern ein Raster zum
  Durchsehen. Das ist ein Vorteil und wird auch so benannt.
- **Diskretion statt Reichweite.** Die Gehörlosen-Community in Deutschland ist klein, man
  kennt sich. Das ist beim Dating heikel. Kein Mainstream-Anbieter adressiert das — hier
  ist es ein eigener Abschnitt.
- **Identität statt Defizit.** „gehörlos“, „taub“, „CODA“ — keine Hörgeräte-Bildsprache,
  kein Mitleid.
- **Ruhige Bewegung, große Schrift.** Wer den ganzen Tag mit den Augen zuhört, ermüdet an
  einer flackernden Seite. Grundschriftgrad 17 px, Lead-Text 19 px, `prefers-reduced-motion`
  respektiert.

## Gestaltung

Die vorige Fassung folgte einem editorialen Drei-Flaechen-System: harte Farbbloecke,
1-px-Haarlinien als Trennung, 8-px-Radien, gedraengte Zeilenabstaende. Dieses Regelwerk
ist bewusst aufgegeben. Die Seite folgt jetzt einem eigenen System.

**Weiches Licht.**

Videos in Deutscher Gebaerdensprache werden weich ausgeleuchtet: eine grosse, diffuse
Quelle, keine harten Schatten, kein Glanz, damit die Haende jederzeit klar vor dem Koerper
stehen. Diese Ausleuchtung ist das Gestaltungsprinzip der Seite. Wer den ganzen Tag mit den
Augen zuhoert, soll auf eine Seite ohne Kanten und ohne Blendung schauen.

Daraus folgen drei Regeln, die alles andere bestimmen:

1. **Kein einziger Rahmen.** Auf der ganzen Seite gibt es keine `border`-Linie als
   Trennung. Flaechen setzen sich durch Licht und weichen Schatten voneinander ab.
2. **Alles ist eine Platte.** Abschnitte sind gerundete Flaechen, die auf dem Papier
   liegen, nicht Baender, die bis an den Bildschirmrand stossen. Nichts hat eine Ecke
   unter 10 px, Grossflaechen tragen 46 px.
3. **Eine Lichtquelle.** Das Licht kommt von oben, im Kopf von hinten rechts, wo das
   Telefon steht. Jede Platte traegt denselben Verlauf und denselben Innenglanz, damit
   die Seite wie ein Raum wirkt und nicht wie ein Stapel Kacheln.

### Farben

Gelb bleibt die Primaerfarbe, ist aber keine Flaeche mehr, sondern Licht: es faechert sich
in vier Stufen vom fast weissen Schein bis zum vollen Markengelb.

| Rolle | Wert | |
|---|---|---|
| Papier | `#F4F6F1` | Der Grund. Ein Neutral, minimal ins Gruen gezogen, also in Richtung des Akzents, statt reinem Grau |
| Platte | `#FFFFFF` | Alles, was Licht abbekommt |
| Senke | `#EAEFE7` | Die zurueckgesetzten Abschnitte |
| Markengelb | `#F0B31F` | Der Kern der Lichtfamilie |
| Honig / Schein | `#FFDC8E` / `#FFF5DC` | Die Streuung nach aussen |
| Tiefe | `#10322D` | Schlussakkord und die Semantik "geprueft" |
| Tinte | `#232624` | Warmes Gruenschwarz, nie reines Schwarz |

Schatten sind nie schwarz, sondern warm getoent (`rgba(38,46,36,…)`) und dreifach gestuft.
Ein reiner Schwarzschatten wirkt auf hellem Papier wie Schmutz.

### Schrift

| | |
|---|---|
| Display | **Hanken Grotesk** 340/360, sehr gross gesetzt. Eine weiche humanistische Grotesk mit runden Punzen, die die gerundeten Balken des ILY-Zeichens aufnimmt. Leichte Schnitte in grossem Grad lesen sich luftig, nicht duenn |
| Text und Bedienung | **Inter** 420/560 |
| Grundschriftgrad | 17 px, Lead-Text 19 px |
| Zeilenabstand | 1.6 im Text, 1.03 im Display. Die vorige Fassung verdichtete auf 0.96; das ist editorial richtig und fuer diese Zielgruppe zu eng |
| Laufweite | −0.028 em im Display, im Text nahe null |

### Aufbau

Der Kopf ist keine geteilte Flaeche mehr, sondern **eine grosse Platte** mit einem
durchgehenden Lichtverlauf. Links steht die Schlagzeile, rechts das Produkt im hellsten
Punkt des Verlaufs, unten von der Plattenkante angeschnitten. Die Kopfleiste schwebt als
Pille mit Milchglas darueber und bleibt beim Scrollen stehen.

Die vier App-Bereiche liegen darunter auf **einer** hellen Platte, nicht auf vier Karten.
Das Laufband mit den Zielgruppen laeuft ohne Rahmen und verlaeuft an beiden Enden ins
Papier. Der Gebaerdenraum ist weiterhin quadratisch und die groesste Flaeche seines
Abschnitts. Die haeufigen Fragen sind von einer linierten Liste zu einzelnen weichen
Flaechen geworden.

### Was von der Anti-Slop-Pruefung bleibt

Die inhaltlichen Befunde der vorigen Pruefung sind weiter erfuellt: keine Gedankenstriche
im Seitentext, echte Screenshots statt nachgebauter Oberflaechen, drei Eyebrow-Marken,
Icons aus Phosphor bis auf den Markenknoten, keine drei gleichen Karten nebeneinander.

Eine formale Vorgabe ist bewusst zurueckgenommen: im Laufband stehen wieder Punkte statt
Haarlinien. Das neue System kennt keine Linien, und ein kleiner Lichtpunkt ist hier das
systemtreue Trennzeichen.

**Design Read:** Konsumenten-Lending fuer eine Dating-App, Redesign mit Markenerhalt,
Zielgruppe gehoerlose und schwerhoerige Menschen, Sprache aus Vertrauen und
Zugaenglichkeit. Regler: Varianz 6, Bewegung 2, Dichte 3. Bewegung und Dichte liegen
niedriger als zuvor, weil die Zielgruppe den ganzen Tag mit den Augen zuhoert.

### Bewusste Abweichungen

1. **Kein Dunkelmodus.** Das Regelwerk verlangt beide Modi, erlaubt aber die Ausnahme bei
   ausdruecklicher Ansage. Die gab es. Die Seite ist eine einzige, bewusst helle Welt und
   malt Grund und Farben ausdruecklich, damit sie in jeder Umgebung haelt.
2. **Inter bleibt im Text.** Als Standardschrift eigentlich unerwuenscht, hier durch den
   barrierefreien Auftrag gedeckt und auf Text und Bedienung begrenzt; die Display-Ebene
   traegt jetzt Hanken Grotesk. Fuer diese Zielgruppe waere **Atkinson Hyperlegible**
   trotzdem die bessere Fliesstextschrift. Eine Zeile in `--ff`. Empfehlung, keine
   Entscheidung.
3. **Handgezeichneter Markenknoten.** Handgemachte SVG sind verboten, ein einfaches
   Markenzeichen ist die Ausnahme, und ein Redesign aendert das Logo ohnehin nie still.
4. **Zwei Aktionen im Schlussband.** Eine App braucht beide Stores. Im Kopf bleibt es bei
   einer Aktion.

### Zu den Screenshots

Die Aufnahmen stammen aus der ausgelieferten App. Sie zeigen **echte Mitglieder einer
kleinen Community**, deshalb sind Gesichter und Profilfotos unkenntlich gemacht, waehrend
die Bedienoberflaeche scharf bleibt. Fuer einen Livegang braucht es freigegebene
Marketing-Aufnahmen oder Einverstaendniserklaerungen der abgebildeten Personen.

## Zum Markenzeichen

Das ILY-Handzeichen ist ein starkes Logo und bleibt. Es wurde aber **neu gezeichnet**: In
der Bestandsform stehen fünf getrennte Balken nebeneinander, was in kleinen Größen — im
Seitenkopf, als Favicon, in der Tab-Leiste — wie ein Balkendiagramm aussieht statt wie eine
Hand. Die Neuzeichnung ergänzt eine Handfläche, sodass die Form auch bei 30 px als
Handzeichen lesbar bleibt. Gleiche Idee, gleiche Farbe, bessere Lesbarkeit.

## Was noch zu klären ist

- **Gebärdenvideos.** Auf der Seite sind Platzhalter. Sie brauchen echte Aufnahmen mit
  tauben Muttersprachler\*innen — nicht mit hörenden Dolmetscher\*innen.
- **Fotos.** Die Entwürfe nutzen abstrakte Farbflächen statt Personenbildern. Für den
  Livegang braucht es Bilder echter Menschen aus der Community, mit Einverständnis.
- **Preise.** Die App kennt „Abonnieren“; was das Abo umfasst, steht in der FAQ bewusst
  offen und muss ergänzt werden.
- **Alle Texte** sind Entwürfe und fachlich zu prüfen.

## Empfehlungen über die Website hinaus

Beim Durchsehen der App sind zwei Dinge aufgefallen, die nicht die Website betreffen,
aber stark auf sie einzahlen würden:

1. **Viele Profile haben kein Foto.** In der Rasteransicht ist rund die Hälfte eine graue
   Silhouette. Das drückt die Qualität des ersten Eindrucks stärker als jede
   Startseite. Ein Onboarding, das beim ersten Foto aktiv hilft, wäre die wirksamste
   einzelne Verbesserung.
2. **Ein Gebärdenvideo im Profil.** Ein 15-Sekunden-Clip sagt über einen Menschen mehr aus
   als jeder Steckbrief — und wäre ein Alleinstellungsmerkmal, das keine
   Mainstream-App nachbauen wird. Auf der Seite ist die Idee als *Vorschlag*
   gekennzeichnet, nicht als bestehende Funktion.
