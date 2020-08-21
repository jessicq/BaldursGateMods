BEGIN QI#M25J

EXTEND_TOP FATESP 6 #2
+ ~!Dead("QI#Mi") 
!InMyArea("QI#Mi") 
Global("QI#MiSummoned","GLOBAL",0)~ + @595
DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
Wait(2) 
CreateCreature("MIN25",[1999.1228],0) 
SetGlobal("QI#MiNoFriendship","GLOBAL",1)
SetGlobal("QI#MiSummoned","GLOBAL",1)~ GOTO 8
+ ~!Dead("QI#Mi") 
!InMyArea("QI#Mi") 
Global("QI#MiSummoned","GLOBAL",0)~ + @596
DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
Wait(2)
SetGlobal("QI#MiFriendshipTrack","GLOBAL",22)
CreateCreature("MIN25",[1999.1228],0) 
SetGlobal("QI#MiSummoned","GLOBAL",1)~ GOTO 8
END


//Watcher's Keep
I_C_T GORDEMO 12 QI#MiGordemo17
== QI#M25J IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID)~ THEN @2
END

I_C_T GORAPP1 14 QI#MiGorapp114
== QI#M25J IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID)~ THEN @3
END

//Minyae-Friends (True Neutral)
I_C_T FINSOL01 27 QI#MiSolarFriendNeutral
== QI#M25J IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID) Global("QI#MiNoFriendship","GLOBAL",0) Global("QI#MiAlignmentChange","GLOBAL",2)~ THEN @4
END

//Minyae-Friends (Neutral Evil)
I_C_T FINSOL01 27 QI#MiSolarFriendEvil
== QI#M25J IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID) Global("QI#MiNoFriendship","GLOBAL",0) Alignment("QI#Mi",NEUTRAL_EVIL)~ THEN @5
END

//Minyae-NotFriends
I_C_T FINSOL01 27 QI#MiSolarNotFriend
== QI#M25J IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID) !Global("QI#MiNoFriendship","GLOBAL",0)~ THEN @6
END

// Volo's obligatory interjection in Saradush
EXTEND_TOP SARVOLO 9 #2
+ ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID) !Global("QI#MiNoFriendship","GLOBAL",0) 
!GlobalGT("QI#MiEdwinRomanceToB","GLOBAL",0)~ + @7 + QI#MiVoloBio1
+ ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID) Global("QI#MiNoFriendship","GLOBAL",0)
!GlobalGT("QI#MiEdwinRomanceToB","GLOBAL",0)~ + @7 + QI#MiVoloBio2
+ ~InParty("QI#Mi") InParty("Edwin") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID) Global("QI#MiNoFriendship","GLOBAL",0) 
GlobalGT("QI#MiEdwinRomanceToB","GLOBAL",0)~ + @7 + QI#MiVoloBio3
+ ~InParty("QI#Mi") InParty("Edwin") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID) !Global("QI#MiNoFriendship","GLOBAL",0) 
GlobalGT("QI#MiEdwinRomanceToB","GLOBAL",0)~ + @7 + QI#MiVoloBio4
END

CHAIN SARVOLO QI#MiVoloBio1
@8
== QI#M25J IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID)~ THEN @9
EXTERN SARVOLO 9

CHAIN SARVOLO QI#MiVoloBio2
@10
== QI#M25J IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID)~ THEN @66
EXTERN SARVOLO 9

CHAIN SARVOLO QI#MiVoloBio3
@10
== SARVOLO @11
== QI#M25J IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID)~ THEN @12
EXTERN SARVOLO 9

CHAIN SARVOLO QI#MiVoloBio4
@8
== SARVOLO @584
== QI#M25J IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID)~ THEN @15
EXTERN SARVOLO 9

//Vongoethe - Not Friends
EXTEND_BOTTOM AMLICH01 16 
IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID) !Global("QI#MiNoFriendship","GLOBAL",0)~ EXTERN QI#M25J notfriendslich
END

CHAIN QI#M25J notfriendslich
@16
== AMLICH01 @17
== QI#M25J @18
== QI#M25J @19
== AMLICH01 @20
== AMLICH01 @21
== AMLICH01 @591
== AMLICH01 @585
== AMLICH01 @592
== QI#M25J @593
== QI#M25J @22
== AMLICH01 @23
== QI#M25J @24
== AMLICH01 @25
== QI#M25J @26
DO ~SetGlobal("BaelnornSecret","GLOBAL",1)~
== QI#M25J @27
END
+ ~CheckStatGT(Player1, 12, CHR)~ + @28 EXTERN QI#M25J nobetrayal1.0
+ ~CheckStatLT(Player1, 13, CHR)~ + @28 EXTERN QI#M25J betrayal1.0
++ @29 EXTERN QI#M25J killall
++ @30 EXTERN QI#M25J lichkillminyae

CHAIN QI#M25J nobetrayal1.0
@31
== QI#M25J @32
EXIT

CHAIN QI#M25J betrayal1.0
@33
== AMLICH01 @34
== QI#M25J @35
DO ~LeaveParty() 
	Enemy()  
	ReallyForceSpell(Myself, WIZARD_STONE_SKIN) 
	ReallyForceSpell(Myself, WIZARD_IMPROVED_INVISIBILITY) 
	ReallyForceSpell(Myself, WIZARD_IMPROVED_HASTE)
	ReallyForceSpell(Myself, CLERIC_ARMOR_OF_FAITH)
	Attack(LastSeenBy())~
EXIT

CHAIN QI#M25J lichkillminyae
@36
== AMLICH01 @37
== QI#M25J @38
== AMLICH01 @39
== QI#M25J @40
DO ~LeaveParty() ReallyForceSpell(Myself,CLERIC_FLAME_STRIKE) Kill(Myself)~ 
END
++ @41 EXTERN AMLICH01 lichkillminyae2
++ @42 EXTERN AMLICH01 lichkillminyae2
++ @43 EXTERN AMLICH01 lichkillminyae2

CHAIN AMLICH01 lichkillminyae2
@44
DO ~SetGlobal("LichJob","GLOBAL",1)~
EXIT

CHAIN QI#M25J killall
@45
DO ~LeaveParty() 
	Enemy()  
	ReallyForceSpell(Myself, WIZARD_STONE_SKIN) 
	ReallyForceSpell(Myself, WIZARD_IMPROVED_INVISIBILITY) 
	ReallyForceSpell(Myself, WIZARD_IMPROVED_HASTE)
	ReallyForceSpell(Myself, CLERIC_ARMOR_OF_FAITH)
	Attack(LastSeenBy())~
