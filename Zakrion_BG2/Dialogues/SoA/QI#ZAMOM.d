BEGIN QI#ZAMOM
BEGIN QI#ZABOY

CHAIN 
IF ~InParty("QI#ZAK2")
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
See("QI#ZAK2")
Global("QI#ZakMomEncounter","GLOBAL",1)~ THEN QI#ZAMOM QI#ZakMomEncounter
@0
DO ~SetGlobal("QI#ZakMomEncounter","GLOBAL",2)~
== QI#ZAK2B @1
== QI#ZAMOM @2
== QI#ZAK2B @3
= @4
== QI#ZAMOM @5
= @6
= @7
== QI#ZAK2B @8
== QI#ZAMOM @9
= @10
== QI#ZAK2B @11
= @12
== QI#ZAMOM @13
== QI#ZAK2B @14
== QI#ZAMOM @15
= @16
= @17
= @18
== QI#ZAK2B @19
== QI#ZAMOM @20
== QI#ZABOY @21
== QI#ZAMOM @22
= @23
== QI#ZAK2B @24
== QI#ZAMOM @25
= @26
== QI#ZAK2B @27
= @28
== QI#ZAMOM @29
DO ~SetGlobal("QI#ZakMomEncounter","GLOBAL",3) EscapeArea()~
EXIT 