BEGIN QI#ZAK2J

/**************************************************************************************************
									Interjections
**************************************************************************************************/

/* Tree of Life: Nothing Active */
EXTEND_BOTTOM PLAYER1 33
IF ~InParty("QI#ZAK2") 
	InMyArea("QI#ZAK2") 
	!StateCheck("QI#ZAK2",CD_STATE_NOTVALID) 
	Global("QI#ZakrionTreeOfLife","GLOBAL",0) 
	!Global("QI#ZakrionTalkActive","GLOBAL",0)~ EXTERN PLAYER1 QI#ZakrionTreeOfLifeTalk1.0
END

CHAIN PLAYER1 QI#ZakrionTreeOfLifeTalk1.0
@982
DO ~SetGlobal("QI#ZakrionTreeOfLife","GLOBAL",1)~
END
++ @983 EXTERN QI#ZAK2J QI#ZakrionTreeOfLifeTalk1.1
++ @984 EXTERN QI#ZAK2J QI#ZakrionTreeOfLifeTalk1.1
++ @985 EXTERN QI#ZAK2J QI#ZakrionTreeOfLifeTalk1.1

CHAIN QI#ZAK2J QI#ZakrionTreeOfLifeTalk1.1
@986
= @987
= @988
END
COPY_TRANS PLAYER1 33

/* Tree of Life: Friendship Active */
EXTEND_BOTTOM PLAYER1 33
IF ~InParty("QI#ZAK2") 
	InMyArea("QI#ZAK2") 
	!StateCheck("QI#ZAK2",CD_STATE_NOTVALID) 
	Global("QI#ZakrionTreeOfLife","GLOBAL",0) 
	Global("QI#ZakrionTalkActive","GLOBAL",0)~ EXTERN PLAYER1 QI#ZakrionFriendshipTreeOfLifeTalk1.0
END

CHAIN PLAYER1 QI#ZakrionFriendshipTreeOfLifeTalk1.0
@989
DO ~SetGlobal("QI#ZakrionTreeOfLife","GLOBAL",1)~
END
++ @983 EXTERN QI#ZAK2J QI#ZakrionFriendshipTreeOfLifeTalk1.1
++ @984 EXTERN QI#ZAK2J QI#ZakrionFriendshipTreeOfLifeTalk1.1
++ @985 EXTERN QI#ZAK2J QI#ZakrionFriendshipTreeOfLifeTalk1.1

CHAIN QI#ZAK2J QI#ZakrionFriendshipTreeOfLifeTalk1.1
@990
= @991
END
COPY_TRANS PLAYER1 33

/* Tree of Life: Known PC Romance Active */
EXTEND_BOTTOM PLAYER1 33
IF ~InParty("QI#ZAK2") 
	InMyArea("QI#ZAK2") 
	!StateCheck("QI#ZAK2",CD_STATE_NOTVALID) 
	Global("QI#ZakrionTreeOfLife","GLOBAL",0)
	Global("QI#ZakPCKnown","GLOBAL",1)	
	Global("QI#ZakRomanceActive","GLOBAL",2)~ EXTERN PLAYER1 QI#ZakrionKnownRomanceTreeOfLifeTalk1.0
END

CHAIN PLAYER1 QI#ZakrionKnownRomanceTreeOfLifeTalk1.0
@992
DO ~SetGlobal("QI#ZakrionTreeOfLife","GLOBAL",1)~
END
++ @1022 EXTERN QI#ZAK2J QI#ZakrionKnownRomanceTreeOfLifeTalk1.1

CHAIN QI#ZAK2J QI#ZakrionKnownRomanceTreeOfLifeTalk1.1
@993
= @994
END
COPY_TRANS PLAYER1 33

/* Tree of Life: Not Known PC Romance Active */
EXTEND_BOTTOM PLAYER1 33
IF ~InParty("QI#ZAK2") 
	InMyArea("QI#ZAK2") 
	!StateCheck("QI#ZAK2",CD_STATE_NOTVALID) 
	Global("QI#ZakrionTreeOfLife","GLOBAL",0) 
	!Global("QI#ZakPCKnown","GLOBAL",1)
	Global("QI#ZakRomanceActive","GLOBAL",2)~ EXTERN PLAYER1 QI#ZakrionNotKnownRomanceTreeOfLifeTalk1.0
END

CHAIN PLAYER1 QI#ZakrionNotKnownRomanceTreeOfLifeTalk1.0
@995
DO ~SetGlobal("QI#ZakrionTreeOfLife","GLOBAL",1)~
END
++ @1022 EXTERN QI#ZAK2J QI#ZakrionNotKnownRomanceTreeOfLifeTalk1.1

CHAIN QI#ZAK2J QI#ZakrionNotKnownRomanceTreeOfLifeTalk1.1
@996
= @997
= @998
END
COPY_TRANS PLAYER1 33

/* Irenicus Death - Tree of Life */
I_C_T PLAYER1 16 QI#ZakIrenicusIsDead1
== QI#ZAK2J IF ~InParty("QI#ZAK2") Range("QI#ZAK2",15) !StateCheck("QI#ZAK2",CD_STATE_NOTVALID)~ THEN @999
END

/* Entering Hell */
I_C_T PLAYER1 25 QI#ZakEnteringHell1
== QI#ZAK2J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID)~ THEN @1000
END

/* Battling Irenicus - One Final Time */
I_C_T HELLJON 7 QI#Zak2FinalBattle1
== QI#ZAK2J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID)~ THEN @1001
END 

I_C_T HELLJON 8 QI#Zak2FinalBattle2
== QI#ZAK2J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID)~ THEN @1001
END 

I_C_T HELLJON 9 QI#Zak2FinalBattle3
== QI#ZAK2J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID)~ THEN @1001
END 

I_C_T HELLJON 10 QI#Zak2FinalBattle4
== QI#ZAK2J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID)~ THEN @1001
END 

/* Gypsy - Fortune Teller */
EXTEND_BOTTOM TRGYP02 2
IF ~!InPartySlot(LastTalkedToBy,0) Name("QI#ZAK2",LastTalkedToBy)~ EXTERN TRGYP02 QI#ZakrionFortuneTeller1
END

CHAIN TRGYP02 QI#ZakrionFortuneTeller1
@1002
= @1003
== QI#ZAK2J @1004
= @1005
= @1006
EXIT 

/* Your step falters... */
INTERJECT PLAYER1 3 QI#ZakrionStepFalters1
== QI#ZAK2J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID) Global("QI#ZakRomanceActive","GLOBAL",2)~ THEN @1493
= @1494
= @1495
END 
++ @1496 EXTERN QI#ZAK2J QI#ZakrionStepFalters2
++ @1497 EXTERN QI#ZAK2J QI#ZakrionStepFalters2
++ @1498 EXTERN QI#ZAK2J QI#ZakrionStepFalters2

CHAIN QI#ZAK2J QI#ZakrionStepFalters2
@1499
= @1500
DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXIT

/* Slayer Transformation Part 1 - Nothing Active */
I_C_T PLAYER1 5 QI#ZakrionSlayer1 
== QI#ZAK2J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID) !Global("QI#ZakrionTalkActive","GLOBAL",0)~ THEN @1007
END 

/* Slayer Transformation Part 1 - Friendship Active */
I_C_T PLAYER1 5 QI#ZakrionSlayer2
== QI#ZAK2J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID) Global("QI#ZakrionTalkActive","GLOBAL",0)~ THEN @1008
END 

/* Slayer Transformation Part 1 - Romance Active */
I_C_T PLAYER1 5 QI#ZakrionSlayer3
== QI#ZAK2J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID) Global("QI#ZakRomanceActive","GLOBAL",2)~ THEN @1009
END 

/* Slayer Transformation - Sleep Transformation */
INTERJECT PLAYER1 7 QI#ZakrionSlayerSleep1
== QI#ZAK2J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID) Global("QI#ZakRomanceActive","GLOBAL",2)~ THEN @1501
END
++ @1502 EXTERN QI#ZAK2J QI#ZakrionSlayerSleep2
++ @1503 EXTERN QI#ZAK2J QI#ZakrionSlayerSleep2
 
CHAIN QI#ZAK2J QI#ZakrionSlayerSleep2
@1504
= @1505
DO ~SetGlobal("QI#ZakrionSlayerChanged","GLOBAL",1) 
	ActionOverride(Player1, ReallyForceSpell(Myself,SLAYER_CHANGE))~ 
EXIT 

/* Slayer Transformation Part 2 - Known PC Romance Active */
INTERJECT PLAYER1 10 QI#ZakrionSlayer4
== QI#ZAK2J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID) Global("QI#ZakPCKnown","GLOBAL",1) Global("QI#ZakRomanceActive","GLOBAL",2) Global("QI#ZakrionSlayerChanged","GLOBAL",1)~ THEN @1010
== QI#ZAK2J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID) Global("QI#ZakPCKnown","GLOBAL",1) Global("QI#ZakRomanceActive","GLOBAL",2) Global("QI#ZakrionSlayerChanged","GLOBAL",1)~ THEN @1011
== QI#ZAK2J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID) Global("QI#ZakPCKnown","GLOBAL",1) Global("QI#ZakRomanceActive","GLOBAL",2) Global("QI#ZakrionSlayerChanged","GLOBAL",1)~ THEN @1012
END 
IF ~~ EXIT 

/* Slayer Transformation Part 2 - Not Known PC Romance Active */
INTERJECT PLAYER1 10 QI#ZakrionSlayer5
== QI#ZAK2J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID) !Global("QI#ZakPCKnown","GLOBAL",1) Global("QI#ZakRomanceActive","GLOBAL",2) Global("QI#ZakrionSlayerChanged","GLOBAL",1)~ THEN @1010
== QI#ZAK2J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID) !Global("QI#ZakPCKnown","GLOBAL",1) Global("QI#ZakRomanceActive","GLOBAL",2) Global("QI#ZakrionSlayerChanged","GLOBAL",1)~ THEN @1013
END 
IF ~~ EXIT

EXTEND_BOTTOM PLAYER1 10
IF ~Dead("QI#ZAK2") Global("QI#ZakrionSlayerChanged","GLOBAL",1)~ EXTERN PLAYER1 12
END


/* Madame Nin */
CHAIN 
IF WEIGHT #-1 ~NumTimesTalkedTo(0) 
	Name("QI#ZAK2",LastTalkedToBy) 
	!Global("MadamUpset","GLOBAL",1)~ THEN MADAM QI#ZakrionMadamReaction1
@1034
== QI#ZAK2J @1035
== MADAM @1036
EXIT 

CHAIN 
IF WEIGHT #-1 ~InParty("QI#ZAK2")
	InMyArea("QI#ZAK2") 
	!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
	!Global("MadamUpset","GLOBAL",1)
	OR(2)
		Global("QI#ZakRomanceActive","GLOBAL",1)
		Global("QI#ZakRomanceActive","GLOBAL",2)~ THEN MADAM QI#ZakrionMadamReaction2
@1048
== QI#ZAK2J @1049
EXTERN MADAM 17

/* Yoshimo's Betrayal */
I_C_T YOSHJ 113 QI#ZakrionYoshimoBetrayal1
== QI#ZAK2J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID)~ THEN @1037
END 

/* Lonk is Dead */
I_C_T PLAYER1 15 QI#ZakrionLonkDead1
== QI#ZAK2J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID)~ THEN @1038
END 

/* Aran Linval */
I_C_T ARAN 12 QI#ZakrionAran1
== QI#ZAK2J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID)~ THEN @1039
END 

I_C_T ARAN 17 QI#ZakrionAran2
== QI#ZAK2J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID)~ THEN @1040
END 

I_C_T ARAN 35 QI#ZakrionAran3
== QI#ZAK2J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID)~ THEN @1041
END 

I_C_T ARAN 60 QI#ZakrionAran4
== QI#ZAK2J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID)~ THEN @1042
END 

/* Renal Bloodscalp */
I_C_T RENAL 11 QI#ZakrionRenal1
== QI#ZAK2J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID)~ THEN @1043
== RENAL @1044
== QI#ZAK2J @1045
== RENAL @1046
= @1047
END 

/* Anomen Romance Conflict - Giants */
INTERJECT BANOMEN 22 QI#ZakrionAnomenConflict1
== QI#ZAK2J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID) Global("QI#ZakRomanceActive","GLOBAL",1)~ THEN @1050
== BANOMEN @1051
== QI#ZAK2J @1052
== BANOMEN @1053
END
++ @1054 DO ~SetGlobal("BAnomen3","LOCALS",1)~ GOTO 23
++ @1055 GOTO 24
++ @1056 DO ~SetGlobal("BAnomen3","LOCALS",1)~ GOTO 25

/* Anomen Romance Conflict -  Why didn't you ask about my journey? */
INTERJECT BANOMEN 79 QI#ZakrionAnomenConflict2
== QI#ZAK2J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID) Global("QI#ZakRomanceActive","GLOBAL",1)~ THEN @1057
== BANOMEN @1058
= @1059
== QI#ZAK2J @1060
== BANOMEN @1061
== QI#ZAK2J @1062
== BANOMEN @1063
= @1064
END
++ @1065 GOTO 80
++ @1066 GOTO 81
++ @1067 GOTO 82
++ @1068 DO ~IncrementGlobal("AnomenIgnore","GLOBAL",1)~ GOTO 86

/* Anomen Romance Conflict - Becoming a priest */
INTERJECT BANOMEN 173 QI#ZakrionAnomenConflict3
== QI#ZAK2J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID) Global("QI#ZakRomanceActive","GLOBAL",1)~ THEN @1069
= @1070
== BANOMEN @1071
== QI#ZAK2J @1072
== BANOMEN @1073
== QI#ZAK2J @1074
END 
++ @1075 GOTO 174
++ @1076 GOTO 179
++ @1077 GOTO 180

/* Anomen Romance Conflict - Burst of temper */
INTERJECT BANOMEN 192 QI#ZakrionAnomenConflict4
== QI#ZAK2J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID) Global("QI#ZakRomanceActive","GLOBAL",1)~ THEN @1078
= @1079
== BANOMEN @1080
= @1081
END 
++ @1082 EXTERN QI#ZAK2J QI#ZakrionAnomenConflict4.1
++ @1083 EXTERN BANOMEN QI#ZakrionAnomenConflict4.2
++ @1084 EXTERN BANOMEN QI#ZakrionAnomenConflict4.3
++ @1085 EXTERN QI#ZAK2J QI#ZakrionAnomenConflict4.4

CHAIN QI#ZAK2J QI#ZakrionAnomenConflict4.1
@1086
DO ~SetGlobal("QI#ZakRomanceActive","GLOBAL",3)~
END 
IF ~~ EXTERN BANOMEN QI#ZakrionAnomenConflict4.5

CHAIN BANOMEN QI#ZakrionAnomenConflict4.2
@1087
= @1088
DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3)~ EXIT 

CHAIN BANOMEN QI#ZakrionAnomenConflict4.3
@1089
DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3) SetGlobal("QI#ZakRomanceActive","GLOBAL",3)~ EXIT

CHAIN QI#ZAK2J QI#ZakrionAnomenConflict4.4
@1090
= @1091
DO ~SetGlobal("QI#ZakRomanceActive","GLOBAL",3)~
END
IF ~~ EXTERN BANOMEN QI#ZakrionAnomenConflict4.5

CHAIN BANOMEN QI#ZakrionAnomenConflict4.5
@1092
END
++ @1093 GOTO 193
++ @1094 GOTO 197
++ @1095 GOTO 198
++ @1096 GOTO 199

/* Solaufein */
I_C_T UDSOLA01 120 QI#ZakrionSolaufein1
== QI#ZAK2J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID) Global("QI#ZakRomanceActive","GLOBAL",2)~ THEN @1097
= @1098
END 

/* Phaere */
I_C_T UDPHAE01 10 QI#ZakrionPhaere1
== QI#ZAK2J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID)~ THEN @1099
END 

I_C_T UDPHAE01 156 QI#ZakrionPhaere2
== QI#ZAK2J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID)~ THEN @1100
END 

/* Adalon */
I_C_T UDSILVER 35 QI#ZakrionAdalon1
== QI#ZAK2J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID)~ THEN @1101
END 

/* Ust Natha Fighting Pits */
I_C_T UDDROW16 17 QI#ZakrionFightingPits1
== QI#ZAK2J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID)~ THEN @1102
END 

I_C_T UDDROW16 18 QI#ZakrionFightingPits1
== QI#ZAK2J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID)~ THEN @1102
END 

I_C_T UDDROW16 19 QI#ZakrionFightingPits1
== QI#ZAK2J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID)~ THEN @1102
END 

I_C_T UDDROW16 20 QI#ZakrionFightingPits1
== QI#ZAK2J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID)~ THEN @1102
END 

I_C_T UDDROW16 21 QI#ZakrionFightingPits1
== QI#ZAK2J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID)~ THEN @1102
END 

/* Saemon */
I_C_T PPSAEM 0 QI#ZakrionSaemon1
== QI#ZAK2J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID)~ THEN @1103
END 

I_C_T PPSAEM 14 QI#ZakrionSaemon2
== QI#ZAK2J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID)~ THEN @1104
END

I_C_T PPSAEM 53 QI#ZakrionSaemon3 
== QI#ZAK2J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID)~ THEN @1104
END

I_C_T PPSAEM2 3 QI#ZakrionSaemon4
== QI#ZAK2J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID)~ THEN @1105
END 

/* Desharik */
INTERJECT PPDESH 0 QI#ZakrionDesharik1
== QI#ZAK2J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID)~ THEN @1106
= @1107
== PPDESH @1108
== QI#ZAK2J @1109
== PPDESH @1110
== QI#ZAK2J @1111
== PPDESH @1112
= @1113
DO ~SetGlobal("QI#ZakrionDesharikMeeting","GLOBAL",1)~
END 
++ @1114 GOTO 1
++ @1115 GOTO 2
++ @1116 GOTO 4

/* Tanner */
I_C_T TANNER 8 QI#ZakrionTanner1
== QI#ZAK2J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID)~ THEN @1117
END

/* Fallen Paladins */
I_C_T KAYPAL03 1 QI#ZakrionFallenPaladins1
== QI#ZAK2J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID)~ THEN @1118
END 

/* Edwina */
I_C_T EDWINW 2 QI#ZakrionEdwina1
== QI#ZAK2J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID)~ THEN @1119
END 

/* Sir Sarles */
I_C_T SCSARLES 5 QI#ZakrionSirSarles1
== QI#ZAK2J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID)~ THEN @1120
END 

/* Hendak */
I_C_T HENDAK 2 QI#ZakrionHendak1
== QI#ZAK2J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID)~ THEN @1121
END 

/* Calahan */
I_C_T CALAHA 7 QI#ZakrionCalahan1
== QI#ZAK2J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID)~ THEN @1122
END 

/* The Unseeing Eye */
I_C_T GAAL 3 QI#ZakrionGaal1
== QI#ZAK2J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID)~ THEN @1123
END 

I_C_T GAAL 10 QI#ZakrionGaal2
== QI#ZAK2J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID)~ THEN @1124
END

/* Sahuagin City */
I_C_T SAHKNG01 0 QI#ZakrionSahuaginKing1
== QI#ZAK2J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID)~ THEN @1125
END

/* Elhan */
I_C_T C6ELHAN2 3 QI#ZakrionElhan1
== QI#ZAK2J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID)~ THEN @1126
END 

/* Firkaag */
I_C_T FIRKRA01 6 QI#ZakrionnFirkaag1
== QI#ZAK2J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID)~ THEN @1127
END 

I_C_T FIRKRA02 14 QI#ZakrionnFirkaag2
== QI#ZAK2J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID)~ THEN @1128
== FIRKRA02 @1129
= @1130
END 

/* Poisoning the Druid Grove */
I_C_T TREVIL01 24 QI#ZakrionDruidGrove1
== QI#ZAK2J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID)~ THEN @1131
END 

/* de'Arnise Keep */
I_C_T DELCIA 5 QI#ZakrionDelcia1
== QI#ZAK2J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID)~ THEN @1132
END 

I_C_T DELCIA 40 QI#ZakrionDelcia2
== QI#ZAK2J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID)~ THEN @1133
END 

I_C_T NALIA 71 QI#ZakrionNaliaFather1
== QI#ZAK2J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID)~ THEN @1134
END 

/* Bodhi */
I_C_T BODHI 6 QI#ZakrionBodhi1
== QI#ZAK2J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID)~ THEN @1135
END 

