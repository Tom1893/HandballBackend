CREATE TABLE "Schiedsrichter" (
	"id" int NOT NULL,
	"vorname" varchar(255) NOT NULL,
	"nachname" varchar(60) NOT NULL,
	"geb.date" DATE NOT NULL,
	"stadt" int,
	"straße/nr" varchar(255),
	"plz" int,
	CONSTRAINT "Schiedsrichter_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Spiel" (
	"id" int NOT NULL,
	"datum" DATE,
	"mannschaft1" int NOT NULL,
	"mannschaft2" int NOT NULL,
	"hz-Ergebnis" int,
	"ergebnis" varchar(255),
	"schiedsrichter1" int NOT NULL,
	"schiedsrichter2" int NOT NULL,
	"schiedsrichter3" int,
	"bewertungsbogen" int,
	"beobachter" int,
	"m/f/j" int,
	"liga" int,
	"anpfiff1" TIMESTAMP NOT NULL,
	"anpfiff2" TIMESTAMP NOT NULL,
	"abpfiff1" TIMESTAMP NOT NULL,
	"abpfiff2" TIMESTAMP NOT NULL,
	CONSTRAINT "Spiel_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Mannschaft" (
	"id" int NOT NULL,
	"name" int NOT NULL,
	CONSTRAINT "Mannschaft_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);

CREATE TABLE "Mannschaft2" (
	"id" int NOT NULL,
	"name" int NOT NULL,
	CONSTRAINT "Mannschaft2_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);

CREATE TABLE "Bewertungsbogen" (
	"id" int NOT NULL,
	"vorderseite" int NOT NULL,
	"rueckseite" int NOT NULL,
	"live" int NOT NULL,
	CONSTRAINT "Bewertungsbogen_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Stadt" (
	"id" int(60) NOT NULL,
	"name" varchar(60) NOT NULL,
	CONSTRAINT "Stadt_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Vorderseite" (
	"id" int NOT NULL,
	"spielgedanke" int NOT NULL,
	"stürmerfoul" int NOT NULL,
	"progressivität" int NOT NULL,
	"ball" int NOT NULL,
	"Torraum" int NOT NULL,
	"siebenmeter" int NOT NULL,
	"passiv" int NOT NULL,
	"more" int NOT NULL,
	"persSR" int NOT NULL,
	"zusammenSR" int NOT NULL,
	"einfluss/kommu" int NOT NULL,
	"gesamt" int NOT NULL,
	CONSTRAINT "Vorderseite_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Rueckseite" (
	"id" int NOT NULL,
	"challenges" varchar(255),
	"achiev.ofgoals" varchar(255),
	"more" varchar(255),
	"great-tech" varchar(255),
	"great-pers" varchar(255),
	"bad-pers" varchar(255),
	"bad-tech" varchar(255),
	CONSTRAINT "Rueckseite_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Beocbachter" (
	"id" int NOT NULL,
	"vorname" varchar(255) NOT NULL,
	"nachname" varchar(60) NOT NULL,
	"geb.date" DATE,
	"stadt" int,
	"straße/nr" varchar(255),
	"plz" int,
	CONSTRAINT "Beocbachter_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Liga" (
	"id" int NOT NULL,
	"name" varchar(255) NOT NULL,
	CONSTRAINT "Liga_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Geschlecht/Jugend" (
	"id" int NOT NULL,
	"m/f/j" varchar(255) NOT NULL,
	CONSTRAINT "Geschlecht/Jugend_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Live" (
	"id" int NOT NULL,
	"time" TIMESTAMP NOT NULL,
	"fehler" character(1),
	CONSTRAINT "Live_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "spielgedanke" (
	"id" bigint NOT NULL,
	"points" int,
	"spielverstaendnis" BOOLEAN,
	"Entsch.geg.Spiel" BOOLEAN,
	"Vorteil" BOOLEAN,
	"Vorteil/Härte" BOOLEAN,
	"verstehen/lesen" BOOLEAN,
	"PfiffSpielaufbau" BOOLEAN,
	"VorteilSchritte" BOOLEAN,
	"VorteilFairness" BOOLEAN,
	"PfiffTorwurf" BOOLEAN,
	"VorteilÜber" BOOLEAN,
	"schnellerAnwurf" BOOLEAN,
	CONSTRAINT "spielgedanke_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "stürmerfoul" (
	"id" bigint NOT NULL,
	"points" int NOT NULL,
	"sfMitBall" BOOLEAN NOT NULL,
	"sFOhneBall" BOOLEAN NOT NULL,
	"ProvoziertSF" BOOLEAN NOT NULL,
	"anrennen/springen" BOOLEAN NOT NULL,
	"anrennenAbspiel" BOOLEAN NOT NULL,
	"SFZeitgewinn" BOOLEAN NOT NULL,
	"einklemmen" BOOLEAN NOT NULL,
	"amTorraum" BOOLEAN NOT NULL,
	CONSTRAINT "stürmerfoul_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Progressivität" (
	"id" bigint NOT NULL,
	"points" int,
	"progrAufbau" BOOLEAN,
	"progrNiveau" BOOLEAN NOT NULL,
	"abstand" BOOLEAN,
	"progrSchwer" BOOLEAN,
	"disquali" BOOLEAN,
	"progrVorgabe" BOOLEAN,
	"niedrig/großzuegig" BOOLEAN,
	"abstandFreiwurf" BOOLEAN,
	"trikotreissen" BOOLEAN,
	"disqualiFehlt" BOOLEAN,
	"einhaltenLinie" BOOLEAN,
	"hoch/ueberzogen" BOOLEAN,
	"vorteilOhneStrafe" BOOLEAN,
	"ringenAmKreis" BOOLEAN,
	"disqualiUnberechtigt" BOOLEAN,
	CONSTRAINT "Progressivität_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "SpielenDesBalls" (
	"id" bigint NOT NULL,
	"points" int,
	"SchritteLinie" BOOLEAN,
	"schritteAnzahl" BOOLEAN,
	"fußfehler" BOOLEAN,
	"andereFehlerBall" BOOLEAN,
	"schwankLinie" BOOLEAN,
	"großzuegig" BOOLEAN,
	"fuß" BOOLEAN,
	"prellfehler" BOOLEAN,
	"zuKleinl" BOOLEAN,
	"fußZurAbw" BOOLEAN,
	"zeitfehler" BOOLEAN,
	CONSTRAINT "SpielenDesBalls_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "BetretenTorraum" (
	"id" bigint NOT NULL,
	"points" int,
	"angreiferTorraum" BOOLEAN,
	"angreiferTorerfolg" BOOLEAN,
	"abwehrTorraum" BOOLEAN,
	"hinterlaufenTR" BOOLEAN,
	"be/uebertreten" BOOLEAN,
	"abwehrarbeitTR" BOOLEAN,
	"abstehen" BOOLEAN,
	"hinterlaufenTR" BOOLEAN,
	CONSTRAINT "BetretenTorraum_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Siebenmeter" (
	"id" bigint NOT NULL,
	"points" int,
	"7mEntsch" BOOLEAN,
	"7mNiveau" BOOLEAN,
	"7mTor" BOOLEAN,
	"unklareLinie" BOOLEAN,
	"zuViel" BOOLEAN,
	"behinderungVöll" BOOLEAN,
	"freienWerfers" BOOLEAN,
	"zuwenig" BOOLEAN,
	"betretenTorraum" BOOLEAN,
	"gegenWerfer" BOOLEAN,
	CONSTRAINT "Siebenmeter_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "PassivesSpiel" (
	"id" bigint NOT NULL,
	"points" int,
	"passiveLinie" BOOLEAN,
	"einsatzHand" BOOLEAN,
	"entscheidung" BOOLEAN,
	"schwankend" BOOLEAN,
	"hzZuFrueh" BOOLEAN,
	"entscheidungZuFrueh" BOOLEAN,
	"hzNicht" BOOLEAN,
	"entschNicht" BOOLEAN,
	CONSTRAINT "PassivesSpiel_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "WeitereRegeln" (
	"id" bigint NOT NULL,
	"points" int,
	"spielzeit" BOOLEAN,
	"ordnungsprinzip" BOOLEAN,
	"wurfentscheidung" BOOLEAN,
	"wurfausfuehrung" BOOLEAN,
	"timOut" BOOLEAN,
	"aufstellungsform" BOOLEAN,
	"falschrWurf" BOOLEAN,
	"fWLinieBetreten" BOOLEAN,
	"puenktSpielbeginn" BOOLEAN,
	"falscherOrt" BOOLEAN,
	"imLauf/Sprung" BOOLEAN,
	CONSTRAINT "WeitereRegeln_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "PersDerSR" (
	"id" bigint NOT NULL,
	"points" int,
	"diePersonSR" BOOLEAN,
	"auftretenSR" BOOLEAN,
	"Bereitschaft" BOOLEAN,
	"koerpersprache" BOOLEAN,
	"unnatuerlich" BOOLEAN,
	"zaghaft/unssicher" BOOLEAN,
	"mangelndeAthletik" BOOLEAN,
	"keinAuftreten" BOOLEAN,
	"nervoes" BOOLEAN,
	"beeinflussbar" BOOLEAN,
	"nachKonzentration" BOOLEAN,
	"schuechtern" BOOLEAN,
	CONSTRAINT "PersDerSR_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "ZusammenarbeitDerSR" (
	"id" bigint NOT NULL,
	"points" int,
	"teamarbeit" BOOLEAN,
	"stellungsspiel" BOOLEAN,
	"aufgabenteilung" BOOLEAN,
	"zusammenarbeitSR" BOOLEAN,
	"keinTeam" BOOLEAN,
	"ungBeobPosition" BOOLEAN,
	"aufgabenbereiche" BOOLEAN,
	"keineZeichen" BOOLEAN,
	"dominanzSR" BOOLEAN,
	"mangelAbstimmung" BOOLEAN,
	"fSR/TSR" BOOLEAN,
	"weiterAbstimmProbl" BOOLEAN,
	CONSTRAINT "ZusammenarbeitDerSR_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Einflussnahme/Kommunikation" (
	"id" bigint NOT NULL,
	"points" int,
	"verbal" BOOLEAN,
	"optSignale" BOOLEAN,
	"pfiffe" BOOLEAN,
	"bankverhalten" BOOLEAN,
	"gestik" BOOLEAN,
	"keineErmahnung" BOOLEAN,
	"keineHandzeichen" BOOLEAN,
	"monoton" BOOLEAN,
	"bankreglement" BOOLEAN,
	"theatralisch" BOOLEAN,
	"zuvieleErmahnung" BOOLEAN,
	"unverHandzeichen" BOOLEAN,
	"leise" BOOLEAN,
	"SRprovozieren" BOOLEAN,
	"gestikulieren" BOOLEAN,
	CONSTRAINT "Einflussnahme/Kommunikation_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "SpielleitungGesamt" (
	"id" bigint NOT NULL,
	"points" int,
	"gesamtlinieSR" BOOLEAN,
	"unterschiedHalbz" BOOLEAN,
	"neutralität" BOOLEAN,
	"großzuegig" BOOLEAN,
	"1Halbzeitschwaecher" BOOLEAN,
	"gesamtSpielzeit" BOOLEAN,
	"kleinlich" BOOLEAN,
	"2Halbzeitschwaecher" BOOLEAN,
	"zumSpielabschluss" BOOLEAN,
	CONSTRAINT "SpielleitungGesamt_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



ALTER TABLE "Schiedsrichter" ADD CONSTRAINT "Schiedsrichter_fk0" FOREIGN KEY ("stadt") REFERENCES "Stadt"("id");

ALTER TABLE "Spiel" ADD CONSTRAINT "Spiel_fk0" FOREIGN KEY ("mannschaft1") REFERENCES "Mannschaft"("id");
ALTER TABLE "Spiel" ADD CONSTRAINT "Spiel_fk1" FOREIGN KEY ("mannschaft2") REFERENCES "Mannschaft2"("id");
ALTER TABLE "Spiel" ADD CONSTRAINT "Spiel_fk2" FOREIGN KEY ("schiedsrichter1") REFERENCES "Schiedsrichter"("id");
ALTER TABLE "Spiel" ADD CONSTRAINT "Spiel_fk3" FOREIGN KEY ("schiedsrichter2") REFERENCES "Schiedsrichter"("id");
ALTER TABLE "Spiel" ADD CONSTRAINT "Spiel_fk4" FOREIGN KEY ("schiedsrichter3") REFERENCES "Schiedsrichter"("id");
ALTER TABLE "Spiel" ADD CONSTRAINT "Spiel_fk5" FOREIGN KEY ("bewertungsbogen") REFERENCES "Bewertungsbogen"("id");
ALTER TABLE "Spiel" ADD CONSTRAINT "Spiel_fk6" FOREIGN KEY ("beobachter") REFERENCES "Beocbachter"("id");
ALTER TABLE "Spiel" ADD CONSTRAINT "Spiel_fk7" FOREIGN KEY ("m/f/j") REFERENCES "Geschlecht/Jugend"("id");
ALTER TABLE "Spiel" ADD CONSTRAINT "Spiel_fk8" FOREIGN KEY ("liga") REFERENCES "Liga"("id");


ALTER TABLE "Bewertungsbogen" ADD CONSTRAINT "Bewertungsbogen_fk0" FOREIGN KEY ("vorderseite") REFERENCES "Vorderseite"("id");
ALTER TABLE "Bewertungsbogen" ADD CONSTRAINT "Bewertungsbogen_fk1" FOREIGN KEY ("rueckseite") REFERENCES "Rueckseite"("id");
ALTER TABLE "Bewertungsbogen" ADD CONSTRAINT "Bewertungsbogen_fk2" FOREIGN KEY ("live") REFERENCES "Live"("id");


ALTER TABLE "Vorderseite" ADD CONSTRAINT "Vorderseite_fk0" FOREIGN KEY ("spielgedanke") REFERENCES "spielgedanke"("id");
ALTER TABLE "Vorderseite" ADD CONSTRAINT "Vorderseite_fk1" FOREIGN KEY ("stürmerfoul") REFERENCES "stürmerfoul"("id");
ALTER TABLE "Vorderseite" ADD CONSTRAINT "Vorderseite_fk2" FOREIGN KEY ("progressivität") REFERENCES "Progressivität"("id");
ALTER TABLE "Vorderseite" ADD CONSTRAINT "Vorderseite_fk3" FOREIGN KEY ("ball") REFERENCES "SpielenDesBalls"("id");
ALTER TABLE "Vorderseite" ADD CONSTRAINT "Vorderseite_fk4" FOREIGN KEY ("Torraum") REFERENCES "BetretenTorraum"("id");
ALTER TABLE "Vorderseite" ADD CONSTRAINT "Vorderseite_fk5" FOREIGN KEY ("siebenmeter") REFERENCES "Siebenmeter"("id");
ALTER TABLE "Vorderseite" ADD CONSTRAINT "Vorderseite_fk6" FOREIGN KEY ("passiv") REFERENCES "PassivesSpiel"("id");
ALTER TABLE "Vorderseite" ADD CONSTRAINT "Vorderseite_fk7" FOREIGN KEY ("more") REFERENCES "WeitereRegeln"("id");
ALTER TABLE "Vorderseite" ADD CONSTRAINT "Vorderseite_fk8" FOREIGN KEY ("persSR") REFERENCES "PersDerSR"("id");
ALTER TABLE "Vorderseite" ADD CONSTRAINT "Vorderseite_fk9" FOREIGN KEY ("zusammenSR") REFERENCES "ZusammenarbeitDerSR"("id");
ALTER TABLE "Vorderseite" ADD CONSTRAINT "Vorderseite_fk10" FOREIGN KEY ("einfluss/kommu") REFERENCES "Einflussnahme/Kommunikation"("id");
ALTER TABLE "Vorderseite" ADD CONSTRAINT "Vorderseite_fk11" FOREIGN KEY ("gesamt") REFERENCES "SpielleitungGesamt"("id");


ALTER TABLE "Beocbachter" ADD CONSTRAINT "Beocbachter_fk0" FOREIGN KEY ("stadt") REFERENCES "Stadt"("id");
















