BEGIN QI#MIJ

//Fortune Teller - Gypsy
EXTEND_BOTTOM TRGYP02 2
IF ~!InPartySlot(LastTalkedToBy,0) Name("QI#Mi",LastTalkedToBy)~ EXTERN TRGYP02 fortuneMinyae
END

CHAIN TRGYP02 fortuneMinyae
@0
== QI#MIJ @761
EXIT

//Celvan
CHAIN 
IF WEIGHT #-1 
~InParty("QI#Mi")
See("QI#Mi")
NumTimesTalkedTo(0) 
Name("QI#Mi",LastTalkedToBy)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
Global("QI#MiReactionCelvan","AR0300",0)~ THEN CELVAN celvan1
@1
DO ~SetGlobal("QI#MiReactionCelvan","AR0300",1)~
== QI#MIJ @2
END CELVAN 1

//Salvanas
CHAIN 
IF ~!InPartySlot(LastTalkedToBy,0)
Name("QI#Mi",LastTalkedToBy)~ THEN SALVANAS MinyaeSalvanas
@752
== QI#MIJ @753
== SALVANAS @754
== QI#MIJ @755
== EDWINJ IF ~InParty("Edwin") GlobalGT("QI#MiEdwinRomanceSoA","GLOBAL",17) !StateCheck("QI#Mi",CD_STATE_NOTVALID)~ @756
== SALVANAS @757
== QI#MIJ @758
== SALVANAS @759
EXIT
 
//First Slayer Change
I_C_T PLAYER1 5 QI#MiFirstSlayerChange1 
== QI#MIJ IF ~InParty("QI#Mi") See("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID)~ THEN @3
END

//Aboleth
I_C_T DAABOL 12 QI#MiAboleth12
== QI#MIJ IF ~InParty("QI#Mi") See("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID)~ THEN @4
END

//Biff The Understudy
I_C_T FFBIFF01 12 QI#Mibifftheunderstudy12
== QI#MIJ IF ~InParty("QI#Mi") See("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID)~ THEN @5
END

//Madame Nin
CHAIN IF WEIGHT #-1
~NumTimesTalkedTo(0) 
Name("QI#Mi",LastTalkedToBy)
!Global("MadamUpset","GLOBAL",1)~ THEN MADAM QI#MiReactionMadam1
@6
== QI#MIJ @7
EXIT

//Yoshimo's Betrayal
I_C_T YOSHJ 113 QI#MiYOSHJ113
== QI#MIJ IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID)~ THEN @8
END

//Lonk is dead
I_C_T PLAYER1 15 QI#MiLonkIsDead1
== QI#MIJ IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID)~ THEN @9
END

//Not Friends - Tree of Life
EXTEND_BOTTOM PLAYER1 33
IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID) Global("QI#MiTreeOfLife","GLOBAL",0) !Global("QI#MiNoFriendship","GLOBAL",0)~ EXTERN PLAYER1 notfriends0
END

CHAIN PLAYER1 notfriends0
@10
DO ~SetGlobal("QI#MiTreeOfLife","GLOBAL",1)~
END
++ @11 EXTERN QI#MIJ notfriends1
++ @12 EXTERN QI#MIJ notfriends1
++ @13 EXTERN QI#MIJ notfriends1

CHAIN QI#MIJ notfriends1
~If I left now, I would be missing one of the greatest events in history, and I would not know of your fate. I will not leave, and I stand ready for whatever danger lies ahead.~
END
COPY_TRANS PLAYER1 33 

//Friends - Tree of Life
EXTEND_BOTTOM PLAYER1 33 
IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID) Global("QI#MiTreeOfLife","GLOBAL",0) Global("QI#MiEncounter","GLOBAL",1) Global("QI#MiNoFriendship","GLOBAL",0)~ EXTERN PLAYER1 friends
END

CHAIN PLAYER1 friends
@15
DO ~SetGlobal("QI#MiTreeOfLife","GLOBAL",1)~
END
++ @11 EXTERN QI#MIJ friends1
++ @12 EXTERN QI#MIJ friends1
++ @13 EXTERN QI#MIJ friends1

CHAIN QI#MIJ friends1
@16
= @17
END
COPY_TRANS PLAYER1 33 


//Irenicus - Tree of Life
I_C_T PLAYER1 16 QI#MiIrenicusIsDead1
== QI#MIJ IF ~InParty("QI#Mi") Range("QI#Mi",15) !StateCheck("QI#Mi",CD_STATE_NOTVALID)~ THEN @18
END

//Entering Hell
I_C_T PLAYER1 25 QI#MiEnteringHell1
== QI#MIJ IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID)~ THEN @19
END

//Battling Irenicus - Final Time
I_C_T HELLJON 7 QI#MiThirdBattleWithIrenicus1
== QI#MIJ IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID)~ THEN @20
END

I_C_T HELLJON 8 QI#MiThirdBattleWithIrenicus2
== QI#MIJ IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID)~ THEN @20
END

I_C_T HELLJON 9 QI#MiThirdBattleWithIrenicus3
== QI#MIJ IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID)~ THEN @20
END

I_C_T HELLJON 10 QI#MiThirdBattleWithIrenicus4
== QI#MIJ IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID)~ THEN @20
END

//Bodhi
I_C_T BODHI 72 QI#MiBODHI43
== QI#MIJ IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID)~ THEN @21
END

I_C_T BODHI 0 QI#MiBODHI0
== QI#MIJ IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID)~ THEN @22
END

//Hendak
I_C_T HENDAK 1 QI#MiHendak1
== QI#MIJ IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID)~ THEN @23
END

I_C_T HENDAK 5 QI#MiHendak2
== QI#MIJ IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID)~ THEN @24
END

//Beggars
I_C_T BEGGAR1 0 QI#MiBEGGAR1
== QI#MIJ IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID)~ THEN @25
END

I_C_T BEGGAR2 5 QI#MiBEGGAR2
== QI#MIJ IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID)~ THEN @26
END

I_C_T BEGGAR3 2 QI#MiBEGGAR3
== QI#MIJ IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID)~ THEN @27
END

//Firkaag-Dragon
I_C_T FIRKRA02 8 QI#MiFirkra1
== QI#MIJ IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID)~ THEN @28
END

//Nalia-related
I_C_T NALIA 4 QI#MiNalia1
== QI#MIJ IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID)~ THEN @29
END

I_C_T NALIA 55 QI#MiNalia2
== QI#MIJ IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID)~ THEN @30
END

I_C_T KPCAPT01 1 QI#MiKPCAPT011
== QI#MIJ IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID)~ THEN @31
END

I_C_T GRAE 2 QI#MiGRAE2
== QI#MIJ IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID)~ THEN @32
END

//Aerie-related
I_C_T AERIE 3 QI#MiAERIE03
== QI#MIJ IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID)~ THEN @33
END

//Gaal - Seeing Eye Quest
I_C_T GAAL 0 QI#GAAL0
== QI#MIJ IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID)~ @34
END

