// BG2:SoA //

// Neera 
CHAIN
IF ~InParty("Neera")
See("Neera")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
Global("QI#MiNeera1","GLOBAL",0)~ THEN QI#MIB QI#MiNeera1
@0
DO ~SetGlobal("QI#MiNeera1","GLOBAL",1)~
== BNEERA @1
== QI#MIB @2
== BNEERA @3
== QI#MIB @4
== BNEERA @5
== QI#MIB @6
EXIT

CHAIN
IF ~InParty("Neera")
See("Neera")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
Global("QI#MiNeera2","GLOBAL",0)~ THEN BNEERA QI#MiNeera2
@7
DO ~SetGlobal("QI#MiNeera2","GLOBAL",1)~
== QI#MIB @8
== BNEERA @9
== QI#MIB @10
== BNEERA @11
== QI#MIB @12
== BNEERA @13
== QI#MIB @14
EXIT

CHAIN
IF ~InParty("Neera")
InParty("Edwin")
See("Neera")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
!StateCheck("Edwin",CD_STATE_NOTVALID)
GlobalGT("QI#MiEdwinRomanceSoA","GLOBAL",16)
Global("QI#MiNeera3","GLOBAL",0)~ THEN BNEERA QI#MiNeera3
@15
DO ~SetGlobal("QI#MiNeera3","GLOBAL",1)~
== BNEERA @16
== QI#MIB @17
== BNEERA @18
== BEDWIN @19
== BNEERA @20
EXIT

// Dorn
CHAIN
IF ~InParty("Dorn")
See("Dorn")
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
Global("QI#MiDorn1","GLOBAL",0)~ THEN QI#MIB QI#MiDorn1
@21
DO ~SetGlobal("QI#MiDorn1","GLOBAL",1)~
== BDORN @22
== QI#MIB @48
== BDORN @23
EXIT

CHAIN
IF ~InParty("Dorn")
See("Dorn")
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
Global("QI#MiDorn2","GLOBAL",0)~ THEN QI#MIB QI#MiDorn2
@24
DO ~SetGlobal("QI#MiDorn2","GLOBAL",1)~
== BDORN @25
== QI#MIB @26
== BDORN @27
EXIT

CHAIN
IF ~InParty("Dorn")
See("Dorn")
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
Global("QI#MiDorn3","GLOBAL",0)~ THEN BDORN QI#MiDorn3
@28
DO ~SetGlobal("QI#MiDorn3","GLOBAL",1)~
== QI#MIB @29
== BDORN @30
== QI#MIB @31
== BDORN @32
== QI#MIB @33
EXIT

CHAIN
IF ~InParty("Drn")
InParty("Edwin")
See("Dorn")
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
!StateCheck("Edwin",CD_STATE_NOTVALID)
GlobalGT("QI#MiEdwinRomanceSoA","GLOBAL",16)
Global("QI#MiEdwinDorn","GLOBAL",0)
@34
DO ~SetGlobal("QI#MiEdwinDorn","GLOBAL",1)~
== QI#MIB @35
== BEDWIN @36
== BDORN @37
== QI#MIB @38
== BDORN @39
== QI#MIB @40
== BDORN @41
EXIT

// Rasaad
CHAIN
IF ~InParty("Rasaad")
See("Rasaad")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
Global("QI#MiRasaad1","GLOBAL",0)~ THEN QI#MIB QI#MiRasaad1
@42
DO ~SetGlobal("QI#MiRasaad1","GLOBAL",1)~
== BRASAAD @43
== QI#MIB @44
== BRASAAD @45
EXIT


// Hexxat
CHAIN
IF ~InParty("Hexxat")
See("Hexxat")
!StateCheck("Hexxat",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
Global("QI#MiHexxat1","GLOBAL",0)~ THEN QI#MIB QI#MiHexxat1
@46
DO ~SetGlobal("QI#MiHexxat1","GLOBAL",1)~
== BHEXXAT @47
EXIT


// BG2:ToB //

// Dorn
/* CHAIN
IF ~InParty("Dorn")
See("Dorn")
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
Global("QI#MiDornToB1","GLOBAL",0)~ THEN QI#M25B QI#MiDornToB1
~Much has passed, has it not?~
DO ~SetGlobal("QI#MiDornToB1","GLOBAL",1)~
== BDORN25 ~I suppose so.~
== QI#M25B ~How has life faired for you thus far?~
== BDORN25 ~Why the small talk? Why does it matter?~
== QI#M25B ~It does not matter. I just thought I would make simple pleasantries.~
== BDORN25 ~You would not be so nice if you did not want something.~
== QI#M25B ~I see that you have finally caught on to my facade. You are definitely much smarter than the average man.~
== BDORN25 ~I am no man.~
== QI#M25B ~Yes, I suppose that is true.~
== BDORN25 ~Now what is it that you want?~
== QI#M25B ~Nothing in particular. I just wanted to see how far I could push your buttons. I guess you could say I was testing the grounds.~
== BDORN25 ~Test it again, and see what happens.~
== QI#M25B ~Point taken.~
EXIT*/


