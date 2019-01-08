BEGIN QI#M25B

//Minsc
CHAIN 
IF ~InParty("Minsc")
InParty("QI#Mi")
See("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#MiMinscToB1","GLOBAL",0)~ THEN QI#M25B QI#MiMinscToB1
@0
DO ~SetGlobal("QI#MiMinscToB1","GLOBAL",1)~
== BMINSC25 @1
== QI#M25B IF ~InParty("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @2
== BJAN25 IF ~InParty("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @3
== BMINSC25 IF ~InParty("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @4
== QI#M25B @5
== BMINSC25 @6
== QI#M25B @7
EXIT

//Aerie
CHAIN 
IF ~InParty("QI#Mi")
InParty("Aerie")
InParty("Edwin")
See("QI#Mi")
Global("QI#AcceptLove","GLOBAL",1)
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
Global("QI#MiAlignmentChange","GLOBAL",2)
CombatCounter(0)
Global("QI#MiAerieToB1","GLOBAL",0)~ THEN BAERIE25 QI#MiAerieToB1
@8
DO ~SetGlobal("QI#MiAerieToB1","GLOBAL",1)~
== QI#M25B @9
== BAERIE25 @10
== QI#M25B @11
== BAERIE25 @12
EXIT

//Jan
CHAIN
IF ~InParty("QI#Mi")
InParty("Jan")
See("QI#Mi")
!StateCheck("Jan",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#MiJanToB1","GLOBAL",0)~ THEN BJAN25 QI#MiJanToB1
@13
DO ~SetGlobal("QI#MiJanToB1","GLOBAL",1)~
== QI#M25B @14
== BJAN25 @15
== BJAN25 @16
== QI#M25B @17
== BJAN25 @18
== QI#M25B @19
== QI#M25B @20
== BJAN25 @21
EXIT

//Anomen
CHAIN
IF ~InParty("Anomen")
InParty("QI#Mi")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#MiAnomenToB1","GLOBAL",0)~ THEN QI#M25B QI#MiAnomenToB1
@22
DO ~SetGlobal("QI#MiAnomenToB1","GLOBAL",1)~
== BANOME25 @23
== QI#M25B @24
== BANOME25 @25
== BANOME25 @26
== QI#M25B @27
== BANOME25 @28
== QI#M25B @29
== QI#M25B @30
== QI#M25B @31
EXIT

//Viconia
CHAIN
IF ~InParty("QI#Mi")
InParty("Viconia")
InParty("Edwin")
See("QI#Mi")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
!Global("QI#RejectLove","GLOBAL",1)
CombatCounter(0)
Global("QI#MiViconiaToB1","GLOBAL",0)~ THEN BVICON25 QI#MiViconiaToB1
@32
DO ~SetGlobal("QI#MiViconiaToB1","GLOBAL",1)~
== QI#M25B @33
== BVICON25 @34
== QI#M25B @35
== BVICON25 @36
== QI#M25B @37
== BVICON25 @38
== QI#M25B @39
== BVICON25 @40
EXIT

//Cernd
CHAIN
IF ~InParty("QI#Mi")
InParty("Cernd")
See("QI#Mi")
!StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#MiCerndToB1","GLOBAL",0)~ THEN BCERND25 QI#MiCerndToB1
@41
DO ~SetGlobal("QI#MiCerndToB1","GLOBAL",1)~
== QI#M25B @42
== BCERND25 @43
== QI#M25B @44
== BCERND25 @45
== QI#M25B @46
== QI#M25B @47
== QI#M25B @48
EXIT

//Sarevok
CHAIN
IF ~InParty("QI#Mi")
InParty("Sarevok")
See("QI#Mi")
!StateCheck("Sarevok",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#MiSarevokToB1","GLOBAL",0)~ THEN QI#M25B QI#MiSarevokTob1
@49
DO ~SetGlobal("QI#MiSarevokToB1","GLOBAL",1)~
== BSAREV25 @50
== QI#M25B @51
== BSAREV25 @52
== QI#M25B @53
EXIT

//Minsc
CHAIN
IF ~InParty("QI#Mi")
InParty("Minsc")
See("QI#Mi")
InParty("Edwin")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
Global("QI#RejectLove","GLOBAL",1)
CombatCounter(0)
Global("QI#MiMinscEdwinToB","GLOBAL",0)~ THEN BMINSC25 QI#MiMinscEdwinToB
@54
DO ~SetGlobal("QI#MiMinscEdwinToB","GLOBAL",1)~
== QI#M25B @55
== BMINSC25 @56
== QI#M25B @57
EXIT 

//Keldorn
CHAIN
IF ~InParty("QI#Mi")
InParty("Keldorn")
See("QI#Mi")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
Global("QI#RejectLove","GLOBAL",1)
CombatCounter(0)
Global("QI#MiKeldornToB1","GLOBAL",0)~ THEN BKELDO25 QI#MiKeldornToB1
@58
DO ~SetGlobal("QI#MiKeldornToB1","GLOBAL",1)~
== QI#M25B @59
== BKELDO25 @60
== BKELDO25 @61
== QI#M25B @62
EXIT

//Valygar
CHAIN
IF ~InParty("QI#Mi")
InParty("Valygar")
See("QI#Mi")
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
Global("QI#MiValygarToB1","GLOBAL",0)
CombatCounter(0)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)~ THEN BVALYG25 QI#MiValygarToB1
@63
DO ~SetGlobal("QI#MiValygarToB1","GLOBAL",1)~
== QI#M25B @64
== BVALYG25 @65
== QI#M25B @66
== BVALYG25 @67
== QI#M25B @68
== QI#M25B @69
== BVALYG25 @70
== QI#M25B @71
EXIT

//Sarevok
CHAIN
IF ~InParty("QI#Mi")
InParty("Sarevok")
See("QI#Mi")
!StateCheck("Sarevok",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
Alignment("QI#Mi",NEUTRAL)
Alignment("Sarevok", CHAOTIC_GOOD)
CombatCounter(0)
Global("QI#MiSarevokToB2","GLOBAL",0)~ THEN QI#M25B QI#MiSarevokTob2
@72
DO ~SetGlobal("QI#MiSarevokToB2","GLOBAL",1)~
== BSAREV25 @73
== QI#M25B @74
== BSAREV25 @75
== QI#M25B @76
== QI#M25B @77
EXIT

//Viconia
CHAIN
IF ~InParty("QI#Mi")
InParty("Edwin")
InParty("Viconia")
See("QI#Mi")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
Global("QI#AcceptLove","GLOBAL",1)
Global("ViconiaRomanceActive","GLOBAL",2)
CombatCounter(0)
Global("QI#MiViconiaToB1","GLOBAL",0)~ THEN BVICON25 QI#MiViconiaToB1
@78
DO ~SetGlobal("QI#MiViconiaToB1","GLOBAL",1)~
== QI#M25B @79
== BVICON25 @80
== QI#M25B @81
== BVICON25 @82
== QI#M25B @83
== BVICON25 @84
== BVICON25 @85
== QI#M25B @86
== BVICON25 @87
EXIT

//Jaheira
CHAIN 
IF ~InParty("Jaheira")
InParty("QI#Mi")
See("Jaheira")
InParty("Edwin")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
Global("QI#AcceptLove","GLOBAL",1)
CombatCounter(0)
Global("QI#MiJaheiraToB1","GLOBAL",0)~ THEN BJAHEI25 QI#MiJaheiraToB1
@88
DO ~SetGlobal("QI#MiJaheiraToB1","GLOBAL",1)~
== BJAHEI25 @89
== QI#M25B @90
== BJAHEI25 @91
== BJAHEI25 @92
== QI#M25B @93
== QI#M25B @94
EXIT

//Korgan
CHAIN
IF ~InParty("QI#Mi")
InParty("Korgan")
See("QI#Mi")
!StateCheck("Korgan",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#MiKorganToB1","GLOBAL",0)~ THEN BKORGA25 QI#KorganToB1
@95
DO ~SetGlobal("QI#MiKorganToB1","GLOBAL",1)~ 
== QI#M25B @96
== BKORGA25 @97
== QI#M25B @98
EXIT

//Aerie
CHAIN 
IF ~InParty("Aerie")
InParty("QI#Mi")
See("Aerie")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
Global("QI#MiAlignmentChange","GLOBAL",2)
CombatCounter(0)
Global("QI#MiAerieToB2","GLOBAL",0)~ THEN QI#M25B QI#MiAerieToB2
@99
DO ~SetGlobal("QI#MiAerieToB2","GLOBAL",1)~
== BAERIE25 @100
== QI#M25B @101
== QI#M25B @102
== BAERIE25 @103
== QI#M25B @104
EXIT

//Valygar
CHAIN
IF ~InParty("QI#Mi")
InParty("Valygar")
See("QI#Mi")
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
Global("QI#MiValygarToB1","GLOBAL",0)
CombatCounter(0)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)~ THEN BVALYG25 QI#MiValygarToB1
@105
DO ~SetGlobal("QI#MiValygarToB1","GLOBAL",1)~
== QI#M25B @106
== BVALYG25 @107
== QI#M25B @108
== BVALYG25 @109
== QI#M25B @110
== BVALYG25 @111
== QI#M25B @112
== QI#M25B @113
EXIT

//Mazzy
CHAIN
IF ~InParty("QI#Mi")
InParty("Mazzy")
See("QI#Mi")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#MiMazzyToB1","GLOBAL",0)~ THEN QI#M25B QI#MiMazzyToB1
@114
DO ~SetGlobal("QI#MiMazzyToB1","GLOBAL",1)~ 
== BMAZZY25 @115
== BMAZZY25 @116
== QI#M25B @117
== QI#M25B @118
== BMAZZY25 @119
EXIT

//Haer'Dalis
CHAIN
IF ~InParty("QI#Mi")
InParty("HaerDalis")
See("QI#Mi")
!StateCheck("HaerDalis",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#MiHaerDalisToB1","GLOBAL",0)~ THEN BHAERD25 QI#MiHaerDalisToB1
@120
DO ~SetGlobal("QI#MiHaerDalisToB1","GLOBAL",1)~
== QI#M25B @121
== BHAERD25 @122
== QI#M25B @123
== BHAERD25 @124
== QI#M25B @125
== BHAERD25 @126
EXIT

//Imoen
CHAIN
IF ~InParty("Imoen")
InParty("QI#Mi")
See("QI#Mi")
!StateCheck("Imoen",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
Global("QI#MiAlignmentChange","GLOBAL",2)
CombatCounter(0)
Global("QI#MiImoenToB1","GLOBAL",0)~ THEN BIMOEN25 QI#MiImoenToB1
@127
DO ~SetGlobal("QI#MiImoenToB1","GLOBAL",1)~
== BIMOEN25 @128
== QI#M25B @129
== BIMOEN25 @130
== QI#M25B @131
== BIMOEN25 @132
== QI#M25B @133
== BIMOEN25 @134
== QI#M25B @135
EXIT

//Imoen
CHAIN
IF ~InParty("Imoen")
InParty("QI#Mi")
InParty("Edwin")
See("QI#Mi")
!StateCheck("Imoen",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
!StateCheck("Edwin",CD_STATE_NOTVALID)
Global("QI#AcceptLove","GLOBAL",1)
CombatCounter(0)
Global("QI#MiImoenToB2","GLOBAL",0)~ THEN BIMOEN25 QI#MiImoenToB2
@136
DO ~SetGlobal("QI#MiImoenToB2","GLOBAL",1)~
== QI#M25B @137
== BIMOEN25 @138
== BEDWIN25 @139
== QI#M25B @140
== QI#M25B @141
== BIMOEN25 @142
== BIMOEN25 @143
EXIT

//Imoen
CHAIN
IF ~InParty("Imoen")
InParty("QI#Mi")
See("QI#Mi")
!StateCheck("Imoen",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
Global("QI#RejectLove","GLOBAL",1)
CombatCounter(0)
Global("QI#MiImoenToB3","GLOBAL",0)~ THEN BIMOEN25 QI#MiImoenToB3
@144
DO ~SetGlobal("QI#MiImoenToB3","GLOBAL",1)~
== QI#M25B @145
== BIMOEN25 @146
== QI#M25B @147
== BIMOEN25 @148
== QI#M25B @149
== QI#M25B @150
EXIT


//Edwin - Romance

//Pre-Talk
CHAIN 
IF ~InParty("Edwin")
See("Edwin")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
Global("QI#MiRomanceStartToB","GLOBAL",0)
CombatCounter(0)
Global("QI#MiUnfinishedSoA","GLOBAL",1)~ THEN QI#M25B QI#MiPreTalkEdwin1
@151
== BEDWIN25 @152
== QI#M25B @153
== BEDWIN25 @154
== QI#M25B @155
== BEDWIN25 @156
== QI#M25B @157
== QI#M25B @158
== BEDWIN25 @159
== QI#M25B @160
DO ~SetGlobal("QI#MiUnfinishedSoA","GLOBAL",2) SetGlobal("QI#MiRomanceStartToB","GLOBAL",1)~
EXIT

//Talk1
CHAIN 
IF ~InParty("Edwin")
See("Edwin")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
Global("QI#MiRomanceStartToB","GLOBAL",1) 
CombatCounter(0)
Global("QI#MiEdwinRomanceToB","GLOBAL",0)~ THEN QI#M25B QI#MiEdwinToB1
@161
== BEDWIN25 @162
== QI#M25B @163
== BEDWIN25 @164
== QI#M25B @165
== BEDWIN25 @166
== QI#M25B @167
== QI#M25B @168
== BEDWIN25 @169
== QI#M25B @170
== QI#M25B @171
== QI#M25B @172
== BEDWIN25 @173
== QI#M25B @174
== BEDWIN25 @175
DO ~IncrementGlobal("QI#MiEdwinRomanceToB","GLOBAL",1) SetGlobal("QI#MiRomanceStartToB","GLOBAL",2) ~
EXIT

//Talk2
CHAIN 
IF ~InParty("QI#Mi")
See("QI#Mi")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#MiEdwinRomanceToB","GLOBAL",1)~ THEN QI#M25B QI#MiEdwinToB2
@176
== BEDWIN25 @177
== QI#M25B @178
== BEDWIN25 @179
== QI#M25B @180
== BEDWIN25 @181
== QI#M25B @182
== BEDWIN25 @183
== QI#M25B @184
== BEDWIN25 @185
== BEDWIN25 @186
== QI#M25B @187
== BEDWIN25 @188
DO ~IncrementGlobal("QI#MiEdwinRomanceToB","GLOBAL",1)~
EXIT

//Talk3
CHAIN 
IF ~InParty("QI#Mi")
See("QI#Mi")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#MiEdwinRomanceToB","GLOBAL",2)~ THEN QI#M25B QI#MiEdwinToB3
@189
== BEDWIN25 @190
== QI#M25B @191
== BEDWIN25 @192
== QI#M25B @193
== BEDWIN25 @194
== QI#M25B @195
== QI#M25B @196
== BEDWIN25 @197
== QI#M25B @198
== QI#M25B @199
== BEDWIN25 @200
== BEDWIN25 @201
== QI#M25B @202
== BEDWIN25 @203
DO ~IncrementGlobal("QI#MiEdwinRomanceToB","GLOBAL",1)~
EXIT

//Talk4
CHAIN 
IF ~InParty("QI#Mi")
See("QI#Mi")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
Global("QI#MiEdwinChoice","GLOBAL",0)
CombatCounter(0)
Global("QI#MiEdwinRomanceToB","GLOBAL",3)~ THEN QI#M25B QI#MiEdwinToB4
@204
== BEDWIN25 @205
== QI#M25B @206
== BEDWIN25 @207
== BEDWIN25 @208
== QI#M25B @209
== BEDWIN25 @210
== QI#M25B @211
== BEDWIN25 @212
== QI#M25B @213
== BEDWIN25 @214
== BEDWIN25 @215
== QI#M25B @216
== QI#M25B @217
== QI#M25B @218
== BEDWIN25 @219
== QI#M25B @220
== BEDWIN25 @221
DO ~IncrementGlobal("QI#MiEdwinRomanceToB","GLOBAL",1) SetGlobal("QI#MiEdwinChoice","GLOBAL",1)~
EXIT

//Talk5
CHAIN 
IF ~InParty("Edwin")
See("Edwin")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#MiEdwinChoice","GLOBAL",2)
Global("QI#MiEdwinRomanceToB","GLOBAL",4)~ THEN QI#M25B QI#MiEdwinToB5
@222
DO ~IncrementGlobal("QI#MiEdwinRomanceToB","GLOBAL",1) SetGlobal("QI#MiEdwinChoice","GLOBAL",3)~
== BEDWIN25 @223
== QI#M25B @224
== BEDWIN25 @225
== QI#M25B @226
== QI#M25B IF ~Global("QI#AcceptLove","GLOBAL",1)~ THEN @227
== QI#M25B IF ~Global("QI#AcceptLove","GLOBAL",1)~ THEN @228
== QI#M25B IF ~Global("QI#AcceptLove","GLOBAL",1)~ THEN @229
== QI#M25B IF ~Global("QI#AcceptLove","GLOBAL",1)~ THEN @230
== BEDWIN25 IF ~Global("QI#AcceptLove","GLOBAL",1)~ THEN @231
== QI#M25B IF ~Global("QI#AcceptLove","GLOBAL",1)~ THEN @232
== QI#M25B IF ~Global("QI#RejectLove","GLOBAL",1)~ THEN @233
== QI#M25B IF ~Global("QI#RejectLove","GLOBAL",1)~ THEN @234
== BEDWIN25 IF ~Global("QI#RejectLove","GLOBAL",1)~ THEN @235
== QI#M25B IF ~Global("QI#RejectLove","GLOBAL",1)~ THEN @236
== QI#M25B IF ~Global("QI#RejectLove","GLOBAL",1)~ THEN @237
== BEDWIN25 IF ~Global("QI#RejectLove","GLOBAL",1)~ THEN @238
EXIT

//Talk6: Give Item - Necklace
CHAIN 
IF ~InParty("Edwin")
See("Edwin")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
Global("QI#AcceptLove","GLOBAL",1)
CombatCounter(0)
Global("QI#MiEdwinRomanceToB","GLOBAL",5)~ THEN QI#M25B QI#MiEdwinToB6
@239
== BEDWIN25 @240
== QI#M25B @241
== QI#M25B @242
== BEDWIN25 @243
== QI#M25B @244
== BEDWIN25 @245
== QI#M25B @246
== BEDWIN25 @247
== QI#M25B @248
== BEDWIN25 @249
== QI#M25B @250
== BEDWIN25 @251
== QI#M25B @252
== QI#M25B @253
== QI#M25B @254
== BEDWIN25 @255
== QI#M25B @256
== BEDWIN25 @257
== QI#M25B @258
== BEDWIN25 @259
== QI#M25B @260
== BEDWIN25 @261
DO ~AddXPObject("Edwin",10000) GiveItemCreate("QI#NE","QI#Mi",0,0,0) IncrementGlobal("QI#MiEdwinRomanceToB","GLOBAL",1)~
EXIT

//Talk7
CHAIN 
IF ~InParty("Edwin")
See("Edwin")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
Global("QI#AcceptLove","GLOBAL",1)
CombatCounter(0)
Global("QI#MiEdwinRomanceToB","GLOBAL",6)~ THEN QI#M25B QI#MiEdwinToB7
@262
== BEDWIN25 @263
== QI#M25B @264
== QI#M25B @265
== BEDWIN25 @266
== QI#M25B @267
== BEDWIN25 @268
== BEDWIN25 @269
== BEDWIN25 @270
== QI#M25B @271
== BEDWIN25 @272
== QI#M25B @273
== BEDWIN25 @274
== QI#M25B @275
== QI#M25B @276
DO ~IncrementGlobal("QI#MiEdwinRomanceToB","GLOBAL",1)~
EXIT

//Talk8
CHAIN
IF ~InParty("Edwin")
See("Edwin")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
Global("QI#AcceptLove","GLOBAL",1)
CombatCounter(0)
Global("QI#MiEdwinRomanceToB","GLOBAL",7)~ THEN QI#M25B QI#MiEdwinToB8
@277
== BEDWIN25 @278
== BEDWIN25 @279
== BMINSC25 IF ~InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @280
== BVALYG25 IF ~InParty("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @281
== BAERIE25 IF ~InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @282
== BJAHEI25 IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @283
== BIMOEN25 IF ~InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @284
== BKELDO25 IF ~InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @285
== BCERND25 IF ~InParty("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @286
== BSAREV25 IF ~InParty("Sarevok") !StateCheck("Sarevok",CD_STATE_NOTVALID)~ THEN @287
== BANOME25 IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @288
== BNALIA25 IF ~InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @289
== BRASAA25 IF ~InParty("Rasaad") !StateCheck("Rasaad",CD_STATE_NOTVALID)~ THEN @290
== QI#M25B IF ~InParty("Rasaad") InParty("Aerie") InParty("Sarevok") InParty("Anomen") InParty("Jaheira") InParty("Keldorn") InParty("Cernd") InParty("Minsc") InParty("Valygar") InParty("Imoen2")~ THEN @291
== BAERIE25 IF ~InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @292
== QI#M25B IF ~InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @293
== BAERIE25 IF ~InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @294
== BJAN25 IF ~InParty("Aerie") InParty("Jan") !StateCheck("Aerie",CD_STATE_NOTVALID) !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @295
== BDORN25 IF ~InParty("Dorn") !StateCheck("Dorn",CD_STATE_NOTVALID) InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @296
== BNEERA25 IF ~InParty("Neera") !StateCheck("Neera",CD_STATE_NOTVALID) InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @297
== BNEERA25 IF ~InParty("Neera") !StateCheck("Neera",CD_STATE_NOTVALID) InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @298
== QI#M25B IF ~InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @299
== BEDWIN25 IF ~InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @300
== BVICON25 IF ~InParty("Viconia") InParty("Aerie") InParty("Jan") !StateCheck("Aerie",CD_STATE_NOTVALID) !StateCheck("Jan",CD_STATE_NOTVALID) !StateCheck("Viconia",CD_STATE_NOTVALID) ~ THEN @301
== QI#M25B IF ~Alignment("QI#Mi",NEUTRAL)~ THEN @302
== BEDWIN25 IF ~Alignment("QI#Mi",NEUTRAL)~ THEN @303
== QI#M25B IF ~Alignment("QI#Mi",NEUTRAL)~ THEN @304
== QI#M25B IF ~Alignment("QI#Mi",NEUTRAL_EVIL)~ THEN @305
== BEDWIN25 IF ~Alignment("QI#Mi",NEUTRAL_EVIL)~ THEN @306
== QI#M25B @307
DO ~IncrementGlobal("QI#MiEdwinRomanceToB","GLOBAL",1)~
EXIT

//Talk9 - Results of Previous Talk

//True Neutral
CHAIN
IF ~InParty("QI#Mi")
See("QI#Mi")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
Alignment("QI#Mi",NEUTRAL)
Global("QI#AcceptLove","GLOBAL",1)
CombatCounter(0)
Global("QI#MiEdwinRomanceToB","GLOBAL",8)~ THEN QI#M25B QI#EdwinToB9-TrueNeutral
@308
== BEDWIN25 @309
== QI#M25B @310
== BEDWIN25 @311
== QI#M25B @312
== QI#M25B @313
== QI#M25B @314
== BEDWIN25 @315
== QI#M25B @316
== BEDWIN25 @317
== QI#M25B @318
== QI#M25B @319
== BEDWIN25 @320
== BEDWIN25 @321
== QI#M25B @322
== BEDWIN25 @323
== QI#M25B @324
== BEDWIN25 @325
== BEDWIN25 @326
== QI#M25B @327
== BEDWIN25 @328
== QI#M25B @329
DO ~IncrementGlobal("QI#MiEdwinRomanceToB","GLOBAL",1)~ //Maybe -> DO ~ChangeAlignment("Edwin",NEUTRAL)
EXIT
 
//Neutral Evil
CHAIN
IF ~InParty("QI#Mi")
See("QI#Mi")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
Alignment("QI#Mi",NEUTRAL_EVIL)
Global("QI#AcceptLove","GLOBAL",1)
CombatCounter(0)
Global("QI#MiEdwinRomanceToB","GLOBAL",8)~ THEN QI#M25B QI#EdwinToB9-NeutralEvil
@308
== BEDWIN25 @309
== QI#M25B @310
== BEDWIN25 @311
== QI#M25B @312
== QI#M25B @330
== BEDWIN25 @333
== QI#M25B @331
== BEDWIN25 @332
== QI#M25B @327
== BEDWIN25 @328
== QI#M25B @329
DO ~IncrementGlobal("QI#MiEdwinRomanceToB","GLOBAL",1)~
EXIT

//Edwin - Not Romanced/Never Was 
CHAIN 
IF ~InParty("QI#Mi")
See("QI#Mi")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
GlobalLT("QI#MiEdwinRomanceSoA","GLOBAL",15)
CombatCounter(0)
Global("QI#MiEdwinNoRomance","GLOBAL",0)~ THEN QI#M25B QI#MiEdwinToBNotRomanced
@334
== BEDWIN25 @335
== QI#M25B @336
== BEDWIN25 @337
== QI#M25B @338
== BEDWIN25 @339
== QI#M25B @340
== BEDWIN25 @341
== QI#M25B @342
== BEDWIN25 @343
== QI#M25B @344
== BEDWIN25 @345
== QI#M25B @346
DO ~SetGlobal("QI#MiEdwinNoRomance","GLOBAL",1)~
EXIT
