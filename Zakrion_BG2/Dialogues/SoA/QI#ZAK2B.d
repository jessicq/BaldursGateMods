BEGIN QI#ZAK2B

/**************************************************************************************************
								Anomen Banters (3 + 4 Romance Conflicts)
**************************************************************************************************/

//Talk 1
CHAIN 
IF ~InParty("Anomen")
InParty("QI#ZAK2")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
!Global("AnomenIsNotKnight","GLOBAL",1)
CombatCounter(0)
Global("QI#ZakAnomenTalk1","GLOBAL",0)~ THEN QI#ZAK2B QI#ZakAnomenTalk1
@0
DO ~SetGlobal("QI#ZakAnomenTalk1","GLOBAL",1)~
= @1
== BANOMEN @2
= @3
== QI#ZAK2B @4
= @5
== BANOMEN @6
= @7
== QI#ZAK2B @8
= @9
EXIT 

//Talk 2
CHAIN 
IF ~InParty("Anomen")
InParty("QI#ZAK2")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
Global("AnomenIsNotKnight","GLOBAL",1)
CombatCounter(0)
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
        AreaCheck("AR2010") // Vyatri Pub
Global("QI#ZakAnomenTalk2","GLOBAL",0)~ THEN QI#ZAK2B QI#ZakAnomenTalk2
@10
DO ~SetGlobal("QI#ZakAnomenTalk2","GLOBAL",1)~
== BANOMEN @11
== QI#ZAK2B @12
= @13
= @14
== BANOMEN @15
= @16
== QI#ZAK2B @17
EXIT 

//Talk 3
CHAIN 
IF ~InParty("Anomen")
InParty("QI#ZAK2")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
Global("AnomenIsKnight","GLOBAL",1)
CombatCounter(0)
Global("QI#ZakAnomenTalk3","GLOBAL",0)~ THEN QI#ZAK2B QI#ZakAnomenTalk3
@18
DO ~SetGlobal("QI#ZakAnomenTalk3","GLOBAL",1)~
== BANOMEN @19
== QI#ZAK2B @20
== BANOMEN @21
= @22
== QI#ZAK2B @23
EXIT 

//Talk 4
CHAIN 
IF ~InParty("QI#ZAK2")
InParty("Anomen")
See("QI#ZAK2")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("AnomenRomanceActive","GLOBAL",1)
Global("QI#ZakRomanceActive","GLOBAL",1)
Global("QI#ZakAnomenTalk4","GLOBAL",0)~ THEN BANOMEN QI#ZakAnomenTalk4
@24
DO ~SetGlobal("QI#ZakAnomenTalk4","GLOBAL",1)~
= @25
== QI#ZAK2B @26
= @27
== BANOMEN @28
== QI#ZAK2B @29
== BANOMEN @30
EXIT 

//Talk 5.1
CHAIN 
IF ~InParty("QI#ZAK2")
InParty("Anomen")
See("QI#ZAK2")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("AnomenRomanceActive","GLOBAL",1)
Global("QI#ZakRomanceActive","GLOBAL",1)
Global("QI#ZakAnomenTalk4","GLOBAL",1)
!Global("QI#ZakBiggestRegret","GLOBAL",2)
Global("QI#ZakAnomenTalk5","GLOBAL",0)~ THEN BANOMEN QI#ZakAnomenTalk5.1
@31
DO ~SetGlobal("QI#ZakAnomenTalk5","GLOBAL",1)~
== QI#ZAK2B @32
== BANOMEN @33
== QI#ZAK2B @34
= @35
== BANOMEN @36
EXIT 

//Talk 5.2
CHAIN 
IF ~InParty("QI#ZAK2")
InParty("Anomen")
See("QI#ZAK2")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("AnomenRomanceActive","GLOBAL",1)
Global("QI#ZakRomanceActive","GLOBAL",1)
Global("QI#ZakAnomenTalk4","GLOBAL",1)
Global("QI#ZakBiggestRegret","GLOBAL",2)
Global("QI#ZakAnomenTalk5","GLOBAL",0)~ THEN BANOMEN QI#ZakAnomenTalk5.2
@31
DO ~SetGlobal("QI#ZakAnomenTalk5","GLOBAL",1)~
== QI#ZAK2B @32
== BANOMEN @33
= @37
== QI#ZAK2B @38
== BANOMEN @39
EXIT 

