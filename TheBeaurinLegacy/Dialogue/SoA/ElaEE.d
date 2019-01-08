// BG2:SoA //

// Neera 
CHAIN
IF ~InParty("Neera")
See("Neera")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("QI#Ela",CD_STATE_NOTVALID)
Global("QI#ElaNeera1","GLOBAL",0)~ THEN QI#ELAB QI#ElaNeera1
@0
DO ~SetGlobal("QI#ElaNeera1","GLOBAL",1)~
== BNEERA @1
== QI#ELAB @2
== BNEERA @3
EXIT

//Dorn
CHAIN
IF ~InParty("Dorn")
See("Dorn")
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("QI#Ela",CD_STATE_NOTVALID)
Global("QI#ElaDorn1","GLOBAL",0)~ THEN BDORN QI#ElaDorn1
@4
DO ~SetGlobal("QI#ElaDorn1","GLOBAL",1)~
== QI#ELAB @5
== BDORN @6
== QI#ELAB @7
== BDORN @8
== QI#ELAB @9
== BDORN @10
EXIT

// Rasaad
CHAIN
IF ~InParty("Rasaad")
See("Rasaad")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("QI#Ela",CD_STATE_NOTVALID)
Global("QI#ElaRasaad1","GLOBAL",0)~ THEN QI#ELAB QI#ElaRasaad1
@11
DO ~SetGlobal("QI#ElaRasaad1","GLOBAL",1)~
== BRASAAD @12
== QI#ELAB @13
== BRASAAD @14
== QI#ELAB @15
EXIT

// Hexxat
CHAIN
IF ~InParty("QI#Ela")
See("QI#Ela")
!StateCheck("Hexxat",CD_STATE_NOTVALID)
!StateCheck("QI#Ela",CD_STATE_NOTVALID)
Global("QI#ElaHexxat1","GLOBAL",0)~ THEN BHEXXAT QI#ElaHexxat1
@16
DO ~SetGlobal("QI#ElaHexxat1","GLOBAL",1)~
== QI#ELAB @17
== BHEXXAT @18
== QI#ELAB @19
== BHEXXAT @20
EXIT

//BG2:ToB//
