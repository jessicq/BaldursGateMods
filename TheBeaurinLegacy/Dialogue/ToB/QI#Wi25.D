//Encounter with Willias
BEGIN QI#Will
BEGIN QI#Anei

CHAIN 
IF ~Global("QI#EncounterTalk2","GLOBAL",0) InParty("QI#Mi")~ THEN QI#Will QI#MiEncounterWillias
@0
== QI#M25J @1
== QI#Will @2
== QI#Will @3
== QI#M25J @4
== QI#Will @5
== QI#Will @6
== QI#Will @7
== QI#Anei @8
== QI#Will @9
== QI#Anei @10
== QI#Will @11
== QI#Anei @12
== QI#M25J @13
== QI#M25J @14
== QI#M25J @15
== QI#Will @16
== QI#M25J @17
== QI#Will @18
DO ~SetGlobal("QI#EncounterTalk2","GLOBAL",1)~
EXIT

CHAIN
IF ~Global("QI#EncounterTalk2","GLOBAL",0) InParty("QI#Ela")~ THEN QI#Will QI#ElaEncounterWillias
@19
== QI#Will @20
== QI#E25J @21
== QI#Will @22
== QI#E25J @23
== QI#Anei @24
== QI#E25J @25
== QI#Will @26
== QI#Anei @27
== QI#Anei @28
== QI#E25J @29
== QI#E25J @30
== QI#Will @31
== QI#E25J @32
== QI#Will @33
== QI#Anei @34
== QI#Will @35
== QI#E25J @36
== QI#Will @37
== QI#E25J @38
== QI#Will @39
== QI#E25J @40
== QI#E25J @41
== QI#E25J @42
== QI#Will @43
DO ~SetGlobal("QI#EncounterTalk2","GLOBAL",1)~
EXIT