END
COPY_TRANS AMLICH01 5

I_C_T SARMEL01 77 QI#MiSARMEL0177
== QI#M25J IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID)~ THEN @46
END

I_C_T SARMEL01 65 QI#MiSARMEL0165
== QI#M25J IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID)~ THEN @47
END

I_C_T AMSAEMON 8 QI#MiAMSAEMON08
== QI#M25J IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID)~ THEN @48
END

I_C_T BALTH 0 QI#MiBALTH0
== QI#M25J IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID)~ THEN @49
END

I_C_T BAZDRA01 3 QI#MiBAZDRA0103
== QI#M25J IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID)~ THEN @50
END


//Vongoethe - True Neutral Friends
I_C_T AMLICH01 5 QI#MiAMLICH0105
== QI#M25J IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID) Global("QI#MiNoFriendship","GLOBAL",0) Global("QI#MiAlignmentChange","GLOBAL",2) Global("QI#MiTNLichEncounter","GLOBAL",0) Global("BaelnornSecret","GLOBAL",0)~ THEN @16
== AMLICH01 @17
== QI#M25J @51
== AMLICH01 @52
DO ~GiveItemCreate("MAGDAG","QI#Mi",0,0,0)~
== QI#M25J @31
== QI#M25J @53
== AMLICH01 @585
== AMLICH01 @586
== QI#M25J @587
== AMLICH01 @583
DO ~SetGlobal("QI#MiTNLichEncounter","GLOBAL",1) SetGlobal("BaelnornSecret","GLOBAL",1)~
END

I_C_T AMLICH01 20 QI#MiAMLICH0120
== QI#M25J IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID) Global("QI#MiNoFriendship","GLOBAL",0) Global("QI#MiAlignmentChange","GLOBAL",2) Global("QI#MiTNLichEncounter","GLOBAL",0) Global("BaelnornSecret","GLOBAL",0)~ THEN @16
== AMLICH01 @17
== QI#M25J @51
== AMLICH01 @52
DO ~GiveItemCreate("MAGDAG","QI#Mi",0,0,0)~
== QI#M25J @31
== QI#M25J @53
== AMLICH01 @585
== AMLICH01 @586
== QI#M25J @587
== AMLICH01 @583
DO ~SetGlobal("QI#MiTNLichEncounter","GLOBAL",1) SetGlobal("BaelnornSecret","GLOBAL",1)~
END

I_C_T AMLICH01 22 QI#MiAMLICH0122
== QI#M25J IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID) Global("QI#MiNoFriendship","GLOBAL",0) Global("QI#MiAlignmentChange","GLOBAL",2) Global("QI#MiTNLichEncounter","GLOBAL",0) Global("BaelnornSecret","GLOBAL",0)~ THEN @16
== AMLICH01 @17
== QI#M25J @51
== AMLICH01 @52
DO ~GiveItemCreate("MAGDAG","QI#Mi",0,0,0)~
== QI#M25J @31
== QI#M25J @53
== AMLICH01 @585
== AMLICH01 @586
== QI#M25J @587
== AMLICH01 @583
DO ~SetGlobal("QI#MiTNLichEncounter","GLOBAL",1) SetGlobal("BaelnornSecret","GLOBAL",1)~
END

I_C_T AMLICH01 28 QI#MiAMLICH0128
== QI#M25J IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID) Global("QI#MiNoFriendship","GLOBAL",0) Global("QI#MiAlignmentChange","GLOBAL",2) Global("QI#MiTNLichEncounter","GLOBAL",0) Global("BaelnornSecret","GLOBAL",0)~ THEN @16
== AMLICH01 @17
== QI#M25J @51
== AMLICH01 @52
DO ~GiveItemCreate("MAGDAG","QI#Mi",0,0,0)~
== QI#M25J @31
== QI#M25J @53
== AMLICH01 @585
== AMLICH01 @586
== QI#M25J @587
== AMLICH01 @583
DO ~SetGlobal("QI#MiTNLichEncounter","GLOBAL",1) SetGlobal("BaelnornSecret","GLOBAL",1)~
END

I_C_T AMLICH01 32 QI#MiAMLICH0132
== QI#M25J IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID) Global("QI#MiNoFriendship","GLOBAL",0) Global("QI#MiAlignmentChange","GLOBAL",2) Global("QI#MiTNLichEncounter","GLOBAL",0) Global("BaelnornSecret","GLOBAL",0)~ THEN @16
== AMLICH01 @17
== QI#M25J @51
== AMLICH01 @52
DO ~GiveItemCreate("MAGDAG","QI#Mi",0,0,0)~
== QI#M25J @31
== QI#M25J @53
== AMLICH01 @585
== AMLICH01 @586
== QI#M25J @587
== AMLICH01 @583
DO ~SetGlobal("QI#MiTNLichEncounter","GLOBAL",1) SetGlobal("BaelnornSecret","GLOBAL",1)~
END

I_C_T AMLICH01 31 QI#MiAMLICH0131
== QI#M25J IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID) Global("QI#MiNoFriendship","GLOBAL",0) Global("QI#MiAlignmentChange","GLOBAL",2) Global("QI#MiTNLichEncounter","GLOBAL",0) Global("BaelnornSecret","GLOBAL",0)~ THEN @16
== AMLICH01 @17
== QI#M25J @51
== AMLICH01 @54
== QI#M25J @55
== AMLICH01 @56
DO ~GiveItemCreate("MAGDAG","QI#Mi",0,0,0)~
== QI#M25J @31
== QI#M25J @57
== AMLICH01 @585
== AMLICH01 @586
== QI#M25J @587
== AMLICH01 @58
DO ~SetGlobal("QI#MiTNLichEncounter","GLOBAL",1) SetGlobal("BaelnornSecret","GLOBAL",1)~
END

