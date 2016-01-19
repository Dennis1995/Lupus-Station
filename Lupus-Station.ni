"Lupus Station" by Gruppe22

The player is in Hangar.

Kontaminierter is a kind of person.
A Kontaminierter has a number called counter. The counter is usually 0.
A Kontaminierter has a truth state called aufmerksam. Aufmerksam is usually false.

Barry is a person in Hangar. The description of Barry is "[if the player is Barry]Ich bin Barry der Pilot und streife durch die Lupus-Station. [otherwise]Barry ist der Pilot."

Percy is a person in Hangar. The description of Percy is "[if the player is Percy]Ich bin Percy der Ingenieur und streife durch die Lupus-Station. [otherwise]Percy ist der Ingenieur."

The player is Percy.

[////////Regionen///////////////////]
The Raumstation is a region. The  Andockstation, Hangar, Umkleideraum, Kommunikationsmodul, Dienstraum, Besatzungsquartier, WC-Damen, Besprechungsraum, Brücke, Antennenfeld L, Mensa, Fitnessraum, Umkleideraum, Hilfsgeneratorraum are in the Raumstation. 
The Forschungsstation is a region. The Transporterraum, Energiespeicher, Kommunikationsmodul F, Labor F, Kontrollmodul, Fluchtkapseln, Antennenfeld F, Solar-Modul F, Funkmodul, Transporter-FS, Fluchtkapsel and the Pulsator-Modul are in the Forschungsstation.


[So kann man der Karte eine Lagebeziehung zwischen Raum- und Forschungstation vermitteln, in dem man zwei Räume von je
einer Region in Beziehung setzt wie im Folgenden getan]
Index map with Fluchtkapseln mapped southwest of Alpha Kreuzung.

[Index map with room-colour of Raumstation set to “Navy” and room-name-colour
of Raumstation set to “White”.]

Book - Lupus Station 
[////ganze Story////]

Part -  Raumstation
[////Raumstation der Lupus Station////]


Chapter - Obere Ebene
 
Section - Brücke

Brücke is a room. 
The Description of Brücke is "Ein Raum übersäht mit Schaltern und Anzeigen.
Eine Gegensprechanlage mit einem Mikrofon für Durchsagen auf der Raumstation scheint es hier auch zu geben.".

[Gegensprechanlage]
Gegensprechanlage is a supporter. Gegensprechanlage is fixed in place.
Mikrofon is a thing on the Gegensprechanlage. Mikrofon is fixed in place.
Mikrofonknopf is a device. Mikrofonknopf is switched off.
mikrofonzaehler is a number which varies.
mikrofonzaehler is 0.

instead of switching on the Mikrofonknopf:
 now  mikrofonzaehler is 1;
 now the player is Percy;
 now the Player is in Med-Labor;


every turn:
if the mikrofonzaehler is 1 begin;
if the player is in the Med-Labor begin;
say "Du musst zum Hangar gehen";
end if;
if the player is in the Hangar begin;
say " Hol dir den Raumanzug aus dem Umkleideraum und gehe zur Andockstation.";
end if;
if the  player is in the Andockstation begin;
say "Gehe zum Kommunikationsmodul";
end if;
if the player is in the Kommunikationsmodul begin;
say "Gehe eine Etage tiefer und schalte den Hilfsgenerator ein";
end if;
 if the player is in the Hilfsgeneratorraum begin;
 say "Schalte den Hilfsgenerator ein"; 
 end if; 
end if;


Section - Besprechungsraum

Besprechungsraum is a room. 
Besprechungsraum is above Dienstraum.
The Description of Besprechungsraum is "Ein Raum voller Besprechungsnotizen und Stühlen.
Der Dienstraum hier drunter hatte mehr Charm.".


Section - Antennenfeld L

Antennenfeld L is a room. 
Antennenfeld L is above Kommunikationsmodul.
The Description of Antennenfeld L is "Über diesem Raum scheinen die Antennen der Forschungsstation zu sein. Ein großer roter Knopf…der scheint wichtig zu sein.".
[counter für das Abstezen des Notrufes]
notrufcounter is a number which varies.

Antennenjustierung is in Antennenfeld L. Antennenjustierung is a device. Antennenjustierung is fixed in place. Antennenjustierung is switched off.
The description of Antennenjustierung is "Das scheint ein Schalter für die automatische Antennenjustierung zu sein. Die Antenne muss erst justiert werden, bevor ein Notruf abgesendet werden kann".

roter Notrufknopf is a device. roter Notrufknopf is fixed in place. roter Notrufknopf is switched off.
The description of roter Notrufknopf is "Ob man mit diesem Knopf wohl einen Notruf absetzen kann?".

Instead of switching on Antennenjustierung:
	if notrufcounter is 2:
		say "Die Antenne ist schon justiert.";
	if notrufcounter is 0:
		increase notrufcounter by 1;
		say "Das hat wohl nicht geklappt, vielleicht sollte ich es nochmal probieren?" instead; [instead wird benötigt, damit die zweite Bedingung nicht auch geprüft wird, die wäre ja dann true, also einmal drücken und die Justierung würde dann funktionieren -> Sinn nicht erfüllt]
	if notrufcounter is 1:
		now Antennenjustierung is switched on;
		say "Dieses mal hat es wohl funktioniert und die Antenne ist justiert. Was ist das? Ein roter Knopf? War der vorher auch schon hier?";
		now roter Notrufknopf is in Antennenfeld L;
		increase notrufcounter by 1;

[------ Fängt Szenarien ab, in dennen der Hilfsgenerator aus ist und versucht wird der Notruf abzusetzen]

sauerstoffabfallbeginn is a number which varies.
sauerstoffabfallbeginn is 0.

Before switching on Antennenjustierung:
	if HG-Knopf is switched off:
		say "Nichts passiert. Der Raum wirkt auch so gut wie nicht beleuchtet. Komisch, als wäre ein Stromausfall, vielleicht sollte ich erst für eine aussreichende Energieversorgung sorgen." instead.
		
Before switching on roter Notrufknopf:
	if sauerstoffabfallbeginn is 1:
		say "Der Notruf wurde bereits abgesetzt." instead;
	if HG-Knopf is switched off:
		say "Nichts passiert. Der Raum wirkt auch so gut wie nicht beleuchtet. Komisch, als wäre ein Stromausfall, vielleicht sollte ich erst für eine aussreichende Energieversorgung sorgen." instead.
		
After switching on roter Notrufknopf:
	say "Nun wurde der Notruf erfolgreich abgesetzt, hoffentlich kommt bald Hilfe!!!";
	now sauerstoffabfallbeginn is 1;
	say "Der Sauerstoffstatus ist niedrig.";
	say "Da Percy einen Raumanzug hat, ist er von dem Abfall nicht betroffen, du musst nun als Barry zur Beta-Kreuzung gelangen und dort Percy treffen. Er folgt dir dann zur Flucht.";
	now Barry is in Brücke;
	now the player is Barry;
	now Percy is in Beta Kreuzung;

treffen is a truth state which varies. treffen is false.
	
every turn:
	if sauerstoffabfallbeginn is 1:
		if the location of the player is Beta Kreuzung:
			if treffen is false:
				now treffen is true;
				say "Du hast dich erfolgreich mit Percy getroffen, er wird dir jetzt bis zur Flucht folgen.";
				
every turn:
	if treffen is true:
		if Percy is not in the location of the player:
			now Percy is in the location of the player;
			say "Percy folgt dir auf Schritt und Tritt.";


Section - Obere Ebene Türen

TürBrücke is a door. TürBrücke is east of Brücke and west of Besprechungsraum. TürBrücke is closed and locked. 
The Description of TürBrücke is "Tür zwischen Brücke und Besprechungsraum: Hierzu muss der Alarm deaktiviert werden, anschließend lässt die Tür sich mit der Sicherheitskarte öffnen.".



Chapter - Hauptebene

[////Hauptebene der Raumstation////]

Section - Hangar

Before taking Mobitab:
	if Szene 1 is happening:
		say "Was soll ich denn damit? Das lasse ich besser im Spind." instead;

The Hangar is a room.
The Spind is a container in Hangar. Spind is closed and openable. Spind is fixed in place.
The description of Spind is "Im Spind lagern die Mitarbeiter ihre Sachen."
The Description of Hangar is "Ein Raum verlassen wie jeder andere. Der Spind neben der Tür im Westen lädt einen ein, um reinzugucken. ".

Sicherheitskarte is in Spind.
The description of Sicherheitskarte is "Eine Sicherheitskarte mit der kann man die Türen auf der Station entsperren kann."

The Mobitab is in Spind. The description is "[if the mobitab is in Spind]Ein MobiTab, das wird sicherlich noch nützlich sein.[otherwise] Im Kleingedruckten steht 'Bitte nicht auf Türpanel anwenden.' Komisch.". 

koncounter is a number which varies.
koncounter is 0.

every turn:
	repeat with o running through the Kontaminierter:
		if  the location of o is the location of the player,
		increase the koncounter by 1;
		          
	  every turn:
	  if the player carries the MobiTab begin;
	  if the koncounter is greater than 0 begin;
	  say "MobiTab: Kontaminierte sind mit in deinem Raum.";
	  now koncounter is 0;     
          end if;
          end if;

Fähre is a thing. Fähre is in Hangar. Fähre is fixed in place. The description of Fähre is "Leider ist der Space-Diesel aufgebraucht. Daher ist die Fähre nicht mehr flugtauglich."


Section - Andockstation

The Andockstation is a room.
The Description of Andockstation is "Gruselig, alles ist hierverlassen und so ruhig, als ob hier nie jemand war.
Alles sieht hier sehr durcheinander aus. In der  Ecke ein leckendes Fass…
Wo führt eigentlich die Wartungsluke hin? Westlich geht es zum Hangar.".

[Regeln für das Rollen des Fasses]
Fass is a thing.
Fass is pushable between rooms.
Fass is in Andockstation.
Fass is fixed in Place. 
 fasszustand is a number which varies.
 fasszustand is 0. [Die 0 bedeutet das das Fass steht und 1 bedeutet das das Fass liegt]

Understand "flip [something]" as Flipping.
Flipping is an Action applying to one visible thing.


after flipping:
if something is the Fass begin;
now fasszustand is 1;
say "Du hast das Fass umgekippt";
end if;

Check flipping something which is not the Fass:
say "Du kannst nur das Fass umkippen" instead. 


before pushing the fass:
if the fass is in the Xeno-Labor begin;
say "Das Fass steckt fest, ich kann es nicht mehr rollen.";
 stop the action;
end if;

instead of pushing the fass:
if the fasszustand is 0 begin;
say " Du musst erst das Fass umkippen, bevor du es rollen kannst!";
otherwise;
if the player is in the Alarm-reg begin;
let L be the list of open doors in the location of the player;
let zahl be the number of entries in L;
let r be a random number from 1 to zahl;
if zahl is 0 begin;
say "Das Fass ist gegen eine geschlossene Tür gerollt.";
otherwise;
now the fass is in the other side of entry r in L;
say " Das Fass ist in den Raum [other side of entry r in L] gerollt";
end if;
end if;
if the player is in the Raumstation begin; 
let L be the list of open  doors in the location of the player;
let zahl be the number of entries in L;
let r be a random number from 1 to zahl;
if zahl is 0 begin;
say "Das Fass ist gegen eine geschlossene Tür gerollt.";
otherwise;
 if other side of entry r in L is Kommunikationsmodul begin;
	   say "Das Fass ist gegen eine Wand gerollt.Versuch es nochmal!";
	   otherwise;
now the fass is in the other side of entry r in L; 
say " Das Fass ist in den Raum [other side of entry r in L] gerollt";
end if;
end if;
end if;
end if;


Section - Gamma Kreuzung

Gamma Kreuzung is a room.

The Description of Gamma Kreuzung is "Du befindest dich im östlichen Teil des äußeren Rings.Durchs fenster sieht man die undendlichen Weiten des Alls. 
Nordwestlich befindet sich der Gamma Delta Korridor, östlich der Hangar und südwestlich der Gamma Beta Korridor.".


Section - Gamma-Delta Korridor

The Description of Gamma-Delta Korridor is "Who the Fu**, was ist hier passiert??
Ein Raum voller Spuren von Laserbeschuss. Sogar den Türhebel im Nordosten hat es erwischt.
Ist das eine Leiche vor der Tür im Nordwesten?".

Leiche is a supporter. Leiche is fixed in place.
Leiche is in the Gamma-Delta Korridor.
Kittel is a container. Kittel is on the Leiche.
Kittel is fixed in place.
Xeno-Karte is a thing. Xeno-Karte is in the Kittel. The description of Xeno-Karte is "Schließt die vielleicht irgend ein Labor auf?".
Xeno-Karte unlocks Panel. 


Gamma-Delta Korridor is a room.


Section - Delta Kreuzung

Delta Kreuzung is a room.
The Description of Delta Kreuzung is "Was sind das hier für Geräusche, kommen die aus dem Raum im Süden oder doch aus dem Südwesten?".

Section - Alpha-Delta Korridor

Alpha-Delta Korridor is a room.
The Description of Alpha-Delta Korridor is "Ein Raum mit einem Panel zum Öffnen der Tür, lediglich eine Tür im Nordosten und eine im Südwesten.".

Kontaminierter Forscher is a Kontaminierter. Kontaminierter Forscher is in Alpha-Delta Korridor.
PanelADK-DK is an closed container in Alpha-Delta Korridor. the panelADK-DK is unopenable. the panelADK-DK is fixed in place.


Section - Alpha Kreuzung 


Alpha Kreuzung is room.
The Description of Alpha Kreuzung is "Wie soll man sich hier entscheiden, wo man hingehen soll. In jede Richtung ein Raum, das ist echt verwirrend.
Nach Osten ist ein Med-Labor ausgeschildert und im Westen  muss irgendwo die Brücke sein.
Südöstlich ist  auch noch eine Tür, aber allen Anschein nach durch das Panel verschlossen ist."

PanelAK-ADK is a closed container in Alpha Kreuzung. the panelAK-ADK is unopenable. the panelAK-ADK is fixed in place. 


Section - Alpha-Beta Korridor

Alpha-Beta Korridor is a room.
The Description of Alpha-Beta Korridor is "Ein schöner Ausblick nach draußen. In weiter Ferne sieht man ein Raumphänomen.
Eine weitere Tür, die durch ein Panel geschlossen ist,  befindet sich südöstlich.".

PanelABK-AK is an closed container in Alpha-Beta Korridor. the panelABK-AK is unopenable. the panelABK-AK is fixed in place.

Kontaminierter Ingenieur is a Kontaminierter. Kontaminierter Ingenieur is in Alpha-Beta Korridor.


Section - Beta Kreuzung 

Beta Kreuzung is a room.
The Description of Beta Kreuzung is "Es ist ganz schön laut hier, der Lärm schein aus dem nördlichen Raum zu kommen.
Im Süden ist sogar ein Damen WC, welches aber außer Betrieb ist.
Nordöstlich scheint es wieder zurück zur Andockstation zu gehen.".

PanelBK-ABK is an closed container in Beta Kreuzung. the panelBK-ABK  is unopenable. the panelBK-ABK is fixed in place. 


Section - Gamma-Beta Korridor

The Description of Gamma-Beta Korridor is "Einherrlicher Ausblick.
Sieht man in weiter Entfernung die Erde?	
Vielleicht sieht man, wenn man nach Nordosten geht diese besser.".

Gamma-Beta Korridor is a room.


Section - Maschinenraum

Maschinenraum is a room.
Maschinenraum is above Schwerkraftkompensator.
The Description of Maschinenraum is "Es ist sehr sehr laut und schmutzig hier. Eine Tafel zeigt viele nützliche Informationen an, ein alter Akkubohrer mit einem Akku liegt auf  dem Boden. Der Blick auf den Maschinen ist sicherlich für Ingenieure interessant.  Alles riecht nach Öl.
Ein Glück kann man hier die Etagen Wechseln.".

Anzeigetafel is a thing. Anzeigetafel is fixed in place.
Anzeigetafel is in the Maschinenraum.The description of the Anzeigetafel is "Es fehlen sämtliche Fluchtkapseln und es sind [lagerkoncount] Kontaminierte in Lager. ".
Anzeigetafel is in the Maschinenraum.

LagerKonCount is a number which varies.
LagerKonCount is 0.

every turn:
if the LagerKonCount is not 0 begin;
now LagerKonCount is 0; 
end if;

every turn:
	repeat with x running through the Kontaminierter:
		if  the location of x is the Lager,
		          increase LagerKonCount by 1;

[Akkubohrer + Akkus Sourcecode]
[So kann Percy den Bohrer nicht benutzen und die Akkus leer machen]
Before taking Akkubohrer:
	if Szene 1 is happening:
		say "Den lasse ich dort besser liegen, ich brauche ihn gerade nicht." instead;

Akkubohrer is a container in Maschinenraum. carrying capacity of the akkubohrer is 1.
Understand "use [carried thing] on [something]"  as using it on.
Using it on is an action applying to one carried thing and one visible thing. 

Akku1 is a thing in Maschinenraum.
akku1counter is a number which varies.
akku1counter is 5.

Akku2 is a thing in Spind. 
akku2counter is a number which varies.
akku2counter is 5.

Check using carried thing on something which is not a Kontaminierter:
	say "Der Akkubohrer sollte nur auf Kontaminierte benutzt werden, ansonsten ist das eine reine Akku-Ladungs-Verschwendung..." instead.

Carry out using:
	now aufmerksam of the second noun is true;
	now the counter of the second noun is 1;
	now ausgabe is true;
	say "Der Kontaminierte ist jetzt auf dich aufmerksam, du solltest sofort den Raum verlassen, er wird dir aber auch sofort folgen.".
		
Before using:
	if the carried thing is not the Akkubohrer:
		say "Witzbold, diese Aktion funktioniert nur im Bezug auf den Akkubohrer." instead;
	else if the Akku1 is in the Akkubohrer:
		if the akku1counter is 0:
			say " Der Akku ist leer." instead;
		otherwise:
			decrease akku1counter by 1;
	else if the Akku2 in the Akkubohrer:
		if the akku2counter is 0:
			say " Der Akku ist leer." instead;
		otherwise:
			decrease akku2counter by 1;

before inserting something into Akkubohrer:
	if the something is not the akku1 begin;
		if the something is not the akku2 begin;
			say "Dies ist nicht der passende Akku." instead;
		end if;
	end if;

every turn:
	if Szene 1 is happening:
		if akku2counter is 0:
			if akku1counter is 0:
				end the story finally saying "Du hast alle Akku-Ladungen verbraucht und Percy nicht dekontaminiert, es gibt keine Möglichkeit mehr deinen Freund zu retten, du hast verloren."


Section - Med-Labor

Med-Labor is a room.
The Description of Med-Labor is "Das Med-Labor ist spärlich ausgestattet.
Ein Bett, ein Pult und eine riesige Kabine. Dafür hat man den Blick auf den Maschinekern. "

[---------Dekontaminationskabine---------]
Dekontaminationskabine is an enterable container in Med-Labor. The carrying capacity of Dekontaminationskabine is 0. 
Dekon-Knopf is a device. Dekon-Knopf is fixed in place. The Dekontaminationskabine is openable. Dekontaminationskabine is closed.
Dekon-Knopf is in Med-Labor. The description of Dekon-Knopf is "Dieser Knopf öffnet wohl die Kabine und lockt einen Kontaminierten hinein. Danach kann man durch erneutes Drücken die Kabine wieder schließen."
The description of Dekontaminationskabine is "Mit dieser Kabine können Kontaminierte dekontaminiert werden. Der dazugehöirge Dekon-Knopf öffnet die Kabine.[if Szene 1 is happening] Am besten dekontaminiere ich erstmal meinen Freund Percy."

Instead of entering Dekontaminationskabine:
	say "Ich bin doch gar nicht kontaminiert, vielleicht sollte ich den Knopf drücken, damit Kontaminierte angelockt werden."
	
Instead of switching on Dekon-Knopf:
	let Liste be the list of  Kontaminierter in Med-Labor;
	let anzahl be the number of entries in Liste;
	let g be a random number from 1 to anzahl;
	if Szene 2 has ended:
		say "Durch den Hauptenergieabfall ist die Kabine nicht mehr funktionstüchtig.";
	else if Dekontaminationskabine is open:
		now Dekontaminationskabine is closed;
		say "Die Kabine wurde erfolgreich geschlossen, die Dekontamination wird eingeleitet.";
	else if anzahl is 0:
		say "Es gibt keine Kontaminierten im Raum, welche dekontaminiert werden müssten";
	else:
		now entry g of Liste is in Dekontaminationskabine;
		say "Nun ist [entry g of Liste] in der Dekontaminationskabine.[paragraph break]";
		now Dekontaminationskabine is open;
		
Instead of opening Dekontaminationskabine:
	say "Dafür ist der Dekon-Knopf gedacht.";
	
Instead of closing Dekontaminationskabine:
	say "Dafür ist der Dekon-Knopf gedacht.";

every turn:
[----was passiert, wenn ein Kontaminierter in der Kabine ist und die Tür geschlossen wurde----]
	if Dekontaminationskabine is closed:
		if a Kontaminierter is in Dekontaminationskabine:
			if the person in Dekontaminationskabine is not Kontaminierter Percy:
				end the story finally saying "Du hast jemand anderes als Percy dekontaminiert, er ist aber der einzige, der dir hätte weiterhelfen können.";
			else:
				now Kontaminierter Percy is nowhere;
				now Percy is on Krankenbett;

Kontaminierter Arzt is a Kontaminierter. Kontaminierter Arzt is in Med-Labor.

Krankenbett is an enterable supporter in Med-Labor. Krankenbett is fixed in place. 
The description of Krankenbett is "Ein Bett für jemand Krankes, es sieht nicht wirklich bequem aus."
[hier muss vielleicht noch eine Bedingung eingefügt werden, sodass letzendlich nur Percy das Bett nutzen kann]


Knopf is a device. Knopf is on Pult. Knopf is fixed in place.
Knopf is switched off. The description of Knopf is "Ahh! Ein Knopf, um Videoblogs abzuspielen...". Knopf is undescribed.
Pult is a supporter in Med-Labor. The description of Pult is "Auf dem Pult befindet sich ein Knopf mit der Beschriftung 'Videos'. Was der wohl macht?"
Pult is fixed in place.

After switching on Knopf:
	[Implementation, dass Kontaminierte aufmerksam werden, fehlt]
	say "Videoblog des Stationsarztes:[paragraph break]'Es fing alles mit einer biologischen Probe von einem nahegelegnen Planeten an. Wir wollten eigentlich nur das Leben auf diesem obskuren Planeten erfroschen. Das Sammeln der Probe verlief auch Reibungslos. Doch dann wurden anscheinend einige Raumanzüge von manchen Mitarbeitern nicht richtig dekontaminiert. Somit konnten einige von ihnen mit einem fremden Erreger kontaminiert werden. Daraufhin standen sie einfach in der Gegend herum und hatten einen starren Blick.[line break]Glücklicherweise habe ich es noch geschafft eine Dekontaminationskabine zu entwerfen und auch zu bauen. Es passt aber nur eine Person gleichzeitig hinein. Die Kontaminierten können durch das Öffnen der Tür der Kabine angelockt werden, da die Tür sehr laut ist, aber eben nur einer gleichzeitig passt in die Kabine. Wenn man die Kabine dann schließt wird der darin befindliche Kontaminierte von dem Erreger befreit und er ist wieder gesund. Ich hoffe ich schaffe es alle zu dekontaminieren, falls nicht und Sie diese Nachricht hören, BITTE HOLEN SIE HILFE!!!'";
	now Alarm is in Alarm-reg;
	
[-------------------------Alarm----------------------------------------------]
Alarm-reg is a region.
[------------Hier hört man überall den Alarm-------]
 The Gamma Kreuzung, Gamma-Delta Korridor, Delta Kreuzung, Alpha-Delta Korridor, Alpha Kreuzung, Alpha-Beta Korridor, Gamma-Beta Korridor, Beta Kreuzung, Maschinenraum, Xeno-Labor, Solar-Labor, Med-Labor, Lagerraum, Delta-Gewächshaus, Lager, Beta-Gewächshaus, Alpha-KI, Hauptgenerator, Delta-KI, Schwerkraftkompensator, Transporter-RS are in Alarm-reg.
Alarm is a backdrop in Alarm-reg.

every turn:
	if Alarm is in the location of the player:
		say "ALARM ALARM[paragraph break]";
	
[after switching off Blinkender Knof:
now the alarm is nowhere.

kann nur eingefügt werden wenn der blinkende Knopf eingefügt wurde-]


Section - Solar-Labor

Solar-Labor is a room.
The Description of Solar-Labor is "Dies scheint auch ein Forschungsraum zu sein. Auch von hier aus sieht man den Maschinekern. Anscheinend wie jeder Raum des inneren Rings auf dieser Etage.".


Section - Xeno-Labor

Kontaminierter Percy is a Kontaminierter. The description of Kontaminierter Percy is "Ist das Percy? Was ist mit ihm passiert? Er steht nur da mit einem starren Blick..."

Xeno-Labor is a room.
The Description of Xeno-Labor is "Beeindruckend, wie blau der leuchtet.
Was ist das für eine seltsame Maschine, wofür die bloß da ist?
Schaltet der blinkende Knopf diese an?".

Blinkender Knopf is a device. Blinkender Knopf is on Seltsame Maschine. Blinkender Knopf is fixed in place.
Blinkender Knopf is switched off. The description of Blinkender Knopf is "Vielleicht hört der Alarm auf, wenn ich den Knopf drücke!".
Seltsame Maschine is a supporter. Seltsame Maschine is in Xeno-Labor. The description of Seltsame Maschine is "Was das bloß für eine Maschine ist?"
Seltsame Maschine is fixed in place.

Wandpanel is a closed container in Xeno-Labor. the Wandpanel is unopenable. the Wandpanel is fixed in place. 
Grüne Phiole is a thing. Grüne Phiole is in Wandpanel. 

After switching on Blinkender Knopf:
	if Wandpanel is open:
		say "Endlich Ruhe...";
	if Wandpanel is closed:
		say "Endlich Ruhe... Warte was hat sich dort geöffnet ...";
		now Wandpanel is open;
	now Alarm is nowhere;
	now Blinkender Knopf is switched off;

Scherben is a thing. Scherben is fixed in place. The description of Scherben is "Was ist denn hier passiert???"

Instead of taking Grüne Phiole:
	say "Neiiiiin.... Ich habe es fallen gelassen. Was sind das für komische Dämpfe? Oh ... mir ... geht ... es .. garnicht... gut...";
	now Grüne Phiole is nowhere;
	now Scherben is in Xeno-Labor;
	now the player is Barry;
	now Kontaminierter Percy is in Xeno-Labor;
	now Percy is nowhere;

Section - WC-Damen

WC-Damen is a room.
The Description of WC-Damen is "Die Toilette scheint intakt zu sein. Lediglich das Wasser läuft die ganze Zeit.
Vielleicht hat der Spülkasten einen defekt.".

Toilette is a supporter. Toilette is in WC-Damen.

Spülkasten is a container. Spülkasten is fixed in place. Spülkasten is on the Toilette.  

[-----Handlaserwaffe---------]
the Handlaserwaffe is a thing. Handlaserwaffe is in the Spülkasten.

beseitigteKontaminierte is a room.

Understand " shoot at [something]  with [carried thing]" as shooting it with.
Shooting it with is an action applying to one visible thing and one carried thing.

Check shooting something with a carried thing which is not Handlaserwaffe:
	say "Damit kannst du nicht schießen." instead;

Check shooting something which is not a Kontaminierter with a carried thing:
	say "Schlechte Idee" instead;

Carry out shooting it with:
	now the noun is in beseitigteKontaminierte; 
	say "der Komtaminierte hat sich in Staub aufgelöst.";


Section - Dienstraum

Dienstraum is a room.
Dienstraum is above Mensa.
The Description of Dienstraum is "Dieser Raum sieht nach Arbeit aus. Zum Glück kann man von hier aus nach oben, unten und in den westlichen Raum flüchten.".


Section - Besatzungsquartier

Besatzungsquartier is a room.
Besatzungsquartier is above Fitnessraum.
The Description of Besatzungsquatier is "Das muss der Besatzungsraum sein. Sehr unordentlich und hier riecht es nach Schweiß. Muss wohl vom unteren Raum kommen.".

Section - Kommunikationsmodul

Kommunikationsmodul is a room.
Kommunikationsmodul is above Hilfsgeneratorraum.
The Description of Kommunikationsmodul is "Dieser Raum scheint für die Kommunikation der Raumstation  zu sein. Soviele Lwl-Kabel und Stromkabel, die nach oben und unten führen.
Was ist das eigentlich für ein penetrant leuchtender Knopf?".

Kontaminierter Mann is a Kontaminierter. Kontaminierter Mann is in Besatzungsquartier.
Kontaminierte Frau is a Kontaminierter. Kontaminierte Frau is in Besatzungsquartier.
Kontaminierter Informatiker is a Kontaminierter. Kontaminierter Informatiker is in Besatzungsquartier.


Section - Umkleideraum

Umkleideraum is a room.
The Raumanzug is in Umkleideraum. Raumanzug is wearable.
The Description of Raumanzug is "Hierbei handelt es sich tatsächlich um einen funktionsfähigen Raumanzug! Er könnte sogar in Percys Größe sein."


Section - Türen

[Andockstation <-> Hangar]
TürAS-H is east of Hangar. TürAS-H is west of Andockstation.  TürAS-H is a door.
The Description of TürAS-H is "Tür zwischen Andockstation und Hangar: Tür offen."

[Hangar<-> Gamma Kreuzung]
TürH-GK is west of Hangar. TürH-GK is east of Gamma Kreuzung. TürH-GK is a door.
TürH-GK is closed.
The Description of TürH-GK is "Tür zwischen Hangar und Gamma Kreuzung: Tür lässt sich nur mit einem Sicherheitsausweis oder Mobtab öffnen/schließen.".

Before opening TürH-GK:
	if Szene 2 is happening:
		if the player is not carrying mobitab:
			if the player is not carrying the Sicherheitskarte:
				say "Du brauchst entweder das Mobitab oder die Sicherheitskarte, um diese Tür zu entsperren und zu passieren." instead;
	otherwise:
		if the player is not carrying the Sicherheitskarte:
			say "Um die Tür automatisch zu entsperren, damit Sie passieren können, müssen Sie die Sicherheitskarte bei sich tragen." instead;

Before closing TürH-GK:
	if Szene 2 is happening:
		if the player is not carrying mobitab:
			if the player is not carrying the Sicherheitskarte:
				say "Du brauchst entweder das Mobitab oder die Sicherheitskarte, um diese Tür zu schließen." instead;
	otherwise:
		if the player is not carrying the Sicherheitskarte:
			say "Um die Tür automatisch zu schließen, müssen Sie die Sicherheitskarte bei sich tragen." instead;
			
			
[Gamma Kreuzung <-> Gamma-Delta Korridor]
TürGK-GDK is northwest of Gamma Kreuzung. TürGK-GDK is southeast of Gamma-Delta Korridor. TürGK-GDK is a door.
TürGK-GDK is closed.
The Description of TürGK-GDK is "Tür zwischen Gamma Kreuzung und Gamma Delta Korridor: Tür lässt sich nur mit einem Sicherheitsausweis öffnen/schließen.".

Before opening TürGK-GDK:
	if the player is not carrying the Sicherheitskarte:
		say "Um die Tür automatisch zu entsperren, damit Sie passieren können, müssen Sie die Sicherheitskarte bei sich tragen." instead;

Before closing TürGK-GDK:
	if the player is not carrying the Sicherheitskarte:
		say "Um die Tür automatisch zu schließen, müssen Sie die Sicherheitskarte bei sich tragen." instead;
		
		
[Gamma-Delta Korridor<-> Delta Kreuzung]
TürGDK-DK is northwest of Gamma-Delta Korridor. TürGDK-DK is southeast of Delta Kreuzung. TürGDK-DK is a door.
TürGDK-DK is locked.
The Description of TürGDK-DK is "Tür zwischen Gamma-Deta Korridor und Delta Kreuzung: Tür lässt sich nur mit einem Sicherheitsausweis öffnen/schließen.".

Before opening TürGDK-DK:
	if the player is not carrying the Sicherheitskarte:
		say "Um die Tür automatisch zu entsperren, damit Sie passieren können, müssen Sie die Sicherheitskarte bei sich tragen." instead;

Before closing TürGDK-DK:
	if the player is not carrying the Sicherheitskarte:
		say "Um die Tür automatisch zu schließen, müssen Sie die Sicherheitskarte bei sich tragen." instead;
		

[Delta Kreuzung <-> Alpha-Delta Korridor]
TürDK-ADK is southwest of Delta Kreuzung. TürDK-ADK is northeast of Alpha-Delta Korridor. TürDK-ADK is a door.
TürDK-ADK is closed.
 The Description of TürDK-ADK is "Tür zwischen Delta Kreuzung und Alpha-Delta Korridor: Tür lässt sich nur mit einem Sicherheitsausweis + Mobitab öffnen/schließen.".
 
Before opening TürDK-ADK:
	if PanelADK-DK is closed:
		say "Die Tür kann nicht mit dem Sicherheitsausweis entsperrt werden! Zumindest im Moment nicht, probieren sie es einmal mit dem PanelADK-DK." instead;
	else if the player is not carrying the Sicherheitskarte:
		say "Um die Tür automatisch zu entsperren, damit Sie passieren können, müssen Sie die Sicherheitskarte bei sich tragen." instead;

Before closing TürDK-ADK:
	if the player is not carrying the Sicherheitskarte:
		say "Um die Tür automatisch zu schließen, müssen Sie die Sicherheitskarte bei sich tragen." instead;
		

[Alpha-Delta Korridor <-> Alpha Kreuzung]
TürADK-AK is southwest of Alpha-Delta Korridor. TürADK-AK is northeast of Alpha Kreuzung. TürADK-AK is a door.
TürADK-AK is closed. 
The Description of TürADK-AK is "Tür zwischen Alpha-Delta Korridor und Alpha Kreuzung: Tür lässt sich nur mit einem Sicherheitsausweis + Mobitab öffnen/schließen.".

Before opening TürADK-AK:
	if PanelAK-ADK is closed:
		say "Die Tür kann nicht mit dem Sicherheitsausweis entsperrt werden! Zumindest im Moment nicht, probieren sie es einmal mit dem PanelAK-ADK." instead;
	else if the player is not carrying the Sicherheitskarte:
		say "Um die Tür automatisch zu entsperren, damit Sie passieren können, müssen Sie die Sicherheitskarte bei sich tragen." instead;

Before closing TürADK-AK:
	if the player is not carrying the Sicherheitskarte:
		say "Um die Tür automatisch zu schließen, müssen Sie die Sicherheitskarte bei sich tragen." instead;
		

[Alpha Kreuzung <-> Alpha-Beta Korridor]
TürAK-ABK is southeast of Alpha Kreuzung. TürAK-ABK is northwest of Alpha-Beta Korridor. TürAK-ABK is a door.
TürAK-ABK is closed. 
The Description of TürAK-ABK is "Tür zwischen Alpha Kreuzung und Alpha-Beta Korridor: Tür lässt sich nur mit einem Sicherheitsausweis + Mobitab öffnen/schließen.".

Before opening TürAK-ABK:
	if PanelABK-AK is closed:
		say "Die Tür kann nicht mit dem Sicherheitsausweis entsperrt werden! Zumindest im Moment nicht, probieren sie es einmal mit dem PanelABK-AK." instead;
	else if the player is not carrying the Sicherheitskarte:
		say "Um die Tür automatisch zu entsperren, damit Sie passieren können, müssen Sie die Sicherheitskarte bei sich tragen." instead;

Before closing TürAK-ABK:
	if the player is not carrying the Sicherheitskarte:
		say "Um die Tür automatisch zu schließen, müssen Sie die Sicherheitskarte bei sich tragen." instead;
		

[Alpha-Beta Korridor<-> Beta Kreuzung]
TürABK-BK is southeast of Alpha-Beta Korridor. TürABK-BK is northwest of Beta Kreuzung. TürABK-BK is a door.
TürABK-BK is closed. 
The Description of TürABK-BK is "Tür zwischen Alpha-Beta Korridor und Beta Kreuzung: Tür lässt sich nur mit einem Sicherheitsausweis + Mobitab öffnen/schließen.".

Before opening TürABK-BK:
	if PanelBK-ABK is closed:
		say "Die Tür kann nicht mit dem Sicherheitsausweis entsperrt werden! Zumindest im Moment nicht, probieren sie es einmal mit dem PanelBK-ABK." instead;
	else if the player is not carrying the Sicherheitskarte:
		say "Um die Tür automatisch zu entsperren, damit Sie passieren können, müssen Sie die Sicherheitskarte bei sich tragen." instead;

Before closing TürABK-BK:
	if the player is not carrying the Sicherheitskarte:
		say "Um die Tür automatisch zu schließen, müssen Sie die Sicherheitskarte bei sich tragen." instead;
		

[Beta Kreuzung<-> Gamma-Beta Korridor]
TürBK-GBK is northeast of Beta Kreuzung. TürBK-GBK is southwest of Gamma-Beta Korridor. TürBK-GBK is a door.
TürBK-GBK is closed. 
The Description of TürBK-GBK is "Tür zwischen Beta Kreuzung und Gamma-Beta Korridor: Tür lässt sich nur mit einem Sicherheitsausweis öffnen/schließen.".

Before opening TürBK-GBK:
	if the player is not carrying the Sicherheitskarte:
		say "Um die Tür automatisch zu entsperren, damit Sie passieren können, müssen Sie die Sicherheitskarte bei sich tragen." instead;

Before closing TürBK-GBK:
	if the player is not carrying the Sicherheitskarte:
		say "Um die Tür automatisch zu schließen, müssen Sie die Sicherheitskarte bei sich tragen." instead;
		

[Gamma-Beta Korridor <-> Gamma Kreuzung]
TürGBK-GK is northeast of Gamma-Beta Korridor. TürGBK-GK is southwest of Gamma Kreuzung. TürGBK-GK is a door.
TürGBK-GK is closed. 
The Description of TürGBK-GK is "Tür zwischen Gamma-Beta Korridor und Gamma Kreuzung: Tür lässt sich nur mit einem Sicherheitsausweis öffnen/schließen.".

Before opening TürGBK-GK:
	if the player is not carrying the Sicherheitskarte:
		say "Um die Tür automatisch zu entsperren, damit Sie passieren können, müssen Sie die Sicherheitskarte bei sich tragen." instead;

Before closing TürGBK-GK:
	if the player is not carrying the Sicherheitskarte:
		say "Um die Tür automatisch zu schließen, müssen Sie die Sicherheitskarte bei sich tragen." instead;
		

[Gamma Kreuzung <-> Xeno-Labor]
TürGK-XL is west of Gamma Kreuzung. TürGK-XL is east of Xeno-Labor. TürGK-XL is a door.
TürGK-XL is locked.
The Description of TürGK-XL is "Tür zwischen Gamma Kreuzung und Xeno-Labor: Du benötigst die Xenokarte um diese Tür zu öffnen. Tür bleibt nur 5 Sekunden geöffnet und schließt dann wieder. Tür kann mit einem Fass blockiert werden, sodass die Tür für immer offen bleibt.".


[Regeln für die Xeno-Lab Tür]



Panel is a locked container in Gamma Kreuzung. the panel is lockable. the panel is fixed in place.


the panelcounter is a number which varies.


every turn:
if the fass is in the Xeno-Labor begin;
  now TürGK-XL is unlocked;
  now TürGK-XL is open;
  now the fass is not pushable between rooms;
otherwise;
	if the panel is unlocked begin; 
	   now TürGK-XL is unlocked;
	   now TürGK-XL is open;
	   increase panelcounter by 1;
	end if;
if panelcounter is  2  begin;
   decrease panelcounter by 2 ;
	now türGK-XL is closed;
	now  türGK-XL  is locked;
	now the panel is closed;
	now the panel is locked;
end if;
	end if;

before going west:
	if the fass is not in the Xeno-Labor begin;
	   now TürGK-XL is locked;
	end if;


[Beta Kreuzung <-> Maschinenraum]
TürBK-MR is north of Beta Kreuzung. TürBK-MR is south of Maschinenraum. TürBK-MR is a door.
The Description of TürBK-MR is "Tür zwischen Beta Kreuzung und Maschinenraum: Tür offen.".

[Delta Kreuzung <-> Solar-Labor]
TürDK-SL is south of Delta Kreuzung. TürDK-SL is north of Solar-Labor. TürDK-SL is a door.
The Description of TürDK-SL is "Tür zwischen Delta Kreuzung und Solar-Labor: Tür offen.".

[Alpha Kreuzung <-> Med-Labor]
TürAK-ML is east of Alpha Kreuzung. TürAK-ML is west of Med-Labor. TürAK-ML is a door.
The Description of TürAK-ML is "Tür zwischen Alpha Kreuzung und Med-Labor: Tür offen.".

[Beta Kreuzung <-> WC-Damen]
TürBK-WCD is south of Beta Kreuzung. TürBK-WCD is north of WC-Damen. TürBK-WCD is a door.
TürBK-WCD is locked.
The Description of TürBK-WCD is "Tür zwischen Beta Kreuzung und WC-Damen: Tür lässt sich erst in Szene 4 nach Abschluss der Dekontaminierung öffnen.".

[Alpha Kreuzung <-> Dienstraum]
TürAK-DR is west of Alpha Kreuzung. TürAK-DR is east of Dienstraum. TürAK-DR is a door.
The Description of TürAK-DR is "Tür zwischen Alpha Kreuzung und Dienstraum: Tür offen.".

[Dienstraum <-> Besatzungquatier]
TürDR-BQ is east of Besatzungsquartier. TürDR-BQ is west of Dienstraum. TürDR-BQ is a door.
The Description of TürDR-BQ is "Tür zwischen Dienstraum und Besatzungsquatiert: Tür offen.".

[Gamma-Delta Korridor <-> Kommunikationsmodul]
TürGDK-KM is northeast of Gamma-Delta Korridor. TürGDK-KM is southwest of Kommunikationsmodul. TürGDK-KM is a door.
TürGDK-KM is locked.
The Description of TürGDK-KM is "Tür zwischen Gamma-Delta-Korridor und Kommunikationsmodul: Hebel auf dieser Seite defekt, Tür kann nur im Kommunikationsmodul geöffnet werden.".

Before opening TürGDK-KM:
	if the location of the player is not Kommunikationsmodul:
		say "Von hier lässt sich die Wartungsluke zum Kom-Modul nicht öffnen, da sie durch Laserfeuer beschädigt wurde." instead;

[Hangar <-> Umkleideraum]
TürH-UR is south of Hangar. TürH-UR is north of Umkleideraum. TürH-UR is a door.
TürH-UR is locked.


[Andockstation <-> Kommunikationsmodul]
TürAS-KM is northwest of Andockstation. TürAS-KM is southeast of Kommunikationsmodul. TürAS-KM is a door.
The Description of TürAS-KM is "Tür zwischen Andockstation und Kommunkationsmodul: Bitte Raumanzug anziehen, da du im Weltall sonst nicht überlebst.".

Before going through the TürAS-KM:
	if the player is not wearing the Raumanzug:
		end the story finally saying "Du betrittst den Weltraum ohne Raumanzug und stirbst. [paragraph break] Game over."



Chapter - Untere Ebene

[Untere Ebene - Äußerer Ring]
Section  - Lagerraum

Lagerraum is a room.
The Description of Lagerraum is "Ein Raum vollgepackt mit Geräten und Nahrung. Anscheinend hat hier schon lange niemand aufgeräumt.
Eine Tür zum verlassen des Raumes befindet sich im Nordosten und Südosten.".


Section  - Delta-Gewächshaus

Delta-Gewächshaus is a room.
The Description of Delta-Gewächshaus is "Du befindest dich jetzt im Norden des äußeren Rings der unteren Ebene.
Ein Raum voller Pflanzen, das sieht man selten im Weltall.
Ob es im Raum Südöstlich von hier genauso aussieht?".

Kontaminierter Gärtner is a Kontaminierter. Kontaminierter Gärtner is in Delta-Gewächshaus.

[Die Lagebeziehung von den Räumen im inneren und äußeren Ring der unteren Ebene, wird durch den folgenden Befehl
der vorgegebenen Karte angepasst]
Index map with Delta-Gewächshaus mapped north of Hauptgenerator.


Section  - Lager

Lager is a room.
The Description of Lager is "Du befindest dich jetzt im Osten des äußeren Rings der unteren Ebene.
Ein Raum ähnlich wie der Lagerraum, nur aufgeräumter und größer.
Südwestlich scheint es wieder zum Lagerraum zu gehen.".


Section  - Beta-Gewächshaus

Beta-Gewächshaus is a room.
The Description of Beta-Gewächshaus is "Du befindest dich jetzt im Süden des äußeren Rings der unteren Ebene.
Ein Raum wie das Delta Gewächshaus, nur es scheint hier Obst angebaut zu werden.".

Kontaminierte Gärtnerin is a Kontaminierter. Kontaminierte Gärtnerin is in Beta-Gewächshaus.


[Untere Ebene - Innerer Ring]
Section  - Schwerkraftkompensator 

Schwerkraftkompensator is a room.
The Description of Schwerkraftkompensator is "Dieser Raum scheint die Schwerkraft auf der Forschungsstation zu regeln und die Verbindung zur Forschungsstation zu sein.
Der Transporter sollte dorthin führen.
Von hier aus gehen Türen in den Nordosten und Nordwesten.".

[------Transporter-------]
Transporter-RS is inside of Schwerkraftkompensator. The description of Transporter-RS is "Dieses ist der Transporter, durch drücken des hier befindlichen Knopfes gelangt man von der Raumstation zur Forschungsstation."

Knopf-FS is in Transporter-RS. Knopf-FS is a device. Knopf-FS is fixed in place. Knopf-FS is switched off. 
The description of Knopf-FS is "Dieser Knopf leitet wahrscheinlich den Transport ein..."

instead of switching on Knopf-FS:
	now the player is in Transporter-FS;
	say "'Achtung: wir sind an der Forschungsstation angekommen. Sie können hier aussteigen, oder wieder zurück fahren.'";

[Die Lagebeziehung von den Räumen im inneren und äußeren Ring der unteren Ebene, wird durch den folgenden Befehl
der vorgegebenen Karte angepasst]
Index map with Schwerkraftkompensator mapped north of Beta-Gewächshaus.


Section  - Delta-KI

Delta-KI is a room.
The Description of Delta-KI is "Das scheint der Kopf des Deltabereichs zur Steuerung zu sein.
Künstliche Intelligenz vereinfacht einiges.
Türen sind im Nordwesten und Südwesten".


Section  - Hauptgenerator

Hauptgenerator is a room.
The Description of Hauptgenerator is "Der Hauptgenerator, das ist die Energiequelle der Forschungsstation.
Türen sind im Südwesten und Südosten.".


Section  - Alpha-KI

Alpha-KI is a room. 
The Description of Alpha-KI is "Das scheint der Kopf des Alphabereichs zur Steuerung zu sein.
Künstliche Intelligenz vereinfacht einiges.
Türen sind im Nordosten und Südosten.".


[Untere Ebene - Andere] 
Section  - Mensa

Mensa is a room.
The Description of Mensa is "Hier wurde mal gekocht und gespeist.
Aber das ist schon länger her.
Anstatt des Besatzungspersonal treiben sich hier nur noch Ungeziefer rum.
Du kannst hoch zum Dienstraum oder zum äußeren Ring der unteren Ebene.".


Section  - Fitnessraum

Fitnessraum is a room.
The Description of Fitnessraum is "Ein Raum voller Kardiogeräte und Hanteln.
Hier wurde schon länger nicht mehr trainiert, aber es riecht immernoch nach Schweiß.
Besser geht man wieder nach oben zum Besatzungsquartier.".


Section  - Hilfsgeneratorraum

Hilfsgeneratorraum is a room.
The Description of Hilfsgeneratorraum is "Hier befindet sich der Hilfsgenerator, falls der Hauptgenerator ausfallen sollte.
Über dir ist das Kommunikationsmodul.".

Hilfsgenerator is a supporter. Hilfsgenerator is in Hilfsgeneratorraum. Hilfsgenerator is fixed in place.
HG-Knopf is a device. HG-Knopf is on Hilfsgenerator. HG-Knopf is switched off.
HG-Knopf is fixed in place. The description of HG-Knopf is "Hmm... soll dieser Knopf irgendwas mit dem Hilfsgenerator machen??"
After switching on HG-Knopf:
	say "Nun ist der Hilfsgenerator eingeschaltet.";
	now the mikrofonzaehler is 0;
	
After switching off HG-Knopf:
	say "Nun ist der Hilfsgenerator abgeschaltet.";



[Türen]
Section - Türen

TürM-LR is west of Lagerraum and east of Mensa . TürM-LR  is a door. TürM-LR is locked.
TürLR-BGH is southeast of Lagerraum and northwest of Beta-Gewächshaus. TürLR-BGH is door. TürLR-BGH is locked.
TürBGH-LB is northeast of Beta-Gewächshaus and southwest of Lager. TürBGH-LB is a door. TürBGH-LB is locked.
TürLB-DGH is northwest of Lager and southeast of Delta-Gewächshaus. TürLB-DGH is a door. TürLB-DGH  is locked.
TürDGH-LR is southwest of Delta-Gewächshaus and northeast of Lagerraum. TürDGH-LR is a door. TürDGH-LR is locked.

TürSKK-DK is northeast of Schwerkraftkompensator  and  southwest of Delta-KI. TürSKK-DK is a door.TürSKK-DK is locked.
TürDK-HG is northwest of Delta-KI and southeast of Hauptgenerator.TürDK-HG is a door.TürDK-HG is locked.
TürHG-AK is southwest of Hauptgenerator and northeast of Alpha-KI. TürHG-AK is a door.TürHG-AK is locked.
TürAK-SKK is southeast of Alpha-KI and northwest of Schwerkraftkompensator. TürAK-SKK is a door. TürAK-SKK is locked.

The Description of TürM-LR is "Tür zwischen Lagerraum und Mensa: Tür nicht verschlossen.".
The Description of TürLR-BGH is "Tür zwischen Lagerraum und Beta-Gewächshaus: Tür nicht verschlossen.".
The Description of TürBGH-LB is "Tür zwischen Beta-Gewächshaus und Lager: Tür nicht verschlossen.".
The Description of TürLB-DGH is "Tür zwischen Lager und Delta-Gewächshaus: Tür nicht verschlossen.".
The Description of TürDGH-LR is "Tür zwischen Delta-Gewächshaus und Lagerraum: Tür nicht verschlossen.".
The Description of TürSKK-DK is "Tür zwischen Schwerkraftkompensator und Delta-KI: Tür nicht verschlossen.".
The Description of TürDK-HG is "Tür zwischen Delta-KI und Hauptgenerator: Tür nicht verschlossen.".
The Description of TürHG-AK is "Tür zwischen Hauptgenerator und Alpha-KI: Tür nicht verschlossen.".
The Description of TürAK-SKK is "Tür zwischen Alpha-KI und Schwerkraftkompensator: Tür nicht verschlossen.".

[Forschungsstation]

[Obere Ebene - FS]

Part - Forschungsstation

Chapter - Obere Ebene

Section - Antennenfeld F 

Antennenfeld F is a room.
Antennenfeld F is above Labor F.
The Description of Antennen-Feld F is "Dieser Raum sieht genauso aus, wie der Raum auf der Raumstation, jede Menge Kabel und Geräte zur Funkübertragung.
Eine Leiter geht nach unten, südlich und östlich befinden sich Türen.".


Section - Funkmodul

Funkmodul is a room.
Funkmodul is above Kommunikationsmodul F.
The Description of Funkmodul is "Soviele Geräte und Kabel. Man könnte vermuten, dass alle Funksignale durch den Raum fließen.
Eine Leiter geht nach unten, und nördlich von dir ist eine Tür.".


Section - Solar-Modul F

Solar-Modul F is a room.
The Description of Solar-Modul F is "Anscheinend wird die Forschungsstation mit Solarenergie versorgt. In dem dazugehörigen Raum befindest du dich gerade.
Du müsstest dich über den Fluchtkapseln befinden.
Westlich von dir ist das Antennenfeld F imd Süden befindet sich eine Tür.".


Section - Pulsator-Modul

Pulsator-Modul is a room.
Pulsator-Modul is above Kontrollmodul.
The Description of Pulsator-Modul is "Was dieser Raum für eine Funktion hat, kann man kaum erraten.
Du musst dich südlich vom Solarmodul F befinden und was unter dir ist, musst du selber herausfinden.".


[Haupt Ebene - FS]
Chapter - Hauptebene

Section - Labor F

Labor F is a room.
The Description of Labor F is "Hier wurde das Raumphänomen erforscht.
Über dir ist das Antennenfeld F und im Süden ist eine Tür.".


Section - Kommunikationsmodul F

Kommunikationsmodul F is a room.
Kommunikationsmodul F is above Transporterraum.
The Description of Kommunikationsmodul F is "Möchtest du einen Funkspruch absetzen oder Empfangen? Dann bist du hier genau richtig.
Es geht eine Leiter nach oben und unten.
Nach Norden geht’s es zum Labor F.".


Section - Fluchtkapseln

[Zählt nach drücken des "FluchtKnopfes" die Anzahl der Kontaminierten, falls größer als 0 -> spieler hat verloren, ansonsten gewonnen]
KontaCounter is a number which varies.

Fluchtkapseln is a room.
The Description of Fluchtkapseln is "Falls irgendein Notfall Eintritt, kannst du von hier aus mit einen Fluchtkapsel flüchten.
Südlich von dir kannst du den Raum wieder verlassen.[line break]Hinten links in der Ecke befindet sich noch eine unbenutzte Fluchtkapsel, ob die wohl noch funktioniert?".

Fluchtkapsel is inside of Fluchtkapseln. Launch-Schalter is in Fluchtkapsel. Launch-Schalter is a device. Launch-Schalter is switched off. 
Launch-Schalter is fixed in place. The description of Launch-Schalter is "Dieser Schalter leitet wahrscheinlich den Start der Fluchkapsel ein."

Before switching on Launch-Schalter:
	if sauerstoffabfallbeginn is 0:
		say "Du willst schon flüchten? Versuche doch das Stationspersonal zu dekontaminieren oder wenigstens einen Notruf abzusetzen!" instead;
	else if Percy is not in Fluchtkapsel:
		say "Willst du wirklich ohne Percy flüchten??" instead;
	else if Barry is not in Fluchtkapsel:
		say "Willst du wirklich ohne Barry flüchten??" instead;
		
After switching on Launch-Schalter:
	say "Du drückst den Launch-Knopf und die Fluchtkapsel wird in den Weltraum geschossen.";	
	repeat with i running through persons:
	[diese Bedingugen gelten beide für Kontaminierte, also wenn kontaminierte drinnen sind mache folgende aktion....]
		if i is in Fluchtkapsel:
			if i is not Barry:
				if i is not Percy:
					increase KontaCounter by 1;
	if KontaCounter is greater than 0:
		end the story finally saying "Du hast vergessen zu überprüfen, ob Kontaminierte mit in der Fluchtkapsel sind. Barry und Percy werden bei der Flucht kontaminiert. Du hast verloren!";
	else if KontaCounter is 0:
		end the story finally saying "Barry und Percy flüchten erfolgreich, du hast das Spiel gewonnen!!!".	


Section - Kontrollmodul

Kontrollmodul is a room.
The Description of Kontrollmodul is "Du befindest dich auf der Kontrollstation der Forschungseinrichtung.
Nördlich von dir sind die Fluchtkapseln, eine Treppe geht nach oben.".


[Untere Ebene - FS]

Chapter - Untere Ebene

[Section -
Lager F is a room.
Section -
Beschädigtes Modul is a room.]

Section - Transporterraum

Transporterraum is a room.
The Description of Transporterraum is "Dies ist die Verbindung zur Raumstation.
Benutze den Transporter um dorthin zu gelangen.
Östlich geht’s zum Energiespeicher und über dir zum Kommunikationsmodul F.".

[------Transporter-------]
Transporter-FS is inside of Transporterraum. The description of Transporter-FS is "Dieses ist der Transporter, durch drücken des hier befindlichen Knopfes gelangt man von der Forschungsstation zur Raumstation."

Knopf-RS is in Transporter-FS. Knopf-RS is a device. Knopf-RS is fixed in place. Knopf-RS is switched off. 
The description of Knopf-RS is "Dieser Knopf leitet wahrscheinlich den Transport ein..."

instead of switching on Knopf-RS:
	now the player is in Transporter-RS;
	say "'Achtung: wir sind an der Raumstation angekommen. Sie können hier aussteigen, oder wieder zurück fahren.'";


Section - Energiespeicher

Energiespeicher is a room.
The Description of Energiespeicher is "Dies ist der primäre Energiespeicher der Forschungsstation.
Östlich ist eine Tür.".


[Türen]

Section - Türen 

TürAF-FM is south of Antennenfeld F and north of Funkmodul. TürAF-FM is a door. TürAF-FM is open.
TürAF-SM is east of Antennenfeld F and west of Solar-Modul F. TürAF-SM is a door. TürAF-SM is open.
TürSM-PM is south of Solar-Modul F and north of Pulsator-Modul. TürSM-PM is a door. TürSM-PM is open.

TürL-BM is east of Transporterraum and west of Energiespeicher. TürL-BM is a door. TürL-BM is open.
 [TürTR-EM is east of Lager F and west of Beschädigtes Modul.TürTR-EM is a door. TürTR-EM is open.]

TürKM-FK is north of Kontrollmodul and south of Fluchtkapseln. TürKM-FK is a door.TürKM-FK is open.
TürL-KOMF is south of Labor F and north of Kommunikationsmodul F. TürL-KOMF is a door. TürL-KOMF is open.

The Description of TürAF-FM is "Tür zwischen Antennen-Feld F und Funkmodul: Tür offen.".
The Description of TürAF-SM is "Tür zwischen Antennen-Feld F und Solar-Modul: Tür offen.".
The Description of TürSM-PM is "Tür zwischen Solar-Modul F und Pulsator-Modul: Tür offen.".
The Description of TürL-BM is "Tür zwischen Transporterraum und Energiespeicher: Tür offen.".
The Description of TürKM-FK is "Tür zwischen Kontrollmodul und Fluchtkapseln: Tür offen.".
The Description of TürL-KOMF is "Tür zwischen Labor F und Kommunikationsmodul F: Tür offen.".



Part - Generele Regeln

[------Code für das Beschädigen Kommando für die westlichen Panels--------------]
Understand "damage [something] with [something carried]" as damaging it with. 
Damaging it with is an action applying to one visible thing and one carried thing.

Report damaging:
	say "Das [the noun] wurde beschädigt. Nun kann die Tür mit einem Sicherheitsausweis entsperrt werden."

Carry out damaging:
	now the noun is open;

Check damaging something which is an open container with something :
	say "Es wird keine Beschädigung benötigt." instead. 

Check damaging something with something which is not mobitab:
	say "Mit diesem Gegenstand kann nichts beschädigt werden." instead. 
	
Check damaging something which is not a container with something :
	say "Hierbei handelt es sich nicht um ein Panel!" instead. 

Check damaging Spind with something:
	say "Der Spind kann nicht beschädigt werden!!!" instead.


Part - Szenen und mehr

Szene 1 is a scene. "Szene 1: Böses Willkommen[paragraph break]Die Lupus-Station ist eine der entlegensten Raumstationen des Terrestrischen Imperiums. Sie dient ausschließlich der Forschung. Zum einen liegt sie in der Nähe eines Planeten, der fremde Lebensformen mit geringer Intelligenz hervorgebracht hat. Zum anderen befindet sich in einiger Entfernung ein besonders seltenes Raumphänomen, das erforscht werden soll. Zu diesem Zweck wurde dort eine kleine Forschungsstation errichtet. Der Transport per Raumfähre ist auf Grund von Ionenstürmen recht gefährlich, so dass ein Punkt‐zu‐Punkt‐Subraum‐Transport‐Link zur Raumstation eingerichtet worden ist.[line break]Die Protagonisten der Geschichte sind der Pilot und Spezialist für Vakuumeinsätze Barry McIntyre sowie der Ingenieur Percy Braden. Beide sind frisch von der Akademie und auf ihrem ersten Einsatz auf einer Raumstation (wenn man die Ausbildungsstation im Erdorbit einmal nicht mitzählt). Sie sollen zwei Mitarbeiter der Lupus‐Station ablösen und sind mit der Fähre auf dem Weg zur Station.[line break]Barry fliegt die Fähre, Percy übernimmt die Kommunikation. Als sie sich der Station nähern wundern sie sich, dass zwar der automatische Leitstrahl funktioniert, sie jedoch keine Antwort auf ihre Landeanfrage erhalten. Da der Leitstrahl sie führt und das automatische Andocken einleitet, denken sie sich nichts weiter und halten das für ein eventuelles Willkommensritual des Außenpostens. Als sie aus der Fähre aussteigen, finden sie den Andock‐ und Hangarbereich verlassen vor. Sie sind verwundert und einigen sich darauf, dass Barry den Landecheck vornimmt und Percy nach dem Deckpersonal recherchiert und sich schon einmal auf der Brücke beim wachhabenden Offizier meldet (Der Spieler spielt als Percy)."
Szene 1 begins when play begins.
Szene 1 ends when the player is Barry.

Szene 2 is a scene. "Szene 2: Percy hat ein Problem[paragraph break](Du spielst nun Barry) So alles erledigt. Komisch, irgendwie habe ich noch keine Menschenseele auf dieser Station gesehen. Und wo ist überhaupt Percy abgeblieben? Vielleicht sollte ich mal nachschauen wie es bei ihm läuft."
Szene 2 begins when the player is Barry.
Szene 2 ends when Percy is on Krankenbett.

Szene 3 is a scene. "Szene 3: Kommt alle zusammen[paragraph break]Percy ist nach der Heilung noch ein wenig verwirrt, lässt sich aber bereitwillig von Barry auf den aktuellen Stand bringen. Allem Anschein sind sonst alle auf der Sation kontaminiert, denn selbst die Brücke reagiert nicht auf Kommunikationsversuche. Sie beschließen, das Personal der Station zu retten. Leider ist Percy noch sehr schwindelig, so dass er sich im Med‐Lab auf das Krankenbett legen muss. Zu allem Unglück stellt Barry nun einen Hauptenergieabfall auf der Station fest (der ehemals blau glühende Maschinenkern leuchtet nun grün). Die Dekontaminationskabine ist damit nun außer Betrieb. Die Beschaltung der Kabine kann er leider nicht ohne eine ganze Wartungsmannschaft umbauen.[line break]Er kommt zu der Einsicht, dass Hilfe von außen hinzukommen muss. Dazu muss ein Notruf abgesetzt werden. Das Kommunikationsmodul hat einen eigenen Hilfsgenerator, so dass das kein Problem sein sollte ‐ aber das ist der zweite Schritt. Zunächst einmal müssen die Dekontaminierten gesammelt werden. Der am besten geeignete Raum scheint das Lager auf dem Unterdeck zu sein. Man muss sie nur alle dorthin locken und die zwei Türen schließen."
Szene 3 begins when Percy is on Krankenbett.
Szene 3 ends when lagerState is true.

lagerState is a truth state that varies.
lagerState is false.
lagercounter is a number which varies.

every turn:
	[nur wenn Szene 3 gerade aktiv ist, soll das Lager 'überprüft' werden]
	if Szene 3 is happening:
		repeat with i running through the Kontaminierter in Lager:
			increase lagercounter by 1;
		if lagercounter is 7 :
			now lagerState is true;
		otherwise:
			now lagercounter is 0;

Szene 4 is a scene. "Szene 4: Der Notruf[paragraph break]Barry geht zurück in das Med-Labor und berät sich mit Percy. Einer von ihnen muss ins Kommunikationsmodul, um den Hilfsgenerator zu aktivieren, während der andere den Notruf auf der Brücke zeitnah absetzt.
Um Kontakt zu halten und Befehle zu geben, muss Barry die Gegensprechanlage der Brücke nutzen. Durch das Versammeln der Kontaminierten hat sich der Umkleideraum und das Damen-WC geöffnet...."
Szene 4 begins when lagerState is true.
When Szene 4 begins:
	now TürH-UR is open;
	now TürBK-WCD is open;
	
[Backdrop]
	
Fenster is a backdrop. It is in Maschinenraum and in Solar-Labor and in Xeno-Labor and in Med-Labor and in Alpha-Beta Korridor and in Energiespeicher and in Lagerraum and in Delta-Gewächshaus and in Lager and in Beta-Gewächshaus and in Gamma Kreuzung and in Gamma-Beta Korridor and in Beta Kreuzung and in Alpha-Beta Korridor and in Alpha Kreuzung and in Alpha-Delta Korridor and in Delta Kreuzung and in Gamma-Delta Korridor. 
The Description of Fenster is "[if Fenster is in Maschinenraum and Szene 2 has not ended]Der Maschinenkern leuchtet blau.[end if]
[if Fenster is in Maschinenraum and Szene 2 has ended]Der Maschinenkern leuchtet grün.[end if]
[if Fenster is in Solar-Labor and Szene 2 has not ended]Der Maschinenkern leuchtet blau.[end if]
[if Fenster is in Solar-Labor and Szene 2 has ended]Der Maschinenkern leuchtet grün.[end if]
[if Fenster is in Xeno-Labor and Szene 2 has not ended]Der Maschinenkern leuchtet blau.[end if]
[if Fenster is in Xeno-Labor and Szene 2 has ended]Der Maschinenkern leuchtet grün.[end if]
[if Fenster is in Med-Labor and Szene 2 has not ended]Der Maschinenkern leuchtet blau.[end if] 
[if Fenster is in Med-Labor and Szene 2 has ended]Der Maschinenkern leuchtet grün.[end if] 
[if Fenster is in Alpha-Beta Korridor] Wow! Das Raumphänomen ist beeindruckend, ich habe nie was spektakuläreres gesehen. Nur Schade, dass dies hier nur ein Text-Adventure ist. [end if]
[if Fenster is in Energiespeicher] Wow! Das Raumphänomen ist beeindruckend, ich habe nie was spektakuläreres gesehen. Nur Schade, dass dies hier nur ein Text-Adventure ist. [end if]
[if Fenster is in Lagerraum] Die unendlichen Weiten des Universums kann man hier erahnen. Wo ist wohl der Anfang und wo das Ende? [end if]
[if Fenster is in Delta-Gewächshaus] Die unendlichen Weiten des Universums kann man hier erahnen. Wo ist wohl der Anfang und wo das Ende? [end if]
[if Fenster is in Lager] Die unendlichen Weiten des Universums kann man hier erahnen. Wo ist wohl der Anfang und wo das Ende? [end if]
[if Fenster is in Beta-Gewächshaus] Die unendlichen Weiten des Universums kann man hier erahnen. Wo ist wohl der Anfang und wo das Ende? [end if]
[if Fenster is in Gamma Kreuzung]Die unendlichen Weiten des Universums kann man hier erahnen. Wo ist wohl der Anfang und wo das Ende?[end if]
[if Fenster is in Gamma-Beta Korridor] Die unendlichen Weiten des Universums kann man hier erahnen. Wo ist wohl der Anfang und wo das Ende?[end if]
[if Fenster is in Beta Kreuzung] Die unendlichen Weiten des Universums kann man hier erahnen. Wo ist wohl der Anfang und wo das Ende?[end if]
[if Fenster is in Alpha-Beta Korridor] Die unendlichen Weiten des Universums kann man hier erahnen. Wo ist wohl der Anfang und wo das Ende?[end if]
[if Fenster is in Alpha Kreuzung] Die unendlichen Weiten des Universums kann man hier erahnen. Wo ist wohl der Anfang und wo das Ende?[end if]
[if Fenster is in Alpha-Delta Korridor] Die unendlichen Weiten des Universums kann man hier erahnen. Wo ist wohl der Anfang und wo das Ende?[end if]
[if Fenster is in Delta Kreuzung] Die unendlichen Weiten des Universums kann man hier erahnen. Wo ist wohl der Anfang und wo das Ende?[end if]
[if Fenster is in Gamma-Delta Korridor] Die unendlichen Weiten des Universums kann man hier erahnen. Wo ist wohl der Anfang und wo das Ende? [end if]".


[------Regeln der Kontaminierten -----------]
ausgabe is a truth state that varies. ausgabe is false.
every turn:
	repeat with i running through the Kontaminierter:
		if the location of i is not the location of the player:
			if aufmerksam of i is false:
				if the counter of i is greater than 0:
					now the counter of i is 0;
			else: 
			[Falls der Kontaminierte aufmerksam ist, lasse ihn dem Spieler folgen, falls er noch eine Aktion im Raum gemacht hat]
				if counter of i is 2:
					if ausgabe is true:
						say "Kontaminierte sind dir in den nächsten Raum gefolgt.";
						now ausgabe is false;
					move i to the location of the player;
					now the counter of i is 0;
					now aufmerksam of i is false;
		[Else Teil, musste in eine adnere Schleife, damit die ausgabe variable zum richtigen Zeitpunkt zurückgesetzt wird...]
	repeat with i running through the Kontaminierter:
		if the location of i is not the location of the player:
			if the counter of i is greater than 0:
				now the counter of i is 0;
				now aufmerksam of i is false;
				now ausgabe is false;
	[-----Erhöht zug counter der Kontaminierten, bei zu vielen zügen ist game over-----]
	repeat with i running through the Kontaminierter in the location of the player:
		if aufmerksam of i is true:
			if counter of i is 2:
				end the story finally saying "Du hast Kontaminierte auf dich aufmerksam gemacht, und hast dann den Raum nicht rechtzeitig verlassen. Du wurdest somit kontaminiert";
		if the counter of i is 3:
			end the story finally saying "Du warst zu lange mit einem Kontaminierten im selben Raum, er hat dich kontaminiert...";
		[da beim Wechseln in einen anderen Raum der counter auch erhöht wird, wird die überprüfung vor dem erhöhen gemacht, sodass der zähler beim 4. durchlauf(der Schleife, nicht verwechseln, der Spieler kann trotzdem nur 3 Aktionen machen) dann auf 3 ist und das spiel beendet wird, alternativ könnte man den zähler bei -1 beginnen lassen]
		increase the counter of i by 1;
	repeat with i running through the Kontaminierter in Dekontaminationskabine:
		if the location of the player is Med-Labor:
			if Dekontaminationskabine is open:
				if the counter of i is 3:
					end the story finally saying "Du hast den Kontaminierten in die Kabine gelockt, aber die Tür nicht geschlossen, und dich zulange im Raum aufgehalten, du wurdest kontaminiert";
				otherwise:
					increase the counter of i by 1;	
		

["Mache Geräusch" Aktion, um den Kontaminierten aufmerksam zu machen]		
Understand "make noise" as making noise.
Understand "mache Geräusch" as making noise.
Making noise is an action applying to nothing.

Report making noise:
	say "Nun sind alle Kontaminierten im Raum aufmerksam."
	
RoomCounter is a number which varies.

Before making noise:
	[Wenn kein Kontaminierter im Raum ist, kann die Aktion nicht gemacht werden, ansonsten führt es zu einem Bug...]
	repeat with i running through the Kontaminierter:
		if i is in the location of the player:
			increase RoomCounter by 1;
	if RoomCounter is 0:
		say "Kein Kontaminierter kann deine Geräusche hören." instead;
	if RoomCounter is greater than 0:
		now RoomCounter is 0;
	if Alarm is in the location of the player:
		say "Der Alarm ist im Moment eingeschaltet, kein normales Geräusch kann ihn übertönen." instead;
	if ausgabe is true:
		say "Einmal Krach machen reicht." instead;
	
	
Carry out making noise:
	[------setzt boolean aufmerksam der Kontaminierten auf true, falls kein Alarm da ist.-----]
	repeat with i running through the Kontaminierter in the location of the player:
		now aufmerksam of i is true;
		now the counter of i is 0;
	now ausgabe is true;


[Sauerstoffabfall]

Oxygencounter is a number which varies.
Oxygencounter is 15.
every turn:
if the Oxygencounter is not -1 begin;
	   if Oxygencounter is zero begin;
		 say "Du bist Tod, Spiel vorbei";
		 say "[paragraph break]";
		 end the story;
		 end if;
				 if the sauerstoffabfallbeginn is 1 begin;
				 say "Du hast noch [Oxygencounter] Spielzüge Zeit, um die Lupus Station zu verlassen.";
				 decrease Oxygencounter by 1; 
				 end if;
end if;

[-----weitere "unwichtige" Gegenstände--------------]


Generator is a thing. It is fixed in place. It is in Hauptgenerator. The Description is "Dies ist der Hauptgenerator, welches die Station mit Strom versorgt.".


[Test-Schleife, schließt am Anfang alle Türen auf, so muss man nicht immer alle Türen entsper- 	en, um den Code zu Testen]
[when play begins:	
	repeat with i running through doors:
		if i is a locked door:
			now i is unlocked;]