//Talk 6
CHAIN 
IF ~InParty("QI#ZAK2")
InParty("Anomen")
See("QI#ZAK2")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("AnomenRomanceActive","GLOBAL",1)
Global("QI#ZakRomanceActive","GLOBAL",1)
Global("QI#ZakAnomenTalk5","GLOBAL",1)
Global("QI#ZakAnomenTalk6","GLOBAL",0)~ THEN QI#ZAK2B QI#ZakAnomenTalk6
@40
DO ~SetGlobal("QI#ZakAnomenTalk6","GLOBAL",1)~
== BANOMEN @41
== QI#ZAK2B @42
== BANOMEN @43
= @44
EXIT 

//Talk 7.1
CHAIN 
IF ~InParty("QI#ZAK2")
InParty("Anomen")
See("QI#ZAK2")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("AnomenRomanceActive","GLOBAL",2)
Global("QI#ZakRomanceActive","GLOBAL",3)
Global("QI#ZakBiggestRegret","GLOBAL",2)
Global("QI#ZakAnomenTalk6","GLOBAL",1)
Global("QI#ZakAnomenTalk7","GLOBAL",0)~ THEN QI#ZAK2B QI#ZakAnomenTalk7.1
@45
DO ~SetGlobal("QI#ZakAnomenTalk7","GLOBAL",1)~
== BANOMEN @46
== QI#ZAK2B @47
= @48
EXIT 

//Talk 7.2
CHAIN 
IF ~InParty("QI#ZAK2")
InParty("Anomen")
See("QI#ZAK2")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("AnomenRomanceActive","GLOBAL",2)
Global("QI#ZakRomanceActive","GLOBAL",3)
!Global("QI#ZakBiggestRegret","GLOBAL",2)
Global("QI#ZakAnomenTalk6","GLOBAL",1)
Global("QI#ZakAnomenTalk7","GLOBAL",0)~ THEN QI#ZAK2B QI#ZakAnomenTalk7.2
@46
DO ~SetGlobal("QI#ZakAnomenTalk7","GLOBAL",1)~
== BANOMEN @46
== QI#ZAK2B @49
EXIT 

/**************************************************************************************************
										Mazzy Banters (2)
**************************************************************************************************/

//Talk 1
CHAIN
IF ~InParty("QI#ZAK2B")
InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#ZakMazzyTalk1","GLOBAL",0)~ THEN QI#ZAK2B QI#ZakMazzyTalk1
@50
DO ~SetGlobal("QI#ZakMazzyTalk1","GLOBAL",1)~
== BMAZZY @51
== QI#ZAK2B @52
== BMAZZY @53
== QI#ZAK2B @54
= @55
== BMAZZY @56
== QI#ZAK2B @57
== BMAZZY @58
EXIT 

//Talk 2
CHAIN
IF ~InParty("QI#ZAK2")
InParty("Mazzy")
See("QI#ZAK2")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#ZakMazzyTalk1","GLOBAL",1)~ THEN BMAZZY QI#ZakMazzyTalk2
@59
DO ~SetGlobal("QI#ZakMazzyTalk1","GLOBAL",2)~
== QI#ZAK2B @60
= @61
== BMAZZY @62
== QI#ZAK2B @63
EXIT 

/**************************************************************************************************
										Edwin Banters (3)
**************************************************************************************************/

//Talk 1 
CHAIN
IF ~InParty("QI#ZAK2")
InParty("Edwin")
See("Edwin")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#Zak2EdwinTalk1","GLOBAL",0)~ THEN QI#ZAK2B QI#Zak2EdwinTalk1
@64
DO ~SetGlobal("QI#Zak2EdwinTalk1","GLOBAL",1)~
== BEDWIN @65
== QI#ZAK2B @66
== BEDWIN @67
== QI#ZAK2B @68
EXIT 