I_C_T BODHI 84 QI#ZakrionBodhi2
== QI#ZAK2J IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID)~ THEN @1136
END 

/**************************************************************************************************
										Bodhi Abduction
***************************************************************************************************/
BEGIN QI#ZAK2V


/* Bodhi Ambush */
EXTEND_BOTTOM BODHIAMB 5
IF ~InParty("QI#ZAK2") InMyArea("QI#ZAK2") !StateCheck("QI#ZAK2",CD_STATE_NOTVALID) Global("QI#ZakRomanceActive","GLOBAL",2)~ EXTERN BODHIAMB QI#ZakrionKidnap
END

CHAIN BODHIAMB QI#ZakrionKidnap
@1137
= @1138
== QI#ZAK2J @1139
== BODHIAMB @1140
END
IF ~~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("QI#ZAKVC")~ UNSOLVED_JOURNAL @100001 EXIT 


/* Final Battle with Bodhi */
A_T_T C6BODHI 21 ~!Global("QI#ZakrionVampire","GLOBAL",2)~ DO 0

EXTEND_BOTTOM C6BODHI 21
IF ~Global("QI#ZakrionVampire","GLOBAL",2)~ + 23
END

EXTEND_BOTTOM C6BODHI 23
+ ~Global("QI#ZakrionVampire","GLOBAL",2)~ + @1141 EXTERN C6BODHI QI#ZakrionVampire1.1
+ ~Global("QI#ZakrionVampire","GLOBAL",2)~ + @1142 EXTERN C6BODHI QI#ZakrionVampire1.1
+ ~Global("QI#ZakrionVampire","GLOBAL",2)~ + @1143 EXTERN C6BODHI QI#ZakrionVampire1.1
+ ~Global("QI#ZakrionVampire","GLOBAL",2)~ + @1144 EXTERN C6BODHI QI#ZakrionVampire1.2
END

CHAIN C6BODHI QI#ZakrionVampire1.2
@1145
END
IF ~~ EXTERN C6BODHI QI#ZakrionVampire1.1

CHAIN C6BODHI QI#ZakrionVampire1.1
@1146
== QI#ZAK2V @1147
== C6BODHI @1148
END
IF ~~ EXTERN C6BODHI 28


/* Searching for a way to bring back Zakrion */
EXTEND_BOTTOM WARSAGE 0
+ ~!Dead("C6BODHI") 
	OR(2) 
		Global("QI#ZakrionVampire","GLOBAL",1) 
		Global("QI#ZakrionVampire","GLOBAL",2)~ + @1149 EXTERN WARSAGE 6
+ ~PartyHasItem("QI#ZAKB")~ + @1150 EXTERN WARSAGE 5
END

EXTEND_BOTTOM DOGHMA 0
+ ~Global("RevealUmar","GLOBAL",1) PartyHasItem("QI#ZAKB")~ + @1151 EXTERN DOGHMA 10
END

EXTEND_BOTTOM IMNBOOK1 0
+ ~Global("RevealUmar","GLOBAL",1) PartyHasItem("QI#ZAKB")~ + @1152 EXTERN IMNBOOK1 4
END


/* The Temple of Amaunator */
APPEND QI#ZAK2P

IF WEIGHT #-1 
~Global("QI#ZakrionVampire","GLOBAL",4)~ QI#ZakrionRevival
SAY @1153
IF ~~ DO ~EraseJournalEntry(32084)  // These are journal entries from the game.
EraseJournalEntry(32085)
EraseJournalEntry(16351)
EraseJournalEntry(7002)
EraseJournalEntry(3716)
EraseJournalEntry(5814)
EraseJournalEntry(16331)
EraseJournalEntry(15710)
EraseJournalEntry(6589)
EraseJournalEntry(11864)
EraseJournalEntry(3374)
EraseJournalEntry(3377)
EraseJournalEntry(3927)
SetGlobal("QI#ZakrionVampire","GLOBAL",5)~ SOLVED_JOURNAL @100002 + QI#ZakrionRevival1.1
END 

IF ~~ QI#ZakrionRevival1.1
SAY @1154
IF ~~ DO ~EraseJournalEntry(@100001)~ + QI#ZakrionRevival1.1.0
END

IF ~~ QI#ZakrionRevival1.1.0
SAY @1155
IF ~Global("QI#ZakPCKnown","GLOBAL",1)~ + QI#ZakrionKnownRevival
IF ~!Global("QI#ZakPCKnown","GLOBAL",1)~ + QI#ZakrionNotKnownRevival
END

IF ~~ QI#ZakrionKnownRevival
SAY @1156
= @1157
= @1158
= @1159
++ @1160 + QI#ZakrionKnownRevival1.1
++ @1161 + QI#ZakrionKnownRevival1.0x
END

IF ~~ QI#ZakrionKnownRevival1.0x
SAY @1162
= @1163
= @1164
= @1165
= @1266
= @1265
IF ~~ DO ~SetGlobal("QI#ZakrionRomanceActive","GLOBAL",3) GiveItem("QI#ZAK2","QI#ZAKBU") LeaveParty() EscapeArea()~ EXIT 
END 

IF ~~ QI#ZakrionKnownRevival1.1
SAY @1166
= @1167
= @1265
++ @1168 + QI#ZakrionKnownRevival1.2
++ @1169 + QI#ZakrionKnownRevival1.2x
END 

IF ~~ QI#ZakrionKnownRevival1.2
SAY @1170
IF ~~ DO ~ActionOverride("QI#ZAK2",JoinParty())~ EXIT
END 

IF ~~ QI#ZakrionKnownRevival1.2x
SAY @1171
= @1265
IF ~~ DO ~SetGlobal("QI#Zak2Joined","GLOBAL",1) MoveGlobal("AR0314","QI#ZAK2",[311.445])~ EXIT
END

IF ~~ QI#ZakrionNotKnownRevival
SAY @1172
= @1173
= @1174
++ @1160 + QI#ZakrionNotKnownRevival1.1
++ @1161 + QI#ZakrionNotKnownRevival1.0x
END 

IF ~~ QI#ZakrionNotKnownRevival1.0x
SAY @1162
= @1175
= @1176
= @1177
= @1178
= @1179
= @1180
= @1264
= @1265
IF ~~ DO ~ActionOverride("QI#ZAK2",JoinParty())~ EXIT
END 

IF ~~ QI#ZakrionNotKnownRevival1.1
SAY @1181
= @1182
++ @1168 + QI#ZakrionKnownRevival1.2
++ @1169 + QI#ZakrionKnownRevival1.2x
END 

END

/**************************************************************************************************
										Friendship Track
***************************************************************************************************/
APPEND QI#ZAK2J

/* Friendship Talk 1 -  Buttercup Introduction */
IF ~Global("QI#ZakrionTalk","GLOBAL",2)~ QI#Zakrion2Talk1.0
SAY @0
++ @1 + QI#Zakrion2Talk1.1
++ @2 + QI#Zakrion2Talk1.0.1
++ @3 + QI#Zakrion2Talk1.0.1
++ @4 + QI#Zakrion2Talk1.0x
END 

IF ~~ QI#Zakrion2Talk1.0x
SAY @5
IF ~~ DO ~SetGlobal("QI#ZakrionTalkActive","GLOBAL",1)~ EXIT 
END

IF ~~ QI#Zakrion2Talk1.0.1
SAY @6
IF ~~ + QI#Zakrion2Talk1.1
END

IF ~~ QI#Zakrion2Talk1.1
SAY @7
= @8
= @9
= @10
++ @11 + QI#Zakrion2Talk1.1.1
++ @12 + QI#Zakrion2Talk1.2
++ @13 + QI#Zakrion2Talk1.1.2
END 

IF ~~ QI#Zakrion2Talk1.1.1
SAY @14
IF ~~ + QI#Zakrion2Talk1.2
END

IF ~~ QI#Zakrion2Talk1.1.2
SAY @15
IF ~~ + QI#Zakrion2Talk1.2
END

IF ~~ QI#Zakrion2Talk1.2
SAY @16
= @17
= @18
IF ~~ DO ~IncrementGlobal("QI#ZakrionTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakrionTalkTimer","GLOBAL",3600)~ EXIT 
END 

/* Friendship Talk 2 - Irenicus who? */
IF ~Global("QI#ZakrionTalk","GLOBAL",4)~ QI#Zakrion2Talk2.0
SAY @19
= @20
++ @21 + QI#Zakrion2Talk2.1
++ @22 + QI#Zakrion2Talk2.0.1
++ @23 + QI#Zakrion2Talk2.0.2
++ @24 + QI#Zakrion2Talk2.0.3
++ @25 +  QI#Zakrion2Talk2.1
END 

IF ~~ QI#Zakrion2Talk2.0.1
SAY @26
= @27
= @28
IF ~~ + QI#Zakrion2Talk2.1
END

IF ~~ QI#Zakrion2Talk2.0.2
SAY @29
= @30
IF ~~ + QI#Zakrion2Talk2.1
END

IF ~~ QI#Zakrion2Talk2.0.3
SAY @31
= @32
= @33
IF ~~ + QI#Zakrion2Talk2.1
END

IF ~~ QI#Zakrion2Talk2.1
SAY @34
= @35
++ @36 + QI#Zakrion2Talk2.1.1
++ @37 + QI#Zakrion2Talk2.1.2
++ @38 + QI#Zakrion2Talk2.1x
++ @39 + QI#Zakrion2Talk2.1x
++ @40 + QI#Zakrion2Talk2.1.3
END 

IF ~~ QI#Zakrion2Talk2.1x
SAY @41
= @42
= @43
IF ~~ DO ~IncrementGlobal("QI#ZakrionTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakrionTalkTimer","GLOBAL",3600)~ EXIT 
END

IF ~~ QI#Zakrion2Talk2.1.1
SAY @44
= @45
= @46
= @47
IF ~~ + QI#Zakrion2Talk2.2
END 

IF ~~ QI#Zakrion2Talk2.1.2
SAY @48
= @49
IF ~~ + QI#Zakrion2Talk2.2
END

IF ~~ QI#Zakrion2Talk2.1.3
SAY @50
= @51
IF ~~ + QI#Zakrion2Talk2.2
END 

IF ~~ QI#Zakrion2Talk2.2
SAY @52
= @53
IF ~~ DO ~IncrementGlobal("QI#ZakrionTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakrionTalkTimer","GLOBAL",3600)~ EXIT 
END 

/* Friendship Talk 3 - I've been thinking... */
IF ~Global("QI#ZakrionTalk","GLOBAL",6)~ QI#Zakrion2Talk3.0
SAY @54
= @55
++ @56 + QI#Zakrion2Talk3.0.1
++ @57 + QI#Zakrion2Talk3.0.2
++ @58 + QI#Zakrion2Talk3.0.3
++ @59 + QI#Zakrion2Talk3.0.4
++ @60 + QI#Zakrion2Talk3.0.5
++ @61 + QI#Zakrion2Talk3.0.6
END 

IF ~~ QI#Zakrion2Talk3.0.1
SAY @62
++ @57 + QI#Zakrion2Talk3.0.2
++ @58 + QI#Zakrion2Talk3.0.3
++ @59 + QI#Zakrion2Talk3.0.4
++ @60 + QI#Zakrion2Talk3.0.5
++ @61 + QI#Zakrion2Talk3.0.6
END 

IF ~~ QI#Zakrion2Talk3.0.2
SAY @63
IF ~~ + QI#Zakrion2Talk3.1
END 

IF ~~ QI#Zakrion2Talk3.0.3
SAY @64
IF ~~ + QI#Zakrion2Talk3.1
END 

IF ~~ QI#Zakrion2Talk3.0.4
SAY @65
IF ~~ + QI#Zakrion2Talk3.1
END 

IF ~~ QI#Zakrion2Talk3.0.5
SAY @66
IF ~~ + QI#Zakrion2Talk3.1
END 

IF ~~ QI#Zakrion2Talk3.0.6
SAY @67
= @68
++ @69 + QI#Zakrion2Talk3.0.6b
++ @70 + QI#Zakrion2Talk3.0.6a
++ @71 + QI#Zakrion2Talk3.0.6b
END 

IF ~~ QI#Zakrion2Talk3.0.6a
SAY @72
= @73
= @74
++ @56 + QI#Zakrion2Talk3.0.2
++ @57 + QI#Zakrion2Talk3.0.3
++ @58 + QI#Zakrion2Talk3.0.4
++ @59 + QI#Zakrion2Talk3.0.5
++ @60 + QI#Zakrion2Talk3.0.6
END 

IF ~~ QI#Zakrion2Talk3.0.6b
SAY @75
= @76
IF ~~ + QI#Zakrion2Talk3.1
END 

IF ~~ QI#Zakrion2Talk3.1
SAY @77
= @78
= @79
= @80
= @81
= @82
++ @83 + QI#Zakrion2Talk3.2
++ @84 + QI#Zakrion2Talk3.1x
END 

IF ~~ QI#Zakrion2Talk3.1x
SAY @85
IF ~~ DO ~SetGlobal("QI#ZakrionTalkActive","GLOBAL",1)~ EXIT 
END  

IF ~~ QI#Zakrion2Talk3.2
SAY @86
= @87
IF ~~ DO ~IncrementGlobal("QI#ZakrionTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakrionTalkTimer","GLOBAL",3600)~ EXIT 
END 

/* Friendship Talk 4 - My doubts */
IF ~Global("QI#ZakrionTalk","GLOBAL",8)~ QI#Zakrion2Talk4.0
SAY @88
= @89
= @90
++ @91 + QI#Zakrion2Talk4.0.1
+ ~Global("QI#ZakPCKnown","GLOBAL",1)~ + @92 + QI#Zakrion2Talk4.0.2
+ ~Global("QI#ZakPCKnown","GLOBAL",1)~ + @93 + QI#Zakrion2Talk4.0.2
++ @94 + QI#Zakrion2Talk4.0.1
++ @95 + QI#Zakrion2Talk4.0x
END 

IF ~~ QI#Zakrion2Talk4.0x
SAY @96
= @97
IF ~~ DO ~SetGlobal("QI#ZakrionTalkActive","GLOBAL",1)~ EXIT 
END

IF ~~ QI#Zakrion2Talk4.0.1
SAY @98
IF ~~ + QI#Zakrion2Talk4.1
END

IF ~~ QI#Zakrion2Talk4.0.2
SAY @99
= @100
IF ~~ + QI#Zakrion2Talk4.1
END 

IF ~~ QI#Zakrion2Talk4.1
SAY @101
= @102
= @103
= @104
= @105
++ @106 + QI#Zakrion2Talk4.1.1
++ @107 + QI#Zakrion2Talk4.1.2
++ @108 + QI#Zakrion2Talk4.1.3
++ @109 + QI#Zakrion2Talk4.1.4
END 

IF ~~ QI#Zakrion2Talk4.1.1
SAY @110
IF ~~ + QI#Zakrion2Talk4.2
END 

IF ~~ QI#Zakrion2Talk4.1.2
SAY @111
IF ~~ + QI#Zakrion2Talk4.2
END 

IF ~~ QI#Zakrion2Talk4.1.3
SAY @112
IF ~~ + QI#Zakrion2Talk4.2
END 

IF ~~ QI#Zakrion2Talk4.1.4
SAY @113
IF ~~ + QI#Zakrion2Talk4.2
END 

IF ~~ QI#Zakrion2Talk4.2
SAY @114
= @115
= @116
= @117
= @118
IF ~~ DO ~IncrementGlobal("QI#ZakrionTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakrionTalkTimer","GLOBAL",3600)~ EXIT 
END 

/* Friendship Talk 5 - Feels like I keep apologizing to you (PID activates) */
IF ~Global("QI#ZakrionTalk","GLOBAL",10)~ QI#Zakrion2Talk5.0
SAY @119
= @120
++ @121 + QI#Zakrion2Talk5.0.1
++ @122 + QI#Zakrion2Talk5.0.2
++ @123 + QI#Zakrion2Talk5.0.3
++ @124 + QI#Zakrion2Talk5.0x
END 

IF ~~ QI#Zakrion2Talk5.0x
SAY @125
= @126
= @127
= @128
IF ~~ DO ~SetGlobal("QI#ZakrionTalkActive","GLOBAL",1)~ EXIT 
END 

IF ~~ QI#Zakrion2Talk5.0.1
SAY @129
IF ~~ + QI#Zakrion2Talk5.1
END 

IF ~~ QI#Zakrion2Talk5.0.2
SAY @130
IF ~~ + QI#Zakrion2Talk5.1  
END 

IF ~~ QI#Zakrion2Talk5.0.3
SAY @131
IF ~~ + QI#Zakrion2Talk5.1
END 

IF ~~ QI#Zakrion2Talk5.1
SAY @132
IF ~Global("QI#ZakPCKnown","GLOBAL",1)~ + QI#Zakrion2Talk5.2
IF ~!Global("QI#ZakPCKnown","GLOBAL",1)~ + QI#Zakrion2Talk5.3
END 

IF ~~ QI#Zakrion2Talk5.2
SAY @133
= @134
= @135
= @136
++ @137 + QI#Zakrion2Talk5.2.1
++ @138 + QI#Zakrion2Talk5.2.1
++ @139 + QI#Zakrion2Talk5.2x
END

IF ~~ QI#Zakrion2Talk5.2x
SAY @140
= @141
IF ~~ DO ~SetGlobal("QI#ZakrionTalkActive","GLOBAL",1)~ EXIT 
END 

IF ~~ QI#Zakrion2Talk5.2.1
SAY @142
= @143
= @144
IF ~~ + QI#Zakrion2Talk5.4
END

IF ~~ QI#Zakrion2Talk5.3
SAY @145
= @146
= @147
++ @148 + QI#Zakrion2Talk5.3.1
++ @149 + QI#Zakrion2Talk5.3.1
++ @139 + QI#Zakrion2Talk5.3x
END 

IF ~~ QI#Zakrion2Talk5.3x
SAY @150
IF ~~ DO ~SetGlobal("QI#ZakrionTalkActive","GLOBAL",1)~ EXIT 
END

IF ~~ QI#Zakrion2Talk5.3.1
SAY @142
= @151
IF ~~ + QI#Zakrion2Talk5.4
END 

IF ~~ QI#Zakrion2Talk5.4
SAY @152
IF ~~ DO ~IncrementGlobal("QI#ZakrionTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakrionTalkTimer","GLOBAL",3600) SetGlobal("QI#Zak2PIDActive","GLOBAL",1)~ EXIT
END 

/* Friendship Talk 6 - What does being a Bhaalspawn mean to you? */
IF ~Global("QI#ZakrionTalk","GLOBAL",12)~ QI#Zakrion2Talk6.0
SAY @153
= @154
++ @155 + QI#Zakrion2Talk6.0.1
++ @156 + QI#Zakrion2Talk6.0.2
++ @157 + QI#Zakrion2Talk6.0.3
++ @158 + QI#Zakrion2Talk6.0.4
++ @159 + QI#Zakrion2Talk6.0.5
++ @160 + QI#Zakrion2Talk6.0x
END

IF ~~ QI#Zakrion2Talk6.0x
SAY @161
= @162
IF ~~ DO ~IncrementGlobal("QI#ZakrionTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakrionTalkTimer","GLOBAL",3600)~ EXIT 
END

IF ~~ QI#Zakrion2Talk6.0.1
SAY @163
IF ~~ + QI#Zakrion2Talk6.1
END

IF ~~ QI#Zakrion2Talk6.0.2
SAY @164
IF ~~ + QI#Zakrion2Talk6.1
END

IF ~~ QI#Zakrion2Talk6.0.3
SAY @165
= @166
IF ~~ + QI#Zakrion2Talk6.1
END

IF ~~ QI#Zakrion2Talk6.0.4
SAY @167
IF ~~ + QI#Zakrion2Talk6.1
END

IF ~~ QI#Zakrion2Talk6.0.5
SAY @168
IF ~~ + QI#Zakrion2Talk6.1
END

IF ~~ QI#Zakrion2Talk6.1
SAY @169
= @170
= @171
= @172
++ @173 + QI#Zakrion2Talk6.1.1
++ @174 + QI#Zakrion2Talk6.1.2
++ @175 + QI#Zakrion2Talk6.1.3
++ @180 + QI#Zakrion2Talk6.1.4
END 

IF ~~ QI#Zakrion2Talk6.1.1
SAY @176
= @177
++ @178 + QI#Zakrion2Talk6.1.2
++ @179 + QI#Zakrion2Talk6.1.1a
++ @175 + QI#Zakrion2Talk6.1.3
END

