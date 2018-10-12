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

## Über mich

Ich bin Diplom-Informatiker und arbeite als Produktmanager bei Chefkoch in Bonn.

Als Vater von zwei jungen Erwachsenen und einer Tochter in der Grundschule werde ich täglich mit der Faszination der Medienwelt für Heranwachsende konfrontiert. Als ich Anfang der 1980er Jahre als Schüler anfing, mich mit Elektronik zu beschäftigen, mussten wir unsere Computer noch selber aus einzelnen ICs zusammenbauen. Dabei lernt man natürlich eine Menge über das Wie und Warum von Computern. Mit meinem Informatikstudium habe ich diese frühe Faszination zum Beruf gemacht und arbeite seit mehr als 20 Jahren in Web-Entwicklung und E-Commerce.

Seit einigen Jahren zeige ich Kindern in Workshops die faszinierende Welt der Microcontroller. Dazu passt gut, dass es unter dem Stichwort "Physical Computing" inzwischen leistungsfähige und doch preiswerte Microcontroller gibt, die von einer internationalen Fan-Gemeinde entwickelt werden und die es interessierten Bastlern und Künstlern ermöglichen, Microcontroller in ihre Bauwerke zu integrieren.   

## Haftungshinweis

Trotz sorgfältiger inhaltlicher Kontrolle übernehme ich keine Haftung für die Inhalte externer Links. Für den Inhalt der verlinkten Seiten sind ausschließlich deren Betreiber verantwortlich.

## Verwendete Open Source Software

* [Ivy](http://mulholland.xyz/docs/ivy), ein in Python geschriebener Generator für statische Websites von Darren Mulholland.
* [Doctr](https://drdoctr.github.io/doctr/) vereinfacht das Veröffentlichen der Seiten auf Github Pages mithilfe von Travis

Bei jeder Änderung an den Inhalten im [Quell-Branch *source*](https://github.com/codekulturbonn/codekulturbonn.github.io/tree/source/src) über *git push* startet ein Skript (definiert in der Datei [.travis.yaml](https://github.com/codekulturbonn/codekulturbonn.github.io/blob/master/.travis.yml)) und lässt nacheinander Ivy und Doctr laufen, um aus den Quelldateien zuerst HTML zu erzeugen und dieses dann als [Github Pages](https://pages.github.com/) zu veröffentlichen.