//Talk 2
CHAIN
IF ~InParty("QI#ZAK2")
InParty("Edwin")
See("Edwin")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#Zak2EdwinTalk2","GLOBAL",0)~ THEN QI#ZAK2B QI#Zak2EdwinTalk2
@69
DO ~SetGlobal("QI#Zak2EdwinTalk2","GLOBAL",1)~
== BEDWIN @70
== QI#ZAK2B @71
== BEDWIN @72
== QI#ZAK2B @73
EXIT


//Talk 3
CHAIN
IF ~InParty("QI#ZAK2")
InParty("Edwin")
See("QI#ZAK2")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
CombatCounter(0)
Gender("Edwin",FEMALE)
Global("QI#Zak2EdwinTalk3","GLOBAL",0)~ THEN BEDWIN QI#Zak2EdwinTalk3
@74
DO ~SetGlobal("QI#Zak2EdwinTalk3","GLOBAL",1)~
== QI#ZAK2B @75
= @76
== BEDWIN @77
== QI#ZAK2B @78
== BEDWIN @79
== QI#ZAK2B @80
EXIT 

/**************************************************************************************************
										Minsc Banters (3)
**************************************************************************************************/

//Talk 1
CHAIN
IF ~InParty("QI#ZAK2")
InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#Zak2MinscTalk1","GLOBAL",0)~ THEN QI#ZAK2B QI#Zak2MinscTalk1
@81
DO ~SetGlobal("QI#Zak2MinscTalk1","GLOBAL",1)~
= @82
== BMINSC @83
= @84
== QI#ZAK2B @85
= @86
== BMINSC @87
= @88
== QI#ZAK2B @89
= @90
== BMINSC @91
== QI#ZAK2B @92
EXIT 

//Talk 2
CHAIN
IF ~InParty("QI#ZAK2")
InParty("Minsc")
See("QI#ZAK2")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#Zak2MinscTalk1","GLOBAL",1)~ THEN BMINSC QI#Zak2MinscTalk12
@93
DO ~SetGlobal("QI#Zak2MinscTalk1","GLOBAL",2)~
== QI#ZAK2B @94
= @95
= @96
== BMINSC @97
== QI#ZAK2B @98
== BMINSC @99
== QI#ZAK2B @100
= @101
== BMINSC @102
EXIT 

//Talk 3
CHAIN
IF ~InParty("QI#ZAK2")
InParty("Minsc")
See("QI#ZAK2")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#Zak2MinscTalk2","GLOBAL",1)~ THEN BMINSC QI#Zak2MinscTalk13
@103
DO ~SetGlobal("QI#Zak2MinscTalk2","GLOBAL",2)~
== QI#ZAK2B @104
= @105
= @106
== BMINSC @107
== QI#ZAK2B @108
== BMINSC @109
== QI#ZAK2B @110
EXIT 

/**************************************************************************************************
										Imoen Banters (2)
**************************************************************************************************/

//Talk 1
CHAIN
IF ~InParty("QI#ZAK2")
InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#Zak2ImoenTalk1","GLOBAL",0)~ THEN QI#ZAK2B QI#Zak2ImoenTalk1
@111
DO ~SetGlobal("QI#Zak2ImoenTalk1","GLOBAL",1)~
== IMOEN2J @112
== QI#ZAK2B @113
== IMOEN2J @114
== QI#ZAK2B @115
== IMOEN2J @116
== QI#ZAK2B @117
EXIT 

//Talk 2
CHAIN
IF ~InParty("QI#ZAK2")
InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#Zak2ImoenTalk1","GLOBAL",1)~ THEN QI#ZAK2B QI#Zak2ImoenTalk2
@118
DO ~SetGlobal("QI#Zak2ImoenTalk1","GLOBAL",2)~
== IMOEN2J @119
== QI#ZAK2B @120
== IMOEN2J @121
== QI#ZAK2B @122
== IMOEN2J @123
== QI#ZAK2B @124
EXIT

