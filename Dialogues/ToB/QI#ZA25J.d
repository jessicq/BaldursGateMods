BEGIN QI#ZA25J 

/**************************************************************************************************
										Interjections
**************************************************************************************************/

EXTEND_TOP FATESP 6 #2
+ ~!Dead("QI#ZAK2") 
	!InMyArea("QI#ZAK2") 
	Global("QI#ZakSummoned","GLOBAL",0)~ + @553
	DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
		Wait(2) 
		CreateCreature("QI#ZAK25",[1999.1228],0) 
		SetGlobal("QI#ZakrionTalkActive","GLOBAL",1) 
		SetGlobal("QI#ZakSummoned","GLOBAL",1)~ GOTO 8
+ ~!Dead("QI#ZAK2") 
	!InMyArea("QI#ZAK2") 
	Global("QI#ZakSummoned","GLOBAL",0)~ + @554
	DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
		Wait(2)
		SetGlobal("QI#ZakrionTalkActive","GLOBAL",0) 
		CreateCreature("QI#ZAK25",[1999.1228],0) 
		SetGlobal("QI#ZakSummoned","GLOBAL",1)~ GOTO 8
+ ~!Dead("QI#ZAK2") 
	!InMyArea("QI#ZAK2") 
	Gender(Player1,FEMALE)
	Global("QI#ZakSummoned","GLOBAL",0)~ + @555
	DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
		Wait(2)
		SetGlobal("QI#ZakPCKnown","GLOBAL",1)
		SetGlobal("QI#ZakRomanceActive","GLOBAL",2) 
		SetGlobal("QI#ZakrionKnownRomanceTalk","GLOBAL",19)
		CreateCreature("QI#ZAK25",[1999.1228],0) 
		SetGlobal("QI#ZakSummoned","GLOBAL",1)~ GOTO 8
+ ~!Dead("QI#ZAK2") 
	!InMyArea("QI#ZAK2") 
	Gender(Player1,FEMALE)
	Global("QI#ZakSummoned","GLOBAL",0)~ + @556
	DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
		Wait(2)
		SetGlobal("QI#ZakRomanceActive","GLOBAL",2) 
		SetGlobal("QI#ZakrionNotKnownRomanceTalk","GLOBAL",19)
		CreateCreature("QI#ZAK25",[1999.1228],0) 
		SetGlobal("QI#ZakSummoned","GLOBAL",1)~ GOTO 8
END

/* Watcher's Keep - ToB */

/* Demogorgon */
I_C_T GORDEMO 12 QI#Zak2Gordemo1
== QI#ZA25J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",7)~ THEN @557
END

I_C_T GORDEMO 28 QI#Zak2Gordemo1
== QI#ZA25J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",7)~ THEN @558
END

/* Carston the Magnificent */
I_C_T GORCAR 3 QI#Zak2Carston1
== QI#ZA25J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",7)~ THEN @559
END

/* Brother Pol */
I_C_T GORPOL1 0 QI#Zak2BrotherPol1
== QI#ZA25J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",7)~ THEN @560
END

/* Odren */
I_C_T GORODR1 21 QI#Zak2Odren1
== QI#ZA25J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",7)~ THEN @561
= @571
END

I_C_T GORODR1 38 QI#Zak2Odren2
== QI#ZA25J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",7)~ THEN @562
= @572
END

I_C_T GORODR1 55 QI#Zak2Odren3
== QI#ZA25J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",7)~ THEN @563
END

I_C_T GORODR1 40 QI#Zak2Odren4
== QI#ZA25J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",7)~ THEN @563
END

/* Watcher's Keep - SoA */

/* Demogorgon */
I_C_T GORDEMO 12 QI#Zak2Gordemo1
== QI#ZA25J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID) GlobalLT("Chapter","GLOBAL",7)~ THEN @557
END

I_C_T GORDEMO 28 QI#Zak2Gordemo1
== QI#ZA25J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID) GlobalLT("Chapter","GLOBAL",7)~ THEN @558
END

/* Carston the Magnificent */
I_C_T GORCAR 3 QI#Zak2Carston1
== QI#ZA25J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID) GlobalLT("Chapter","GLOBAL",7)~ THEN @559
END

/* Brother Pol */
I_C_T GORPOL1 0 QI#Zak2BrotherPol1
== QI#ZA25J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID) GlobalLT("Chapter","GLOBAL",7)~ THEN @560
END

/* Odren */
I_C_T GORODR1 21 QI#Zak2Odren1
== QI#ZA25J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID) GlobalLT("Chapter","GLOBAL",7)~ THEN @561
= @571
END

I_C_T GORODR1 38 QI#Zak2Odren2
== QI#ZA25J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID) GlobalLT("Chapter","GLOBAL",7)~ THEN @562
= @572
END

I_C_T GORODR1 55 QI#Zak2Odren3
== QI#ZA25J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",7)~ THEN @563
END

I_C_T GORODR1 40 QI#Zak2Odren4
== QI#ZA25J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",7)~ THEN @563
END

/* Saemon */
I_C_T AMSAEMON 0 QI#Zak2SaemonToB1
== QI#ZA25J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID)~ THEN @564
END

I_C_T AMSAEMON 17 QI#Zak2SaemonToB2
== QI#ZA25J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID)~ THEN @565
END

/* Balthazar */
I_C_T BALTH 26 QI#Zak2SBalthazar1
== QI#ZA25J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID) Global("QI#ZakrionProposal","GLOBAL",2) Global("QI#ZakRomanceActive","GLOBAL",2)~ THEN @566
= @567
END

I_C_T BALTH 27 QI#Zak2SBalthazar2
== QI#ZA25J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID) Global("QI#ZakrionProposal","GLOBAL",2) Global("QI#ZakRomanceActive","GLOBAL",2)~ THEN @568
END

/* Marlowe */
I_C_T MARLOWE 2 QI#Zak2SMarlowe1
== QI#ZA25J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID) Global("QI#ZakrionProposal","GLOBAL",2) Global("QI#ZakRomanceActive","GLOBAL",2)~ THEN @569
= @570
END

/* Volo */
EXTEND_TOP SARVOLO 9 #2
+ ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID) !Global("QI#ZakrionTalkActive","GLOBAL",0) !Global("QI#ZakRomanceActive","GLOBAL",2)~ + @573 + QI#ZakVoloTalk1.0
+ ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID) Global("QI#ZakrionTalkActive","GLOBAL",0) !Global("QI#ZakRomanceActive","GLOBAL",2)~ + @573 + QI#ZakVoloTalk2.0
+ ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID) Global("QI#ZakRomanceActive","GLOBAL",2) Global("QI#ZakPCKnown","GLOBAL",1)~ + @573 + QI#ZakVoloTalk3.0
+ ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID) Global("QI#ZakRomanceActive","GLOBAL",2) !Global("QI#ZakPCKnown","GLOBAL",1)~ + @573 + QI#ZakVoloTalk4.0
END

CHAIN SARVOLO QI#ZakVoloTalk1.0
@574
== QI#ZA25J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID)~ @575
EXTERN SARVOLO 9

CHAIN SARVOLO QI#ZakVoloTalk2.0
@576
== QI#ZA25J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID)~ @577
EXTERN SARVOLO 9

CHAIN SARVOLO QI#ZakVoloTalk3.0
@578
== QI#ZA25J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID)~ @579
EXTERN SARVOLO 9

CHAIN SARVOLO QI#ZakVoloTalk4.0
@580
== QI#ZA25J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID)~ @581
EXTERN SARVOLO 9

/* Solar - No Friendship and No Romance */
I_C_T FINSOL01 27 QI#ZakNothingSolar1
== QI#ZA25J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID) !Global("QI#ZakrionTalkActive","GLOBAL",0) !Global("QI#ZakRomanceActive","GLOBAL",2)~ THEN @582
END 

/* Solar - Friendship */
I_C_T FINSOL01 27 QI#ZakFriendSolar1
== QI#ZA25J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID) Global("QI#ZakrionTalkActive","GLOBAL",0) !Global("QI#ZakRomanceActive","GLOBAL",2)~ THEN @583
= @584
END 

/* Solar - PC Known Romance */
EXTEND_BOTTOM FINSOL01 27
IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID) Global("QI#ZakRomanceActive","GLOBAL",2) Global("QI#ZakPCKnown","GLOBAL",1) Global("QI#ZakrionKnownRomanceSolar","GLOBAL",0)~ DO ~SetGlobal("QI#ZakrionKnownRomanceSolar","GLOBAL",1)~ EXTERN QI#ZA25J QI#ZakKnownRomanceSolar1
END 

CHAIN QI#ZA25J QI#ZakKnownRomanceSolar1
@585
= @586
= @587
END 
++ @588 + QI#ZakKnownRomanceSolar1.1
++ @589 + QI#ZakKnownRomanceSolar1.1
++ @590 + QI#ZakKnownRomanceSolar1.1

CHAIN QI#ZA25J QI#ZakKnownRomanceSolar1.1
@591
END
COPY_TRANS FINSOL01 27

/* Solar - PC Not Known Romance */
EXTEND_BOTTOM FINSOL01 27
IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID) Global("QI#ZakRomanceActive","GLOBAL",2) !Global("QI#ZakPCKnown","GLOBAL",1) Global("QI#ZakrionNotKnownRomanceSolar","GLOBAL",0)~ DO ~SetGlobal("QI#ZakrionNotKnownRomanceSolar","GLOBAL",1)~ EXTERN QI#ZA25J QI#ZakNotKnownRomanceSolar1
END 

CHAIN QI#ZA25J QI#ZakNotKnownRomanceSolar1
@592
= @593
= @594
END 
++ @588 + QI#ZakNotKnownRomanceSolar1.1
++ @589 + QI#ZakNotKnownRomanceSolar1.1
++ @590 + QI#ZakNotKnownRomanceSolar1.1

CHAIN QI#ZA25J QI#ZakNotKnownRomanceSolar1.1
@595
= @596
END 
COPY_TRANS FINSOL01 27

/* Known Romanced, but PC Leaves */
EXTEND_BOTTOM FINSOL01 29
IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID) Global("QI#ZakRomanceActive","GLOBAL",2) Global("QI#ZakPCKnown","GLOBAL",1) Global("QI#ZakKnownRomancePCLeaves","GLOBAL",0)~ DO ~SetGlobal("QI#ZakKnownRomancePCLeaves","GLOBAL",1)~ EXTERN QI#ZA25J QI#ZakrionKnownRomancePCLeaves1
END 

EXTEND_BOTTOM FINSOL01 30
IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID) Global("QI#ZakRomanceActive","GLOBAL",2) Global("QI#ZakPCKnown","GLOBAL",1) Global("QI#ZakKnownRomancePCLeaves","GLOBAL",0)~ DO ~SetGlobal("QI#ZakKnownRomancePCLeaves","GLOBAL",1)~ EXTERN QI#ZA25J QI#ZakrionKnownRomancePCLeaves1
END 

EXTEND_BOTTOM FINSOL01 31
IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID) Global("QI#ZakRomanceActive","GLOBAL",2) Global("QI#ZakPCKnown","GLOBAL",1) Global("QI#ZakKnownRomancePCLeaves","GLOBAL",0)~ DO ~SetGlobal("QI#ZakKnownRomancePCLeaves","GLOBAL",1)~ EXTERN QI#ZA25J QI#ZakrionKnownRomancePCLeaves1
END 

CHAIN QI#ZA25J QI#ZakrionKnownRomancePCLeaves1
@597
= @598
END
COPY_TRANS FINSOL01 29

/* Not Known Romanced, but PC Leaves */
EXTEND_BOTTOM FINSOL01 29
IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID) Global("QI#ZakRomanceActive","GLOBAL",2) !Global("QI#ZakPCKnown","GLOBAL",1) Global("QI#ZakNotKnownRomancePCLeaves","GLOBAL",0)~ DO ~SetGlobal("QI#ZakNotKnownRomancePCLeaves","GLOBAL",1)~ EXTERN QI#ZA25J QI#ZakrionNotKnownRomancePCLeaves1
END 

EXTEND_BOTTOM FINSOL01 30
IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID) Global("QI#ZakRomanceActive","GLOBAL",2) !Global("QI#ZakPCKnown","GLOBAL",1) Global("QI#ZakNotKnownRomancePCLeaves","GLOBAL",0)~ DO ~SetGlobal("QI#ZakNotKnownRomancePCLeaves","GLOBAL",1)~ EXTERN QI#ZA25J QI#ZakrionNotKnownRomancePCLeaves1
END 

EXTEND_BOTTOM FINSOL01 31
IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID) Global("QI#ZakRomanceActive","GLOBAL",2) !Global("QI#ZakPCKnown","GLOBAL",1) Global("QI#ZakNotKnownRomancePCLeaves","GLOBAL",0)~ DO ~SetGlobal("QI#ZakNotKnownRomancePCLeaves","GLOBAL",1)~ EXTERN QI#ZA25J QI#ZakrionNotKnownRomancePCLeaves1
END 

CHAIN QI#ZA25J QI#ZakrionNotKnownRomancePCLeaves1
@599
= @600
END
COPY_TRANS FINSOL01 29

/* Known Romanced, but PC Stays */
EXTEND_BOTTOM FINSOL01 32
IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID) Global("QI#ZakRomanceActive","GLOBAL",2) Global("QI#ZakPCKnown","GLOBAL",1) Global("QI#ZakKnownRomancePCStays","GLOBAL",0)~ DO ~SetGlobal("QI#ZakKnownRomancePCStays","GLOBAL",1)~ EXTERN QI#ZA25J QI#ZakrionKnownRomancePCStays1
END 

CHAIN QI#ZA25J QI#ZakrionKnownRomancePCStays1
@601
= @602
= @603
END
++ @604 EXTERN QI#ZA25J QI#ZakrionKnownRomancePCStays1.1
++ @605 EXTERN QI#ZA25J QI#ZakrionKnownRomancePCStays1.1
++ @606 EXTERN QI#ZA25J QI#ZakrionKnownRomancePCStays1.1

CHAIN QI#ZA25J QI#ZakrionKnownRomancePCStays1.1
@607
= @608
= @609
COPY_TRANS FINSOL01 32