IF ~~ QI#Zakrion2Talk6.1.1a
SAY @181
IF ~~ + QI#Zakrion2Talk6.2
END 

IF ~~ QI#Zakrion2Talk6.1.2
SAY @182
IF ~~ + QI#Zakrion2Talk6.2
END

IF ~~ QI#Zakrion2Talk6.1.3
SAY @183
= @184
IF ~~ + QI#Zakrion2Talk6.2
END

IF ~~ QI#Zakrion2Talk6.1.4
SAY @185
IF ~~ + QI#Zakrion2Talk6.2
END 

IF ~~ QI#Zakrion2Talk6.2
SAY @186
= @187
= @188
= @189
= @190
IF ~~ DO ~IncrementGlobal("QI#ZakrionTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakrionTalkTimer","GLOBAL",3600)~ EXIT 
END 


/* Frienship Talk 7 - Maybe you should consider getting yourself a Buttercup */
IF ~Global("QI#ZakrionTalk","GLOBAL",14)~ QI#Zakrion2Talk7.0
SAY @191
++ @192 + QI#Zakrion2Talk7.0.1
++ @193 + QI#Zakrion2Talk7.0.2
++ @194 + QI#Zakrion2Talk7.0.3
++ @195 + QI#Zakrion2Talk7.0.4
++ @196 + QI#Zakrion2Talk7.0.3
++ @197 + QI#Zakrion2Talk7.0.5
END 

IF ~~ QI#Zakrion2Talk7.0.1
SAY @198
IF ~~ + QI#Zakrion2Talk7.1
END 

IF ~~ QI#Zakrion2Talk7.0.2
SAY @199
IF ~~ + QI#Zakrion2Talk7.1
END 

IF ~~ QI#Zakrion2Talk7.0.3
SAY @200
IF ~~ + QI#Zakrion2Talk7.1
END 

IF ~~ QI#Zakrion2Talk7.0.4
SAY @201
IF ~~ + QI#Zakrion2Talk7.1
END 

IF ~~ QI#Zakrion2Talk7.0.5
SAY @202
IF ~~ + QI#Zakrion2Talk7.1
END 

IF ~~ QI#Zakrion2Talk7.1
SAY @203
++ @204 + QI#Zakrion2Talk7.2
++ @205 + QI#Zakrion2Talk7.1.1
++ @206 + QI#Zakrion2Talk7.2
END 

IF ~~ QI#Zakrion2Talk7.1.1
SAY @207
IF ~~ + QI#Zakrion2Talk7.2
END 

IF ~~ QI#Zakrion2Talk7.2
SAY @208
= @209
= @210
= @211
= @212
= @213
= @214
++ @215 + QI#Zakrion2Talk7.2.1
++ @216 + QI#Zakrion2Talk7.2.1
++ @217 + QI#Zakrion2Talk7.2.2
++ @218 + QI#Zakrion2Talk7.2.3
++ @219 + QI#Zakrion2Talk7.2.4
END 

IF ~~ QI#Zakrion2Talk7.2.1
SAY @220
IF ~~ + QI#Zakrion2Talk7.3
END

IF ~~ QI#Zakrion2Talk7.2.2
SAY @221
= @222
IF ~~ + QI#Zakrion2Talk7.3
END

IF ~~ QI#Zakrion2Talk7.2.3
SAY @223
IF ~~ + QI#Zakrion2Talk7.3
END

IF ~~ QI#Zakrion2Talk7.2.4
SAY @224
IF ~~ + QI#Zakrion2Talk7.3
END

IF ~~ QI#Zakrion2Talk7.3
SAY @225
IF ~~ DO ~IncrementGlobal("QI#ZakrionTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakrionTalkTimer","GLOBAL",3600)~ EXIT 
END 


/* Friendship Talk 8 - I'm seeing you accomplish so much. */
IF ~Global("QI#ZakrionTalk","GLOBAL",16)~ QI#Zakrion2Talk8.0
SAY @226
= @227
++ @228 + QI#Zakrion2Talk8.0.1
++ @229 + QI#Zakrion2Talk8.0.2
++ @230 + QI#Zakrion2Talk8.0.3
++ @231 + QI#Zakrion2Talk8.0.4
++ @232 + QI#Zakrion2Talk8.0.5
END

IF ~~ QI#Zakrion2Talk8.0.1
SAY @233
IF ~~ + QI#Zakrion2Talk8.1
END 

IF ~~ QI#Zakrion2Talk8.0.2
SAY @234
IF ~~ + QI#Zakrion2Talk8.1
END 

IF ~~ QI#Zakrion2Talk8.0.3
SAY @235
IF ~~ + QI#Zakrion2Talk8.1
END

IF ~~ QI#Zakrion2Talk8.0.4
SAY @236
IF ~~ + QI#Zakrion2Talk8.1
END

IF ~~ QI#Zakrion2Talk8.0.5
SAY @237
IF ~~ + QI#Zakrion2Talk8.1
END 

IF ~~ QI#Zakrion2Talk8.1
SAY @238
= @239
IF ~Global("QI#ZakPCKnown","GLOBAL",1)~ + QI#Zakrion2Talk8.2a
IF ~!Global("QI#ZakPCKnown","GLOBAL",1)~ + QI#Zakrion2Talk8.2b
END 

IF ~~ QI#Zakrion2Talk8.2a
SAY @240
= @241
= @242
= @243
IF ~~ + QI#Zakrion2Talk8.3
END 

IF ~~ QI#Zakrion2Talk8.2b
SAY @244
= @245
= @246
= @247
= @248
= @249
IF ~~ + QI#Zakrion2Talk8.3
END 

IF ~~ QI#Zakrion2Talk8.3
SAY @250
= @251
= @252
++ @253 + QI#Zakrion2Talk8.3.1
++ @254 + QI#Zakrion2Talk8.3.2
++ @255 + QI#Zakrion2Talk8.3.1
++ @256 + QI#Zakrion2Talk8.3.3
++ @257 + QI#Zakrion2Talk8.3.4
END 

IF ~~ QI#Zakrion2Talk8.3.1
SAY @258
IF ~~ + QI#Zakrion2Talk8.4
END 

IF ~~ QI#Zakrion2Talk8.3.2
SAY @259
IF ~~ + QI#Zakrion2Talk8.4
END 

IF ~~ QI#Zakrion2Talk8.3.3
SAY @260
= @261
IF ~~ + QI#Zakrion2Talk8.4
END 

IF ~~ QI#Zakrion2Talk8.3.4
SAY @262
= @263
IF ~~ + QI#Zakrion2Talk8.4
END 

IF ~~ QI#Zakrion2Talk8.4
SAY @264
= @265
IF ~~ DO ~IncrementGlobal("QI#ZakrionTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakrionTalkTimer","GLOBAL",3600)~ EXIT 
END 


/* Friendship Talk 9 - I guess I never told you about how I was captured, huh? */
IF ~Global("QI#ZakrionTalk","GLOBAL",18)~ QI#Zakrion2Talk9.0
SAY @266
++ @267 + QI#Zakrion2Talk9.1
++ @268 + QI#Zakrion2Talk9.0.1
++ @269 + QI#Zakrion2Talk9.0x
END 

IF ~~ QI#Zakrion2Talk9.0x
SAY @270
= @271
IF ~~ DO ~SetGlobal("QI#ZakrionTalkActive","GLOBAL",1)~ EXIT 
END

IF ~~ QI#Zakrion2Talk9.0.1
SAY @272
IF ~~ + QI#Zakrion2Talk9.1
END

IF ~~ QI#Zakrion2Talk9.1
SAY @273
= @1416
= @274
= @275
= @276
= @277
= @278
++ @279 + QI#Zakrion2Talk9.1.1
++ @280 + QI#Zakrion2Talk9.1.2
++ @281 + QI#Zakrion2Talk9.1.3
++ @282 + QI#Zakrion2Talk9.1.4
END

IF ~~ QI#Zakrion2Talk9.1.1
SAY @283
= @284
IF ~~ + QI#Zakrion2Talk9.2
END

IF ~~ QI#Zakrion2Talk9.1.2
SAY @285
IF ~~ + QI#Zakrion2Talk9.2
END

IF ~~ QI#Zakrion2Talk9.1.3
SAY @286
= @287
IF ~~ + QI#Zakrion2Talk9.2
END

IF ~~ QI#Zakrion2Talk9.1.4
SAY @288
IF ~~ + QI#Zakrion2Talk9.2
END

IF ~~ QI#Zakrion2Talk9.2
SAY @289
= @290
= @291
= @292
+ ~CheckStatGT(Player1, 14, WIS)~ + @293 + QI#Zakrion2Talk9.2.1
++ @294 + QI#Zakrion2Talk9.2.2
++ @295 + QI#Zakrion2Talk9.3
++ @296 + QI#Zakrion2Talk9.2.3
++ @297 + QI#Zakrion2Talk9.2.4
END

IF ~~ QI#Zakrion2Talk9.2.1
SAY @298
IF ~~ + QI#Zakrion2Talk9.3
END

IF ~~ QI#Zakrion2Talk9.2.2
SAY @299
IF ~~ + QI#Zakrion2Talk9.3
END

IF ~~ QI#Zakrion2Talk9.2.3
SAY @300
IF ~~ + QI#Zakrion2Talk9.3
END

IF ~~ QI#Zakrion2Talk9.2.4
SAY @301
= @302
IF ~~ + QI#Zakrion2Talk9.3
END

IF ~~ QI#Zakrion2Talk9.3
SAY @303
= @304
= @305
= @306
= @307
++ @308 + QI#Zakrion2Talk9.3.1
++ @309 + QI#Zakrion2Talk9.3.2
++ @310 + QI#Zakrion2Talk9.3.3
++ @311 + QI#Zakrion2Talk9.4
END 

IF ~~ QI#Zakrion2Talk9.3.1
SAY @312
IF ~~ + QI#Zakrion2Talk9.4
END

IF ~~ QI#Zakrion2Talk9.3.2
SAY @313
IF ~~ + QI#Zakrion2Talk9.4
END

IF ~~ QI#Zakrion2Talk9.3.3
SAY @314
IF ~~ + QI#Zakrion2Talk9.4
END

IF ~~ QI#Zakrion2Talk9.4
SAY @315
IF ~~ DO ~IncrementGlobal("QI#ZakrionTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakrionTalkTimer","GLOBAL",3600)~ EXIT 
END


/* Friendship Talk 10 - So, care to tell me what you've been up to since Baldur's Gate? */
IF ~Global("QI#ZakrionTalk","GLOBAL",20)~ QI#Zakrion2Talk10.0
SAY @316
= @317
++ @318 + QI#Zakrion2Talk10.0.1
++ @319 + QI#Zakrion2Talk10.0.2
++ @320 + QI#Zakrion2Talk10.0.3
++ @321 + QI#Zakrion2Talk10.0.4
++ @322 + QI#Zakrion2Talk10.0.5
++ @323 + QI#Zakrion2Talk10.0.6
++ @324 + QI#Zakrion2Talk10.0.7
END

IF ~~ QI#Zakrion2Talk10.0.1
SAY @325
= @326
IF ~~ + QI#Zakrion2Talk10.1
END

IF ~~ QI#Zakrion2Talk10.0.2
SAY @327
= @328
IF ~~ + QI#Zakrion2Talk10.1
END

IF ~~ QI#Zakrion2Talk10.0.3
SAY @329
IF ~~ + QI#Zakrion2Talk10.1
END

IF ~~ QI#Zakrion2Talk10.0.4
SAY @330
IF ~~ + QI#Zakrion2Talk10.1
END

IF ~~ QI#Zakrion2Talk10.0.5
SAY @331
= @332
IF ~~ + QI#Zakrion2Talk10.1
END

IF ~~ QI#Zakrion2Talk10.0.6
SAY @333
IF ~~ + QI#Zakrion2Talk10.1
END

IF ~~ QI#Zakrion2Talk10.0.7
SAY @334
IF ~~ + QI#Zakrion2Talk10.1
END

IF ~~ QI#Zakrion2Talk10.1
SAY @335
= @336
IF ~Global("QI#ZakPCKnown","GLOBAL",1)~ + QI#Zakrion2Talk10.2a
IF ~!Global("QI#ZakPCKnown","GLOBAL",1)~ + QI#Zakrion2Talk10.2b 
END

IF ~~ QI#Zakrion2Talk10.2a
SAY @337
++ @338 + QI#Zakrion2Talk10.2aa
++ @339 + QI#Zakrion2Talk10.2ab
++ @340 + QI#Zakrion2Talk10.2ac
+ ~Gender(Player1,FEMALE)
   OR(4)
		Race(Player1,HUMAN)
		Race(Player1,ELF)
		Race(Player1,HALF_ELF)
		Race(Player1,HALFLING)~ + @341 + QI#Zakrion2Talk10.2ad
+ ~Gender(Player1,FEMALE)
   OR(4)
		Race(Player1,HUMAN)
		Race(Player1,ELF)
		Race(Player1,HALF_ELF)
		Race(Player1,HALFLING)~ + @342 + QI#Zakrion2Talk10.2ad
END

IF ~~ QI#Zakrion2Talk10.2aa
SAY @343
IF ~~ + QI#Zakrion2Talk10.3
END 

IF ~~ QI#Zakrion2Talk10.2ab
SAY @344
IF ~~ + QI#Zakrion2Talk10.3
END 

IF ~~ QI#Zakrion2Talk10.2ac
SAY @345
IF ~~ + QI#Zakrion2Talk10.3
END

IF ~~ QI#Zakrion2Talk10.2ad
SAY @346
= @347
= @348
++ @349 + QI#Zakrion2Talk10.2ad1
++ @350 + QI#Zakrion2Talk10.2ad2
++ @351 + QI#Zakrion2Talk10.2ad3
END

IF ~~ QI#Zakrion2Talk10.2ad1
SAY @352
= @353
= @354
IF ~OR(4)
		Global("AnomenRomanceActive","GLOBAL",2)
		Global("RasaadRomanceActive","GLOBAL",2)
		Global("DornRomanceActive","GLOBAL",2)
		Global("HexxatRomanceActive","GLOBAL",2)~ + QI#Zakrion2Talk10.2commit
IF ~OR(4)
		!Global("AnomenRomanceActive","GLOBAL",2)
		!Global("RasaadRomanceActive","GLOBAL",2)
		!Global("DornRomanceActive","GLOBAL",2)
		!Global("HexxatRomanceActive","GLOBAL",2)~ + QI#Zakrion2Talk10.2romcont
END

IF ~~ QI#Zakrion2Talk10.2romcont
SAY @355
++ @356 + QI#Zakrion2Talk10.2norom
++ @357 + QI#Zakrion2Talk10.2norom
++ @358 + QI#Zakrion2Talk10.2norom
++ @359 + QI#Zakrion2Talk10.2rom
++ @360 + QI#Zakrion2Talk10.2rom
++ @361 + QI#Zakrion2Talk10.2rom
END 

IF ~~ QI#Zakrion2Talk10.2norom
SAY @362
= @363
IF ~~ + QI#Zakrion2Talk10.3
END

IF ~~ QI#Zakrion2Talk10.2rom
SAY @364
= @365
= @366
IF ~~ DO ~SetGlobal("QI#ZakRomanceActive","GLOBAL",1) IncrementGlobal("QI#ZakrionTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakrionTalkTimer","GLOBAL",3600)~ EXIT 
END 

IF ~~ QI#Zakrion2Talk10.2ad2
SAY @367
IF ~~ + QI#Zakrion2Talk10.2ad1
END 

IF ~~ QI#Zakrion2Talk10.2ad3
SAY @368
IF ~~ + QI#Zakrion2Talk10.2ad1
END 

IF ~~ QI#Zakrion2Talk10.2b
SAY @369
++ @370 + QI#Zakrion2Talk10.3
++ @371 + QI#Zakrion2Talk10.2ba
++ @372 + QI#Zakrion2Talk10.2bb
++ @373 + QI#Zakrion2Talk10.2bc
++ @374 + QI#Zakrion2Talk10.2x
+ ~Gender(Player1,FEMALE)
   OR(4)
		Race(Player1,HUMAN)
		Race(Player1,ELF)
		Race(Player1,HALF_ELF)
		Race(Player1,HALFLING)~ + @375 + QI#Zakrion2Talk10.2bd
+ ~Gender(Player1,FEMALE)
   OR(4)
		Race(Player1,HUMAN)
		Race(Player1,ELF)
		Race(Player1,HALF_ELF)
		Race(Player1,HALFLING)~ + @376 + QI#Zakrion2Talk10.2bd
END 

IF ~~ QI#Zakrion2Talk10.2x
SAY @377
= @378
IF ~~ DO ~SetGlobal("QI#ZakrionTalkActive","GLOBAL",1) IncrementGlobal("QI#ZakrionTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakrionTalkTimer","GLOBAL",3600)~ EXIT 
END

IF ~~ QI#Zakrion2Talk10.2ba
SAY @379
IF ~~ + QI#Zakrion2Talk10.3
END

IF ~~ QI#Zakrion2Talk10.2bb
SAY @380
= @381
IF ~~ + QI#Zakrion2Talk10.3
END

IF ~~ QI#Zakrion2Talk10.2bc
SAY @382
= @383
++ @370 + QI#Zakrion2Talk10.3
++ @371 + QI#Zakrion2Talk10.2ba
++ @372 + QI#Zakrion2Talk10.2bb
++ @374 + QI#Zakrion2Talk10.2x
+ ~Gender(Player1,FEMALE)
   OR(4)
		Race(Player1,HUMAN)
		Race(Player1,ELF)
		Race(Player1,HALF_ELF)
		Race(Player1,HALFLING)~ + @375 + QI#Zakrion2Talk10.2bd
+ ~Gender(Player1,FEMALE)
   OR(4)
		Race(Player1,HUMAN)
		Race(Player1,ELF)
		Race(Player1,HALF_ELF)
		Race(Player1,HALFLING)~ + @376 + QI#Zakrion2Talk10.2bd
END

IF ~~ QI#Zakrion2Talk10.2bd
SAY @384
= @385
IF ~OR(4)
		Global("AnomenRomanceActive","GLOBAL",2)
		Global("RasaadRomanceActive","GLOBAL",2)
		Global("DornRomanceActive","GLOBAL",2)
		Global("HexxatRomanceActive","GLOBAL",2)~ + QI#Zakrion2Talk10.2commit
IF ~OR(4)
		!Global("AnomenRomanceActive","GLOBAL",2)
		!Global("RasaadRomanceActive","GLOBAL",2)
		!Global("DornRomanceActive","GLOBAL",2)
		!Global("HexxatRomanceActive","GLOBAL",2)~ + QI#Zakrion2Talk10.2nocommit
END 

IF ~~ QI#Zakrion2Talk10.2commit
SAY @1014
IF ~~ + QI#Zakrion2Talk10.3
END 

IF ~~ QI#Zakrion2Talk10.2nocommit
SAY @386
= @387
= @388
IF ~~ DO ~SetGlobal("QI#ZakRomanceActive","GLOBAL",1) IncrementGlobal("QI#ZakrionTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakrionTalkTimer","GLOBAL",3600)~ EXIT 
END 

IF ~~ QI#Zakrion2Talk10.3
SAY @389
= @390
IF ~~ DO ~IncrementGlobal("QI#ZakrionTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakrionTalkTimer","GLOBAL",3600)~ EXIT 
END 

/* Talk 11 - Daydreaming */
IF ~Global("QI#ZakrionTalk","GLOBAL",22)~ QI#Zakrion2Talk11.0
SAY @391
= @392
++ @393 + QI#Zakrion2Talk11.1
++ @394 + QI#Zakrion2Talk11.0.1
++ @395 + QI#Zakrion2Talk11.0.2
++ @396 + QI#Zakrion2Talk11.0.3
++ @397 + QI#Zakrion2Talk11.0.4
END 

IF ~~ QI#Zakrion2Talk11.0.1
SAY @398
= @399
= @400
IF ~~ + QI#Zakrion2Talk11.1
END

IF ~~ QI#Zakrion2Talk11.0.2
SAY @401
= @402
= @403
= @404
= @405
IF ~~ + QI#Zakrion2Talk11.1
END

IF ~~ QI#Zakrion2Talk11.0.3
SAY @406
= @407
IF ~~ + QI#Zakrion2Talk11.1
END

IF ~~ QI#Zakrion2Talk11.0.4
SAY @408
IF ~~ + QI#Zakrion2Talk11.1
END 