/**************************************************************************************************
										Jaheira Banters (2)
**************************************************************************************************/

//Talk 1
CHAIN
IF ~InParty("QI#ZAK2")
InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#Zak2JaheiraTalk1","GLOBAL",0)~ THEN QI#ZAK2B QI#Zak2JaheiraTalk1
@125
DO ~SetGlobal("QI#Zak2JaheiraTalk1","GLOBAL",1)~
== BJAHEIR @126
== QI#ZAK2B @127
== BJAHEIR @128
EXIT 

//Talk 2
CHAIN
IF ~InParty("QI#ZAK2")
InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#Zak2JaheiraTalk1","GLOBAL",1)~ THEN QI#ZAK2B QI#Zak2JaheiraTalk2
@129
DO ~SetGlobal("QI#Zak2JaheiraTalk1","GLOBAL",2)~
== BJAHEIR @130
== QI#ZAK2B @131
== BJAHEIR @132
== QI#ZAK2B @133
EXIT 


/**************************************************************************************************
										Cernd Banters (3)
**************************************************************************************************/

//Talk 1
CHAIN
IF ~InParty("QI#ZAK2")
InParty("Cernd")
See("Cernd")
!StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("TalkedToCerndNanny","GLOBAL",1)
Global("QI#Zak2CerndTalk1","GLOBAL",0)~ THEN QI#ZAK2B QI#Zak2CerndTalk1
@134
DO ~SetGlobal("QI#Zak2CerndTalk1","GLOBAL",1)~
== BCERND @135
== QI#ZAK2B @136
== BCERND @137
== QI#ZAK2B @138
= @139
= @140
EXIT 


//Talk 2
CHAIN
IF ~InParty("QI#ZAK2")
InParty("Cernd")
See("QI#ZAK2")
!StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#Zak2CerndTalk1","GLOBAL",1)~ THEN BCERND QI#Zak2CerndTalk2
@141
DO ~SetGlobal("QI#Zak2CerndTalk1","GLOBAL",2)~
== QI#ZAK2B @142
== BCERND @143
= @144
= @145
= @146
== QI#ZAK2B @147
EXIT

//Talk 3
CHAIN
IF ~InParty("QI#ZAK2")
InParty("Cernd")
See("QI#ZAK2")
!StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#Zak2CerndTalk2","GLOBAL",0)~ THEN BCERND QI#Zak2CerndTalk3
@148
DO ~SetGlobal("QI#Zak2CerndTalk2","GLOBAL",1)~
== QI#ZAK2B @149
== BCERND @150
== QI#ZAK2B @151
= @152
== BCERND @153
== QI#ZAK2B @154
EXIT

/**************************************************************************************************
										Haer'Dalis Banters (2)
**************************************************************************************************/

//Talk 1
CHAIN
IF ~InParty("QI#ZAK2")
InParty("HaerDalis")
See("QI#ZAK2")
!StateCheck("HaerDalis",CD_STATE_NOTVALID)
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#Zak2HaerDalisTalk1","GLOBAL",0)~ THEN BHAERDA QI#Zak2HaerDalisTalk1
@155
DO ~SetGlobal("QI#Zak2HaerDalisTalk1","GLOBAL",1)~
== QI#ZAK2B @156
== BHAERDA @157
== QI#ZAK2B @158
= @159
== BHAERDA @160
== QI#ZAK2B @161
== BHAERDA @162
= @163
EXIT


//Talk 2
CHAIN
IF ~InParty("QI#ZAK2")
InParty("HaerDalis")
See("HaerDalis")
!StateCheck("HaerDalis",CD_STATE_NOTVALID)
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#Zak2HaerDalisTalk1","GLOBAL",1)~ THEN QI#ZAK2B QI#Zak2HaerDalisTalk2
@164
DO ~SetGlobal("QI#Zak2HaerDalisTalk1","GLOBAL",2)~
== BHAERDA @165
== QI#ZAK2B @166
== BHAERDA @167
EXIT

