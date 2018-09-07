---
title: Über Code &middot; Kultur &middot; Bonn
---
Diese Seiten werden automatisch aus einem [Verzeichnis mit Textdateien](https://github.com/codekulturbonn/codekulturbonn.github.io/tree/source/src) erzeugt. 
Die Dateien können in *Markdown* (Endung .md) oder [*Monk*](http://mulholland.xyz/docs/monk/) (Endung .mk) 
formatiert sein. Du möchtest einen Einträg ändern oder ergänzen? Schicke uns einfach einen 
[Pull Request auf Github](https://github.com/codekulturbonn/codekulturbonn.github.io).

Einträge können sich auf [einen Ort](/venues.html) oder [eine Veranstaltung](/events.html) beziehen oder [ortsunabhängige 
Aktivitäten](/activities.html) beschreiben.

Die Einträge sind dabei Textdateien mit einer einfachen Struktur. Eine Datei beginnt immer mit drei Strichen `---`, 
gefolgt von einer Reihe Kopfzeilen, abgeschlossen mit nochmals `---`. Der Rest der Datei enthält die Beschreibung im
[*Monk*](http://mulholland.xyz/docs/monk/)-Format. 

Hier ein Beispiel für Kopfzeilen eines Ortes:

	title: Haus der Jugend
	location: Bonn
	venue_url: http://hausderjugendbonn.de/

Veranstaltungen haben andere Kopfzeilen, z.B.:

	title: FutureCamp
	start: 2018-09-22
	fullday: true
	event_url: https://futurecamp.digital/
	venue: haus-der-jugend

`venue` enthält dabei den Dateinamen eines Veranstaltungsortes. Auf diese Weise können wir Veranstaltungen an einem 
bestimmten Ort auflisten, z.B. im [Haus der Jugend](/venues/haus-der-jugend.html). 

Wir freuen uns auf eure Einträge!

## Autor

:p ||
	Dr. Olav Schettler
	Pipinstr. 14
	D-53111 Bonn (NRW)
	Germany

Inhaltlich Verantwortlicher gemäß §10 Abs.3 MDStV

Dr. Olav Schettler

## Haftungshinweis

Trotz sorgfältiger inhaltlicher Kontrolle übernehme ich keine Haftung für die Inhalte externer Links. Für den Inhalt der verlinkten Seiten sind ausschließlich deren Betreiber verantwortlich.

## Verwendete Open Source Software

* [Ivy](http://mulholland.xyz/docs/ivy), ein in Python geschriebener Generator für statische Websites von Darren Mulholland.
* [Doctr](https://drdoctr.github.io/doctr/) vereinfacht das Veröffentlichen der Seiten auf Github Pages mithilfe von Travis

Bei jeder Änderung an den Inhalten im [Quell-Branch *source*](https://github.com/codekulturbonn/codekulturbonn.github.io/tree/source/src) über *git push* startet ein Skript (definiert in der Datei [.travis.yaml](https://github.com/codekulturbonn/codekulturbonn.github.io/blob/master/.travis.yml)) und lässt nacheinander Ivy und Doctr laufen, um aus den Quelldateien zuerst HTML zu erzeugen und dieses dann als [Github Pages](https://pages.github.com/) zu veröffentlichen.