IF ~~ QI#Zakrion2Talk11.1
SAY @409
= @410
++ @411 + QI#Zakrion2Talk11.1.1
++ @412 + QI#Zakrion2Talk11.1.2
++ @413 + QI#Zakrion2Talk11.1.3
++ @414 + QI#Zakrion2Talk11.1.4
++ @415 + QI#Zakrion2Talk11.1.5
END

IF ~~ QI#Zakrion2Talk11.1.1
SAY @416
IF ~~ + QI#Zakrion2Talk11.2
END 

IF ~~ QI#Zakrion2Talk11.1.2
SAY @417
IF ~~ + QI#Zakrion2Talk11.2
END

IF ~~ QI#Zakrion2Talk11.1.3
SAY @418
IF ~~ + QI#Zakrion2Talk11.2
END 

IF ~~ QI#Zakrion2Talk11.1.4
SAY @419
IF ~~ + QI#Zakrion2Talk11.2
END 

IF ~~ QI#Zakrion2Talk11.1.5
SAY @420
= @421
IF ~~ DO ~IncrementGlobal("QI#ZakrionTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakrionTalkTimer","GLOBAL",3600)~ EXIT 
END 

IF ~~ QI#Zakrion2Talk11.2
SAY @422
= @423
= @424
= @425
= @426
= @427
= @428
++ @429 + QI#Zakrion2Talk11.2.1
++ @430 + QI#Zakrion2Talk11.2.2
++ @431 + QI#Zakrion2Talk11.2.3
++ @432 + QI#Zakrion2Talk11.2.1
++ @433 + QI#Zakrion2Talk11.2.1
++ @434 + QI#Zakrion2Talk11.2.4
END 

IF ~~ QI#Zakrion2Talk11.2.1
SAY @435
IF ~~ + QI#Zakrion2Talk11.3
END 

IF ~~ QI#Zakrion2Talk11.2.2
SAY @436
IF ~~ + QI#Zakrion2Talk11.3
END 

IF ~~ QI#Zakrion2Talk11.2.3
SAY @437
IF ~~ + QI#Zakrion2Talk11.3
END 

IF ~~ QI#Zakrion2Talk11.2.4
SAY @438
IF ~~ + QI#Zakrion2Talk11.3
END 

IF ~~ QI#Zakrion2Talk11.3
SAY @439
= @440
= @441
IF ~~ DO ~IncrementGlobal("QI#ZakrionTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakrionTalkTimer","GLOBAL",3600)~ EXIT 
END

END

/**************************************************************************************************
						Romance Track - PC Known and Pursued Relationship in BG1
**************************************************************************************************/

/* Romance Talk 1 - I still can't believe I'm here with you */
CHAIN IF ~Global("QI#ZakrionKnownRomanceTalk","GLOBAL",2)~ THEN QI#ZAK2J QI#ZakrionKnownRomanceTalk1.0
@442
== ANOMENJ IF ~Global("AnomenRomanceActive","GLOBAL",1) InParty("Anomen") !Dead("Anomen") !StateCheck("Anomen",STATE_SLEEPING)~ @1015
== QI#ZAK2J IF ~Global("AnomenRomanceActive","GLOBAL",1) InParty("Anomen") !Dead("Anomen") !StateCheck("Anomen",STATE_SLEEPING)~ @1016
== ANOMENJ IF ~Global("AnomenRomanceActive","GLOBAL",1) InParty("Anomen") !Dead("Anomen") !StateCheck("Anomen",STATE_SLEEPING)~ @1017
== QI#ZAK2J IF ~Global("AnomenRomanceActive","GLOBAL",1) InParty("Anomen") !Dead("Anomen") !StateCheck("Anomen",STATE_SLEEPING)~ @1018
= IF ~Global("AnomenRomanceActive","GLOBAL",1) InParty("Anomen") !Dead("Anomen") !StateCheck("Anomen",STATE_SLEEPING)~ @1019
= @443
= @444
END 
++ @445 EXTERN QI#ZAK2J QI#ZakrionKnownRomanceTalk1.1
++ @446 EXTERN QI#ZAK2J QI#ZakrionKnownRomanceTalk1.0.1
++ @447 EXTERN QI#ZAK2J QI#ZakrionKnownRomanceTalk1.0.2
++ @448 EXTERN QI#ZAK2J QI#ZakrionKnownRomanceTalk1.0x

CHAIN QI#ZAK2J QI#ZakrionKnownRomanceTalk1.0x
@449
= @450
DO ~SetGlobal("QI#ZakrionRomanceActive","GLOBAL",3)~ EXIT 

CHAIN QI#ZAK2J QI#ZakrionKnownRomanceTalk1.0.1
@451
= @452
END
IF ~~ EXTERN QI#ZAK2J QI#ZakrionKnownRomanceTalk1.1


CHAIN QI#ZAK2J QI#ZakrionKnownRomanceTalk1.0.2
@453
END
IF ~~ EXTERN QI#ZAK2J QI#ZakrionKnownRomanceTalk1.1

CHAIN QI#ZAK2J QI#ZakrionKnownRomanceTalk1.1
@454
= @455
= @456
END
++ @457 EXTERN QI#ZAK2J QI#ZakrionKnownRomanceTalk1.2
++ @458 EXTERN QI#ZAK2J QI#ZakrionKnownRomanceTalk1.2
++ @459 EXTERN QI#ZAK2J QI#ZakrionKnownRomanceTalk1.2
++ @460 EXTERN QI#ZAK2J QI#ZakrionKnownRomanceTalk1.1.1

CHAIN QI#ZAK2J QI#ZakrionKnownRomanceTalk1.1.1
@461
= @462
END
++ @463 EXTERN QI#ZAK2J QI#ZakrionKnownRomanceTalk1.1.1x
++ @464 EXTERN QI#ZAK2J QI#ZakrionKnownRomanceTalk1.2

CHAIN QI#ZAK2J QI#ZakrionKnownRomanceTalk1.1.1x
@465
= @466
DO ~IncrementGlobal("QI#ZakrionKnownRomanceTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakrionRomanceTimer","GLOBAL",3600)~ EXIT 

CHAIN QI#ZAK2J QI#ZakrionKnownRomanceTalk1.2
@467
= @468
= @469
= @470
= @471
= @472
= @473
= @474
END
++ @475 EXTERN QI#ZAK2J QI#ZakrionKnownRomanceTalk1.2.1
++ @476 EXTERN QI#ZAK2J QI#ZakrionKnownRomanceTalk1.2.2
++ @477 EXTERN QI#ZAK2J QI#ZakrionKnownRomanceTalk1.3
++ @478 EXTERN QI#ZAK2J QI#ZakrionKnownRomanceTalk1.2.3

CHAIN QI#ZAK2J QI#ZakrionKnownRomanceTalk1.2.1
@479
END
IF ~~ EXTERN QI#ZAK2J QI#ZakrionKnownRomanceTalk1.3

CHAIN QI#ZAK2J QI#ZakrionKnownRomanceTalk1.2.2
@480
= @481
END
IF ~~ EXTERN QI#ZAK2J QI#ZakrionKnownRomanceTalk1.3

CHAIN QI#ZAK2J QI#ZakrionKnownRomanceTalk1.2.3
@482
END
IF ~~ EXTERN QI#ZAK2J QI#ZakrionKnownRomanceTalk1.3

CHAIN QI#ZAK2J QI#ZakrionKnownRomanceTalk1.3
@483
= @484
DO ~IncrementGlobal("QI#ZakrionKnownRomanceTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakrionRomanceTimer","GLOBAL",3600)~ EXIT 


APPEND QI#ZAK2J

/* Romance Talk 2 - What happened with Irenicus? */
IF ~Global("QI#ZakrionKnownRomanceTalk","GLOBAL",4)~ QI#ZakrionKnownRomanceTalk2.0
SAY @485
= @486
++ @487 + QI#ZakrionKnownRomanceTalk2.0.1
++ @488 + QI#ZakrionKnownRomanceTalk2.0.2
++ @489 + QI#ZakrionKnownRomanceTalk2.0.3
++ @490 + QI#ZakrionKnownRomanceTalk2.0.4
++ @491 + QI#ZakrionKnownRomanceTalk2.0.5
END 

IF ~~ QI#ZakrionKnownRomanceTalk2.0.1
SAY @492
IF ~~  + QI#ZakrionKnownRomanceTalk2.1
END

IF ~~ QI#ZakrionKnownRomanceTalk2.0.2
SAY @493
IF ~~  + QI#ZakrionKnownRomanceTalk2.1
END

IF ~~ QI#ZakrionKnownRomanceTalk2.0.3
SAY @494
IF ~~  + QI#ZakrionKnownRomanceTalk2.1
END

IF ~~ QI#ZakrionKnownRomanceTalk2.0.4
SAY @495
IF ~~  + QI#ZakrionKnownRomanceTalk2.1
END

IF ~~ QI#ZakrionKnownRomanceTalk2.0.5
SAY @496
= @497
++ @498 + QI#ZakrionKnownRomanceTalk2.0.5a
++ @499 + QI#ZakrionKnownRomanceTalk2.0.5b
++ @500 + QI#ZakrionKnownRomanceTalk2.0.4
++ @501 + QI#ZakrionKnownRomanceTalk2.0.2
++ @502 + QI#ZakrionKnownRomanceTalk2.0.5x
END 

IF ~~ QI#ZakrionKnownRomanceTalk2.0.5a
SAY @503
IF ~~ + QI#ZakrionKnownRomanceTalk2.1
END 

IF ~~ QI#ZakrionKnownRomanceTalk2.0.5b
SAY @504
++ @505 + QI#ZakrionKnownRomanceTalk2.0.5b1
++ @500 + QI#ZakrionKnownRomanceTalk2.0.4
++ @501 + QI#ZakrionKnownRomanceTalk2.0.2
END 

IF ~~ QI#ZakrionKnownRomanceTalk2.0.5b1
SAY @506
= @507
IF ~~ + QI#ZakrionKnownRomanceTalk2.1
END 

IF ~~ QI#ZakrionKnownRomanceTalk2.0.5x
SAY @508
= @509
= @510
IF ~~ DO ~IncrementGlobal("QI#ZakrionKnownRomanceTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakrionRomanceTimer","GLOBAL",3600)~ EXIT 
END 

IF ~~ QI#ZakrionKnownRomanceTalk2.1
SAY @511
= @512
= @513
= @514
= @515
= @516
++ @83 + QI#ZakrionKnownRomanceTalk2.2
++ @517 + QI#ZakrionKnownRomanceTalk2.1.1
++ @518 + QI#ZakrionKnownRomanceTalk2.1.2
END

IF ~~ QI#ZakrionKnownRomanceTalk2.1.1
SAY @519
IF ~~ + QI#ZakrionKnownRomanceTalk2.2
END 

IF ~~ QI#ZakrionKnownRomanceTalk2.1.2
SAY @520
= @521
= @1417
IF ~~ + QI#ZakrionKnownRomanceTalk2.2
END 

IF ~~ QI#ZakrionKnownRomanceTalk2.2
SAY @522
= @523
= @524
= @525
= @526
= @527
= @528
= @529
= @530
++ @531 + QI#ZakrionKnownRomanceTalk2.3
++ @532 + QI#ZakrionKnownRomanceTalk2.2.1
END 

IF ~~ QI#ZakrionKnownRomanceTalk2.2.1
SAY @533
IF ~~ + QI#ZakrionKnownRomanceTalk2.3
END

IF ~~ QI#ZakrionKnownRomanceTalk2.3
SAY @534
= @535
= @536
= @537
= @538
++ @539 + QI#ZakrionKnownRomanceTalk2.3.1
++ @540 + QI#ZakrionKnownRomanceTalk2.3.2
++ @541 + QI#ZakrionKnownRomanceTalk2.3.3
++ @542 + QI#ZakrionKnownRomanceTalk2.3x
END 

IF ~~ QI#ZakrionKnownRomanceTalk2.3x
SAY @543
= @544
IF ~~ DO ~SetGlobal("QI#ZakrionRomanceActive","GLOBAL",3)~ EXIT
END 

IF ~~ QI#ZakrionKnownRomanceTalk2.3.1
SAY @545
IF ~~ + QI#ZakrionKnownRomanceTalk2.4
END 

IF ~~ QI#ZakrionKnownRomanceTalk2.3.2
SAY @546
IF ~~ + QI#ZakrionKnownRomanceTalk2.4
END 

IF ~~ QI#ZakrionKnownRomanceTalk2.3.3
SAY @547
IF ~~ + QI#ZakrionKnownRomanceTalk2.4
END 

IF ~~ QI#ZakrionKnownRomanceTalk2.4
SAY @548
= @549
= @550
IF ~~ DO ~IncrementGlobal("QI#ZakrionKnownRomanceTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakrionRomanceTimer","GLOBAL",3600)~ EXIT 
END

END

/* Romance Talk 3 - Have you ever made a mistake before? */
CHAIN IF ~Global("QI#ZakrionKnownRomanceTalk","GLOBAL",6)~ THEN QI#ZAK2J QI#ZakrionKnownRomanceTalk3.0
@551
== ANOMENJ IF ~Global("AnomenRomanceActive","GLOBAL",1) InParty("Anomen") !Dead("Anomen") !StateCheck("Anomen",STATE_SLEEPING)~ @1023
== QI#ZAK2J IF ~Global("AnomenRomanceActive","GLOBAL",1) InParty("Anomen") !Dead("Anomen") !StateCheck("Anomen",STATE_SLEEPING)~ @1024
= IF ~Global("AnomenRomanceActive","GLOBAL",1) InParty("Anomen") !Dead("Anomen") !StateCheck("Anomen",STATE_SLEEPING)~ @1025
= IF ~Global("AnomenRomanceActive","GLOBAL",1) InParty("Anomen") !Dead("Anomen") !StateCheck("Anomen",STATE_SLEEPING)~ @1026
== ANOMENJ IF ~Global("AnomenRomanceActive","GLOBAL",1) InParty("Anomen") !Dead("Anomen") !StateCheck("Anomen",STATE_SLEEPING)~ @1027
== QI#ZAK2J IF ~Global("AnomenRomanceActive","GLOBAL",1) InParty("Anomen") !Dead("Anomen") !StateCheck("Anomen",STATE_SLEEPING)~ @1028
= IF ~Global("AnomenRomanceActive","GLOBAL",1) InParty("Anomen") !Dead("Anomen") !StateCheck("Anomen",STATE_SLEEPING)~ @1029
END
++ @552 EXTERN QI#ZAK2J QI#ZakrionKnownRomanceTalk3.0.1
++ @553 EXTERN QI#ZAK2J QI#ZakrionKnownRomanceTalk3.0.2
++ @554 EXTERN QI#ZAK2J QI#ZakrionKnownRomanceTalk3.0.3
++ @555 EXTERN QI#ZAK2J QI#ZakrionKnownRomanceTalk3.0.4
++ @556 EXTERN QI#ZAK2J QI#ZakrionKnownRomanceTalk3.0.5

CHAIN QI#ZAK2J QI#ZakrionKnownRomanceTalk3.0.1
@557
= @558
END
IF ~~ EXTERN QI#ZAK2J QI#ZakrionKnownRomanceTalk3.1

CHAIN QI#ZAK2J QI#ZakrionKnownRomanceTalk3.0.2
@559
END
IF ~~ EXTERN QI#ZAK2J QI#ZakrionKnownRomanceTalk3.1

CHAIN QI#ZAK2J QI#ZakrionKnownRomanceTalk3.0.3
@560
= @561
END
IF ~~ EXTERN QI#ZAK2J QI#ZakrionKnownRomanceTalk3.1

CHAIN QI#ZAK2J QI#ZakrionKnownRomanceTalk3.0.4
@562
END
IF ~~ EXTERN QI#ZAK2J QI#ZakrionKnownRomanceTalk3.1

CHAIN QI#ZAK2J QI#ZakrionKnownRomanceTalk3.0.5
@563
END
IF ~~ EXTERN QI#ZAK2J QI#ZakrionKnownRomanceTalk3.1

CHAIN QI#ZAK2J QI#ZakrionKnownRomanceTalk3.1
@564
= @565
= @566
= @567
END
++ @568 EXTERN QI#ZAK2J QI#ZakrionKnownRomanceTalk3.1.1
++ @569 EXTERN QI#ZAK2J QI#ZakrionKnownRomanceTalk3.1.1
++ @570 EXTERN QI#ZAK2J QI#ZakrionKnownRomanceTalk3.1.1
++ @571 EXTERN QI#ZAK2J QI#ZakrionKnownRomanceTalk3.1.1
++ @572 EXTERN QI#ZAK2J QI#ZakrionKnownRomanceTalk3.1.1
++ @573 EXTERN QI#ZAK2J QI#ZakrionKnownRomanceTalk3.1.2

CHAIN QI#ZAK2J QI#ZakrionKnownRomanceTalk3.1.1
@574
END
IF ~~ EXTERN QI#ZAK2J QI#ZakrionKnownRomanceTalk3.2

CHAIN QI#ZAK2J QI#ZakrionKnownRomanceTalk3.1.2
@575
= @576
END
IF ~~ EXTERN QI#ZAK2J QI#ZakrionKnownRomanceTalk3.2

CHAIN QI#ZAK2J QI#ZakrionKnownRomanceTalk3.2
@577
= @578
END
++ @579 EXTERN QI#ZAK2J QI#ZakrionKnownRomanceTalk3.2.1
++ @580 EXTERN QI#ZAK2J QI#ZakrionKnownRomanceTalk3.2.2
++ @581 EXTERN QI#ZAK2J QI#ZakrionKnownRomanceTalk3.2.3
++ @582 EXTERN QI#ZAK2J QI#ZakrionKnownRomanceTalk3.2.4
+ ~CheckStatGT(Player1, 12, WIS)~ + @583 EXTERN QI#ZAK2J QI#ZakrionKnownRomanceTalk3.2.5

CHAIN QI#ZAK2J QI#ZakrionKnownRomanceTalk3.2.1
@584
END
IF ~~ EXTERN QI#ZAK2J QI#ZakrionKnownRomanceTalk3.3

CHAIN QI#ZAK2J QI#ZakrionKnownRomanceTalk3.2.2
@585
END
IF ~~ EXTERN QI#ZAK2J QI#ZakrionKnownRomanceTalk3.3

CHAIN QI#ZAK2J QI#ZakrionKnownRomanceTalk3.2.3
@586
END
IF ~~ EXTERN QI#ZAK2J QI#ZakrionKnownRomanceTalk3.3

CHAIN QI#ZAK2J QI#ZakrionKnownRomanceTalk3.2.4
@587
END
IF ~~ EXTERN QI#ZAK2J QI#ZakrionKnownRomanceTalk3.3

CHAIN QI#ZAK2J QI#ZakrionKnownRomanceTalk3.2.5
@588
END
IF ~~ EXTERN QI#ZAK2J QI#ZakrionKnownRomanceTalk3.3

CHAIN QI#ZAK2J QI#ZakrionKnownRomanceTalk3.3
@589 
= @590
= @591
= @592
= @593
= @594
= @595
= @596
= @597
DO ~IncrementGlobal("QI#ZakrionKnownRomanceTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakrionRomanceTimer","GLOBAL",3600)~ EXIT 


APPEND QI#ZAK2J
 
/* Romance Talk 4 -  Meeting with His Mom */
IF ~Global("QI#ZakrionKnownRomanceTalk","GLOBAL",8)~ QI#ZakrionKnownRomanceTalk4.0
SAY @598
= @599
= @600
++ @601 + QI#ZakrionKnownRomanceTalk4.0.1
++ @602 + QI#ZakrionKnownRomanceTalk4.0.2
++ @603 + QI#ZakrionKnownRomanceTalk4.0.3
++ @604 + QI#ZakrionKnownRomanceTalk4.0.4
END  

IF ~~ QI#ZakrionKnownRomanceTalk4.0.1
SAY @605
IF ~~ + QI#ZakrionKnownRomanceTalk4.1
END 

IF ~~ QI#ZakrionKnownRomanceTalk4.0.2
SAY @606
IF ~~ + QI#ZakrionKnownRomanceTalk4.1
END 

IF ~~ QI#ZakrionKnownRomanceTalk4.0.3
SAY @607
IF ~~ + QI#ZakrionKnownRomanceTalk4.1
END 

IF ~~ QI#ZakrionKnownRomanceTalk4.0.4
SAY @608
IF ~~ + QI#ZakrionKnownRomanceTalk4.1
END 

IF ~~ QI#ZakrionKnownRomanceTalk4.1
SAY @609
= @610
= @611
++ @612 + QI#ZakrionKnownRomanceTalk4.1.1
++ @613 + QI#ZakrionKnownRomanceTalk4.1.2
++ @614 + QI#ZakrionKnownRomanceTalk4.1.2
++ @615 + QI#ZakrionKnownRomanceTalk4.1.3
END 