//Vongoethe - Neutral Evil Friends
I_C_T AMLICH01 0 QI#MiAMLICH0100
== QI#M25J IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID) Global("QI#MiNoFriendship","GLOBAL",0) Global("QI#MiAlignmentChange","GLOBAL",1) Global("BaelnornSecret","GLOBAL",0)~ THEN @16
== AMLICH01 @17
== QI#M25J @59
== QI#M25J @60
== AMLICH01 @61
DO ~GiveItemCreate("MAGDAG","QI#Mi",0,0,0)~
== QI#M25J @62
== AMLICH01 @585
== AMLICH01 @588
== QI#M25J @589
== AMLICH01 @590
DO ~SetGlobal("BaelnornSecret","GLOBAL",1)~
END


APPEND QI#M25J

//Pre-Talks
IF ~Global("QI#MiToBTalk","GLOBAL",0)~ pretob
SAY @63
= @64
= @65
IF ~~ DO ~SetGlobal("QI#MiToBTalk","GLOBAL",1)~ EXIT
END


//Talk1 - Regrets

IF ~Global("QI#MiFriendshipTalkToB","GLOBAL",2)~ tob1
SAY @67
++ @68 + tob1.1
++ @69 + tob1.2
++ @70 + tob1.3
END

IF ~~ tob1.1
SAY @71
= @72
IF ~~ + tob1.4
END

IF ~~ tob1.2
SAY @73
= @74
IF ~~ + tob1.4
END

IF ~~ tob1.3
SAY @75
++ @76 + tob1.4
++ @77 + tob.0
END

IF ~~ tob.0
SAY @78
IF ~~ DO ~IncrementGlobal("QI#MiFriendshipTalkToB","GLOBAL",1) RealSetGlobalTimer("QI#MiTimer","GLOBAL",3600)~ EXIT
END

IF ~~ tob1.4
SAY @79
= @80
++ @81 + tob1.5
++ @82 + tob1.4.1
++ @83 + tob1.4.2
++ @84 + tob1.4.3
END

IF ~~ tob1.4.1
SAY @85
IF ~~ + tob1.5
END

IF ~~ tob1.4.2
SAY @86
IF ~~ + tob1.5
END

IF ~~ tob1.4.3
SAY @87
IF ~~ + tob1.5
END

IF ~~ tob1.5
SAY @88
= @89
= @90
++ @91 + tob1.5.1
++ @92 + tob1.5.2
END

IF ~~ tob1.5.1
SAY @93
IF ~~ + tob1.6
END

IF ~~ tob1.5.2
SAY @94
IF ~~ + tob1.6
END

IF ~~ tob1.6
SAY @95
= @96
= @97
= @100
++ @98 + tob1.6.1
++ @99 + tob1.6.2
++ @101 + tob1.6.3
END

IF ~~ tob1.6.1
SAY @102
= @103
IF ~~ DO ~IncrementGlobal("QI#MiFriendshipTalkToB","GLOBAL",1)~ EXIT
END

IF ~~ tob1.6.2
SAY @104
IF ~~ DO ~IncrementGlobal("QI#MiFriendshipTalkToB","GLOBAL",1)~ EXIT
END

IF ~~ tob1.6.3
SAY @105
= @106
IF ~~ DO ~IncrementGlobal("QI#MiFriendshipTalkToB","GLOBAL",1)~ EXIT
END


//Talk2 - Destruction of Saradush

IF ~Global("QI#MiYagaShura","GLOBAL",1)~ tob2
SAY @107
++ @108 + tob2.1
++ @109 + tob2.2
++ @110 + tob2.3
++ @111 + tob2.4
END

IF ~~ tob2.1
SAY @112
IF ~~ + tob2.5
END

IF ~~ tob2.2
SAY @113
IF ~~ + tob2.5
END

IF ~~ tob2.3
SAY @114
IF ~~ + tob2.5
END

IF ~~ tob2.4
SAY @115
IF ~~ + tob2.5
END

IF ~~ tob2.5
SAY @116
= @117
++ @118 + tob2.5.1
++ @119 + tob2.5.2
++ @120 + tob2.5.3
END

IF ~~ tob2.5.1
SAY @121
= @122
IF ~~ + tob2.6
END

IF ~~ tob2.5.2
SAY @123
IF ~~ + tob2.6
END

IF ~~ tob2.5.3
SAY @124
IF ~~ + tob2.6
END

IF ~~ tob2.6
SAY @125
++ @126 + tob2.6.1
++ @127 + tob2.6.2
++ @128 + tob2.6.1
++ @129 + tob2.6.3
END

IF ~~ tob2.6.1
SAY @130
IF ~~ + tob2.7
END

IF ~~ tob2.6.2
SAY @131
IF ~~ + tob2.7
END

IF ~~ tob2.6.3
SAY @132
IF ~~ + tob2.7
END

IF ~~ tob2.7
SAY @133
= @134
IF ~~ DO ~SetGlobal("QI#MiYagaShura","GLOBAL",2)~ EXIT
END


//Talk3 - Encounter After Willias - Shouldn't be a friendship talk

IF ~Global("QI#EncounterTalk2","GLOBAL",1)~ tob3
SAY @135
++ @136 + tob3.1.1
++ @137 + tob3.1.1
++ @138 + tob3.1.2
++ @139 + tob3.1.3
END

IF ~~ tob3.1.1
SAY @140
IF ~~ + tob3.2
END

IF ~~ tob3.1.2
SAY @141
IF ~~ + tob3.2
END

IF ~~ tob3.1.3
SAY @142
IF ~~ + tob3.2
END

IF ~~ tob3.2
SAY @143
= @144
++ @145 + tob3.2.1
++ @146 + tob3.2.3
++ @147 + tob3.2.3
++ @148 + tob3.2.2
END

IF ~~ tob3.2.1
SAY @149
IF ~~ + tob3.2.3
END

IF ~~ tob3.2.2
SAY @150
IF ~~ + tob3.2.3
END

IF ~~ tob3.2.3
SAY @151
IF ~~ + tob3.3
END

IF ~~ tob3.3
SAY @152
++ @153 + tob3.3.1
++ @154 + tob3.3.2
++ @155 + tob3.3.3
END

IF ~~ tob3.3.1
SAY @156
IF ~~ + tob3.4
END

IF ~~ tob3.3.2
SAY @157
IF ~~ + tob3.4
END

IF ~~ tob3.3.3
SAY @158
IF ~~ + tob3.4
END

IF ~~ tob3.4
SAY @159
= @160
= @161
= @162
= @163
= @164
++ @165 + tob3.4.1
++ @166 + tob3.4.1
++ @167 + tob3.4.2
++ @168 + tob3.4.2
END

