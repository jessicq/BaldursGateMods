BEGIN QI#ZMO25

/**************************************************************************************************
									Roe is Sick 
**************************************************************************************************/
CHAIN 
IF ~Global("QI#ZakSaradushFamily","GLOBAL",1)~ THEN QI#ZMO25 QI#ZakrionRoeSickness1
@1
== QI#ZA25B @0
== QI#ZMO25 @2
== QI#ZBO25 @3
== QI#ZST25 @4
== QI#ZA25B @5
== QI#ZST25 @6
= @7
= @8
== QI#ZMO25 @9
= @10
= @11
= @12
= @13
== QI#ZA25B @14
= @15
= @16
== QI#ZMO25 @17
= @18
== QI#ZBO25 @19
== QI#ZMO25 @20
== QI#ZA25B @21
== QI#ZMO25 @22
= @23
== QI#ZA25B @24
= @25
END 
IF ~~ DO ~AddJournalEntry(@100010, QUEST)
		  SetGlobal("QI#ZakSaradushFamily","GLOBAL",2)~ UNSOLVED_JOURNAL @100010
EXIT 


/**************************************************************************************************
									Returning with Berries
**************************************************************************************************/
CHAIN 
IF ~Global("QI#ZakSaradushFamily","GLOBAL",7)~ THEN QI#ZMO25 QI#ZakrionRoeSickness2
@37
== QI#ZA25B @26
== QI#ZMO25 @27
DO ~AddexperienceParty(50000)~
= @28
= @29
//== QI#ROE25 @30
== QI#ZMO25 @31
== QI#ZA25B @32
= @33
== QI#ZMO25 @34
END
IF ~~ DO ~SetGlobal("QI#ZakSaradushFamily","GLOBAL",8) 
		  SetGlobal("QI#ZakrionFamilyAlive","GLOBAL",1) 
		  EraseJournalEntry(@100010)
		  EraseJournalEntry(@100011)
		  AddJournalEntry(@100012, QUEST_DONE)~ SOLVED_JOURNAL @100012
EXIT 


/**************************************************************************************************
									Roe is Sick - PC Initiates Conversation
**************************************************************************************************/
CHAIN 
IF ~GlobalGT("QI#ZakSaradushFamily","GLOBAL",1) GlobalLT("QI#ZakSaradushFamily","GLOBAL",7)~ THEN QI#ZMO25 QI#ZakMother1
@35
EXIT 


/**************************************************************************************************
									Roe is Cured - PC Initiates Conversation
**************************************************************************************************/
CHAIN 
IF ~GlobalGT("QI#ZakSaradushFamily","GLOBAL",7)~ THEN QI#ZMO25 QI#ZakMother1
@36
EXIT 