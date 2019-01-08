BEGIN QI#E25J

CHAIN
IF ~ReputationLT(Player1,3)
Global("QI#ElarynComplain","LOCALS",0)~
THEN QI#E25J ReputationFail
@0
== QI#E25J @1
DO ~SetGlobal("QI#ElarynComplain","LOCALS",1) LeaveParty() DropInventory() EscapeArea()~
EXIT

EXTEND_TOP SARVOLO 9 #2
+ ~InParty("QI#Ela") InMyArea("QI#Ela") !StateCheck("QI#Ela",CD_STATE_NOTVALID)~ + @2 + QI#ElaVoloBio1
END

CHAIN SARVOLO QI#ElaVoloBio1
@3
== QI#E25J IF ~InParty("QI#Ela") InMyArea("QI#Ela") !StateCheck("QI#Ela",CD_STATE_NOTVALID)~ THEN @4
EXTERN SARVOLO 9

//Watcher's Keep
I_C_T GORAPP1 5 QI#ElaGorapp105
== QI#E25J IF ~InParty("QI#Ela") InMyArea("QI#Ela") !StateCheck("QI#Ela",CD_STATE_NOTVALID)~ THEN @5
END

I_C_T GORAPP1 9 QI#ElaGorapp109
== QI#E25J IF ~InParty("QI#Ela") InMyArea("QI#Ela") !StateCheck("QI#Ela",CD_STATE_NOTVALID)~ THEN @6
END

I_C_T GORDEMO 18 QI#ElaGordemo18
== QI#E25J IF ~InParty("QI#Ela") InMyArea("QI#Ela") !StateCheck("QI#Ela",CD_STATE_NOTVALID)~ THEN @7
END

//Elaryn Friends
I_C_T FINSOL01 27 QI#ElaSolarFriend
== QI#E25J IF ~InParty("QI#Ela") InMyArea("QI#Ela") !StateCheck("QI#Ela",CD_STATE_NOTVALID) Global("QI#ElaNoFriendship","GLOBAL",0) Global("QI#ElaFriendshipTalk","GLOBAL",15)~ THEN @8
END

//Elaryn Not Friends
I_C_T FINSOL01 27 QI#ElaSolarNotFriend
== QI#E25J IF ~InParty("QI#Ela") InMyArea("QI#Ela") !StateCheck("QI#Ela",CD_STATE_NOTVALID) Global("QI#ElaNoFriendship","GLOBAL",0) Global("QI#ElaFriendshipTalk","GLOBAL",15)~ THEN @9
END


APPEND QI#E25J

//Talk1 - Random Story About Childhood
IF ~Global("QI#ElaFriendshipTalk","GLOBAL",2)~ ela1
SAY @10
++ @11 + ela1.1.1
++ @12 + ela1.1.2
++ @13 + ela1.1.3
END

IF ~~ ela1.1.1
SAY @14
IF ~~ + ela1.2
END

IF ~~ ela1.1.2
SAY @15
IF ~~ + ela1.2
END

IF ~~ ela1.1.3
SAY @16
IF ~~ DO ~SetGlobal("QI#ElaNoFriendship","GLOBAL",1)~ EXIT
END

IF ~~ ela1.2
SAY @17
= @18
++ @19 + ela1.3
++ @20 + ela1.3
++ @21 + ela1.1.3
END

IF ~~ ela1.3
SAY @22
= @23
= @24
IF ~~ + ela1.4
END

IF ~~ ela1.4
SAY @25
++ @26 + ela1.4.1
++ @27 + ela1.4.2
++ @28 + ela1.4.3
++ @29 + ela1.4.3
END

IF ~~ ela1.4.1
SAY @30
= @31
= @32
= @33
IF ~~ + ela1.5
END

IF ~~ ela1.4.2
SAY @35
IF ~~ + ela1.5
END

IF ~~ ela1.4.3
SAY @36
= @37
IF ~~ DO ~SetGlobal("QI#ElaNoFriendship","GLOBAL",1)~ EXIT
END

IF ~~ ela1.5
SAY @38
= @39
++ @40 + ela1.5.1
++ @41 + ela1.5.2
++ @42 + ela1.5.3
++ @43 + ela1.5.4
++ @44 + ela1.5.5
++ @45 + ela1.5.6
END

IF ~~ ela1.5.1
SAY @46
= @47
IF ~~ DO ~IncrementGlobal("QI#ElaFriendshipTalk","GLOBAL",1) RealSetGlobalTimer("QI#ElaTimer","GLOBAL",2100)~ EXIT
END

IF ~~ ela1.5.2
SAY @48
= @49
= @50
++ @51 + ela1.6
++ @52 + ela1.6
++ @53 + ela1.6
++ @54 + ela1.6
END