//Shadow Thieves
I_C_T GAELAN 66 QI#GAELAN66
== QI#MIJ IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID)~ @760
END

I_C_T MAEVAR 25 QI#MAEVAR24
== QI#MIJ IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID)~ @35
END

I_C_T MAEVAR 29 QI#MAEVAR29
== QI#MIJ IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID)~ @36
END

I_C_T RENAL 9 QI#RENAL9
== QI#MIJ IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID)~ @37
END

I_C_T RENAL 51 QI#RENAL51
== QI#MIJ IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID)~ @38
END

I_C_T RENAL 64 QI#RENAL64
== QI#MIJ IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID)~ @39
END

I_C_T ARAN 12 QI#ARAN12
== QI#MIJ IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID)~ @40
END

I_C_T ARAN 49 QI#ARAN49
== QI#MIJ IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID)~ @41
END

I_C_T ARAN 53 QI#ARAN53
== QI#MIJ IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID)~ @42
END

I_C_T ARAN 66 QI#ARAN66
== QI#MIJ IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID)~ @43
END

I_C_T EDWIN 13 QI#EDWIN13
== QI#MIJ IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID)~ THEN @44
END

I_C_T EDWIN 0 QI#EDWIN0
== QI#MIJ IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID)~ THEN @45
== EDWIN @46
== QI#MIJ @47
== EDWIN @48
END

I_C_T EDWIN 59 QI#EDWIN59
== QI#MIJ IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID)~ THEN @49
END

//Tanner
I_C_T TANNER 8 QI#TANNER8
== QI#MIJ IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID)~ THEN @50
END

//Planar Prison
I_C_T RAELIS 2 QI#RAELIS2
== QI#MIJ IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID)~ THEN @51
END

//Fallen Paladins
I_C_T KAYL2 10 QI#KAYL2
== QI#MIJ IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID)~ THEN @52
END

//Tolger
I_C_T TOLGER 19 QI#TOLGER19
== QI#MIJ IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID)~ THEN @53
END

//Neeber
I_C_T NEEBER 14 QI#NEEBER14
== QI#MIJ IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID)~ THEN @54
END

//Logan
I_C_T CELOGAN 8 QI#CELOGAN8
== QI#MIJ IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID)~ THEN @55
END

I_C_T CELOGAN 50 QI#CELOGAN50
== QI#MIJ IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID)~ THEN @56
END

//Faldorn
I_C_T CEFALDOR 8 QI#CEFALDOR8
== QI#MIJ IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID)~ THEN @57
END

//Spellhold 
I_C_T PPTIAX 1 QI#PPTIAX1
== QI#MIJ IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID)~ THEN @58
END

I_C_T PPIRENI1 4 QI#PPIRENI14
== QI#MIJ IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID)~ THEN @59
END

//Sahuagin City
I_C_T SAHKNG01 15 QI#SAHKNG0115
== QI#MIJ IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID)~ THEN @60
END

//Adalon
I_C_T UDSILVER 9 QI#UDSILVER9
== QI#MIJ IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID)~ THEN @61
END

I_C_T UDSILVER 50 QI#UDSILVER50
== QI#MIJ IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID)~ THEN @62
END

//Phaere
I_C_T UDPHAE01 160 QI#UDPHAE01161
== QI#MIJ IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID)~ THEN @63
END

//Elhan
I_C_T C6ELHAN2 7 QI#C6ELHAN27
== QI#MIJ IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID)~ THEN @64
END

//Viconia Meeting
I_C_T VICFAN2 0 QI#VICFAN2
== QI#MIJ IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID)~ THEN @65
END

//Edwin-Woman
I_C_T EDWINW 8 QI#EDWINW8
== QI#MIJ IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID)~ THEN @66
END

//Tanner Quest
I_C_T INSPECT 9 QI#INSPECT9
== QI#MIJ IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID)~ THEN @67
== INSPECT @68
== QI#MIJ @69
END

I_C_T MURDBEGG 2 QI#MURDBEGG2
== QI#MIJ IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID)~ THEN @70
END

INTERJECT MURDBEGG 8 QI#MURDBEGG8
== QI#MIJ IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID)~ THEN @71
== MURDBEGG @72
DO ~GiveItem("MISC5G",LastTalkedToBy)~
== QI#MIJ @73
EXTERN MURDBEGG 12

//Fighting for 'Veldrin'
I_C_T UDDROW16 17 QI#DROW17
== QI#MIJ IF ~InParty("QI#Mi") InMyArea("QI#Mi") Name("QI#Mi",Player2)~ THEN @74
END

I_C_T UDDROW16 18 QI#DROW18
== QI#MIJ IF ~InParty("QI#Mi") InMyArea("QI#Mi") Name("QI#Mi",Player3)~ THEN @74
END

I_C_T UDDROW16 19 QI#DROW19
== QI#MIJ IF ~InParty("QI#Mi") InMyArea("QI#Mi") Name("QI#Mi",Player4)~ THEN @74
END

I_C_T UDDROW16 20 QI#DROW20

== QI#MIJ IF ~InParty("QI#Mi") InMyArea("QI#Mi") Name("QI#Mi",Player5)~ THEN @74
END

I_C_T UDDROW16 21 QI#DROW21
== QI#MIJ IF ~InParty("QI#Mi") InMyArea("QI#Mi") Name("QI#Mi",Player6)~ THEN @74
END

//Saemon
I_C_T PPSAEM 17 QI#PPSAEM17
== QI#MIJ IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID)~ THEN @75
END

I_C_T PPSAEM3 1 QI#PPSAEM31
== QI#MIJ IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID)~ THEN @76
END

//Sir Sarles
I_C_T SCSARLES 11 QI#SCSARLES11
== QI#MIJ IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID)~ THEN @77
END

I_C_T SCSARLES 29 QI#SCSARLES11
== QI#MIJ IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID)~ THEN @78
= @79
END

//Harlot
I_C_T DHARLOT1 0 QI#DHARLOT10
== QI#MIJ IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID)~ THEN @80
END

//Mayor of Umar Hills
I_C_T UHMAY01 55 QI#UHMAY0155
== QI#MIJ IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID)~ THEN @81
END

//Lich in Crooked Crane
I_C_T GRVLCH01 0 QI#GRVLCH010
== QI#MIJ IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID)~ THEN @82
== GRVLCH01 @83
== QI#MIJ @84
== GRVLCH01 @85
== GRVLCH01 @86
== GRVLCH01 @87
== QI#MIJ @88
== GRVLCH01 @89
DO ~SetGlobal("QI#NoBook","GLOBAL",1)~
END

//Kangaxx
I_C_T HLKANG 2 QI#HKLANG02
== QI#MIJ IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID)~ THEN @90
== HLKANG @91
== HLKANG @92
END

APPEND QI#MIJ