IF ~~ QI#ZakrionKnownRomanceTalk4.1.1
SAY @616
IF ~~ + QI#ZakrionKnownRomanceTalk4.2
END 

IF ~~ QI#ZakrionKnownRomanceTalk4.1.2
SAY @617
IF ~~ + QI#ZakrionKnownRomanceTalk4.2
END 

IF ~~ QI#ZakrionKnownRomanceTalk4.1.3
SAY @618
= @619
IF ~~ + QI#ZakrionKnownRomanceTalk4.2
END 

IF ~~ QI#ZakrionKnownRomanceTalk4.2
SAY @620
= @621
= @622
= @623
= @624
IF ~~ DO ~IncrementGlobal("QI#ZakrionKnownRomanceTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakrionRomanceTimer","GLOBAL",3600)~ EXIT 
END 

/* Romance Talk 5 - My best friend is Buttercup */
IF ~Global("QI#ZakrionKnownRomanceTalk","GLOBAL",10)~ QI#ZakrionKnownRomanceTalk5.0
SAY @625
= @626
= @627
= @628
= @629
++ @630 + QI#ZakrionKnownRomanceTalk5.0.1
++ @631 + QI#ZakrionKnownRomanceTalk5.0.2
++ @632 + QI#ZakrionKnownRomanceTalk5.0.3
++ @633 + QI#ZakrionKnownRomanceTalk5.0.4
++ @634 + QI#ZakrionKnownRomanceTalk5.0.5
END

IF ~~ QI#ZakrionKnownRomanceTalk5.0.1
SAY @635
IF ~~ + QI#ZakrionKnownRomanceTalk5.1
END 

IF ~~ QI#ZakrionKnownRomanceTalk5.0.2
SAY @636
IF ~~ + QI#ZakrionKnownRomanceTalk5.1
END 

IF ~~ QI#ZakrionKnownRomanceTalk5.0.3
SAY @637
IF ~~ + QI#ZakrionKnownRomanceTalk5.1
END 

IF ~~ QI#ZakrionKnownRomanceTalk5.0.4
SAY @638
= @639
++ @640 + QI#ZakrionKnownRomanceTalk5.0.4a
++ @641 + QI#ZakrionKnownRomanceTalk5.0.4b
++ @642 + QI#ZakrionKnownRomanceTalk5.0.4x
END 

IF ~~ QI#ZakrionKnownRomanceTalk5.0.4x
SAY @643
= @644
= @645
= @646
IF ~~ DO ~SetGlobal("QI#ZakrionRomanceActive","GLOBAL",3) LeaveParty() EscapeArea()~ EXIT 
END

IF ~~ QI#ZakrionKnownRomanceTalk5.0.4a
SAY @647
= @648
= @649
= @650
IF ~~ + QI#ZakrionKnownRomanceTalk5.1
END

IF ~~ QI#ZakrionKnownRomanceTalk5.0.4b
SAY @628
IF ~~ + QI#ZakrionKnownRomanceTalk5.1
END 

IF ~~ QI#ZakrionKnownRomanceTalk5.0.5
SAY @651
IF ~~ + QI#ZakrionKnownRomanceTalk5.1
END 

IF ~~ QI#ZakrionKnownRomanceTalk5.1
SAY @652
= @653
= @654
= @655
= @656
++ @657 + QI#ZakrionKnownRomanceTalk5.1.1
++ @658 + QI#ZakrionKnownRomanceTalk5.2
++ @659 + QI#ZakrionKnownRomanceTalk5.2
++ @660 + QI#ZakrionKnownRomanceTalk5.1.2
END 

IF ~~ QI#ZakrionKnownRomanceTalk5.1.1
SAY @661
IF ~~ + QI#ZakrionKnownRomanceTalk5.2
END 

IF ~~ QI#ZakrionKnownRomanceTalk5.1.2
SAY @662
= @663
IF ~~ + QI#ZakrionKnownRomanceTalk5.2
END 

IF ~~ QI#ZakrionKnownRomanceTalk5.2
SAY @664
= @665
= @666
= @667
IF ~~ DO ~IncrementGlobal("QI#ZakrionKnownRomanceTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakrionRomanceTimer","GLOBAL",3600)~ EXIT 
END 

/* Romance Talk 6 - I meant to ask you... */
IF ~Global("QI#ZakrionKnownRomanceTalk","GLOBAL",12)~ QI#ZakrionKnownRomanceTalk6.0
SAY @668
++ @669 + QI#ZakrionKnownRomanceTalk6.0.1
++ @670 + QI#ZakrionKnownRomanceTalk6.1
++ @671 + QI#ZakrionKnownRomanceTalk6.0.2
END

IF ~~ QI#ZakrionKnownRomanceTalk6.0.1
SAY @672
IF ~~ + QI#ZakrionKnownRomanceTalk6.1
END

IF ~~ QI#ZakrionKnownRomanceTalk6.0.2
SAY @673
IF ~~ + QI#ZakrionKnownRomanceTalk6.1
END

IF ~~ QI#ZakrionKnownRomanceTalk6.1
SAY @674
= @675
= @676
= @677
= @678
= @679
= @680
= @681
= @682
= @683
++ @684 + QI#ZakrionKnownRomanceTalk6.2
++ @685 + QI#ZakrionKnownRomanceTalk6.2
++ @686 + QI#ZakrionKnownRomanceTalk6.1.1
++ @687 + QI#ZakrionKnownRomanceTalk6.0x
++ @688 + QI#ZakrionKnownRomanceTalk6.0xx
END 

