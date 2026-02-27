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
	Global("QI#ZakAjantisTalk","GLOBAL",0)~ THEN BAJANT QI#ZakAjantisTalk1
	@0
	DO ~SetGlobal("QI#ZakAjantisTalk","GLOBAL",1)~
	== QI#ZAKB @1
	= @2
	= @3
	== BAJANT @4
	= @5
	== QI#ZAKB @6
	== BAJANT @7
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
	== BAJANT @11
	== QI#ZAKB @12
	== BAJANT @13
	== QI#ZAKB @14
	= @15
	== BAJANT @16
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
	Global("QI#ZakAjantisTalk","GLOBAL",2)~ THEN BAJANT QI#ZakAjantisTalk3
	@18
	DO ~SetGlobal("QI#ZakAjantisTalk","GLOBAL",3)~
	== QI#ZAKB @19
	== BAJANT @20
	== QI#ZAKB @21
	= @22
	== BAJANT @23
	== QI#ZAKB @24
	== BAJANT @25
	== QI#ZAKB @26
	== BAJANT @27
	= @28
	== QI#ZAKB @29
	= @30
	== BAJANT @31
	== QI#ZAKB @32
	== BAJANT @33
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
	== BALORA @36
	= @37
	== QI#ZAKB @38
	== BALORA @39
	= @40
	= @41
	== QI#ZAKB @42
	== BALORA @43
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
	== BALORA @46
	== QI#ZAKB @47
	== BALORA @48
	= @49
	== QI#ZAKB @50
	== BALORA @51
	== QI#ZAKB @52
	== BALORA @53
	= @54
	== QI#ZAKB @55
	== BALORA @56
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
	Global("QI#ZakAloraTalk","GLOBAL",2)~ THEN BALORA QI#ZakAloraTalk3
	@57
	DO ~SetGlobal("QI#ZakAloraTalk","GLOBAL",3)~
	== QI#ZAKB @58
	== BALORA @59
	= @60
	= @61
	== QI#ZAKB @62
	== BALORA @63
	== QI#ZAKB @64
	= @65
	= @66
	== BALORA @67
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
	Global("QI#ZakAloraTalk","GLOBAL",3)~ THEN BALORA QI#ZakAloraTalk3
	@70
	DO ~SetGlobal("QI#ZakAloraTalk","GLOBAL",4)~
	== QI#ZAKB @71
	== BALORA @72
	== QI#ZAKB @73
	= @74
	== BALORA @75
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
	== BBRANW @78
	== QI#ZAKB @79
	= @80
	= @81
	== BBRANW @82
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
	Global("QI#ZakBranwenTalk","GLOBAL",1)~ THEN BBRANW QI#ZakBranwenTalk2
	@84
	DO ~SetGlobal("QI#ZakBranwenTalk","GLOBAL",2)~
	== QI#ZAKB @85
	= @86
	== BBRANW @87
	== QI#ZAKB @88
	== BBRANW @89
	== QI#ZAKB @90
	== BBRANW @91
	= @92
	= @93
	= @94
	= @95
	= @96
	== QI#ZAKB 97
	== BBRANW @98
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
	== BBRANW @102
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
	== BCORAN @105
	= @106
	== QI#ZAKB @107
	= @108
	== BCORAN @109
	== QI#ZAKB @110
	== BCORAN @111
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
	Global("QI#ZakCoranTalk","GLOBAL",1)~ THEN BCORAN QI#ZakCoranTalk2
	@114
	DO ~SetGlobal("QI#ZakCoranTalk","GLOBAL",2)~
	== QI#ZAKB @115
	== BCORAN @135
	= @116
	== QI#ZAKB @117
	= @118
	== BCORAN @119
	== QI#ZAKB @120
	== BCORAN @121
	== QI#ZAKB @122
	= @123
	== BCORAN @124
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
	Global("QI#ZakCoranTalk","GLOBAL",2)~ THEN BCORAN QI#ZakCoranTalk3
	@126
	DO ~SetGlobal("QI#ZakCoranTalk","GLOBAL",3)~
	== QI#ZAKB @127
	== BCORAN @128
	== QI#ZAKB @129
	= @130
	== BCORAN @131
	== QI#ZAKB @132
	== BCORAN @133
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
	== BDYNAH @137
	== QI#ZAKB @138
	= @139
	== BDYNAH @140
	== QI#ZAKB @141
	== BDYNAH @142
	== QI#ZAKB @143
	= @144
	= @145
	== BDYNAH @146
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
	== BDYNAH @149
	== QI#ZAKB @150
	== BDYNAH @151
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
	Global("QI#ZakEdwinTalk","GLOBAL",0)~ THEN BEDWIN QI#ZakEdwinTalk1
	@154
	DO ~SetGlobal("QI#ZakEdwinTalk","GLOBAL",1)~ 
	== QI#ZAKB @155
	= @156
	== BEDWIN @157
	== QI#ZAKB @158
	= @159
	== BEDWIN @160
	== QI#ZAKB @161
	== BEDWIN @162
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
	== BEDWIN @165
	== QI#ZAKB @166
	= @167
	== BEDWIN @168
	== QI#ZAKB @169
	== BEDWIN @170
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
	== BEDWIN @173
	== QI#ZAKB @174
	== BEDWIN @175
	== QI#ZAKB @176
	= @177
	= @178
	== BEDWIN @179
	== QI#ZAKB @180
	== BEDWIN @181
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
	Global("QI#ZakEldothTalk","GLOBAL",0)~ THEN BELDOT QI#ZakEldothTalk1
	@184
	DO ~SetGlobal("QI#ZakEldothTalk","GLOBAL",1)~
	== QI#ZAKB @185
	== BELDOT @186
	== QI#ZAKB @187
	== BELDOT @188
	== QI#ZAKB @189
	== BELDOT @190
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
	Global("QI#ZakEldothTalk","GLOBAL",1)~ THEN BELDOT QI#ZakEldothTalk2
	@194
	DO ~SetGlobal("QI#ZakEldothTalk","GLOBAL",2)~
	= @195
	== QI#ZAKB @196
	== BELDOT @197
	= @198
	== QI#ZAKB @199
	= @200
	== BELDOT @201
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
	Global("QI#ZakEldothTalk","GLOBAL",2)~ THEN BELDOT QI#ZakEldothTalk3
	@203
	DO ~SetGlobal("QI#ZakEldothTalk","GLOBAL",3)~
	== QI#ZAKB @204
	== BELDOT @205
	= @206
	== QI#ZAKB @207
	== BELDOT @208
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
	Global("QI#ZakEldothTalk","GLOBAL",3)~ THEN BELDOT QI#ZakEldothTalk4
	@211
	DO ~SetGlobal("QI#ZakEldothTalk","GLOBAL",4)~
	== QI#ZAKB @212
	== BELDOT @213
	== QI#ZAKB @214
	== BELDOT @215
	= @216
	== QI#ZAKB @217
	== BELDOT @218
	= @219
	== QI#ZAKB @220
	== BELDOT @221 
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
	== BFALDO @223
	== QI#ZAKB @224
	== BFALDO @225
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
	== BFALDO @228
	== QI#ZAKB @229
	== BFALDO @230
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
	== BFALDO @234
	== QI#ZAKB @235
	== BFALDO @236
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
	== BGARRI @239
	== QI#ZAKB @240
	== BGARRI @241
	== QI#ZAKB @242
	== BGARRI @243
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
	Global("QI#ZakGarrickTalk","GLOBAL",1)~ THEN BGARRI QI#ZakGarrickTalk2
	@245
	DO ~SetGlobal("QI#ZakGarrickTalk","GLOBAL",2)~
	== QI#ZAKB @246
	=  @247
	== BGARRI @248
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
	== BGARRI @251
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
	== BGARRI @254
	= @255
	== QI#ZAKB @256