//After Receiving Information that there is no book 
IF ~Global("QI#NoBook","GLOBAL",1)~ abook1there
SAY @93
= @94
IF ~~ DO ~EraseJournalEntry(@88888) AddJournalEntry(@88889,QUEST_DONE) SetGlobal("QI#NoBook","GLOBAL",2)~ EXIT //may need to change back to '88888'
END

//If Lich was already killed when entering lich room
IF ~AreaCheck("AR0082") Dead("GRVLCH01") Global("QI#NoBook","GLOBAL",0)~ lichDeadAlready
SAY @740
++ @741 + lda1.1
++ @742 + lda1.2
++ @743 + lda1.3
END

IF ~~ lda1.1
SAY @744
= @745
= @746
= @94
IF ~~ DO ~EraseJournalEntry(@88888) AddJournalEntry(@90000,QUEST_DONE) SetGlobal("QI#NoBook","GLOBAL",2)~ EXIT
END

IF ~~ lda1.2
SAY @747
= @745
= @746
IF ~~ DO ~EraseJournalEntry(@88888) AddJournalEntry(@90000,QUEST_DONE) SetGlobal("QI#NoBook","GLOBAL",2)~ EXIT
END

IF ~~ lda1.3
SAY @748
= @749
= @94
IF ~~ DO ~EraseJournalEntry(@88888) AddJournalEntry(@90000,QUEST_DONE) SetGlobal("QI#NoBook","GLOBAL",2)~ EXIT
END


/* Edwin Romance Conflicts (involving Laufey's and Dorotea's Edwin Romance - PLEASE NOTE: This content is not part of that mod but only refers to it */

//Conflict Talk 1
IF ~Global("MinyaeEdwinConflict","GLOBAL",1) Global("EdwinRomanceActive","GLOBAL",1)~ MinyaeEdwinConflictTalk1
SAY @762
= @763
++ @764 + mect1.0.1
++ @765 + mect1.0.2
++ @766 + mect1.0.2
++ @767 + mect1.0.2
++ @768 + mect1.0.3
++ @769 + mect1.0.4
++ @770 + mect1.0.5
END

IF ~~ mect1.0.1
SAY @771
= @772
= @773
= @774
IF ~~ DO ~SetGlobal("MinyaeEdwinConflict","GLOBAL",2)~ EXIT
END

IF ~~ mect1.0.2
SAY @775
= @776
= @777
= @778
IF ~~ DO ~SetGlobal("MinyaeEdwinConflict","GLOBAL",2)~ EXIT
END

IF ~~ mect1.0.3
SAY @779
= @780
= @781
IF ~~ DO ~SetGlobal("MinyaeEdwinConflict","GLOBAL",2)~ EXIT
END

IF ~~ mect1.0.4
SAY @782
= @783
IF ~~ DO ~SetGlobal("MinyaeEdwinConflict","GLOBAL",2)~ EXIT
END

IF ~~ mect1.0.5
SAY @784
= @785
IF ~~ DO ~SetGlobal("MinyaeEdwinConflict","GLOBAL",2)~ EXIT
END

//Conflict Talk 2
IF ~Global("MinyaeEdwinConflict","GLOBAL",3) Global("EdwinRomanceActive","GLOBAL",1)~ MinyaeEdwinConflictTalk2
SAY @786
++ @787 + mect2.0.1
++ @788 + mect2.1
++ @789 + mect2.0.2
++ @790 + mect2.0.1
END

IF ~~ mect2.0.1
SAY @791
= @792
IF ~~ + mect2.1
END

IF ~~ mect2.0.2
SAY @793
IF ~~ + mect2.0.1
END

IF ~~ mect2.1
SAY @794
++ @795 + mect2.2
END

IF ~~ mect2.2
SAY @796
++ @797 + mect2.2a
++ @798 + mect2.2b
++ @799 + mect2.2c
++ @800 + mect2.2d
END

IF ~~ mect2.2a
SAY @801
= @802
++ @798 + mect2.2b
++ @799 + mect2.2c
++ @800 + mect2.2d
END

IF ~~ mect2.2b
SAY @803
++ @800 + mect2.2d
END

IF ~~ mect2.2c
SAY @804
++ @800 + mect2.2d
END

IF ~~ mect2.2d
SAY @805
= @806
= @807
= @808
++ @809 + mect2.2da
++ @810 + mect2.2da
++ @811 + mect2.3
++ @812 + mect2.4
++ @813 + mect2.4
END

IF ~~ mect2.2da
SAY @814
++ @811 + mect2.3
++ @812 + mect2.4
++ @813 + mect2.4
END

IF ~~ mect2.3
SAY @815
= @816
IF ~~ DO ~SetGlobal("EdwinRomanceActive","GLOBAL",3) IncrementGlobal("MinyaeEdwinConflict","GLOBAL",1)~ EXIT
END

IF ~~ mect2.4
SAY @817
= @818
= @819
= @820
IF ~~ DO ~SetGlobal("MinyaeEdwinRomanceEnd","GLOBAL",1) IncrementGlobal("MinyaeEdwinConflict","GLOBAL",1)~ EXIT
END


//Talk1 (Pre-Friendship Talk)

IF ~Global("QI#MiFriendshipTalk","GLOBAL",2)~ t1
SAY @95
++ @96 + t1.1
++ @97 + t1.2
++ @98 + t1.3
++ @99 + t1.4
END

IF ~~ t1.1
SAY @100
++ @101 + t1.1.1
++ @102 + t1.1.2
END

IF ~~ t1.1.1
SAY @103
= @104
IF ~~ DO ~IncrementGlobal("QI#MiFriendshipTalk","GLOBAL",1) RealSetGlobalTimer("QI#MiTimer","GLOBAL",3600)~ EXIT
END

IF ~~ t1.1.2
SAY @105
= @106
IF ~~ DO ~IncrementGlobal("QI#MiFriendshipTalk","GLOBAL",1) RealSetGlobalTimer("QI#MiTimer","GLOBAL",3600)~ EXIT
END

IF ~~ t1.2
SAY @107
= @108
IF ~~ DO ~IncrementGlobal("QI#MiFriendshipTalk","GLOBAL",1) RealSetGlobalTimer("QI#MiTimer","GLOBAL",3600)~ EXIT
END

IF ~~ t1.3
SAY @109
IF ~~ DO ~SetGlobal("QI#MiNoFriendship","GLOBAL",1)~ EXIT
END

IF ~~ t1.4
SAY @110
= @111
IF ~~ DO ~SetGlobal("QI#MiNoFriendship","GLOBAL",1) EscapeArea()~ EXIT
END


//Talk2

IF ~Global("QI#MiFriendshipTalk","GLOBAL",4)~ t2
SAY @112
++ @113 + t2.1
++ @114 + t2.2
++ @115 + t2.3
++ @116 + t2.4
END

IF ~~ t2.1
SAY @117
++ @118 + t2.1.1
END

IF ~~ t2.1.1
SAY @119
= @120
++ @121 + t2.1a
++ @122 + t2.1a
++ @123 + t2.1b
++ @124 + t2.1b
END 