/* Not Known Romanced, but PC Stays */
EXTEND_BOTTOM FINSOL01 32
IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID) Global("QI#ZakRomanceActive","GLOBAL",2) !Global("QI#ZakPCKnown","GLOBAL",1) Global("QI#ZakNotKnownRomancePCStays","GLOBAL",0)~ DO ~SetGlobal("QI#ZakNotKnownRomancePCStays","GLOBAL",1)~ EXTERN QI#ZA25J QI#ZakrionNotKnownRomancePCStays1
END 

CHAIN QI#ZA25J QI#ZakrionNotKnownRomancePCStays1
@601
= @602
= @610
END
++ @604 EXTERN QI#ZA25J QI#ZakrionNotKnownRomancePCStays1.1
++ @611 EXTERN QI#ZA25J QI#ZakrionNotKnownRomancePCStays1.1
++ @612 EXTERN QI#ZA25J QI#ZakrionNotKnownRomancePCStays1.1

CHAIN QI#ZA25J QI#ZakrionNotKnownRomancePCStays1.1
@613
= @614
= @615
COPY_TRANS FINSOL01 32

/* Zakrion's Gorion Wraith Sequence */
EXTEND_BOTTOM HGWRA01 18
IF ~Global("QI#ZakRomanceActive","GLOBAL",2)~ EXTERN HGWRA01 QI#ZakrionWraith1
END 

CHAIN HGWRA01 QI#ZakrionWraith1
@616
== QI#ZA25J IF ~Global("QI#ZakPCKnown","GLOBAL",1)~ @617
== QI#ZA25J IF ~!Global("QI#ZakPCKnown","GLOBAL",1)~ @618
EXTERN HGWRA01 24

EXTEND_BOTTOM HGWRA01 24
IF ~Global("QI#ZakRomanceActive","GLOBAL",2)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("QI#ZA25G")~ EXIT 
END 


BEGIN QI#ZA25G

CHAIN
IF ~Global("QI#ZakrionWraithSpirit","GLOBAL",0)~ THEN QI#ZA25G QI#ZakrionWraithTalk1.0
@619
DO ~SetGlobal("QI#ZakrionWraithSpirit","GLOBAL",1)~
== QI#ZA25J @620
== QI#ZA25G @621
= @622
== QI#ZA25J @623
== QI#ZA25G @624
= @625
= @626
= @627
== QI#ZA25J @628
= @629
END
++ @630 EXTERN HGWRA01 25
++ @631 EXTERN HGWRA01 25
+ ~CheckStatGT(Player1,16,WIS)~ + @632 EXTERN HGWRA01 25
++ @633 EXTERN HGWRA01 25

/* Zakrion's Talk after Gorion's Wraith */

APPEND QI#ZA25J 

IF ~Global("QI#ZakrionWraithSpirit","GLOBAL",2)~ QI#ZakrionWraithTalk2.0
SAY @634
= @635
++ @636 + QI#ZakrionWraithTalk2.1
++ @637 + QI#ZakrionWraithTalk2.1
++ @638 + QI#ZakrionWraithTalk2.1
++ @639 + QI#ZakrionWraithTalk2.0x
END 

IF ~~ QI#ZakrionWraithTalk2.0x
SAY @640
= @641
= @642
= @643
= @644
IF ~~ DO ~IncrementGlobal("QI#ZakrionWraithSpirit","GLOBAL",1) SetGlobal("QI#ZakRomanceActive","GLOBAL",3)~ EXIT
END 

IF ~~ QI#ZakrionWraithTalk2.1
SAY @645
= @646
= @647
++ @648 + QI#ZakrionWraithTalk2.1.1
++ @649 + QI#ZakrionWraithTalk2.1.2
++ @650 + QI#ZakrionWraithTalk2.1.3
END 

IF ~~ QI#ZakrionWraithTalk2.1.1
SAY @651
IF ~~ + QI#ZakrionWraithTalk2.2
END

IF ~~ QI#ZakrionWraithTalk2.1.2
SAY @652
IF ~~ + QI#ZakrionWraithTalk2.2
END

IF ~~ QI#ZakrionWraithTalk2.1.3
SAY @653
IF ~~ + QI#ZakrionWraithTalk2.2
END

IF ~~ QI#ZakrionWraithTalk2.2
SAY @654
= @655
IF ~~ DO ~IncrementGlobal("QI#ZakrionWraithSpirit","GLOBAL",1)~ EXIT 
END


/**************************************************************************************************
										Roe is Sick Quest
***************************************************************************************************/

IF ~Global("QI#ZakSaradushFamilyOut","GLOBAL",1)~ QI#ZakrionRoeSickness2
SAY @656
++ @657 + QI#ZakrionRoeSickness2.0.1
++ @658 + QI#ZakrionRoeSickness2.1
++ @659 + QI#ZakrionRoeSickness2.1
++ @660 + QI#ZakrionRoeSickness2.0x
END 

IF ~~ QI#ZakrionRoeSickness2.0.1
SAY @661
= @662
= @663
++ @664 + QI#ZakrionRoeSickness2.1
++ @665 + QI#ZakrionRoeSickness2.1
++ @666 + QI#ZakrionRoeSickness2.1
++ @667 + QI#ZakrionRoeSickness2.0x
END

IF ~~ QI#ZakrionRoeSickness2.0x
SAY @668
= @669
IF ~~ DO ~IncrementGlobal("QI#ZakSaradushFamilyOut","GLOBAL",1) LeaveParty() EscapeArea()~ EXIT 
END 

IF ~~ QI#ZakrionRoeSickness2.1
SAY @670
= @671
IF ~~ DO ~IncrementGlobal("QI#ZakSaradushFamilyOut","GLOBAL",1)~ UNSOLVED_JOURNAL @100003 EXIT
END

END


/**************************************************************************************************
										Karthik - Roe is Sick Quest
***************************************************************************************************/

EXTEND_BOTTOM HGKAR01 0
IF ~InParty("QI#ZAK2") 
	InMyArea("QI#ZAK2") 
	!StateCheck("QI#ZAK2",CD_STATE_NOTVALID) 
	Global("QI#ZakSaradushFamily","GLOBAL",2)~ THEN EXTERN QI#ZA25J QI#ZakrionRoeQuest1.0
END

CHAIN QI#ZA25J QI#ZakrionRoeQuest1.0
@672
DO ~SetGlobal("QI#ZakSaradushFamily","GLOBAL",3)~
= @673
END 
++ @674 EXTERN HGKAR01 QI#ZakrionRoeQuest1.0.1
++ @675 EXTERN HGKAR01 QI#ZakrionRoeQuest1.1
++ @676 EXTERN QI#ZA25J QI#ZakrionRoeQuest1.0.2

CHAIN HGKAR01 QI#ZakrionRoeQuest1.0.1
@677
= @678
END 
IF ~~ EXTERN QI#ZA25J QI#ZakrionRoeQuest1.0.1a

CHAIN QI#ZA25J QI#ZakrionRoeQuest1.0.1a
@679
END
IF ~~ EXTERN HGKAR01 QI#ZakrionRoeQuest1.0.1b

CHAIN HGKAR01 QI#ZakrionRoeQuest1.0.1b
@680
END
IF ~~ EXTERN HGKAR01 QI#ZakrionRoeQuest1.1

CHAIN QI#ZA25J QI#ZakrionRoeQuest1.0.2
@681
= @682
END
IF ~~ EXTERN HGKAR01 QI#ZakrionRoeQuest1.1

CHAIN HGKAR01 QI#ZakrionRoeQuest1.1
@683
= @684
= @685
= @686
= @687
END 
++ @688 EXTERN HGKAR01 QI#ZakrionRoeQuest1.1.1
++ @689 EXTERN HGKAR01 QI#ZakrionRoeQuest1.1.2
++ @690 EXTERN HGKAR01 QI#ZakrionRoeQuest1.2

CHAIN HGKAR01 QI#ZakrionRoeQuest1.1.1
@692
DO ~GiveItemCreate("QI#ZBERR","QI#ZAK2",0,0,0) AddJournalEntry(@100011, QUEST) SetGlobal("QI#ZakSaradushFamily","GLOBAL",4)~
END
COPY_TRANS HGKAR01 5

CHAIN HGKAR01 QI#ZakrionRoeQuest1.1.2
@692
DO ~GiveItemCreate("QI#ZBERR","QI#ZAK2",0,0,0) AddJournalEntry(@100011, QUEST) SetGlobal("QI#ZakSaradushFamily","GLOBAL",4)~
END
COPY_TRANS HGKAR01 5

CHAIN HGKAR01 QI#ZakrionRoeQuest1.2
@692
DO ~GiveItemCreate("QI#ZBERR","QI#ZAK2",0,0,0) AddJournalEntry(@100011, QUEST) SetGlobal("QI#ZakSaradushFamily","GLOBAL",4)~
END 
COPY_TRANS HGKAR01 5

/**************************************************************************************************
										Secured Berries - Roe is Sick Quest
***************************************************************************************************/

APPEND QI#ZA25J

IF ~Global("QI#ZakSaradushFamily","GLOBAL",5)~ QI#ZakrionSecuredBerries
SAY @693
IF ~~ DO ~SetGlobal("QI#ZakSaradushFamily","GLOBAL",6)~ EXIT
END 

/**************************************************************************************************
										Friendship Track
***************************************************************************************************/

/* Friendship Talk 1 - Mother */
IF ~Global("QI#ZakrionFriendshipToBTalk","GLOBAL",2)~ QI#ZakrionFriendshipToBTalk1.0
SAY @0
++ @1 + QI#ZakrionFriendshipToBTalk1.0.1
++ @2 + QI#ZakrionFriendshipToBTalk1.0.2
++ @3 + QI#ZakrionFriendshipToBTalk1.0.3
++ @4 + QI#ZakrionFriendshipToBTalk1.0.4
++ @5 + QI#ZakrionFriendshipToBTalk1.0.5
++ @6 + QI#ZakrionFriendshipToBTalk1.0.6
END 

IF ~~ QI#ZakrionFriendshipToBTalk1.0.1
SAY @7
IF ~~ + QI#ZakrionFriendshipToBTalk1.1
END 

IF ~~ QI#ZakrionFriendshipToBTalk1.0.2
SAY @8
IF ~~ + QI#ZakrionFriendshipToBTalk1.1
END 

IF ~~ QI#ZakrionFriendshipToBTalk1.0.3
SAY @9
= @10
IF ~~ + QI#ZakrionFriendshipToBTalk1.1
END 

IF ~~ QI#ZakrionFriendshipToBTalk1.0.4
SAY @11
= @12
IF ~~ + QI#ZakrionFriendshipToBTalk1.1
END 

IF ~~ QI#ZakrionFriendshipToBTalk1.0.5
SAY @13
IF ~~ + QI#ZakrionFriendshipToBTalk1.1
END 

IF ~~ QI#ZakrionFriendshipToBTalk1.0.6
SAY @14
= @15
IF ~~ + QI#ZakrionFriendshipToBTalk1.1
END 

IF ~~ QI#ZakrionFriendshipToBTalk1.1
SAY @16
= @17
= @18
= @19
= @20
= @21
++ @22 + QI#ZakrionFriendshipToBTalk1.1.1
++ @23 + QI#ZakrionFriendshipToBTalk1.2
++ @24 + QI#ZakrionFriendshipToBTalk1.1.2
++ @25 + QI#ZakrionFriendshipToBTalk1.1.3
END 

IF ~~ QI#ZakrionFriendshipToBTalk1.1.1
SAY @26
IF ~~ + QI#ZakrionFriendshipToBTalk1.2
END

IF ~~ QI#ZakrionFriendshipToBTalk1.1.2
SAY @27
IF ~~ + QI#ZakrionFriendshipToBTalk1.2
END

IF ~~ QI#ZakrionFriendshipToBTalk1.1.3
SAY @28
IF ~~ + QI#ZakrionFriendshipToBTalk1.2
END

IF ~~ QI#ZakrionFriendshipToBTalk1.2
SAY @29
= @30
= @31
= @32
= @33
++ @34 + QI#ZakrionFriendshipToBTalk1.3
++ @35 + QI#ZakrionFriendshipToBTalk1.2.1
++ @36 +  QI#ZakrionFriendshipToBTalk1.2.2
END

IF ~~  QI#ZakrionFriendshipToBTalk1.2.1
SAY @37
IF ~~ + QI#ZakrionFriendshipToBTalk1.3
END 

IF ~~  QI#ZakrionFriendshipToBTalk1.2.2
SAY @38
IF ~~ + QI#ZakrionFriendshipToBTalk1.3
END 

IF ~~  QI#ZakrionFriendshipToBTalk1.3
SAY @39
= @40
= @41
= @42
= @43
= @44
IF ~~ DO ~IncrementGlobal("QI#ZakrionFriendshipToBTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakrionFriendshipToBTimer","GLOBAL",3600)~ EXIT 
END 


/* Friendship Talk 2 -  I think I'm starting to understand */
IF ~Global("QI#ZakrionFriendshipToBTalk","GLOBAL",4)~ QI#ZakrionFriendshipToBTalk2.0
SAY @45
= @46
= @47
= @48
++ @49 + QI#ZakrionFriendshipToBTalk2.0.1
++ @50 + QI#ZakrionFriendshipToBTalk2.0.2
++ @51 + QI#ZakrionFriendshipToBTalk2.1
++ @52 + QI#ZakrionFriendshipToBTalk2.0.4
END 

IF ~~ QI#ZakrionFriendshipToBTalk2.0.1
SAY @53
IF ~~ + QI#ZakrionFriendshipToBTalk2.1
END 

IF ~~ QI#ZakrionFriendshipToBTalk2.0.2
SAY @54
= @55
IF ~~ + QI#ZakrionFriendshipToBTalk2.1
END 

IF ~~ QI#ZakrionFriendshipToBTalk2.0.3
SAY @56
= @57
IF ~~ + QI#ZakrionFriendshipToBTalk2.1
END 

IF ~~ QI#ZakrionFriendshipToBTalk2.0.4
SAY @1466
IF ~~ + QI#ZakrionFriendshipToBTalk2.1
END 

IF ~~ QI#ZakrionFriendshipToBTalk2.1
SAY @58
= @59
= @60
++ @61 + QI#ZakrionFriendshipToBTalk2.1.1
++ @62 + QI#ZakrionFriendshipToBTalk2.1.2
++ @63 + QI#ZakrionFriendshipToBTalk2.1.3
++ @64 + QI#ZakrionFriendshipToBTalk2.1.4
++ @65 + QI#ZakrionFriendshipToBTalk2.1.5
END 