IF ~~ tob3.4.1
SAY @169
+ ~Global("QI#MiNoFriendship","GLOBAL",0)~ + @170 + tob3.5a
+ ~Global("QI#MiNoFriendship","GLOBAL",1)~ + @170 + tob3.5c
+ ~Global("QI#MiNoFriendship","GLOBAL",0)~ + @171 + tob3.5b
+ ~Global("QI#MiNoFriendship","GLOBAL",1)~ + @171 + tob3.5d
END

IF ~~ tob3.5c
SAY @172
= @173
= @174
= @175
IF ~~ DO ~SetGlobal("QI#EncounterTalk2","GLOBAL",2) SetGlobal("QI#MiAlignmentChange","GLOBAL",1)~ EXIT // This needs to be changed
END

IF ~~ tob3.5d
SAY @176
= @173
= @174
= @175
IF ~~ DO ~SetGlobal("QI#EncounterTalk2","GLOBAL",2) SetGlobal("QI#MiAlignmentChange","GLOBAL",1)~ EXIT // This needs to be changed
END

IF ~~ tob3.4.2
SAY @176
++ @177 + tob3.5b
++ @178 + tob3.5b
++ @179 + tob3.4.1
END

IF ~~ tob3.5a
SAY @172
++ @180 + tob3.7
++ @181 + tob3.7
++ @182 + tob3.5b
++ @183 + tob3.5b
END

IF ~~ tob3.7
SAY @184
= @185
IF ~~ + tob3.8
END

IF ~~ tob3.5b
SAY @186
= @187
IF ~~ + tob3.6
END 

IF ~~ tob3.6
SAY @188
IF ~~ DO ~SetGlobal("QI#EncounterTalk2","GLOBAL",2) SetGlobal("QI#MiAlignmentChange","GLOBAL",1)~ EXIT
END

IF ~~ tob3.8
SAY @188
IF ~~ DO ~SetGlobal("QI#EncounterTalk2","GLOBAL",2) SetGlobal("QI#MiAlignmentChange","GLOBAL",2)~ EXIT
END 


/* This is actually Talk 3!!! */
//Talk4 - Encounter After Lich (True Neutral)

IF ~Global("QI#MiNoFriendship","GLOBAL",0) Alignment("QI#Mi",NEUTRAL) Global("MinyaeHasTome","GLOBAL",0)~ tob4t
SAY @189
++ @190 + tob4t.1
++ @191 + tob4t.2
++ @192 + tob4t.3
END

IF ~~ tob4t.1
SAY @193
IF ~~ + tob4t.4
END

IF ~~ tob4t.2
SAY @194
IF ~~ + tob4t.4
END

IF ~~ tob4t.3
SAY @195
IF ~~ + tob4t.4
END

IF ~~ tob4t.4
SAY @196
= @197
= @198
= @199
= @200
= @201
= @202
++ @597 + tob4t.0
END 

IF ~~ tob4t.0
SAY @203
= @204
= @205
IF ~~ DO ~SetGlobal("MinyaeHasTome","GLOBAL",1) AddXPObject("QI#Mi",20000)~ EXIT
END


//Talk4 - Encounter After Lich (Neutral Evil)

IF ~Global("QI#MiNoFriendship","GLOBAL",0) Alignment("QI#Mi",NEUTRAL_EVIL) Global("MinyaeHasTome","GLOBAL",0) PartyHasItem("BOOK01")~ tob4e
SAY @206
++ @207 + tob4e.1
++ @208 + tob4e.2
++ @209 + tob4e.3
END

IF ~~ tob4e.1
SAY @210
IF ~~ + tob4e.4
END

IF ~~ tob4e.2
SAY @211
IF ~~ + tob4e.4
END

IF ~~ tob4e.3
SAY @212
IF ~~ + tob4e.4
END

IF ~~ tob4e.4
SAY @213
++ @574 + tob4e.0
END

IF ~~ tob4e.0
SAY @214
= @215
= @216
= @217
= @218
= @219
IF ~~ DO ~SetGlobal("MinyaeHasTome","GLOBAL",1) TakePartyItem("BOOK01") DestroyItem("BOOK01") AddXPObject("QI#Mi",40000)~ EXIT
END

//Talk4 - Not Friends so therefore not really a talk

IF ~!Global("QI#MiNoFriendship","GLOBAL",0) Global("MinyaeHasTome","GLOBAL",0) PartyHasItem("BOOK01")~ tob4nf
SAY @220
= @221
++ @222 + tob4nf.1
++ @223 + tob4nf.2
++ @224 + tob4nf.3
END

IF ~~ tob4nf.1
SAY @225
IF ~~ + tob4nf.4
END

IF ~~ tob4nf.2
SAY @226
IF ~~ + tob4nf.41
END

IF ~~ tob4nf.3
SAY @227
IF ~~ + tob4nf.4
END

IF ~~ tob4nf.4
SAY @228
= @229
IF ~~ DO ~SetGlobal("MinyaeHasTome","GLOBAL",1) TakePartyItem("BOOK01") DestroyItem("BOOK01") AddXPObject("QI#Mi",30000)~ EXIT
END

IF ~~ tob4nf.41
SAY @230
= @229
IF ~~ DO ~SetGlobal("MinyaeHasTome","GLOBAL",1) TakePartyItem("BOOK01") DestroyItem("BOOK01") AddXPObject("QI#Mi",30000)~ EXIT
END


//Talk5 - Final Talk Before Amelyssan

IF ~Global("MinyaeFinalTalk","GLOBAL",1)~ tob5
SAY @231
= @232
++ @233 + tob5.2
++ @234 + tob5.3
++ @235 + tob5.4
END

IF ~~ tob5.2
SAY @236
++ @237 + tob5.2.1
++ @238 + tob5.2.2
++ @239 + tob5.2.3
END

IF ~~ tob5.2.1
SAY @240
IF ~~ + tob5.5
END

IF ~~ tob5.2.2
SAY @241
IF ~~ + tob5.5
END

IF ~~ tob5.2.3
SAY @242
IF ~~ + tob5.5
END

IF ~~ tob5.3
SAY @243
IF ~~ + tob5.5
END

IF ~~ tob5.4
SAY @244
IF ~~ + tob5.5
END