IF ~~ t2.1a
SAY @126
++ @127 + t2.1c
++ @128 + t2.1d
END

IF ~~ t2.1c
SAY @129
IF ~~ + t2.1d
END

IF ~~ t2.1d
SAY @130
= @131
= @132
++ @133 + t2.1da
++ @134 + t2.1db
++ @135 + t2.1dc
END

IF ~~ t2.1da
SAY @136
IF ~~ + t2.1da0
END

IF ~~ t2.1db
SAY @137
= @138
IF ~~ + t2.1da0
END

IF ~~ t2.1dc
SAY @139
= @140
= @141
IF ~~ DO ~IncrementGlobal("QI#MiFriendshipTalk","GLOBAL",1) RealSetGlobalTimer("QI#MiTimer","GLOBAL",3600)~ EXIT
END

IF ~~ t2.1b
SAY @142
IF ~~ + t2.1a
END

IF ~~ t2.1da0
SAY @143
= @144
IF ~~ DO ~IncrementGlobal("QI#MiFriendshipTalk","GLOBAL",1) RealSetGlobalTimer("QI#MiTimer","GLOBAL",3600)~ EXIT
END

IF ~~ t2.2
SAY @145
++ @146 + t2.2.1
END

IF ~~ t2.2.1
SAY @147
= @148
++ @149 + t2.1
++ @150 + t2.1c
++ @151 + t2.1aa
END

IF ~~ t2.1aa
SAY @152
IF ~~ + t2.1a
END

IF ~~ t2.3
SAY @153
++ @154 + t2.3.1
++ @155 + t2.3.2
++ @156 + t2.3.3
END

IF ~~ t2.3.1
SAY @157
IF ~~ + t2.1a
END

IF ~~ t2.3.2
SAY @158
IF ~~ + t2.1a
END

IF ~~ t2.3.3
SAY @159
= @160
= @161
= @162
IF ~~ DO ~IncrementGlobal("QI#MiNoFriendship","GLOBAL",1)~ EXIT
END

IF ~~ t2.4
SAY @163
++ @164 + t2.4.1
++ @165 + t2.4.2
++ @166 + t2.4.3
END

IF ~~ t2.4.1
SAY @167
= @168
++ @169 + t2.5
++ @170 + t2.1
++ @171 + t2.4.3
END

IF ~~ t2.4.2
SAY @172
IF ~~ DO ~IncrementGlobal("QI#MiFriendshipTalk","GLOBAL",1) RealSetGlobalTimer("QI#MiTimer","GLOBAL",3600)~ EXIT
END

IF ~~ t2.4.3
SAY @173
= @174
IF ~~ DO ~IncrementGlobal("QI#MiNoFriendship","GLOBAL",1)~ EXIT
END

IF ~~ t2.5
SAY @175
++ @176 + t2.1
++ @177 + t2.2
++ @178 + t2.3
END

//Talk3

IF ~Global("QI#MiFriendshipTalk","GLOBAL",6) ~ t3
SAY @179
++ @180 + t3.1
++ @181 + t3.2
++ @182 + t3.3
++ @183 + t3.4
END

IF ~~ t3.1
SAY @184
= @185
++ @186 + t3.1.1
++ @187 + t3.1.2
++ @188 + t3.1.1b
END

IF ~~ t3.1.1
SAY @189
= @190
++ @191 + t3.1.1a
++ @192 + t3.1.1b
++ @193 + t3.1.2a



END

IF ~~ t3.1.1a
SAY @194
= @195
++ @196 + t3.1.1aa
++ @197 + t3.1.1bb
++ @198 + t3.2.1
END

IF ~~ t3.1.1aa 
SAY @199
= @200
IF ~~ + t3.1.1aabb
END

IF ~~ t3.1.1bb 
SAY @201
= @202
IF ~~ + t3.1.1aabb
END

IF ~~ t3.1.1aabb
SAY @203
++ @204 + t3.1.1b
++ @205 + t3.1.1b
++ @206 + t3.1.2a
END

IF ~~ t3.1.1b
SAY @207
= @208
= @209
++ @210 + t3.1.3
++ @211 + t3.1.3a
++ @212 + t3.1.3b
END

IF ~~ t3.1.3
SAY @213
IF ~~ DO ~IncrementGlobal("QI#MiNoFriendship","GLOBAL",1)~ EXIT
END

IF ~~ t3.1.3a
SAY @214
= @215
IF ~~ + t3.1.3ab
END

IF ~~ t3.1.3b
SAY @216
= @217
IF ~~ + t3.1.3ab
END

IF ~~ t3.1.3ab
SAY @218
= @219
IF ~~ DO ~IncrementGlobal("QI#MiFriendshipTalk","GLOBAL",1) RealSetGlobalTimer("QI#MiTimer","GLOBAL",3600)~ EXIT
END

IF ~~ t3.1.2
SAY @220
= @221
++ @222 + t3.1.1b
++ @223 + t3.1.1b
++ @224 + t3.1.2a
END

IF ~~ t3.1.2a
SAY @225
= @226
IF ~~ + t3.1.3ab
END

IF ~~ t3.2
SAY @227
++ @228 + t3.2.1
++ @229 + t3.2.2
++ @230 + t3.2.3
END

IF ~~ t3.2.1
SAY @231
= @232
++ @233 + t3.1.1b
++ @234 + t3.2.10a
++ @235 + t3.1.2a
END

IF ~~ t3.2.10a
SAY @236
= @237
= @238
IF ~~ DO ~IncrementGlobal("QI#MiNoFriendship","GLOBAL",1)~ EXIT
END

IF ~~ t3.2.2
SAY @239
= @240
++ @241 + t3.1.1b
++ @242 + t3.2.10a
++ @243 + t3.1.2a
END

IF ~~ t3.2.3
SAY @244
IF ~~ + t3.2.2
END 

IF ~~ t3.3
SAY @245
++ @246 + t3.3.1
++ @247 + t3.3.2
END

IF ~~ t3.3.1
SAY @248
= @249
++ @250 + t3.1.1b
++ @251 + t3.1.1b
++ @252 + t3.1.2a
END

IF ~~ t3.3.2
SAY @253
IF ~~ + t3.2
END

IF ~~ t3.4
SAY @254
IF ~~ + t3.1.1aa
END


//Talk4 - Setup for PID talk/Can now initiate dialogues with Minyae

IF ~Global("QI#MiFriendshipTalk","GLOBAL",8)~ t4
SAY @255
++ @256 + t4.1  
++ @257 + t4.2
END

IF ~~ t4.1
SAY @258
= @259
++ @260 + t4.1.1
END

IF ~~ t4.1.1
SAY @261
++ @262 + t4.1.1.1
++ @263 + t4.1.1.1
END

IF ~~ t4.1.1.1
SAY @264
IF ~~ DO ~IncrementGlobal("QI#MiFriendshipTalk","GLOBAL",1) RealSetGlobalTimer("QI#MiTimer","GLOBAL",3600)~ EXIT
END