IF ~~ ela1.5.3
SAY @55
= @56
= @57
IF ~~ DO ~LeaveParty() Enemy() Attack(LastSeenBy()) SetGlobal("QI#ElaNoFriendship","GLOBAL",1)~ EXIT
END

IF ~~ ela1.5.4
SAY @58
= @59
= @60
++ @51 + ela1.6
++ @52 + ela1.6
++ @53 + ela1.6
++ @54 + ela1.6
END

IF ~~ ela1.5.5
SAY @61
= @62
= @63
= @64
++ @51 + ela1.6
++ @52 + ela1.6
++ @53 + ela1.6
++ @54 + ela1.6
END

IF ~~ ela1.5.6
SAY @65
= @57
IF ~~ DO ~LeaveParty() Enemy() Attack(LastSeenBy()) SetGlobal("QI#ElaNoFriendship","GLOBAL",1)~ EXIT
END

IF ~~ ela1.6
SAY @66
= @67
= @68
IF ~~ DO ~IncrementGlobal("QI#ElaFriendshipTalk","GLOBAL",1) RealSetGlobalTimer("QI#ElaTimer","GLOBAL",2100)~ EXIT
END

//Talk2 - Secret Order Information
IF ~Global("QI#ElaFriendshipTalk","GLOBAL",4)~ ela2
SAY @69
++ @277 + ela2.1.1
++ @278 + ela2.1.2
++ @279 + ela2.1.4
++ @280 + ela2.1.3
++ @281 + ela2.1.3
END

IF ~~ ela2.1.1
SAY @286
= @282
= @283
IF ~~ + ela2.2
END

IF ~~ ela2.1.2
SAY @284
IF ~~ + ela2.2
END

IF ~~ ela2.1.3
SAY @285
= @70
IF ~~ DO ~SetGlobal("QI#ElaNoFriendship","GLOBAL",1)~ EXIT
END

IF ~~ ela2.1.4
SAY @71
++ @72 + ela2.2
++ @73 + ela2.1.3
++ @74 + ela2.1.3
END

IF ~~ ela2.2
SAY @75
= @76
= @77
++ @78 + ela2.2.1
++ @79 + ela2.2.2
++ @80 + ela2.2.3
++ @81 + ela2.2.4
++ @82 + ela2.2.5
++ @83 + ela2.2.3
++ @84 + ela2.2.6
END

IF ~~ ela2.2.1
SAY @85
= @86
= @87
IF ~~ + ela2.7
END

IF ~~ ela2.2.2
SAY @88
= @89
= @90
IF ~~ + ela2.7
END

IF ~~ ela2.2.3
SAY @91
= @89
= @90
IF ~~ + ela2.7
END

IF ~~ ela2.2.4
SAY @92
= @93
= @94
IF ~~ + ela2.7
END

IF ~~ ela2.2.5
SAY @95
= @96
= @97
= @98
= @99
IF ~~ DO ~SetGlobal("QI#ElaNoFriendship","GLOBAL",1) LeaveParty() EscapeArea()~ EXIT
END

IF ~~ ela2.2.6
SAY @100
= @101
= @87
IF ~~ + ela2.7
END

IF ~~ ela2.7
SAY @102
= @103
IF ~~ DO ~IncrementGlobal("QI#ElaFriendshipTalk","GLOBAL",1) RealSetGlobalTimer("QI#ElaTimer","GLOBAL",2100)~ EXIT
END


//Talk3 - Saradush
IF ~Global("ElarynYagaShura","GLOBAL",1)~ ela3
SAY @104
++ @105 + ela3.1.1
++ @106 + ela3.1.1
++ @107 + ela3.1.1
++ @108 + ela3.1.2
++ @109 + ela3.1.3
++ @110 + ela3.1.3
++ @111 + ela3.1.4
END

IF ~~ ela3.1.1
SAY @112
= @113
= @114
= @115
++ @116 + ela3.2
++ @117 + ela3.2
++ @118 + ela3.2.1
++ @119 + ela3.2.2
++ @120 + ela3.1.4
END

IF ~~ ela3.1.2
SAY @121
IF ~~ + ela3.1.1
END

IF ~~ ela3.1.3
SAY @122
= @123
= @124
= @125
IF ~~ DO ~SetGlobal("QI#ElaNoFriendship","GLOBAL",1)~ EXIT
END

IF ~~ ela3.1.4
SAY @126
IF ~~ DO ~SetGlobal("QI#ElaNoFriendship","GLOBAL",1)~ EXIT
END