IF ~~ tob5.5
SAY @245
IF ~Global("QI#AcceptLove","GLOBAL",1) Alignment("QI#Mi",NEUTRAL_EVIL)~ + tob5.5.1
IF ~!Global("QI#AcceptLove","GLOBAL",1) Alignment("QI#Mi",NEUTRAL_EVIL)~ + tob5.5.2
IF ~Global("QI#AcceptLove","GLOBAL",1) Alignment("QI#Mi",NEUTRAL)~ + tob5.5.3
IF ~!Global("QI#AcceptLove","GLOBAL",1) Alignment("QI#Mi",NEUTRAL)~ + tob5.5.4
END

IF ~~ tob5.5.1
SAY @246
= @247
= @248
= @249
= @256
IF ~~ + tob5.7
END
 
IF ~~ tob5.5.2
SAY @251
= @247
= @248
= @249
= @252
IF ~~ + tob5.7
END

IF ~~ tob5.5.3
SAY @253
= @254
= @248
= @255
= @250
IF ~~ + tob5.6
END

IF ~~ tob5.5.4
SAY @257
= @258
= @248
= @259
IF ~~ + tob5.6
END

IF ~~ tob5.6
SAY @260
= @261
IF ~~ DO ~SetGlobal("MinyaeFinalTalk","GLOBAL",2)~ EXIT
END

IF ~~ tob5.7
SAY @262
= @261
IF ~~ DO ~SetGlobal("MinyaeFinalTalk","GLOBAL",2)~ EXIT
END

//FriendshipTalk about Edwin

IF ~Global("QI#MiEdwinChoice","GLOBAL",1) Global("MinyaeChoosing","GLOBAL",1)~ MinyaeEdwinChoiceTalk
SAY @263
++ @264 + em1.2
++ @265 + em1.1.1
++ @266 + em1.1.2
END

IF ~~ em1.1.1
SAY @267
++ @268 + em.0
++ @269 + em1.6
END

IF ~~ em1.1.2
SAY @270
++ @268 + em.0
++ @271 + em.0
++ @272 + em.0
++ @269 + em1.6
END

IF ~~ em.0
SAY @273
IF ~~ + em1.2
END

IF ~~ em1.2
SAY @274
= @275
++ @276 + em1.2.1
++ @277 + em1.3
END

IF ~~ em1.2.1
SAY @278
IF ~~ + em1.3
END

IF ~~ em1.3
SAY @279
= @280
= @281
= @282
= @283
= @284
= @285
++ @286 + em1.4
++ @287 + em1.5
++ @288 + em1.3.1
END

IF ~~ em1.3.1
SAY @289
++ @290 + em1.4
++ @291 + em1.5
++ @292 + em1.6
END

IF ~~ em1.4
SAY @293
++ @294 + em1.4.1
++ @295 + em1.5.0ba
END

IF ~~ em1.4.1
SAY @296
= @297
= @298
IF ~~ DO ~SetGlobal("QI#AcceptLove","GLOBAL",1) SetGlobal("QI#MiEdwinChoice","GLOBAL",2)~ EXIT
END

IF ~~ em1.5
SAY @299
IF ~Global("AerieRomanceActive","GLOBAL",2)~ + em1.5.1
IF ~Global("JaheiraRomanceActive","GLOBAL",2)~ + em1.5.2
IF ~Global("ViconiaRomanceActive","GLOBAL",2)~ + em1.5.3
IF ~Global("AnomenRomanceActive","GLOBAL",2)~ + em1.5.4
IF ~Global("DornRomanceActive","GLOBAL",2)~ + em1.5.5
IF ~Global("RasaadRomanceActive","GLOBAL",2)~ + em1.5.6
IF ~Global("NeeraRomanceActive","GLOBAL",2)~ + em1.5.7
IF ~Global("HexxatRomanceActive","GLOBAL",2)~ + em1.5.9
IF ~Global("C#AjantisRomanceActive","GLOBAL",2)~ + em1.5.10
IF ~Global("K#SarahRomanceActive","GLOBAL",2)~ + em1.5.11
IF ~Global("rh#IsraRomanceActive","GLOBAL",2)~ + em1.5.12
IF ~Global("rh#AdrianRomanceActive","GLOBAL",2)~ + em1.5.13
IF ~Global("SK#NehtRomanceActive","GLOBAL",2)~ + em1.5.14
IF ~Global("G#TF.TyrisRomanceActive","GLOBAL",2)~ + em1.5.15
IF ~Global("ADAngelRomanceActive","GLOBAL",2)~ + em1.5.16
IF ~Global("B!GavRA","GLOBAL",2)~ + em1.5.17
IF ~Global("B!KeldornRA","GLOBAL",2)~ + em1.5.18
IF ~Global("T1DarRomanceActive","GLOBAL",2)~ + em1.5.19
IF ~Global("YoshimoRomanceActive","GLOBAL",2)~ + em1.5.20
IF ~Global("YvetteRomanceActive","GLOBAL",2)~ + em1.5.21
IF ~Global("LK#NindeRomanceActive","GLOBAL",2)~ + em1.5.22
IF ~Global("H#ValygarRomanceActive","GLOBAL",2)~ + em1.5.23
IF ~Global("ImoenRomanceActive","GLOBAL",2)~ + em1.5.24
IF ~Global("SimeRomanceActive","GLOBAL",2)~ + em1.5.25
IF ~Global("NaliaRomanceActive","GLOBAL",2)~ + em1.5.26
IF ~Global("E3FADEROMANCEACTIVE","GLOBAL",2)~ + em1.5.27
IF ~Global("NathRomanceActive","GLOBAL",2)~ + em1.5.28
IF ~Global("O#XanRomanceActive","GLOBAL",2)~ + em1.5.29
IF ~Global("J#KelseyRomanceActive","GLOBAL",2)~ + em1.5.30
IF ~Global("TsujathaRomanceActive","GLOBAL",2)~ + em1.5.31
IF ~Global("SaerilethRomanceActive","GLOBAL",2)~ + em1.5.32
IF ~Global("ChloeRomanceActiveCR","GLOBAL",2)~ + em1.5.33
IF ~Global("SolaTalk","GLOBAL",14)~ + em1.5.34
IF ~Global("TashiaRomanceActive","GLOBAL",2)~ + em1.5.35
IF ~Global("LK#ArathRomanceActive","GLOBAL",2)~ + em1.5.36
IF ~Global("O#BranRomanceActive","GLOBAL",2)~ + em1.5.37
IF ~Global("L#2VerrRomanceActive","GLOBAL",2)~ + em1.5.38
IF ~Global("P#KivanRomanceActive","GLOBAL",2)~ + em1.5.39
IF ~!Global("JaheiraRomanceActive","GLOBAL",2) !Global("AerieRomanceActive","GLOBAL",2) !Global("ViconiaRomanceActive","GLOBAL",2) !Global("AnomenRomanceActive","GLOBAL",2) 
	!Global("DornRomanceActive","GLOBAL",2) !Global("RasaadRomanceActive","GLOBAL",2) !Global("NeeraRomanceActive","GLOBAL",2) !Global("C#AjantisRomanceActive","GLOBAL",2)
	!Global("HexxatRomanceActive","GLOBAL",2) !Global("K#SarahRomanceActive","GLOBAL",2) !Global("rh#IsraRomanceActive","GLOBAL",2) !Global("rh#AdrianRomanceActive","GLOBAL",2)
	!Global("SK#NehtRomanceActive","GLOBAL",2) !Global("G#TF.TyrisRomanceActive","GLOBAL",2) !Global("ADAngelRomanceActive","GLOBAL",2) !Global("B!GavRA","GLOBAL",2) 
	!Global("B!KeldornRA","GLOBAL",2) !Global("T1DarRomanceActive","GLOBAL",2) !Global("YoshimoRomanceActive","GLOBAL",2) !Global("YvetteRomanceActive","GLOBAL",2)
	!Global("LK#NindeRomanceActive","GLOBAL",2) !Global("H#ValygarRomanceActive","GLOBAL",2) !Global("ImoenRomanceActive","GLOBAL",2) !Global("SimeRomanceActive","GLOBAL",2)
	!Global("NaliaRomanceActive","GLOBAL",2) !Global("E3FADEROMANCEACTIVE","GLOBAL",2) !Global("NathRomanceActive","GLOBAL",2) !Global("O#XanRomanceActive","GLOBAL",2)
	!Global("J#KelseyRomanceActive","GLOBAL",2) !Global("TsujathaRomanceActive","GLOBAL",2) !Global("SaerilethRomanceActive","GLOBAL",2) !Global("ChloeRomanceActiveCR","GLOBAL",2)
	!Global("SolaTalk","GLOBAL",14) !Global("TashiaRomanceActive","GLOBAL",2) !Global("LK#ArathRomanceActive","GLOBAL",2) !Global("O#BranRomanceActive","GLOBAL",2) 
	!Global("L#2VerrRomanceActive","GLOBAL",2) !Global("P#KivanRomanceActive","GLOBAL",2)~ + em1.5.8
