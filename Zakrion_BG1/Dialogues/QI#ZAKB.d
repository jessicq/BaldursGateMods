BEGIN QI#ZAKB

/*****************************************************************************************************************************************************************
													Ajantis Banters (3)
*****************************************************************************************************************************************************************/

//Talk 1
CHAIN IF 
	~InParty("QI#ZAK")
	InParty("Ajantis")
	See("QI#ZAK")
	!StateCheck("Ajantis",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	Global("QI#ZakAjantisTalk","GLOBAL",0)~ THEN %AJANTIS_BANTER% QI#ZakAjantisTalk1
	@0
	DO ~SetGlobal("QI#ZakAjantisTalk","GLOBAL",1)~
	== QI#ZAKB @1
	= @2
	= @3
	== %AJANTIS_BANTER% @4
	= @5
	== QI#ZAKB @6
	== %AJANTIS_BANTER% @7
	== QI#ZAKB @8
	= @9
EXIT 

//Talk 2
CHAIN IF 
	~InParty("QI#ZAK")
	InParty("Ajantis")
	See("Ajantis")
	!StateCheck("Ajantis",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	Global("QI#ZakAjantisTalk","GLOBAL",1)~ THEN QI#ZAKB QI#ZakAjantisTalk2
	@10
	DO ~SetGlobal("QI#ZakAjantisTalk","GLOBAL",2)~
	== %AJANTIS_BANTER% @11
	== QI#ZAKB @12
	== %AJANTIS_BANTER% @13
	== QI#ZAKB @14
	= @15
	== %AJANTIS_BANTER% @16
	== QI#ZAKB @17
EXIT 

//Talk 3
CHAIN IF 
	~InParty("QI#ZAK")
	InParty("Ajantis")
	See("QI#ZAK")
	!StateCheck("Ajantis",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	GlobalGT("QI#ZakTalk","GLOBAL",30)
	Global("QI#ZakAjantisTalk","GLOBAL",2)~ THEN %AJANTIS_BANTER% QI#ZakAjantisTalk3
	@18
	DO ~SetGlobal("QI#ZakAjantisTalk","GLOBAL",3)~
	== QI#ZAKB @19
	== %AJANTIS_BANTER% @20
	== QI#ZAKB @21
	= @22
	== %AJANTIS_BANTER% @23
	== QI#ZAKB @24
	== %AJANTIS_BANTER% @25
	== QI#ZAKB @26
	== %AJANTIS_BANTER% @27
	= @28
	== QI#ZAKB @29
	= @30
	== %AJANTIS_BANTER% @31
	== QI#ZAKB @32
	== %AJANTIS_BANTER% @33
	== QI#ZAKB @34
EXIT 

/*****************************************************************************************************************************************************************
												Alora Banters (4)
*****************************************************************************************************************************************************************/

//Talk 1
CHAIN IF 
	~InParty("QI#ZAK")
	InParty("Alora")
	See("Alora")
	!StateCheck("Alora",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	Global("QI#ZakAloraTalk","GLOBAL",0)~ THEN QI#ZAKB QI#ZakAloraTalk1
	@35
	DO ~SetGlobal("QI#ZakAloraTalk","GLOBAL",1)~
	== %ALORA_BANTER% @36
	= @37
	== QI#ZAKB @38
	== %ALORA_BANTER% @39
	= @40
	= @41
	== QI#ZAKB @42
	== %ALORA_BANTER% @43
	== QI#ZAKB @44
EXIT 

//Talk 2
CHAIN IF 
	~InParty("QI#ZAK")
	InParty("Alora")
	See("Alora")
	!StateCheck("Alora",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	Global("QI#ZakAloraTalk","GLOBAL",1)~ THEN QI#ZAKB QI#ZakAloraTalk2
	@45
	DO ~SetGlobal("QI#ZakAloraTalk","GLOBAL",2)~
	== %ALORA_BANTER% @46
	== QI#ZAKB @47
	== %ALORA_BANTER% @48
	= @49
	== QI#ZAKB @50
	== %ALORA_BANTER% @51
	== QI#ZAKB @52
	== %ALORA_BANTER% @53
	= @54
	== QI#ZAKB @55
	== %ALORA_BANTER% @56
EXIT 

//Talk 3
CHAIN IF 
	~InParty("QI#ZAK")
	InParty("Alora")
	See("QI#ZAK")
	!StateCheck("Alora",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	GlobalGT("QI#ZakTalk","GLOBAL",30)
	Global("QI#ZakAloraTalk","GLOBAL",2)~ THEN %ALORA_BANTER% QI#ZakAloraTalk3
	@57
	DO ~SetGlobal("QI#ZakAloraTalk","GLOBAL",3)~
	== QI#ZAKB @58
	== %ALORA_BANTER% @59
	= @60
	= @61
	== QI#ZAKB @62
	== %ALORA_BANTER% @63
	== QI#ZAKB @64
	= @65
	= @66
	== %ALORA_BANTER% @67
	== QI#ZAKB @68
	= @69
EXIT 

//Talk 4
CHAIN IF 
	~InParty("QI#ZAK")
	InParty("Alora")
	See("QI#ZAK")
	!StateCheck("Alora",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	GlobalGT("QI#ZakTalk","GLOBAL",30)
	Global("QI#ZakAloraTalk","GLOBAL",3)~ THEN %ALORA_BANTER% QI#ZakAloraTalk3
	@70
	DO ~SetGlobal("QI#ZakAloraTalk","GLOBAL",4)~
	== QI#ZAKB @71
	== %ALORA_BANTER% @72
	== QI#ZAKB @73
	= @74
	== %ALORA_BANTER% @75
	== QI#ZAKB @76
EXIT 

/*****************************************************************************************************************************************************************
										Branwen Banters (3)
*****************************************************************************************************************************************************************/

//Talk 1
CHAIN IF 
	~InParty("QI#ZAK")
	InParty("Branwen")
	See("Branwen")
	!StateCheck("Branwen",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	Global("QI#ZakBranwenTalk","GLOBAL",0)~ THEN QI#ZAKB QI#ZakBranwenTalk1
	@77
	DO ~SetGlobal("QI#ZakBranwenTalk","GLOBAL",1)~
	== %BRANWEN_BANTER% @78
	== QI#ZAKB @79
	= @80
	= @81
	== %BRANWEN_BANTER% @82
	== QI#ZAKB @83
EXIT 

//Talk 2
CHAIN IF 
	~InParty("QI#ZAK")
	InParty("Branwen")
	See("QI#ZAK")
	!StateCheck("Branwen",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	Global("QI#ZakBranwenTalk","GLOBAL",1)~ THEN %BRANWEN_BANTER% QI#ZakBranwenTalk2
	@84
	DO ~SetGlobal("QI#ZakBranwenTalk","GLOBAL",2)~
	== QI#ZAKB @85
	= @86
	== %BRANWEN_BANTER% @87
	== QI#ZAKB @88
	== %BRANWEN_BANTER% @89
	== QI#ZAKB @90
	== %BRANWEN_BANTER% @91
	= @92
	= @93
	= @94
	= @95
	= @96
	== QI#ZAKB 97
	== %BRANWEN_BANTER% @98
	== QI#ZAKB @99
	= @100
EXIT 

//Talk 3
CHAIN IF 
	~InParty("QI#ZAK")
	InParty("Branwen")
	See("QI#ZAK")
	!StateCheck("Branwen",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	Global("QI#ZakBranwenTalk","GLOBAL",2)~ THEN QI#ZAKB QI#ZakBranwenTalk3
	@101
	DO ~SetGlobal("QI#ZakBranwenTalk","GLOBAL",3)~
	== %BRANWEN_BANTER% @102
	== QI#ZAKB @103
EXIT 

/*****************************************************************************************************************************************************************
										Coran Banters (3)
*****************************************************************************************************************************************************************/

//Talk 1
CHAIN IF 
	~InParty("Coran")
	InParty("QI#ZAK")
	See("Coran")
	!StateCheck("Coran",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	Global("QI#ZakCoranTalk","GLOBAL",0)~ THEN QI#ZAKB QI#ZakCoranTalk1
	@104
	DO ~SetGlobal("QI#ZakCoranTalk","GLOBAL",1)~
	== %CORAN_BANTER% @105
	= @106
	== QI#ZAKB @107
	= @108
	== %CORAN_BANTER% @109
	== QI#ZAKB @110
	== %CORAN_BANTER% @111
	= @112
	== QI#ZAKB @113
EXIT 

//Talk 2
CHAIN IF 
	~InParty("Coran")
	InParty("QI#ZAK")
	See("QI#ZAK")
	!StateCheck("Coran",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	Global("QI#ZakCoranTalk","GLOBAL",1)~ THEN %CORAN_BANTER% QI#ZakCoranTalk2
	@114
	DO ~SetGlobal("QI#ZakCoranTalk","GLOBAL",2)~
	== QI#ZAKB @115
	== %CORAN_BANTER% @135
	= @116
	== QI#ZAKB @117
	= @118
	== %CORAN_BANTER% @119
	== QI#ZAKB @120
	== %CORAN_BANTER% @121
	== QI#ZAKB @122
	= @123
	== %CORAN_BANTER% @124
	== QI#ZAKB @125
EXIT 

//Talk 3
CHAIN IF 
	~InParty("Coran")
	InParty("QI#ZAK")
	See("QI#ZAK")
	!StateCheck("Coran",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	GlobalGT("QI#ZakTalk","GLOBAL",30)
	Global("QI#ZakCoranTalk","GLOBAL",2)~ THEN %CORAN_BANTER% QI#ZakCoranTalk3
	@126
	DO ~SetGlobal("QI#ZakCoranTalk","GLOBAL",3)~
	== QI#ZAKB @127
	== %CORAN_BANTER% @128
	== QI#ZAKB @129
	= @130
	== %CORAN_BANTER% @131
	== QI#ZAKB @132
	== %CORAN_BANTER% @133
	== QI#ZAKB @134
EXIT 

/*****************************************************************************************************************************************************************
										Dynaheir Banters (2)
*****************************************************************************************************************************************************************/

//Talk 1
CHAIN IF 
	~InParty("Dynaheir")
	InParty("QI#ZAK")
	See("Dynaheir")
	!StateCheck("Dynaheir",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	Global("QI#ZakDynaheirTalk","GLOBAL",0)~ THEN QI#ZAKB QI#ZakDynaheirTalk1
	@136
	DO ~SetGlobal("QI#ZakDynaheirTalk","GLOBAL",1)~
	== %DYNAHEIR_BANTER% @137
	== QI#ZAKB @138
	= @139
	== %DYNAHEIR_BANTER% @140
	== QI#ZAKB @141
	== %DYNAHEIR_BANTER% @142
	== QI#ZAKB @143
	= @144
	= @145
	== %DYNAHEIR_BANTER% @146
EXIT 

//Talk 2
CHAIN IF 
	~InParty("Dynaheir")
	InParty("QI#ZAK")
	See("Dynaheir")
	!StateCheck("Dynaheir",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	Global("QI#ZakDynaheirTalk","GLOBAL",1)~ THEN QI#ZAKB QI#ZakDynaheirTalk2
	@147
	DO ~SetGlobal("QI#ZakDynaheirTalk","GLOBAL",2)~
	= @148
	== %DYNAHEIR_BANTER% @149
	== QI#ZAKB @150
	== %DYNAHEIR_BANTER% @151
	== QI#ZAKB @152
	= @153
EXIT 

/*****************************************************************************************************************************************************************
										Edwin Banters (3)
*****************************************************************************************************************************************************************/

//Talk 1
CHAIN IF 
	~InParty("QI#ZAK")
	InParty("Edwin")
	See("QI#ZAK")
	!StateCheck("Edwin",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	Global("QI#ZakEdwinTalk","GLOBAL",0)~ THEN %EDWIN_BANTER% QI#ZakEdwinTalk1
	@154
	DO ~SetGlobal("QI#ZakEdwinTalk","GLOBAL",1)~ 
	== QI#ZAKB @155
	= @156
	== %EDWIN_BANTER% @157
	== QI#ZAKB @158
	= @159
	== %EDWIN_BANTER% @160
	== QI#ZAKB @161
	== %EDWIN_BANTER% @162
	= @163
EXIT 

//Talk 2
CHAIN IF 
	~InParty("QI#ZAK")
	InParty("Edwin")
	See("Edwin")
	!StateCheck("Edwin",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	Global("QI#ZakEdwinTalk","GLOBAL",1)~ THEN QI#ZAKB QI#ZakEdwinTalk2
	@164
	DO ~SetGlobal("QI#ZakEdwinTalk","GLOBAL",2)~ 
	== %EDWIN_BANTER% @165
	== QI#ZAKB @166
	= @167
	== %EDWIN_BANTER% @168
	== QI#ZAKB @169
	== %EDWIN_BANTER% @170
	== QI#ZAKB @171
EXIT 

//Talk 3
CHAIN IF 
	~InParty("QI#ZAK")
	InParty("Edwin")
	See("Edwin")
	!StateCheck("Edwin",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	Global("QI#ZakEdwinTalk","GLOBAL",2)~ THEN QI#ZAKB QI#ZakEdwinTalk3
	@172
	DO ~SetGlobal("QI#ZakEdwinTalk","GLOBAL",3)~ 
	== %EDWIN_BANTER% @173
	== QI#ZAKB @174
	== %EDWIN_BANTER% @175
	== QI#ZAKB @176
	= @177
	= @178
	== %EDWIN_BANTER% @179
	== QI#ZAKB @180
	== %EDWIN_BANTER% @181
	== QI#ZAKB @182
	= @183
EXIT 
	 
/*****************************************************************************************************************************************************************
										Eldoth Banters (4)
*****************************************************************************************************************************************************************/

//Talk 1
CHAIN IF 
	~InParty("QI#ZAK")
	InParty("Eldoth")
	See("QI#ZAK")
	!StateCheck("Eldoth",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	Global("QI#ZakEldothTalk","GLOBAL",0)~ THEN %ELDOTH_BANTER% QI#ZakEldothTalk1
	@184
	DO ~SetGlobal("QI#ZakEldothTalk","GLOBAL",1)~
	== QI#ZAKB @185
	== %ELDOTH_BANTER% @186
	== QI#ZAKB @187
	== %ELDOTH_BANTER% @188
	== QI#ZAKB @189
	== %ELDOTH_BANTER% @190
	= @191
	== QI#ZAKB @192
	= @193
EXIT 

//Talk 2
CHAIN IF 
	~InParty("QI#ZAK")
	InParty("Eldoth")
	See("QI#ZAK")
	!StateCheck("Eldoth",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	Global("QI#ZakEldothTalk","GLOBAL",1)~ THEN %ELDOTH_BANTER% QI#ZakEldothTalk2
	@194
	DO ~SetGlobal("QI#ZakEldothTalk","GLOBAL",2)~
	= @195
	== QI#ZAKB @196
	== %ELDOTH_BANTER% @197
	= @198
	== QI#ZAKB @199
	= @200
	== %ELDOTH_BANTER% @201
	= @202
EXIT 

//Talk 3
CHAIN IF 
	~InParty("QI#ZAK")
	InParty("Eldoth")
	See("QI#ZAK")
	!StateCheck("Eldoth",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	Global("QI#ZakEldothTalk","GLOBAL",2)~ THEN %ELDOTH_BANTER% QI#ZakEldothTalk3
	@203
	DO ~SetGlobal("QI#ZakEldothTalk","GLOBAL",3)~
	== QI#ZAKB @204
	== %ELDOTH_BANTER% @205
	= @206
	== QI#ZAKB @207
	== %ELDOTH_BANTER% @208
	== QI#ZAKB @209
	= @210
EXIT 

//Talk 4
CHAIN IF 
	~InParty("QI#ZAK")
	InParty("Eldoth")
	InParty("Skie")
	See("QI#ZAK")
	!StateCheck("Eldoth",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	GlobalGT("QI#ZakTalk","GLOBAL",30)
	Global("QI#ZakEldothTalk","GLOBAL",3)~ THEN %ELDOTH_BANTER% QI#ZakEldothTalk4
	@211
	DO ~SetGlobal("QI#ZakEldothTalk","GLOBAL",4)~
	== QI#ZAKB @212
	== %ELDOTH_BANTER% @213
	== QI#ZAKB @214
	== %ELDOTH_BANTER% @215
	= @216
	== QI#ZAKB @217
	== %ELDOTH_BANTER% @218
	= @219
	== QI#ZAKB @220
	== %ELDOTH_BANTER% @221 
EXIT 
	
/*****************************************************************************************************************************************************************
										Faldorn Banters (3)
*****************************************************************************************************************************************************************/	

//Talk 1
CHAIN IF 
	~InParty("Faldorn")
	See("Faldorn")
	!StateCheck("Faldorn",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	AreaType([CITY])
	Global("QI#ZakFaldornTalk","GLOBAL",0)~ THEN QI#ZAKB QI#ZakFaldornTalk1
	@222
	DO ~SetGlobal("QI#ZakFaldornTalk","GLOBAL",1)~
	== %FALDORN_BANTER% @223
	== QI#ZAKB @224
	== %FALDORN_BANTER% @225
	== QI#ZAKB @226
EXIT 

//Talk 2
CHAIN IF 
	~InParty("Faldorn")
	See("Faldorn")
	!StateCheck("Faldorn",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	AreaType([CITY])
	Global("QI#ZakFaldornTalk","GLOBAL",1)~ THEN QI#ZAKB QI#ZakFaldornTalk2
	@227
	DO ~SetGlobal("QI#ZakFaldornTalk","GLOBAL",2)~
	== %FALDORN_BANTER% @228
	== QI#ZAKB @229
	== %FALDORN_BANTER% @230
	== QI#ZAKB @231
EXIT 

//Talk 3
CHAIN IF 
	~InParty("Faldorn")
	See("Faldorn")
	!StateCheck("Faldorn",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	AreaType([CITY])
	Global("QI#ZakFaldornTalk","GLOBAL",2)~ THEN QI#ZAKB QI#ZakFaldornTalk3
	@232
	DO ~SetGlobal("QI#ZakFaldornTalk","GLOBAL",3)~
	= @233
	== %FALDORN_BANTER% @234
	== QI#ZAKB @235
	== %FALDORN_BANTER% @236
	= @237
EXIT 

	
/*****************************************************************************************************************************************************************
										Garrick Banters (4)
*****************************************************************************************************************************************************************/	

//Talk 1
CHAIN
	IF ~InParty("Garrick")
	InParty("QI#ZAK")
	See("Garrick")
	!StateCheck("Garrick",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	Global("QI#ZakGarrickTalk","GLOBAL",0)~ THEN QI#ZAKB QI#ZakGarrickTalk1
	@238
	DO ~SetGlobal("QI#ZakGarrickTalk","GLOBAL",1)~
	== %GARRICK_BANTER% @239
	== QI#ZAKB @240
	== %GARRICK_BANTER% @241
	== QI#ZAKB @242
	== %GARRICK_BANTER% @243
	== QI#ZAKB @244
EXIT 

//Talk 2
CHAIN
	IF ~InParty("Garrick")
	InParty("QI#ZAK")
	See("QI#ZAK")
	!StateCheck("Garrick",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	Global("QI#ZakGarrickTalk","GLOBAL",1)~ THEN %GARRICK_BANTER% QI#ZakGarrickTalk2
	@245
	DO ~SetGlobal("QI#ZakGarrickTalk","GLOBAL",2)~
	== QI#ZAKB @246
	=  @247
	== %GARRICK_BANTER% @248
	== QI#ZAKB @249
EXIT 

//Talk 3
CHAIN
	IF ~InParty("Garrick")
	InParty("QI#ZAK")
	See("Garrick")
	!StateCheck("Garrick",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	Global("QI#ZakGarrickTalk","GLOBAL",2)~ THEN QI#ZAKB QI#ZakGarrickTalk3
	@250
	DO ~SetGlobal("QI#ZakGarrickTalk","GLOBAL",3)~
	== %GARRICK_BANTER% @251
	== QI#ZAKB @252
EXIT 

//Talk 3
CHAIN
	IF ~InParty("Garrick")
	InParty("QI#ZAK")
	See("Garrick")
	!StateCheck("Garrick",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	GlobalGT("QI#ZakTalk","GLOBAL",30)
	Global("QI#ZakGarrickTalk","GLOBAL",3)~ THEN QI#ZAKB QI#ZakGarrickTalk4
	@253
	DO ~SetGlobal("QI#ZakGarrickTalk","GLOBAL",4)~
	== %GARRICK_BANTER% @254
	= @255
	== QI#ZAKB @256
EXIT 

/*****************************************************************************************************************************************************************
										Imoen Banters (4)
*****************************************************************************************************************************************************************/	

//Talk 1
CHAIN IF 
	~InParty("%IMOEN_DV%")
	InParty("QI#ZAK")
	See("%IMOEN_DV%")
	!StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	Global("QI#ZakImoenTalk","GLOBAL",0)~ THEN QI#ZAKB QI#ZakImoenTalk1
	@257
	DO ~SetGlobal("QI#ZakImoenTalk","GLOBAL",1)~
	== %IMOEN_BANTER% @258
	== QI#ZAKB @259
	= @260
	== %IMOEN_BANTER% @261
	== QI#ZAKB @262
EXIT 

//Talk 2
CHAIN IF 
	~InParty("%IMOEN_DV%")
	InParty("QI#ZAK")
	See("QI#ZAK")
	!StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	Global("QI#ZakImoenTalk","GLOBAL",1)
	OR(21)
        AreaCheck("%BaldursGateDocks_JopalinsTavern%")
     	AreaCheck("%Beregost_FeldepostsInn_L1%")
     	AreaCheck("%Beregost_JovialJuggler_L1%")
     	AreaCheck("%Beregost_RedSheaf_L1%")
     	AreaCheck("%Beregost_BurningWizard_L1%")
     	AreaCheck("%EBaldursGate_KeexieTavern_L1%")
     	AreaCheck("%EBaldursGate_ElfsongTavern_L1%")
     	AreaCheck("%EBaldursGate_Inn_L1%")
     	AreaCheck("%FriendlyArmInn_L1%")
     	AreaCheck("%Nashkel_Inn%")
     	AreaCheck("%NBaldursGate_ThreeOldKegs_L1%")
     	AreaCheck("%NEBaldursGate_BlushingMermaid_L1%")
     	AreaCheck("%NEBaldursGate_SplurgingSturgeon_L2%")
     	AreaCheck("%NEBaldursGate_SplurgingSturgeon_L1%")
     	AreaCheck("%NWBaldursGate_Helm&Cloak_L1%")
     	AreaCheck("%NWBaldursGate_Tavern_L1%")
     	AreaCheck("%SEBaldursGate_Inn_L1%")
     	AreaCheck("%SEBaldursGate_Blade&Stars_L1%")
     	AreaCheck("%SWBaldursGate_Tavern_L1%")
     	AreaCheck("%SWBaldursGate_YeOldeInn_L1%")
     	AreaCheck("%UlgothsBeard_Inn%")~ THEN %IMOEN_BANTER% QI#ZakImoenTalk2
	@263
	DO ~SetGlobal("QI#ZakImoenTalk","GLOBAL",2)~
	== QI#ZAKB @264
	== %IMOEN_BANTER% @265
	== QI#ZAKB @266
	= @267
	== %IMOEN_BANTER% @268
	== QI#ZAKB @269
	== %IMOEN_BANTER% @270
	== QI#ZAKB @271
	= @272
	== %IMOEN_BANTER% @273
	== QI#ZAKB @274
	== %IMOEN_BANTER% @275
EXIT 

//Talk 3
CHAIN IF 
	~InParty("%IMOEN_DV%")
	InParty("QI#ZAK")
	See("%IMOEN_DV%")
	!StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	Global("QI#ZakImoenTalk","GLOBAL",2)
	OR(21)
        AreaCheck("%BaldursGateDocks_JopalinsTavern%")
     	AreaCheck("%Beregost_FeldepostsInn_L1%")
     	AreaCheck("%Beregost_JovialJuggler_L1%")
     	AreaCheck("%Beregost_RedSheaf_L1%")
     	AreaCheck("%Beregost_BurningWizard_L1%")
     	AreaCheck("%EBaldursGate_KeexieTavern_L1%")
     	AreaCheck("%EBaldursGate_ElfsongTavern_L1%")
     	AreaCheck("%EBaldursGate_Inn_L1%")
     	AreaCheck("%FriendlyArmInn_L1%")
     	AreaCheck("%Nashkel_Inn%")
     	AreaCheck("%NBaldursGate_ThreeOldKegs_L1%")
     	AreaCheck("%NEBaldursGate_BlushingMermaid_L1%")
     	AreaCheck("%NEBaldursGate_SplurgingSturgeon_L2%")
     	AreaCheck("%NEBaldursGate_SplurgingSturgeon_L1%")
     	AreaCheck("%NWBaldursGate_Helm&Cloak_L1%")
     	AreaCheck("%NWBaldursGate_Tavern_L1%")
     	AreaCheck("%SEBaldursGate_Inn_L1%")
     	AreaCheck("%SEBaldursGate_Blade&Stars_L1%")
     	AreaCheck("%SWBaldursGate_Tavern_L1%")
     	AreaCheck("%SWBaldursGate_YeOldeInn_L1%")
     	AreaCheck("%UlgothsBeard_Inn%")~ THEN %IMOEN_BANTER% QI#ZakImoenTalk3
	@276
	DO ~SetGlobal("QI#ZakImoenTalk","GLOBAL",3)~
	== QI#ZAKB @277
	== %IMOEN_BANTER% @278
	== QI#ZAKB @279
	== %IMOEN_BANTER% @280
	== QI#ZAKB @281
	= @282
	= @283
	== %IMOEN_BANTER% @284
	== QI#ZAKB @285
	== %IMOEN_BANTER% @286
EXIT 

//Talk 4
CHAIN IF 
	~InParty("%IMOEN_DV%")
	InParty("QI#ZAK")
	See("%IMOEN_DV%")
	!StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	GlobalGT("QI#ZakTalk","GLOBAL",30)
	Global("QI#ZakImoenTalk","GLOBAL",3)~ THEN %IMOEN_BANTER% QI#ZakImoenTalk4
	@287
	DO ~SetGlobal("QI#ZakImoenTalk","GLOBAL",4)~
	== QI#ZAKB @288
	== %IMOEN_BANTER% @289
	== QI#ZAKB @290
	== %IMOEN_BANTER% @291
	== QI#ZAKB @292
	== %IMOEN_BANTER% @293
	== QI#ZAKB @294
	== %IMOEN_BANTER% @295
	== QI#ZAKB @296
EXIT 

/*****************************************************************************************************************************************************************
										Jaheira Banters (3)
*****************************************************************************************************************************************************************/	

//Talk 1
CHAIN IF 
	~InParty("Jaheira")
	InParty("QI#ZAK")
	InParty("Khalid")
	See("Jaheira")
	!StateCheck("Jaheira",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	Global("QI#ZakJaheiraTalk","GLOBAL",0)~ THEN QI#ZAKB QI#ZakJaheiraTalk1
	@297
	DO ~SetGlobal("QI#ZakJaheiraTalk","GLOBAL",1)~
	== %JAHEIRA_BANTER% @298
	== QI#ZAKB @299
	= @300
	== %JAHEIRA_BANTER% @301
	== QI#ZAKB @302
EXIT 

//Talk 2
CHAIN IF 
	~InParty("Jaheira")
	InParty("QI#ZAK")
	InParty("Khalid")
	See("Jaheira")
	!StateCheck("Jaheira",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	Global("QI#ZakJaheiraTalk","GLOBAL",1)~ THEN QI#ZAKB QI#ZakJaheiraTalk2
	@303
	DO ~SetGlobal("QI#ZakJaheiraTalk","GLOBAL",2)~
	== %JAHEIRA_BANTER% @304
	== QI#ZAKB @305
	= @306
	= @307
	= @308
	== %JAHEIRA_BANTER% @309
EXIT 

//Talk 3
CHAIN IF 
	~InParty("Jaheira")
	InParty("QI#ZAK")
	InParty("Khalid")
	See("Jaheira")
	!StateCheck("Jaheira",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	Global("QI#ZakJaheiraTalk","GLOBAL",2)~ THEN QI#ZAKB QI#ZakJaheiraTalk3
	@310
	DO ~SetGlobal("QI#ZakJaheiraTalk","GLOBAL",3)~
	= @311
	== %JAHEIRA_BANTER% @312
	== QI#ZAKB @313
	= @314
	= @315
	== %JAHEIRA_BANTER% @316
	== QI#ZAKB @317
EXIT 

/*****************************************************************************************************************************************************************
										Kagain Banters (2)
*****************************************************************************************************************************************************************/	

//Talk 1
CHAIN IF 
	~InParty("Kagain")
	InParty("QI#ZAK")
	See("Kagain")
	!StateCheck("Kagain",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	Global("QI#ZakKagainTalk","GLOBAL",0)~ THEN QI#ZAKB QI#ZakKagainTalk1
	@318
	DO ~SetGlobal("QI#ZakKagainTalk","GLOBAL",1)~ 
	== %KAGAIN_BANTER% @319
	== QI#ZAKB @320
	= @321
	== %KAGAIN_BANTER% @322
EXIT 

//Talk 2
CHAIN IF 
	~InParty("Kagain")
	InParty("QI#ZAK")
	See("Kagain")
	!StateCheck("Kagain",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	GlobalGT("QI#ZakTalk","GLOBAL",30)
	Global("QI#ZakKagainTalk","GLOBAL",1)~ THEN QI#ZAKB QI#ZakKagainTalk2
	@323
	DO ~SetGlobal("QI#ZakKagainTalk","GLOBAL",2)~ 
	== %KAGAIN_BANTER% @324
	== QI#ZAKB @325
	== %KAGAIN_BANTER% @326
	== QI#ZAKB @327
	== %KAGAIN_BANTER% @328
	== QI#ZAKB @329
	== %KAGAIN_BANTER% @330
	== QI#ZAKB @331
EXIT 

/*****************************************************************************************************************************************************************
										Khalid Banters (2)
*****************************************************************************************************************************************************************/	

//Talk 1
CHAIN IF 
	~InParty("Khalid")
	InParty("QI#ZAK")
	See("Khalid")
	!StateCheck("Khalid",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	Global("QI#ZakKhalidTalk","GLOBAL",0)~ THEN QI#ZAKB QI#ZakKhalidTalk1
	@332
	DO ~SetGlobal("QI#ZakKhalidTalk","GLOBAL",1)~
	== %KHALID_BANTER% @333
	== QI#ZAKB @334
	= @335
	== %KHALID_BANTER% @336
	== QI#ZAKB @337
	= @338
EXIT 

//Talk 2
CHAIN IF 
	~InParty("Khalid")
	InParty("QI#ZAK")
	See("QI#ZAK")
	!StateCheck("Khalid",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	Global("QI#ZakKhalidTalk","GLOBAL",1)~ THEN %KHALID_BANTER% QI#ZakKhalidTalk2
	@339
	DO ~SetGlobal("QI#ZakKhalidTalk","GLOBAL",2)~
	= @340
	== QI#ZAKB @341
	== %KHALID_BANTER% @342
	== QI#ZAKB @343
	= @344
	== %KHALID_BANTER% @345
	== QI#ZAKB @346
	= @347
	= @348
	== %KHALID_BANTER% @349
	== QI#ZAKB @350
EXIT 

/*****************************************************************************************************************************************************************
										Kivan Banters (3)
*****************************************************************************************************************************************************************/	

//Talk 1
CHAIN IF 
	~InParty("Kivan")
	InParty("QI#ZAK")
	See("Kivan")
	!StateCheck("Kivan",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	Global("QI#ZakKivanTalk","GLOBAL",0)~ THEN QI#ZAKB QI#ZakKivanTalk1
	@351
	DO ~SetGlobal("QI#ZakKivanTalk","GLOBAL",1)~
	= @352
	== %KIVAN_BANTER% @353
	== QI#ZAKB @354
	= @355
	= @356
	== %KIVAN_BANTER% @357
	== QI#ZAKB @358
	== %KIVAN_BANTER% @359
	== QI#ZAKB @360
	= @361
EXIT 

//Talk 2
CHAIN IF 
	~InParty("Kivan")
	InParty("QI#ZAK")
	See("QI#ZAK")
	!StateCheck("Kivan",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	Global("QI#ZakKivanTalk","GLOBAL",1)~ THEN %KIVAN_BANTER% QI#ZakKivanTalk2
	@362
	DO ~SetGlobal("QI#ZakKivanTalk","GLOBAL",2)~
	== QI#ZAKB @363
	== %KIVAN_BANTER% @364
	== QI#ZAKB @365
	== %KIVAN_BANTER% @366
	== QI#ZAKB @367
EXIT 

//Talk 3
CHAIN IF 
	~InParty("Kivan")
	InParty("QI#ZAK")
	See("Kivan")
	!StateCheck("Kivan",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	Global("QI#ZakKivanTalk","GLOBAL",2)~ THEN QI#ZAKB QI#ZakKivanTalk3
	@368
	DO ~SetGlobal("QI#ZakKivanTalk","GLOBAL",3)~
	= @369
	= @370
	== %KIVAN_BANTER% @371
	== QI#ZAKB @372
EXIT 

/*****************************************************************************************************************************************************************
										Minsc Banters (3)
*****************************************************************************************************************************************************************/	

// Talk 1
CHAIN IF 
	~InParty("Minsc")
	InParty("QI#ZAK")
	See("Minsc")
	!StateCheck("Minsc",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	Global("QI#ZakMinscTalk","GLOBAL",0)~ THEN QI#ZAKB QI#ZakMinscTalk1
	@373
	DO ~SetGlobal("QI#ZakMinscTalk","GLOBAL",1)~
	== %MINSC_BANTER% @374
	== QI#ZAKB @375
	== %MINSC_BANTER% @376
	== QI#ZAKB @377
	= @378
	== %MINSC_BANTER% @379
	== QI#ZAKB @380
	== %MINSC_BANTER% @381
	== QI#ZAKB @382
EXIT 

// Talk 2
CHAIN IF 
	~InParty("Minsc")
	InParty("QI#ZAK")
	See("QI#ZAK")
	!StateCheck("Minsc",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	Global("QI#ZakMinscTalk","GLOBAL",1)~ THEN %MINSC_BANTER% QI#ZakMinscTalk2
	@383
	DO ~SetGlobal("QI#ZakMinscTalk","GLOBAL",2)~
	== QI#ZAKB @384
	== %MINSC_BANTER% @385
	== QI#ZAKB @386
	= @387
	== %MINSC_BANTER% @388
	= @389
	== %MINSC_BANTER% @390
EXIT 

// Talk 3
CHAIN IF 
	~InParty("Minsc")
	InParty("QI#ZAK")
	See("QI#ZAK")
	!StateCheck("Minsc",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	Global("QI#ZakMinscTalk","GLOBAL",2)~ THEN %MINSC_BANTER% QI#ZakMinscTalk3
	@391
	DO ~SetGlobal("QI#ZakMinscTalk","GLOBAL",3)~
	== QI#ZAKB @392
	== %MINSC_BANTER% @393
	== QI#ZAKB @394
	== %MINSC_BANTER% @395
EXIT 

/*****************************************************************************************************************************************************************
										Montaron Banters (2)
*****************************************************************************************************************************************************************/	

//Talk 1
CHAIN IF 
	~InParty("Montaron")
	InParty("QI#ZAK")
	InParty("Xzar")
	See("Montaron")
	!StateCheck("Montaron",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	Global("QI#ZakMontaronTalk","GLOBAL",0)~ THEN QI#ZAKB QI#ZakMontaronTalk1
	@396
	DO ~SetGlobal("QI#ZakMontaronTalk","GLOBAL",1)~
	== %MONTARON_BANTER% @397
	== QI#ZAKB @398
	= @399
	== %MONTARON_BANTER% @400
	== QI#ZAKB @401
	== %MONTARON_BANTER% @402
EXIT 

//Talk 2
CHAIN IF 
	~InParty("Montaron")
	InParty("QI#ZAK")
	See("QI#ZAK")
	!StateCheck("Montaron",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	Global("QI#ZakMontaronTalk","GLOBAL",1)~ THEN %MONTARON_BANTER% QI#ZakMontaronTalk2
	@403
	DO ~SetGlobal("QI#ZakMontaronTalk","GLOBAL",2)~
	== QI#ZAKB @404
	= @405
	== %MONTARON_BANTER% @406
	= @407
EXIT 

/*****************************************************************************************************************************************************************
										Quayle Banters (3)
*****************************************************************************************************************************************************************/	

//Talk 1
CHAIN IF 
	~InParty("Quayle")
	InParty("QI#ZAK")
	See("Quayle")
	!StateCheck("Quayle",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	Global("QI#ZakQuayleTalk","GLOBAL",0)~ THEN %QUAYLE_BANTER% QI#ZakQuayleTalk1
	@408
	DO ~SetGlobal("QI#ZakQuayleTalk","GLOBAL",1)~
	== QI#ZAKB @409
	== %QUAYLE_BANTER% @410
	= @411
	= @412
	== QI#ZAKB @413
	== %QUAYLE_BANTER% @414
EXIT 

//Talk 2
CHAIN IF 
	~InParty("Quayle")
	InParty("QI#ZAK")
	See("Quayle")
	!StateCheck("Quayle",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	GlobalGT("QI#ZakTalk","GLOBAL",30)
	Global("QI#ZakQuayleTalk","GLOBAL",1)~ THEN %QUAYLE_BANTER% QI#ZakQuayleTalk2
	@415
	DO ~SetGlobal("QI#ZakQuayleTalk","GLOBAL",2)~
	== QI#ZAKB @416
	= @417
	== %QUAYLE_BANTER% @418
	== QI#ZAKB @419
	== %QUAYLE_BANTER% @420
	== QI#ZAKB @421
	== %QUAYLE_BANTER% @422
	== QI#ZAKB @423
EXIT 

//Talk 3
CHAIN IF 
	~InParty("Quayle")
	InParty("QI#ZAK")
	See("Quayle")
	!StateCheck("Quayle",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	Global("QI#ZakQuayleTalk","GLOBAL",2)~ THEN %QUAYLE_BANTER% QI#ZakQuayleTalk3
	@424
	DO ~SetGlobal("QI#ZakQuayleTalk","GLOBAL",3)~
	== QI#ZAKB @425
	== %QUAYLE_BANTER% @426
	== QI#ZAKB @427
	== %QUAYLE_BANTER% @428
	= @429
	== QI#ZAKB @430
	== %QUAYLE_BANTER% @431
	= @432
	= @433
	== QI#ZAKB @434
	== %QUAYLE_BANTER% @435
	== QI#ZAKB @436
	== %QUAYLE_BANTER% @437
	= @438
	== QI#ZAKB @439
EXIT 

/*****************************************************************************************************************************************************************
										Safana Banters (3)
*****************************************************************************************************************************************************************/	

//Talk 1
CHAIN IF 
	~InParty("Safana")
	InParty("QI#ZAK")
	See("QI#ZAK")
	!StateCheck("Safana",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	Global("QI#ZakSafanaTalk","GLOBAL",0)~ THEN %SAFANA_BANTER% QI#ZakSafanaTalk1
	@440
	DO ~SetGlobal("QI#ZakSafanaTalk","GLOBAL",1)~
	== QI#ZAKB @441
	== %SAFANA_BANTER% @442
	= @443
	== QI#ZAKB @444
	== %SAFANA_BANTER% @445
	== QI#ZAKB @446
	== %SAFANA_BANTER% @447
	= @448
EXIT 

//Talk 1
CHAIN IF 
	~InParty("Safana")
	InParty("QI#ZAK")
	See("QI#ZAK")
	!StateCheck("Safana",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	Global("QI#ZakSafanaTalk","GLOBAL",1)~ THEN %SAFANA_BANTER% QI#ZakSafanaTalk2
	@449
	DO ~SetGlobal("QI#ZakSafanaTalk","GLOBAL",2)~
	= @450
	== QI#ZAKB @451
	== %SAFANA_BANTER% @452
	= @453
	== QI#ZAKB @454
	= @455
EXIT 


//Talk 3
CHAIN IF 
	~InParty("Safana")
	InParty("QI#ZAK")
	See("QI#ZAK")
	!StateCheck("Safana",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	GlobalGT("QI#ZakTalk","GLOBAL",30)
	Global("QI#ZakSafanaTalk","GLOBAL",2)~ THEN %SAFANA_BANTER% QI#ZakSafanaTalk3
	@456
	DO ~SetGlobal("QI#ZakSafanaTalk","GLOBAL",3)~
	== QI#ZAKB @457
	== %SAFANA_BANTER% @458
	= @459
	== QI#ZAKB @460
EXIT 

/*****************************************************************************************************************************************************************
										Shar-Teel Banters (2)
*****************************************************************************************************************************************************************/	

//Talk 1
CHAIN IF 
	~InParty("QI#ZAK")
	InParty("Sharteel")
	See("QI#ZAK")
	!StateCheck("Sharteel",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	Global("QI#ZakSharteelTalk1","GLOBAL",0)~ THEN %SHARTEEL_BANTER% QI#ZakSharteelTalk1
	@461
	DO ~SetGlobal("QI#ZakSharteelTalk1","GLOBAL",1)~
	== QI#ZAKB @462
	== %SHARTEEL_BANTER% @463
	== QI#ZAKB @464
	== %SHARTEEL_BANTER% @465
EXIT 

//Talk 2
CHAIN IF 
	~InParty("QI#ZAK")
	InParty("Sharteel")
	See("Sharteel")
	!StateCheck("Sharteel",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	Global("QI#ZakSharteelTalk1","GLOBAL",1)~ THEN QI#ZAKB QI#ZakSharteelTalk2
	@466
	DO ~SetGlobal("QI#ZakSharteelTalk1","GLOBAL",2)~
	== %SHARTEEL_BANTER% @467
	== QI#ZAKB @468
	== %SHARTEEL_BANTER% @469
EXIT 

/*****************************************************************************************************************************************************************
										Skie Banters (3)
*****************************************************************************************************************************************************************/
CHAIN IF 
	~InParty("QI#ZAK")
	InParty("Skie")
	See("Skie")
	!StateCheck("Skie",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	Global("QI#ZakSkieTalk","GLOBAL",0)~ THEN QI#ZAKB QI#ZakSkieTalk1
	@470
	DO ~SetGlobal("QI#ZakSkieTalk","GLOBAL",1)~
	== %SKIE_BANTER% @471
	== QI#ZAKB @472
	= @473
	== %SKIE_BANTER% @474
	== QI#ZAKB @475
	= @476
	= @477
	= @478
	== %SKIE_BANTER% @479
	= @480
	= @481
	== QI#ZAKB @482
	== %SKIE_BANTER% @483
EXIT 

//Talk 2
CHAIN IF 
	~InParty("QI#ZAK")
	InParty("Skie")
	See("Skie")
	!StateCheck("Skie",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	Global("QI#ZakSkieTalk","GLOBAL",1)~ THEN QI#ZAKB QI#ZakSkieTalk2
	@484
	DO ~SetGlobal("QI#ZakSkieTalk","GLOBAL",2)~
	= @485
	== %SKIE_BANTER% @486
	== QI#ZAKB @487
	== %SKIE_BANTER% @488
	== QI#ZAKB @489
	= @490
	= @491
	= @492
	== %SKIE_BANTER% @493
	== QI#ZAKB @494
EXIT 

//Talk 3
CHAIN IF 
	~InParty("QI#ZAK")
	InParty("Skie")
	See("QI#ZAK")
	!StateCheck("Skie",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	Global("QI#ZakSkieTalk","GLOBAL",2)~ THEN %SKIE_BANTER% QI#ZakSkieTalk3
	@495
	DO ~SetGlobal("QI#ZakSkieTalk","GLOBAL",3)~
	== QI#ZAKB @496
	= @497
	== %SKIE_BANTER% @498
	= @499
	== QI#ZAKB @500
	== %SKIE_BANTER% @501
	== QI#ZAKB @502
	== %SKIE_BANTER% @503
	= @504
	== QI#ZAKB @505
	== %SKIE_BANTER% @506
	== QI#ZAKB @507
	= @508
	== %SKIE_BANTER% @509
EXIT 
                                                                                                  
/*****************************************************************************************************************************************************************
										Tiax Banters (2)
*****************************************************************************************************************************************************************/

//Talk 1
CHAIN IF 
	~InParty("QI#ZAK")
	InParty("Tiax")
	See("QI#ZAK")
	!StateCheck("Tiax",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	Global("QI#ZakTiaxTalk","GLOBAL",0)~ THEN %TIAX_BANTER% QI#ZakTiaxTalk1
	@510
	DO ~SetGlobal("QI#ZakTiaxTalk","GLOBAL",1)~
	== QI#ZAKB @511
	= @512 
	== %TIAX_BANTER% @513
	== QI#ZAKB @514
	= @515
	== %TIAX_BANTER% @516
	== QI#ZAKB @517
EXIT

//Talk 2
CHAIN IF 
	~InParty("QI#ZAK")
	InParty("Tiax")
	See("QI#ZAK")
	!StateCheck("Tiax",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	Global("QI#ZakTiaxTalk","GLOBAL",1)~ THEN %TIAX_BANTER% QI#ZakTiaxTalk2
	@518
	DO ~SetGlobal("QI#ZakTiaxTalk","GLOBAL",2)~
	== QI#ZAKB @519
	== %TIAX_BANTER% @520
	== QI#ZAKB @521
	= @522
	== %TIAX_BANTER% @523
	== QI#ZAKB @524
	= @525
	= @526
EXIT

/*****************************************************************************************************************************************************************
										Viconia Banters (2)
*****************************************************************************************************************************************************************/	

//Talk 1
CHAIN IF 
	~InParty("QI#ZAK")
	InParty("Viconia")
	See("QI#ZAK")
	!StateCheck("Viconia",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	Global("QI#ZakViconiaTalk","GLOBAL",0)~ THEN %VICONIA_BANTER% QI#ZakViconiaTalk1
	@527
	DO ~SetGlobal("QI#ZakViconiaTalk","GLOBAL",1)~
	== QI#ZAKB @528
	== %VICONIA_BANTER% @529
	== QI#ZAKB @530
	== %VICONIA_BANTER% @531
	== QI#ZAKB @532
	== %VICONIA_BANTER% @533
	== QI#ZAKB @534
EXIT 


//Talk 2
CHAIN IF 
	~InParty("QI#ZAK")
	InParty("Viconia")
	See("QI#ZAK")
	!StateCheck("Viconia",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	Global("QI#ZakViconiaTalk","GLOBAL",1)~ THEN %VICONIA_BANTER% QI#ZakViconiaTalk2
	@535
	DO ~SetGlobal("QI#ZakViconiaTalk","GLOBAL",2)~
	== QI#ZAKB @536
	= @537
EXIT 

/*****************************************************************************************************************************************************************
										Xan Banters (3)
*****************************************************************************************************************************************************************/

//Talk 1
CHAIN IF 
	~InParty("Xan")
	InParty("QI#ZAK")
	See("QI#ZAK")
	!StateCheck("Xan",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	Global("QI#ZakXanTalk","GLOBAL",0)~ THEN %XAN_BANTER% QI#ZakXanTalk1
	@538
	DO ~SetGlobal("QI#ZakXanTalk","GLOBAL",1)~
	== QI#ZAKB @539
	== %XAN_BANTER% @540
	== QI#ZAKB @541
	= @542
	== %XAN_BANTER% @543
	= @544
	== QI#ZAKB @545
EXIT 

//Talk 2
CHAIN IF 
	~InParty("Xan")
	InParty("QI#ZAK")
	See("QI#ZAK")
	!StateCheck("Xan",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	Global("QI#ZakXanTalk","GLOBAL",1)~ THEN %XAN_BANTER% QI#ZakXanTalk2
	@546
	DO ~SetGlobal("QI#ZakXanTalk","GLOBAL",2)~
	== QI#ZAKB @547
	== %XAN_BANTER% @548
	== QI#ZAKB @549
	= @550
	= @551
	= @552
	== %XAN_BANTER% @553
	== QI#ZAKB @554
EXIT 

//Talk 3
CHAIN IF 
	~InParty("Xan")
	InParty("QI#ZAK")
	See("Xan")
	!StateCheck("Xan",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	Global("QI#ZakXanTalk","GLOBAL",2)
	OR(21)
        AreaCheck("%BaldursGateDocks_JopalinsTavern%")
     	AreaCheck("%Beregost_FeldepostsInn_L1%")
     	AreaCheck("%Beregost_JovialJuggler_L1%")
     	AreaCheck("%Beregost_RedSheaf_L1%")
     	AreaCheck("%Beregost_BurningWizard_L1%")
     	AreaCheck("%EBaldursGate_KeexieTavern_L1%")
     	AreaCheck("%EBaldursGate_ElfsongTavern_L1%")
     	AreaCheck("%EBaldursGate_Inn_L1%")
     	AreaCheck("%FriendlyArmInn_L1%")
     	AreaCheck("%Nashkel_Inn%")
     	AreaCheck("%NBaldursGate_ThreeOldKegs_L1%")
     	AreaCheck("%NEBaldursGate_BlushingMermaid_L1%")
     	AreaCheck("%NEBaldursGate_SplurgingSturgeon_L2%")
     	AreaCheck("%NEBaldursGate_SplurgingSturgeon_L1%")
     	AreaCheck("%NWBaldursGate_Helm&Cloak_L1%")
     	AreaCheck("%NWBaldursGate_Tavern_L1%")
     	AreaCheck("%SEBaldursGate_Inn_L1%")
     	AreaCheck("%SEBaldursGate_Blade&Stars_L1%")
     	AreaCheck("%SWBaldursGate_Tavern_L1%")
     	AreaCheck("%SWBaldursGate_YeOldeInn_L1%")
     	AreaCheck("%UlgothsBeard_Inn%")~ THEN QI#ZAKB QI#ZakXanTalk3
	@555
	DO ~SetGlobal("QI#ZakXanTalk","GLOBAL",3)~
	== %XAN_BANTER% @556
	== QI#ZAKB @557
	= @558
	== %XAN_BANTER% @559
	== QI#ZAKB @560
	== %XAN_BANTER% @561
	== QI#ZAKB @562
	= @563
	== %XAN_BANTER% @564
	== QI#ZAKB @565
	= @566
	== %XAN_BANTER% @567
	= @568
	== QI#ZAKB @569
EXIT 

/*****************************************************************************************************************************************************************
										Xzar Banters (2)
*****************************************************************************************************************************************************************/	

//Talk 1
CHAIN IF 
	~InParty("Xzar")
	InParty("QI#ZAK")
	InParty("Montaron")
	See("Xzar")
	See("Montaron")
	!StateCheck("Montaron",CD_STATE_NOTVALID)
	!StateCheck("Xzar",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0) 
	!See([ENEMY])
	Global("QI#ZakXzarTalk","GLOBAL",0)~ THEN QI#ZAKB QI#ZakXzarTalk1
	@570
	DO ~SetGlobal("QI#ZakXzarTalk","GLOBAL",1)~
	== %XZAR_BANTER% @571
	== %MONTARON_BANTER% @572
	== %XZAR_BANTER% @573
	== QI#ZAKB @574
	= @575
	== %XZAR_BANTER% @576
	= @577
	= @578
	== QI#ZAKB @579
EXIT 

//Talk 2
CHAIN IF 
	~InParty("Xzar")
	InParty("QI#ZAK")
	See("Xzar")
	!StateCheck("Xzar",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0) 
	!See([ENEMY])
	Global("QI#ZakXzarTalk","GLOBAL",1)~ THEN %XZAR_BANTER% QI#ZakXzarTalk2
	@580
	DO ~SetGlobal("QI#ZakXzarTalk","GLOBAL",2)~
	== QI#ZAKB @581
	== %XZAR_BANTER% @582
	== QI#ZAKB @583
	= @584
EXIT 

/*****************************************************************************************************************************************************************
										Yeslick Banters (2)
*****************************************************************************************************************************************************************/	

//Talk 1
CHAIN IF 
	~InParty("QI#ZAK")
	InParty("Yeslick")
	See("QI#ZAK")
	!StateCheck("Yeslick",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	Global("QI#ZakYeslickTalk","GLOBAL",0)
	OR(21)
        AreaCheck("%BaldursGateDocks_JopalinsTavern%")
     	AreaCheck("%Beregost_FeldepostsInn_L1%")
     	AreaCheck("%Beregost_JovialJuggler_L1%")
     	AreaCheck("%Beregost_RedSheaf_L1%")
     	AreaCheck("%Beregost_BurningWizard_L1%")
     	AreaCheck("%EBaldursGate_KeexieTavern_L1%")
     	AreaCheck("%EBaldursGate_ElfsongTavern_L1%")
     	AreaCheck("%EBaldursGate_Inn_L1%")
     	AreaCheck("%FriendlyArmInn_L1%")
     	AreaCheck("%Nashkel_Inn%")
     	AreaCheck("%NBaldursGate_ThreeOldKegs_L1%")
     	AreaCheck("%NEBaldursGate_BlushingMermaid_L1%")
     	AreaCheck("%NEBaldursGate_SplurgingSturgeon_L2%")
     	AreaCheck("%NEBaldursGate_SplurgingSturgeon_L1%")
     	AreaCheck("%NWBaldursGate_Helm&Cloak_L1%")
     	AreaCheck("%NWBaldursGate_Tavern_L1%")
     	AreaCheck("%SEBaldursGate_Inn_L1%")
     	AreaCheck("%SEBaldursGate_Blade&Stars_L1%")
     	AreaCheck("%SWBaldursGate_Tavern_L1%")
     	AreaCheck("%SWBaldursGate_YeOldeInn_L1%")
     	AreaCheck("%UlgothsBeard_Inn%")~ THEN %YESLICK_BANTER% QI#ZakYeslickTalk1
	@585
	DO ~SetGlobal("QI#ZakYeslickTalk","GLOBAL",1)~
	== QI#ZAKB @586
	== %YESLICK_BANTER% @587
	== QI#ZAKB @588
	= @589
	= @590
	== %YESLICK_BANTER% @591
	= @592
	== QI#ZAKB @593
	== %YESLICK_BANTER% @594
EXIT 

//Talk 2
CHAIN IF 
	~InParty("QI#ZAK")
	InParty("Yeslick")
	See("Yeslick")
	!StateCheck("Yeslick",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	Global("QI#ZakYeslickTalk","GLOBAL",1)~ THEN QI#ZAKB QI#ZakYeslickTalk2
	@595
	DO ~SetGlobal("QI#ZakYeslickTalk","GLOBAL",2)~
	== %YESLICK_BANTER% @596
	== QI#ZAKB @597
	== %YESLICK_BANTER% @598
EXIT 