IF ~~ t4.2
SAY @265
= @266
IF ~~ DO ~IncrementGlobal("QI#MiNoFriendship","GLOBAL",1)~ EXIT
END


//Talk6

IF ~Global("QI#MiFriendshipTalk","GLOBAL",12) ~ t6
SAY @267
++ @268 + t6.1
++ @269 + t6.2
END

IF ~~ t6.1
SAY @270
= @271
= @272
++ @273 + t6.1.1
++ @274 + t6.1.1.1
++ @275 + t6.1.3
END

IF ~~ t6.1.1
SAY @276
= @277
= @278
= @279
++ @280 + t6.1.1.1
++ @281 + t6.3
END

IF ~~ t6.1.1.1 
SAY @282
= @283
IF ~~ + t6.3
END

IF ~~ t6.1.3
SAY @284
IF ~~ DO ~IncrementGlobal("QI#MiNoFriendship","GLOBAL",1)~ EXIT
END

IF ~~ t6.2
SAY @285
= @286
= @287
= @288
++ @273 + t6.1.1
++ @274 + t6.1.1.1
++ @275 + t6.1.3
END

IF ~~ t6.3
SAY @289
= @290
= @291
= @292
= @293
++ @294 + t6.4
++ @295 + t6.4
END

IF ~~ t6.4
SAY @296
= @297
= @298
IF ~~ DO ~IncrementGlobal("QI#MiFriendshipTalk","GLOBAL",1) RealSetGlobalTimer("QI#MiTimer","GLOBAL",3600)~ EXIT
END


//Talk7

IF ~Global("QI#MiFriendshipTalk","GLOBAL",14) ~ t7
SAY @299
++ @300 + t7.1
++ @301 + t7.2
++ @302 + t7.3
END

IF ~~ t7.1
SAY @303
= @304
IF ~~ + t7.4
END

IF ~~ t7.2
SAY @305
IF ~~ + t7.4
END

IF ~~ t7.3
SAY @306
= @307
IF ~~ DO ~IncrementGlobal("QI#MiNoFriendship","GLOBAL",1)~ EXIT
END

IF ~~ t7.4
SAY @308
= @309
++ @310 + t7.5
END

IF ~~ t7.5
SAY @311
= @312
= @313
= @314
++ @315 + t7.5.1
++ @316 + t7.6
END

IF ~~ t7.5.1
SAY @317
= @318
IF ~~ + t7.6
END

IF ~~ t7.6
SAY @319
= @320
= @321
= @322 
++ @323 + t7.6.1 
++ @324 + t7.7
END

IF ~~ t7.6.1

SAY @325
= @326
++ @327 + t7.6a
++ @328 + t7.6b
++ @329 + t7.7
END

IF ~~ t7.6a
SAY @330
++ @331 + t7.6a1
++ @332 + t7.7
END

IF ~~ t7.6a1
SAY @333
IF ~~ + t7.7
END

IF ~~ t7.6b
SAY @334
= @335
IF ~~ + t7.7
END

IF ~~ t7.7
SAY @336
= @337
= @338
= @339
= @340
= @341
= @342
IF ~~ DO ~IncrementGlobal("QI#MiFriendshipTalk","GLOBAL",1) RealSetGlobalTimer("QI#MiTimer","GLOBAL",3600)~ EXIT
END


//Talk8

IF ~Global("QI#MiFriendshipTalk","GLOBAL",16) ~ t8
SAY @343
= @344
++ @345 + t8.1
++ @346 + t8.2
++ @347 + t8.3
++ @348 + t8.4
END

IF ~~ t8.1
SAY @349
IF ~~ + t8.a
END 

IF ~~ t8.2
SAY @350
IF ~~ + t8.a 
END

IF ~~ t8.3
SAY @351
= @352
IF ~~ + t8.a
END

IF ~~ t8.4
SAY @353
IF ~~ + t8.a
END

IF ~~ t8.a
SAY @354
++ @355 + t8.5
++ @356 + t8.6
++ @357 + t8.6
++ @358 + t8.5
END

IF ~~ t8.5
SAY @359
= @360
= @361
IF ~~ DO ~IncrementGlobal("QI#MiNoFriendship","GLOBAL",1)~ EXIT
END

IF ~~ t8.6
SAY @362
= @363
= @364
++ @365 + t8.6.1
++ @366 + t8.6.2
END

IF ~~ t8.6.1
SAY @367
= @368
IF ~~ + t8.7
END

IF ~~ t8.6.2
SAY @369
IF ~~ + t8.7
END

IF ~~ t8.7
SAY @370
= @371
++ @372 + t8.7.1
END

IF ~~ t8.7.1
SAY @373
++ @374 + t8.8
END

IF ~~ t8.8
SAY @375
= @376
= @377
++ @378 + t8.9
END

IF ~~ t8.9
SAY @379
= @380
IF ~~ DO ~IncrementGlobal("QI#MiFriendshipTalk","GLOBAL",1) RealSetGlobalTimer("QI#MiTimer","GLOBAL",3600)~ EXIT
END


//Talk9

IF ~Global("QI#MiFriendshipTalk","GLOBAL",18)~ t9
SAY @381
++ @382 + t9.1
++ @383 + t9.2
++ @384 + t9.3
++ @385 + t9.4
++ @386 + t9.5
END

IF ~~ t9.1
SAY @415
IF ~~ + t9.6
END

IF ~~ t9.2
SAY @387
IF ~~ + t9.6
END

IF ~~ t9.3
SAY @388
IF ~~ + t9.6
END

IF ~~ t9.4
SAY @389
IF ~~ + t9.6
END

IF ~~ t9.5
SAY @390
IF ~~ + t9.6
END

IF ~~ t9.6
SAY @391
++ @392 + t9.6.1
++ @393 + t9.6.1
++ @394 + t9.6.2
END

IF ~~ t9.6.1
SAY @395
IF ~~ + t9.7
END

IF ~~ t9.6.2
SAY @396
IF ~~ + t9.7
END

IF ~~ t9.7
SAY @397
++ @398 + t9.7.1
++ @399 + t9.7.2
++ @400 + t9.0a
END

IF ~~ t9.7.1
SAY @401
IF ~~ + t9.8
END

IF ~~ t9.7.2
SAY @402
IF ~~ + t9.8
END

IF ~~ t9.0a
SAY @403
IF ~~ DO ~IncrementGlobal("QI#MiNoFriendship","GLOBAL",1)~ EXIT
END

IF ~~ t9.8
SAY @404
= @405
= @406
= @407
= @408
++ @409 + t9.8.1
++ @410 + t9.9
END

IF ~~ t9.8.1
SAY @411
IF ~~ + t9.9
END

IF ~~ t9.9
SAY @412
= @413
= @414
IF ~~ DO ~IncrementGlobal("QI#MiFriendshipTalk","GLOBAL",1) RealSetGlobalTimer("QI#MiTimer","GLOBAL",3600)~ EXIT
END