END

IF ~~ em1.5.1
SAY @300
++ @301 + em1.5.0a
++ @302 + em1.5.0a
++ @303 + em1.5.0b
END

IF ~~ em1.5.2
SAY @304
++ @301 + em1.5.0a
++ @302 + em1.5.0a
++ @305 + em1.5.0b
END

IF ~~ em1.5.3
SAY @306
++ @301 + em1.5.0a
++ @302 + em1.5.0a
++ @307 + em1.5.0b
END

IF ~~ em1.5.4
SAY @308
++ @301 + em1.5.0a
++ @321 + em1.5.0a
++ @309 + em1.5.0b
END

IF ~~ em1.5.5
SAY @310
++ @301 + em1.5.0a
++ @321 + em1.5.0a
++ @311 + em1.5.0b
END

IF ~~ em1.5.6
SAY @312
++ @301 + em1.5.0a
++ @321 + em1.5.0a
++ @313 + em1.5.0b
END

IF ~~ em1.5.7
SAY @314
++ @301 + em1.5.0a
++ @302 + em1.5.0a
++ @315 + em1.5.0b
END

IF ~~ em1.5.8
SAY @316
= @317
= @318
IF ~~ DO ~SetGlobal("QI#RejectLove","GLOBAL",1)~ EXIT
END

IF ~~ em1.5.9
SAY @319
++ @301 + em1.5.0a
++ @302 + em1.5.0a
++ @320 + em1.5.0b
END 

IF ~~ em1.5.10
SAY @322
++ @301 + em1.5.0a
++ @321 + em1.5.0a
++ @323 + em1.5.0b
END

IF ~~ em1.5.11
SAY @324
++ @301 + em1.5.0a
++ @302 + em1.5.0a
++ @325 + em1.5.0b
END

IF ~~ em1.5.12
SAY @326
++ @301 + em1.5.0a
++ @302 + em1.5.0a
++ @327 + em1.5.0b
END

IF ~~ em1.5.13
SAY @328
++ @301 + em1.5.0a
++ @321 + em1.5.0a
++ @329 + em1.5.0b
END

IF ~~ em1.5.14
SAY @330
++ @301 + em1.5.0a
++ @321 + em1.5.0a
++ @331 + em1.5.0b
END

IF ~~ em1.5.15
SAY @332
++ @301 + em1.5.0a
++ @302 + em1.5.0a
++ @333 + em1.5.0b
END

IF ~~ em1.5.16
SAY @334
++ @301 + em1.5.0a
++ @321 + em1.5.0a
++ @335 + em1.5.0b
END

IF ~~ em1.5.17
SAY @336
++ @301 + em1.5.0a
++ @321 + em1.5.0a
++ @337 + em1.5.0b
END

IF ~~ em1.5.18
SAY @338
++ @301 + em1.5.0a
++ @321 + em1.5.0a
++ @339 + em1.5.0b
END

IF ~~ em1.5.19
SAY @340
++ @301 + em1.5.0a
++ @321 + em1.5.0a
++ @341 + em1.5.0b
END

IF ~~ em1.5.20
SAY @342
++ @301 + em1.5.0a
++ @321 + em1.5.0a
++ @343 + em1.5.0b
END

IF ~~ em1.5.21
SAY @344
++ @301 + em1.5.0a
++ @302 + em1.5.0a
++ @345 + em1.5.0b
END

IF ~~ em1.5.22
SAY @346
++ @301 + em1.5.0a
++ @302 + em1.5.0a
++ @347 + em1.5.0b
END

IF ~~ em1.5.23
SAY @348
++ @301 + em1.5.0a
++ @321 + em1.5.0a
++ @349 + em1.5.0b
END

IF ~~ em1.5.24
SAY @350
++ @301 + em1.5.0a
++ @302 + em1.5.0a
++ @351 + em1.5.0b
END

