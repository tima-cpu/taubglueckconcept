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
  einer flackernden Seite. Grundschriftgrad 19 px, `prefers-reduced-motion` respektiert.

## Gestaltung

Die Seite folgt einem **editorialen Drei-Flächen-System**: jede Seite läuft durch drei
Flächen und löst sich am Ende in einer dunklen auf. Übernommen ist die Ordnung, nicht die
Farbe — im Original trägt der Kopf ein tiefes Indigo. Hier trägt ihn das Markengelb, weil
Gelb die Primärfarbe der Marke ist und bleibt.

| Fläche | Farbe | Rolle |
|---|---|---|
| 1 — Kopf | `#FFC21A` Markengelb | Der Auftritt. Tinte dunkel, nie weiß. |
| 2 — Rumpf | `#FFFFFF` / `#FAFAF8` | Der Inhalt. Abschnitte wechseln zwischen Weiß und einem kaum getönten Off-White. |
| 3 — Schluss | `#0E3030` tiefes Teal | Der Schlussakkord. Bricht die Gelb/Weiß-Folge auf. |

Teal ist die einzige Farbe außer Gelb. Sie schließt nicht nur die Seite ab, sondern trägt
auch die Semantik „geprüft“ im Rumpf — so bleibt das System bei zwei Farben plus warmen
Grautönen. Ein vierter Farbton würde die Ordnung brechen.

**Weitere Regeln des Systems**

| | |
|---|---|
| Tinte | `#292827` — warmes Dunkelgrau, nie reines Schwarz |
| Schrift | Inter Variable in **Zwischengewichten** 460 / 540 / 600 statt 400 / 500 / 700 |
| Zeilenabstand | 0.96 auf Displaygrößen — editoriale Verdichtung |
| Laufweite | negativ auf Displaygrößen, bis −0.0275 em |
| Radien | 8 px Rechteck für Schaltflächen, 12 px für Karten, 6 px für Felder |
| Pillen | ausschließlich im Kopf — im Rumpf gibt es keine Pillen-Buttons |
| Aktionen | eine Aktion pro Fläche; die Seite drängelt nicht |
| Abstände | 8-px-Basis, 64–96 px zwischen Abschnitten, bis 128 px im Schlussband |
| Container | 1100 px, Lesetext auf 62 Zeichen |

Der Kopf ist in **zwei Hälften bis an den Rand** geteilt: links das Markengelb mit
Schlagzeile, einer Aktion und einer Zeilenliste der vier App-Bereiche, rechts die
Produktaufnahme auf einem warmen Verlauf, unten angeschnitten. Die Kopfleiste bleibt weiß
und sitzt über beiden Hälften.

Der Abschnitt „Die App“ läuft als **Bento-Raster**: eine breite Karte, darunter zwei
mittlere, jede mit Label, Aussage und einem von der Kartenkante beschnittenen Produktbild.
Die Sicherheitskarten tragen **Verlaufskacheln** statt Nummern. Der Gebärdenraum ist
bewusst **quadratisch und groß** — die Videofläche ist der Ort, an dem die Sprache der
Zielgruppe stattfindet, und darf nicht die kleinste Fläche der Seite sein.

### Abweichung vom System

Zwei Stellen weichen bewusst ab, beide notiert statt versteckt:

1. **Zwei Aktionen im Schlussband.** Das System erlaubt eine. Eine App braucht aber beide
   Stores; ein Umweg über eine Zwischenseite kostet Installationen. Im Kopf bleibt es bei
   einer Aktion, die Store-Links stehen dort nur als Textlinks darunter.
2. **Schrift.** Das System schreibt Inter vor, und die Seite nutzt Inter. Für diese
   Zielgruppe wäre **Atkinson Hyperlegible** die bessere Fließtextschrift — vom Braille
   Institute für maximale Lesbarkeit gezeichnet, verwechselbare Buchstaben bewusst
   unterscheidbar. Der Tausch ist eine Zeile in `--ff`. Empfehlung, keine Entscheidung.

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