//Talk10

IF ~Global("QI#MiFriendshipTalk","GLOBAL",20)~ t10
SAY @416
++ @417 + t10.1
++ @418 + t10.2
++ @419 + t10.3
++ @420 + t10.2
++ @421 + t10.4
END

IF ~~ t10.1
SAY @422
IF ~~ + t10.5
END

IF ~~ t10.2
SAY @423
IF ~~ + t10.5
END

IF ~~ t10.3
SAY @424
IF ~~ + t10.5
END

IF ~~ t10.4
SAY @425
IF ~~ + t10.5
END

IF ~~ t10.5
SAY @426
= @427
= @428
++ @429 + t10.5.1
++ @430+ t10.5.2
++ @431+ t10.5.3
END

IF ~~ t10.5.1
SAY @432
= @433
IF ~~ DO ~IncrementGlobal("QI#MiFriendshipTalk","GLOBAL",1) RealSetGlobalTimer("QI#MiTimer","GLOBAL",3600)~ EXIT
END

IF ~~ t10.5.2
SAY @434
IF ~~ + t10.6
END

IF ~~ t10.5.3
SAY @435
IF ~~ + t10.6
END

IF ~~ t10.6
SAY @436
IF ~~ DO ~IncrementGlobal("QI#MiFriendshipTalk","GLOBAL",1) RealSetGlobalTimer("QI#MiTimer","GLOBAL",3600)~ EXIT
END


//Talk11 - Talk After Encounter/1v1

IF ~Global("OneAlive","GLOBAL",1) Dead("QI#Ela")~ leftfordead
SAY @437
++ @452 + undercontrol
++ @453 + noblame
++ @438 + sorrynope
END

IF ~~ undercontrol
SAY @439
IF ~~ + explanation
END

IF ~~ noblame
SAY @440
IF ~~ + explanation
END

IF ~~ sorrynope
SAY @441
IF ~~ + explanation
END

IF ~~ explanation
SAY @442
= @443
= @444
= @445
= @446
= @447
= @448
= @449
= @450
= @451
IF ~~ EXIT
END

//Talk11 - Talk After Encounter/Side with Minyae
IF ~Global("QI#MiEncounter","GLOBAL",1) Global("ElarynDies","GLOBAL",1)~ t11
SAY @454
++ @455 + t11.1
++ @456 + t11.2
++ @457 + t11.2.1
+ ~!Global("QI#MiNoFrienship","GLOBAL",0)~ + @458 + t11.2.2
++ @459 + t11.5
END

IF ~~ t11.1
SAY @460
IF ~~ DO ~SetGlobal("QI#MiNoFrienship","GLOBAL",1)~ + t11.5
END

IF ~~ t11.2
SAY @461
+ ~!Global("QI#MiNoFrienship","GLOBAL",0)~ + @462 + t11.4
++ @463+ t11.2.1
++ @464+ t11.2.2
END

IF ~~ t11.2.1
SAY @465
IF ~~ DO ~SetGlobal("QI#MiNoFrienship","GLOBAL",1)~ + t11.5
END

IF ~~ t11.2.2
SAY @466
IF ~~ DO ~SetGlobal("QI#MiNoFrienship","GLOBAL",1)~ + t11.5
END

IF ~~ t11.5
SAY @467
= @468
= @469
++ @471 + t11.5.2
++ @472 + t11.5.3
END

IF ~~ t11.5.1
SAY @473
IF ~~ + t11.6
END

IF ~~ t11.5.2
SAY @474
IF ~~ + t11.6
END

IF ~~ t11.5.3
SAY @475
IF ~~ + t11.6
END

IF ~~ t11.6
SAY @476
= @477
++ @512 + t11.6lich
END 

IF ~~ t11.6lich
SAY @478
= @479
++ @480 + t11.7
END

IF ~~ t11.7
SAY @481
= @482
= @483
= @484
= @485
= @486
= @487
++ @488 + t11.8
++ @489 + t11.8.1
++ @490 + t11.8.2
END

IF ~~ t11.8
SAY @491
IF ~~ + t11.10
END

IF ~~ t11.8.1
SAY @492
IF ~~ + t11.10
END

IF ~~ t11.8.2
SAY @493
IF ~~ + t11.10
END

IF ~~ t11.10
SAY @494
= @495
= @496
= @497
+ ~!Global("QI#MiNoFriendship","GLOBAL",1)~ + @498 + t11.4


++ @499 + t11.bye
++ @500 + t11.11
END

IF ~~ t11.11
SAY @501
= @502
++ @503 + t11.4
++ @504 + t11.4
++ @505 + t11.bye
END

IF ~~ t11.bye
SAY @506
= @507
IF ~~ DO ~SetGlobal("QI#MIJoined","GLOBAL",0) EscapeArea()~ EXIT
END

IF ~~ t11.4
SAY @508
= @509
= @510
= @511
IF ~~ DO ~IncrementGlobal("QI#MiFriendshipTalk","GLOBAL",1) SetGlobal("QI#MiEncounter","GLOBAL",2)~ EXIT	//FriendshipTalk at 22 at this point
END


// Enter Temple Ruin Area
IF ~Global("QI#MiRuinTalk","GLOBAL",0) AreaCheck("AR1404")~ templeruins1
SAY @513
++ @514 + tr1.1
++ @515 + tr1.2
+ ~InParty("Aerie")~ + @516 + tr1.3
++ @517 + tr.0
END

IF ~~ tr1.1
SAY @562
= @518
= @519
IF ~~ DO ~IncrementGlobal("QI#MiRuinTalk","GLOBAL",1)~ EXIT
END

IF ~~ tr1.2
SAY @520
= @521
= @522
IF ~~ DO ~IncrementGlobal("QI#MiRuinTalk","GLOBAL",1)~ EXIT
END

IF ~~ tr.0
SAY @523
IF ~~ DO ~IncrementGlobal("QI#MiRuinTalk","GLOBAL",1)~ EXIT
END

IF ~~ tr1.3
SAY @524
= @525
IF ~~ DO ~IncrementGlobal("QI#MiRuinTalk","GLOBAL",1)~ EXIT
END


// Enter Temple Ruins
IF ~Global("QI#MiRuinTalk","GLOBAL",1)~ templeruins2
SAY @526
++ @527 + tr2.0
++ @528 + tr2.1
++ @529 + tr2.2
++ @530 + tr2.3
END

IF ~~ tr2.0
SAY @531
= @532
++ @533 + tr2.0.1
++ @534 + tr2.0.1
IF ~~ DO ~IncrementGlobal("QI#MiRuinTalk","GLOBAL",1)~ EXIT
END

IF ~~ tr2.0.1
SAY @535
= @536
IF ~~ DO ~IncrementGlobal("QI#MiRuinTalk","GLOBAL",1)~ EXIT
END

IF ~~ tr2.1
SAY @537
= @538
= @539
IF ~~ DO ~IncrementGlobal("QI#MiRuinTalk","GLOBAL",1)~ EXIT
END

