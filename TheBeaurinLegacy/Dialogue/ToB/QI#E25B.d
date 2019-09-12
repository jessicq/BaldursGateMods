BEGIN QI#E25B

//Aerie
CHAIN
IF ~InParty("QI#Ela")
InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("QI#Ela",CD_STATE_NOTVALID)
Global("AerieRomanceActive","GLOBAL",2)
CombatCounter(0)
Global("QI#ElaAerieToB1","GLOBAL",0)~ THEN QI#E25B QI#ElaAerieToB1
@0
DO ~SetGlobal("QI#ElaAerieToB1","GLOBAL",1)~
== BAERIE25 @1
== QI#E25B @2
EXIT

//Minsc
CHAIN 
IF ~InParty("Minsc")
InParty("QI#Ela")
See("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("QI#Ela",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#ElaMinscToB1","GLOBAL",0)~ THEN QI#E25B QI#ElaMinscToB1
@3
DO ~SetGlobal("QI#ElaMinscToB1","GLOBAL",1)~
== BMINSC25 @4
== QI#E25B @5
== BMINSC25 @6
== QI#E25B @7
== QI#E25B @8
EXIT

//Jaheira
CHAIN
IF ~InParty("QI#Ela")
InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("QI#Ela",CD_STATE_NOTVALID)
Global("JaheiraRomanceActive","GLOBAL",2)
CombatCounter(0)
Global("QI#ElaJaheiraToB1","GLOBAL",0)~ THEN QI#E25B QI#ElaJaheiraToB1
@0
DO ~SetGlobal("QI#ElaJaheiraToB1","GLOBAL",1)~
== BJAHEI25 @9
== QI#E25B @10
EXIT

//Aerie
CHAIN
IF ~InParty("QI#Ela")
See("QI#Ela")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("QI#Ela",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#ElaAerieToB2","GLOBAL",0)~ THEN BAERIE25 QI#ElaAerieToB2
@11
DO ~SetGlobal("QI#ElaAerieToB2","GLOBAL",1)~
== BAERIE25 @12
== QI#E25B @13
== QI#E25B @14
== BAERIE25 @15
== QI#E25B @16
== QI#E25B @17
EXIT 

//Haer'Dalis
CHAIN
IF ~InParty("QI#Ela")
See("QI#Ela")
!StateCheck("HaerDalis",CD_STATE_NOTVALID)
!StateCheck("QI#Ela",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#ElaHaerDalisToB1","GLOBAL",0)~ THEN BHAERD25 QI#ElaHaerDalisToB1
@18
DO ~SetGlobal("QI#ElaHaerDalisToB1","GLOBAL",1)~
== QI#E25B @19
== QI#E25B @20
== BHAERD25 @21
EXIT

//Anomen
CHAIN
IF ~InParty("QI#Ela")
InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("QI#Ela",CD_STATE_NOTVALID)
Global("AnomenRomanceActive","GLOBAL",2)
CombatCounter(0)
Global("QI#ElaAnomenToB1","GLOBAL",0)~ THEN QI#E25B QI#ElaAnomenToB1
@0
DO ~SetGlobal("QI#ElaAnomenToB1","GLOBAL",1)~
== BANOME25 @22
== BANOME25 @23
== QI#E25B @24
== QI#E25B @25
EXIT

//Edwin
CHAIN
IF ~InParty("QI#Ela")
InParty("Edwin")
See("Edwin")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("QI#Ela",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#ElaEdwinToB1","GLOBAL",0)~ THEN QI#E25B QI#ElaEdwinToB1
@26
DO ~SetGlobal("QI#ElaEdwinToB1","GLOBAL",1)~
== BEDWIN25 @27
== QI#E25B @28
== QI#E25B @29
== QI#E25B @30
EXIT

//Jan
CHAIN
IF ~InParty("QI#Ela")
See("QI#Ela")
!StateCheck("Jan",CD_STATE_NOTVALID)
!StateCheck("QI#Ela",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#ElaJanToB1","GLOBAL",0)~ THEN BJAN25 QI#ElaJanToB1
@31
DO ~SetGlobal("QI#ElaJanToB1","GLOBAL",1)~
== QI#E25B @32
== BJAN25 @33
== BJAN25 @34
== QI#E25B @35
== BJAN25 @36
== QI#E25B @37
== BJAN25 @38
== QI#E25B @39
== QI#E25B @40
EXIT

//Nalia
CHAIN
IF ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("QI#Ela",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#ElaNaliaToB1","GLOBAL",0)~ THEN QI#E25B QI#ElaNaliaToB1
@41
DO ~SetGlobal("QI#ElaNaliaToB1","GLOBAL",1)~
== BNALIA25 @42
== QI#E25B @43
== BNALIA25 @44
== QI#E25B @45
EXIT

//Imoen
CHAIN
IF ~InParty("QI#Ela")
See("QI#Ela")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("QI#Ela",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#ElaImoenToB1","GLOBAL",0)~ THEN BIMOEN25 QI#ElaImoenToB1
@46
DO ~SetGlobal("QI#ElaImoenToB1","GLOBAL",1)~
== QI#E25B @47
== BIMOEN25 @48
== QI#E25B @49
== BIMOEN25 @50
== QI#E25B @51
== BIMOEN25 @52
== BIMOEN25 @53
== QI#E25B @40
EXIT

//Viconia
CHAIN
IF ~InParty("QI#Ela")
InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("QI#Ela",CD_STATE_NOTVALID)
Global("ViconiaRomanceActive","GLOBAL",2)
CombatCounter(0)
Global("QI#ElaViconia1","GLOBAL",0)~ THEN QI#E25B QI#ElaViconiaToB1
@0
DO ~SetGlobal("QI#ElaViconiaToB1","GLOBAL",1)~
== BVICON25 @54
== QI#E25B @55
== QI#E25B @56
EXIT

//Keldorn
CHAIN 
IF ~InParty("QI#Ela")
InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("QI#Ela",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#ElaKeldornToB1","GLOBAL",0)~ THEN QI#E25B QI#ElaKeldornToB1
@57
DO ~SetGlobal("QI#ElaKeldornToB1","GLOBAL",1)~
== BKELDO25 @58
== BKELDO25 @59
== QI#E25B @60
EXIT

//Cernd
CHAIN 
IF ~InParty("QI#Ela")
InParty("Cernd")
See("Cernd")
!StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("QI#Ela",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#ElaCerndToB1","GLOBAL",0)~ THEN QI#E25B QI#ElaCerndToB1
@61
DO ~SetGlobal("QI#ElaCerndToB1","GLOBAL",1)~
== BCERND25 @62
== QI#E25B @63
== QI#E25B @64
== BCERND25 @65
EXIT

//Mazzy
CHAIN 
IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("QI#Ela",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#ElaMazzyToB1","GLOBAL",0)~ THEN QI#E25B QI#ElaMazzyToB1
@66
DO ~SetGlobal("QI#ElaMazzyToB1","GLOBAL",1)~
== BMAZZY25 @67
== QI#E25B @68
== QI#E25B @69
EXIT

//Korgan
CHAIN
IF ~InParty("QI#Ela")
See("QI#Ela")
!StateCheck("Korgan",CD_STATE_NOTVALID)
!StateCheck("QI#Ela",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#ElaKorganToB1","GLOBAL",0)~ THEN BKORGA25 QI#ElaKorganToB1
@70
DO ~SetGlobal("QI#ElaKorganToB1","GLOBAL",1)~
== QI#E25B @71
== BKORGA25 @72
EXIT

//Valygar
CHAIN 
IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("QI#Ela",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#ElaValygarToB1","GLOBAL",0)~ THEN QI#E25B QI#ElaValygarToB1
@73
DO ~SetGlobal("QI#ElaValygarToB1","GLOBAL",1)~
== BVALYG25 @74
== QI#E25B @75
== QI#E25B @76
== BVALYG25 @77
EXIT

//Sarevok
CHAIN
IF ~InParty("QI#Ela")
InParty("Sarevok")
See("Sarevok")
!StateCheck("Sarevok",CD_STATE_NOTVALID)
!StateCheck("QI#Ela",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#MiSarevokToB1","GLOBAL",0)~ THEN QI#E25B QI#MiSarevokToB1
@78
DO ~SetGlobal("QI#MiSarevokToB1","GLOBAL",1)~
== BSAREV25 @79
== BSAREV25 @80
== QI#E25B @81
== BSAREV25 @82
== QI#E25B @83
== QI#E25B @84
EXIT