/**************************************************************************************************
										Valygar Banters (3)
**************************************************************************************************/

//Talk 1
CHAIN
IF ~InParty("QI#ZAK2")
InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#Zak2ValygarTalk1","GLOBAL",0)~ THEN QI#ZAK2B QI#Zak2ValygarTalk1
@168
DO ~SetGlobal("QI#Zak2ValygarTalk1","GLOBAL",1)~
== QI#ZAK2B @169
== BVALYGA @170
== QI#ZAK2B @171
== BVALYGA @172
== QI#ZAK2B @173
== BVALYGA @174
== QI#ZAK2B @175
EXIT

//Talk 2
CHAIN
IF ~InParty("QI#ZAK2")
InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#Zak2ValygarTalk1","GLOBAL",1)~ THEN QI#ZAK2B QI#Zak2ValygarTalk2
@176
DO ~SetGlobal("QI#Zak2ValygarTalk1","GLOBAL",2)~
== BVALYGA @177
== QI#ZAK2B @178
== BVALYGA @179
== QI#ZAK2B @180
= @181
== BVALYGA @182
== QI#ZAK2B @183
== BVALYGA @184
EXIT 

//Talk 3
CHAIN
IF ~InParty("QI#ZAK2")
InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#Zak2ValygarTalk1","GLOBAL",2)~ THEN QI#ZAK2B QI#Zak2ValygarTalk3
@185
DO ~SetGlobal("QI#Zak2ValygarTalk1","GLOBAL",3)~
== BVALYGA @186
== QI#ZAK2B @187
= @188
= @189
= @190
== BVALYGA @191
== QI#ZAK2B @192
== BVALYGA @193
== QI#ZAK2B @194
EXIT 

/**************************************************************************************************
										Aerie Banters (3)
**************************************************************************************************/

//Talk 1
CHAIN
IF ~InParty("QI#ZAK2")
InParty("Aerie")
See("QI#ZAK2")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#Zak2AerieTalk1","GLOBAL",0)~ THEN BAERIE QI#Zak2AerieTalk1
@195
DO ~SetGlobal("QI#Zak2AerieTalk1","GLOBAL",1)~
== QI#ZAK2B @196
= @197
== BAERIE @198
== QI#ZAK2B @199
EXIT

//Talk 2
CHAIN
IF ~InParty("QI#ZAK2")
InParty("Aerie")
See("QI#ZAK2")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#Zak2AerieTalk1","GLOBAL",1)~ THEN BAERIE QI#Zak2AerieTalk2
@200
DO ~SetGlobal("QI#Zak2AerieTalk1","GLOBAL",2)~
== QI#ZAK2B @201
== BAERIE @202
== QI#ZAK2B @203
= @204
== BAERIE @205
== QI#ZAK2B @206
== BAERIE @207
== QI#ZAK2B @208
= @209
= @210
EXIT 

//Talk 3
CHAIN
IF ~InParty("QI#ZAK2")
InParty("Aerie")
See("QI#ZAK2")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#Zak2AerieTalk1","GLOBAL",2)~ THEN BAERIE QI#Zak2AerieTalk3
@211
DO ~SetGlobal("QI#Zak2AerieTalk1","GLOBAL",3)~
== QI#ZAK2B @212
== BAERIE @213
= @214
= @215
== QI#ZAK2B @216
== BAERIE @217
== QI#ZAK2B @218
= @219
= @220
= @221
== BAERIE @222
== QI#ZAK2B @223
EXIT

/**************************************************************************************************
										Viconia Banters (2)
**************************************************************************************************/

//Talk 1
CHAIN
IF ~InParty("QI#ZAK2")
InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#Zak2ViconiaTalk1","GLOBAL",0)~ THEN QI#ZAK2B QI#Zak2ViconiaTalk1
@224
DO ~SetGlobal("QI#Zak2ViconiaTalk1","GLOBAL",1)~
= @225
== BVICONI @226
== QI#ZAK2B @227
EXIT 