IF ~~ ela3.2
SAY @127
= @128
= @129
IF ~~ DO ~IncrementGlobal("QI#ElaFriendshipTalk","GLOBAL",1) SetGlobal("ElarynYagaShura","GLOBAL",2) SetGlobal("QI#ElaFriendshipTalk","GLOBAL",7) RealSetGlobalTimer("QI#ElaTimer","GLOBAL",2100)~ EXIT
END

IF ~~ ela3.2.1
SAY @130
= @131
= @132
IF ~~ DO ~IncrementGlobal("QI#ElaFriendshipTalk","GLOBAL",1) SetGlobal("ElarynYagaShura","GLOBAL",2) SetGlobal("QI#ElaFriendshipTalk","GLOBAL",7) RealSetGlobalTimer("QI#ElaTimer","GLOBAL",2100)~ EXIT
END

IF ~~ ela3.2.2
SAY @133
= @134
IF ~~ DO ~SetGlobal("ElarynYagaShura","GLOBAL",2) LeaveParty() EscapeArea() DropInventory()~ EXIT
END


//Talk4 - Regrets: I have done much good for Faerûn, but my regrets are endless.
IF ~Global("QI#ElaFriendshipTalk","GLOBAL",8)~ ela4
SAY @135
++ @136 + ela4.1
++ @137 + ela4.0.1
++ @138 + ela4.0.2
++ @139 + ela4.0.3
++ @140 + ela4.0.4
++ @141 + ela4.0.5
END

IF ~~ ela4.1
SAY @142
= @143
= @144
++ @145 + ela4.2
++ @146 + ela4.1.1
++ @147 + ela4.2
++ @148 + ela4.2
++ @149 + ela4.1.1
END

IF ~~ ela4.0.1
SAY @150
IF ~~ + ela4.1
END

IF ~~ ela4.0.2
SAY @151
IF ~~ + ela4.1
END

IF ~~ ela4.0.3
SAY @152
IF ~~ + ela4.1
END

IF ~~ ela4.0.4
SAY @153
IF ~~ + ela4.1
END

IF ~~ ela4.0.5
SAY @154
IF ~~ + ela4.1
END

IF ~~ ela4.1.1
SAY @155
= @156
IF ~~ DO ~IncrementGlobal("QI#ElaFriendshipTalk","GLOBAL",1) RealSetGlobalTimer("QI#ElaTimer","GLOBAL",2100)~ EXIT
END

IF ~~ ela4.2
SAY @157
= @158
= @159
= @160
= @161
= @162
= @163
IF ~~ DO ~IncrementGlobal("QI#ElaFriendshipTalk","GLOBAL",1) RealSetGlobalTimer("QI#ElaTimer","GLOBAL",2100)~ EXIT
END


//Talk5 - Encounter After with Willias - Shouldn't be a Friendship Talk
IF ~Global("QI#EncounterTalk2","GLOBAL",1)~ ela5
SAY @164
++ @165 + ela5.1.1
++ @166 + ela5.1.2
++ @167 + ela5.1.3
++ @168 + ela5.1.4
++ @169 + ela5.2
END

IF ~~ ela5.1.1
SAY @170
IF ~~ + ela5.2
END

IF ~~ ela5.1.2
SAY @171
IF ~~ + ela5.2
END

IF ~~ ela5.1.3
SAY @172
IF ~~ + ela5.2
END

IF ~~ ela5.1.4
SAY @173
IF ~~ + ela5.2
END

IF ~~ ela5.2
SAY @174
= @175
= @176
= @177
++ @178 + ela5.2.1
++ @179 + ela5.2.1
++ @180 + ela5.2.1
++ @181 + ela5.2.1
END

IF ~~ ela5.2.1
SAY @182
= @183
= @184
= @185
= @186
IF ~~ DO ~SetGlobal("QI#EncounterTalk2","GLOBAL",2)~ EXIT
END


//Talk6 - Secret of the family "Baelnorns"
IF ~Global("QI#ElaFriendshipTalk","GLOBAL",10) Global("QI#EncounterTalk2","GLOBAL",2)~ ela6
SAY @187
= @188
= @189
++ @190 + ela6.1.1
++ @191 + ela6.1.1
++ @192 + ela6.1.2
END

IF ~~ ela6.1.1
SAY @193
= @194
= @195
= @196
++ @197 + ela6.2
END

IF ~~ ela6.1.2
SAY @198
= @199
++ @200 + ela6.1.1
++ @201 + ela6.0
END

IF ~~ ela6.0
SAY @202
IF ~~ DO ~LeaveParty() EscapeArea()~ EXIT
END

IF ~~ ela6.2
SAY @203
++ @204 + ela6.2.1
++ @205 + ela6.3
END

