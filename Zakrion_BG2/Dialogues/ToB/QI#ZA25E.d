/**************************************************************************************************
										Hexxat Banters (1)
**************************************************************************************************/

//Talk 1
CHAIN 
IF ~InParty("Hexxat")
InParty("QI#ZAK2")
See("QI#ZAK2")
!StateCheck("Hexxat",CD_STATE_NOTVALID)
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#Zak2HexxatToBTalk","GLOBAL",0)~ THEN BHEXXA25 QI#Zak2HexxatToBTalk1
@0
DO ~SetGlobal("QI#Zak2HexxatToBTalk","GLOBAL",1)~
= @1
== QI#ZA25B @2
== BHEXXA25 @3
EXIT 

/**************************************************************************************************
										Neera Banters (1)
**************************************************************************************************/

//Talk 1
CHAIN 
IF ~InParty("Neera")
InParty("QI#ZAK2")
See("QI#ZAK2")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#Zak2NeeraToBTalk","GLOBAL",0)~ THEN BNEERA25 QI#Zak2NeeraToBTalk1
@4
DO ~SetGlobal("QI#Zak2NeeraToBTalk","GLOBAL",1)~
== QI#ZA25B @5
= @6
== BNEERA25 @7
== QI#ZA25B @8
== BNEERA25 @9
EXIT 

/**************************************************************************************************
										Rasaad Banters (1)
**************************************************************************************************/

//Talk 1
CHAIN 
IF ~InParty("Rasaad")
InParty("QI#ZAK2")
See("QI#ZAK2")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#Zak2RasaadToBTalk","GLOBAL",0)~ THEN BRASAA25 QI#Zak2RasaadToBTalk1
@10
DO ~SetGlobal("QI#Zak2RasaadToBTalk","GLOBAL",1)~ 
== QI#ZA25B @11
EXIT 

/**************************************************************************************************
										Dorn Banters (1)
**************************************************************************************************/

//Talk 1
CHAIN 
IF ~InParty("Dorn")
InParty("QI#ZAK2")
See("QI#ZAK2")
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#Zak2DornTalk1","GLOBAL",2)
Global("QI#Zak2DornToBTalk","GLOBAL",0)~ THEN BDORN25 QI#Zak2DornToBTalk1
@12
DO ~SetGlobal("QI#Zak2DornToBTalk","GLOBAL",1)~
== QI#ZA25B @13
== BDORN25 @14
== QI#ZA25B @15
== BDORN25 @16
== QI#ZA25B @17
EXIT 

/**************************************************************************************************
										Wilson Banters (1)
**************************************************************************************************/

//Talk 1
CHAIN 
IF ~InParty("Wilson")
InParty("QI#ZAK2")
See("QI#ZAK2")
!StateCheck("Wilson",CD_STATE_NOTVALID)
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#Zak2WilsonToBTalk","GLOBAL",0)~ THEN QI#ZA25B QI#Zak2WilsonToBTalk1
@18
DO ~SetGlobal("QI#Zak2WilsonToBTalk","GLOBAL",1)~
= @19
== BWILSO25 @20
== QI#ZA25B @21
== BWILSO25 @22
EXIT