//Talk 2
CHAIN
IF ~InParty("QI#ZAK2")
InParty("Viconia")
See("QI#ZAK2")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#Zak2ViconiaTalk1","GLOBAL",1)~ THEN BVICONI QI#Zak2ViconiaTalk2
@228
DO ~SetGlobal("QI#Zak2ViconiaTalk1","GLOBAL",2)~
== QI#ZAK2B @229
== BVICONI @230
= @231
== QI#ZAK2B @232
== BVICONI @233
== QI#ZAK2B @234
EXIT

/**************************************************************************************************
										Nalia Banters (3)
**************************************************************************************************/

//Talk 1
CHAIN
IF ~InParty("QI#ZAK2")
InParty("Nalia")
See("QI#ZAK2")
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#Zak2NaliaTalk1","GLOBAL",0)~ THEN BNALIA QI#Zak2NaliaTalk1
@235
DO ~SetGlobal("QI#Zak2NaliaTalk1","GLOBAL",1)~
== QI#ZAK2B @236
== BNALIA @237
== QI#ZAK2B @238
== BNALIA @239
== QI#ZAK2B @240
= @241
EXIT 

//Talk 2
CHAIN
IF ~InParty("QI#ZAK2")
InParty("Nalia")
See("QI#ZAK2")
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#Zak2NaliaTalk1","GLOBAL",1)~ THEN BNALIA QI#Zak2NaliaTalk2
@242
DO ~SetGlobal("QI#Zak2NaliaTalk1","GLOBAL",2)~
== QI#ZAK2B @243
= @244
== BNALIA @245
= @246
== QI#ZAK2B @247
== BNALIA @248
EXIT 

//Talk 3
CHAIN
IF ~InParty("QI#ZAK2")
InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#Zak2NaliaTalk1","GLOBAL",2)~ THEN QI#ZAK2B QI#Zak2NaliaTalk3
@249
DO ~SetGlobal("QI#Zak2NaliaTalk1","GLOBAL",3)~
== BNALIA @250
== QI#ZAK2B @251
== BNALIA @252
= @253
== QI#ZAK2B @254
== BNALIA @255
== QI#ZAK2B @256
= @257
EXIT 

/**************************************************************************************************
										Korgan Banters (3)
**************************************************************************************************/

//Talk 1
CHAIN
IF ~InParty("QI#ZAK2")
InParty("Korgan")
See("QI#ZAK2")
!StateCheck("Korgan",CD_STATE_NOTVALID)
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#Zak2KorganTalk1","GLOBAL",0)~ THEN BKORGAN QI#Zak2KorganTalk1
@258
DO ~SetGlobal("QI#Zak2KorganTalk1","GLOBAL",1)~
= @259
== QI#ZAK2B @260
= @261
== BKORGAN @262
= @263
== QI#ZAK2B @264
== BKORGAN @265
== QI#ZAK2B @266
== BKORGAN @267
EXIT


//Talk 2
CHAIN
IF ~InParty("QI#ZAK2")
InParty("Korgan")
See("Korgan")
!StateCheck("Korgan",CD_STATE_NOTVALID)
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
CombatCounter(0)
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
        AreaCheck("AR2010") // Vyatri Pub
Global("QI#Zak2KorganTalk1","GLOBAL",1)~ THEN QI#ZAK2B QI#Zak2KorganTalk2
@268
DO ~SetGlobal("QI#Zak2KorganTalk1","GLOBAL",2)~
== BKORGAN @269
== QI#ZAK2B @270
== BKORGAN @271
== QI#ZAK2B @272
== BKORGAN @273
== QI#ZAK2B @274
EXIT 

/**************************************************************************************************
										Yoshimo Banters (2)
**************************************************************************************************/

