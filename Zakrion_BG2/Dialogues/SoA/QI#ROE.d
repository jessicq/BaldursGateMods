BEGIN QI#ROE

/* Roe Pumperknickle - 1st Encounter at Brynnlaw */

CHAIN 
IF ~InParty("QI#ZAK2")
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
See("QI#ZAK2")
Global("QI#RoeEncounter","GLOBAL",1)~ THEN QI#ROE QI#RoeEncounter
@0
DO ~SetGlobal("QI#RoeEncounter","GLOBAL",2)~
== QI#ZAK2J @1
== QI#ROE @2
== QI#ZAK2J @3
== QI#ROE @4
== QI#ZAK2J @5
= @6
== QI#ROE @7
== QI#ZAK2J @8
== QI#ROE @9
= @10
== QI#ZAK2J @11
== QI#ROE @12
== QI#ZAK2J @13
== QI#ROE @14
== QI#ZAK2J @15
== QI#ROE @16
== QI#ZAK2J @17
== QI#ZAK2J IF ~Global("QI#ZakrionDesharikMeeting","GLOBAL",0)~ @35
== QI#ZAK2J IF ~Global("QI#ZakrionDesharikMeeting","GLOBAL",1)~ @36
== QI#ROE @18
== QI#ZAK2J @19
== QI#ROE @20
= @21
== QI#ZAK2J @22
== QI#ROE @23
== QI#ZAK2J @24
== QI#ROE @25
= @26
= @27
== QI#ZAK2J @28
== QI#ROE @29
== QI#ZAK2J @30
== QI#ROE @31
== QI#ZAK2J @32
== QI#ROE @33
= @34
DO ~EscapeArea()~
EXIT 

/* Roe Pumperknickle - 2nd Encounter during Chapter 6 */