EXIT 

/*****************************************************************************************************************************************************************
										Imoen Banters (4)
*****************************************************************************************************************************************************************/	

//Talk 1
CHAIN IF 
	~InParty("Imoen")
	InParty("QI#ZAK")
	See("Imoen")
	!StateCheck("Imoen",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	Global("QI#ZakImoenTalk","GLOBAL",0)~ THEN QI#ZAKB QI#ZakImoenTalk1
	@257
	DO ~SetGlobal("QI#ZakImoenTalk","GLOBAL",1)~
	== BIMOEN @258
	== QI#ZAKB @259
	= @260
	== BIMOEN @261
	== QI#ZAKB @262
EXIT 

//Talk 2
CHAIN IF 
	~InParty("Imoen")
	InParty("QI#ZAK")
	See("QI#ZAK")
	!StateCheck("Imoen",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	Global("QI#ZakImoenTalk","GLOBAL",1)
	OR(21)
        AreaCheck("AR1215") //BaldursGateDocks_JopalinsTavern
     	AreaCheck("AR3351") //Beregost_FeldepostsInn_L1
     	AreaCheck("AR3304") //Beregost_JovialJuggler_L1
     	AreaCheck("AR3357") //Beregost_RedSheaf_L1
     	AreaCheck("AR3307") //Beregost_BurningWizard_L1
     	AreaCheck("AR0154") //EBaldursGate_KeexieTavern_L1
     	AreaCheck("AR0705") //EBaldursGate_ElfsongTavern_L1
     	AreaCheck("AR0807") //EBaldursGate_Inn_L1
     	AreaCheck("AR2301") //Friendly Arm Inn - L1
     	AreaCheck("AR4801") //Nashkel_Inn
     	AreaCheck("AR0119") //NBaldursGate_ThreeOldKegs_L1
     	AreaCheck("AR0114") //NEBaldursGate_BlushingMermaid_L1
     	AreaCheck("AR0104") //NEBaldursGate_SplurgingSturgeon_L2
     	AreaCheck("AR0103") //NEBaldursGate_SplurgingSturgeon_L1
     	AreaCheck("AR0116") //NWBaldursGate_Helm&Cloak_L1
     	AreaCheck("AR0165") //NWBaldursGate_Tavern_L1
     	AreaCheck("AR1306") //SEBaldursGate_Inn_L1
     	AreaCheck("AR0105") //SEBaldursGate_Blade&Stars_L1
     	AreaCheck("AR1109") //SWBaldursGate_Tavern_L1
     	AreaCheck("AR1113") //SWBaldursGate_YeOldeInn_L1
     	AreaCheck("AR1001") //UlgothsBeard_Inn~ THEN BIMOEN QI#ZakImoenTalk2
	@263
	DO ~SetGlobal("QI#ZakImoenTalk","GLOBAL",2)~
	== QI#ZAKB @264
	== BIMOEN @265
	== QI#ZAKB @266
	= @267
	== BIMOEN @268
	== QI#ZAKB @269
	== BIMOEN @270
	== QI#ZAKB @271
	= @272
	== BIMOEN @273
	== QI#ZAKB @274
	== BIMOEN @275
EXIT 

//Talk 3
CHAIN IF 
	~InParty("Imoen")
	InParty("QI#ZAK")
	See("Imoen")
	!StateCheck("Imoen",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	Global("QI#ZakImoenTalk","GLOBAL",2)
	OR(21)
        AreaCheck("AR1215") //BaldursGateDocks_JopalinsTavern
     	AreaCheck("AR3351") //Beregost_FeldepostsInn_L1
     	AreaCheck("AR3304") //Beregost_JovialJuggler_L1
     	AreaCheck("AR3357") //Beregost_RedSheaf_L1
     	AreaCheck("AR3307") //Beregost_BurningWizard_L1
     	AreaCheck("AR0154") //EBaldursGate_KeexieTavern_L1
     	AreaCheck("AR0705") //EBaldursGate_ElfsongTavern_L1
     	AreaCheck("AR0807") //EBaldursGate_Inn_L1
     	AreaCheck("AR2301") //Friendly Arm Inn - L1
     	AreaCheck("AR4801") //Nashkel_Inn
     	AreaCheck("AR0119") //NBaldursGate_ThreeOldKegs_L1
     	AreaCheck("AR0114") //NEBaldursGate_BlushingMermaid_L1
     	AreaCheck("AR0104") //NEBaldursGate_SplurgingSturgeon_L2
     	AreaCheck("AR0103") //NEBaldursGate_SplurgingSturgeon_L1
     	AreaCheck("AR0116") //NWBaldursGate_Helm&Cloak_L1
     	AreaCheck("AR0165") //NWBaldursGate_Tavern_L1
     	AreaCheck("AR1306") //SEBaldursGate_Inn_L1
     	AreaCheck("AR0105") //SEBaldursGate_Blade&Stars_L1
     	AreaCheck("AR1109") //SWBaldursGate_Tavern_L1
     	AreaCheck("AR1113") //SWBaldursGate_YeOldeInn_L1
     	AreaCheck("AR1001") //UlgothsBeard_Inn~ THEN BIMOEN QI#ZakImoenTalk3
	@276
	DO ~SetGlobal("QI#ZakImoenTalk","GLOBAL",3)~
	== QI#ZAKB @277
	== BIMOEN @278
	== QI#ZAKB @279
	== BIMOEN @280
	== QI#ZAKB @281
	= @282
	= @283
	== BIMOEN @284
	== QI#ZAKB @285
	== BIMOEN @286
EXIT 

//Talk 4
CHAIN IF 
	~InParty("Imoen")
	InParty("QI#ZAK")
	See("Imoen")
	!StateCheck("Imoen",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	GlobalGT("QI#ZakTalk","GLOBAL",30)
	Global("QI#ZakImoenTalk","GLOBAL",3)~ THEN BIMOEN QI#ZakImoenTalk4
	@287
	DO ~SetGlobal("QI#ZakImoenTalk","GLOBAL",4)~
	== QI#ZAKB @288
	== BIMOEN @289
	== QI#ZAKB @290
	== BIMOEN @291
	== QI#ZAKB @292
	== BIMOEN @293
	== QI#ZAKB @294
	== BIMOEN @295
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
	== BJAHEI @298
	== QI#ZAKB @299
	= @300
	== BJAHEI @301
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
	== BJAHEI @304
	== QI#ZAKB @305
	= @306
	= @307
	= @308
	== BJAHEI @309
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
	== BJAHEI @312
	== QI#ZAKB @313
	= @314
	= @315
	== BJAHEI @316
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
	== BKAGAI @319
	== QI#ZAKB @320
	= @321
	== BKAGAI @322
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
	== BKAGAI @324
	== QI#ZAKB @325
	== BKAGAI @326
	== QI#ZAKB @327
	== BKAGAI @328
	== QI#ZAKB @329
	== BKAGAI @330
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
	== BKHALI @333
	== QI#ZAKB @334
	= @335
	== BKHALI @336
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
	Global("QI#ZakKhalidTalk","GLOBAL",1)~ THEN BKHALI QI#ZakKhalidTalk2
	@339
	DO ~SetGlobal("QI#ZakKhalidTalk","GLOBAL",2)~
	= @340
	== QI#ZAKB @341
	== BKHALI @342
	== QI#ZAKB @343
	= @344
	== BKHALI @345
	== QI#ZAKB @346
	= @347
	= @348
	== BKHALI @349
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
	== BKIVAN @353
	== QI#ZAKB @354
	= @355
	= @356
	== BKIVAN @357
	== QI#ZAKB @358
	== BKIVAN @359
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
	Global("QI#ZakKivanTalk","GLOBAL",1)~ THEN BKIVAN QI#ZakKivanTalk2
	@362
	DO ~SetGlobal("QI#ZakKivanTalk","GLOBAL",2)~
	== QI#ZAKB @363
	== BKIVAN @364
	== QI#ZAKB @365
	== BKIVAN @366
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
	== BKIVAN @371
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
	== BMINSC @374
	== QI#ZAKB @375
	== BMINSC @376
	== QI#ZAKB @377
	= @378
	== BMINSC @379
	== QI#ZAKB @380
	== BMINSC @381
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
	Global("QI#ZakMinscTalk","GLOBAL",1)~ THEN BMINSC QI#ZakMinscTalk2
	@383
	DO ~SetGlobal("QI#ZakMinscTalk","GLOBAL",2)~
	== QI#ZAKB @384
	== BMINSC @385
	== QI#ZAKB @386
	= @387
	== BMINSC @388
	= @389
	== BMINSC @390
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
	Global("QI#ZakMinscTalk","GLOBAL",2)~ THEN BMINSC QI#ZakMinscTalk3
	@391
	DO ~SetGlobal("QI#ZakMinscTalk","GLOBAL",3)~
	== QI#ZAKB @392
	== BMINSC @393
	== QI#ZAKB @394
	== BMINSC @395
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
	== BMONTA @397
	== QI#ZAKB @398
	= @399
	== BMONTA @400
	== QI#ZAKB @401
	== BMONTA @402
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
	Global("QI#ZakMontaronTalk","GLOBAL",1)~ THEN BMONTA QI#ZakMontaronTalk2
	@403
	DO ~SetGlobal("QI#ZakMontaronTalk","GLOBAL",2)~
	== QI#ZAKB @404
	= @405
	== BMONTA @406
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
	Global("QI#ZakQuayleTalk","GLOBAL",0)~ THEN BQUAYL QI#ZakQuayleTalk1
	@408
	DO ~SetGlobal("QI#ZakQuayleTalk","GLOBAL",1)~
	== QI#ZAKB @409
	== BQUAYL @410
	= @411
	= @412
	== QI#ZAKB @413
	== BQUAYL @414
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
	Global("QI#ZakQuayleTalk","GLOBAL",1)~ THEN BQUAYL QI#ZakQuayleTalk2
	@415
	DO ~SetGlobal("QI#ZakQuayleTalk","GLOBAL",2)~
	== QI#ZAKB @416
	= @417
	== BQUAYL @418
	== QI#ZAKB @419
	== BQUAYL @420
	== QI#ZAKB @421
	== BQUAYL @422
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
	Global("QI#ZakQuayleTalk","GLOBAL",2)~ THEN BQUAYL QI#ZakQuayleTalk3
	@424
	DO ~SetGlobal("QI#ZakQuayleTalk","GLOBAL",3)~
	== QI#ZAKB @425
	== BQUAYL @426
	== QI#ZAKB @427
	== BQUAYL @428
	= @429
	== QI#ZAKB @430
	== BQUAYL @431
	= @432
	= @433
	== QI#ZAKB @434
	== BQUAYL @435
	== QI#ZAKB @436
	== BQUAYL @437
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
	Global("QI#ZakSafanaTalk","GLOBAL",0)~ THEN BSAFAN QI#ZakSafanaTalk1
	@440
	DO ~SetGlobal("QI#ZakSafanaTalk","GLOBAL",1)~
	== QI#ZAKB @441
	== BSAFAN @442
	= @443
	== QI#ZAKB @444
	== BSAFAN @445
	== QI#ZAKB @446
	== BSAFAN @447
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
	Global("QI#ZakSafanaTalk","GLOBAL",1)~ THEN BSAFAN QI#ZakSafanaTalk2
	@449
	DO ~SetGlobal("QI#ZakSafanaTalk","GLOBAL",2)~
	= @450
	== QI#ZAKB @451
	== BSAFAN @452
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
	Global("QI#ZakSafanaTalk","GLOBAL",2)~ THEN BSAFAN QI#ZakSafanaTalk3
	@456
	DO ~SetGlobal("QI#ZakSafanaTalk","GLOBAL",3)~
	== QI#ZAKB @457
	== BSAFAN @458
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
	Global("QI#ZakSharteelTalk1","GLOBAL",0)~ THEN BSHART QI#ZakSharteelTalk1
	@461
	DO ~SetGlobal("QI#ZakSharteelTalk1","GLOBAL",1)~
	== QI#ZAKB @462
	== BSHART @463
	== QI#ZAKB @464
	== BSHART @465
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
	== BSHART @467
	== QI#ZAKB @468
	== BSHART @469
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
	== BSKIE @471
	== QI#ZAKB @472
	= @473
	== BSKIE @474
	== QI#ZAKB @475
	= @476
	= @477
	= @478
	== BSKIE @479
	= @480
	= @481
	== QI#ZAKB @482
	== BSKIE @483
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
	== BSKIE @486
	== QI#ZAKB @487
	== BSKIE @488
	== QI#ZAKB @489
	= @490
	= @491
	= @492
	== BSKIE @493
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
	Global("QI#ZakSkieTalk","GLOBAL",2)~ THEN BSKIE QI#ZakSkieTalk3
	@495
	DO ~SetGlobal("QI#ZakSkieTalk","GLOBAL",3)~
	== QI#ZAKB @496
	= @497
	== BSKIE @498
	= @499
	== QI#ZAKB @500
	== BSKIE @501
	== QI#ZAKB @502
	== BSKIE @503
	= @504
	== QI#ZAKB @505
	== BSKIE @506
	== QI#ZAKB @507
	= @508
	== BSKIE @509
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
	Global("QI#ZakTiaxTalk","GLOBAL",0)~ THEN BTIAX QI#ZakTiaxTalk1
	@510
	DO ~SetGlobal("QI#ZakTiaxTalk","GLOBAL",1)~
	== QI#ZAKB @511
	= @512 
	== BTIAX @513
	== QI#ZAKB @514
	= @515
	== BTIAX @516
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
	Global("QI#ZakTiaxTalk","GLOBAL",1)~ THEN BTIAX QI#ZakTiaxTalk2
	@518
	DO ~SetGlobal("QI#ZakTiaxTalk","GLOBAL",2)~
	== QI#ZAKB @519
	== BTIAX @520
	== QI#ZAKB @521
	= @522
	== BTIAX @523
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
	Global("QI#ZakViconiaTalk","GLOBAL",0)~ THEN BVICON QI#ZakViconiaTalk1
	@527
	DO ~SetGlobal("QI#ZakViconiaTalk","GLOBAL",1)~
	== QI#ZAKB @528
	== BVICON @529
	== QI#ZAKB @530
	== BVICON @531
	== QI#ZAKB @532
	== BVICON @533
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
	Global("QI#ZakViconiaTalk","GLOBAL",1)~ THEN BVICON QI#ZakViconiaTalk2
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
	Global("QI#ZakXanTalk","GLOBAL",0)~ THEN BXANNN QI#ZakXanTalk1
	@538
	DO ~SetGlobal("QI#ZakXanTalk","GLOBAL",1)~
	== QI#ZAKB @539
	== BXANNN @540
	== QI#ZAKB @541
	= @542
	== BXANNN @543
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
	Global("QI#ZakXanTalk","GLOBAL",1)~ THEN BXANNN QI#ZakXanTalk2
	@546
	DO ~SetGlobal("QI#ZakXanTalk","GLOBAL",2)~
	== QI#ZAKB @547
	== BXANNN @548
	== QI#ZAKB @549
	= @550
	= @551
	= @552
	== BXANNN @553
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
        AreaCheck("AR1215") //BaldursGateDocks_JopalinsTavern
     	AreaCheck("AR3351") //Beregost_FeldepostsInn_L1
     	AreaCheck("AR3304") //Beregost_JovialJuggler_L1
     	AreaCheck("AR3357") //Beregost_RedSheaf_L1
     	AreaCheck("AR3307") //Beregost_BurningWizard_L1
     	AreaCheck("AR0154") //EBaldursGate_KeexieTavern_L1
     	AreaCheck("AR0705") //EBaldursGate_ElfsongTavern_L1
     	AreaCheck("AR0807") //EBaldursGate_Inn_L1
     	AreaCheck("AR2301") //Friendly Arm Inn - L1
     	AreaCheck("AR4801") //Nashkel_Inn
     	AreaCheck("AR0119") //NBaldursGate_ThreeOldKegs_L1
     	AreaCheck("AR0114") //NEBaldursGate_BlushingMermaid_L1
     	AreaCheck("AR0104") //NEBaldursGate_SplurgingSturgeon_L2
     	AreaCheck("AR0103") //NEBaldursGate_SplurgingSturgeon_L1
     	AreaCheck("AR0116") //NWBaldursGate_Helm&Cloak_L1
     	AreaCheck("AR0165") //NWBaldursGate_Tavern_L1
     	AreaCheck("AR1306") //SEBaldursGate_Inn_L1
     	AreaCheck("AR0105") //SEBaldursGate_Blade&Stars_L1
     	AreaCheck("AR1109") //SWBaldursGate_Tavern_L1
     	AreaCheck("AR1113") //SWBaldursGate_YeOldeInn_L1
     	AreaCheck("AR1001") //UlgothsBeard_Inn~ THEN QI#ZAKB QI#ZakXanTalk3
	@555
	DO ~SetGlobal("QI#ZakXanTalk","GLOBAL",3)~
	== BXANNN @556
	== QI#ZAKB @557
	= @558
	== BXANNN @559
	== QI#ZAKB @560
	== BXANNN @561
	== QI#ZAKB @562
	= @563
	== BXANNN @564
	== QI#ZAKB @565
	= @566
	== BXANNN @567
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
	== BXZAR @571
	== BMONTA @572
	== BXZAR @573
	== QI#ZAKB @574
	= @575
	== BXZAR @576
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
	Global("QI#ZakXzarTalk","GLOBAL",1)~ THEN BXZAR QI#ZakXzarTalk2
	@580
	DO ~SetGlobal("QI#ZakXzarTalk","GLOBAL",2)~
	== QI#ZAKB @581
	== BXZAR @582
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
        AreaCheck("AR1215") //BaldursGateDocks_JopalinsTavern
     	AreaCheck("AR3351") //Beregost_FeldepostsInn_L1
     	AreaCheck("AR3304") //Beregost_JovialJuggler_L1
     	AreaCheck("AR3357") //Beregost_RedSheaf_L1
     	AreaCheck("AR3307") //Beregost_BurningWizard_L1
     	AreaCheck("AR0154") //EBaldursGate_KeexieTavern_L1
     	AreaCheck("AR0705") //EBaldursGate_ElfsongTavern_L1
     	AreaCheck("AR0807") //EBaldursGate_Inn_L1
     	AreaCheck("AR2301") //Friendly Arm Inn - L1
     	AreaCheck("AR4801") //Nashkel_Inn
     	AreaCheck("AR0119") //NBaldursGate_ThreeOldKegs_L1
     	AreaCheck("AR0114") //NEBaldursGate_BlushingMermaid_L1
     	AreaCheck("AR0104") //NEBaldursGate_SplurgingSturgeon_L2
     	AreaCheck("AR0103") //NEBaldursGate_SplurgingSturgeon_L1
     	AreaCheck("AR0116") //NWBaldursGate_Helm&Cloak_L1
     	AreaCheck("AR0165") //NWBaldursGate_Tavern_L1
     	AreaCheck("AR1306") //SEBaldursGate_Inn_L1
     	AreaCheck("AR0105") //SEBaldursGate_Blade&Stars_L1
     	AreaCheck("AR1109") //SWBaldursGate_Tavern_L1
     	AreaCheck("AR1113") //SWBaldursGate_YeOldeInn_L1
     	AreaCheck("AR1001") //UlgothsBeard_Inn~ THEN BYESLI QI#ZakYeslickTalk1
	@585
	DO ~SetGlobal("QI#ZakYeslickTalk","GLOBAL",1)~
	== QI#ZAKB @586
	== BYESLI @587
	== QI#ZAKB @588
	= @589
	= @590
	== BYESLI @591
	= @592
	== QI#ZAKB @593
	== BYESLI @594
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
	== BYESLI @596
	== QI#ZAKB @597
	== BYESLI @598
EXIT 