IF ~~ QI#ZakrionFriendshipToBTalk2.1.1
SAY @66
IF ~~ + QI#ZakrionFriendshipToBTalk2.2
END 

IF ~~ QI#ZakrionFriendshipToBTalk2.1.2
SAY @67
= @68
IF ~~ + QI#ZakrionFriendshipToBTalk2.2
END 

IF ~~ QI#ZakrionFriendshipToBTalk2.1.3
SAY @69
= @70
IF ~~ + QI#ZakrionFriendshipToBTalk2.2
END 

IF ~~ QI#ZakrionFriendshipToBTalk2.1.4
SAY @71
IF ~~ + QI#ZakrionFriendshipToBTalk2.2
END 

IF ~~ QI#ZakrionFriendshipToBTalk2.1.5
SAY @72
IF ~~ + QI#ZakrionFriendshipToBTalk2.2
END 

IF ~~ QI#ZakrionFriendshipToBTalk2.2
SAY @73
= @74
= @75
IF ~~ DO ~IncrementGlobal("QI#ZakrionFriendshipToBTalk","GLOBAL",1)~ EXIT 
END 


/* Friendship Talk 3 - Saradush Talk and Family Quest */
IF ~Global("QI#ZakrionFriendshipDestTalk","GLOBAL",1)~ QI#ZakrionFriendshipDestTalk1.0
SAY @76
= @77
++ @78 + QI#ZakrionFriendshipDestTalk1.0.1
++ @79 + QI#ZakrionFriendshipDestTalk1.0.2
++ @80 + QI#ZakrionFriendshipDestTalk1.1
++ @81 + QI#ZakrionFriendshipDestTalk1.0.3
END 

IF ~~ QI#ZakrionFriendshipDestTalk1.0.1
SAY @82
IF ~~ + QI#ZakrionFriendshipDestTalk1.1
END 

IF ~~ QI#ZakrionFriendshipDestTalk1.0.2
SAY @83
IF ~~ + QI#ZakrionFriendshipDestTalk1.1
END 

IF ~~ QI#ZakrionFriendshipDestTalk1.0.3
SAY @84
= @85
= @86
= @87
= @88
= @89
= @90
= @91
IF ~~ DO ~SetGlobal("QI#ZakrionTalkActive","GLOBAL",1) IncrementGlobal("QI#ZakrionFriendshipDestTalk","GLOBAL",1) LeaveParty() EscapeArea()~ EXIT
END 

IF ~~ QI#ZakrionFriendshipDestTalk1.1
SAY @92
= @93
++ @94 + QI#ZakrionFriendshipDestTalk1.1.1
++ @95 + QI#ZakrionFriendshipDestTalk1.1.2
++ @96 + QI#ZakrionFriendshipDestTalk1.1.3
++ @97 + QI#ZakrionFriendshipDestTalk1.1.4
END 

IF ~~ QI#ZakrionFriendshipDestTalk1.1.1
SAY @98
IF ~~ + QI#ZakrionFriendshipDestTalk1.2
END

IF ~~ QI#ZakrionFriendshipDestTalk1.1.2
SAY @99
IF ~~ + QI#ZakrionFriendshipDestTalk1.2
END

IF ~~ QI#ZakrionFriendshipDestTalk1.1.3
SAY @100
IF ~~ + QI#ZakrionFriendshipDestTalk1.2
END

IF ~~ QI#ZakrionFriendshipDestTalk1.1.4
SAY @101
IF ~~ + QI#ZakrionFriendshipDestTalk1.2
END

IF ~~ QI#ZakrionFriendshipDestTalk1.2
SAY @102
++ @103 + QI#ZakrionFriendshipDestTalk1.3
++ @104 + QI#ZakrionFriendshipDestTalk1.2x
END

IF ~~ QI#ZakrionFriendshipDestTalk1.2x
SAY @105
IF ~~ DO ~IncrementGlobal("QI#ZakrionFriendshipDestTalk","GLOBAL",1) SetGlobal("QI#ZakrionCheckedBodies","GLOBAL",1) StartCutScene("QI#ZACU1")~ EXIT 
END

IF ~~ QI#ZakrionFriendshipDestTalk1.3
SAY @106
= @107
IF ~~ DO ~IncrementGlobal("QI#ZakrionFriendshipDestTalk","GLOBAL",1)~ EXIT
END 


/* Friendship Talk 3.1 - Checking for Bodies */
IF ~Global("QI#ZakrionCheckBodies","GLOBAL",2)~ QI#ZakrionCheckedBodies1.0
SAY @108
= @109
= @110
IF ~~ DO ~SetGlobal("QI#ZakrionCheckBodies","GLOBAL",3)~ EXIT
END 

END 



/* No Friendship - Everyone is Alive */
CHAIN IF ~Global("QI#ZakrionFamilyTalk","GLOBAL",2) Global("QI#ZakrionFamilyAlive","GLOBAL",1)~ THEN QI#ZA25J QI#ZakrionFamilyTalk.0a
@111
= @112
== QI#ZME25 @113
== QI#ZA25J @114
= @116
== QI#ZME25 @117
= @118
== QI#RO25A @119
== QI#ZME25 @120
= @121
== QI#ZA25J @122
== QI#RO25A @123
= @124
== QI#ZA25J @125
= @126
== QI#ZME25 @127
== QI#RO25A @128
== QI#ZA25J @129
= @130
== QI#RO25A @131
== QI#ZA25J @132
== QI#ZME25 @133
== QI#ZA25J @134
DO ~IncrementGlobal("QI#ZakrionFamilyTalk","GLOBAL",1)~ EXIT


/* No Friendship - Family is Dead */
CHAIN IF ~Global("QI#ZakrionFamilyTalk","GLOBAL",2) !Global("QI#ZakrionFamilyAlive","GLOBAL",1)~ THEN QI#ZA25J QI#ZakrionFamilyTalk.0b
@139
= @140
== QI#RO25A @141
== QI#ZA25J @142
== QI#RO25A @143
= @144
= @145
= @146
= @147
== QI#ZA25J @148
== QI#RO25A @149
== QI#ZA25J @150
= @151
DO ~IncrementGlobal("QI#ZakrionFriendshipFamilyTalk","GLOBAL",1)~ EXIT



/* Friendship Talk 4a - Everyone is Alive */
CHAIN IF ~Global("QI#ZakrionFriendshipFamilyTalk","GLOBAL",2) Global("QI#ZakrionFamilyAlive","GLOBAL",1)~ THEN QI#ZA25J QI#ZakrionFriendshipFamilyTalk4.0a
@111
= @112
== QI#ZME25 @113
== QI#ZA25J @114
= IF ~Global("QI#ZakrionCheckBodies","GLOBAL",3)~ @115
= @116
== QI#ZME25 @117
= @118
== QI#RO25A @119
== QI#ZME25 @120
= @121
== QI#ZA25J @122
== QI#RO25A @123
= @124
== QI#ZA25J @125
= @126
== QI#ZME25 @127
== QI#RO25A @128
== QI#ZA25J @129
= @130
== QI#RO25A @131
== QI#ZA25J @132
== QI#ZME25 @133
== QI#ZA25J @134
DO ~IncrementGlobal("QI#ZakrionFriendshipFamilyTalk","GLOBAL",1)~ EXIT


APPEND QI#ZA25J 

IF ~Global("QI#ZakrionFriendshipFamilyTalk","GLOBAL",3) Global("QI#ZakrionFamilyAlive","GLOBAL",1)~ QI#ZakrionFriendshipFamilyTalk4.1a
SAY @135
= @136
= @137
= @138
IF ~~ DO ~IncrementGlobal("QI#ZakrionFriendshipFamilyTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakrionFriendshipToBTimer","GLOBAL",3600)~ EXIT 
END 

END 


/* Friendship Talk 4b - Family is Dead */
CHAIN IF ~Global("QI#ZakrionFriendshipFamilyTalk","GLOBAL",2) !Global("QI#ZakrionFamilyAlive","GLOBAL",1)~ THEN QI#ZA25J QI#ZakrionFriendshipFamilyTalk4.0b
@139
= @140
== QI#RO25A @141
== QI#ZA25J @142
== QI#ZA25J @143
= @144
= @145
= @146
= @147
== QI#ZA25J @148
== QI#RO25A @149
== QI#ZA25J @150
= @151
DO ~IncrementGlobal("QI#ZakrionFriendshipFamilyTalk","GLOBAL",1)~ EXIT


APPEND QI#ZA25J

IF ~Global("QI#ZakrionFriendshipFamilyTalk","GLOBAL",3) !Global("QI#ZakrionFamilyAlive","GLOBAL",1)~ QI#ZakrionFriendshipFamilyTalk4.1b
SAY @152
++ @153 + QI#ZakrionFriendshipFamilyTalk4.2b
++ @154 + QI#ZakrionFriendshipFamilyTalk4.2b
++ @155 + QI#ZakrionFriendshipFamilyTalk4.2b
++ @156 + QI#ZakrionFriendshipFamilyTalk4.2b
END 

IF ~~ QI#ZakrionFriendshipFamilyTalk4.2b
SAY @157
= @158
++ @159 + QI#ZakrionFriendshipTalk4.3b
++ @160 + QI#ZakrionFriendshipTalk4.3b
END 

IF ~~ QI#ZakrionFriendshipTalk4.3b
SAY @161
= @162
= @163
IF ~~ DO ~IncrementGlobal("QI#ZakrionFriendshipFamilyTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakrionFriendshipToBTimer","GLOBAL",3600)~ EXIT 
END 


/* Friendship Talk 5 - Family Discussion */
IF ~Global("QI#ZakrionFamilyDiscussionTalk","GLOBAL",1)~ QI#ZakrionFamilyDiscussionTalk1.0
SAY @164
++ @165 + QI#ZakrionFamilyDiscussionTalk1.1
++ @166 + QI#ZakrionFamilyDiscussionTalk1.0.1
++ @167 + QI#ZakrionFamilyDiscussionTalk1.0.1
END 

IF ~~ QI#ZakrionFamilyDiscussionTalk1.0.1
SAY @168
IF ~Global("QI#ZakrionFamilyAlive","GLOBAL",1)~ + QI#ZakrionFamilyDiscussionTalk1.1a
IF ~!Global("QI#ZakrionFamilyAlive","GLOBAL",1)~ + QI#ZakrionFamilyDiscussionTalk1.1b
END

IF ~~ QI#ZakrionFamilyDiscussionTalk1.1
SAY @1467
IF ~Global("QI#ZakrionFamilyAlive","GLOBAL",1)~ + QI#ZakrionFamilyDiscussionTalk1.1a
IF ~!Global("QI#ZakrionFamilyAlive","GLOBAL",1)~ + QI#ZakrionFamilyDiscussionTalk1.1b
END

IF ~~ QI#ZakrionFamilyDiscussionTalk1.1a
SAY @169
= @170
= @171
+ ~Global("QI#ZakrionTalkActive","GLOBAL",0) !Global("QI#ZakRomanceActive","GLOBAL",2)~ + @172 + QI#ZakrionFamilyDiscussionTalk1.2a
++ @173 + QI#ZakrionFamilyDiscussionTalk1.1.1a
+ ~Global("QI#ZakrionTalkActive","GLOBAL",0) !Global("QI#ZakRomanceActive","GLOBAL",2)~ + @174 + QI#ZakrionFamilyDiscussionTalk1.1.1a
+ ~Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1900 + QI#ZakrionFamilyDiscussionTalk1.1.1a
++ @175 + QI#ZakrionFamilyDiscussionTalk1.1.1a
END 

IF ~~ QI#ZakrionFamilyDiscussionTalk1.1.1a
SAY @176
IF ~~ + QI#ZakrionFamilyDiscussionTalk1.3a
END

IF ~~ QI#ZakrionFamilyDiscussionTalk1.2a
SAY @177
IF ~~ + QI#ZakrionFamilyDiscussionTalk1.3a
END 

IF ~~ QI#ZakrionFamilyDiscussionTalk1.3a
SAY @178
IF ~Global("QI#ZakrionTalkActive","GLOBAL",0) !Global("QI#ZakRomanceActive","GLOBAL",2)~ + QI#ZakrionFamilyDiscussionTalk1.3aa
IF ~Global("QI#ZakRomanceActive","GLOBAL",2)~ + QI#ZakrionFamilyDiscussionTalk1.3ab
END 

IF ~~ QI#ZakrionFamilyDiscussionTalk1.3aa
SAY @179
IF ~~ DO ~IncrementGlobal("QI#ZakrionFamilyDiscussionTalk","GLOBAL",1)~ EXIT 
END

IF ~~ QI#ZakrionFamilyDiscussionTalk1.3ab
SAY @1901
IF ~~ DO ~IncrementGlobal("QI#ZakrionFamilyDiscussionTalk","GLOBAL",1)~ EXIT 
END

IF ~~ QI#ZakrionFamilyDiscussionTalk1.1b
SAY @180
= @181
++ @182 + QI#ZakrionFamilyDiscussionTalk1.1.1b
++ @183 + QI#ZakrionFamilyDiscussionTalk1.1.2b
++ @184 + QI#ZakrionFamilyDiscussionTalk1.1.3b
END 

IF ~~ QI#ZakrionFamilyDiscussionTalk1.1.1b
SAY @185
IF ~~ + QI#ZakrionFamilyDiscussionTalk1.2b
END

IF ~~ QI#ZakrionFamilyDiscussionTalk1.1.2b
SAY @186
IF ~~ + QI#ZakrionFamilyDiscussionTalk1.2b
END

IF ~~ QI#ZakrionFamilyDiscussionTalk1.1.3b
SAY @187
= @188
= @189
IF ~Global("QI#ZakrionTalkActive","GLOBAL",0) !Global("QI#ZakRomanceActive","GLOBAL",2)~ + QI#ZakrionFamilyDiscussionTalk1.1.3ba
IF ~Global("QI#ZakRomanceActive","GLOBAL",2)~ + QI#ZakrionFamilyDiscussionTalk1.1.3bb
END

IF ~~ QI#ZakrionFamilyDiscussionTalk1.1.3ba
SAY @190
IF ~~ DO ~IncrementGlobal("QI#ZakrionFamilyDiscussionTalk","GLOBAL",1) SetGlobal("QI#ZakrionTalkActive","GLOBAL",1) LeaveParty() EscapeArea()~ EXIT 
END

