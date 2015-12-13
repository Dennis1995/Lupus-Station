"Lupus Station" by Gruppe22

The player is in Hangar.

Barry is a person in Hangar. The description of Barry is "[if the player is Barry]Ich bin Barry der Pilot und streife durch die Lupus-Station. [otherwise]Barry ist der Pilot."

Percy is a person in Hangar. The description of Percy is "[if the player is Percy]Ich bin Percy der Ingenieur und streife durch die Lupus-Station. [otherwise]Percy ist der Ingenieur."

The player is Percy.

[////////Regionen//////////////////////]
The Raumstation is a region. The  Andockstation, Hangar, Umkleideraum, Gamma-Delta Korridor, Kommunikationsmodul, Alpha-Delta Korridor, Delta Kreuzung, Alpha Kreuzung, Dienstraum, Besatzungsquartier, Alpha-Beta Korridor, Beta Kreuzung, WC-Damen, Gamma-Beta Korridor, Gamma Kreuzung, Xeno-Labor,  Solar-Labor, Med-Labor, Maschinenraum, Besprechungsraum, Brücke, Antennenfeld L, Lagerraum, Mensa, Fitnessraum, Delta-Gewächshaus, Lager, Beta-Gewächshaus, Schwerkraftkompensator, Delta-KI, Hauptgenerator, Umkleideraum, Alpha-KI, Hilfsgeneratorraum are in the Raumstation. 

The Forschungsstation is a region. The Transporterraum, Lager F, Beschädigtes Modul, Energiespeicher, Kommunikationsmodul F, Labor F, Kontrollmodul, Fluchtkapseln, Antennenfeld F, Solar-Modul F, Funkmodul, and the Pulsator-Modul are in the Forschungsstation.


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



Section - Besprechungsraum

Besprechungsraum is a room. 
Besprechungsraum is above Dienstraum.
The Description of Besprechungsraum is "Ein Raum voller Besprechungsnotizen und Stühlen.
Der Dienstraum hier drunter hatte mehr Charm.".



Section - Antennenfeld L

Antennenfeld L is a room. 
Antennenfeld L is above Kommunikationsmodul.
The Description of AntennenfeldL is "Über diesem Raum scheinen die Antennen der Forschungsstation zu sein. Ein großer roter Knopf…der scheint wichtig zu sein.".
[counter für das Abstezen des Notrufes]
notrufcounter is a number which varies.

Antennenjustierung is in Antennenfeld L. Antennenjustierung is a device. Antennenjustierung is fixed in place. Antennenjustierung is switched off.
The description of Antennenjustierung is "Das scheint ein Schalter für die automatische Antennenjustierung zu sein. Die Antenne muss erst justiert werden, bevor ein Notruf abgesendet werden kann".

roter Notrufknopf is a device. roter Notrufknopf is fixed in place. roter Notrufknopf is switched off.
The description of roter Notrufknopf is "Ob man mit diesem Knopf wohl einen Notruf absetzen kann?".

Instead of switching on Antennenjustierung:
	if notrufcounter is 0 begin;
		increase notrufcounter by 1;
		say "Das hat wohl nicht geklappt, vielleicht sollte ich es nochmal probieren?" instead; [instead wird benötigt, damit die zweite Bedingung nicht auch geprüft wird, die wäre ja dann true, also einmal drücken und die Justierung würde dann funktionieren -> Sinn nicht erfüllt]
	end if;
	if notrufcounter is 1 begin;
		now Antennenjustierung is switched on;
		say "Dieses mal hat es wohl funktioniert und die Antenne ist justiert. Was ist das? Ein roter Knopf? War der vorher auch schon hier?";
		now roter Notrufknopf is in Antennenfeld L;
	end if;

[------ Fängt Szenarien ab, in dennen der Hilfsgenerator aus ist und versucht wird der Notruf abzusetzen]
Before switching on Antennenjustierung:
	if HG-Knopf is switched off:
		say "Nichts passiert. Der Raum wirkt auch so gut wie nicht beleuchtet. Komisch, als wäre ein Stromausfall, vielleicht sollte ich erst für eine aussreichende Energieversorgung sorgen." instead.
		
Before switching on roter Notrufknopf:
	if HG-Knopf is switched off:
		say "Nichts passiert. Der Raum wirkt auch so gut wie nicht beleuchtet. Komisch, als wäre ein Stromausfall, vielleicht sollte ich erst für eine aussreichende Energieversorgung sorgen." instead.
		
After switching on roter Notrufknopf:
	say "Nun wurde der Notruf erfolgreich abgesetzt, hoffentlich kommt bald Hilfe!!!";
	

Section - Obere Ebene Türen

TürBrücke is a door. TürBrücke is east of Brücke and west of Besprechungsraum. TürBrücke is closed and locked. 
The Description of TürBrücke is "Tür zwischen Brücke und Besprechungsraum: Hierzu muss der Alarm deaktiviert werden, anschließend lässt die Tür sich mit der Sicherheitskarte öffnen.".



Chapter - Hauptebene

[////Hauptebene der Raumstation////]

Section - Hangar

The Hangar is a room.
The Spind is a container in Hangar. Spind is closed and openable. Spind is fixed in place.
The description of Spind is "Im Spind lagern die Mitarbeiter ihre Sachen."
The Description of Hangar is "Ein Raum verlassen wie jeder andere. Der Spind neben der Tür im Westen lädt einen ein, um reinzugucken. ".

PanelH-GK is an open container in Hangar. the panelH-GK  is unopenable. the panelH-GK  is fixed in place. 

Sicherheitskarte is in Spind.
The description of Sicherheitskarte is "Eine Sicherheitskarte mit der kann man die Türen auf der Station entsperren kann."

The Mobitab is in Spind. The description is "[if the mobitab is in Spind]Ein MobiTab, das wird sicherlich noch nützlich sein.[otherwise] Im Kleingedruckten steht 'Bitte nicht auf Türpanel anwenden.' Komisch.". 



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

	instead of pushing the fass:
       if the player is in Andockstation begin;
       let L be the list of  unlocked doors in Andockstation;
       let zahl be the number of entries in L;
       let g be a random number from 1 to zahl;
       say other side of entry g in L;
       now the fass is in the other side of entry g in L;
       end if;
              if the player is in Hangar begin;
              say za;
              let L be the list of unlocked doors in Hangar ;
              let zahl be the number of entries in L;
              let g be a random number from 1 to zahl;
              say other side of entry g in L;
              now the fass is in the other side of entry g in L;
              end if;
                  if the player is in the Gamma Kreuzung begin;
                          let L be the list of unlocked doors in Gamma Kreuzung;
                          let zahl be the number of entries in L;
                          let g be a random number from 1 to zahl;
                          say other side of entry g in L;
                          now the fass is in the other side of entry g in L;
                          end if;
                                     if the player is in the Gamma-Delta Korridor begin;
                                     let L be the list of unlocked doors in Gamma-Delta Korridor;
                                     let zahl be the number of entries in L;
                                      let g be a random number from 1 to zahl;
                                     say other side of entry g in L;
                                     now the fass is in the other side of entry g in L;
                                     end if;	
				if the player is in the Alpha-Delta Korridor begin;
			        let L be the list of unlocked doors in Alpha-Delta Korridor;
				let zahl be the number of entries in L;
				let g be a random number from 1 to zahl;
				say other side of entry g in L;
				now the fass is in the other side of entry g in L;
				end if;
					if the player is in the Alpha Kreuzung begin;
					let L be the list of unlocked doors in the Alpha Kreuzung;
					let zahl be the number of entries in L;
					let g be a random number from 1 to zahl;
					say other side of entry g in L;
					now the fass is in the other side of entry g in L;
					end if;
						if the player is in the Alpha-Beta Korridor begin;
						let L be the list of unlocked doors in the Alpha-Beta Korridor;
						let zahl be the number of entries in L;
						let g be a random number from 1 to zahl;
						say other side of entry g in L;
						now the fass is in the other side of entry g in L;
						end if;
							if the player is in the Beta Kreuzung begin;
							let L be the list of unlocked doors in the Beta Kreuzung;
							let zahl be the number of entries in L;
							let g be a random number from 1 to zahl;
							say other side of entry g in L;
							now the fass is in the other side of entry g in L;
							end if;
								if the player is in the Gamma-Beta Korridor begin;
								let L be the list of unlocked doors in the Gamma-Beta Korridor;
								let zahl be the number of entries in L;
								let g be a random number from 1 to zahl;
								say other side of entry g in L;
								now the fass is in the other side of entry g in L;
								end if;
									 if the player is in the Maschinenraum begin;
									let L be the list of unlocked doors in the Maschinenraum;
									let zahl be the number of entries in L;
									let g be a random number from 1 to zahl;
									say other side of entry g in L;
									now the fass is in the other side of entry g in L;
									end if;
					if the player is in the Med-Labor begin;
					let L be the list of unlocked doors in the Med-Labor;
					let zahl be the number of entries in L;
					let g be a random number from 1 to zahl;
					say other side of entry g in L;
					now the fass is in the other side of entry g in L;
					end if;
						if the player is in the Solar-Labor begin;
						let L be the list of unlocked doors in the Solar-Labor;
						let zahl be the number of entries in L;
						let g be a random number from 1 to zahl;
						say other side of entry g in L;
						now the fass is in the other side of entry g in L;
						end if;
							if the player is in the Dienstraum begin;
							let L be the list of unlocked doors in the Dienstraum;
							let zahl be the number of entries in L;
							let g be a random number from 1 to zahl;
							say other side of entry g in L;
							now the fass is in the other side of entry g in L;
							end if;
								if the player is in the  Besatzungsquatier begin;
								let L be the list of unlocked doors in the  Besatzungsquatier;
								let zahl be the number of entries in L;
								let g be a random number from 1 to zahl;
								say other side of entry g in L;
								now the fass is in the other side of entry g in L;
								end if;
									if the player is in the Umkleideraum begin;
									let L be the list of unlocked doors in the  Umkleideraum;
									let zahl be the number of entries in L;
									let g be a random number from 1 to zahl;
									say other side of entry g in L;
									now the fass is in the other side of entry g in L;
									end if;




 




Section - Gamma Kreuzung

Gamma Kreuzung is a room.

The Description of Gamma Kreuzung is "Du befindest dich im östlichen Teil des äußeren Rings.Durchs fenster sieht man die undendlichen Weiten des Alls. 
Nordwestlich befindet sich der Gamma Delta Korridor, östlich der Hangar und südwestlich der Gamma Beta Korridor.".

PanelGK-GDK is an open container in Gamma Kreuzung. the panelGK-GDK is unopenable. the panelGK-GDK is fixed in place. 
PanelGBK-GK is an open container in Gamma Kreuzung. the panelGBK-GK is unopenable. the panelGBK-GK is fixed in place. 


Section - Gamma-Delta Korridor

The Description of Gamma-Delta Korridor is "Who the Fu**, was ist hier passiert??
Ein Raum voller Spuren von Laserbeschuss. Sogar den Türhebel im Nordosten hat es erwischt.
Ist das eine Leiche vor der Tür im Nordwesten?".


Gamma-Delta Korridor is a room.
PanelGDK-DK is an open container in Gamma-Delta Korridor. the panelGDK-DK is unopenable. the panelGDK-DK is fixed in place.  


Section - Delta Kreuzung

Delta Kreuzung is a room.
The Description of Delta Kreuzung is "Was sind das hier für Geräusche, kommen die aus dem Raum im Süden oder doch aus dem Südwesten?".

Section - Alpha-Delta Korridor


Alpha-Delta Korridor is a room.
The Description of Alpha-Delta Korridor is "Ein Raum mit einem Panel zum Öffnen der Tür, lediglich eine Tür im Nordosten und eine im Südwesten.".

PanelADK-DK is an closed container in Alpha-Delta Korridor. the panelADK-DK is unopenable. the panelADK-DK is fixed in place.
[---------- Von der Delta Kreuzung kommt man nicht nach süd westen, da kein panel dafür da ist, es geht aber von der anderen
Seite. Das müsste vielleicht noch in einem beschreibenden Text erwähnt werden, wenn ide Tür locked ist]

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
.
PanelABK-AK is an closed container in Alpha-Beta Korridor. the panelABK-AK is unopenable. the panelABK-AK is fixed in place.


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
PanelGBK-BK is an open container in Gamma-Beta Korridor. the panelGBK-BK is unopenable. the panelGBK-BK is fixed in place. 


Section - Maschinenraum

Maschinenraum is a room.
Maschinenraum is above Schwerkraftkompensator.
The Description of Maschinenraum is "Es ist sehr sehr laut und schmutzig hier. Eine Tafel zeigt viele nützliche Informationen an, ein alter Akkubohrer mit einem Akku liegt auf  dem Boden. Der Blick auf den Maschinen ist sicherlich für Ingenieure interessant.  Alles riecht nach Öl.
Ein Glück kann man hier die Etagen Wechseln.".



Section - Med-Labor

Med-Labor is a room.
The Description of Med-Labor is "Das Med-Labor ist spärlich ausgestattet.
Ein Bett, ein Pult und eine riesige Kabine. Dafür hat man den Blick auf den Maschinekern. "

Krankenbett is an enterable supporter in Med-Labor. Krankenbett is fixed in place. 
The description of Krankenbett is "Ein Bett für jemand Krankes, es sieht nicht wirklich bequem aus."
[hier muss vielleicht noch eine Bedingung eingefügt werden, sodass letzendlich nur Percy das Bett nutzen kann]


Knopf is a device. Knopf is on Pult. Knopf is fixed in place.
Knopf is switched off. The description of Knopf is "Ahh! Ein Knopf, um Videoblogs abzuspielen...". Knopf is undescribed.
Pult is a supporter in Med-Labor. The description of Pult is "Auf dem Pult befindet sich ein Knopf mit der Beschriftung 'Videos'. Was der wohl macht?"
Pult is fixed in place.

After switching on Knopf:
	[Implementation, dass Kontaminierte aufmerksam werden, fehlt]
	say "Videoblog des Stationsarztes:[paragraph break]'Es fing alles mit einer biologischen Probe von einem nahegelegnen Planeten an. Wir wollten eigentlich nur das Leben auf diesem obskuren Planeten erfroschen. Das Sammeln der Probe verlief auch Reibungslos. Doch dann wurden anscheinend einige Raumanzüge von manchen Mitarbeitern nicht richtig dekontaminiert. Somit konnten einige von ihnen mit einem fremden Erreger kontaminiert werden. Daraufhin standen sie einfach in der Gegend herum und hatten einen starren Blick.[line break]Glücklicherweise habe ich es noch geschafft eine Dekontaminationskabine zu entwerfen und auch zu bauen. Es passt aber nur eine Person gleichzeitig hinein. Die Kontaminierten können durch das Öffnen der Tür der Kabine angelockt werden, da die Tür sehr laut ist, aber eben nur einer gleichzeitig passt in die Kabine. Wenn man die Kabine dann schließt wird der darin befindliche Kontaminierte von dem Erreger befreit und er ist wieder gesund. Ich hoffe ich schaffe es alle zu dekontaminieren, falls nicht und Sie diese Nachricht hören, BITTE HOLEN SIE HILFE!!!'"


Section - Solar-Labor

Solar-Labor is a room.
The Description of Solar-Labor is "Dies scheint auch ein Forschungsraum zu sein. Auch von hier aus sieht man den Maschinekern. Anscheinend wie jeder Raum des inneren Rings auf dieser Etage.".


Section - Xeno-Labor

Xeno-Labor is a room.
The Description of Xeno-Labor is "Beeindruckend, wie blau der leuchtet.
Was ist das für eine seltsame Maschine, wofür die bloß da ist?
Schaltet der blinkende Knopf diese an?".



Section - WC-Damen

WC-Damen is a room.
The Description of WC-Damen is "Die Toilette scheint intakt zu sein. Lediglich das Wasser läuft die ganze Zeit.
Vielleicht hat der Spülkasten einen defekt.".



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
TürH-GK is locked.
The Description of TürH-GK is "Tür zwischen Hangar und Gamma Kreuzung: Tür lässt sich nur mit einem Sicherheitsausweis oder Mobtab öffnen/schließen.".

[Gamma Kreuzung <-> Gamma-Delta Korridor]
TürGK-GDK is northwest of Gamma Kreuzung. TürGK-GDK is southeast of Gamma-Delta Korridor. TürGK-GDK is a door.
TürGK-GDK is locked.
The Description of TürGK-GDK is "Tür zwischen Gamma Kreuzung und Gamma Delta Korridor: Tür lässt sich nur mit einem Sicherheitsausweis öffnen/schließen.".

[Gamma-Delta Korridor<-> Delta Kreuzung]
TürGDK-DK is northwest of Gamma-Delta Korridor. TürGDK-DK is southeast of Delta Kreuzung. TürGDK-DK is a door.
TürGDK-DK is locked.
The Description of TürGDK-DK is "Tür zwischen Gamma-Deta Korridor und Delta Kreuzung: Tür lässt sich nur mit einem Sicherheitsausweis öffnen/schließen.".

[Delta Kreuzung <-> Alpha-Delta Korridor]
TürDK-ADK is southwest of Delta Kreuzung. TürDK-ADK is northeast of Alpha-Delta Korridor. TürDK-ADK is a door.
TürDK-ADK is locked.
 The Description of TürDK-ADK is "Tür zwischen Delta Kreuzung und Alpha-Delta Korridor: Tür lässt sich nur mit einem Sicherheitsausweis + Mobitab öffnen/schließen.".
 


[Alpha-Delta Korridor <-> Alpha Kreuzung]
TürADK-AK is southwest of Alpha-Delta Korridor. TürADK-AK is northeast of Alpha Kreuzung. TürADK-AK is a door.
TürADK-AK is locked. 
The Description of TürADK-AK is "Tür zwischen Alpha-Delta Korridor und Alpha Kreuzung: Tür lässt sich nur mit einem Sicherheitsausweis + Mobitab öffnen/schließen.".

[Alpha Kreuzung <-> Alpha-Beta Korridor]
TürAK-ABK is southeast of Alpha Kreuzung. TürAK-ABK is northwest of Alpha-Beta Korridor. TürAK-ABK is a door.
TürAK-ABK is locked. 
The Description of TürAK-ABK is "Tür zwischen Alpha Kreuzung und Alpha-Beta Korridor: Tür lässt sich nur mit einem Sicherheitsausweis + Mobitab öffnen/schließen.".

[Alpha-Beta Korridor<-> Beta Kreuzung]
TürABK-BK is southeast of Alpha-Beta Korridor. TürABK-BK is northwest of Beta Kreuzung. TürABK-BK is a door.
TürABK-BK is locked. 
The Description of TürABK-BK is "Tür zwischen Alpha-Beta Korridor und Beta Kreuzung: Tür lässt sich nur mit einem Sicherheitsausweis + Mobitab öffnen/schließen.".

[Beta Kreuzung<-> Gamma-Beta Korridor]
TürBK-GBK is northeast of Beta Kreuzung. TürBK-GBK is southwest of Gamma-Beta Korridor. TürBK-GBK is a door.
TürBK-GBK is locked. 
The Description of TürBK-GBK is "Tür zwischen Beta Kreuzung und Gamma-Beta Korridor: Tür lässt sich nur mit einem Sicherheitsausweis öffnen/schließen.".

[Gamma-Beta Korridor <-> Gamma Kreuzung]
TürGBK-GK is northeast of Gamma-Beta Korridor. TürGBK-GK is southwest of Gamma Kreuzung. TürGBK-GK is a door.
TürGBK-GK is locked. 
The Description of TürGBK-GK is "Tür zwischen Gamma-Beta Korridor und Gamma Kreuzung: Tür lässt sich nur mit einem Sicherheitsausweis öffnen/schließen.".

[Gamma Kreuzung <-> Xeno-Labor]
TürGK-XL is west of Gamma Kreuzung. TürGK-XL is east of Xeno-Labor. TürGK-XL is a door.
TürGK-XL is locked.
The Description of TürGK-XL is "Tür zwischen Gamma Kreuzung und Xeno-Labor: Du benötigst die Xenokarte um diese Tür zu öffnen. Tür bleibt nur 5 Sekunden geöffnet und schließt dann wieder. Tür kann mit einem Fass blockiert werden, sodass die Tür für immer offen bleibt.".

[Regeln für die Xeno-Lab Tür]
every turn:
if the fass is in the Xeno-Labor begin;
  now TürGK-XL is unlocked;
  now the fass is not pushable between rooms;
otherwise;
    if the panel is unlocked begin; 
       now TürGK-XL is unlocked;
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
	if Percy is not in Fluchtkapsel:
		say "Willst du wirklich ohne Percy flüchten??" instead.
		
Before switching on Launch-Schalter:
	if Barry is not in Fluchtkapsel:
		say "Willst du wirklich ohne Barry flüchten??" instead.
		
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


[--------Every Turn------ (alles was nach einem Zug immer überprüft wird)]
every turn:
	[Panel im Hangar]
	if Sicherheitskarte is in panelH-GK begin;
		if TürH-GK is locked begin; 
			now TürH-GK is unlocked;
			say "Die Tür ist nun entsperrt und die Sicherheitskarte kann wieder entnommen werden.";
		else if the location of the player is Hangar;
			say "Die Tür ist schon offen! Entnehmen Sie bitte ihre Karte aus dem Panel.";
		end if;
	end if;
	[Panel in der Gamma Kreuzung zur Gamma-Delta Kreuzung]
	if Sicherheitskarte is in panelGK-GDK begin;
		if TürGK-GDK is locked begin; 
			now TürGK-GDK is unlocked;
			say "Die Tür ist nun entsperrt und die Sicherheitskarte kann wieder entnommen werden.";
		else if the location of the player is Gamma Kreuzung;
			say "Die Tür ist schon offen! Entnehmen Sie bitte ihre Karte aus dem Panel.";
		end if;
	end if;			
	[Panel in der Gamma Kreuzung zum Gamma-Beta Korridor]
	if Sicherheitskarte is in panelGBK-GK begin;
		if TürGBK-GK is locked begin; 
			now TürGBK-GK is unlocked;
			say "Die Tür ist nun entsperrt und die Sicherheitskarte kann wieder entnommen werden.";
		else if the location of the player is Gamma Kreuzung;
			say "Die Tür ist schon offen! Entnehmen Sie bitte ihre Karte aus dem Panel.";
		end if;
	end if;
	[Panel in dem Gamma-Delta Korridor zur Delta Kreuzung]
	if Sicherheitskarte is in panelGDK-DK begin;
		if TürGDK-DK is locked begin; 
			now TürGDK-DK is unlocked;
			say "Die Tür ist nun entsperrt und die Sicherheitskarte kann wieder entnommen werden.";
		else if the location of the player is Gamma-Delta Korridor;
			say "Die Tür ist schon offen! Entnehmen Sie bitte ihre Karte aus dem Panel.";
		end if;
	end if;
	[Panel im Gamma-Beta Korridor zur Beta Kreuzung]
	if Sicherheitskarte is in panelGBK-BK begin;
		if TürBK-GBK is locked begin; 
			now TürBK-GBK is unlocked;
			say "Die Tür ist nun entsperrt und die Sicherheitskarte kann wieder entnommen werden.";
		else if the location of the player is Gamma-Beta Korridor;
			say "Die Tür ist schon offen! Entnehmen Sie bitte ihre Karte aus dem Panel.";
		end if;
	end if;					
	[Panel in der Beta Kreuzung zum Alpha-Beta Korridor]
	if Sicherheitskarte is in panelBK-ABK  begin;
		if TürABK-BK is locked begin; 
			now TürABK-BK is unlocked;
			say "Die Tür ist nun entsperrt und die Sicherheitskarte kann wieder entnommen werden.";
		else if the location of the player is Beta Kreuzung;
			say "Die Tür ist schon offen! Entnehmen Sie bitte ihre Karte aus dem Panel.";
		end if;
	end if;	
	[Panel im Alpha-Beta Korridor zur Alpha Kreuzung]
	if Sicherheitskarte is in panelABK-AK  begin;
		if TürAK-ABK is locked begin; 
			now TürAK-ABK is unlocked;
			say "Die Tür ist nun entsperrt und die Sicherheitskarte kann wieder entnommen werden.";
		else if the location of the player is Alpha-Beta Korridor;
			say "Die Tür ist schon offen! Entnehmen Sie bitte ihre Karte aus dem Panel.";
		end if;
	end if;		
	[Panel in der Alpha Kreuzung zum Alpha-Delta Korridor]
	if Sicherheitskarte is in panelAK-ADK  begin;
		if TürADK-AK is locked begin; 
			now TürADK-AK is unlocked;
			say "Die Tür ist nun entsperrt und die Sicherheitskarte kann wieder entnommen werden.";
		else if the location of the player is Alpha Kreuzung;
			say "Die Tür ist schon offen! Entnehmen Sie bitte ihre Karte aus dem Panel.";
		end if;
	end if;		
	[Panel in dem Alpha-Delta Korridor zur Delta Kreuzung]
	if Sicherheitskarte is in panelADK-DK begin;
		if TürDK-ADK is locked begin; 
			now TürDK-ADK is unlocked;
			say "Die Tür ist nun entsperrt und die Sicherheitskarte kann wieder entnommen werden.";
		else if the location of the player is Alpha-Delta Korridor;
			say "Die Tür ist schon offen! Entnehmen Sie bitte ihre Karte aus dem Panel.";
		end if;
	end if;	

[Test-Schleife, schließt am Anfang alle Türen auf, so muss man nicht immer alle Türen entsper- 	en, um den Code zu Testen]
[when play begins:	
	repeat with i running through doors:
		if i is a locked door:
			now i is unlocked;]



Part - Szenen

Szene 1 is a scene. "Szene 1: Böses Willkommen[paragraph break]Die Lupus-Station ist eine der entlegensten Raumstationen des Terrestrischen Imperiums. Sie dient ausschließlich der Forschung. Zum einen liegt sie in der Nähe eines Planeten, der fremde Lebensformen mit geringer Intelligenz hervorgebracht hat. Zum anderen befindet sich in einiger Entfernung ein besonders seltenes Raumphänomen, das erforscht werden soll. Zu diesem Zweck wurde dort eine kleine Forschungsstation errichtet. Der Transport per Raumfähre ist auf Grund von Ionenstürmen recht gefährlich, so dass ein Punkt‐zu‐Punkt‐Subraum‐Transport‐Link zur Raumstation eingerichtet worden ist.[line break]Die Protagonisten der Geschichte sind der Pilot und Spezialist für Vakuumeinsätze Barry McIntyre sowie der Ingenieur Percy Braden. Beide sind frisch von der Akademie und auf ihrem ersten Einsatz auf einer Raumstation (wenn man die Ausbildungsstation im Erdorbit einmal nicht mitzählt). Sie sollen zwei Mitarbeiter der Lupus‐Station ablösen und sind mit der Fähre auf dem Weg zur Station.[line break]Barry fliegt die Fähre, Percy übernimmt die Kommunikation. Als sie sich der Station nähern wundern sie sich, dass zwar der automatische Leitstrahl funktioniert, sie jedoch keine Antwort auf ihre Landeanfrage erhalten. Da der Leitstrahl sie führt und das automatische Andocken einleitet, denken sie sich nichts weiter und halten das für ein eventuelles Willkommensritual des Außenpostens. Als sie aus der Fähre aussteigen, finden sie den Andock‐ und Hangarbereich verlassen vor. Sie sind verwundert und einigen sich darauf, dass Barry den Landecheck vornimmt und Percy nach dem Deckpersonal recherchiert und sich schon einmal auf der Brücke beim wachhabenden Offizier meldet (Der Spieler spielt als Percy)."
Szene 1 begins when play begins.
Szene 1 ends when the player is Barry.

Szene 2 is a scene.
Szene 2 begins when the player is Barry.

[Backdrop]
	
Fenster is a backdrop. It is in Maschinenraum and in Solar-Labor and in Xeno-Labor and in Med-Labor and in Alpha-Beta Korridor and in Energiespeicher and in Lagerraum and in Delta-Gewächshaus and in Lager and in Beta-Gewächshaus and in Gamma Kreuzung and in Gamma-Beta Korridor and in Beta Kreuzung and in Alpha-Beta Korridor and in Alpha Kreuzung and in Alpha-Delta Korridor and in Delta Kreuzung and in Gamma-Delta Korridor. 
The Description of Fenster is "[if Fenster is in Maschinenraum] Der Maschinenkern leuchtet blau.[end if]
[if Fenster is in Solar-Labor] Der Maschinenkern leuchtet blau [end if]
[if Fenster is in Xeno-Labor] Der Maschinenkern leuchtet blau.[end if]
[if Fenster is in Med-Labor] Der Maschinenkern leuchtet blau.[end if] 
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


The Kontaminierter1 is a person. The Kontaminierter1 is in the Alpha-Beta Korridor.

The Kontaminierter1 can be following. The Kontaminierter1 is not following.


Every turn:
	if the Kontaminierter1 is not following:
		if the location is the Alpha-Beta Korridor :
			say "Ein Kontaminierter. Er verfolgt dich.";
			now the Kontaminierter1 is following;
	otherwise if the location of the Kontaminierter1 is not the location of the player:
		if the the player unlock TürLB-DGH:
			say "Der Kontaminierter ist stehen geblieben. ";
			now the Kontaminierter1 is not following;
		otherwise:
			say "Der Kontaminierter verfolgt dich!";
			move the Kontaminierter1 to the location of the player.
			
			
The Kontaminierter2 is a person. The Kontaminierter2 is in the Alpha-Delta Korridor.

The Kontaminierter2 can be following. The Kontaminierter2 is not following.


Every turn:
	if the Kontaminierter2 is not following:
		if the location is the Alpha-Delta Korridor :
			say "Ein Kontaminierter. Er verfolgt dich.";
			now the Kontaminierter2 is following;
	otherwise if the location of the Kontaminierter2 is not the location of the player:
		if the the player unlock TürLB-DGH:
			say "Der Kontaminierter ist stehen geblieben. ";
			now the Kontaminierter2 is not following;
		otherwise:
			say "Der Kontaminierter verfolgt dich!";
			move the Kontaminierter2 to the location of the player.
			
			
The Kontaminierter Arzt is a person. The Kontaminierter Arzt is in the Med-Labor.

The Kontaminierter Arzt can be following. The Kontaminierter Arzt is not following.


Every turn:
	if the Kontaminierter Arzt is not following:
		if the location is the Med-Labor :
			say "Ein Kontaminierter. Er verfolgt dich.";
			now the Kontaminierter Arzt is following;
	otherwise if the location of the Kontaminierter Arzt is not the location of the player:
		if the the player unlock TürLB-DGH:
			say "Der Kontaminierter ist stehen geblieben. ";
			now the Kontaminierter Arzt is not following;
		otherwise:
			say "Der Kontaminierter verfolgt dich!";
			move the Kontaminierter Arzt to the location of the player.

[------------------3 x Kontaminierte im Besatzungsquartier-----------------------------]			

The Kontaminierter3 is a person. The Kontaminierter3 is in the Besatzungsquartier.

The Kontaminierter3 can be following. The Kontaminierter3 is not following.


Every turn:
	if the Kontaminierter3 is not following:
		if the location is the Besatzungsquartier :
			say "Ein Kontaminierter. Er verfolgt dich.";
			now the Kontaminierter3 is following;
	otherwise if the location of the Kontaminierter3 is not the location of the player:
		if the the player unlock TürLB-DGH:
			say "Der Kontaminierter ist stehen geblieben. ";
			now the Kontaminierter3 is not following;
		otherwise:
			say "Der Kontaminierter verfolgt dich!";
			move the Kontaminierter3 to the location of the player.
			

The Kontaminierter4 is a person. The Kontaminierter4 is in the Besatzungsquartier.

The Kontaminierter4 can be following. The Kontaminierter4 is not following.


Every turn:
	if the Kontaminierter4 is not following:
		if the location is the Besatzungsquartier :
			say "Ein Kontaminierter. Er verfolgt dich.";
			now the Kontaminierter4 is following;
	otherwise if the location of the Kontaminierter4 is not the location of the player:
		if the the player unlock TürLB-DGH:
			say "Der Kontaminierter ist stehen geblieben. ";
			now the Kontaminierter4 is not following;
		otherwise:
			say "Der Kontaminierter verfolgt dich!";
			move the Kontaminierter4 to the location of the player.
			
			
The Kontaminierter5 is a person. The Kontaminierter5 is in the Besatzungsquartier.

The Kontaminierter5 can be following. The Kontaminierter5 is not following.


Every turn:
	if the Kontaminierter5 is not following:
		if the location is the Besatzungsquartier :
			say "Ein Kontaminierter. Er verfolgt dich.";
			now the Kontaminierter5 is following;
	otherwise if the location of the Kontaminierter5 is not the location of the player:
		if the the player unlock TürLB-DGH:
			say "Der Kontaminierter ist stehen geblieben. ";
			now the Kontaminierter5 is not following;
		otherwise:
			say "Der Kontaminierter verfolgt dich!";
			move the Kontaminierter5 to the location of the player.


[---------------2 x Kontaminierte auf der Unteren Ebene---------------]

The Kontaminierter6 is a person. The Kontaminierter6 is in the Delta-Gewächshaus.

The Kontaminierter6 can be following. The Kontaminierter6 is not following.

Every turn:
	if the Kontaminierter6 is not following:
		if the location is the Delta-Gewächshaus :
			say "Ein Kontaminierter. Er verfolgt dich.";
			now the Kontaminierter6 is following;
	otherwise if the location of the Kontaminierter6 is not the location of the player:
		if the the player unlock TürLB-DGH:
			say "Der Kontaminierter ist stehen geblieben. ";
			now the Kontaminierter6 is not following;
		otherwise:
			say "Der Kontaminierter verfolgt dich!";
			move the Kontaminierter6 to the location of the player.



The Kontaminierter7 is a person. The Kontaminierter7 is in the Beta-Gewächshaus.

The Kontaminierter7 can be following. The Kontaminierter7 is not following.


Every turn:
	if the Kontaminierter7 is not following:
		if the location is the Beta-Gewächshaus :
			say "Ein Kontaminierter. Er verfolgt dich.";
			now the Kontaminierter7 is following;
	otherwise if the location of the Kontaminierter7 is not the location of the player:
		if the the player unlock TürLB-DGH:
			say "Der Kontaminierter ist stehen geblieben. ";
			now the Kontaminierter7 is not following;
		otherwise:
			say "Der Kontaminierter verfolgt dich!";
			move the Kontaminierter7 to the location of the player.


[------------------------2 x Kontaminierte auf der Brücke-------------------------------]
The Kontaminierter Kapitän is a person. The Kontaminierter Kapitän is in the Brücke.

The Kontaminierter Kapitän can be following. The Kontaminierter Kapitän is not following.


Every turn:
	if the Kontaminierter Kapitän is not following:
		if the location is the Brücke :
			say "Ein Kontaminierter. Er verfolgt dich.";
			now the Kontaminierter Kapitän is following;
	otherwise if the location of the Kontaminierter Kapitän is not the location of the player:
		if the the player unlock TürLB-DGH:
			say "Der Kontaminierter ist stehen geblieben. ";
			now the Kontaminierter Kapitän is not following;
		otherwise:
			say "Der Kontaminierter verfolgt dich!";
			move the Kontaminierter Kapitän to the location of the player.
			
			
			
The Kontaminierter8 is a person. The Kontaminierter8 is in the Brücke.

The Kontaminierter8 can be following. The Kontaminierter8 is not following.



Every turn:
	if the Kontaminierter8 is not following:
		if the location is the Brücke :
			say "Ein Kontaminierter. Er verfolgt dich.";
			now the Kontaminierter8 is following;
	otherwise if the location of the Kontaminierter8 is not the location of the player:
		if the the player unlock TürLB-DGH:
			say "Der Kontaminierter ist stehen geblieben. ";
			now the Kontaminierter8 is not following;
		otherwise:
			say "Der Kontaminierter verfolgt dich!";
			move the Kontaminierter8 to the location of the player.

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
                 if the notrufcounter  is 2 begin;
                 say "Du hast noch [Ocounter] Spielzüge Zeit";
                 decrease Oxygencounter by 1; 
                 end if;
end if;

