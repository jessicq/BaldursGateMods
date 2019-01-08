BEGIN QI#ELAB

//Haer'Dalis
CHAIN
IF ~InParty("QI#Ela")
See("QI#Ela")
!StateCheck("HaerDalis",CD_STATE_NOTVALID)
!StateCheck("QI#Ela",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#ElaHaerDalis1","GLOBAL",0)~ THEN BHAERDA QI#ElaHaerDalis1
@0
DO ~SetGlobal("QI#ElaHaerDalis1","GLOBAL",1)~
== QI#ELAB @1
== BHAERDA @2
== QI#ELAB @3
== BHAERDA @4
== QI#ELAB @5
== BHAERDA @6
== QI#ELAB @7
EXIT

//Anomen
CHAIN
IF ~InParty("QI#Ela")
See("QI#Ela")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("QI#Ela",CD_STATE_NOTVALID)
!Global("AnomenRomanceActive","GLOBAL",2)
!Global("AnomenRomanceActive","GLOBAL",1)
CombatCounter(0)
Global("QI#ElaAnomen1","GLOBAL",0)~ THEN BANOMEN QI#ElaAnomen1
@8
DO ~SetGlobal("QI#ElaAnomen1","GLOBAL",1)~
== QI#ELAB IF ~Global("AnomenIsKnight","GLOBAL",1)~ THEN @9
== QI#ELAB IF ~!Global("AnomenIsKnight","GLOBAL",1)~ THEN @10
== QI#ELAB @11
== BANOMEN @12
== QI#ELAB @13
== QI#ELAB @14
EXIT

//Aerie
CHAIN
IF ~InParty("QI#Ela")
See("QI#Ela")
!StateCheck("QI#Ela",CD_STATE_NOTVALID)
!StateCheck("Aerie",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#ElaAerie1","GLOBAL",0)~ THEN BAERIE QI#ElaAerie1
@15
DO ~SetGlobal("QI#ElaAerie1","GLOBAL",1)~
== QI#ELAB @16
== BAERIE @17
== QI#ELAB @18
== QI#ELAB @19
EXIT

//Edwin - Woman
CHAIN
IF ~InParty("Edwin")
See("Edwin")
Gender("Edwin",FEMALE)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("QI#Ela",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#ElaEdwin1","GLOBAL",0)~ THEN QI#ELAB QI#ElaEdwin1
@20
DO ~SetGlobal("QI#ElaEdwin1","GLOBAL",1)~
== BEDWIN @21
== QI#ELAB @22
== BEDWIN @23
== QI#ELAB @24
== BEDWIN @25
EXIT

//Edwin - Doesn't Care
CHAIN
IF ~InParty("QI#Ela")
See("QI#Ela")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("QI#Ela",CD_STATE_NOTVALID)
GlobalLT("QI#MiEdwinRomanceSoA","GLOBAL",14)
CombatCounter(0)
Global("QI#ElaEdwin2","GLOBAL",0)~ THEN BEDWIN QI#ElaEdwin2
@26
DO ~SetGlobal("QI#ElaEdwin2","GLOBAL",1)~
== QI#ELAB @27
== BEDWIN @28
== QI#ELAB @29
== BEDWIN @30
== QI#ELAB @31
== QI#ELAB @32
== QI#ELAB @33
== BEDWIN @34
EXIT

//Edwin - Starting to Care/Cares
CHAIN
IF ~InParty("QI#Ela")
See("QI#Ela")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("QI#Ela",CD_STATE_NOTVALID)
GlobalGT("QI#MiEdwinRomanceSoA","GLOBAL",14)
CombatCounter(0)
Global("QI#ElaEdwin3","GLOBAL",0)~ THEN BEDWIN QI#ElaEdwin3
@35
DO ~SetGlobal("QI#ElaEdwin3","GLOBAL",1)~
== QI#ELAB @36
== QI#ELAB @37
== BEDWIN @38
== QI#ELAB @39
== BEDWIN @40
== QI#ELAB @41
== BEDWIN @42
EXIT

//Jan
CHAIN
IF ~InParty("QI#Ela")
See("QI#Ela")
!StateCheck("Jan",CD_STATE_NOTVALID)
!StateCheck("QI#Ela",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#ElaJan1","GLOBAL",0)~ THEN BJAN QI#ElaJan1
@43
DO ~SetGlobal("QI#ElaJan1","GLOBAL",1)~
== QI#ELAB @44
== BJAN @45
== QI#ELAB @46
== BJAN @47
EXIT 

//Nalia
CHAIN
IF ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("QI#Ela",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#ElaNalia1","GLOBAL",0)~ THEN QI#ELAB QI#ElaNalia1
@48
DO ~SetGlobal("QI#ElaNalia1","GLOBAL",1)~
== BNALIA @49
== QI#ELAB @50
== QI#ELAB @51
== BNALIA @52
== QI#ELAB @53
EXIT

//Jaheira
CHAIN
IF ~InParty("QI#Ela")
See("QI#Ela")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("QI#Ela",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#ElaJaheira1","GLOBAL",0)~ THEN BJAHEIR QI#ElaJaheira1
@54
DO ~SetGlobal("QI#ElaJaheira1","GLOBAL",1)~
== QI#ELAB @55
== BJAHEIR @56
== BJAHEIR @57
== QI#ELAB @58
== QI#ELAB @59
EXIT

//Minsc
CHAIN
IF ~InParty("QI#Ela")
See("QI#Ela")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("QI#Ela",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#ElaMinsc1","GLOBAL",0)~ THEN BMINSC QI#ElaMinsc1
@60
DO ~SetGlobal("QI#ElaMinsc1","GLOBAL",1)~
== QI#ELAB @61
== BMINSC @62
== QI#ELAB @63
EXIT

//Imoen
CHAIN
IF ~InParty("QI#Ela")
See("QI#Ela")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("QI#Ela",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#ElaImoen1","GLOBAL",0)~ THEN IMOEN2J QI#ElaImoen1
@64
DO ~SetGlobal("QI#ElaImoen1","GLOBAL",1)~
== QI#ELAB @65
== IMOEN2J @66
== QI#ELAB @67
== IMOEN2J @68
== QI#ELAB @69
== IMOEN2J @70
== QI#ELAB @71
EXIT

//Viconia
CHAIN
IF ~InParty("QI#Ela")
See("QI#Ela")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("QI#Ela",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#ElaViconia1","GLOBAL",0)~ THEN BVICONI QI#ElaViconia1
@72
DO ~SetGlobal("QI#ElaViconia1","GLOBAL",1)~
== QI#ELAB @73
== BVICONI @74
== BVICONI @75
== QI#ELAB @76
EXIT

//Keldorn
CHAIN 
IF ~InParty("QI#Ela")
See("QI#Ela")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("QI#Ela",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#ElaKeldorn1","GLOBAL",0)~ THEN BKELDOR QI#ElaKeldorn1
@77
DO ~SetGlobal("QI#ElaKeldorn1","GLOBAL",1)~
== QI#ELAB @78
== BKELDOR @79
== QI#ELAB @80
== BKELDOR @81
== QI#ELAB @82
== QI#ELAB @83
== BKELDOR @84
== QI#ELAB @85
EXIT

//Cernd
CHAIN 
IF ~InParty("QI#Ela")
See("QI#Ela")
!StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("QI#Ela",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#ElaCernd1","GLOBAL",0)~ THEN BCERND QI#ElaCernd1
@86
DO ~SetGlobal("QI#ElaCernd1","GLOBAL",1)~
== QI#ELAB @87
== BCERND @88
== QI#ELAB @89
== BCERND @90
== QI#ELAB @91
== QI#ELAB @92
EXIT

//Mazzy
CHAIN 
IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("QI#Ela",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#ElaMazzy1","GLOBAL",0)~ THEN QI#ELAB QI#ElaMazzy1
@93
DO ~SetGlobal("QI#ElaMazzy1","GLOBAL",1)~
== BMAZZY @94
== QI#ELAB @95
== BMAZZY @96
== QI#ELAB @97
EXIT

//Korgan
CHAIN
IF ~InParty("QI#Ela")
See("QI#Ela")
!StateCheck("Korgan",CD_STATE_NOTVALID)
!StateCheck("QI#Ela",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#ElaKorgan1","GLOBAL",0)~ THEN BKORGAN QI#ElaKorgan1
@98
DO ~SetGlobal("QI#ElaKorgan1","GLOBAL",1)~
== QI#ELAB @99
== BKORGAN @100
== BKORGAN @101
== QI#ELAB @102
== BKORGAN @103
== QI#ELAB @104
== BKORGAN @105
EXIT

//Valygar
CHAIN 
IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("QI#Ela",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#ElaValygar1","GLOBAL",0)~ THEN QI#ELAB QI#ElaValygar1
@106
DO ~SetGlobal("QI#ElaValygar1","GLOBAL",1)~
== BVALYGA @107
== QI#ELAB @108
== BVALYGA @109
== QI#ELAB @110
== BVALYGA @111
== QI#ELAB @112
== BVALYGA @113
== BVALYGA @114
== QI#ELAB @115
EXIT

