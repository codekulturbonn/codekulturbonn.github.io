---
title: Über Code &middot; Kultur &middot; Bonn
---
Diese Seiten werden automatisch aus einem Verzeichnis mit Textdateien erzeugt. Die Dateien können in *Markdown* (Endung .md) oder [*Monk*](http://mulholland.xyz/docs/monk/) (Endung .mk) formatiert sein. Du möchtest einen Einträg ändern oder ergänzen? Schicke uns einfach einen [Pull Request auf Github](https://github.com/codekulturbonn/codekulturbonn.github.io).

## Autor

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

Bei jeder Änderung an den Inhalten über *git push* startet ein Skript (definiert in der Datei [.travis.yaml](https://github.com/codekulturbonn/codekulturbonn.github.io/blob/master/.travis.yml)) und lässt nacheinander Ivy und Doctr laufen, um aus den Quelldateien zuerst HTML zu erzeugen und dieses dann als [Github Pages](https://pages.github.com/) zu veröffentlichen.  