IF ~~ QI#ZakrionFamilyDiscussionTalk1.1.3bb
SAY @190
IF ~~ DO ~IncrementGlobal("QI#ZakrionFamilyDiscussionTalk","GLOBAL",1) SetGlobal("QI#ZakRomanceActive","GLOBAL",3) LeaveParty() EscapeArea()~ EXIT 
END

IF ~~ QI#ZakrionFamilyDiscussionTalk1.2b
SAY @191
= @192
= @193
IF ~~ DO ~IncrementGlobal("QI#ZakrionFamilyDiscussionTalk","GLOBAL",1)~ EXIT 
END


/* Friendship Talk 6 - Final Talk */
IF ~Global("QI#ZakrionFriendshipFinalTalk","GLOBAL",1)~ QI#ZakrionFriendshipFinalTalk1.0
SAY @194
++ @195 + QI#ZakrionFriendshipFinalTalk1.0.1
++ @196 + QI#ZakrionFriendshipFinalTalk1.0.2
++ @197 + QI#ZakrionFriendshipFinalTalk1.0.3
++ @198 + QI#ZakrionFriendshipFinalTalk1.0.4
END 

IF ~~ QI#ZakrionFriendshipFinalTalk1.0.1
SAY @199
IF ~~ + QI#ZakrionFriendshipFinalTalk1.1
END 

IF ~~ QI#ZakrionFriendshipFinalTalk1.0.2
SAY @200
IF ~~ + QI#ZakrionFriendshipFinalTalk1.1
END 

IF ~~ QI#ZakrionFriendshipFinalTalk1.0.3
SAY @201
IF ~~ + QI#ZakrionFriendshipFinalTalk1.1
END 

IF ~~ QI#ZakrionFriendshipFinalTalk1.0.4
SAY @202
IF ~~ + QI#ZakrionFriendshipFinalTalk1.1
END

IF ~~ QI#ZakrionFriendshipFinalTalk1.1
SAY @203
= @204
= @205
= @206
++ @207 + QI#ZakrionFriendshipFinalTalk1.1.1
++ @208 + QI#ZakrionFriendshipFinalTalk1.1.2
++ @209 + QI#ZakrionFriendshipFinalTalk1.1.3
END 

IF ~~ QI#ZakrionFriendshipFinalTalk1.1.1
SAY @210
IF ~~ + QI#ZakrionFriendshipFinalTalk1.2
END 

IF ~~ QI#ZakrionFriendshipFinalTalk1.1.2
SAY @211
IF ~~ + QI#ZakrionFriendshipFinalTalk1.2
END 

IF ~~ QI#ZakrionFriendshipFinalTalk1.1.3
SAY @212
IF ~~ + QI#ZakrionFriendshipFinalTalk1.2
END 

IF ~~ QI#ZakrionFriendshipFinalTalk1.2
SAY @213
= @214
= @215
IF ~!Global("QI#ZakrionFamilyAlive","GLOBAL",1)~ + QI#ZakrionFriendshipFinalTalk1.2a
IF ~Global("QI#ZakrionFamilyAlive","GLOBAL",1)~ + QI#ZakrionFriendshipFinalTalk1.3
END

IF ~~ QI#ZakrionFriendshipFinalTalk1.2a
SAY @216
IF ~~ + QI#ZakrionFriendshipFinalTalk1.3
END 

IF ~~ QI#ZakrionFriendshipFinalTalk1.3
SAY @217
IF ~~ DO ~SetGlobal("QI#ZakrionFriendshipFinalTalk","GLOBAL",2)~ EXIT 
END 


/**************************************************************************************************
									Known Romance Track
**************************************************************************************************/

/* Known Romance Talk 1 - Suldanessellar */
IF ~Global("QI#ZakrionKnownRomanceToBTalk","GLOBAL",2)~ QI#ZakrionKnownRomanceToBTalk1.0
SAY @218
= @219
++ @220 + QI#ZakrionKnownRomanceToBTalk1.0.1
++ @221 + QI#ZakrionKnownRomanceToBTalk1.0.2
++ @222 + QI#ZakrionKnownRomanceToBTalk1.0.3
++ @223 + QI#ZakrionKnownRomanceToBTalk1.0x
END 

IF ~~ QI#ZakrionKnownRomanceToBTalk1.0x
SAY @224
IF ~~ DO ~IncrementGlobal("QI#ZakrionKnownRomanceToBTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakrionRomanceToBTimer","GLOBAL",3600)~ EXIT 
END 

IF ~~ QI#ZakrionKnownRomanceToBTalk1.0.1
SAY @225
= @226
= @227
IF ~~ + QI#ZakrionKnownRomanceToBTalk1.1
END 

IF ~~ QI#ZakrionKnownRomanceToBTalk1.0.2
SAY @228
= @229
= @227
IF ~~ + QI#ZakrionKnownRomanceToBTalk1.1
END 

IF ~~ QI#ZakrionKnownRomanceToBTalk1.0.3
SAY @230
IF ~~ + QI#ZakrionKnownRomanceToBTalk1.1
END 

IF ~~ QI#ZakrionKnownRomanceToBTalk1.1
SAY @231
= @232
= @233
= @234
= @235
= @236
++ @237 + QI#ZakrionKnownRomanceToBTalk1.2
++ @238 + QI#ZakrionKnownRomanceToBTalk1.1.1
++ @239 + QI#ZakrionKnownRomanceToBTalk1.1.2
++ @240 + QI#ZakrionKnownRomanceToBTalk1.1x
END 

IF ~~ QI#ZakrionKnownRomanceToBTalk1.1x
SAY @241
= @242
IF ~~ DO ~IncrementGlobal("QI#ZakrionKnownRomanceToBTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakrionRomanceToBTimer","GLOBAL",3600)~ EXIT 
END

IF ~~ QI#ZakrionKnownRomanceToBTalk1.1.1
SAY @243
IF ~~ + QI#ZakrionKnownRomanceToBTalk1.2
END

IF ~~ QI#ZakrionKnownRomanceToBTalk1.1.2
SAY @244
IF ~~ + QI#ZakrionKnownRomanceToBTalk1.2
END

IF ~~ QI#ZakrionKnownRomanceToBTalk1.2
SAY @245
= @246
IF ~~ DO ~IncrementGlobal("QI#ZakrionKnownRomanceToBTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakrionRomanceToBTimer","GLOBAL",3600)~ EXIT 
END 


/* Known Romance Talk 2 - Running Away */
IF ~Global("QI#ZakrionKnownRomanceToBTalk","GLOBAL",4)~ QI#ZakrionKnownRomanceToBTalk2.0
SAY @247
++ @248 + QI#ZakrionKnownRomanceToBTalk2.1
++ @249 + QI#ZakrionKnownRomanceToBTalk2.1
++ @250 + QI#ZakrionKnownRomanceToBTalk2.0.1
++ @251 + QI#ZakrionKnownRomanceToBTalk2.0.2
END 

IF ~~ QI#ZakrionKnownRomanceToBTalk2.0.1
SAY @252
IF ~~ + QI#ZakrionKnownRomanceToBTalk2.1
END

IF ~~ QI#ZakrionKnownRomanceToBTalk2.0.2
SAY @253
IF ~~ + QI#ZakrionKnownRomanceToBTalk2.1
END

IF ~~ QI#ZakrionKnownRomanceToBTalk2.1
SAY @254
= @255
++ @256 + QI#ZakrionKnownRomanceToBTalk2.2
++ @257 + QI#ZakrionKnownRomanceToBTalk2.2
++ @258 + QI#ZakrionKnownRomanceToBTalk2.2
++ @259 + QI#ZakrionKnownRomanceToBTalk2.1.1
END 

IF ~~ QI#ZakrionKnownRomanceToBTalk2.1.1
SAY @260
IF ~~ + QI#ZakrionKnownRomanceToBTalk2.2
END

IF ~~ QI#ZakrionKnownRomanceToBTalk2.2
SAY @261
= @262
++ @263 + QI#ZakrionKnownRomanceToBTalk2.3
++ @264 + QI#ZakrionKnownRomanceToBTalk2.3
++ @265 + QI#ZakrionKnownRomanceToBTalk2.3
++ @266 + QI#ZakrionKnownRomanceToBTalk2.3
++ @267 + QI#ZakrionKnownRomanceToBTalk2.3
END 

IF ~~ QI#ZakrionKnownRomanceToBTalk2.3
SAY @268
= @269
= @270
= @271
= @272
= @273
= @274
= @275
IF ~~ DO ~IncrementGlobal("QI#ZakrionKnownRomanceToBTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakrionRomanceToBTimer","GLOBAL",3600)~ EXIT 
END

/* Known Romance Talk 3 - Where would we want to go after all this? */
IF ~Global("QI#ZakrionKnownRomanceToBTalk","GLOBAL",6)~ QI#ZakrionKnownRomanceToBTalk3.0
SAY @276
= @277
++ @278 + QI#ZakrionKnownRomanceToBTalk3.0.1
++ @279 + QI#ZakrionKnownRomanceToBTalk3.0.2
++ @280 + QI#ZakrionKnownRomanceToBTalk3.0.3
++ @281 + QI#ZakrionKnownRomanceToBTalk3.0.4
++ @282 + QI#ZakrionKnownRomanceToBTalk3.0.5
++ @283 + QI#ZakrionKnownRomanceToBTalk3.0x
END 

IF ~~ QI#ZakrionKnownRomanceToBTalk3.0x
SAY @284
IF ~~ DO ~IncrementGlobal("QI#ZakrionKnownRomanceToBTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakrionRomanceToBTimer","GLOBAL",3600)~ EXIT 
END 

IF ~~ QI#ZakrionKnownRomanceToBTalk3.0.1
SAY @285
IF ~~ + QI#ZakrionKnownRomanceToBTalk3.1
END

IF ~~ QI#ZakrionKnownRomanceToBTalk3.0.2
SAY @286
IF ~~ + QI#ZakrionKnownRomanceToBTalk3.1
END

IF ~~ QI#ZakrionKnownRomanceToBTalk3.0.3
SAY @287
IF ~~ + QI#ZakrionKnownRomanceToBTalk3.1
END

IF ~~ QI#ZakrionKnownRomanceToBTalk3.0.4
SAY @288
IF ~~ + QI#ZakrionKnownRomanceToBTalk3.1
END

IF ~~ QI#ZakrionKnownRomanceToBTalk3.0.5
SAY @289
IF ~~ + QI#ZakrionKnownRomanceToBTalk3.1
END

IF ~~ QI#ZakrionKnownRomanceToBTalk3.1
SAY @290
= @291
= @292
= @293
++ @294 DO ~SetGlobal("QI#ZakrionFamilyWanted","GLOBAL",1) SetGlobal("QI#ZakrionOceanWanted","GLOBAL",1)~ + QI#ZakrionKnownRomanceToBTalk3.1.1
++ @295 DO ~SetGlobal("QI#ZakrionFamilyWanted","GLOBAL",1)~ + QI#ZakrionKnownRomanceToBTalk3.1.2
++ @296 DO ~SetGlobal("QI#ZakrionOceanWanted","GLOBAL",1)~ + QI#ZakrionKnownRomanceToBTalk3.1.3
++ @297 + QI#ZakrionKnownRomanceToBTalk3.1.4
++ @298 + QI#ZakrionKnownRomanceToBTalk3.1.5
END

IF ~~ QI#ZakrionKnownRomanceToBTalk3.1.1
SAY @299
IF ~~ + QI#ZakrionKnownRomanceToBTalk3.2
END 

IF ~~ QI#ZakrionKnownRomanceToBTalk3.1.2
SAY @300
IF ~~ + QI#ZakrionKnownRomanceToBTalk3.2
END 

IF ~~ QI#ZakrionKnownRomanceToBTalk3.1.3
SAY @301
IF ~~ + QI#ZakrionKnownRomanceToBTalk3.2
END 

IF ~~ QI#ZakrionKnownRomanceToBTalk3.1.4
SAY @302
= @303
++ @294 DO ~SetGlobal("QI#ZakrionFamilyWanted","GLOBAL",1) SetGlobal("QI#ZakrionOceanWanted","GLOBAL",1)~ + QI#ZakrionKnownRomanceToBTalk3.1.1
++ @295 DO ~SetGlobal("QI#ZakrionFamilyWanted","GLOBAL",1)~ + QI#ZakrionKnownRomanceToBTalk3.1.2
++ @296 DO ~SetGlobal("QI#ZakrionOceanWanted","GLOBAL",1)~ + QI#ZakrionKnownRomanceToBTalk3.1.3
++ @298 + QI#ZakrionKnownRomanceToBTalk3.1.5
END 

IF ~~ QI#ZakrionKnownRomanceToBTalk3.1.5
SAY @304
IF ~~ + QI#ZakrionKnownRomanceToBTalk3.2
END 

IF ~~ QI#ZakrionKnownRomanceToBTalk3.2
SAY @305
= @306
IF ~~ DO ~IncrementGlobal("QI#ZakrionKnownRomanceToBTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakrionRomanceToBTimer","GLOBAL",3600)~ EXIT 
END 


/* Known Romance Talk 4 - Saradush and Family Quest */
IF ~Global("QI#ZakrionKnownRomanceDestTalk","GLOBAL",1)~ QI#ZakrionKnownRomanceDestTalk1.0
SAY @307
++ @78 + QI#ZakrionKnownRomanceDestTalk1.0.1
++ @79 + QI#ZakrionKnownRomanceDestTalk1.0.2
++ @80 + QI#ZakrionKnownRomanceDestTalk1.0.3
++ @81 + QI#ZakrionKnownRomanceDestTalk1.0x
END 

IF ~~ QI#ZakrionKnownRomanceDestTalk1.0x
SAY @84
= @85
= @86
= @87
= @88 
= @89
= @90
= @91
IF ~~ DO ~SetGlobal("QI#ZakRomanceActive","GLOBAL",3) IncrementGlobal("QI#ZakrionKnownRomanceDestTalk","GLOBAL",1) LeaveParty() EscapeArea()~ EXIT
END 

IF ~~ QI#ZakrionKnownRomanceDestTalk1.0.1
SAY @82
IF ~~ + QI#ZakrionKnownRomanceDestTalk1.1
END 

IF ~~ QI#ZakrionKnownRomanceDestTalk1.0.2
SAY @83
IF ~~ + QI#ZakrionKnownRomanceDestTalk1.1
END 

IF ~~ QI#ZakrionKnownRomanceDestTalk1.0.3
SAY @92
IF ~~ + QI#ZakrionKnownRomanceDestTalk1.1
END 