IF ~~ em1.5.25
SAY @352
++ @301 + em1.5.0a
++ @302 + em1.5.0a
++ @353 + em1.5.0b
END

IF ~~ em1.5.26
SAY @354
++ @301 + em1.5.0a
++ @302 + em1.5.0a
++ @355 + em1.5.0b
END

IF ~~ em1.5.27
SAY @356
++ @301 + em1.5.0a
++ @302 + em1.5.0a
++ @357 + em1.5.0b
END

IF ~~ em1.5.28
SAY @358
++ @301 + em1.5.0a
++ @321 + em1.5.0a
++ @359 + em1.5.0b
END

IF ~~ em1.5.29
SAY @360
++ @301 + em1.5.0a
++ @321 + em1.5.0a
++ @361 + em1.5.0b
END

IF ~~ em1.5.30
SAY @362
++ @301 + em1.5.0a
++ @321 + em1.5.0a
++ @363 + em1.5.0b
END

IF ~~ em1.5.31
SAY @364
++ @301 + em1.5.0a
++ @321 + em1.5.0a
++ @365 + em1.5.0b
END

IF ~~ em1.5.32
SAY @366
++ @301 + em1.5.0a
++ @302 + em1.5.0a
++ @367 + em1.5.0b
END

IF ~~ em1.5.33
SAY @368
++ @301 + em1.5.0a
++ @302 + em1.5.0a
++ @369 + em1.5.0b
END

IF ~~ em1.5.34
SAY @370
++ @301 + em1.5.0a
++ @321 + em1.5.0a
++ @371 + em1.5.0b
END

IF ~~ em1.5.35
SAY @372
++ @301 + em1.5.0a
++ @302 + em1.5.0a
++ @373 + em1.5.0b
END

IF ~~ em1.5.36
SAY @374
++ @301 + em1.5.0a
++ @321 + em1.5.0a
++ @375 + em1.5.0b
END

IF ~~ em1.5.37
SAY @376
++ @301 + em1.5.0a
++ @302 + em1.5.0a
++ @377 + em1.5.0b
END

IF ~~ em1.5.38
SAY @378
++ @301 + em1.5.0a
++ @321 + em1.5.0a
++ @379 + em1.5.0b
END

IF ~~ em1.5.39
SAY @380
++ @301 + em1.5.0a
++ @321 + em1.5.0a
++ @381 + em1.5.0b
END

IF ~~ em1.5.0a
SAY @382
= @383
= @384
IF ~~ DO ~SetGlobal("QI#AcceptLove","GLOBAL",1) SetGlobal("QI#MiEdwinChoice","GLOBAL",2)~ EXIT
END

IF ~~ em1.5.0b
SAY @385
++ @386 + em1.4
++ @387 + em1.5.0ba
++ @388 + em1.6
END

IF ~~ em1.5.0ba
SAY @389
= @390
IF ~~ DO ~SetGlobal("QI#RejectLove","GLOBAL",1) SetGlobal("QI#MiEdwinChoice","GLOBAL",2)~ EXIT
END

IF ~~ em1.6
SAY @391
= @392
IF ~~ DO ~SetGlobal("QI#RejectLove","GLOBAL",1) SetGlobal("QI#MiEdwinChoice","GLOBAL",2)~ EXIT
END


//Player - Initiated Dialogue

IF ~IsGabber(Player1)~ QI#MiPID
SAY @393
+ ~Global("QI#MiToBTalk","GLOBAL",1)~ + @394 + sis1
+ ~Global("BaelnornSecret","GLOBAL",1)~ + @575 + baelnorn
+ ~RandomNum(5,1)~ + @395 + at1
+ ~RandomNum(5,2)~ + @395 + at2
+ ~RandomNum(5,3) Global("QI#RejectLove","GLOBAL",1) OR(1) GlobalLT("QI#MiEdwinRomanceToB","GLOBAL",4)~ + @395 + at3nolove
+ ~RandomNum(5,3) Global("QI#AcceptLove","GLOBAL",1)~ + @395 + at3love
+ ~Global("QI#MiRomanceStartToB","GLOBAL",1) !Global("QI#AcceptLove","GLOBAL",1) !Global("QI#RejectLove","GLOBAL",1)~ + @396 + suldan1
+ ~RandomNum(5,4)~ + @395 + at4
+ ~RandomNum(5,5)~ + @395 + at5
+ ~RandomNum(4,1)~ + @397 + hug1
+ ~RandomNum(4,2)~ + @397 + hug2
+ ~RandomNum(4,3)~ + @397 + hug3
+ ~RandomNum(4,4) Global("QI#MiNoFriendship","GLOBAL",0)~ + @397 + hug4
+ ~RandomNum(3,1)~ + @398 + pat1
+ ~RandomNum(3,2)~ + @398 + pat2
+ ~RandomNum(3,3)~ + @398 + pat3
+ ~RandomNum(3,1)~ + @399 + poke1
+ ~RandomNum(3,2)~ + @399 + poke2
+ ~RandomNum(3,3)~ + @399 + poke3
++ @400 EXIT
END

IF ~~ baelnorn
SAY @576
++ @577 + baelnorn1.0.1
++ @578 + baelnorn1.1
END

IF ~~ baelnorn1.0.1
SAY @579
IF ~~ + baelnorn1.1
END

IF ~~ baelnorn1.1
SAY @580
= @581
= @582
IF ~~ EXIT
END

IF ~~ suldan1
SAY @401
++ @402 + suldan1.1.1
+ ~Global("QI#MiNoFriendship","GLOBAL",0)~ + @403 + suldan1.1.2
+ ~Global("QI#MiNoFriendship","GLOBAL",1)~ + @403 + suldan1.1.3
END

IF ~~ suldan1.1.1
SAY @404
= @405
++ @406 + bicker1.0
++ @407 + thief1.0
++ @408 + moonlit1.0
++ @409 + redwizard1.0
END

IF ~~ suldan1.1.2
SAY @410
= @411
++ @412 + bicker1.0
++ @413 + thief1.0
++ @414 + moonlit1.0
++ @415 + redwizard1.0
END

IF ~~ suldan1.1.3
SAY @416
= @417
IF ~~ EXIT
END

IF ~~ bicker1.0
SAY @418
= @419
= @420
++ @421 + bicker1.1
++ @422 + bicker1.1.1
END

IF ~~ bicker1.1.1
SAY @423
= @424
IF ~~ + bicker1.1
END

