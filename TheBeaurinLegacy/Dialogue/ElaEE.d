// BG2:SoA //

// Neera 
CHAIN
IF ~InParty("Neera")
InParty("QI#Ela")
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
InParty("QI#Ela")
See("QI#Ela")
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
InParty("QI#Ela")
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
InParty("Hexxat")
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

// Hexxat
CHAIN
IF ~InParty("QI#Ela")
InParty("Hexxat")
See("Hexxat")
!StateCheck("Hexxat",CD_STATE_NOTVALID)
!StateCheck("QI#Ela",CD_STATE_NOTVALID)
Global("QI#ElaHexxatToB1","GLOBAL",0)~ THEN QI#E25B QI#ElaHexxatToB1
@21
DO ~SetGlobal("QI#ElaHexxatToB1","GLOBAL",1)~
== BHEXXA25 @22
== QI#E25B @23
== QI#E25B IF ~Global("HexxatRomanceActive","GLOBAL",2)~ THEN @24
EXIT

//Rasaad
CHAIN
IF ~InParty("QI#Ela")
InParty("Rasaad")
See("Rasaad")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("QI#Ela",CD_STATE_NOTVALID)
Global("RasaadRomanceActive","GLOBAL", 2)
Global("QI#ElaRasaadToB1","GLOBAL",0)~ THEN QI#E25B QI#ElaRasaadToB1
@25
DO ~SetGlobal("QI#ElaRasaadToB1","GLOBAL",1)~
== BRASAA25 @26
== QI#E25B @27
EXIT

//Dorn 
CHAIN
IF ~InParty("QI#Ela")
InParty("Dorn")
See("Dorn")
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("QI#Ela",CD_STATE_NOTVALID)
Global("QI#ElaDornToB1","GLOBAL",0)~ THEN QI#E25B QI#ElaDornToB1
@28
DO ~SetGlobal("QI#ElaDornToB1","GLOBAL",1)~
== BDORN25 @29
== QI#E25B @30
== QI#E25B IF ~Global("DornRomanceActive","GLOBAL",2)~ THEN @31
EXIT

// Neera 
CHAIN
IF ~InParty("QI#Ela")
InParty("Neera")
See("Neera")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("QI#Ela",CD_STATE_NOTVALID)
Global("QI#ElaNeeraToB1","GLOBAL",0)~ THEN QI#E25B QI#ElaNeeraToB1
@32
DO ~SetGlobal("QI#ElaNeeraToB1","GLOBAL",1)~
== BNEERA25 @33
== QI#E25B @34
EXIT
