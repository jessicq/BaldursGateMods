/**************************************************************************************************
										Neera Banters (2)
**************************************************************************************************/

//Talk 1
CHAIN 
IF ~InParty("Neera")
InParty("QI#ZAK2")
See("Neera")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#Zak2NeeraTalk1","GLOBAL",0)~ THEN QI#ZAK2B QI#Zak2NeeraTalk1
@0
DO ~SetGlobal("QI#Zak2NeeraTalk1","GLOBAL",1)~
== BNEERA @1
== QI#ZAK2B @2
= @3
== BNEERA @4
== QI#ZAK2B @5
EXIT 

//Talk 2
CHAIN 
IF ~InParty("Neera")
InParty("QI#ZAK2")
See("Neera")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#Zak2NeeraTalk1","GLOBAL",1)~ THEN BNEERA QI#Zak2NeeraTalk2
@6
DO ~SetGlobal("QI#Zak2NeeraTalk1","GLOBAL",2)~
== QI#ZAK2B @7
= @8
== BNEERA @9
== QI#ZAK2B @10
= @11
== BNEERA @12
EXIT 

/**************************************************************************************************
										Dorn Banters (2)
**************************************************************************************************/

//Talk 1
CHAIN 
IF ~InParty("Dorn")
InParty("QI#ZAK2")
See("QI#ZAK2")
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#Zak2DornTalk1","GLOBAL",0)~ THEN BDORN QI#Zak2DornTalk1
@13
DO ~SetGlobal("QI#Zak2DornTalk1","GLOBAL",1)~
= @14
== QI#ZAK2B @15
= @16
= @17
== BDORN @18
EXIT

//Talk 2
CHAIN 
IF ~InParty("Dorn")
InParty("QI#ZAK2")
See("QI#ZAK2")
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#Zak2DornTalk1","GLOBAL",1)~ THEN BDORN QI#Zak2DornTalk2
@19
DO ~SetGlobal("QI#Zak2DornTalk1","GLOBAL",2)~
== QI#ZAK2B @20
= @21
== BDORN @22
== QI#ZAK2B @23
== BDORN @24
== QI#ZAK2B @25
= @26
== BDORN @27
== QI#ZAK2B @28
== BDORN @29
== QI#ZAK2B @30
== BDORN @31
== QI#ZAK2B @32
EXIT 

/**************************************************************************************************
										Rasaad Banters (2)
**************************************************************************************************/

//Talk 1
CHAIN 
IF ~InParty("Rasaad")
InParty("QI#ZAK2")
See("Rasaad")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#Zak2RasaadTalk1","GLOBAL",0)~ THEN QI#ZAK2B QI#Zak2RasaadTalk1
@33
DO ~SetGlobal("QI#Zak2RasaadTalk1","GLOBAL",1)~
== BRASAAD @34
== QI#ZAK2B @35
EXIT

//Talk 2
CHAIN 
IF ~InParty("Rasaad")
InParty("QI#ZAK2")
See("QI#ZAK2")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#Zak2RasaadTalk1","GLOBAL",1)~ THEN BRASAAD QI#Zak2RasaadTalk2
@36
DO ~SetGlobal("QI#Zak2RasaadTalk1","GLOBAL",2)~
== QI#ZAK2B @37
== BRASAAD @38
== QI#ZAK2B @39
== BRASAAD @40
= @41
= @42
== QI#ZAK2B @43
= @44
== BRASAAD @45
== QI#ZAK2B @46
EXIT 

/**************************************************************************************************
										Hexxat Banters (2)
**************************************************************************************************/

//Talk 1
CHAIN 
IF ~InParty("Hexxat")
InParty("QI#ZAK2")
See("QI#ZAK2")
!StateCheck("Hexxat",CD_STATE_NOTVALID)
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#Zak2HexxatTalk1","GLOBAL",0)~ THEN BHEXXAT QI#Zak2HexxatTalk1
@47
DO ~SetGlobal("QI#Zak2HexxatTalk1","GLOBAL",1)~
== QI#ZAK2B @48
== BHEXXAT @49
== QI#ZAK2B @50
== BHEXXAT @51
EXIT 

//Talk 2
CHAIN 
IF ~InParty("Hexxat")
InParty("QI#ZAK2")
See("Hexxat")
!StateCheck("Hexxat",CD_STATE_NOTVALID)
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#Zak2HexxatTalk1","GLOBAL",1)~ THEN QI#ZAK2B QI#Zak2HexxatTalk2
@52
DO ~SetGlobal("QI#Zak2HexxatTalk1","GLOBAL",2)~
= @53
== BHEXXAT @54
= @55
== QI#ZAK2B @56
== BHEXXAT @57
EXIT 

/**************************************************************************************************
										Wilson Banters (2)
**************************************************************************************************/

//Talk 1
CHAIN 
IF ~InParty("Wilson")
InParty("QI#ZAK2")
See("QI#ZAK2")
!StateCheck("Wilson",CD_STATE_NOTVALID)
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#Zak2WilsonTalk1","GLOBAL",0)~ THEN QI#ZAK2B QI#Zak2WilsonTalk1
@58
DO ~SetGlobal("QI#Zak2WilsonTalk1","GLOBAL",1)~
= @59
= @60
== BWILSON @61
== QI#ZAK2B @62
== BWILSON @63
== QI#ZAK2B @64
EXIT 

//Talk 2
CHAIN 
IF ~InParty("Wilson")
InParty("QI#ZAK2")
See("QI#ZAK2")
!StateCheck("Wilson",CD_STATE_NOTVALID)
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#Zak2WilsonTalk1","GLOBAL",1)~ THEN QI#ZAK2B QI#Zak2WilsonTalk2
@65
DO ~SetGlobal("QI#Zak2WilsonTalk1","GLOBAL",2)~
== BWILSON @66
== QI#ZAK2B @67
== BWILSON @68
== QI#ZAK2B @69
== BWILSON @70
== QI#ZAK2B @71
EXIT 