IF ~~ ela6.2.1
SAY @206
IF ~~ + ela6.3
END

IF ~~ ela6.3
SAY @207
= @208
= @209
= @210
= @211
= @212
IF ~~ DO ~IncrementGlobal("QI#ElaFriendshipTalk","GLOBAL",1)~ EXIT
END

//Talk7 - Before Final Battle
IF ~Global("ElarynFinalTalk","GLOBAL",0) Dead("chalvr01")~ ela7
SAY @213
++ @214 + ela7.0.1
++ @215 + ela7.0.2
++ @216 + ela7.0.1
++ @217 + ela7.0.2
++ @218 + ela7.0.2
END

IF ~~ ela7.0.1
SAY @219
IF ~~ + ela7.1
END

IF ~~ ela7.0.2
SAY @220
IF ~~ + ela7.1
END

IF ~~ ela7.1
SAY @221
= @222
= @223
= @224
++ @225 + ela7.1.1
++ @226 + ela7.1.1
++ @227 + ela7.1.1
++ @228 + ela7.1.2
++ @229 + ela7.1.2
END

IF ~~ ela7.1.1
SAY @230
= @231
= @232
= @233
IF ~~ DO ~SetGlobal("ElarynFinalTalk","GLOBAL",1)~ EXIT
END

IF ~~ ela7.1.2
SAY @234
= @235
= @236
= @237
= @238
IF ~~ DO ~SetGlobal("ElarynFinalTalk","GLOBAL",1)~ EXIT
END             


//Player-Initiated Dialogues
IF ~IsGabber(Player1)~ QI#ElaToBPID
SAY @239
++ @240 + nt
+ ~RandomNum(3,1)~ + @241 + ae1
+ ~RandomNum(3,2)~ + @241 + ae2
+ ~RandomNum(3,3)~ + @241 + ae3 
++ @242 + elascar
++ @243 + difference
+ ~RandomNum(3,1)~ + @244 + elahug1
+ ~RandomNum(3,2)~ + @244 + elahug2
+ ~RandomNum(3,3)~ + @244 + elahug3
+ ~RandomNum(3,1)~ + @245 + elapoke1
+ ~RandomNum(3,2)~ + @245 + elapoke2
+ ~RandomNum(3,3)~ + @245 + elapoke3
+ ~RandomNum(3,1)~ + @246 + elapat1
+ ~RandomNum(3,2)~ + @246 + elapat2
+ ~RandomNum(3,3)~ + @246 + elapat3
+ ~Global("QI#EncounterTalk2","GLOBAL",2)~ + @247 + exlover
+ ~GlobalGT("QI#ElaFriendshipTalk","GLOBAL",10)~ + @299 + lichlie
++ @248 EXIT
END

IF ~~ lichlie
SAY @287
= @288
= @289
++ @290 + lichlie1.1
++ @291 + lichlie1.2
++ @292 + lichlie1.3
++ @293 + lichlie1.3
END

IF ~~ lichlie1.1
SAY @294
= @295
IF ~~ EXIT
END

IF ~~ lichlie1.2
SAY @296
= @297
IF ~~ EXIT
END

IF ~~ lichlie1.3
SAY @298
IF ~~ EXIT
END

IF ~~ nt
SAY @249
= @250
IF ~~ EXIT
END

IF ~~ ae1
SAY @251
IF ~~ EXIT
END

IF ~~ ae2
SAY @252
IF ~~ EXIT
END

IF ~~ ae3
SAY @253
IF ~~ EXIT
END

IF ~~ elascar
SAY @254
IF ~~ EXIT
END

IF ~~ difference
SAY @255
= @256
= @257
IF ~~ EXIT
END

IF ~~ elahug1
SAY @258
IF ~~ EXIT
END

IF ~~ elahug2
SAY @259
IF ~~ EXIT
END

IF ~~ elahug3
SAY @260
IF ~~ EXIT
END

IF ~~ elapoke1
SAY @261
IF ~~ EXIT
END

IF ~~ elapoke2
SAY @262
IF ~~ EXIT
END

IF ~~ elapoke3
SAY @263
IF ~~ EXIT
END

IF ~~ elapat1
SAY @264
IF ~~ EXIT
END

IF ~~ elapat2
SAY @265
= @266
IF ~~ EXIT
END

IF ~~ elapat3
SAY @267
IF ~~ EXIT
END

IF ~~ exlover
SAY @268
= @269
++ @270 + exlover1.1
++ @271 + exlover1.1
++ @272 EXIT
END

IF ~~ exlover1.1
SAY @273
= @274
= @275
= @276
IF ~~ DO ~SetGlobal("QI#ElarynWilliasTalk","GLOBAL",1)~ EXIT
END

END
