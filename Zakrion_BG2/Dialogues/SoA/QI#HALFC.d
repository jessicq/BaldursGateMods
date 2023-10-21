BEGIN QI#HALFC

/*			Introduction of Halfling Salbread Quest			*/
CHAIN
IF ~Global("QI#ZakSalbreadQuest","GLOBAL",1)~ THEN QI#HALFC QI#ZakHalflingChild1.0
@0
= @1
= @2
= @3
= @4
END 
++ @5 + QI#ZakHalflingChild1.1
++ @6 + QI#ZakHalflingChild1.0.1
++ @7 + QI#ZakHalflingChild1.0.2
++ @8 + QI#ZakHalflingChild1.0.2
++ @9 + QI#ZakHalflingChild1.0.2

CHAIN
IF ~~ THEN QI#HALFC QI#ZakHalflingChild1.0x
@10
DO ~SetGlobal("QI#ZakSalbreadQuestActive","GLOBAL",1) EscapeArea()~
EXIT 

CHAIN
IF ~~ THEN QI#HALFC QI#ZakHalflingChild1.0.1
@11
= @12
END 
++ @13 + QI#ZakHalflingChild1.1
++ @14 + QI#ZakHalflingChild1.1
++ @15 + QI#ZakHalflingChild1.0.1a
++ @16 + QI#ZakHalflingChild1.0x 

CHAIN
IF ~~ THEN QI#HALFC QI#ZakHalflingChild1.0.1a
@17
= @18
END 
++ @19 + QI#ZakHalflingChild1.1
++ @14 + QI#ZakHalflingChild1.1
++ @20 + QI#ZakHalflingChild1.0x 
++ @16 + QI#ZakHalflingChild1.0x 

CHAIN
IF ~~ THEN QI#HALFC QI#ZakHalflingChild1.0.2
@21
== QI#ZAK2J @22
== QI#ZAK2J @23
END 
++ @24 + QI#ZakHalflingChild1.1
++ @25 + QI#ZakHalflingChild1.0.1
++ @26 + QI#ZakHalflingChild1.0x
++ @27 + QI#ZakHalflingChild1.0x

CHAIN
IF ~~ THEN QI#HALFC QI#ZakHalflingChild1.1
@28
= @29
= @30
= @31
DO ~SetGlobal("QI#ZakSalbreadQuest","GLOBAL",2) AddJournalEntry(@100006, QUEST)~
EXIT 


/*			Finished Halfling Salbread Quest - Global("QI#ZakSalbreadQuest","GLOBAL",X)		*/
CHAIN
IF ~GlobalGT("QI#ZakSalbreadQuest","GLOBAL",1)~ THEN QI#HALFC QI#ZakHalflingChild2.0
@32
END
++ @33 + QI#ZakHalflingChild2.0.0x
++ @34 + QI#ZakHalflingChild2.0.2
+ ~Global("QI#ZakSalbreadQuest","GLOBAL",11)~ + @35 + QI#ZakHalflingChild2.1
+ ~Global("QI#ZakSalbreadQuest","GLOBAL",11)~ + @36 + QI#ZakHalflingChild2.0.1
++ @37 + QI#ZakHalflingChild2.0x

CHAIN
IF ~~ THEN QI#HALFC QI#ZakHalflingChild2.0x
@10
DO ~SetGlobal("QI#ZakSalbreadQuestActive","GLOBAL",1) EscapeArea()~
EXIT 

CHAIN
IF ~~ THEN QI#HALFC QI#ZakHalflingChild2.0.0x
@38
EXIT 

CHAIN
IF ~~ THEN QI#HALFC QI#ZakHalflingChild2.0.1
@39
END 
++ @40 + QI#ZakHalflingChild2.0.1a

CHAIN
IF ~~ THEN QI#HALFC QI#ZakHalflingChild2.0.1a
@41
== AERIEJ IF ~InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @42
== QI#ZAK2J IF ~InParty("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID)~ THEN @43
== QI#ZAK2J IF ~InParty("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID)~ THEN @44
END
IF ~~ DO ~IncrementGlobal("QI#ZakSalbreadQuest","GLOBAL",1) 
		  EscapeArea()
		  AddJournalEntry(@100009, QUEST_DONE)~ SOLVED_JOURNAL @100009
EXIT 

CHAIN
IF ~~ THEN QI#HALFC QI#ZakHalflingChild2.0.2
@45
= @46
= @47
= @48
EXIT 

CHAIN
IF ~~ THEN QI#HALFC QI#ZakHalflingChild2.1
@49
= @50
= @51
== QI#ZAK2J IF ~InParty("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID)~ THEN @52
END
IF ~~ DO ~GiveItemCreate("QI#ZSALB",Player1,1,1,0) 
		  IncrementGlobal("QI#ZakSalbreadQuest","GLOBAL",1)
		  EraseJournalEntry(@100005)
		  EraseJournalEntry(@100006)
		  EraseJournalEntry(@100007)
		  EraseJournalEntry(@100008)
		  AddJournalEntry(@100009, QUEST_DONE)~ SOLVED_JOURNAL @100009
EXIT
