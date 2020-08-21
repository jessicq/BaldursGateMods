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
InParty("QI#Mi")
See("QI#Mi")
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
InParty("QI#Mi")
InParty("Edwin")
See("Neera")
See("QI#Mi")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
!StateCheck("Edwin",CD_STATE_NOTVALID)
GlobalGT("QI#MiEdwinRomanceSoA","GLOBAL",16)
Global("QI#MiNeera3","GLOBAL",0)~ THEN BNEERA QI#MiNeera3
@15
DO ~SetGlobal("QI#MiNeera3","GLOBAL",1)~
== BNEERA @16
== QI#MIB @17
== BEDWIN @18
== QI#MIB @19
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
InParty("QI#Mi")
See("QI#Mi")
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
IF ~InParty("Dorn")
InParty("QI#Mi")
InParty("Edwin")
See("QI#Mi")
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
!StateCheck("Edwin",CD_STATE_NOTVALID)
GlobalGT("QI#MiEdwinRomanceSoA","GLOBAL",16)
Global("QI#MiEdwinDorn","GLOBAL",0)~ THEN BDORN QI#MiDorn4
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
CHAIN
IF ~InParty("Dorn")
See("Dorn")
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
Global("QI#MiDornToB1","GLOBAL",0)~ THEN QI#M25B QI#MiDornToB1
@49
DO ~SetGlobal("QI#MiDornToB1","GLOBAL",1)~
== BDORN25 @50
== QI#M25B @51
== BDORN25 @52
== QI#M25B @53
== BDORN25 @54
== QI#M25B @55
== BDORN25 @56
== QI#M25B @57
== BDORN25 @58
== QI#M25B @59
== BDORN25 @60
== QI#M25B @61
EXIT

// Hexxat
CHAIN
IF ~InParty("Hexxat")
See("Hexxat")
!StateCheck("Hexxat",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
Global("QI#MiHexxatToB1","GLOBAL",0)~ THEN QI#M25B QI#MiHexxatToB1
@62
DO ~SetGlobal("QI#MiHexxatToB1","GLOBAL",1)~
== BHEXXA25 @63 
== QI#M25B @64
== BHEXXA25 @65
== QI#M25B @66
== BHEXXA25 @67
EXIT
 
// Rasaad
CHAIN
IF ~InParty("Rasaad")
InParty("QI#Mi")
See("QI#Mi")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
Global("QI#MiRasaadToB1","GLOBAL",0)~ THEN BRASAA25 QI#MiRasaadToB1
@68
DO ~SetGlobal("QI#MiRasaadToB1","GLOBAL",1)~
== QI#M25B @69
== QI#M25B @71
== BRASAA25 @72
== QI#M25B @73
EXIT

// Neera
CHAIN
IF ~InParty("Neera")
InParty("Edwin")
InParty("QI#Mi")
See("QI#Mi")
See("Edwin")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
!StateCheck("Edwin",CD_STATE_NOTVALID)
Global("QI#AcceptLove","GLOBAL",1)
Global("QI#MiNeeraToB1","GLOBAL",0)~ THEN BNEERA25 QI#MiNeeraToB1
@74
DO ~SetGlobal("QI#MiNeeraToB1","GLOBAL",1)~
== QI#M25B @75
== BNEERA25 @76
== QI#M25B @77
== BNEERA25 @78
== QI#M25B @79
== BNEERA25 @80
== QI#M25B @81
== BNEERA25 @82
EXIT

CHAIN
IF ~InParty("Neera")
InParty("Edwin")
InParty("QI#Mi")
See("QI#Mi")
See("Edwin")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
!StateCheck("Edwin",CD_STATE_NOTVALID)
Global("QI#RejectLove","GLOBAL",1)
Global("QI#MiNeeraToB2","GLOBAL",0)~ THEN BNEERA25 QI#MiNeeraToB2
@83
DO ~SetGlobal("QI#MiNeeraToB2","GLOBAL",1)~
== QI#M25B @84
== BNEERA25 @85
== BNEERA25 @86
== QI#M25B @87
== QI#M25B @88
== QI#M25B @89
== QI#M25B @90
== QI#M25B @70
EXIT