IF ~~ QI#ZakrionKnownRomanceDestTalk1.1
SAY @93
++ @94 + QI#ZakrionKnownRomanceDestTalk1.1.1
++ @95 + QI#ZakrionKnownRomanceDestTalk1.1.2
++ @96 + QI#ZakrionKnownRomanceDestTalk1.1.3
++ @97 + QI#ZakrionKnownRomanceDestTalk1.1.4
END 

IF ~~ QI#ZakrionKnownRomanceDestTalk1.1.1
SAY @98
IF ~~ + QI#ZakrionKnownRomanceDestTalk1.2
END 

IF ~~ QI#ZakrionKnownRomanceDestTalk1.1.2
SAY @99
IF ~~ + QI#ZakrionKnownRomanceDestTalk1.2
END 

IF ~~ QI#ZakrionKnownRomanceDestTalk1.1.3
SAY @100
IF ~~ + QI#ZakrionKnownRomanceDestTalk1.2
END 

IF ~~ QI#ZakrionKnownRomanceDestTalk1.1.4
SAY @101
IF ~~ + QI#ZakrionKnownRomanceDestTalk1.2
END 

IF ~~ QI#ZakrionKnownRomanceDestTalk1.2
SAY @102
++ @103 + QI#ZakrionKnownRomanceDestTalk1.2.1
++ @104 + QI#ZakrionKnownRomanceDestTalk1.3
END

IF ~~ QI#ZakrionKnownRomanceDestTalk1.2.1
SAY @106
= @107
IF ~~ DO ~IncrementGlobal("QI#ZakrionKnownRomanceDestTalk","GLOBAL",1)~ EXIT 
END

IF ~~ QI#ZakrionKnownRomanceDestTalk1.3
SAY @105
IF ~~ DO ~IncrementGlobal("QI#ZakrionKnownRomanceDestTalk","GLOBAL",1) SetGlobal("QI#ZakrionCheckedBodies","GLOBAL",1) StartCutScene("QI#ZACU1")~ EXIT
END 

END

/* Known Romance Talk 5a  - Everyone is Alive */
CHAIN IF ~Global("QI#ZakrionKRFamilyTalk","GLOBAL",2) Global("QI#ZakrionFamilyAlive","GLOBAL",1)~ THEN QI#ZA25J QI#ZakrionKRFamilyTalk4.0a
@111
= @112
== QI#ZME25 @113
== QI#ZA25J @114
= IF ~Global("QI#ZakrionCheckBodies","GLOBAL",3)~ @115
= @116
== QI#ZME25 @117
= @118
== QI#RO25A @119
== QI#ZME25 @120
= @121
== QI#ZA25J @122
== QI#RO25A @123
= @124
== QI#ZA25J @125
= @126
== QI#ZME25 @127
== QI#RO25A @128
== QI#ZA25J @129
= @130
== QI#RO25A @131
== QI#ZA25J @132
== QI#ZME25 @133
== QI#ZA25J @134
== QI#ZME25 @308
== QI#ZA25J @309
== QI#ZME25 @310
== QI#ZA25J @311
DO ~IncrementGlobal("QI#ZakrionKRFamilyTalk","GLOBAL",1) SetGlobal("QI#ZakrionHasRing","GLOBAL",1)~ EXIT

/* Known Romance Talk 5b - Family is Dead */
CHAIN IF ~Global("QI#ZakrionKRFamilyTalk","GLOBAL",2) !Global("QI#ZakrionFamilyAlive","GLOBAL",1)~ THEN QI#ZA25J QI#ZakrionKRFamilyTalk4.0b
@139
= @140
== QI#RO25A @141
== QI#ZA25J @142
== QI#RO25A @143
= @144
= @145
= @146
= @147
== QI#ZA25J @148
== QI#RO25A @149
== QI#ZA25J @150
= @151
== QI#RO25A @312
= @313
== QI#ZA25J @314
DO ~IncrementGlobal("QI#ZakrionKRFamilyTalk","GLOBAL",1) SetGlobal("QI#ZakrionHasRing","GLOBAL",1)~ EXIT


APPEND QI#ZA25J 

// Family is Alive
IF ~Global("QI#ZakrionKRFamilyTalk","GLOBAL",3) Global("QI#ZakrionFamilyAlive","GLOBAL",1)~ QI#ZakrionKRFamilyTalk4.1a
SAY @135
= @136
= @137
= @138
IF ~~ DO ~IncrementGlobal("QI#ZakrionKRFamilyTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakrionRomanceToBTimer","GLOBAL",3600)~ EXIT 
END 

// Family is Dead
IF ~Global("QI#ZakrionKRFamilyTalk","GLOBAL",3) !Global("QI#ZakrionFamilyAlive","GLOBAL",1)~ QI#ZakrionKRFamilyTalk4.1b
SAY @152
++ @153 + QI#ZakrionKRFamilyTalk4.2b
++ @154 + QI#ZakrionKRFamilyTalk4.2b
++ @155 + QI#ZakrionKRFamilyTalk4.2b
++ @156 + QI#ZakrionKRFamilyTalk4.2b
END 

IF ~~ QI#ZakrionKRFamilyTalk4.2b
SAY @157
= @158
++ @159 + QI#ZakrionKRFamilyTalk4.3b
++ @160 + QI#ZakrionKRFamilyTalk4.3b
END 

IF ~~ QI#ZakrionKRFamilyTalk4.3b
SAY @161
= @162
= @163
IF ~~ DO ~IncrementGlobal("QI#ZakrionKRFamilyTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakrionRomanceToBTimer","GLOBAL",3600)~ EXIT 
END 


/* Known Romance Talk 6 - After the Third Challenge */
IF ~Global("QI#ZakrionKnownChallengeTalk","GLOBAL",1)~ QI#ZakrionKnownChallengeTalk1.0
SAY @315
= @316
= @317
++ @318 + QI#ZakrionKnownChallengeTalk1.0.1
++ @319 + QI#ZakrionKnownChallengeTalk1.0.2
++ @320 + QI#ZakrionKnownChallengeTalk1.0.3
++ @321 + QI#ZakrionKnownChallengeTalk1.0.4
END 

IF ~~ QI#ZakrionKnownChallengeTalk1.0.1
SAY @322
= @323
= @324
IF ~~ + QI#ZakrionKnownChallengeTalk1.1
END

IF ~~ QI#ZakrionKnownChallengeTalk1.0.2
SAY @325
= @326
IF ~~ + QI#ZakrionKnownChallengeTalk1.1
END

IF ~~ QI#ZakrionKnownChallengeTalk1.0.3
SAY @327
= @328
IF ~~ + QI#ZakrionKnownChallengeTalk1.1
END

IF ~~ QI#ZakrionKnownChallengeTalk1.0.4
SAY @329
= @330
IF ~~ + QI#ZakrionKnownChallengeTalk1.1
END

IF ~~ QI#ZakrionKnownChallengeTalk1.1
SAY @331
= @332
++ @333 + QI#ZakrionKnownChallengeTalk1.1.1
++ @334 + QI#ZakrionKnownChallengeTalk1.1.2
++ @335 + QI#ZakrionKnownChallengeTalk1.1.1
++ @336 + QI#ZakrionKnownChallengeTalk1.1.2
END

IF ~~ QI#ZakrionKnownChallengeTalk1.1.1
SAY @337
= @338
IF ~~ + QI#ZakrionKnownChallengeTalk1.2
END

IF ~~ QI#ZakrionKnownChallengeTalk1.1.2
SAY @339
IF ~~ + QI#ZakrionKnownChallengeTalk1.2
END 

IF ~~ QI#ZakrionKnownChallengeTalk1.2
SAY @340
= @341
= @342
= @343
IF ~~ DO ~IncrementGlobal("QI#ZakrionKnownChallengeTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakrionRomanceToBTimer","GLOBAL",3600)~ EXIT 
END 


/* Known Romance Talk 7 - Marry me? */
IF ~Global("QI#ZakrionProposal","GLOBAL",1)~ QI#ZakrionProposalTalk1.0
SAY @344
= @345
= @346
= @347
++ @348 + QI#ZakrionProposalTalk1.1
++ @349 + QI#ZakrionProposalTalk1.1
++ @350 + QI#ZakrionProposalTalk1.0.1
++ @351 + QI#ZakrionProposalTalk1.0x
END 