IF ~~ QI#ZakrionKnownRomanceTalk6.0x
SAY @689
= @690
= @691
IF ~~ DO ~SetGlobal("QI#ZakrionRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ QI#ZakrionKnownRomanceTalk6.0xx
SAY @692
= @693
= @694
= @695
= @696
IF ~~ DO ~SetGlobal("QI#ZakrionRomanceActive","GLOBAL",3)~ EXIT
END 

IF ~~ QI#ZakrionKnownRomanceTalk6.1.1
SAY @697
= @698
IF ~~ DO ~IncrementGlobal("QI#ZakrionKnownRomanceTalk","GLOBAL",1) SetGlobal("QI#ZakrionKnownDecision","GLOBAL",1)~ EXIT
END

IF ~~ QI#ZakrionKnownRomanceTalk6.2
SAY @699
= @700
= @701
= @702
++ @703 + QI#ZakrionKnownRomanceTalk6.3
++ @704 + QI#ZakrionKnownRomanceTalk6.3
++ @705 + QI#ZakrionKnownRomanceTalk6.2.1
++ @706 + QI#ZakrionKnownRomanceTalk6.0xx
END

IF ~~ QI#ZakrionKnownRomanceTalk6.2.1
SAY @707
= @708
IF ~~ DO ~IncrementGlobal("QI#ZakrionKnownRomanceTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakrionRomanceTimer","GLOBAL",3600) SetGlobal("QI#ZakrionKnownKiss","GLOBAL",1) SetGlobal("QI#ZakRomanceActive","GLOBAL",2)~ EXIT 
END 

IF ~~ QI#ZakrionKnownRomanceTalk6.3
SAY @709
= @710
IF ~~ DO ~IncrementGlobal("QI#ZakrionKnownRomanceTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakrionRomanceTimer","GLOBAL",3600) SetGlobal("QI#ZakRomanceActive","GLOBAL",2)~ EXIT 
END 

/* Romance Talk 7 - Stay the night with me */
IF ~Global("QI#ZakrionKnownRomanceTalk","GLOBAL",14)~ QI#ZakrionKnownRomanceTalk7.0
SAY @711
++ @712 + QI#ZakrionKnownRomanceTalk7.1
++ @713 + QI#ZakrionKnownRomanceTalk7.1
++ @714 + QI#ZakrionKnownRomanceTalk7.1
++ @715 + QI#ZakrionKnownRomanceTalk7.0.1
END 

IF ~~ QI#ZakrionKnownRomanceTalk7.0.1
SAY @716
IF ~~ DO ~IncrementGlobal("QI#ZakrionKnownRomanceTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakrionRomanceTimer","GLOBAL",3600) SetGlobal("QI#ZakrionKnownNotNightSpent","GLOBAL",1) RestParty()~ EXIT 
END

IF ~~ QI#ZakrionKnownRomanceTalk7.1
SAY @717
= @718
= @719
= @720
++ @721 + QI#ZakrionKnownRomanceTalk7.2
++ @722 + QI#ZakrionKnownRomanceTalk7.2
++ @723 + QI#ZakrionKnownRomanceTalk7.1.1
++ @724 + QI#ZakrionKnownRomanceTalk7.1x
END 

IF ~~ QI#ZakrionKnownRomanceTalk7.1x
SAY @725
= @726
= @727
++ @728 + QI#ZakrionKnownRomanceTalk7.1a
++ @729 + QI#ZakrionKnownRomanceTalk7.1xx
END 

IF ~~ QI#ZakrionKnownRomanceTalk7.1xx
SAY @730
= @731
IF ~~ DO ~SetGlobal("QI#ZakrionRomanceActive","GLOBAL",3) RestParty()~ EXIT
END 

IF ~~ QI#ZakrionKnownRomanceTalk7.1a
SAY @732
= @733
++ @734 + QI#ZakrionKnownRomanceTalk7.1.1
++ @735 + QI#ZakrionKnownRomanceTalk7.1.1
++ @736 + QI#ZakrionKnownRomanceTalk7.2
END 

IF ~~ QI#ZakrionKnownRomanceTalk7.1.1
SAY @1020
= @1021
IF ~~ DO ~SetGlobal("QI#ZakrionKnownNotNightSpent","GLOBAL",1) IncrementGlobal("QI#ZakrionKnownRomanceTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakrionRomanceTimer","GLOBAL",3600) RestParty()~ EXIT 
END 

IF ~~ QI#ZakrionKnownRomanceTalk7.2
SAY @737
= @738
IF ~~ DO ~IncrementGlobal("QI#ZakrionKnownRomanceTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakrionRomanceTimer","GLOBAL",3600) SetGlobal("QI#ZakrionKnownNightSpent","GLOBAL",1) RestParty()~ EXIT 
END 

/* Romance Talk 7a - Spending the Night Together, Morning Talk */
IF ~Global("QI#ZakrionKnownNightSpent","GLOBAL",2)~ QI#ZakrionKnownRomanceTalk7.0a
SAY @739
++ @740 + QI#ZakrionNightSpent1.0
++ @741 + QI#ZakrionNightSpent1.0
++ @742 + QI#ZakrionNightSpent1.0
++ @743 + QI#ZakrionNightSpent1.0.1
END 

IF ~~ QI#ZakrionNightSpent1.0.1
SAY @744
= @745
IF ~~ + QI#ZakrionNightSpent1.0x
END

IF ~~ QI#ZakrionNightSpent1.0
SAY @746
= @747
++ @748 + QI#ZakrionNightSpent1.1
++ @749 + QI#ZakrionNightSpent1.2
++ @750 + QI#ZakrionNightSpent1.3
++ @751 + QI#ZakrionNightSpent1.0.1
END 

IF ~~ QI#ZakrionNightSpent1.1
SAY @752
IF ~~ + QI#ZakrionNightSpent1.0x
END

IF ~~ QI#ZakrionNightSpent1.2
SAY @753
IF ~~ + QI#ZakrionNightSpent1.0x
END

IF ~~ QI#ZakrionNightSpent1.3
SAY @754
IF ~~ + QI#ZakrionNightSpent1.0x
END

IF ~~ QI#ZakrionNightSpent1.0x
SAY @755
= @756
= @757
IF ~~ DO ~SetGlobal("QI#ZakrionKnownNightSpent","GLOBAL",3)~ EXIT
END 

/* Romance Talk 7b - Not Spending the Night Together, Morning Talk */
IF ~Global("QI#ZakrionKnownNotNightSpent","GLOBAL",2)~ QI#ZakrionKnownRomanceTalk7.0b
SAY @758
= @759
= @760
= @761
IF ~~ DO ~SetGlobal("QI#ZakrionKnownNotNightSpent","GLOBAL",3) SetGlobal("QI#ZakSpentNightLater","GLOBAL",1)~ EXIT
END 

/* Romance Talk 8 - Salbread */
IF ~Global("QI#ZakrionKnownRomanceTalk","GLOBAL",16)~ QI#ZakrionKnownRomanceTalk8.0
SAY @762
++ @763 + QI#ZakrionKnownRomanceTalk8.1
++ @764 + QI#ZakrionKnownRomanceTalk8.1
++ @765 + QI#ZakrionKnownRomanceTalk8.0.1
++ @766 + QI#ZakrionKnownRomanceTalk8.0x
END 

IF ~~ QI#ZakrionKnownRomanceTalk8.0x
SAY @767
++ @768 + QI#ZakrionKnownRomanceTalk8.0xa
++ @769 + QI#ZakrionKnownRomanceTalk8.0xb
END

IF ~~ QI#ZakrionKnownRomanceTalk8.0xa
SAY @770
= @771
IF ~~ + QI#ZakrionKnownRomanceTalk8.1
END

IF ~~ QI#ZakrionKnownRomanceTalk8.0xb
SAY @772
= @773
++ @774 + QI#ZakrionKnownRomanceTalk8.0xx
++ @775 + QI#ZakrionKnownRomanceTalk8.0xa
END 

IF ~~ QI#ZakrionKnownRomanceTalk8.0xx
SAY @776
= @777
IF ~~ DO ~SetGlobal("QI#ZakrionRomanceActive","GLOBAL",3)~ EXIT
END 

IF ~~ QI#ZakrionKnownRomanceTalk8.0.1
SAY @778
IF ~~ + QI#ZakrionKnownRomanceTalk8.1
END

IF ~~ QI#ZakrionKnownRomanceTalk8.1
SAY @779
= @780
++ @781 + QI#ZakrionKnownRomanceTalk8.1.1
+ ~Race(Player1,HALFLING)~ + @782 + QI#ZakrionKnownRomanceTalk8.1.2
++ @783 + QI#ZakrionKnownRomanceTalk8.1.3
++ @784 + QI#ZakrionKnownRomanceTalk8.1.4
END 

IF ~~ QI#ZakrionKnownRomanceTalk8.1.1
SAY @785
IF ~~ + QI#ZakrionKnownRomanceTalk8.2
END 

IF ~~ QI#ZakrionKnownRomanceTalk8.1.2
SAY @786
IF ~~ + QI#ZakrionKnownRomanceTalk8.2
END 

IF ~~ QI#ZakrionKnownRomanceTalk8.1.3
SAY @787
IF ~~ + QI#ZakrionKnownRomanceTalk8.2
END 

IF ~~ QI#ZakrionKnownRomanceTalk8.1.4
SAY @788
IF ~~ + QI#ZakrionKnownRomanceTalk8.2
END 

IF ~~ QI#ZakrionKnownRomanceTalk8.2
SAY @789
= @790
= @791
++ @792 + QI#ZakrionKnownRomanceTalk8.3
++ @793 + QI#ZakrionKnownRomanceTalk8.3
++ @794 + QI#ZakrionKnownRomanceTalk8.2.1
++ @795 + QI#ZakrionKnownRomanceTalk8.2.2
END 

IF ~~ QI#ZakrionKnownRomanceTalk8.2.1
SAY @796
IF ~~ + QI#ZakrionKnownRomanceTalk8.3
END

IF ~~ QI#ZakrionKnownRomanceTalk8.2.2
SAY @797
IF ~~ + QI#ZakrionKnownRomanceTalk8.3
END 

IF ~~ QI#ZakrionKnownRomanceTalk8.3
SAY @798
= @799
= @800
= @801
IF ~~ DO ~IncrementGlobal("QI#ZakrionKnownRomanceTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakrionRomanceTimer","GLOBAL",3600)~ EXIT 
END 

/* Romance Talk 9 - This feels right */
IF ~Global("QI#ZakrionKnownRomanceTalk","GLOBAL",18)~ QI#ZakrionKnownRomanceTalk9.0
SAY @802
= @803
++ @804 + QI#ZakrionKnownRomanceTalk9.0.1
++ @805 + QI#ZakrionKnownRomanceTalk9.0.2
++ @806 + QI#ZakrionKnownRomanceTalk9.0.3
++ @807 + QI#ZakrionKnownRomanceTalk9.0x
END 

IF ~~ QI#ZakrionKnownRomanceTalk9.0x
SAY @808
++ @809 + QI#ZakrionKnownRomanceTalk9.0.1
++ @810 + QI#ZakrionKnownRomanceTalk9.0xa
++ @811 + QI#ZakrionKnownRomanceTalk9.0xx
++ @812 + QI#ZakrionKnownRomanceTalk9.0xx
END 

IF ~~ QI#ZakrionKnownRomanceTalk9.0xx
SAY @813
= @814
IF ~~ DO ~SetGlobal("QI#ZakrionRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ QI#ZakrionKnownRomanceTalk9.0xa
SAY @815
= @816
++ @817 + QI#ZakrionKnownRomanceTalk9.0.1
++ @818 + QI#ZakrionKnownRomanceTalk9.0xaa
++ @819 + QI#ZakrionKnownRomanceTalk9.0xab
++ @820 + QI#ZakrionKnownRomanceTalk9.0xx
++ @821 + QI#ZakrionKnownRomanceTalk9.0xx
END 

IF ~~ QI#ZakrionKnownRomanceTalk9.0xaa
SAY @822
IF ~~ + QI#ZakrionKnownRomanceTalk9.0.1
END

IF ~~ QI#ZakrionKnownRomanceTalk9.0xab
SAY @823
= @824
++ @825 + QI#ZakrionKnownRomanceTalk9.0xabx
++ @826 + QI#ZakrionKnownRomanceTalk9.0xx
++ @827 + QI#ZakrionKnownRomanceTalk9.0xx
END 

IF ~~ QI#ZakrionKnownRomanceTalk9.0xabx
SAY @828
= @829
= @830
IF ~~ DO ~SetGlobal("QI#ZakrionRomanceActive","GLOBAL",3)~ EXIT
END 

IF ~~ QI#ZakrionKnownRomanceTalk9.0.1
SAY @831
IF ~~ + QI#ZakrionKnownRomanceTalk9.1
END

IF ~~ QI#ZakrionKnownRomanceTalk9.0.2
SAY @832
IF ~~ + QI#ZakrionKnownRomanceTalk9.1
END

IF ~~ QI#ZakrionKnownRomanceTalk9.0.3
SAY @833
++ @825 + QI#ZakrionKnownRomanceTalk9.0xabx
++ @834 + QI#ZakrionKnownRomanceTalk9.0.3a
++ @826 + QI#ZakrionKnownRomanceTalk9.0xx
++ @827 + QI#ZakrionKnownRomanceTalk9.0xx
END

IF ~~ QI#ZakrionKnownRomanceTalk9.0.3a
SAY @835
= @836
= @837
= @838
= @839
IF ~~ DO ~SetGlobal("QI#ZakrionRomanceActive","GLOBAL",3)~ EXIT
END 

IF ~~ QI#ZakrionKnownRomanceTalk9.1
SAY @840
= @841
= @842
++ @843 + QI#ZakrionKnownRomanceTalk9.1.1
++ @844 + QI#ZakrionKnownRomanceTalk9.1.2
++ @845 + QI#ZakrionKnownRomanceTalk9.1x
END 

IF ~~ QI#ZakrionKnownRomanceTalk9.1x
SAY @846
= @847
= @848
IF ~~ DO ~SetGlobal("QI#ZakrionRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ QI#ZakrionKnownRomanceTalk9.1.1
SAY @849
= @850
= @851
IF ~~ + QI#ZakrionKnownRomanceTalk9.2
END

IF ~~ QI#ZakrionKnownRomanceTalk9.1.2
SAY @852
IF ~~ + QI#ZakrionKnownRomanceTalk9.2
END

IF ~~ QI#ZakrionKnownRomanceTalk9.2
SAY @853
= @854
= @855
IF ~~ DO ~IncrementGlobal("QI#ZakrionKnownRomanceTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakrionRomanceTimer","GLOBAL",3600)~ EXIT 
END 

END

/**************************************************************************************************
						Romance Track - PC Not Known
**************************************************************************************************/

/* Romance Talk 1 - This is a new */
CHAIN IF ~Global("QI#ZakrionNotKnownRomanceTalk","GLOBAL",2)~ THEN QI#ZAK2J QI#ZakrionNotKnownRomanceTalk1.0
@856
== ANOMENJ IF ~Global("AnomenRomanceActive","GLOBAL",1) InParty("Anomen") !Dead("Anomen") !StateCheck("Anomen",STATE_SLEEPING)~ @1030
== QI#ZAK2J IF ~Global("AnomenRomanceActive","GLOBAL",1) InParty("Anomen") !Dead("Anomen") !StateCheck("Anomen",STATE_SLEEPING)~ @1031
== ANOMENJ IF ~Global("AnomenRomanceActive","GLOBAL",1) InParty("Anomen") !Dead("Anomen") !StateCheck("Anomen",STATE_SLEEPING)~ @1032
== QI#ZAK2J IF ~Global("AnomenRomanceActive","GLOBAL",1) InParty("Anomen") !Dead("Anomen") !StateCheck("Anomen",STATE_SLEEPING)~ @1033
END
++ @857 EXTERN QI#ZAK2J QI#ZakrionNotKnownRomanceTalk1.0.1
++ @858 EXTERN QI#ZAK2J QI#ZakrionNotKnownRomanceTalk1.1
++ @859 EXTERN QI#ZAK2J QI#ZakrionNotKnownRomanceTalk1.0.2
++ @860 EXTERN QI#ZAK2J QI#ZakrionNotKnownRomanceTalk1.0x

CHAIN QI#ZAK2J QI#ZakrionNotKnownRomanceTalk1.0x
@861
= @862
DO ~SetGlobal("QI#ZakrionRomanceActive","GLOBAL",3)~ EXIT

CHAIN QI#ZAK2J QI#ZakrionNotKnownRomanceTalk1.0.1
@863
END
IF ~~ EXTERN QI#ZAK2J QI#ZakrionNotKnownRomanceTalk1.1

CHAIN QI#ZAK2J QI#ZakrionNotKnownRomanceTalk1.0.2
@864
END
IF ~~ EXTERN QI#ZAK2J QI#ZakrionNotKnownRomanceTalk1.1

CHAIN QI#ZAK2J QI#ZakrionNotKnownRomanceTalk1.1
@865
= @866
= @867
= @868
END
++ @869 EXTERN QI#ZAK2J QI#ZakrionNotKnownRomanceTalk1.1.1
++ @870 EXTERN QI#ZAK2J QI#ZakrionNotKnownRomanceTalk1.1.2
++ @871 EXTERN QI#ZAK2J QI#ZakrionNotKnownRomanceTalk1.1.3
++ @872 EXTERN QI#ZAK2J QI#ZakrionNotKnownRomanceTalk1.1.4

CHAIN QI#ZAK2J QI#ZakrionNotKnownRomanceTalk1.1.1
@873
END
IF ~~ EXTERN QI#ZAK2J QI#ZakrionNotKnownRomanceTalk1.2

CHAIN QI#ZAK2J QI#ZakrionNotKnownRomanceTalk1.1.2
@874
END
IF ~~ EXTERN QI#ZAK2J QI#ZakrionNotKnownRomanceTalk1.2

CHAIN QI#ZAK2J QI#ZakrionNotKnownRomanceTalk1.1.3
@875
= @876
= @877
= @878
END
IF ~~ EXTERN QI#ZAK2J QI#ZakrionNotKnownRomanceTalk1.2

CHAIN QI#ZAK2J QI#ZakrionNotKnownRomanceTalk1.1.4
@879
END
IF ~~ EXTERN QI#ZAK2J QI#ZakrionNotKnownRomanceTalk1.2 

CHAIN QI#ZAK2J QI#ZakrionNotKnownRomanceTalk1.2
@880
= @881
= @882
DO ~IncrementGlobal("QI#ZakrionNotKnownRomanceTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakrionRomanceTimer","GLOBAL",3600)~ EXIT 


APPEND QI#ZAK2J

/* Romance Talk 2 - What happened with Irenicus? */
IF ~Global("QI#ZakrionNotKnownRomanceTalk","GLOBAL",4)~ QI#ZakrionNotKnownRomanceTalk2.0
SAY @485
= @486
++ @487 + QI#ZakrionNotKnownRomanceTalk2.0.1
++ @488 + QI#ZakrionNotKnownRomanceTalk2.0.2
++ @489 + QI#ZakrionNotKnownRomanceTalk2.0.3
++ @490 + QI#ZakrionNotKnownRomanceTalk2.0.4
++ @491 + QI#ZakrionNotKnownRomanceTalk2.0.5
END 

IF ~~ QI#ZakrionNotKnownRomanceTalk2.0.1
SAY @492
IF ~~  + QI#ZakrionNotKnownRomanceTalk2.1
END

IF ~~ QI#ZakrionNotKnownRomanceTalk2.0.2
SAY @493
IF ~~  + QI#ZakrionNotKnownRomanceTalk2.1
END

IF ~~ QI#ZakrionNotKnownRomanceTalk2.0.3
SAY @494
IF ~~  + QI#ZakrionNotKnownRomanceTalk2.1
END

IF ~~ QI#ZakrionNotKnownRomanceTalk2.0.4
SAY @495
IF ~~  + QI#ZakrionNotKnownRomanceTalk2.1
END

IF ~~ QI#ZakrionNotKnownRomanceTalk2.0.5
SAY @496
= @497
++ @498 + QI#ZakrionNotKnownRomanceTalk2.0.5a
++ @499 + QI#ZakrionNotKnownRomanceTalk2.0.5b
++ @500 + QI#ZakrionNotKnownRomanceTalk2.0.4
++ @501 + QI#ZakrionNotKnownRomanceTalk2.0.2
++ @502 + QI#ZakrionNotKnownRomanceTalk2.0.5x
END 

IF ~~ QI#ZakrionNotKnownRomanceTalk2.0.5a
SAY @503
IF ~~ + QI#ZakrionNotKnownRomanceTalk2.1
END 

IF ~~ QI#ZakrionNotKnownRomanceTalk2.0.5b
SAY @504
++ @505 + QI#ZakrionNotKnownRomanceTalk2.0.5b1
++ @500 + QI#ZakrionNotKnownRomanceTalk2.0.4
++ @501 + QI#ZakrionNotKnownRomanceTalk2.0.2
END 

IF ~~ QI#ZakrionNotKnownRomanceTalk2.0.5b1
SAY @506
= @507
IF ~~ + QI#ZakrionNotKnownRomanceTalk2.1
END 

IF ~~ QI#ZakrionNotKnownRomanceTalk2.0.5x
SAY @508
= @509
= @510
IF ~~ DO ~IncrementGlobal("QI#ZakrionNotKnownRomanceTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakrionRomanceTimer","GLOBAL",3600)~ EXIT 
END 

IF ~~ QI#ZakrionNotKnownRomanceTalk2.1
SAY @511
= @512
= @513
= @514
= @515
= @516
++ @83 + QI#ZakrionNotKnownRomanceTalk2.2
++ @517 + QI#ZakrionNotKnownRomanceTalk2.1.1
++ @518 + QI#ZakrionNotKnownRomanceTalk2.1.2
END

IF ~~ QI#ZakrionNotKnownRomanceTalk2.1.1
SAY @519
IF ~~ + QI#ZakrionNotKnownRomanceTalk2.2
END 

IF ~~ QI#ZakrionNotKnownRomanceTalk2.1.2
SAY @520
= @521
IF ~~ + QI#ZakrionNotKnownRomanceTalk2.2
END 

IF ~~ QI#ZakrionNotKnownRomanceTalk2.2
SAY @522
= @523
= @524
= @525
= @526
= @527
= @528
= @529
= @530
++ @531 + QI#ZakrionNotKnownRomanceTalk2.3
++ @532 + QI#ZakrionNotKnownRomanceTalk2.2.1
END 

IF ~~ QI#ZakrionNotKnownRomanceTalk2.2.1
SAY @533
IF ~~ + QI#ZakrionNotKnownRomanceTalk2.3
END

IF ~~ QI#ZakrionNotKnownRomanceTalk2.3
SAY @534
= @535
= @536
= @537
= @883
++ @539 + QI#ZakrionNotKnownRomanceTalk2.3.1
++ @540 + QI#ZakrionNotKnownRomanceTalk2.3.2
++ @541 + QI#ZakrionNotKnownRomanceTalk2.3.3
++ @542 + QI#ZakrionNotKnownRomanceTalk2.3x
END 

IF ~~ QI#ZakrionNotKnownRomanceTalk2.3x
SAY @543
= @544
IF ~~ DO ~SetGlobal("QI#ZakrionRomanceActive","GLOBAL",3)~ EXIT
END 

IF ~~ QI#ZakrionNotKnownRomanceTalk2.3.1
SAY @545
IF ~~ + QI#ZakrionNotKnownRomanceTalk2.4
END 

IF ~~ QI#ZakrionNotKnownRomanceTalk2.3.2
SAY @546
IF ~~ + QI#ZakrionNotKnownRomanceTalk2.4
END 

IF ~~ QI#ZakrionNotKnownRomanceTalk2.3.3
SAY @547
IF ~~ + QI#ZakrionNotKnownRomanceTalk2.4
END 

IF ~~ QI#ZakrionNotKnownRomanceTalk2.4
SAY @548
= @884
IF ~~ DO ~IncrementGlobal("QI#ZakrionNotKnownRomanceTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakrionRomanceTimer","GLOBAL",3600)~ EXIT 
END 

END


/* Romance Talk 3 - Have you ever made a mistake before? */
CHAIN IF ~Global("QI#ZakrionNotKnownRomanceTalk","GLOBAL",6)~ THEN QI#ZAK2J QI#ZakrionNotKnownRomanceTalk3.0
@551
== ANOMENJ IF ~Global("AnomenRomanceActive","GLOBAL",1) InParty("Anomen") !Dead("Anomen") !StateCheck("Anomen",STATE_SLEEPING)~ @1023
== QI#ZAK2J IF ~Global("AnomenRomanceActive","GLOBAL",1) InParty("Anomen") !Dead("Anomen") !StateCheck("Anomen",STATE_SLEEPING)~ @1024
= IF ~Global("AnomenRomanceActive","GLOBAL",1) InParty("Anomen") !Dead("Anomen") !StateCheck("Anomen",STATE_SLEEPING)~ @1025
= IF ~Global("AnomenRomanceActive","GLOBAL",1) InParty("Anomen") !Dead("Anomen") !StateCheck("Anomen",STATE_SLEEPING)~ @1026
== ANOMENJ IF ~Global("AnomenRomanceActive","GLOBAL",1) InParty("Anomen") !Dead("Anomen") !StateCheck("Anomen",STATE_SLEEPING)~ @1027
== QI#ZAK2J IF ~Global("AnomenRomanceActive","GLOBAL",1) InParty("Anomen") !Dead("Anomen") !StateCheck("Anomen",STATE_SLEEPING)~ @1028
= IF ~Global("AnomenRomanceActive","GLOBAL",1) InParty("Anomen") !Dead("Anomen") !StateCheck("Anomen",STATE_SLEEPING)~ @1029
END
++ @552 EXTERN QI#ZAK2J QI#ZakrionNotKnownRomanceTalk3.0.1
++ @553 EXTERN QI#ZAK2J QI#ZakrionNotKnownRomanceTalk3.0.2
++ @554 EXTERN QI#ZAK2J QI#ZakrionNotKnownRomanceTalk3.0.3
++ @555 EXTERN QI#ZAK2J QI#ZakrionNotKnownRomanceTalk3.0.4
++ @556 EXTERN QI#ZAK2J QI#ZakrionNotKnownRomanceTalk3.0.5

CHAIN QI#ZAK2J QI#ZakrionNotKnownRomanceTalk3.0.1
@557
= @558
END
IF ~~ EXTERN QI#ZAK2J QI#ZakrionNotKnownRomanceTalk3.1

CHAIN QI#ZAK2J QI#ZakrionNotKnownRomanceTalk3.0.2
@559
END
IF ~~ EXTERN QI#ZAK2J QI#ZakrionNotKnownRomanceTalk3.1

CHAIN QI#ZAK2J QI#ZakrionNotKnownRomanceTalk3.0.3
@560
= @561
END
IF ~~ EXTERN QI#ZAK2J QI#ZakrionNotKnownRomanceTalk3.1 

CHAIN QI#ZAK2J QI#ZakrionNotKnownRomanceTalk3.0.4
@562
END
IF ~~ EXTERN QI#ZAK2J QI#ZakrionNotKnownRomanceTalk3.1

CHAIN QI#ZAK2J QI#ZakrionNotKnownRomanceTalk3.0.5
@563
END
IF ~~ EXTERN QI#ZAK2J QI#ZakrionNotKnownRomanceTalk3.1

CHAIN QI#ZAK2J QI#ZakrionNotKnownRomanceTalk3.1
@564
= @565
= @566
= @912
END
++ @568 EXTERN QI#ZAK2J QI#ZakrionNotKnownRomanceTalk3.1.1
++ @569 EXTERN QI#ZAK2J QI#ZakrionNotKnownRomanceTalk3.1.1
++ @570 EXTERN QI#ZAK2J QI#ZakrionNotKnownRomanceTalk3.1.1
++ @571 EXTERN QI#ZAK2J QI#ZakrionNotKnownRomanceTalk3.1.1
++ @572 EXTERN QI#ZAK2J QI#ZakrionNotKnownRomanceTalk3.1.1
++ @573 EXTERN QI#ZAK2J QI#ZakrionNotKnownRomanceTalk3.1.2

CHAIN QI#ZAK2J QI#ZakrionNotKnownRomanceTalk3.1.1
@574
END
IF ~~ EXTERN QI#ZAK2J QI#ZakrionNotKnownRomanceTalk3.2

CHAIN QI#ZAK2J QI#ZakrionNotKnownRomanceTalk3.1.2
@575
= @576
END
IF ~~ EXTERN QI#ZAK2J QI#ZakrionNotKnownRomanceTalk3.2

CHAIN QI#ZAK2J QI#ZakrionNotKnownRomanceTalk3.2
@577
= @913
END
++ @579 EXTERN QI#ZAK2J QI#ZakrionNotKnownRomanceTalk3.2.1
++ @914 EXTERN QI#ZAK2J QI#ZakrionNotKnownRomanceTalk3.2.2
++ @915 EXTERN QI#ZAK2J QI#ZakrionNotKnownRomanceTalk3.2.3
+ ~CheckStatGT(Player1, 12, WIS)~ + @583 EXTERN QI#ZAK2J QI#ZakrionNotKnownRomanceTalk3.2.5

CHAIN QI#ZAK2J QI#ZakrionNotKnownRomanceTalk3.2.1
@584
END
IF ~~ EXTERN QI#ZAK2J QI#ZakrionNotKnownRomanceTalk3.3

CHAIN QI#ZAK2J QI#ZakrionNotKnownRomanceTalk3.2.2
@916
END
IF ~~ EXTERN QI#ZAK2J QI#ZakrionNotKnownRomanceTalk3.3

CHAIN QI#ZAK2J QI#ZakrionNotKnownRomanceTalk3.2.3
@917
END
IF ~~ EXTERN QI#ZAK2J QI#ZakrionNotKnownRomanceTalk3.3

CHAIN QI#ZAK2J QI#ZakrionNotKnownRomanceTalk3.2.5
@588
END
IF ~~ EXTERN QI#ZAK2J QI#ZakrionNotKnownRomanceTalk3.3

CHAIN QI#ZAK2J QI#ZakrionNotKnownRomanceTalk3.3
@589 
= @590
= @591
= @592
= @593
= @594
= @595
= @596
= @597
DO ~IncrementGlobal("QI#ZakrionNotKnownRomanceTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakrionRomanceTimer","GLOBAL",3600)~ EXIT 


APPEND QI#ZAK2J

/* Romance Talk 4 - Meeting with His Mom */
IF ~Global("QI#ZakrionNotKnownRomanceTalk","GLOBAL",8)~ QI#ZakrionNotKnownRomanceTalk4.0
SAY @598
= @599
= @600
++ @601 + QI#ZakrionNotKnownRomanceTalk4.0.1
++ @602 + QI#ZakrionNotKnownRomanceTalk4.0.2
++ @603 + QI#ZakrionNotKnownRomanceTalk4.0.3
++ @604 + QI#ZakrionNotKnownRomanceTalk4.0.4
END  

IF ~~ QI#ZakrionNotKnownRomanceTalk4.0.1
SAY @605
IF ~~ + QI#ZakrionNotKnownRomanceTalk4.1
END 

IF ~~ QI#ZakrionNotKnownRomanceTalk4.0.2
SAY @606
IF ~~ + QI#ZakrionNotKnownRomanceTalk4.1
END 

IF ~~ QI#ZakrionNotKnownRomanceTalk4.0.3
SAY @607
IF ~~ + QI#ZakrionNotKnownRomanceTalk4.1
END 

IF ~~ QI#ZakrionNotKnownRomanceTalk4.0.4
SAY @608
IF ~~ + QI#ZakrionNotKnownRomanceTalk4.1
END 

IF ~~ QI#ZakrionNotKnownRomanceTalk4.1
SAY @609
= @610
= @611
++ @612 + QI#ZakrionNotKnownRomanceTalk4.1.1
++ @613 + QI#ZakrionNotKnownRomanceTalk4.1.2
++ @614 + QI#ZakrionNotKnownRomanceTalk4.1.2
++ @615 + QI#ZakrionNotKnownRomanceTalk4.1.3
END 

IF ~~ QI#ZakrionNotKnownRomanceTalk4.1.1
SAY @616
IF ~~ + QI#ZakrionNotKnownRomanceTalk4.2
END 

IF ~~ QI#ZakrionNotKnownRomanceTalk4.1.2
SAY @617
IF ~~ + QI#ZakrionNotKnownRomanceTalk4.2
END 

IF ~~ QI#ZakrionNotKnownRomanceTalk4.1.3
SAY @618
= @619
IF ~~ + QI#ZakrionNotKnownRomanceTalk4.2
END 

IF ~~ QI#ZakrionNotKnownRomanceTalk4.2
SAY @620
= @621
= @622
= @623
= @624
IF ~~ DO ~IncrementGlobal("QI#ZakrionNotKnownRomanceTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakrionRomanceTimer","GLOBAL",3600)~ EXIT 
END 

/* Romance Talk 5 - My best friend is Buttercup */
IF ~Global("QI#ZakrionNotKnownRomanceTalk","GLOBAL",10)~ QI#ZakrionNotKnownRomanceTalk5.0
SAY @625
= @626
= @627
= @628
= @629
++ @630 + QI#ZakrionNotKnownRomanceTalk5.0.1
++ @631 + QI#ZakrionNotKnownRomanceTalk5.0.2
++ @632 + QI#ZakrionNotKnownRomanceTalk5.0.3
++ @633 + QI#ZakrionNotKnownRomanceTalk5.0.4
++ @634 + QI#ZakrionNotKnownRomanceTalk5.0.5
END

IF ~~ QI#ZakrionNotKnownRomanceTalk5.0.1
SAY @635
IF ~~ + QI#ZakrionNotKnownRomanceTalk5.1
END 

IF ~~ QI#ZakrionNotKnownRomanceTalk5.0.2
SAY @636
IF ~~ + QI#ZakrionNotKnownRomanceTalk5.1
END 

IF ~~ QI#ZakrionNotKnownRomanceTalk5.0.3
SAY @637
IF ~~ + QI#ZakrionNotKnownRomanceTalk5.1
END 

IF ~~ QI#ZakrionNotKnownRomanceTalk5.0.4
SAY @638
= @639
++ @640 + QI#ZakrionNotKnownRomanceTalk5.0.4a
++ @641 + QI#ZakrionNotKnownRomanceTalk5.0.4b
++ @642 + QI#ZakrionNotKnownRomanceTalk5.0.4x
END 

IF ~~ QI#ZakrionNotKnownRomanceTalk5.0.4x
SAY @643
= @644
= @645
= @646
IF ~~ DO ~SetGlobal("QI#ZakrionRomanceActive","GLOBAL",3) LeaveParty() EscapeArea()~ EXIT 
END

IF ~~ QI#ZakrionNotKnownRomanceTalk5.0.4a
SAY @647
= @648
= @649
= @650
IF ~~ + QI#ZakrionNotKnownRomanceTalk5.1
END

IF ~~ QI#ZakrionNotKnownRomanceTalk5.0.4b
SAY @628
IF ~~ + QI#ZakrionNotKnownRomanceTalk5.1
END 

IF ~~ QI#ZakrionNotKnownRomanceTalk5.0.5
SAY @651
IF ~~ + QI#ZakrionNotKnownRomanceTalk5.1
END 

IF ~~ QI#ZakrionNotKnownRomanceTalk5.1
SAY @652
= @653
= @654
= @655
= @656
++ @657 + QI#ZakrionNotKnownRomanceTalk5.1.1
++ @658 + QI#ZakrionNotKnownRomanceTalk5.2
++ @659 + QI#ZakrionNotKnownRomanceTalk5.2
++ @660 + QI#ZakrionNotKnownRomanceTalk5.1.2
END 

IF ~~ QI#ZakrionNotKnownRomanceTalk5.1.1
SAY @661
IF ~~ + QI#ZakrionNotKnownRomanceTalk5.2
END 

IF ~~ QI#ZakrionNotKnownRomanceTalk5.1.2
SAY @662
= @663
IF ~~ + QI#ZakrionNotKnownRomanceTalk5.2
END 

IF ~~ QI#ZakrionNotKnownRomanceTalk5.2
SAY @664
= @665
= @666
= @667
IF ~~ DO ~IncrementGlobal("QI#ZakrionNotKnownRomanceTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakrionRomanceTimer","GLOBAL",3600)~ EXIT 
END 

/* Romance Talk 6 - I meant to ask you... */
IF ~Global("QI#ZakrionNotKnownRomanceTalk","GLOBAL",12)~ QI#ZakrionNotKnownRomanceTalk6.0
SAY @668
++ @669 + QI#ZakrionNotKnownRomanceTalk6.0.1
++ @670 + QI#ZakrionNotKnownRomanceTalk6.1
++ @671 + QI#ZakrionNotKnownRomanceTalk6.0.2
END

IF ~~ QI#ZakrionNotKnownRomanceTalk6.0.1
SAY @672
IF ~~ + QI#ZakrionNotKnownRomanceTalk6.1
END

IF ~~ QI#ZakrionNotKnownRomanceTalk6.0.2
SAY @673
IF ~~ + QI#ZakrionNotKnownRomanceTalk6.1
END

IF ~~ QI#ZakrionNotKnownRomanceTalk6.1
SAY @674
= @675
= @676
= @885
= @886
= @887
= @888
= @889
= @682
= @683
++ @684 + QI#ZakrionNotKnownRomanceTalk6.2
++ @685 + QI#ZakrionNotKnownRomanceTalk6.2
++ @686 + QI#ZakrionNotKnownRomanceTalk6.1.1
++ @687 + QI#ZakrionNotKnownRomanceTalk6.0x
++ @890 + QI#ZakrionNotKnownRomanceTalk6.0xx
END 

IF ~~ QI#ZakrionNotKnownRomanceTalk6.0x
SAY @689
= @891
= @892
IF ~~ DO ~SetGlobal("QI#ZakrionRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ QI#ZakrionNotKnownRomanceTalk6.0xx
SAY @692
= @893
= @894
= @695
= @696
IF ~~ DO ~SetGlobal("QI#ZakrionRomanceActive","GLOBAL",3)~ EXIT
END 

IF ~~ QI#ZakrionNotKnownRomanceTalk6.1.1
SAY @697
= @698
IF ~~ DO ~IncrementGlobal("QI#ZakrionNotKnownRomanceTalk","GLOBAL",1) SetGlobal("QI#ZakrionNotKnownDecision","GLOBAL",1)~ EXIT
END

IF ~~ QI#ZakrionNotKnownRomanceTalk6.2
SAY @699
= @700
= @702
++ @703 + QI#ZakrionNotKnownRomanceTalk6.3
++ @704 + QI#ZakrionNotKnownRomanceTalk6.3
++ @705 + QI#ZakrionNotKnownRomanceTalk6.2.1
++ @706 + QI#ZakrionNotKnownRomanceTalk6.0xx
END

IF ~~ QI#ZakrionNotKnownRomanceTalk6.2.1
SAY @707
= @708
IF ~~ DO ~IncrementGlobal("QI#ZakrionNotKnownRomanceTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakrionRomanceTimer","GLOBAL",3600) SetGlobal("QI#ZakrionNotKnownKiss","GLOBAL",1) SetGlobal("QI#ZakRomanceActive","GLOBAL",2)~ EXIT 
END 

IF ~~ QI#ZakrionNotKnownRomanceTalk6.3
SAY @709
= @710
IF ~~ DO ~IncrementGlobal("QI#ZakrionNotKnownRomanceTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakrionRomanceTimer","GLOBAL",3600) SetGlobal("QI#ZakRomanceActive","GLOBAL",2)~ EXIT 
END 

/* Romance Talk 7 - Stay the night with me */
IF ~Global("QI#ZakrionNotKnownRomanceTalk","GLOBAL",14)~ QI#ZakrionNotKnownRomanceTalk7.0
SAY @711
++ @712 + QI#ZakrionNotKnownRomanceTalk7.1
++ @713 + QI#ZakrionNotKnownRomanceTalk7.1
++ @714 + QI#ZakrionNotKnownRomanceTalk7.1
++ @715 + QI#ZakrionNotKnownRomanceTalk7.0.1
END 

IF ~~ QI#ZakrionNotKnownRomanceTalk7.0.1
SAY @716
IF ~~ DO ~IncrementGlobal("QI#ZakrionNotKnownRomanceTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakrionRomanceTimer","GLOBAL",3600) SetGlobal("QI#ZakrionNotKnownNightSpent","GLOBAL",1) RestParty()~ EXIT 
END

IF ~~ QI#ZakrionNotKnownRomanceTalk7.1
SAY @717
= @895
= @896
= @897
++ @721 + QI#ZakrionNotKnownRomanceTalk7.2
++ @898 + QI#ZakrionNotKnownRomanceTalk7.2
++ @723 + QI#ZakrionNotKnownRomanceTalk7.1.1
++ @724 + QI#ZakrionNotKnownRomanceTalk7.1x
END 

IF ~~ QI#ZakrionNotKnownRomanceTalk7.1x
SAY @899
= @900
= @901
++ @728 + QI#ZakrionNotKnownRomanceTalk7.1a
++ @729 + QI#ZakrionNotKnownRomanceTalk7.1xx
END 

IF ~~ QI#ZakrionNotKnownRomanceTalk7.1xx
SAY @730
= @731
IF ~~ DO ~SetGlobal("QI#ZakrionRomanceActive","GLOBAL",3) RestParty()~ EXIT
END 

IF ~~ QI#ZakrionNotKnownRomanceTalk7.1a
SAY @732
= @902
++ @734 + QI#ZakrionNotKnownRomanceTalk7.1.1
++ @735 + QI#ZakrionNotKnownRomanceTalk7.1.1
++ @736 + QI#ZakrionNotKnownRomanceTalk7.2
END 

IF ~~ QI#ZakrionNotKnownRomanceTalk7.1.1
SAY @1020
= @1021
IF ~~ DO ~SetGlobal("QI#ZakrionNotKnownNotNightSpent","GLOBAL",1) SetGlobal("QI#ZakrionNotKnownNightSpent","GLOBAL",1) RealSetGlobalTimer("QI#ZakrionRomanceTimer","GLOBAL",3600) RestParty()~ EXIT 
END 

IF ~~ QI#ZakrionNotKnownRomanceTalk7.2
SAY @903
= @904
IF ~~ DO ~IncrementGlobal("QI#ZakrionNotKnownRomanceTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakrionRomanceTimer","GLOBAL",3600) SetGlobal("QI#ZakrionNotKnownNightSpent","GLOBAL",1) RestParty()~ EXIT 
END 

/* Romance Talk 7a - Spending the Night Together, Morning Talk */
IF ~Global("QI#ZakrionNotKnownNightSpent","GLOBAL",2)~ QI#ZakrionNotKnownRomanceTalk7.0a
SAY @905
++ @740 + QI#ZakrionNotKnownNightSpent1.0
++ @906 + QI#ZakrionNotKnownNightSpent1.0
++ @907 + QI#ZakrionNotKnownNightSpent1.0
++ @743 + QI#ZakrionNotKnownNightSpent1.0.1
END 

IF ~~ QI#ZakrionNotKnownNightSpent1.0.1
SAY @744
= @745
IF ~~ + QI#ZakrionNotKnownNightSpent1.0x
END

IF ~~ QI#ZakrionNotKnownNightSpent1.0
SAY @746
= @908
++ @909 + QI#ZakrionNotKnownNightSpent1.1
++ @910 + QI#ZakrionNotKnownNightSpent1.2
++ @750 + QI#ZakrionNotKnownNightSpent1.3
++ @751 + QI#ZakrionNotKnownNightSpent1.0.1
END 

IF ~~ QI#ZakrionNotKnownNightSpent1.1
SAY @752
IF ~~ + QI#ZakrionNotKnownNightSpent1.0x
END

IF ~~ QI#ZakrionNotKnownNightSpent1.2
SAY @753
IF ~~ + QI#ZakrionNotKnownNightSpent1.0x
END

IF ~~ QI#ZakrionNotKnownNightSpent1.3
SAY @754
IF ~~ + QI#ZakrionNotKnownNightSpent1.0x
END

IF ~~ QI#ZakrionNotKnownNightSpent1.0x
SAY @755
= @911
= @757
IF ~~ DO ~SetGlobal("QI#ZakrionNotKnownNightSpent","GLOBAL",3)~ EXIT
END 

/* Romance Talk 7b - Not Spending the Night Together, Morning Talk */
IF ~Global("QI#ZakrionNotKnownNotNightSpent","GLOBAL",2)~ QI#ZakrionNotKnownRomanceTalk7.0b
SAY @758
= @759
= @760
= @761
IF ~~ DO ~SetGlobal("QI#ZakrionNotKnownNotNightSpent","GLOBAL",3) SetGlobal("QI#ZakSpentNightLater","GLOBAL",1)~ EXIT
END 

/* Romance Talk 8 - Salbread */
IF ~Global("QI#ZakrionNotKnownRomanceTalk","GLOBAL",16)~ QI#ZakrionNotKnownRomanceTalk8.0
SAY @762
++ @763 + QI#ZakrionNotKnownRomanceTalk8.1
++ @764 + QI#ZakrionNotKnownRomanceTalk8.1
++ @765 + QI#ZakrionNotKnownRomanceTalk8.0.1
++ @766 + QI#ZakrionNotKnownRomanceTalk8.0x
END 

IF ~~ QI#ZakrionNotKnownRomanceTalk8.0x
SAY @767
++ @768 + QI#ZakrionNotKnownRomanceTalk8.0xa
++ @769 + QI#ZakrionNotKnownRomanceTalk8.0xb
END

IF ~~ QI#ZakrionNotKnownRomanceTalk8.0xa
SAY @770
= @771
IF ~~ + QI#ZakrionNotKnownRomanceTalk8.1
END

IF ~~ QI#ZakrionNotKnownRomanceTalk8.0xb
SAY @772
= @773
++ @774 + QI#ZakrionNotKnownRomanceTalk8.0xx
++ @775 + QI#ZakrionNotKnownRomanceTalk8.0xa
END 

IF ~~ QI#ZakrionNotKnownRomanceTalk8.0xx
SAY @776
= @777
IF ~~ DO ~SetGlobal("QI#ZakrionRomanceActive","GLOBAL",3)~ EXIT
END 

IF ~~ QI#ZakrionNotKnownRomanceTalk8.0.1
SAY @778
IF ~~ + QI#ZakrionNotKnownRomanceTalk8.1
END

IF ~~ QI#ZakrionNotKnownRomanceTalk8.1
SAY @779
= @780
++ @781 + QI#ZakrionNotKnownRomanceTalk8.1.1
+ ~Race(Player1,HALFLING)~ + @782 + QI#ZakrionNotKnownRomanceTalk8.1.2
++ @783 + QI#ZakrionNotKnownRomanceTalk8.1.3
++ @784 + QI#ZakrionNotKnownRomanceTalk8.1.4
END 

IF ~~ QI#ZakrionNotKnownRomanceTalk8.1.1
SAY @785
IF ~~ + QI#ZakrionNotKnownRomanceTalk8.2
END 

IF ~~ QI#ZakrionNotKnownRomanceTalk8.1.2
SAY @786
IF ~~ + QI#ZakrionNotKnownRomanceTalk8.2
END 

IF ~~ QI#ZakrionNotKnownRomanceTalk8.1.3
SAY @787
IF ~~ + QI#ZakrionNotKnownRomanceTalk8.2
END 

IF ~~ QI#ZakrionNotKnownRomanceTalk8.1.4
SAY @788
IF ~~ + QI#ZakrionNotKnownRomanceTalk8.2
END 

IF ~~ QI#ZakrionNotKnownRomanceTalk8.2
SAY @789
= @790
= @791
++ @792 + QI#ZakrionNotKnownRomanceTalk8.3
++ @793 + QI#ZakrionNotKnownRomanceTalk8.3
++ @794 + QI#ZakrionNotKnownRomanceTalk8.2.1
++ @795 + QI#ZakrionNotKnownRomanceTalk8.2.2
END 

IF ~~ QI#ZakrionNotKnownRomanceTalk8.2.1
SAY @796
IF ~~ + QI#ZakrionNotKnownRomanceTalk8.3
END

IF ~~ QI#ZakrionNotKnownRomanceTalk8.2.2
SAY @797
IF ~~ + QI#ZakrionNotKnownRomanceTalk8.3
END 

IF ~~ QI#ZakrionNotKnownRomanceTalk8.3
SAY @798
= @799
= @800
= @801
IF ~~ DO ~IncrementGlobal("QI#ZakrionNotKnownRomanceTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakrionRomanceTimer","GLOBAL",3600)~ EXIT 
END 

/* Romance Talk 9 - I feel like I'm on the right track */
IF ~Global("QI#ZakrionNotKnownRomanceTalk","GLOBAL",18)~ QI#ZakrionNotKnownRomanceTalk9.0
SAY @918
= @919
++ @920 + QI#ZakrionNotKnownRomanceTalk9.0.1
++ @921 + QI#ZakrionNotKnownRomanceTalk9.0.2
++ @922 + QI#ZakrionNotKnownRomanceTalk9.0.3
++ @923 + QI#ZakrionNotKnownRomanceTalk9.0.4
END

IF ~~ QI#ZakrionNotKnownRomanceTalk9.0.1
SAY @924
IF ~~ + QI#ZakrionNotKnownRomanceTalk9.1
END 

IF ~~ QI#ZakrionNotKnownRomanceTalk9.0.2
SAY @925
IF ~~ + QI#ZakrionNotKnownRomanceTalk9.1
END 

IF ~~ QI#ZakrionNotKnownRomanceTalk9.0.3
SAY @926
++ @927 + QI#ZakrionNotKnownRomanceTalk9.0.3x
++ @928 + QI#ZakrionNotKnownRomanceTalk9.1
END 

IF ~~ QI#ZakrionNotKnownRomanceTalk9.0.3x
SAY @929
= @930
= @931
IF ~~ DO ~SetGlobal("QI#ZakrionRomanceActive","GLOBAL",3)~ EXIT
END 

IF ~~ QI#ZakrionNotKnownRomanceTalk9.0.4
SAY @932
++ @933 + QI#ZakrionNotKnownRomanceTalk9.0.4xx
++ @934 + QI#ZakrionNotKnownRomanceTalk9.0.4x
++ @928 + QI#ZakrionNotKnownRomanceTalk9.1
END 

IF ~~ QI#ZakrionNotKnownRomanceTalk9.0.4x
SAY @935
= @936
= @937
IF ~~ DO ~SetGlobal("QI#ZakrionRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ QI#ZakrionNotKnownRomanceTalk9.0.4xx
SAY @938
IF ~~ DO ~SetGlobal("QI#ZakrionRomanceActive","GLOBAL",3) LeaveParty() EscapeArea()~ EXIT
END 

IF ~~ QI#ZakrionNotKnownRomanceTalk9.1
SAY @939
= @940
= @941
= @942
++ @943 + QI#ZakrionNotKnownRomanceTalk9.2
++ @944 + QI#ZakrionNotKnownRomanceTalk9.1.1
++ @945 + QI#ZakrionNotKnownRomanceTalk9.1.2
END 

IF ~~ QI#ZakrionNotKnownRomanceTalk9.1.1
SAY @946
= @947
IF ~~ + QI#ZakrionNotKnownRomanceTalk9.2
END

IF ~~ QI#ZakrionNotKnownRomanceTalk9.1.2
SAY @948
IF ~~ + QI#ZakrionNotKnownRomanceTalk9.2
END
 
IF ~~ QI#ZakrionNotKnownRomanceTalk9.2
SAY @949
= @950
= @951
= @952
= @953
++ @954 + QI#ZakrionNotKnownRomanceTalk9.2.1
++ @955 + QI#ZakrionNotKnownRomanceTalk9.2.2
++ @956 + QI#ZakrionNotKnownRomanceTalk9.2.3
++ @957 + QI#ZakrionNotKnownRomanceTalk9.2.4
END 

IF ~~ QI#ZakrionNotKnownRomanceTalk9.2.1
SAY @958
IF ~~ + QI#ZakrionNotKnownRomanceTalk9.3
END 

IF ~~ QI#ZakrionNotKnownRomanceTalk9.2.2
SAY @959
IF ~~ + QI#ZakrionNotKnownRomanceTalk9.3
END 

IF ~~ QI#ZakrionNotKnownRomanceTalk9.2.3
SAY @960
IF ~~ + QI#ZakrionNotKnownRomanceTalk9.3
END 

IF ~~ QI#ZakrionNotKnownRomanceTalk9.2.4
SAY @961
IF ~~ + QI#ZakrionNotKnownRomanceTalk9.3
END 

IF ~~ QI#ZakrionNotKnownRomanceTalk9.3
SAY @962
= @963
= @964
IF ~~ DO ~IncrementGlobal("QI#ZakrionNotKnownRomanceTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakrionRomanceTimer","GLOBAL",3600)~ EXIT 
END 

/**************************************************************************************************
						Romance Track - Extra Dialogue if PC is a Halfling
**************************************************************************************************/
IF ~Global("QI#ZakPCIsHalflingTalk","GLOBAL",1)~ QI#ZakrionHalflingTalk1.0
SAY @965
= @966
++ @967 + QI#ZakrionHalflingTalk1.0.1
++ @968 + QI#ZakrionHalflingTalk1.0.2
++ @969 + QI#ZakrionHalflingTalk1.0.3
++ @970 + QI#ZakrionHalflingTalk1.0.4
END 

IF ~~ QI#ZakrionHalflingTalk1.0.1
SAY @971
= @972
IF ~~ + QI#ZakrionHalflingTalk1.1
END 

IF ~~ QI#ZakrionHalflingTalk1.0.2
SAY @973
= @974
= @975
IF ~~ + QI#ZakrionHalflingTalk1.1
END 

IF ~~ QI#ZakrionHalflingTalk1.0.3
SAY @976
= @977
= @978
IF ~~ + QI#ZakrionHalflingTalk1.1
END 

IF ~~ QI#ZakrionHalflingTalk1.0.4
SAY @979
= @980
IF ~~ + QI#ZakrionHalflingTalk1.1
END 

IF ~~ QI#ZakrionHalflingTalk1.1
SAY @981
IF ~~ DO ~SetGlobal("QI#ZakPCIsHalflingTalk","GLOBAL",2) RealSetGlobalTimer("QI#ZakrionRomanceTimer","GLOBAL",3600)~ EXIT
END 


/**************************************************************************************************
											Events
***************************************************************************************************/

/* Quest in Docks */
IF ~Global("QI#ZakSalbreadQuest","GLOBAL",4)~ QI#ZakrionHalflingQuest1.0
SAY @1425
= @1426
= @1427
= @1428
++ @1429 + QI#ZakrionHalflingQuest1.1
++ @1430 + QI#ZakrionHalflingQuest1.1
++ @1431 + QI#ZakrionHalflingQuest1.0.1
++ @1432 + QI#ZakrionHalflingQuest1.1
END 

IF ~~ QI#ZakrionHalflingQuest1.0.1
SAY @1433
= @1434
IF ~~ + QI#ZakrionHalflingQuest1.1
END

IF ~~ QI#ZakrionHalflingQuest1.1
SAY @1435
= @1436
= @1437
= @1438
++ @1439 + QI#ZakrionHalflingQuest1.1.1
+ ~OR(2) 
	CheckStatGT(Player1, 11, WIS)
	CheckStatGT(Player1, 11, INT)~ + @1440 + QI#ZakrionHalflingQuest1.2
++ @1441 + QI#ZakrionHalflingQuest1.1.2
++ @1442 + QI#ZakrionHalflingQuest1.1.1
++ @1443 + QI#ZakrionHalflingQuest1.1.1
END 

IF ~~ QI#ZakrionHalflingQuest1.1.1
SAY @1444
IF ~~ + QI#ZakrionHalflingQuest1.2
END

IF ~~ QI#ZakrionHalflingQuest1.1.2
SAY @1445
IF ~~ + QI#ZakrionHalflingQuest1.2
END

IF ~~ QI#ZakrionHalflingQuest1.2
SAY @1446
= @1447
= @1448
= @1449
= @1450
= @1451
IF ~~ DO ~GiveItemCreate("QI#ZHAND","QI#ZAK2",0,0,0) SetGlobal("QI#ZakSalbreadQuest","GLOBAL",5)~
UNSOLVED_JOURNAL @100007 EXIT 
END 

/* Buttercup Alerts */

// Temple Alert
IF ~Global("QI#ZakButtercupAlert","GLOBAL",1)~ QI#ZakrionButtercupAlert1.0
SAY @1452
= @1453
= @1454
= @1455
= @1456
= @1457
= @1458
++ @1459 + QI#ZakrionButtercupAlert1.1
++ @1460 + QI#ZakrionButtercupAlert1.1
++ @1461 + QI#ZakrionButtercupAlert1.0.1
++ @1462 + QI#ZakrionButtercupAlert1.0.2
++ @1463 + QI#ZakrionButtercupAlert1.0.3
END 

IF ~~ QI#ZakrionButtercupAlert1.0.1
SAY @1464
= @1465
IF ~~ DO ~SetGlobal("QI#ZakButtercupAlert","GLOBAL",2)~ EXIT
END

IF ~~ QI#ZakrionButtercupAlert1.0.2
SAY @1466
IF ~~ DO ~SetGlobal("QI#ZakButtercupAlert","GLOBAL",2)~ EXIT
END 

IF ~~ QI#ZakrionButtercupAlert1.0.3
SAY @1467
= @1468
= @1469
IF ~~ DO ~SetGlobal("QI#ZakButtercupAlert","GLOBAL",2)~ EXIT
END 

IF ~~ QI#ZakrionButtercupAlert1.1
SAY @1470
IF ~~ DO ~SetGlobal("QI#ZakButtercupAlert","GLOBAL",2)~ EXIT
END 

// Sewers Alert
IF ~Global("QI#ZakButtercupAlert","GLOBAL",3)~ QI#ZakrionButtercupAlert2.0
SAY @1471
= @1472
= @1473
IF ~~ DO ~SetGlobal("QI#ZakButtercupAlert","GLOBAL",4)~ EXIT 
END


/* Buttercup Ability Gained */
IF ~Global("QI#ZakSalbreadQuest","GLOBAL",9)~ QI#ZakrionButtercupAbility1.0
SAY @1474
= @1475
= @1476
++ @1477 + QI#ZakrionButtercupAbility1.1
++ @1478 + QI#ZakrionButtercupAbility1.0.1
++ @1479 + QI#ZakrionButtercupAbility1.0.2
++ @1480 + QI#ZakrionButtercupAbility1.0.3
END 

IF ~~ QI#ZakrionButtercupAbility1.0.1
SAY @1481
= @1482
= @1483
IF ~~ + QI#ZakrionButtercupAbility1.1
END

IF ~~ QI#ZakrionButtercupAbility1.0.2
SAY @1484
IF ~~ + QI#ZakrionButtercupAbility1.1
END

IF ~~ QI#ZakrionButtercupAbility1.0.3
SAY @1485
= @1486
IF ~~ + QI#ZakrionButtercupAbility1.1
END 

IF ~~ QI#ZakrionButtercupAbility1.1
SAY @1487
= @1488
= @1489
= @1490
= @1491
IF ~~ DO ~SetGlobal("QI#ZakSalbreadQuest","GLOBAL",10)~ EXIT 
END 


/* Arriving at Brynnlaw */
IF ~Global("QI#ZakrionBrynnlaw","GLOBAL",2)~ QI#ZakrionBrynnlawTalk1.0
SAY @1183
= @1184
= @1185
= @1186
++ @1187 + QI#ZakrionBrynnlawTalk1.0.1
++ @1188 + QI#ZakrionBrynnlawTalk1.0.2
++ @1189 + QI#ZakrionBrynnlawTalk1.0.1
END 

IF ~~ QI#ZakrionBrynnlawTalk1.0.1
SAY @1190
= @1191
IF ~~ DO ~IncrementGlobal("QI#ZakrionBrynnlaw","GLOBAL",1)~ EXIT
END

IF ~~ QI#ZakrionBrynnlawTalk1.0.2
SAY @1192
IF ~~ DO ~IncrementGlobal("QI#ZakrionBrynnlaw","GLOBAL",1)~ EXIT
END

/* Unable to kill Desharik - Part 1 */
IF ~Global("QI#ZakrionDesharikMeeting","GLOBAL",2)~ QI#ZakrionDesharikTalk1.0
SAY @1193
= @1194
= @1195
++ @1196 + QI#ZakrionDesharikTalk1.0.1
++ @1197 + QI#ZakrionDesharikTalk1.1
++ @1198 + QI#ZakrionDesharikTalk1.0x
++ @1199 + QI#ZakrionDesharikTalk1.0.2
END 

IF ~~ QI#ZakrionDesharikTalk1.0x
SAY @1200
= @1201
IF ~~ DO ~IncrementGlobal("QI#ZakrionDesharikMeeting","GLOBAL",1) SetGlobal("QI#ZakrionTalkActive","GLOBAL",1) SetGlobal("QI#ZakrionRomanceActive","GLOBAL",3) LeaveParty() EscapeArea()~ EXIT 
END 

IF ~~ QI#ZakrionDesharikTalk1.0.1
SAY @1202
IF ~~ + QI#ZakrionDesharikTalk1.1
END 

IF ~~ QI#ZakrionDesharikTalk1.0.2
SAY @1203
IF ~~ + QI#ZakrionDesharikTalk1.1
END 

IF ~~ QI#ZakrionDesharikTalk1.1
SAY @1204
= @1205
= @1206
++ @1207 + QI#ZakrionDesharikTalk1.1.1
++ @1208 + QI#ZakrionDesharikTalk1.1.2
++ @1209 + QI#ZakrionDesharikTalk1.2
++ @1210 + QI#ZakrionDesharikTalk1.0x
END 

IF ~~ QI#ZakrionDesharikTalk1.1.1
SAY @1211
IF ~~ + QI#ZakrionDesharikTalk1.2
END 

IF ~~ QI#ZakrionDesharikTalk1.1.2
SAY @1212
IF ~~ + QI#ZakrionDesharikTalk1.2
END 

IF ~~ QI#ZakrionDesharikTalk1.2
SAY @1213
= @1214
= @1215
= @1216
IF ~~ DO ~IncrementGlobal("QI#ZakrionDesharikMeeting","GLOBAL",1) RealSetGlobalTimer("QI#ZakrionDesharikTimer","GLOBAL",900)~ EXIT
END 

/* Unable to kill Desharik - Part 2 */
IF ~Global("QI#ZakrionDesharikMeeting","GLOBAL",4)~ QI#ZakrionDesharikTalk2.0
SAY @1217
++ @1218 + QI#ZakrionDesharikTalk2.1
++ @1219 + QI#ZakrionDesharikTalk2.0.1
++ @1220 + QI#ZakrionDesharikTalk2.0.2
END 

IF ~~ QI#ZakrionDesharikTalk2.0.1
SAY @1222
IF ~~ + QI#ZakrionDesharikTalk2.1
END 

IF ~~ QI#ZakrionDesharikTalk2.0.2
SAY @1221
IF ~~ + QI#ZakrionDesharikTalk2.1
END 

IF ~~ QI#ZakrionDesharikTalk2.1
SAY @1223
= @1224
= @1225
= @1226
= @1227
+ ~OR(2)
		Global("QI#ZakrionTalkActive","GLOBAL",0)
		CheckStatGT(Player1, 14, CHR)~ + @1228 + QI#ZakrionDesharikTalk2.1.1
+ ~Global("QI#ZakRomanceActive","GLOBAL",2) Global("QI#ZakPCKnown","GLOBAL",1)~ + @1229 + QI#ZakrionDesharikTalk2.1.4
+ ~Global("QI#ZakRomanceActive","GLOBAL",2) !Global("QI#ZakPCKnown","GLOBAL",1)~ + @1230 + QI#ZakrionDesharikTalk2.1.5
++ @1231 + QI#ZakrionDesharikTalk2.1.2
++ @1232 + QI#ZakrionDesharikTalk2.1.2
++ @1233 + QI#ZakrionDesharikTalk2.1.3
++ @1234 + QI#ZakrionDesharikTalk2.1x
END 

IF ~~ QI#ZakrionDesharikTalk2.1x
SAY @1235
= @1236
= @1237
IF ~~ DO ~IncrementGlobal("QI#ZakrionDesharikMeeting","GLOBAL",1) SetGlobal("QI#ZakrionIsFailure","GLOBAL",1)~ EXIT
END 

IF ~~ QI#ZakrionDesharikTalk2.1.1
SAY @1238
= @1239
= @1240
IF ~~ + QI#ZakrionDesharikTalk2.1.1a
END 

IF ~~ QI#ZakrionDesharikTalk2.1.1a
SAY @1241
= @1242
= @1243
IF ~~ + QI#ZakrionDesharikTalk2.2
END

IF ~~ QI#ZakrionDesharikTalk2.1.2
SAY @1244
= @1245
IF ~~ + QI#ZakrionDesharikTalk2.2
END 

IF ~~ QI#ZakrionDesharikTalk2.1.3
SAY @1246
= @1239
= @1240
IF ~~ + QI#ZakrionDesharikTalk2.1.1a
END 

IF ~~ QI#ZakrionDesharikTalk2.1.4
SAY @1247
= @1240
IF ~~ + QI#ZakrionDesharikTalk2.1.1a
END 

IF ~~ QI#ZakrionDesharikTalk2.1.5
SAY @1248
= @1240
IF ~~ + QI#ZakrionDesharikTalk2.1.1a
END 

IF ~~ QI#ZakrionDesharikTalk2.2
SAY @1249
IF ~~ DO ~IncrementGlobal("QI#ZakrionDesharikMeeting","GLOBAL",1) AddXPObject("QI#ZAK2",5000)~ EXIT
END

/* If Desharik is somehow killed */
IF ~Global("QI#ZakrionDesharikKilled","GLOBAL",1)~ QI#ZakrionDesharikKilled1.0
SAY @1253
++ @1254 + QI#ZakrionDesharikKilled1.1
++ @1255 + QI#ZakrionDesharikKilled1.1
++ @1256 + QI#ZakrionDesharikKilled1.1
++ @1257 + QI#ZakrionDesharikKilled1.0.1
END 

IF ~~ QI#ZakrionDesharikKilled1.0.1
SAY @1258
IF ~~ + QI#ZakrionDesharikKilled1.1
END

IF ~~ QI#ZakrionDesharikKilled1.1
SAY @1259
= @1260
= @1261
= @1262
= @1263
IF ~~ DO ~IncrementGlobal("QI#ZakrionDesharikKilled","GLOBAL",1)~ EXIT 
END 

/* Entering the Sahuagin City */
IF ~Global("QI#ZakrionUnderwaterCity","GLOBAL",2)~ QI#ZakrionUnderwaterCityTalk1.0
SAY @1250
= @1251
= @1252
IF ~~ DO ~IncrementGlobal("QI#ZakrionUnderwaterCity","GLOBAL",1)~ EXIT 
END 


/**************************************************************************************************
								Player Initiated Dialogue
**************************************************************************************************/

IF ~IsGabber(Player1) GlobalGT("QI#ZakrionTalk","GLOBAL",10)~ QI#Zak2PID
SAY @1267
+ ~!Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1268 + QI#ZakYourself1
+ ~Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1269 + QI#ZakYourself2
+ ~GlobalGT("QI#ZakrionTalk","GLOBAL",6)~ + @1270 + QI#ZakShipCrashReminder
+ ~RandomNum(3,1)~ + @1271 + QI#ZakButtercup1
+ ~RandomNum(3,2)~ + @1271 + QI#ZakButtercup2
+ ~RandomNum(3,3)~ + @1271 + QI#ZakButtercup3
+ ~RandomNum(3,1)~ + @1272 + QI#ZakAdvice1
+ ~RandomNum(3,2)~ + @1272 + QI#ZakAdvice2
+ ~RandomNum(3,3)~ + @1272 + QI#ZakAdvice3
+ ~RandomNum(5,1)~ + @1273 + QI#ZakSmile1
+ ~RandomNum(5,2)~ + @1273 + QI#ZakSmile2
+ ~RandomNum(5,3)~ + @1273 + QI#ZakSmile3
+ ~RandomNum(5,4)
   OR(2)
	  Global("QI#ZakRomanceActive","GLOBAL",1)
	  Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1273 + QI#ZakRomSmile1
+ ~RandomNum(5,5)
   OR(2)
	  Global("QI#ZakRomanceActive","GLOBAL",1)
	  Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1273 + QI#ZakRomSmile2
+ ~RandomNum(4,1)~ + @1274 + QI#ZakHug1
+ ~RandomNum(4,2)~ + @1274 + QI#ZakHug2
+ ~RandomNum(4,3)
   OR(2)
	  Global("QI#ZakRomanceActive","GLOBAL",1)
	  Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1274 + QI#ZakHug3
+ ~RandomNum(4,4)
   OR(2)
	  Global("QI#ZakRomanceActive","GLOBAL",1)
	  Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1274 + QI#ZakHug4
+ ~RandomNum(6,1)
   OR(2)
	  Global("QI#ZakRomanceActive","GLOBAL",1)
	  Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1492 + QI#ZakKiss1
+ ~RandomNum(6,2)
   OR(2)
	  Global("QI#ZakRomanceActive","GLOBAL",1)
	  Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1492 + QI#ZakKiss2
+ ~RandomNum(6,3)
   OR(2)
	  Global("QI#ZakRomanceActive","GLOBAL",1)
	  Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1492 + QI#ZakKiss3
+ ~RandomNum(6,4) Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1492 + QI#ZakKiss4
+ ~RandomNum(6,5) Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1492 + QI#ZakKiss5
+ ~RandomNum(6,6) Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1492 + QI#ZakKiss6
+ ~RandomNum(4,1) Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1275 + QI#ZakKissPassionately1
+ ~RandomNum(4,2) Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1275 + QI#ZakKissPassionately2
+ ~RandomNum(4,3) Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1275 + QI#ZakKissPassionately3
+ ~RandomNum(4,4) Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1275 + QI#ZakKissPassionately4
+ ~RandomNum(3,1) Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1276 + QI#ZakHair1
+ ~RandomNum(3,2)
   OR(2)
	  Global("QI#ZakRomanceActive","GLOBAL",1)
	  Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1276 + QI#ZakHair2
+ ~RandomNum(3,3)
   OR(2)
	  Global("QI#ZakRomanceActive","GLOBAL",1)
	  Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1276 + QI#ZakHair3
+ ~RandomNum(3,1)~ + @1277 + QI#ZakFoot1
+ ~RandomNum(3,2)~ + @1277 + QI#ZakFoot2
+ ~RandomNum(3,3)~ + @1277 + QI#ZakFoot3
+ ~RandomNum(5,1)~ + @1278 + QI#ZakPatBack1
+ ~RandomNum(5,2)~ + @1278 + QI#ZakPatBack2
+ ~RandomNum(5,3)~ + @1278 + QI#ZakPatBack3
+ ~RandomNum(5,4)~ + @1278 + QI#ZakPatBack4
+ ~RandomNum(5,5)~ + @1278 + QI#ZakPatBack5
+ ~RandomNum(4,1)
   OR(10)
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
	+ @1279 + QI#ZakTavern1
+ ~RandomNum(4,2)
   OR(10)
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
	+ @1279 + QI#ZakTavern2
+ ~RandomNum(4,3)
   OR(10)
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
	+ @1279 + QI#ZakTavern3
+ ~RandomNum(4,4)
   OR(2)
	  Global("QI#ZakRomanceActive","GLOBAL",1)
	  Global("QI#ZakRomanceActive","GLOBAL",2)
   OR(10)
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
+ ~RandomNum(5,5) 
   OR(2)
	  Global("QI#ZakRomanceActive","GLOBAL",1)
	  Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1282 + QI#ZakGoodTeam5
+ ~RandomNum(4,1)
   OR(2)
	  Global("QI#ZakRomanceActive","GLOBAL",1)
	  Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1283 + QI#ZakHoldHand1
+ ~RandomNum(4,2)
   OR(2)
	  Global("QI#ZakRomanceActive","GLOBAL",1)
	  Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1283 + QI#ZakHoldHand2
+ ~RandomNum(4,3)
   OR(2)
	  Global("QI#ZakRomanceActive","GLOBAL",1)
	  Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1283 + QI#ZakHoldHand3
+ ~RandomNum(4,4) Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1283 + QI#ZakHoldHand4
+ ~RandomNum(3,1)~ + @1284 + QI#ZakWalk1
+ ~RandomNum(3,2)~ + @1284 + QI#ZakWalk2
+ ~RandomNum(3,3)
   OR(2)
	  Global("QI#ZakRomanceActive","GLOBAL",1)
	  Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1284 + QI#ZakWalk3
+ ~RandomNum(3,1)
   OR(2)
	  Global("QI#ZakRomanceActive","GLOBAL",1)
	  Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1285 + QI#ZakLinkArm1
+ ~RandomNum(3,2)
   OR(2)
	  Global("QI#ZakRomanceActive","GLOBAL",1)
	  Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1285 + QI#ZakLinkArm2
+ ~RandomNum(3,3)
   OR(2)
	  Global("QI#ZakRomanceActive","GLOBAL",1)
	  Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1285 + QI#ZakLinkArm3
+ ~RandomNum(3,1)
   OR(2)
	  Global("QI#ZakRomanceActive","GLOBAL",1)
	  Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1286 + QI#ZakBiteArm1
+ ~RandomNum(3,2)
   OR(2)
	  Global("QI#ZakRomanceActive","GLOBAL",1)
	  Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1286 + QI#ZakBiteArm2
+ ~RandomNum(3,3)
   OR(2)
	  Global("QI#ZakRomanceActive","GLOBAL",1)
	  Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1286 + QI#ZakBiteArm3
+ ~RandomNum(4,1)
   OR(2)
	  Global("QI#ZakRomanceActive","GLOBAL",1)
	  Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1287 + QI#ZakRump1
+ ~RandomNum(4,2)
   OR(2)
	  Global("QI#ZakRomanceActive","GLOBAL",1)
	  Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1287 + QI#ZakRump2
+ ~RandomNum(4,3)
   OR(2)
	  Global("QI#ZakRomanceActive","GLOBAL",1)
	  Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1287 + QI#ZakRump3
+ ~RandomNum(4,4)
   OR(2)
	  Global("QI#ZakRomanceActive","GLOBAL",1)
	  Global("QI#ZakRomanceActive","GLOBAL",2)~ + @1287 + QI#ZakRump4
+ ~Global("QI#ZakMomEncounter","GLOBAL",3) GlobalGT("QI#ZakRomanceActive","GLOBAL",8)~ + @1288 + QI#ZakMom
+ ~Global("QI#ZakSpentNightLater","GLOBAL",1)~ + @1289 + QI#ZakReady
+ ~OR(2)
	  Global("QI#ZakrionNotKnownDecision","GLOBAL",1)
	  Global("QI#ZakrionKnownDecision","GLOBAL",1)~ + @1418 + QI#ZakPCDecision 
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

IF ~~ QI#ZakPCDecision 
SAY @1419
++ @1420 + QI#ZakPCDecision1.1
++ @1421 + QI#ZakPCDecision1.2
END 

IF ~~ QI#ZakPCDecision1.1
SAY @1422
IF ~Global("QI#ZakrionNotKnownDecision","GLOBAL",1)~ DO ~SetGlobal("QI#ZakrionNotKnownDecision","GLOBAL",2)~ EXIT
IF ~Global("QI#ZakrionKnownDecision","GLOBAL",1)~ DO ~SetGlobal("QI#ZakrionKnownDecision","GLOBAL",2)~ EXIT
END

IF ~~ QI#ZakPCDecision1.2
SAY @1423
= @1424
IF ~Global("QI#ZakrionNotKnownDecision","GLOBAL",1)~ DO ~SetGlobal("QI#ZakrionNotKnownDecision","GLOBAL",2)~ EXIT
IF ~Global("QI#ZakrionKnownDecision","GLOBAL",1)~ DO ~SetGlobal("QI#ZakrionKnownDecision","GLOBAL",2)~ EXIT
END

END 