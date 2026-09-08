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

**Farbe** — dunkler warmer Grund, Markengelb als einziger lauter Akzent.

| Token | Wert | Rolle |
|---|---|---|
| `--bg` | `#171412` | warmes Tintenschwarz, Grundfläche |
| `--gold` | `#FFC21A` | Markengelb (aus dem Bestand übernommen) |
| `--fg` | `#F6F3EE` | Fließtext |
| `--verify` | `#5BC8A8` | Semantik: geprüft |
| `--coral` | `#FF8B78` | sparsam, für die warmen Momente |

Hell- und Dunkelmodus sind vollständig über Tokens gebaut und folgen der Einstellung der
Besucher\*innen.

**Schrift**

- *Bricolage Grotesque* — Display, warm und eigenwillig
- *Atkinson Hyperlegible* — Fließtext. Vom Braille Institute für maximale Lesbarkeit
  entwickelt; verwechselbare Buchstaben sind bewusst unterscheidbar gezeichnet. Für ein
  Produkt, das Barrierefreiheit zum Thema hat, die naheliegende Wahl.
- *DM Mono* — Labels und Auszeichnungen

**Layout** — „Sichtachsen“: breite Bänder, freie Blickfelder, viel Luft. Angelehnt an
DeafSpace, die Architekturprinzipien der Gallaudet University: klare Sichtlinien, nichts
verstellt den Blick.

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