IF ~~ QI#ZakrionProposalTalk1.0x
SAY @352
= @353
= @354
IF ~~ DO ~IncrementGlobal("QI#ZakrionProposal","GLOBAL",1) SetGlobal("QI#ZakRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ QI#ZakrionProposalTalk1.0.1
SAY @355
IF ~~ + QI#ZakrionProposalTalk1.1
END

IF ~~ QI#ZakrionProposalTalk1.1
SAY @356
= @357
= @358
= @359
= @360
= @361
= @362
= @363
= @364
= @365
++ @366 + QI#ZakrionProposalTalk1.2
++ @367 + QI#ZakrionProposalTalk1.2
++ @368 + QI#ZakrionProposalTalk1.1.1
++ @369 + QI#ZakrionProposalTalk1.1.2
++ @370 + QI#ZakrionProposalTalk1.1.2
++ @371 + QI#ZakrionProposalTalk1.1x
END

IF ~~  QI#ZakrionProposalTalk1.1x
SAY @372
= @373
= @374
= @375
IF ~~ DO ~SetGlobal("QI#ZakrionProposal","GLOBAL",3) SetGlobal("QI#ZakRomanceActive","GLOBAL",3) LeaveParty() EscapeArea()~ EXIT 
END 

IF ~~ QI#ZakrionProposalTalk1.1.1
SAY @376
= @377
= @378
= @379
IF ~~ DO ~SetGlobal("QI#ZakrionProposal","GLOBAL",3) SetGlobal("QI#ZakRomanceActive","GLOBAL",3)~ EXIT 
END 

IF ~~ QI#ZakrionProposalTalk1.1.2
SAY @1468
= @1469
= @1470
= @1471
IF ~~ DO ~SetGlobal("QI#ZakRomanceActive","GLOBAL",3) SetGlobal("QI#ZakrionTalkActive","GLOBAL",1)~ EXIT 
END 

IF ~~ QI#ZakrionProposalTalk1.2
SAY @380
= @381
= @382
= @383
= @384
IF ~~ DO ~SetGlobal("QI#ZakrionProposal","GLOBAL",2) GiveItemCreate("QI#ZRING",Player1,0,0,0)~ EXIT 
END 


/* Known Romance Talk 8 - Final Talk */
IF ~Global("QI#ZakrionKnownRomanceFinalTalk","GLOBAL",1)~ QI#ZakrionKnownRomanceFinalTalk1.0
SAY @385
= @386
++ @387 + QI#ZakrionKnownRomanceFinalTalk1.0.1
++ @388 + QI#ZakrionKnownRomanceFinalTalk1.0.2
++ @389 + QI#ZakrionKnownRomanceFinalTalk1.0.3
++ @390 + QI#ZakrionKnownRomanceFinalTalk1.0.4
END 

IF ~~ QI#ZakrionKnownRomanceFinalTalk1.0.1
SAY @391
IF ~~ + QI#ZakrionKnownRomanceFinalTalk1.1
END 

IF ~~ QI#ZakrionKnownRomanceFinalTalk1.0.2
SAY @392
IF ~~ + QI#ZakrionKnownRomanceFinalTalk1.1
END 

IF ~~ QI#ZakrionKnownRomanceFinalTalk1.0.3
SAY @393
IF ~~ + QI#ZakrionKnownRomanceFinalTalk1.1
END 

IF ~~ QI#ZakrionKnownRomanceFinalTalk1.0.4
SAY @394
IF ~~ + QI#ZakrionKnownRomanceFinalTalk1.1
END 

IF ~~ QI#ZakrionKnownRomanceFinalTalk1.1
SAY @395
= @396
IF ~Global("QI#ZakrionOceanWanted","GLOBAL",1)~ + QI#ZakrionKnownRomanceFinalTalk1.1.1
IF ~!Global("QI#ZakrionOceanWanted","GLOBAL",1)~ + QI#ZakrionKnownRomanceFinalTalk1.2
END

IF ~~ QI#ZakrionKnownRomanceFinalTalk1.1.1
SAY @397 
IF ~~ + QI#ZakrionKnownRomanceFinalTalk1.2
END 

IF ~~ QI#ZakrionKnownRomanceFinalTalk1.2
SAY @398
= @399
IF ~~ DO ~IncrementGlobal("QI#ZakrionKnownRomanceFinalTalk","GLOBAL",1)~ EXIT
END 


/**************************************************************************************************
									Not Known Romance Talks
**************************************************************************************************/

/* Not Known Romance Talk 1 - Suldanessellar */
IF ~Global("QI#ZakrionNotKnownRomanceToBTalk","GLOBAL",2)~ QI#ZakrionNotKnownRomanceToBTalk1.0
SAY @400
= @401
++ @402 + QI#ZakrionNotKnownRomanceToBTalk1.0.1
++ @403 + QI#ZakrionNotKnownRomanceToBTalk1.0.2
++ @404 + QI#ZakrionNotKnownRomanceToBTalk1.0.3
++ @405 + QI#ZakrionNotKnownRomanceToBTalk1.0.4
END 

IF ~~ QI#ZakrionNotKnownRomanceToBTalk1.0.1
SAY @406
IF ~~ + QI#ZakrionNotKnownRomanceToBTalk1.1
END

IF ~~ QI#ZakrionNotKnownRomanceToBTalk1.0.2
SAY @407
= @408
IF ~~ + QI#ZakrionNotKnownRomanceToBTalk1.1
END

IF ~~ QI#ZakrionNotKnownRomanceToBTalk1.0.3
SAY @409
= @410
IF ~~ + QI#ZakrionNotKnownRomanceToBTalk1.1
END

IF ~~ QI#ZakrionNotKnownRomanceToBTalk1.0.4
SAY @411
IF ~~ + QI#ZakrionNotKnownRomanceToBTalk1.1
END

IF ~~ QI#ZakrionNotKnownRomanceToBTalk1.1
SAY @412
= @413
++ @414 + QI#ZakrionNotKnownRomanceToBTalk1.1.1
++ @415 DO ~SetGlobal("QI#ZakrionOceanWanted","GLOBAL",1)~ + QI#ZakrionNotKnownRomanceToBTalk1.1.2
++ @416 DO ~SetGlobal("QI#ZakrionOceanWanted","GLOBAL",1)~ + QI#ZakrionNotKnownRomanceToBTalk1.1.2
++ @417 + QI#ZakrionNotKnownRomanceToBTalk1.1.3
++ @418 + QI#ZakrionNotKnownRomanceToBTalk1.1.3
END

IF ~~ QI#ZakrionNotKnownRomanceToBTalk1.1.1
SAY @425
= @426
= @427
++ @415 DO ~SetGlobal("QI#ZakrionOceanWanted","GLOBAL",1)~ + QI#ZakrionNotKnownRomanceToBTalk1.1.2
++ @416 DO ~SetGlobal("QI#ZakrionOceanWanted","GLOBAL",1)~ + QI#ZakrionNotKnownRomanceToBTalk1.1.2
++ @417 + QI#ZakrionNotKnownRomanceToBTalk1.1.3
++ @418 + QI#ZakrionNotKnownRomanceToBTalk1.1.3
END

IF ~~ QI#ZakrionNotKnownRomanceToBTalk1.1.2
SAY @419
IF ~~ + QI#ZakrionNotKnownRomanceToBTalk1.2
END

IF ~~ QI#ZakrionNotKnownRomanceToBTalk1.1.3
SAY @420
IF ~~ + QI#ZakrionNotKnownRomanceToBTalk1.2
END

IF ~~ QI#ZakrionNotKnownRomanceToBTalk1.2
SAY @421
= @422
= @423
= @424
IF ~~ DO ~IncrementGlobal("QI#ZakrionNotKnownRomanceToBTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakrionRomanceToBTimer","GLOBAL",3600)~ EXIT
END 

/* Not Known Romance Talk 2 - Running Away */
IF ~Global("QI#ZakrionNotKnownRomanceToBTalk","GLOBAL",4)~ QI#ZakrionNotKnownRomanceToBTalk2.0
SAY @428
= @429
++ @430 + QI#ZakrionNotKnownRomanceToBTalk2.0.1
++ @431 + QI#ZakrionNotKnownRomanceToBTalk2.0.2
++ @432 + QI#ZakrionNotKnownRomanceToBTalk2.0.2
++ @433 + QI#ZakrionNotKnownRomanceToBTalk2.0x
END 

IF ~~ QI#ZakrionNotKnownRomanceToBTalk2.0x
SAY @434
= @435
IF ~~ DO ~IncrementGlobal("QI#ZakrionNotKnownRomanceToBTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakrionRomanceToBTimer","GLOBAL",3600)~ EXIT
END 

IF ~~ QI#ZakrionNotKnownRomanceToBTalk2.0.1
SAY @436
IF ~~ + QI#ZakrionNotKnownRomanceToBTalk2.1
END

IF ~~ QI#ZakrionNotKnownRomanceToBTalk2.0.2
SAY @437
IF ~~ + QI#ZakrionNotKnownRomanceToBTalk2.1
END

IF ~~ QI#ZakrionNotKnownRomanceToBTalk2.1
SAY @438
= @439
= @440
= @441
= @442
++ @443 + QI#ZakrionNotKnownRomanceToBTalk2.1.1
++ @444 + QI#ZakrionNotKnownRomanceToBTalk2.1.2
++ @445 + QI#ZakrionNotKnownRomanceToBTalk2.1.3
++ @446 + QI#ZakrionNotKnownRomanceToBTalk2.1.4
++ @447 + QI#ZakrionNotKnownRomanceToBTalk2.1.5
++ @448 + QI#ZakrionNotKnownRomanceToBTalk2.1.6
END

IF ~~ QI#ZakrionNotKnownRomanceToBTalk2.1.1
SAY @449
= @450
IF ~~ + QI#ZakrionNotKnownRomanceToBTalk2.2
END 

IF ~~ QI#ZakrionNotKnownRomanceToBTalk2.1.2
SAY @451
= @452
IF ~~ + QI#ZakrionNotKnownRomanceToBTalk2.2
END 

IF ~~ QI#ZakrionNotKnownRomanceToBTalk2.1.3
SAY @453
= @454
IF ~~ + QI#ZakrionNotKnownRomanceToBTalk2.2
END 

IF ~~ QI#ZakrionNotKnownRomanceToBTalk2.1.4
SAY @455
IF ~~ + QI#ZakrionNotKnownRomanceToBTalk2.2
END 

IF ~~ QI#ZakrionNotKnownRomanceToBTalk2.1.5
SAY @456
= @457
= @458
IF ~~ + QI#ZakrionNotKnownRomanceToBTalk2.2
END 

IF ~~ QI#ZakrionNotKnownRomanceToBTalk2.1.6
SAY @459
= @460
= @461
++ @462 + QI#ZakrionNotKnownRomanceToBTalk2.1.6a
++ @463 + QI#ZakrionNotKnownRomanceToBTalk2.1.6b
++ @464 + QI#ZakrionNotKnownRomanceToBTalk2.1.6c
END 

IF ~~ QI#ZakrionNotKnownRomanceToBTalk2.1.6a
SAY @465
= @466
= @467
++ @468 + QI#ZakrionNotKnownRomanceToBTalk2.1.6ax
++ @469 + QI#ZakrionNotKnownRomanceToBTalk2.1.6ax
++ @470 + QI#ZakrionNotKnownRomanceToBTalk2.1.6aa
END 

IF ~~ QI#ZakrionNotKnownRomanceToBTalk2.1.6b
SAY @471
++ @468 + QI#ZakrionNotKnownRomanceToBTalk2.1.6ax
++ @469 + QI#ZakrionNotKnownRomanceToBTalk2.1.6ax
++ @470 + QI#ZakrionNotKnownRomanceToBTalk2.1.6aa
END 

IF ~~ QI#ZakrionNotKnownRomanceToBTalk2.1.6c
SAY @482
++ @468 + QI#ZakrionNotKnownRomanceToBTalk2.1.6ax
++ @469 + QI#ZakrionNotKnownRomanceToBTalk2.1.6ax
++ @470 + QI#ZakrionNotKnownRomanceToBTalk2.1.6aa
END 

IF ~~ QI#ZakrionNotKnownRomanceToBTalk2.1.6ax
SAY @472
= @473
= @474
= @475
= @476
= @477
IF ~~ DO ~IncrementGlobal("QI#ZakrionNotKnownRomanceToBTalk","GLOBAL",1) SetGlobal("QI#ZakRomanceActive","GLOBAL",3) SetGlobal("QI#ZakrionReturnsHome","GLOBAL",1) LeaveParty() EscapeArea()~ EXIT
END 

IF ~~ QI#ZakrionNotKnownRomanceToBTalk2.1.6aa
SAY @478
= @483
IF ~~ + QI#ZakrionNotKnownRomanceToBTalk2.2
END 

IF ~~ QI#ZakrionNotKnownRomanceToBTalk2.2
SAY @479
= @480
= @481
IF ~~ DO ~IncrementGlobal("QI#ZakrionNotKnownRomanceToBTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakrionRomanceToBTimer","GLOBAL",3600)~ EXIT
END 


/* Not Known Romance Talk 3 - Where would we want to go after all this? */
IF ~Global("QI#ZakrionNotKnownRomanceToBTalk","GLOBAL",6)~ QI#ZakrionNotKnownRomanceToBTalk3.0
SAY @276
= @484
++ @278 + QI#ZakrionNotKnownRomanceToBTalk3.0.1
++ @279 + QI#ZakrionNotKnownRomanceToBTalk3.0.2
++ @280 + QI#ZakrionNotKnownRomanceToBTalk3.0.3
++ @281 + QI#ZakrionNotKnownRomanceToBTalk3.0.4
++ @282 + QI#ZakrionNotKnownRomanceToBTalk3.0.5
++ @283 + QI#ZakrionNotKnownRomanceToBTalk3.0x
END 

IF ~~ QI#ZakrionNotKnownRomanceToBTalk3.0x
SAY @485
IF ~~ DO ~IncrementGlobal("QI#ZakrionNotKnownRomanceToBTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakrionRomanceToBTimer","GLOBAL",3600)~ EXIT
END 

IF ~~ QI#ZakrionNotKnownRomanceToBTalk3.0.1
SAY @486
IF ~~ + QI#ZakrionNotKnownRomanceToBTalk3.1
END 

IF ~~ QI#ZakrionNotKnownRomanceToBTalk3.0.2
SAY @487
IF ~~ + QI#ZakrionNotKnownRomanceToBTalk3.1
END 

IF ~~ QI#ZakrionNotKnownRomanceToBTalk3.0.3
SAY @488
IF ~~ + QI#ZakrionNotKnownRomanceToBTalk3.1
END 

IF ~~ QI#ZakrionNotKnownRomanceToBTalk3.0.4
SAY @489
= @490
IF ~~ + QI#ZakrionNotKnownRomanceToBTalk3.1
END 

IF ~~ QI#ZakrionNotKnownRomanceToBTalk3.0.5
SAY @491
IF ~~ + QI#ZakrionNotKnownRomanceToBTalk3.1
END 

IF ~~ QI#ZakrionNotKnownRomanceToBTalk3.1
SAY @492
= @493
= @494
= @495
++ @496 DO ~SetGlobal("QI#ZakrionFamilyWanted","GLOBAL",1) SetGlobal("QI#ZakrionOceanWanted","GLOBAL",1)~ + QI#ZakrionNotKnownRomanceToBTalk3.1.1
++ @497 DO ~SetGlobal("QI#ZakrionFamilyWanted","GLOBAL",1)~ + QI#ZakrionNotKnownRomanceToBTalk3.1.2
++ @498 DO ~SetGlobal("QI#ZakrionOceanWanted","GLOBAL",1)~ + QI#ZakrionNotKnownRomanceToBTalk3.1.3
++ @499 + QI#ZakrionNotKnownRomanceToBTalk3.1.4
END 

IF ~~ QI#ZakrionNotKnownRomanceToBTalk3.1.1
SAY @500
IF ~~ + QI#ZakrionNotKnownRomanceToBTalk3.2
END 

IF ~~ QI#ZakrionNotKnownRomanceToBTalk3.1.2
SAY @501
IF ~~ + QI#ZakrionNotKnownRomanceToBTalk3.2
END 

IF ~~ QI#ZakrionNotKnownRomanceToBTalk3.1.3
SAY @502
IF ~~ + QI#ZakrionNotKnownRomanceToBTalk3.2
END 

IF ~~ QI#ZakrionNotKnownRomanceToBTalk3.1.4
SAY @503
= @504
++ @505 + QI#ZakrionNotKnownRomanceToBTalk3.1.4a
++ @506 + QI#ZakrionNotKnownRomanceToBTalk3.1.4b
++ @507 + QI#ZakrionNotKnownRomanceToBTalk3.1.4b
++ @508 + QI#ZakrionNotKnownRomanceToBTalk3.1.4c
END 

IF ~~ QI#ZakrionNotKnownRomanceToBTalk3.1.4a
SAY @509
= @510
= @511
IF ~~ DO ~IncrementGlobal("QI#ZakrionNotKnownRomanceToBTalk","GLOBAL",1) SetGlobal("QI#ZakRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ QI#ZakrionNotKnownRomanceToBTalk3.1.4b
SAY @512
= @513
= @514
= @515
IF ~~ DO ~SetGlobal("QI#ZakrionOceanWanted","GLOBAL",1)~ + QI#ZakrionNotKnownRomanceToBTalk3.2
END

IF ~~ QI#ZakrionNotKnownRomanceToBTalk3.1.4c
SAY @516
= @517
++ @518 + QI#ZakrionNotKnownRomanceToBTalk3.1.4cx 
++ @519 + QI#ZakrionNotKnownRomanceToBTalk3.1.4b
END

IF ~~ QI#ZakrionNotKnownRomanceToBTalk3.1.4cx 
SAY @520
IF ~~ DO ~IncrementGlobal("QI#ZakrionNotKnownRomanceToBTalk","GLOBAL",1) SetGlobal("QI#ZakRomanceActive","GLOBAL",3)~ EXIT
END 

IF ~~ QI#ZakrionNotKnownRomanceToBTalk3.2
SAY @521
= @522
IF ~~ DO ~IncrementGlobal("QI#ZakrionNotKnownRomanceToBTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakrionRomanceToBTimer","GLOBAL",3600)~ EXIT
END 


/* Not Known Romance Talk 4 - Saradush and Family Quest */
IF ~Global("QI#ZakrionNKRomanceDestTalk","GLOBAL",1)~ QI#ZakrionNKRomanceDestTalk1.0
SAY @307
++ @78 + QI#ZakrionNKRomanceDestTalk1.0.1
++ @79 + QI#ZakrionNKRomanceDestTalk1.0.2
++ @80 + QI#ZakrionNKRomanceDestTalk1.0.3
++ @81 + QI#ZakrionNKRomanceDestTalk1.0x
END 

IF ~~ QI#ZakrionNKRomanceDestTalk1.0x
SAY @84
= @85
= @86
= @87
= @88 
= @89
= @90
= @91
IF ~~ DO ~SetGlobal("QI#ZakRomanceActive","GLOBAL",3) IncrementGlobal("QI#ZakrionNKRomanceDestTalk","GLOBAL",1) LeaveParty() EscapeArea()~ EXIT
END 

IF ~~ QI#ZakrionNKRomanceDestTalk1.0.1
SAY @82
IF ~~ + QI#ZakrionNKRomanceDestTalk1.1
END 

IF ~~ QI#ZakrionNKRomanceDestTalk1.0.2
SAY @83
IF ~~ + QI#ZakrionNKRomanceDestTalk1.1
END 

IF ~~ QI#ZakrionNKRomanceDestTalk1.0.3
SAY @92
IF ~~ + QI#ZakrionNKRomanceDestTalk1.1
END 

IF ~~ QI#ZakrionNKRomanceDestTalk1.1
SAY @93
++ @94 + QI#ZakrionNKRomanceDestTalk1.1.1
++ @95 + QI#ZakrionNKRomanceDestTalk1.1.2
++ @96 + QI#ZakrionNKRomanceDestTalk1.1.3
++ @97 + QI#ZakrionNKRomanceDestTalk1.1.4
END 

IF ~~ QI#ZakrionNKRomanceDestTalk1.1.1
SAY @98
IF ~~ + QI#ZakrionNKRomanceDestTalk1.2
END 

IF ~~ QI#ZakrionNKRomanceDestTalk1.1.2
SAY @99
IF ~~ + QI#ZakrionNKRomanceDestTalk1.2
END 

IF ~~ QI#ZakrionNKRomanceDestTalk1.1.3
SAY @100
IF ~~ + QI#ZakrionNKRomanceDestTalk1.2
END 

IF ~~ QI#ZakrionNKRomanceDestTalk1.1.4
SAY @101
IF ~~ + QI#ZakrionNKRomanceDestTalk1.2
END 

IF ~~ QI#ZakrionNKRomanceDestTalk1.2
SAY @102
++ @103 + QI#ZakrionNKRomanceDestTalk1.2.1
++ @104 + QI#ZakrionNKRomanceDestTalk1.3
END

IF ~~ QI#ZakrionNKRomanceDestTalk1.2.1
SAY @106
= @107
IF ~~ DO ~IncrementGlobal("QI#ZakrionNKRomanceDestTalk","GLOBAL",1)~ EXIT 
END

IF ~~ QI#ZakrionNKRomanceDestTalk1.3
SAY @105
IF ~~ DO ~IncrementGlobal("QI#ZakrionNKRomanceDestTalk","GLOBAL",1) SetGlobal("QI#ZakrionCheckedBodies","GLOBAL",1) StartCutScene("QI#ZACU1")~ EXIT
END 

END

/* Not Known Romance Talk 5a  - Everyone is Alive */
CHAIN IF ~Global("QI#ZakrionNKFamilyTalk","GLOBAL",2) Global("QI#ZakrionFamilyAlive","GLOBAL",1)~ THEN QI#ZA25J QI#ZakrionNKFamilyTalk1.0a
@111
= @112
== QI#ZME25 @113
== QI#ZA25J @114
= IF ~Global("QI#ZakrionCheckBodies","GLOBAL",3)~ @115
= @116
== QI#ZME25 @117
= @118
== QI#RO25A @119
== QI#ZME25 @120
= @121
== QI#ZA25J @122
== QI#RO25A @123
= @124
== QI#ZA25J @125
= @126
== QI#ZME25 @127
== QI#RO25A @128
== QI#ZA25J @129
= @130
== QI#RO25A @131
== QI#ZA25J @132
== QI#ZME25 @133
== QI#ZA25J @134
== QI#ZME25 @308
== QI#ZA25J @309
== QI#ZME25 @523
== QI#ZA25J @524
DO ~IncrementGlobal("QI#ZakrionNKFamilyTalk","GLOBAL",1)~ EXIT

/* Not Known Romance Talk 5b - Family is Dead */
CHAIN IF ~Global("QI#ZakrionNKFamilyTalk","GLOBAL",2) !Global("QI#ZakrionFamilyAlive","GLOBAL",1)~ THEN QI#ZA25J QI#ZakrionNKFamilyTalk1.0b
@139
= @140
== QI#RO25A @141
== QI#ZA25J @142
== QI#RO25A @143
= @144
= @145
= @146
= @147
== QI#ZA25J @148
== QI#RO25A @149
== QI#ZA25J @150
= @151
== QI#RO25A @525
== QI#ZA25J @526
DO ~IncrementGlobal("QI#ZakrionNKFamilyTalk","GLOBAL",1)~ EXIT


APPEND QI#ZA25J 

// Family is Alive
IF ~Global("QI#ZakrionNKFamilyTalk","GLOBAL",3) Global("QI#ZakrionFamilyAlive","GLOBAL",1)~ QI#ZakrionNKFamilyTalk1.1a
SAY @135
= @136
= @137
= @138
IF ~~ DO ~IncrementGlobal("QI#ZakrionNKFamilyTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakrionRomanceToBTimer","GLOBAL",3600)~ EXIT 
END 

// Family is Dead
IF ~Global("QI#ZakrionNKFamilyTalk","GLOBAL",3) !Global("QI#ZakrionFamilyAlive","GLOBAL",1)~ QI#ZakrionNKFamilyTalk1.1b
SAY @152
++ @153 + QI#ZakrionNKFamilyTalk1.2b
++ @154 + QI#ZakrionNKFamilyTalk1.2b
++ @155 + QI#ZakrionNKFamilyTalk1.2b
++ @156 + QI#ZakrionNKFamilyTalk1.2b
END 

IF ~~ QI#ZakrionNKFamilyTalk1.2b
SAY @157
= @158
++ @159 + QI#ZakrionNKFamilyTalk1.3b
++ @160 + QI#ZakrionNKFamilyTalk1.3b
END 

IF ~~ QI#ZakrionNKFamilyTalk1.3b
SAY @161
= @162
= @163
IF ~~ DO ~IncrementGlobal("QI#ZakrionNKFamilyTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakrionRomanceToBTimer","GLOBAL",3600)~ EXIT 
END 


/* Not Known Romance Talk 6 - After the Third Challenge */
IF ~Global("QI#ZakrionNotKnownChallengeTalk","GLOBAL",1)~ QI#ZakrionNotKnownChallengeTalk1.0
SAY @527
= @528
++ @529 + QI#ZakrionNotKnownChallengeTalk1.0.1
++ @530 + QI#ZakrionNotKnownChallengeTalk1.0.2
++ @531 + QI#ZakrionNotKnownChallengeTalk1.0.3
++ @532 + QI#ZakrionNotKnownChallengeTalk1.0.4
++ @533 + QI#ZakrionNotKnownChallengeTalk1.0.5
END 

IF ~~ QI#ZakrionNotKnownChallengeTalk1.0.1
SAY @534
= @535
++ @530 + QI#ZakrionNotKnownChallengeTalk1.0.2
++ @531 + QI#ZakrionNotKnownChallengeTalk1.0.3
++ @532 + QI#ZakrionNotKnownChallengeTalk1.0.4
++ @533 + QI#ZakrionNotKnownChallengeTalk1.0.5
END 

IF ~~ QI#ZakrionNotKnownChallengeTalk1.0.2
SAY @536
= @537
IF ~~ + QI#ZakrionNotKnownChallengeTalk1.1
END 

IF ~~ QI#ZakrionNotKnownChallengeTalk1.0.3
SAY @538
IF ~~ + QI#ZakrionNotKnownChallengeTalk1.1
END 

IF ~~ QI#ZakrionNotKnownChallengeTalk1.0.4
SAY @539
IF ~~ + QI#ZakrionNotKnownChallengeTalk1.1
END 

IF ~~ QI#ZakrionNotKnownChallengeTalk1.0.5
SAY @540
= @541
IF ~~ + QI#ZakrionNotKnownChallengeTalk1.1
END 

IF ~~ QI#ZakrionNotKnownChallengeTalk1.1
SAY @542
= @543
= @544
= @545
IF ~~ DO ~IncrementGlobal("QI#ZakrionNotKnownChallengeTalk","GLOBAL",1)~ EXIT 
END 


/* Not Known Romance Talk 7 - Final Talk */
IF ~Global("QI#ZakrionNKRomanceFinalTalk","GLOBAL",1)~ QI#ZakrionNKRomanceFinalTalk1.0
SAY @546
= @547
++ @387 + QI#ZakrionNKRomanceFinalTalk1.0.1
++ @388 + QI#ZakrionNKRomanceFinalTalk1.0.2
++ @389 + QI#ZakrionNKRomanceFinalTalk1.0.3
++ @390 + QI#ZakrionNKRomanceFinalTalk1.0.4
END 

IF ~~ QI#ZakrionNKRomanceFinalTalk1.0.1
SAY @391
IF ~~ + QI#ZakrionNKRomanceFinalTalk1.1
END

IF ~~ QI#ZakrionNKRomanceFinalTalk1.0.2
SAY @392
IF ~~ + QI#ZakrionNKRomanceFinalTalk1.1
END 

IF ~~ QI#ZakrionNKRomanceFinalTalk1.0.3
SAY @393
IF ~~ + QI#ZakrionNKRomanceFinalTalk1.1
END 

IF ~~ QI#ZakrionNKRomanceFinalTalk1.0.4
SAY @394
IF ~~ + QI#ZakrionNKRomanceFinalTalk1.1
END 

IF ~~ QI#ZakrionNKRomanceFinalTalk1.1
SAY @548
= @549
= @550
IF ~Global("QI#ZakrionOceanWanted","GLOBAL",1)~ + QI#ZakrionNKRomanceFinalTalk1.1.1
IF ~!Global("QI#ZakrionOceanWanted","GLOBAL",1)~ + QI#ZakrionNKRomanceFinalTalk1.2
END 

IF ~~ QI#ZakrionNKRomanceFinalTalk1.1.1
SAY @397
IF ~~ + QI#ZakrionNKRomanceFinalTalk1.2
END

IF ~~ QI#ZakrionNKRomanceFinalTalk1.2
SAY @551
= @552
IF ~~ DO ~IncrementGlobal("QI#ZakrionNKRomanceFinalTalk","GLOBAL",1)~ EXIT 
END 


/**************************************************************************************************
								Player Initiated Dialogue
**************************************************************************************************/
 
IF ~IsGabber(Player1)~ QI#Zak25PID
SAY @1267
+ ~!Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1268 + QI#ZakYourself1
+ ~Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1269 + QI#ZakYourself2
+ ~GlobalGT("QI#ZakrionTalk","GLOBAL",6)~ + @1270 + QI#ZakShipCrashReminder
+ ~RandomNum(3,1)~ + @1271 + QI#ZakButtercup1
+ ~RandomNum(3,2)~ + @1271 + QI#ZakButtercup2
+ ~RandomNum(3,3)~ + @1271 + QI#ZakButtercup3
+ ~RandomNum(4,1)~ + @1272 + QI#ZakAdvice1
+ ~RandomNum(4,2)~ + @1272 + QI#ZakAdvice2
+ ~RandomNum(4,3)~ + @1272 + QI#ZakAdvice3
+ ~RandomNum(4,4)~ + @1272 + QI#ZakAdvice4
+ ~RandomNum(6,1)~ + @1273 + QI#ZakSmile1
+ ~RandomNum(6,2)~ + @1273 + QI#ZakSmile2
+ ~RandomNum(6,3)~ + @1273 + QI#ZakSmile3
+ ~RandomNum(6,4) Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1273 + QI#ZakRomSmile1
+ ~RandomNum(6,5) Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1273 + QI#ZakRomSmile2
+ ~RandomNum(6,6) Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1273 + QI#ZakRomSmile3
+ ~RandomNum(4,1)~ + @1274 + QI#ZakHug1
+ ~RandomNum(4,2)~ + @1274 + QI#ZakHug2
+ ~RandomNum(4,3) Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1274 + QI#ZakHug3
+ ~RandomNum(4,4) Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1274 + QI#ZakHug4
+ ~RandomNum(6,1) Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1274 + QI#ZakKiss1
+ ~RandomNum(6,2) Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1274 + QI#ZakKiss2
+ ~RandomNum(6,3) Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1274 + QI#ZakKiss3
+ ~RandomNum(6,4) Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1274 + QI#ZakKiss4
+ ~RandomNum(6,5) Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1274 + QI#ZakKiss5
+ ~RandomNum(6,6) Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1274 + QI#ZakKiss6
+ ~RandomNum(5,1) Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1275 + QI#ZakKissPassionately1
+ ~RandomNum(5,2) Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1275 + QI#ZakKissPassionately2
+ ~RandomNum(5,3) Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1275 + QI#ZakKissPassionately3
+ ~RandomNum(5,4) Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1275 + QI#ZakKissPassionately4
+ ~RandomNum(5,5) Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1275 + QI#ZakKissPassionately5
+ ~RandomNum(3,1) Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1276 + QI#ZakHair1
+ ~RandomNum(3,2) Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1276 + QI#ZakHair2
+ ~RandomNum(3,3) Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1276 + QI#ZakHair3
+ ~RandomNum(3,1)~ + @1277 + QI#ZakFoot1
+ ~RandomNum(3,2)~ + @1277 + QI#ZakFoot2
+ ~RandomNum(3,3)~ + @1277 + QI#ZakFoot3
+ ~RandomNum(5,1)~ + @1278 + QI#ZakPatBack1
+ ~RandomNum(5,2)~ + @1278 + QI#ZakPatBack2
+ ~RandomNum(5,3)~ + @1278 + QI#ZakPatBack3
+ ~RandomNum(5,4)~ + @1278 + QI#ZakPatBack4
+ ~RandomNum(5,5)~ + @1278 + QI#ZakPatBack5
+ ~RandomNum(4,1)
   OR(2)
      AreaCheck("AR5501") // Amkethran Inn
      AreaCheck("AR5003")~ // Saradush Tavern
	+ ~Fancy a drink?~ + QI#ZakTavern1
+ ~RandomNum(4,2)
   OR(2)
      AreaCheck("AR5501") // Amkethran Inn
      AreaCheck("AR5003")~ // Saradush Tavern
	+ @1279 + QI#ZakTavern2
+ ~RandomNum(4,3)
   OR(2)
      AreaCheck("AR5501") // Amkethran Inn
      AreaCheck("AR5003")~ // Saradush Tavern
	+ @1279 + QI#ZakTavern3
+ ~RandomNum(4,4)
   Global("QI#ZakRomanceActive","GLOBAL",2)
   OR(2)
      AreaCheck("AR5501") // Amkethran Inn
      AreaCheck("AR5003")~ // Saradush Tavern
	+ @1279 + QI#ZakTavern3
+ ~RandomNum(4,1) 
   !Global("QI#ZakSpentNightLater","GLOBAL",1) 
   OR(2)
      GlobalGT("QI#ZakrionNotKnownRomanceTalk","GLOBAL",15)
	  GlobalGT("QI#ZakrionKnownRomanceTalk","GLOBAL",15)~ + @1280 + QI#ZakRomAlone1
+ ~RandomNum(4,2)
   !Global("QI#ZakSpentNightLater","GLOBAL",1) 
   OR(2)
      GlobalGT("QI#ZakrionNotKnownRomanceTalk","GLOBAL",15)
	  GlobalGT("QI#ZakrionKnownRomanceTalk","GLOBAL",15)~ + @1280 + QI#ZakRomAlone2
+ ~RandomNum(4,3)
   !Global("QI#ZakSpentNightLater","GLOBAL",1) 
   OR(2)
      GlobalGT("QI#ZakrionNotKnownRomanceTalk","GLOBAL",15)
	  GlobalGT("QI#ZakrionKnownRomanceTalk","GLOBAL",15)~ + @1280 + QI#ZakRomAlone3
+ ~RandomNum(4,4)
   !Global("QI#ZakSpentNightLater","GLOBAL",1) 
   OR(2)
      GlobalGT("QI#ZakrionNotKnownRomanceTalk","GLOBAL",15)
	  GlobalGT("QI#ZakrionKnownRomanceTalk","GLOBAL",15)~ + @1280 + QI#ZakRomAlone4
+ ~RandomNum(2,1)~ + @1281 + QI#ZakExamine1
+ ~RandomNum(2,2)~ + @1281 + QI#ZakExamine2
+ ~RandomNum(5,1)~ + @1282 + QI#ZakGoodTeam1
+ ~RandomNum(5,2)~ + @1282 + QI#ZakGoodTeam2
+ ~RandomNum(5,3)~ + @1282 + QI#ZakGoodTeam3
+ ~RandomNum(5,4)~ + @1282 + QI#ZakGoodTeam4
+ ~RandomNum(5,5) Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1282 + QI#ZakGoodTeam5
+ ~RandomNum(4,1) Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1283 + QI#ZakHoldHand1
+ ~RandomNum(4,2) Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1283 + QI#ZakHoldHand2
+ ~RandomNum(4,3) Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1283 + QI#ZakHoldHand3
+ ~RandomNum(4,4) Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1283 + QI#ZakHoldHand4
+ ~RandomNum(3,1)~ + @1284 + QI#ZakWalk1
+ ~RandomNum(3,2)~ + @1284 + QI#ZakWalk2
+ ~RandomNum(3,3) Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1284 + QI#ZakWalk3
+ ~RandomNum(3,1) Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1285 + QI#ZakLinkArm1
+ ~RandomNum(3,2) Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1285 + QI#ZakLinkArm2
+ ~RandomNum(3,3) Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1285 + QI#ZakLinkArm3
+ ~RandomNum(3,1) Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1286 + QI#ZakBiteArm1
+ ~RandomNum(3,2) Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1286 + QI#ZakBiteArm2
+ ~RandomNum(3,3) Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1286 + QI#ZakBiteArm3
+ ~RandomNum(4,1) Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1287 + QI#ZakRump1
+ ~RandomNum(4,2) Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1287 + QI#ZakRump2
+ ~RandomNum(4,3) Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1287 + QI#ZakRump3
+ ~RandomNum(4,4) Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1287 + QI#ZakRump4
+ ~Global("QI#ZakMomEncounter","GLOBAL",4) GlobalGT("QI#ZakRomanceActive","GLOBAL",8)~ + @1288 + QI#ZakMom
+ ~RandomNum(3,1) Global("QI#ZakrionProposal","GLOBAL",2)~ + @1419 + QI#ZakFutureWife1
+ ~RandomNum(3,2) Global("QI#ZakrionProposal","GLOBAL",2)~ + @1419 + QI#ZakFutureWife2
+ ~RandomNum(3,3) Global("QI#ZakrionProposal","GLOBAL",2)~ + @1419 + QI#ZakFutureWife3
+ ~GlobalGT("QI#ZakSaradushFamily","GLOBAL",2)~ + @1423 + QI#ZakRoeStory
+ ~RandomNum(3,1)~ + @1450 + QI#ZakTeam1
+ ~RandomNum(3,2)~ + @1450 + QI#ZakTeam2
+ ~RandomNum(3,3)~ + @1450 + QI#ZakTeam3
+ ~RandomNum(3,1) Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1455 + QI#ZakLoveYou1
+ ~RandomNum(3,2) Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1455 + QI#ZakLoveYou2
+ ~RandomNum(3,3) Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1455 + QI#ZakLoveYou3
+ ~RandomNum(3,1) Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1459 + QI#ZakHairPlay1
+ ~RandomNum(3,2) Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1459 + QI#ZakHairPlay2
+ ~RandomNum(3,3) Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1459 + QI#ZakHairPlay3
+ ~Global("QI#ZakSpentNightLater","GLOBAL",1)~ + @1289 + QI#ZakReady
++ @1290 EXIT
END 

IF ~~ QI#ZakYourself1
SAY @1291
= @1292
= @1293
IF ~~ EXIT
END 

IF ~~ QI#ZakYourself2
SAY @1294
= @1295
IF ~~ EXIT 
END 

IF ~~ QI#ZakAdvice1
SAY @1296
= @1297
IF ~~ EXIT 
END

IF ~~ QI#ZakAdvice2
SAY @1298
= @1299
IF ~~ EXIT 
END

IF ~~ QI#ZakAdvice3
SAY @1300
= @1301
IF ~~ EXIT 
END

IF ~~ QI#ZakAdvice4
SAY @1418
IF ~~ EXIT
END 

IF ~~ QI#ZakSmile1
SAY @1302
IF ~~ EXIT
END 

IF ~~ QI#ZakSmile2
SAY @1303
IF ~~ EXIT
END 

IF ~~ QI#ZakSmile3
SAY @1304
IF ~~ EXIT
END 

IF ~~ QI#ZakRomSmile1
SAY @1305
IF ~~ EXIT
END 

IF ~~ QI#ZakRomSmile2
SAY @1306
IF ~~ EXIT
END 

IF ~~ QI#ZakRomSmile3
SAY @1416
IF ~~ EXIT
END 

IF ~~ QI#ZakShipCrashReminder
SAY @1307
= @1308
= @1309
= @1310
= @1311
= @1312
= @1313
IF ~~ EXIT
END 

IF ~~ QI#ZakMom
SAY @1314
= @1315
= @1316
IF ~~ EXIT 
END

IF ~~ QI#ZakReady
SAY @1317
IF ~~ DO ~IncrementGlobal("QI#ZakSpentNightLater","GLOBAL",1)~ EXIT // When this variable = 2, then the night has been spent together
END

IF ~~ QI#ZakKiss1
SAY @1318
= @1319
= @1320
IF ~~ EXIT
END 

IF ~~ QI#ZakKiss2
SAY @1321
IF ~~ EXIT
END 

IF ~~ QI#ZakKiss3
SAY @1322
IF ~~ EXIT
END 

IF ~~ QI#ZakKiss4
SAY @1323
IF ~~ EXIT
END 

IF ~~ QI#ZakKiss5
SAY @1324
IF ~~ EXIT
END 

IF ~~ QI#ZakKiss6
SAY @1325
IF ~~ EXIT
END 

IF ~~ QI#ZakKissPassionately1
SAY @1326
= @1327
= @1328
IF ~~ EXIT
END 

IF ~~ QI#ZakKissPassionately2
SAY @1329
= @1330
IF ~~ EXIT
END 

IF ~~ QI#ZakKissPassionately3
SAY @1331
IF ~~ EXIT
END 

IF ~~ QI#ZakKissPassionately4
SAY @1332
= @1333
IF ~~ EXIT
END 

IF ~~ QI#ZakKissPassionately5
SAY @1417
IF ~~ EXIT
END 

IF ~~ QI#ZakHair1
SAY @1334
= @1335
IF ~~ EXIT
END 

IF ~~ QI#ZakHair2
SAY @1336
= @1337
IF ~~ EXIT
END 

IF ~~ QI#ZakHair3
SAY @1338
IF ~~ EXIT
END 

IF ~~ QI#ZakFoot1
SAY @1339
IF ~~ EXIT
END 

IF ~~ QI#ZakFoot2
SAY @1340
= @1341
IF ~~ EXIT
END 

IF ~~ QI#ZakFoot3
SAY @1342
= @1343
IF ~~ EXIT
END 

IF ~~ QI#ZakPatBack1
SAY @1344
IF ~~ EXIT
END 

IF ~~ QI#ZakPatBack2
SAY @1345
IF ~~ EXIT
END 

IF ~~ QI#ZakPatBack3
SAY @1346
IF ~~ EXIT
END 

IF ~~ QI#ZakPatBack4
SAY @1347
IF ~~ EXIT
END 

IF ~~ QI#ZakPatBack5
SAY @1348
IF ~~ EXIT
END 

IF ~~ QI#ZakButtercup1
SAY @1349
IF ~~ EXIT
END 

IF ~~ QI#ZakButtercup2
SAY @1350
= @1351
= @1352
IF ~~ EXIT
END 

IF ~~ QI#ZakButtercup3
SAY @1353
= @1354
IF ~~ EXIT
END 

IF ~~ QI#ZakTavern1
SAY @1355
IF ~~ EXIT
END 

IF ~~ QI#ZakTavern2
SAY @1356
IF ~~ EXIT
END 

IF ~~ QI#ZakTavern3
SAY @1357
IF ~~ EXIT
END

IF ~~ QI#ZakTavern4
SAY @1358
= @1359
IF ~~ EXIT
END 

IF ~~ QI#ZakRomAlone1
SAY @1360
IF ~~ EXIT
END 

IF ~~ QI#ZakRomAlone2
SAY @1361
IF ~~ EXIT
END 

IF ~~ QI#ZakRomAlone3
SAY @1362
IF ~~ EXIT
END 

IF ~~ QI#ZakRomAlone4
SAY @1363
= @1364
IF ~~ EXIT
END 

IF ~~ QI#ZakExamine1
SAY @1365
= @1366
= @1367
= @1368
= @1369
= @1370
IF ~~ EXIT
END

IF ~~ QI#ZakExamine2
SAY @1371
= @1372
++ @1373 + QI#ZakExamine2.1
++ @1374 EXIT 
END

IF ~~ QI#ZakExamine2.1
SAY @1375
= @1376
= @1377
= @1378
= @1379
= @1380
IF ~~ EXIT
END 

IF ~~ QI#ZakGoodTeam1
SAY @1381
= @1382
IF ~~ EXIT
END 

IF ~~ QI#ZakGoodTeam2
SAY @1383
IF ~~ EXIT
END 

IF ~~ QI#ZakGoodTeam3
SAY @1384
IF ~~ EXIT
END 

IF ~~ QI#ZakGoodTeam4
SAY @1385
IF ~~ EXIT
END 

IF ~~ QI#ZakGoodTeam5
SAY @1386
IF ~~ EXIT
END 

IF ~~ QI#ZakHoldHand1
SAY @1387
IF ~~ EXIT
END 

IF ~~ QI#ZakHoldHand2
SAY @1388
IF ~~ EXIT
END 

IF ~~ QI#ZakHoldHand3
SAY @1389
IF ~~ EXIT
END 

IF ~~ QI#ZakHoldHand4
SAY @1390
= @1391
= @1392
IF ~~ EXIT
END 

IF ~~ QI#ZakWalk1
SAY @1393
IF ~~ EXIT
END 

IF ~~ QI#ZakWalk2
SAY @1394
IF ~~ EXIT
END 

IF ~~ QI#ZakWalk3
SAY @1395
IF ~~ EXIT
END 

IF ~~ QI#ZakLinkArm1
SAY @1396
IF ~~ EXIT
END 

IF ~~ QI#ZakLinkArm2
SAY @1397
IF ~~ EXIT
END 

IF ~~ QI#ZakLinkArm3
SAY @1398
IF ~~ EXIT
END 

IF ~~ QI#ZakBiteArm1
SAY @1399
IF ~~ EXIT
END 

IF ~~ QI#ZakBiteArm2
SAY @1400
= @1401
IF ~~ EXIT
END 

IF ~~ QI#ZakBiteArm3
SAY @1402
IF ~~ EXIT
END 

IF ~~ QI#ZakRump1
SAY @1403
IF ~~ EXIT
END 

IF ~~ QI#ZakRump2
SAY @1404
= @1405
IF ~~ EXIT
END 

IF ~~ QI#ZakRump3
SAY @1406
= @1407
IF ~~ EXIT
END 

IF ~~ QI#ZakRump4
SAY @1408
= @1409
IF ~~ EXIT
END 

IF ~~ QI#ZakHug1
SAY @1410
IF ~~ EXIT
END

IF ~~ QI#ZakHug2
SAY @1411
IF ~~ EXIT
END

IF ~~ QI#ZakHug3
SAY @1412
= @1413
IF ~~ EXIT
END 

IF ~~ QI#ZakHug4
SAY @1414
= @1415
IF ~~ EXIT
END

IF ~~ QI#ZakFutureWife1
SAY @1420 
IF ~~ EXIT
END 

IF ~~ QI#ZakFutureWife2
SAY @1421
IF ~~ EXIT
END 

IF ~~ QI#ZakFutureWife3
SAY @1422
IF ~~ EXIT
END 

IF ~~ QI#ZakRoeStory
SAY @1424
++ @1425 + QI#ZakRoeStory1.0
++ @1426 + QI#ZakRoeStory2.0
++ @1427 + QI#ZakRoeStory2.0
++ @1428 EXIT
END

IF ~~ QI#ZakRoeStory1.0
SAY @1429
++ @1430 + QI#ZakRoeStory1.1
END 

IF ~~ QI#ZakRoeStory1.1
SAY @1431
+ ~Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1432 + QI#ZakRoeStory1.1.1
+ ~!Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1432 + QI#ZakRoeStory1.1.2
++ @1449 EXIT
END 

IF ~~ QI#ZakRoeStory1.1.1
SAY @1433
= @1434
= @1435
IF ~~ + QI#ZakRoeStory1.0x
END

IF ~~ QI#ZakRoeStory1.1.2
SAY @1436
= @1437
IF ~~ + QI#ZakRoeStory1.0x
END

IF ~~ QI#ZakRoeStory1.0x
SAY @1438
++ @1439 + QI#ZakRoeStory2.0
++ @1440 + QI#ZakRoeStory3.0
++ @1428 EXIT 
END 

IF ~~ QI#ZakRoeStory2.0
SAY @1441
= @1442
= @1443
= @1444
= @1445
= @1446
= @1447
= @1448
IF ~~ EXIT 
END

IF ~~ QI#ZakRoeStory3.0
SAY @1472
= @1473
= @1474
IF ~~ EXIT
END 

IF ~~ QI#ZakTeam1
SAY @1451 
IF ~~ EXIT 
END 

IF ~~ QI#ZakTeam2
SAY @1452
= @1453
IF ~~ EXIT 
END 

IF ~~ QI#ZakTeam3
SAY @1454
IF ~~ EXIT 
END 

IF ~~ QI#ZakLoveYou1
SAY @1456
IF ~~ EXIT 
END 

IF ~~ QI#ZakLoveYou2
SAY @1457
IF ~~ EXIT 
END 

IF ~~ QI#ZakLoveYou3
SAY @1458
IF ~~ EXIT 
END 

IF ~~ QI#ZakHairPlay1
SAY @1460
= @1461
= @1462
= @1463 
IF ~~ EXIT
END 

IF ~~ QI#ZakHairPlay2
SAY @1464
IF ~~ EXIT
END 

IF ~~ QI#ZakHairPlay3
SAY @1465
IF ~~ EXIT
END 

END 