IF ~~ tr2.2
SAY @540
= @541
IF ~~ DO ~IncrementGlobal("QI#MiRuinTalk","GLOBAL",1)~ EXIT
END

IF ~~ tr2.3
SAY @542
= @543
= @544
IF ~~ DO ~IncrementGlobal("QI#MiRuinTalk","GLOBAL",1)~ EXIT
END


// Temple Ruins Cleansed
IF ~Global("QI#MiRuinTalk","GLOBAL",2)~ templeruins3
SAY @545
++ @546 + tr3.0
++ @547 + tr3.0
END

IF ~~ tr3.0
SAY @548
++ @549 + tr3.1
++ @550 + tr3.0.1
END

IF ~~ tr3.0.1
SAY @551
IF ~~ DO ~IncrementGlobal("QI#MiRuinTalk","GLOBAL",1)~ EXIT
END

IF ~~ tr3.1
SAY @552
= @553
= @554
= @555
= @556
= @557
= @558
++ @559 + tr3.2
++ @560 + tr3.2
++ @561 + tr3.1.2
END

IF ~~ tr3.2
SAY @563
= @564
++ @565 + tr3.2.1
++ @566 + tr3.2.2
END

IF ~~ tr3.2.1
SAY @567
= @568
= @569
IF ~~ DO ~IncrementGlobal("QI#MiRuinTalk","GLOBAL",1)~ EXIT
END

IF ~~ tr3.2.2
SAY @570
= @571
IF ~~ DO ~IncrementGlobal("QI#MiRuinTalk","GLOBAL",1)~ EXIT
END

IF ~~ tr3.1.2
SAY @572
= @573
= @574
IF ~~ DO ~IncrementGlobal("QI#MiRuinTalk","GLOBAL",1)~ EXIT
END

//Go to Slums in Athkatla
IF ~Global("QI#NoBook","GLOBAL",2) Global("Chapter","GLOBAL",6) Global("QI#Slums","GLOBAL",0)~ ElaSlum
SAY @750
= @751
IF ~~ DO ~SetGlobal("QI#Slums","GLOBAL",1)~ EXIT
END

// Player - Initatied Dialogues

IF ~IsGabber(Player1)~ QI#MiPID
SAY @575
+ ~Global("QI#NoBook","GLOBAL",0)~ + @576 + b1
+ ~Global("QI#NoBook","GLOBAL",2)~ + @577 + b2
+ ~Global("QI#MiEncounter","GLOBAL",1) Global("QI#MiNoFrienship","GLOBAL",0)~ + @578 + b3
+ ~GlobalGT("QI#MiEdwinRomanceSoA","GLOBAL",14)~ + @579 + e1
+ ~RandomNum(5,1)~ + @580 + a1
+ ~RandomNum(5,2)~ + @580 + a2
+ ~RandomNum(5,3)~ + @580 + a3
+ ~RandomNum(5,4)~ + @580 + a4
+ ~RandomNum(5,5)~ + @580 + a5
+ ~RandomNum(3,1)~ + @581 + hug1
+ ~RandomNum(3,2)~ + @581 + hug2
+ ~RandomNum(3,3)~ + @581 + hug3
+ ~RandomNum(3,1)~ + @582 + pat1
+ ~RandomNum(3,2)~ + @582 + pat2
+ ~RandomNum(3,3)~ + @582 + pat3
+ ~RandomNum(3,1)~ + @739 + poke1
+ ~RandomNum(3,2)~ + @739 + poke2
+ ~RandomNum(3,3)~ + @739 + poke3
+ ~RandomNum(3,1)
	OR(12)
        AreaCheck("AR0021") // Crooked Crane
        AreaCheck("AR0406") // Copper Coronet
        AreaCheck("AR0704") // Mithrest Inn
        AreaCheck("AR0709") // Den of Seven Vales
        AreaCheck("AR0313") // Sea Bounter Tavern
        AreaCheck("AR0509") // Five Flagons Inn
        AreaCheck("AR0513") // Delosar
        AreaCheck("AR1602") // Vulgar Monkey
        AreaCheck("AR1105") // Umar Hills Inn
        AreaCheck("AR2010")~ // Vyatri Pub
+ @583 + drink1
+ ~RandomNum(3,2)
	OR(12)
        AreaCheck("AR0021") // Crooked Crane
        AreaCheck("AR0406") // Copper Coronet
        AreaCheck("AR0704") // Mithrest Inn
        AreaCheck("AR0709") // Den of Seven Vales
        AreaCheck("AR0313") // Sea Bounter Tavern
        AreaCheck("AR0509") // Five Flagons Inn
        AreaCheck("AR0513") // Delosar
        AreaCheck("AR1602") // Vulgar Monkey
        AreaCheck("AR1105") // Umar Hills Inn
        AreaCheck("AR2010")~ // Vyatri Pub
+ @583 + drink2
+ ~RandomNum(3,3)
	OR(12)
        AreaCheck("AR0021") // Crooked Crane
        AreaCheck("AR0406") // Copper Coronet
        AreaCheck("AR0704") // Mithrest Inn
        AreaCheck("AR0709") // Den of Seven Vales
        AreaCheck("AR0313") // Sea Bounter Tavern
        AreaCheck("AR0509") // Five Flagons Inn
        AreaCheck("AR0513") // Delosar
        AreaCheck("AR1602") // Vulgar Monkey
        AreaCheck("AR1105") // Umar Hills Inn
        AreaCheck("AR2010")~ // Vyatri Pub
+ @583 + drink3
++ @584 + m1
++ @585 + c1 
+ ~Global("QI#MiFriendshipTalk","GLOBAL",10)~ + @586 + ft5
+ ~Global("QI#MiEncounter","GLOBAL",1)~ + @587 + o1
+ ~Global("QI#MiEncounter","GLOBAL",1) Global("QI#MiNoFrienship","GLOBAL",1)~ + @588 + d1
+ ~Gender(Player1,MALE)~ + @589 + pcboy1
+ ~Gender(Player1,FEMALE)~ + @589 + pcgirl1
++ @590 + scars1
+ ~RandomNum(4,1)Global("QI#MiRuinTalk","GLOBAL",6)~ + @591 + companions1.1
+ ~RandomNum(4,2)Global("QI#MiRuinTalk","GLOBAL",6)~ + @591 + companions1.2
+ ~RandomNum(4,3)Global("QI#MiRuinTalk","GLOBAL",6)~ + @591 + companions1.3
+ ~RandomNum(4,4)Global("QI#MiRuinTalk","GLOBAL",6)~ + @591 + companions.0
++ @592 EXIT
END

IF ~~ companions1.1
SAY @593
++ @594 + companions1.1.1
END

IF ~~ companions1.1.1
SAY @595
= @596
= @597
= @598
IF ~~ EXIT
END

IF ~~ companions1.2
SAY @599
++ @600 + companions1.2.1
END