IF ~~ bicker1.1
SAY @425
= @426
= @427
IF ~~ EXIT
END

IF ~~ thief1.0
SAY @428
= @429
++ @430 + thief1.1
END

IF ~~ thief1.1
SAY @431
= @432
= @433
++ @434 + thief1.1.1
++ @435 + thief1.2
++ @436 + thief1.2
++ @437 EXIT
END

IF ~~ thief1.1.1
SAY @438
IF ~~ + thief1.2
END

IF ~~ thief1.2
SAY @439
= @440
= @441
++ @442 + thief1.3
END

IF ~~ thief1.3
SAY @443
= @444
++ @445 + thief1.4
++ @446 + thief1.4
++ @447 + thief1.4
END

IF ~~ thief1.4
SAY @448
= @449
IF ~~ EXIT
END 

IF ~~ moonlit1.0
SAY @450
++ @451 + moonlit1.1
++ @452 EXIT
END

IF ~~ moonlit1.1
SAY @453
= @454
++ @455 + moonlit1.2
++ @456 + moonlit1.2
++ @457 + moonlit1.1.2
++ @458 EXIT
END

IF ~~ moonlit1.1.2
SAY @459
= @460
= @461
IF ~~ EXIT
END

IF ~~ moonlit1.2
SAY @462
++ @463 + moonlit1.2.1
++ @464 + moonlit1.2.2
++ @465 + moonlit1.2.3
++ @466 + moonlit1.2.3
END

IF ~~ moonlit1.2.1
SAY @467
= @468
= @469
IF ~~ EXIT
END

IF ~~ moonlit1.2.2
SAY @470
IF ~~ + moonlit1.3
END

IF ~~ moonlit1.2.3
SAY @471
IF ~~ + moonlit1.3
END

IF ~~ moonlit1.3
SAY @472
= @473
= @474
= @475
IF ~~ EXIT
END

IF ~~ redwizard1.0
SAY @476
++ @477 + redwizard1.0.1
++ @478 + redwizard1.1
++ @479 + redwizard1.1
END

IF ~~ redwizard1.0.1
SAY @480
++ @478 + redwizard1.1
++ @479 + redwizard1.1
END

IF ~~ redwizard1.1
SAY @481
= @482
++ @483 + redwizard1.2
END

IF ~~ redwizard1.2
SAY @484
= @485
= @486
= @487
= @488
IF ~~ EXIT
END

IF ~~ hug1
SAY @489
= @490
IF ~~ EXIT
END

IF ~~ hug2
SAY @491
IF ~~ EXIT
END

IF ~~ hug3
SAY @492
= @493
IF ~~ EXIT
END

IF ~~ hug4
SAY @494
= @495
= @496
IF ~~ EXIT
END

IF ~~ pat1
SAY @497
IF ~~ EXIT
END

IF ~~ pat2
SAY @498
IF ~~ EXIT
END

IF ~~ pat3
SAY @499
= @500
IF ~~ EXIT
END

IF ~~ poke1
SAY @501
IF ~~ EXIT
END

IF ~~ poke2
SAY @502
IF ~~ EXIT
END

IF ~~ poke3
SAY @503
IF ~~ EXIT
END

IF ~~ sis1
SAY @504
+ ~!Global("QI#MiNoFriendship","GLOBAL",0)~ + @505 + clothingnotfriends
+ ~Global("QI#MiNoFriendship","GLOBAL",0)~ + @505 + clothingfriends
++ @506 + chains1
+ ~!Global("QI#MiNoFriendship","GLOBAL",0)~ + @507 + secretsnotfriends
+ ~Global("QI#MiNoFriendship","GLOBAL",0)~ + @507 + secretsfriends
+ ~RandomNum(3,1)~ + @508  + personality1
+ ~RandomNum(3,2)~ + @508  + personality2
+ ~RandomNum(3,3)~ + @508 + personality3
+ ~RandomNum(3,1)~ + @509 + stories1
+ ~RandomNum(3,2)~ + @509 + stories2
+ ~RandomNum(3,3)~ + @509 + stories3
+ ~Alignment("QI#Mi",NEUTRAL_EVIL) OR(1) !Global("QI#MiNoFriendship","GLOBAL",0)~ + @510 + regretevil1
+ ~Global("QI#MiAlignmentChange","GLOBAL",2)~ + @510 + regretneutral1
++ @594 EXIT
END

IF ~~ at1
SAY @511
= @512
IF ~~ EXIT
END

IF ~~ at2
SAY @513
= @514
IF ~~ EXIT
END

IF ~~ at3nolove
SAY @515
= @516
IF ~~ EXIT
END

IF ~~ at3love
SAY @517
= @518
IF ~~ EXIT
END

IF ~~ at4
SAY @519
= @520
IF ~~ EXIT
END

IF ~~ at5
SAY @521
= @522
IF ~~ EXIT
END

IF ~~ clothingnotfriends
SAY @523
= @524
IF ~~ EXIT
END

IF ~~ clothingfriends
SAY @525
= @526
= @527
++ @528 + clothing1.1
END

IF ~~ clothing1.1
SAY @529
= @530
IF ~~ EXIT
END

IF ~~ chains1
SAY @531
= @532
++ @533 + chains1.1
++ @534 EXIT
END

IF ~~ chains1.1
SAY @535
= @536
= @537
= @538
= @539
= @540
= @541
= @542
= @543
++ @544 + chains1.2
END

IF ~~ chains1.2
SAY @545
= @546
= @547
= @548
= @549
IF ~~ EXIT
END

IF ~~ secretsnotfriends
SAY @550
IF ~~ EXIT
END

IF ~~ secretsfriends
SAY @551
= @552
IF ~~ EXIT
END

IF ~~ personality1
SAY @553
= @554
= @555
= @556
IF ~~ EXIT
END

IF ~~ personality2
SAY @557
= @558
= @559
IF ~~ EXIT
END

IF ~~ personality3
SAY @560
= @561
= @562
IF ~~ EXIT
END

IF ~~ stories1
SAY @563
= @564
= @565
IF ~~ EXIT 
END

IF ~~ stories2
SAY @566
IF ~~ EXIT
END

IF ~~ stories3
SAY @567
= @568
= @569
IF ~~ EXIT 
END

IF ~~ regretevil1
SAY @570
= @571
IF ~~ EXIT
END

IF ~~ regretneutral1
SAY @572
= @573
IF ~~ EXIT
END

END
