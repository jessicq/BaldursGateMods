BEGIN QI#BULL1
BEGIN QI#BULL2

/*			Introduction of "The Bully"	at the Docks		*/
CHAIN
IF ~InParty("QI#ZAK2")
	!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
	See("QI#ZAK2")
	Global("QI#ZakSalbreadQuest","GLOBAL",3)~ THEN QI#BULL1 QI#ZakBullyTalk1.0
@0
= @1
== QI#ZAK2J @2
== QI#BULL1 @3
== QI#ZAK2J @4 
= @5
== QI#BULL1 @6
DO ~SetGlobal("QI#ZakSalbreadQuest","GLOBAL",4) ReallyForceSpell("QI#BULL1", WIZARD_IMPROVED_HASTE) EscapeAreaMove("AR0701",2508,2069,1)~
EXIT 


/*			Found "The Bully" in the Sewers			*/
CHAIN
IF ~Global("QI#ZakSalbreadQuest","GLOBAL",6)~ THEN QI#BULL1 QI#ZakBullyTalk2.0
@7
== QI#BULL2 @8
= @9
== QI#BULL1 @10
== QI#BULL2 @11
= @12
== QI#BULL1 @13
== QI#ZAK2J @14
== QI#BULL2 @15
== QI#BULL1 @16
= @17
== QI#BULL2 @18
= @19
== QI#BULL1 @20
== QI#BULL2 @21
== QI#BULL1 @22
DO ~Enemy()~
== QI#BULL2 @23
= @24
DO ~AddJournalEntry(@100008, QUEST)
	Enemy() 
	SetGlobal("QI#ZakSalbreadQuest","GLOBAL",7)~ 
EXIT 

 