//Talk 1
CHAIN
IF ~InParty("QI#ZAK2")
InParty("Yoshimo")
See("QI#ZAK2")
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#Zak2YoshimoTalk1","GLOBAL",0)~ THEN BYOSHIM QI#Zak2YoshimoTalk1
@275
DO ~SetGlobal("QI#Zak2YoshimoTalk1","GLOBAL",1)~
== QI#ZAK2B @276
= @277
== BYOSHIM @278
== QI#ZAK2B @279
= @280
= @281
= @282
= @283
== BYOSHIM @284
EXIT 

//Talk 2
CHAIN
IF ~InParty("QI#ZAK2")
InParty("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#Zak2YoshimoTalk1","GLOBAL",1)~ THEN QI#ZAK2B QI#Zak2YoshimoTalk2
@285
DO ~SetGlobal("QI#Zak2YoshimoTalk1","GLOBAL",2)~
= @286
== BYOSHIM @287
== QI#ZAK2B @288
== BYOSHIM @289
== QI#ZAK2B @290
EXIT 

/**************************************************************************************************
										Jan Jansen Banters (3)
**************************************************************************************************/

//Talk 1
CHAIN
IF ~InParty("QI#ZAK2")
InParty("Jan")
See("QI#ZAK2")
!StateCheck("Jan",CD_STATE_NOTVALID)
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#Zak2JanTalk1","GLOBAL",0)~ THEN BJAN QI#Zak2JanTalk1
@291
DO ~SetGlobal("QI#Zak2JanTalk1","GLOBAL",1)~
== QI#ZAK2B @292
== BJAN @293
= @294
== QI#ZAK2B @295
== BJAN @296
= @297
== QI#ZAK2B @298
== BJAN @299
== QI#ZAK2B @300
= @301
== BJAN @302
== QI#ZAK2B @303
== BJAN @304
== QI#ZAK2B @305
= @306
== BJAN @307
== QI#ZAK2B @308
EXIT 

//Talk 2
CHAIN
IF ~InParty("QI#ZAK2")
InParty("Jan")
See("QI#ZAK2")
!StateCheck("Jan",CD_STATE_NOTVALID)
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#Zak2JanTalk1","GLOBAL",1)~ THEN BJAN QI#Zak2JanTalk2
@309
DO ~SetGlobal("QI#Zak2JanTalk1","GLOBAL",2)~
== QI#ZAK2B @310
== BJAN @311
== QI#ZAK2B @312
= @313
== BJAN @314
EXIT 

//Talk 3
CHAIN
IF ~InParty("QI#ZAK2")
InParty("Jan")
See("Jan")
!StateCheck("Jan",CD_STATE_NOTVALID)
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#Zak2JanTalk1","GLOBAL",2)~ THEN QI#ZAK2B QI#Zak2JanTalk3
@315
DO ~SetGlobal("QI#Zak2JanTalk1","GLOBAL",3)~
== BJAN @316
== QI#ZAK2B @317
= @318
== BJAN @319
= @320
== QI#ZAK2B @321
EXIT  

/**************************************************************************************************
										Keldorn Banters (2)
**************************************************************************************************/

//Talk 1
CHAIN
IF ~InParty("QI#ZAK2")
InParty("Keldorn")
See("QI#ZAK2")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#Zak2KeldornTalk1","GLOBAL",0)~ THEN BKELDOR QI#Zak2KeldornTalk1
@322
DO ~SetGlobal("QI#Zak2KeldornTalk1","GLOBAL",1)~
== QI#ZAK2B @323
== BKELDOR @324
== QI#ZAK2B @325
== BKELDOR @326
== QI#ZAK2B @327
== BKELDOR @328
EXIT 

//Talk 2
CHAIN
IF ~InParty("QI#ZAK2")
InParty("Keldorn")
See("QI#ZAK2")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#Zak2KeldornTalk1","GLOBAL",1)~ THEN BKELDOR QI#Zak2KeldornTalk2
@329
DO ~SetGlobal("QI#Zak2KeldornTalk1","GLOBAL",2)~
== QI#ZAK2B @330
== BKELDOR @331
= @332
== QI#ZAK2B @333
== BKELDOR @334
EXIT 