IF ~~ companions1.2.1
SAY @601
= @602
= @603
= @604
= @605
IF ~~ EXIT
END

IF ~~ companions1.3
SAY @606
++ @607 + companions1.3.1
END

IF ~~ companions1.3.1
SAY @608
= @609
= @610
= @611
= @612
IF ~~ EXIT
END

IF ~~ companions.0
SAY @613
IF ~~ EXIT
END

IF ~~ hug1
SAY @614
= @615
IF ~~ EXIT
END

IF ~~ hug2
SAY @616
IF ~~ EXIT
END

IF ~~ hug3
SAY @617
= @618
IF ~~ EXIT
END

IF ~~ pat1
SAY @619
IF ~~ EXIT
END

IF ~~ pat2
SAY @620
IF ~~ EXIT
END

IF ~~ pat3
SAY @621
= @622
IF ~~ EXIT
END

IF ~~ poke1
SAY @623
IF ~~ EXIT
END

IF ~~ poke2
SAY @624
IF ~~ EXIT
END

IF ~~ poke3
SAY @625
IF ~~ EXIT
END

IF ~~ scars1
SAY @626
++ @627 + scars1.1
++ @628 + scars1.2
++ @629 + scars1.3
END

IF ~~ scars1.1
SAY @630
IF ~~ + scars1.4
END

IF ~~ scars1.2
SAY @631
IF ~~ + scars1.4
END

IF ~~ scars1.3
SAY @632
IF ~~ + scars1.4
END

IF ~~ scars1.4
SAY @633
= @634
IF ~~ EXIT
END

IF ~~ pcboy1
SAY @635
++ @636 + pcboy1.1
++ @637 EXIT
END

IF ~~ pcboy1.1
SAY @638
= @639
= @640
IF ~~ EXIT
END

IF ~~ pcgirl1
SAY @641
++ @642 + pcgirl1.1
++ @643 EXIT
END

IF ~~ pcgirl1.1
SAY @644
= @645
= @646
IF ~~ EXIT
END

IF ~~ b1
SAY @647
++ @648 + b1.1
END

IF ~~ b1.1
SAY @649
IF ~~ EXIT 
END

IF ~~ b2
SAY @650
++ @651 + b2.1
END

IF ~~ b2.1
SAY @652
IF ~~ EXIT
END

IF ~~ b3
SAY @653
= @654
++ @655 + b3.1
END

IF ~~ b3.1
SAY @656
IF ~~ EXIT
END

IF ~~ e1
SAY @657
++ @658 + e1.1
++ @659 + e1.1
++ @660 + e1.2
+ ~Global("QI#MiEncounter","GLOBAL",1) !Global("QI#MiNoFrienship","GLOBAL",0)~ + @641 + e1.3
END

IF ~~ e1.1
SAY @662
= @663
IF ~~ EXIT
END

IF ~~ e1.2
SAY @664
IF ~~ EXIT
END

IF ~~ e1.3
SAY @665
= @666
IF ~~ EXIT
END

IF ~~ a1
SAY @667
= @668
IF ~~ EXIT
END

IF ~~ a2
SAY @669
= @670
IF ~~ EXIT
END

IF ~~ a3
SAY @671
= @672
IF ~~ EXIT
END

IF ~~ a4
SAY @673
= @674
IF ~~ EXIT
END

IF ~~ a5
SAY @675
= @676
IF ~~ EXIT
END

IF ~~ m1
SAY @677
++ @678 + m1.1
++ @679 + m1.2
++ @680 EXIT
END

IF ~~ m1.1
SAY @681
IF ~~ EXIT
END

IF ~~ m1.2
SAY @682
IF ~~ EXIT
END

IF ~~ c1
SAY @683
++ @684 + c1.1
++ @685 + c1.2
+ ~CheckStatLT(Player1, 16, CHR)~ + @686 + c1.3
+ ~CheckStatGT(Player1, 16, CHR)~ + @686 + c1.4
END

IF ~~ c1.1
SAY @687
= @688
= @689
IF ~~ EXIT
END

IF ~~ c1.2
SAY @690
IF ~~ EXIT
END

IF ~~ c1.3
SAY @691
= @692
IF ~~ EXIT
END

IF ~~ c1.4
SAY @693
= @694
IF ~~ EXIT
END

IF ~~ o1
SAY @695
IF ~~ EXIT
END

IF ~~ d1
SAY @696
IF ~~ EXIT
END

IF ~~ drink1
SAY @697
IF ~~ EXIT
END

IF ~~ drink2
SAY @698
IF ~~ EXIT
END

IF ~~ drink3
SAY @699
IF ~~ EXIT
END

//Talk5 - in PID

IF ~~ ft5
SAY @700
++ @701 + t5.1
++ @702 + t5.2
END

IF ~~ t5.1
SAY @703
++ @704 + t5.3
++ @705 + t5.1.1
END

IF ~~ t5.1.1
SAY @706
IF ~~ + t5.3
END

IF ~~ t5.2
SAY @707
IF ~~ EXIT
END

IF ~~ t5.3
SAY @708
++ @738 + t5.4
END

IF ~~ t5.4
SAY @709
= @710
= @711
= @712
++ @713 + t5.4.1
++ @714 + t5.4.2
++ @715 + t5.4.3
END

IF ~~ t5.4.1
SAY @716
= @717
++ @718 + t5.4.1a
++ @719+ t5.4.1b
++ @720 + t5.4.1c
END

IF ~~ t5.4.1a
SAY @721
IF ~~ + t5.4.1z
END

IF ~~ t5.4.1b
SAY @722
IF ~~ + t5.4.1z
END

IF ~~ t5.4.1c
SAY @723
IF ~~ + t5.4.1z
END

IF ~~ t5.4.1z
SAY @724
IF ~~ DO ~IncrementGlobal("QI#MiFriendshipTalk","GLOBAL",1) RealSetGlobalTimer("QI#MiTimer","GLOBAL",3600)~ EXIT
END

IF ~~ t5.4.2
SAY @725
= @726
IF ~~ + t5.4.0z
END

IF ~~ t5.4.0z
SAY @737
++ @727 + t5.4.2a
++ @728 + t5.4.2b
++ @729 + t5.4.2c
END

IF ~~ t5.4.2a
SAY @730
IF ~~ + t5.4.2z
END

IF ~~ t5.4.2b
SAY @731
IF ~~ + t5.4.2z
END

IF ~~ t5.4.2c
SAY @732
= @733
IF ~~ DO ~IncrementGlobal("QI#MiFriendshipTalk","GLOBAL",1) RealSetGlobalTimer("QI#MiTimer","GLOBAL",3600)~ EXIT
END

IF ~~ t5.4.2z
SAY @734
IF ~~ DO ~IncrementGlobal("QI#MiFriendshipTalk","GLOBAL",1) RealSetGlobalTimer("QI#MiTimer","GLOBAL",3600)~ EXIT
END

IF ~~ t5.4.3
SAY @735
= @736
IF ~~ + t5.4.0z
END

END
