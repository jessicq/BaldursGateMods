BEGIN QI#ZAKJ

/**************************************************************************************************
			Interjections
**************************************************************************************************/

//Alyth
I_C_T ALYTH 3 QI#ZakAlyth1
== QI#ZAKJ IF ~InParty("QI#ZAK") InMyArea("QI#ZAK") !StateCheck("QI#ZAK",CD_STATE_NOTVALID)~ THEN 
@0
END

//Bart10
I_C_T BART10 0 QI#ZakBart1
== QI#ZAKJ IF ~InParty("QI#ZAK") InMyArea("QI#ZAK") !StateCheck("QI#ZAK",CD_STATE_NOTVALID)~ THEN 
@1
END

//Brielbara
I_C_T BRIELB 1 QI#ZakBriel1
== QI#ZAKJ IF ~InParty("QI#ZAK") InMyArea("QI#ZAK") !StateCheck("QI#ZAK",CD_STATE_NOTVALID)~ THEN 
@2
END

//Yeslick
I_C_T BYESLI 2 QI#ZakYeslick1
== QI#ZAKJ IF ~InParty("QI#ZAK") InMyArea("QI#ZAK") !StateCheck("QI#ZAK",CD_STATE_NOTVALID)~ THEN 
@3
END

//Kylee
I_C_T KYLEE 0 QI#ZakKylee1
== QI#ZAKJ IF ~InParty("QI#ZAK") InMyArea("QI#ZAK") !StateCheck("QI#ZAK",CD_STATE_NOTVALID)~ THEN 
@4
END

//Laerta
I_C_T LAERTA 1 QI#ZakLaerta1
== QI#ZAKJ IF ~InParty("QI#ZAK") InMyArea("QI#ZAK") !StateCheck("QI#ZAK",CD_STATE_NOTVALID)~ THEN 
@5
END	

//Lahl
I_C_T LAHL 1 QI#ZakLahl1
== QI#ZAKJ IF ~InParty("QI#ZAK") InMyArea("QI#ZAK") !StateCheck("QI#ZAK",CD_STATE_NOTVALID)~ THEN 
@6
END

//Larry
I_C_T LARRY 0 QI#ZakLarry1
== QI#ZAKJ IF ~InParty("QI#ZAK") InMyArea("QI#ZAK") !StateCheck("QI#ZAK",CD_STATE_NOTVALID)~ THEN 
@7
END

//Maple
I_C_T MAPLE 2 QI#ZakMaple1
== QI#ZAKJ IF ~InParty("QI#ZAK") InMyArea("QI#ZAK") !StateCheck("QI#ZAK",CD_STATE_NOTVALID)~ THEN 
@8
END

//Safana
I_C_T SAFANA 2 QI#ZakSafana1
== QI#ZAKJ IF ~InParty("QI#ZAK") InMyArea("QI#ZAK") !StateCheck("QI#ZAK",CD_STATE_NOTVALID)~ THEN 
@9
END

//Sailal
INTERJECT SAILAL 0 QI#ZakSailal1
== QI#ZAKJ IF ~InParty("QI#ZAK") InMyArea("QI#ZAK") !StateCheck("QI#ZAK",CD_STATE_NOTVALID)~ THEN 
@10
= @11
== SAILAL @12
== QI#ZAKJ @13
= @14
EXIT 

//Saildan
I_C_T SAILDAN 0 QI#ZakSaildan1
== QI#ZAKJ IF ~InParty("QI#ZAK") InMyArea("QI#ZAK") !StateCheck("QI#ZAK",CD_STATE_NOTVALID)~ THEN 
@15
= @16
END

//Scar
I_C_T SCAR 4 QI#ZakScar1
== QI#ZAKJ IF ~InParty("QI#ZAK") InMyArea("QI#ZAK") !StateCheck("QI#ZAK",CD_STATE_NOTVALID)~ THEN 
@17
END

//Scotty
I_C_T SCOTTY 1 QI#ZakScotty1
== QI#ZAKJ IF ~InParty("QI#ZAK") InMyArea("QI#ZAK") !StateCheck("QI#ZAK",CD_STATE_NOTVALID)~ THEN 
@18
END

//Sendai
I_C_T SENDAI 3 QI#ZakSendai1
== QI#ZAKJ IF ~InParty("QI#ZAK") InMyArea("QI#ZAK") !StateCheck("QI#ZAK",CD_STATE_NOTVALID)~ THEN 
@19
END

//Slythe
I_C_T SLYTHE 3 QI#ZakSlythe1
== QI#ZAKJ IF ~InParty("QI#ZAK") InMyArea("QI#ZAK") !StateCheck("QI#ZAK",CD_STATE_NOTVALID)~ THEN 
@20
END

//Narlen
I_C_T NARLEN 6 QI#ZakNarlen1
== QI#ZAKJ IF ~InParty("QI#ZAK") InMyArea("QI#ZAK") !StateCheck("QI#ZAK",CD_STATE_NOTVALID)~ THEN 
@21
= @22
END

//Nikola
I_C_T NIKOLA 0 QI#ZakNikola1
== QI#ZAKJ IF ~InParty("QI#ZAK") InMyArea("QI#ZAK") !StateCheck("QI#ZAK",CD_STATE_NOTVALID)~ THEN 
@23
END

//Spanky
I_C_T SPANKY 0 QI#ZakSpanky1
== QI#ZAKJ IF ~InParty("QI#ZAK") InMyArea("QI#ZAK") !StateCheck("QI#ZAK",CD_STATE_NOTVALID)~ THEN 
@24
== SPANKY @25
== QI#ZAKJ @26
END

//Ssungu
I_C_T SSUNGU 1 QI#ZaSsungu1
== QI#ZAKJ IF ~InParty("QI#ZAK") InMyArea("QI#ZAK") !StateCheck("QI#ZAK",CD_STATE_NOTVALID)~ THEN 
@27
END

//Stephan
I_C_T STEPHA 0 QI#ZakStephan1
== QI#ZAKJ IF ~InParty("QI#ZAK") InMyArea("QI#ZAK") !StateCheck("QI#ZAK",CD_STATE_NOTVALID)~ THEN 
@28
== STEPHA @29
END

//Ocelli
I_C_T OCELLI 1 QI#ZakOcelli1
== QI#ZAKJ IF ~InParty("QI#ZAK") InMyArea("QI#ZAK") !StateCheck("QI#ZAK",CD_STATE_NOTVALID)~ THEN 
@30
== OCELLI @31
END

//Waiter
I_C_T WAITER 0 QI#ZakWaiter1
== QI#ZAKJ IF ~InParty("QI#ZAK") InMyArea("QI#ZAK") !StateCheck("QI#ZAK",CD_STATE_NOTVALID)~ THEN 
@32
== WAITER @33
== QI#ZAKJ @34
END

//WARRID
I_C_T WARRID 1 QI#ZakWarrid1
== QI#ZAKJ IF ~InParty("QI#ZAK") InMyArea("QI#ZAK") !StateCheck("QI#ZAK",CD_STATE_NOTVALID)~ THEN 
@35
= @36
END

//William
I_C_T WILLIA 4 QI#ZakWilliam1
== QI#ZAKJ IF ~InParty("QI#ZAK") InMyArea("QI#ZAK") !StateCheck("QI#ZAK",CD_STATE_NOTVALID)~ THEN
@37
END

//Zeke
I_C_T ZEKE 1 QI#ZakZeke1
== QI#ZAKJ IF ~InParty("QI#ZAK") InMyArea("QI#ZAK") !StateCheck("QI#ZAK",CD_STATE_NOTVALID)~ THEN
@38
= @39
END

//Zombie
I_C_T ZOMBIE 0 QI#ZakZombie1
== QI#ZAKJ IF ~InParty("QI#ZAK") InMyArea("QI#ZAK") !StateCheck("QI#ZAK",CD_STATE_NOTVALID)~THEN 
@40
END

//Wiven
I_C_T WIVEN 0 QI#ZakWiven1
== QI#ZAKJ IF ~InParty("QI#ZAK") InMyArea("QI#ZAK") !StateCheck("QI#ZAK",CD_STATE_NOTVALID)~ THEN 
@41
= @42
== WIVEN @43
END

//Wenric
I_C_T WENRIC 0 QI#ZakWenric1
== QI#ZAKJ IF ~InParty("QI#ZAK") InMyArea("QI#ZAK") !StateCheck("QI#ZAK",CD_STATE_NOTVALID)~ THEN 
@44
= @45
END

//Ingot
I_C_T INGOT 0 QI#ZakIngot1
== QI#ZAKJ IF ~InParty("QI#ZAK") InMyArea("QI#ZAK") !StateCheck("QI#ZAK",CD_STATE_NOTVALID)~ THEN 
@46
END

//Greywolf
I_C_T GREYWO 0 QI#ZakGreywolf1
== QI#ZAKJ IF ~InParty("QI#ZAK") InMyArea("QI#ZAK") !StateCheck("QI#ZAK",CD_STATE_NOTVALID)~ THEN 
@47
END

//Amnian People
I_C_T AMNIS 0 QI#ZakAmnis1
== QI#ZAKJ IF ~InParty("QI#ZAK") InMyArea("QI#ZAK") !StateCheck("QI#ZAK",CD_STATE_NOTVALID)~ THEN 
@48
END

//Angelo
I_C_T ANGELO 8 QI#ZakAngelo1
== QI#ZAKJ IF ~InParty("QI#ZAK") InMyArea("QI#ZAK") !StateCheck("QI#ZAK",CD_STATE_NOTVALID)~ THEN 
@49
END

I_C_T ANGELO 2 QI#ZakAngelo2
== QI#ZAKJ IF ~InParty("QI#ZAK") InMyArea("QI#ZAK") !StateCheck("QI#ZAK",CD_STATE_NOTVALID)~ THEN 
@50
== ANGELO @51
END

//Ardouine
I_C_T ARDROU 0 QI#ZakArdouine1
== QI#ZAKJ IF ~InParty("QI#ZAK") InMyArea("QI#ZAK") !StateCheck("QI#ZAK",CD_STATE_NOTVALID)~ THEN 
@52
== ARDROU @53
END

//Arkion
I_C_T ARKION 1 QI#ZakArkion1
== QI#ZAKJ IF ~InParty("QI#ZAK") InMyArea("QI#ZAK") !StateCheck("QI#ZAK",CD_STATE_NOTVALID)~ THEN 
@54
END

//Fuckyu (?)
I_C_T FUCKYU 0 QI#ZakFuckyu1
== QI#ZAKJ IF ~InParty("QI#ZAK") InMyArea("QI#ZAK") !StateCheck("QI#ZAK",CD_STATE_NOTVALID)~ THEN 
@55
END

//Garden Lad
I_C_T GARDEN 0 QI#ZakGardenLad1
== QI#ZAKJ IF ~InParty("QI#ZAK") InMyArea("QI#ZAK") !StateCheck("QI#ZAK",CD_STATE_NOTVALID)~ THEN 
@56
END

//Garrick
I_C_T GARRIC 0 QI#ZakGarrick1
== QI#ZAKJ IF ~InParty("QI#ZAK") InMyArea("QI#ZAK") !StateCheck("QI#ZAK",CD_STATE_NOTVALID)~ THEN 
@57
END

//Girl's Deceased Dad
I_C_T GIRLBE 2 QI#ZakDeceasedFather1
== QI#ZAKJ IF ~InParty("QI#ZAK") InMyArea("QI#ZAK") !StateCheck("QI#ZAK",CD_STATE_NOTVALID)~ THEN 
@58
END

I_C_T GIRLBE 1 QI#ZakDeceasedFather2
== QI#ZAKJ IF ~InParty("QI#ZAK") InMyArea("QI#ZAK") !StateCheck("QI#ZAK",CD_STATE_NOTVALID)~ THEN 
@59
END

//Gnarl
I_C_T GNARL 0 QI#ZakGnarl1
== QI#ZAKJ IF ~InParty("QI#ZAK") InMyArea("QI#ZAK") !StateCheck("QI#ZAK",CD_STATE_NOTVALID)~ THEN 
@60
== GNARL @61
END

//Hephis
I_C_T HEPHIS 3 QI#ZakHephis1
== QI#ZAKJ IF ~InParty("QI#ZAK") InMyArea("QI#ZAK") !StateCheck("QI#ZAK",CD_STATE_NOTVALID)~ THEN 
@62
END

//Laola
I_C_T LAOLA 1 QI#ZakLaola1
== QI#ZAKJ IF ~InParty("QI#ZAK") InMyArea("QI#ZAK") !StateCheck("QI#ZAK",CD_STATE_NOTVALID)~ THEN 
@63
END

//Lauden
I_C_T LAUDEN 1 QI#ZakLauden1
== QI#ZAKJ IF ~InParty("QI#ZAK") InMyArea("QI#ZAK") !StateCheck("QI#ZAK",CD_STATE_NOTVALID)~ THEN 
@64
END

//Lesley
INTERJECT LESLEY 0 QI#ZakLesley1
== QI#ZAKJ IF ~InParty("QI#ZAK") InMyArea("QI#ZAK") !StateCheck("QI#ZAK",CD_STATE_NOTVALID)~ THEN 
@65
END
++ @66 EXTERN QI#ZAKJ QI#ZakLesley2
++ @67 EXTERN LESLEY 1
++ @68 EXTERN LESLEY 2

CHAIN 
IF ~~ THEN QI#ZAKJ QI#ZakLesley2
@69
= @70
EXTERN LESLEY 1

//Marl
INTERJECT MARL 3 QI#ZakMarl1
== QI#ZAKJ IF ~InParty("QI#ZAK") InMyArea("QI#ZAK") !StateCheck("QI#ZAK",CD_STATE_NOTVALID)~ THEN 
@71
EXTERN MARL 4

//Cooks
I_C_T MCOOK2 1 QI#ZakCook1
== QI#ZAKJ IF ~InParty("QI#ZAK") InMyArea("QI#ZAK") !StateCheck("QI#ZAK",CD_STATE_NOTVALID)~ THEN 
@72
DO ~IncrementGlobal("QI#ZakCooks","GLOBAL",1)~
END

I_C_T MCOOK2 3 QI#ZakCook2
== QI#ZAKJ IF ~InParty("QI#ZAK") InMyArea("QI#ZAK") !StateCheck("QI#ZAK",CD_STATE_NOTVALID)~ THEN 
@73
END

I_C_T MCOOK4 0 QI#ZakCook3
== QI#ZAKJ IF ~InParty("QI#ZAK") InMyArea("QI#ZAK") !StateCheck("QI#ZAK",CD_STATE_NOTVALID) !Global("QI#ZakCooks","GLOBAL",0)~ THEN 
@74
== QI#ZAKJ IF ~InParty("QI#ZAK") InMyArea("QI#ZAK") !StateCheck("QI#ZAK",CD_STATE_NOTVALID) GlobalGT("QI#ZakCooks","GLOBAL",0)~ THEN 
@75
END

I_C_T MCOOK6 0 QI#ZakCook4
== QI#ZAKJ IF ~InParty("QI#ZAK") InMyArea("QI#ZAK") !StateCheck("QI#ZAK",CD_STATE_NOTVALID)~ THEN 
@76
== MCOOK6 @77
== QI#ZAKJ @78
== MCOOK6 @79
DO ~IncrementGlobal("QI#ZakCooks","GLOBAL",1)~
END

//Neb
I_C_T NEB 7 QI#ZakNeb1
== QI#ZAKJ IF ~InParty("QI#ZAK") InMyArea("QI#ZAK") !StateCheck("QI#ZAK",CD_STATE_NOTVALID)~ THEN 
@80
END 

//Gandolar Luckyfoot
I_C_T GANDOL 6 QI#ZakGandolar1
== QI#ZAKJ IF ~InParty("QI#ZAK") InMyArea("QI#ZAK") !StateCheck("QI#ZAK",CD_STATE_NOTVALID)~ THEN 
@81
END

I_C_T GANDOL 0 QI#ZakGandolar2
== QI#ZAKJ IF ~InParty("QI#ZAK") InMyArea("QI#ZAK") !StateCheck("QI#ZAK",CD_STATE_NOTVALID)~ THEN 
@82
== GANDOL @83
== QI#ZAKJ @84
== GANDOL @85
= @86
END

I_C_T GANDOL 13 QI#ZakGandolar3
== QI#ZAKJ IF ~InParty("QI#ZAK") InMyArea("QI#ZAK") !StateCheck("QI#ZAK",CD_STATE_NOTVALID)~ THEN 
@87
END

I_C_T GANDOL 17 QI#ZakGandolar4
== QI#ZAKJ IF ~InParty("QI#ZAK") InMyArea("QI#ZAK") !StateCheck("QI#ZAK",CD_STATE_NOTVALID)~ THEN 
@88
END

// Tenya
I_C_T TENYA 4 QI#ZakTenya1
== QI#ZAKJ IF ~InParty("QI#ZAK") InMyArea("QI#ZAK") !StateCheck("QI#ZAK",CD_STATE_NOTVALID)~ THEN 
@1299
= @1300
END 

I_C_T TENYA 17 QI#ZakTenya2
== QI#ZAKJ IF ~InParty("QI#ZAK") InMyArea("QI#ZAK") !StateCheck("QI#ZAK",CD_STATE_NOTVALID)~ THEN 
@1301
END 

// Sonner
I_C_T SONNER 4 QI#ZakSonner1
== QI#ZAKJ IF ~InParty("QI#ZAK") InMyArea("QI#ZAK") !StateCheck("QI#ZAK",CD_STATE_NOTVALID)~ THEN 
@1302
END 


/**************************************************************************************************
			Introduction: Bring Zakrion to a tavern
**************************************************************************************************/
APPEND QI#ZAKJ

IF ~Global("QI#ZakNeedRest","GLOBAL",2)~ QI#ZakNeedRest1
SAY @89
= @90
++ @91 + QI#ZakNeedRest1.1
++ @92 + QI#ZakNeedRest1.1
++ @93 + QI#ZakNeedRest1.1
++ @94 + QI#ZakNeedRest1.0x
END 

IF ~~ QI#ZakNeedRest1.0x
SAY @95
= @96
IF ~~ DO ~SetGlobal("QI#ZakNeedRest","GLOBAL",3) LeaveParty() EscapeArea()~ EXIT
END 

IF ~~ QI#ZakNeedRest1.1
SAY @97
++ @98 + QI#ZakNeedRest1.2
++ @99 + QI#ZakNeedRest1.2
++ @100 + QI#ZakNeedRest1.2
++ @101 + QI#ZakNeedRest1.1.1
END 

IF ~~ QI#ZakNeedRest1.1.1
SAY @102
IF ~~ + QI#ZakNeedRest1.1.1
END 

IF ~~ QI#ZakNeedRest1.2
SAY @103
= @104
= @105
++ @106 + QI#ZakNeedRest1.3
++ @107 + QI#ZakNeedRest1.3
++ @108 + QI#ZakNeedRest1.2.0x
++ @109 + QI#ZakNeedRest1.2.0x
END

IF ~~ QI#ZakNeedRest1.2.0x
SAY @110
= @111
= @112
IF ~~ DO ~SetGlobal("QI#ZakNeedRest","GLOBAL",3) LeaveParty() EscapeArea()~ EXIT
END 

IF ~~ QI#ZakNeedRest1.3
SAY @113
= @114
IF ~~ DO ~SetGlobal("QI#ZakNeedRest","GLOBAL",3) RestParty()~ EXIT
END 

END

/**************************************************************************************************
			Introduction: Bring Zakrion to a tavern - Warning
**************************************************************************************************/
APPEND QI#ZAKJ

IF ~Global("QI#ZakNeedRestDelayed","GLOBAL",1)~ QI#ZakNeedRestDelayed1
SAY @115
++ @116 + QI#ZakNeedRestDelayed1.1
++ @117 + QI#ZakNeedRestDelayed1.0.1
++ @118 + QI#ZakNeedRestDelayed1.0.0x
++ @119 + QI#ZakNeedRestDelayed1.0.0x
END 

IF ~~ QI#ZakNeedRestDelayed1.0.0x
SAY @120
= @121
IF ~~ DO ~IncrementGlobal("QI#ZakNeedRestDelayed","GLOBAL",1) LeaveParty() EscapeArea()~ EXIT
END

IF ~~ QI#ZakNeedRestDelayed1.0.1
SAY @122
IF ~~ DO ~IncrementGlobal("QI#ZakNeedRestDelayed","GLOBAL",1) SetGlobalTimer("QI#ZakDelayedTimer2","GLOBAL",FIVE_DAYS)~ EXIT
END 

IF ~~ QI#ZakNeedRestDelayed1.1
SAY @123
IF ~~ DO ~IncrementGlobal("QI#ZakNeedRestDelayed","GLOBAL",1) SetGlobalTimer("QI#ZakDelayedTimer2","GLOBAL",FIVE_DAYS)~ EXIT
END 

END

/**************************************************************************************************
			Introduction: Bring Zakrion to a tavern - Leaving
**************************************************************************************************/
APPEND QI#ZAKJ

IF ~Global("QI#ZakNeedRestDelayed","GLOBAL",3)~ QI#ZakNeedRestDelayed2
SAY @124
= @125
IF ~~ DO ~SetGlobal("QI#ZakNeedRestDelayed","GLOBAL",4) LeaveParty() EscapeArea()~ EXIT
END 

END

/**************************************************************************************************
			Normal Talks (Friendship Path)
**************************************************************************************************/
APPEND QI#ZAKJ

/* Talk 1: We need an icebreaker - I only know how to make 3 dishes. */
IF ~Global("QI#ZakTalk","GLOBAL",2)~ QI#ZakTalk1
SAY @126
++ @100 + QI#ZakTalk1.1
++ @127 + QI#ZakTalk1.1
++ @128 + QI#ZakTalk1.0.1
++ @129 + QI#ZakTalk1.1
END

IF ~~ QI#ZakTalk1.0.1
SAY @130
= @131
IF ~~ + QI#ZakTalk1.1
END

IF ~~ QI#ZakTalk1.1
SAY @132
= @133
= @134
= @135
++ @136 + QI#ZakTalk1.1.1
++ @137 + QI#ZakTalk1.1.2
++ @138 + QI#ZakTalk1.1.3
++ @139 + QI#ZakTalk1.2a
++ @140 + QI#ZakTalk1.2b
++ @141 + QI#ZakTalk1.2c
END

IF ~~ QI#ZakTalk1.0.0
SAY @142
IF ~~ DO ~IncrementGlobal("QI#ZakTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakTimer","GLOBAL",3600)~ EXIT
END 

IF ~~ QI#ZakTalk1.1.1
SAY @143
IF ~~ + QI#ZakTalk1.2
END

IF ~~ QI#ZakTalk1.1.2
SAY @144
IF ~~ + QI#ZakTalk1.2
END

IF ~~ QI#ZakTalk1.1.3
SAY @145
= @146
IF ~~ + QI#ZakTalk1.2
END

IF ~~ QI#ZakTalk1.2
SAY @147
++ @148 + QI#ZakTalk1.2a
++ @149 + QI#ZakTalk1.2b
++ @150 + QI#ZakTalk1.2c
++ @151 + QI#ZakTalk1.0.0
END 

IF ~~ QI#ZakTalk1.2a
SAY @152
= @153
= @154
= @155
IF ~~ + QI#ZakTalk1.3
END

IF ~~ QI#ZakTalk1.2b
SAY @156
= @157
= @158
IF ~~ + QI#ZakTalk1.3
END

IF ~~ QI#ZakTalk1.2c
SAY @159
= @160
= @161
IF ~~ + QI#ZakTalk1.3
END

IF ~~ QI#ZakTalk1.3
SAY @162
= @163
IF ~~ + QI#ZakTalk1.4
END 

IF ~~ QI#ZakTalk1.4
SAY @164
= @165
IF ~~ DO ~IncrementGlobal("QI#ZakTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakTimer","GLOBAL",3600)~ EXIT
END

/* Talk 2: I crashed my ship, well, not really. */
IF ~Global("QI#ZakTalk","GLOBAL",4)~ QI#ZakTalk2
SAY @166
++ @167 + QI#ZakTalk2.0.1
++ @168 + QI#ZakTalk2.0.2
++ @169 + QI#ZakTalk2.1
++ @170 + QI#ZakTalk2.0.0
END 

IF ~~ QI#ZakTalk2.0.0
SAY @171
= @172
IF ~~ DO ~SetGlobal("QI#ZakFriendshipActive","GLOBAL",1)~ EXIT 
END 

IF ~~ QI#ZakTalk2.0.1
SAY @173
IF ~~ + QI#ZakTalk2.0.12
END

IF ~~ QI#ZakTalk2.0.2
SAY @174
IF ~~ + QI#ZakTalk2.0.12
END

IF ~~ QI#ZakTalk2.0.12
SAY @175
IF ~~ + QI#ZakTalk2.1
END 

IF ~~ QI#ZakTalk2.1
SAY @176
= @177
= @178
= @179
= @180
= @181
++ @182 + QI#ZakTalk2.2
++ @183 + QI#ZakTalk2.2
++ @184 + QI#ZakTalk2.2.1
++ @185  + QI#ZakTalk2.0.0
END 

IF ~~ QI#ZakTalk2.2.1
SAY @186
= @187
IF ~~ + QI#ZakTalk2.2
END

IF ~~ QI#ZakTalk2.2
SAY @188
= @189
= @190
= @191
= @192
IF ~~ DO ~IncrementGlobal("QI#ZakTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakTimer","GLOBAL",3600)~ EXIT
END 
									
/* Talk 3: Who is Gorion? */
IF ~Global("QI#ZakTalk","GLOBAL",6)~ QI#ZakTalk3
SAY @193
= @194
++ @195 + QI#ZakTalk3.0.1
++ @196 + QI#ZakTalk3.0.2
++ @197 + QI#ZakTalk3.0.2
++ @198 + QI#ZakTalk3.0.3
++ @199 + QI#ZakTalk3.0.0
END

IF ~~ QI#ZakTalk3.0.0
SAY @200
IF ~~ + QI#ZakTalk3.1
END 

IF ~~ QI#ZakTalk3.0x
SAY @201
IF ~~ DO ~SetGlobal("QI#ZakFriendshipActive","GLOBAL",1)~ EXIT 
END 

IF ~~ QI#ZakTalk3.0.1
SAY @202
IF ~~ + QI#ZakTalk3.1
END 

IF ~~ QI#ZakTalk3.0.2
SAY @203
= @204
IF ~~ + QI#ZakTalk3.1
END 

IF ~~ QI#ZakTalk3.0.3
SAY @205
= @206
++ @207 + QI#ZakTalk3.2
++ @208 + QI#ZakTalk3.2a
++ @209 + QI#ZakTalk3.0x
END 

IF ~~ QI#ZakTalk3.1
SAY @210
++ @211 + QI#ZakTalk3.1.1
++ @212 + QI#ZakTalk3.2
++ @213 + QI#ZakTalk3.2a
END 

IF ~~ QI#ZakTalk3.1.1
SAY @214
++ @215 + QI#ZakTalk3.2a
++ @216 + QI#ZakTalk3.2
++ @217 + QI#ZakTalk3.0x
END 

IF ~~ QI#ZakTalk3.2
SAY @218
= @219
= @220
++ @221 + QI#ZakTalk3.2.1
++ @222 + QI#ZakTalk3.2.2
++ @223 + QI#ZakTalk3.2.3
++ @224 + QI#ZakTalk3.2.4
++ @225 + QI#ZakTalk3.2.1
++ @226 + QI#ZakTalk3.2.5
END 

IF ~~ QI#ZakTalk3.2.1
SAY @227
IF ~~ + QI#ZakTalk3.3
END

IF ~~ QI#ZakTalk3.2.2
SAY @228
= @229
= @230
IF ~~ + QI#ZakTalk3.3
END

IF ~~ QI#ZakTalk3.2.3
SAY @231
IF ~~ + QI#ZakTalk3.3
END

IF ~~ QI#ZakTalk3.2.4
SAY @232
IF ~~ + QI#ZakTalk3.3
END 

IF ~~ QI#ZakTalk3.2.5
SAY @233
IF ~~ + QI#ZakTalk3.3
END 

IF ~~ QI#ZakTalk3.2a
SAY @234
= @235
++ @236 + QI#ZakTalk3.3.1
++ @237 + QI#ZakTalk3.3.1
++ @238 + QI#ZakTalk3.3.2
++ @239 + QI#ZakTalk3.3.3
END 

IF ~~ QI#ZakTalk3.3
SAY @240
IF ~~ + QI#ZakTalk3.2a
END 

IF ~~ QI#ZakTalk3.3.1
SAY @241
= @242
IF ~~ + QI#ZakTalk3.4
END 

IF ~~ QI#ZakTalk3.3.2
SAY @243
IF ~~ + QI#ZakTalk3.4
END 

IF ~~ QI#ZakTalk3.3.3
SAY @244
= @245
IF ~~ + QI#ZakTalk3.4
END 

IF ~~ QI#ZakTalk3.4
SAY @246
= @247
= @248
IF ~~ DO ~IncrementGlobal("QI#ZakTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakTimer","GLOBAL",3600)~ EXIT
END 

/* Talk 4: My father was a fisherman - Part 1. */
IF ~Global("QI#ZakTalk","GLOBAL",8)~ QI#ZakTalk4
SAY @249
= @250
++ @251 + QI#ZakTalk4.1
++ @252 + QI#ZakTalk4.0.1
++ @253 + QI#ZakTalk4.0.2
++ @254 + QI#ZakTalk4.0.3
++ @255 + QI#ZakTalk4.0.4
END 

IF ~~ QI#ZakTalk4.0.1
SAY @256
IF ~~ + QI#ZakTalk4.1
END 

IF ~~ QI#ZakTalk4.0.2
SAY @257
IF ~~ + QI#ZakTalk4.1
END 

IF ~~ QI#ZakTalk4.0.3
SAY @258
IF ~~ + QI#ZakTalk4.1
END 

IF ~~ QI#ZakTalk4.0.4
SAY @259
IF ~~ + QI#ZakTalk4.1
END 

IF ~~ QI#ZakTalk4.1
SAY @260
= @261
= @262
= @263
++ @264 + QI#ZakTalk4.2
++ @265 + QI#ZakTalk4.2
++ @266 + QI#ZakTalk4.2
++ @267 + QI#ZakTalk4.1.1
++ @268 + QI#ZakTalk4.1.2
++ @269 + QI#ZakTalk4.1.3
END 

IF ~~ QI#ZakTalk4.1.1
SAY @270
IF ~~ + QI#ZakTalk4.2
END 

IF ~~ QI#ZakTalk4.1.2
SAY @271
= @272
IF ~~ + QI#ZakTalk4.2
END 

IF ~~ QI#ZakTalk4.1.3
SAY @273
IF ~~ DO ~SetGlobal("QI#ZakFriendshipActive","GLOBAL",1)~ EXIT 
END 

IF ~~ QI#ZakTalk4.2
SAY @274
= @275
= @276
= @277
= @278
++ @279 + QI#ZakTalk4.2.1
++ @280 + QI#ZakTalk4.2.2
++ @281 + QI#ZakTalk4.2.3
++ @282 + QI#ZakTalk4.2.4
++ @283 + QI#ZakTalk4.3
END 

IF ~~ QI#ZakTalk4.2.1
SAY @284
= @285
IF ~~ + QI#ZakTalk4.3
END

IF ~~ QI#ZakTalk4.2.2
SAY @286
= @285
IF ~~ + QI#ZakTalk4.3
END

IF ~~ QI#ZakTalk4.2.3
SAY @287
= @285
IF ~~ + QI#ZakTalk4.3
END 

IF ~~ QI#ZakTalk4.2.4
SAY @288
= @289
IF ~~ + QI#ZakTalk4.3
END

IF ~~ QI#ZakTalk4.3
SAY @290
= @291
= @292
= @293
= @294
= @295
= @296
= @297
= @298
IF ~~ DO ~IncrementGlobal("QI#ZakTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakTimer","GLOBAL",3600)~ EXIT
END 

/* Talk 5: What was your childhood like?*/
IF ~Global("QI#ZakTalk","GLOBAL",10)~ QI#ZakTalk5
SAY @299
++ @300 + QI#ZakTalk5.1
++ @301 + QI#ZakTalk5.1
++ @302 + QI#ZakTalk5.0.1
++ @303 + QI#ZakTalk5.0.2
++ @304 + QI#ZakTalk5.0.0
END 

IF ~~ QI#ZakTalk5.0.0
SAY @305
IF ~~ DO ~SetGlobal("QI#ZakFriendshipActive","GLOBAL",1)~ EXIT 
END 

IF ~~ QI#ZakTalk5.0.1
SAY @306
= @307
IF ~~ DO ~IncrementGlobal("QI#ZakTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakTimer","GLOBAL",3600)~ EXIT
END 

IF ~~ QI#ZakTalk5.0.2
SAY @308
++ @309 + QI#ZakTalk5.1
++ @310 + QI#ZakTalk5.0.1
++ @311 + QI#ZakTalk5.0.0
END

IF ~~ QI#ZakTalk5.1
SAY @312
++ @313 + QI#ZakTalk5.1.1
++ @314 + QI#ZakTalk5.1.1
++ @315 + QI#ZakTalk5.1.1
++ @316 + QI#ZakTalk5.1.2
++ @317 + QI#ZakTalk5.1.3
++ @318 + QI#ZakTalk5.1.4
++ @319 + QI#ZakTalk5.1.5
++ @320 + QI#ZakTalk5.1.5
++ @321 + QI#ZakTalk5.1.5
END 

IF ~~ QI#ZakTalk5.1.1
SAY @322
IF ~~ + QI#ZakTalk5.2
END 

IF ~~ QI#ZakTalk5.1.2
SAY @323
= @324
IF ~~ + QI#ZakTalk5.2
END 

IF ~~ QI#ZakTalk5.1.3
SAY @325
= @326
IF ~~ + QI#ZakTalk5.2 
END 

IF ~~ QI#ZakTalk5.1.4
SAY @327
= @328
IF ~~ + QI#ZakTalk5.2 
END 

IF ~~ QI#ZakTalk5.1.5
SAY @329
IF ~~ + QI#ZakTalk5.2
END 

IF ~~ QI#ZakTalk5.2
SAY @330
= @331
= @332
= @333
IF ~~ DO ~IncrementGlobal("QI#ZakTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakTimer","GLOBAL",3600)~ EXIT
END 

/* Talk 6: My father was a fisherman - Part 2. */  
IF ~Global("QI#ZakTalk","GLOBAL",12)~ QI#ZakTalk6
SAY @334
= @335
++ @336 + QI#ZakTalk6.1
++ @337 + QI#ZakTalk6.1
++ @338 + QI#ZakTalk6.0.1
++ @339 + QI#ZakTalk6.0.0
END

IF ~~ QI#ZakTalk6.0.0
SAY @340
= @341
IF ~~ DO ~SetGlobal("QI#ZakFriendshipActive","GLOBAL",1)~ EXIT 
END  

IF ~~ QI#ZakTalk6.0.1
SAY @342
IF ~~ DO ~SetGlobal("QI#ZakFriendshipActive","GLOBAL",1)~ EXIT 
END 

IF ~~ QI#ZakTalk6.1
SAY @343
= @344
= @345
= @346
= @347
= @348
= @349
++ @350 + QI#ZakTalk6.1.1
++ @351 + QI#ZakTalk6.1.2
++ @352 + QI#ZakTalk6.1.3
++ @353 + QI#ZakTalk6.1.4
++ @354 + QI#ZakTalk6.1.5
END 

IF ~~ QI#ZakTalk6.1.1
SAY @355
= @356
IF ~~ + QI#ZakTalk6.2
END

IF ~~ QI#ZakTalk6.1.2
SAY @357
= @358
IF ~~ + QI#ZakTalk6.2
END 

IF ~~ QI#ZakTalk6.1.3
SAY @359
IF ~~ + QI#ZakTalk6.2
END 

IF ~~ QI#ZakTalk6.1.4
SAY @360
IF ~~ + QI#ZakTalk6.2
END 

IF ~~ QI#ZakTalk6.1.5
SAY @361
IF ~~ + QI#ZakTalk6.2
END 

IF ~~ QI#ZakTalk6.2
SAY @362
= @363
IF ~~ DO ~IncrementGlobal("QI#ZakTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakTimer","GLOBAL",3600)~ EXIT
END  

/* Talk 7: How does it feel to do the same thing over and over again? */
IF ~Global("QI#ZakTalk","GLOBAL",14)~ QI#ZakTalk7
SAY @364
++ @365 + QI#ZakTalk7.0.1
++ @366 + QI#ZakTalk7.1
++ @367 + QI#ZakTalk7.0.1
++ @368 + QI#ZakTalk7.0.0
END

IF ~~ QI#ZakTalk7.0.0
SAY @369
= @370
IF ~~ DO ~SetGlobal("QI#ZakFriendshipActive","GLOBAL",1)~ EXIT 
END 

IF ~~ QI#ZakTalk7.0.1
SAY @371
= @372
IF ~~ + QI#ZakTalk7.1
END

IF ~~ QI#ZakTalk7.1
SAY @373
= @374
++ @375 + QI#ZakTalk7.1.1
++ @376 + QI#ZakTalk7.1.2
++ @377 + QI#ZakTalk7.1.3
++ @378 + QI#ZakTalk7.1.4
++ @379 + QI#ZakTalk7.1.5
END  

IF ~~ QI#ZakTalk7.1.1
SAY @380
IF ~~ + QI#ZakTalk7.1.3
END

IF ~~ QI#ZakTalk7.1.2
SAY @381
IF ~~ + QI#ZakTalk7.2
END

IF ~~ QI#ZakTalk7.1.3
SAY @382
IF ~~ + QI#ZakTalk7.2
END

IF ~~ QI#ZakTalk7.1.4
SAY @383
IF ~~ + QI#ZakTalk7.2
END

IF ~~ QI#ZakTalk7.1.5
SAY @384
IF ~~ + QI#ZakTalk7.2
END

IF ~~ QI#ZakTalk7.2
SAY @385
++ @386 + QI#ZakTalk7.2.1
++ @387 + QI#ZakTalk7.2.2
++ @388 + QI#ZakTalk7.2.1
++ @389 + QI#ZakTalk7.2.1
++ @390 + QI#ZakTalk7.2.3
++ @391 + QI#ZakTalk7.2.4
END

IF ~~ QI#ZakTalk7.2.1
SAY @392
++ @393 + QI#ZakTalk7.2.2
++ @394 + QI#ZakTalk7.2.2
++ @395 + QI#ZakTalk7.2.2
++ @396 + QI#ZakTalk7.2.1a
++ @397 + QI#ZakTalk7.2.1b
END 

IF ~~ QI#ZakTalk7.2.1a
SAY @398
IF ~~ + QI#ZakTalk7.3
END

IF ~~ QI#ZakTalk7.2.1b
SAY @399
IF ~~ + QI#ZakTalk7.3
END 

IF ~~ QI#ZakTalk7.2.2
SAY @400
IF ~~ + QI#ZakTalk7.3
END 

IF ~~ QI#ZakTalk7.2.3
SAY @401
++ @402 + QI#ZakTalk7.2.1
++ @403 + QI#ZakTalk7.2.2
++ @404 + QI#ZakTalk7.2.1
++ @405 + QI#ZakTalk7.2.1
++ @406 + QI#ZakTalk7.2.4
END 

IF ~~ QI#ZakTalk7.2.4
SAY @407
IF ~~ + QI#ZakTalk7.3
END 

IF ~~ QI#ZakTalk7.3
SAY @408
IF ~~ DO ~IncrementGlobal("QI#ZakTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakTimer","GLOBAL",3600)~ EXIT
END  


/* Talk 8: I once owned a big, fat, orange cat. */
IF ~Global("QI#ZakTalk","GLOBAL",16)~ QI#ZakTalk8
SAY @409
++ @410 + QI#ZakTalk8.1
++ @411 + QI#ZakTalk8.1
++ @412 +  QI#ZakTalk8.0.1
++ @413 + QI#ZakTalk8.0.2
++ @414 + QI#ZakTalk8.0.3
END 

IF ~~ QI#ZakTalk8.0.1
SAY @415
= @416
IF ~~ + QI#ZakTalk8.1
END

IF ~~ QI#ZakTalk8.0.2
SAY @417
= @418
IF ~~ + QI#ZakTalk8.1
END 

IF ~~ QI#ZakTalk8.0.3
SAY @419
IF ~~ + QI#ZakTalk8.1
END 

IF ~~ QI#ZakTalk8.1
SAY @420
++ @421 + QI#ZakTalk8.1.1
++ @422 + QI#ZakTalk8.1.2
++ @423 + QI#ZakTalk8.1.3
+ ~InParty("Xan")~ + @424 + QI#ZakTalk8.1.4
++ @425 + QI#ZakTalk8.1.5
END 

IF ~~ QI#ZakTalk8.1.1
SAY @426
IF ~~ + QI#ZakTalk8.2
END 

IF ~~ QI#ZakTalk8.1.2
SAY @427
IF ~~ + QI#ZakTalk8.2
END 

IF ~~ QI#ZakTalk8.1.3
SAY @428
IF ~~ + QI#ZakTalk8.2
END 

IF ~~ QI#ZakTalk8.1.4
SAY @429
IF ~~ + QI#ZakTalk8.2
END 

IF ~~ QI#ZakTalk8.1.5
SAY @430
IF ~~ + QI#ZakTalk8.2
END 

IF ~~ QI#ZakTalk8.2
SAY @431
= @432
= @433
= @434
IF ~~ DO ~IncrementGlobal("QI#ZakTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakTimer","GLOBAL",3600)~ EXIT
END  

/* Talk 9: I used to be so seasick whenever I was on a boat. */ 
IF ~Global("QI#ZakTalk","GLOBAL",18)~ QI#ZakTalk9
SAY @435
++ @436 + QI#ZakTalk9.0.1
++ @437 + QI#ZakTalk9.0.2
++ @438 +  QI#ZakTalk9.0.3
++ @439 + QI#ZakTalk9.0.4
++ @440 + QI#ZakTalk9.0.5
++ @441 + QI#ZakTalk9.0.6
END 

IF ~~ QI#ZakTalk9.0.1
SAY @442
IF ~~ + QI#ZakTalk9.1
END

IF ~~ QI#ZakTalk9.0.2
SAY @443
IF ~~ + QI#ZakTalk9.1
END

IF ~~ QI#ZakTalk9.0.3
SAY @444
IF ~~ + QI#ZakTalk9.1
END

IF ~~ QI#ZakTalk9.0.4
SAY @445
IF ~~ + QI#ZakTalk9.1
END

IF ~~ QI#ZakTalk9.0.5
SAY @446
IF ~~ + QI#ZakTalk9.1
END

IF ~~ QI#ZakTalk9.0.6
SAY @447
IF ~~ + QI#ZakTalk9.1
END 

IF ~~ QI#ZakTalk9.1
SAY @448
= @449
++ @450 + QI#ZakTalk9.2
++ @451 + QI#ZakTalk9.2
++ @452 + QI#ZakTalk9.1.1
END 

IF ~~ QI#ZakTalk9.1.1
SAY @453
++ @454 + QI#ZakTalk9.1.1a
++ @455 + QI#ZakTalk9.1.1a
++ @456 + QI#ZakTalk9.1.1a
END 

IF ~~ QI#ZakTalk9.1.1a
SAY @457
= @458
= @459
IF ~~ + QI#ZakTalk9.2
END

IF ~~ QI#ZakTalk9.2
SAY @460
= @461
++ @462 + QI#ZakTalk9.3
++ @463 + QI#ZakTalk9.3 
++ @464 + QI#ZakTalk9.2.1
++ @465 + QI#ZakTalk9.2.2
END 

IF ~~ QI#ZakTalk9.2.1
SAY @466
IF ~~ + QI#ZakTalk9.3
END

IF ~~ QI#ZakTalk9.2.2
SAY @467
IF ~~ + QI#ZakTalk9.3
END

IF ~~ QI#ZakTalk9.3
SAY @468
= @469
= @470
= @471
IF ~~ DO ~IncrementGlobal("QI#ZakTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakTimer","GLOBAL",3600)~ EXIT
END  

/* Talk 10: I wish I had siblings. */
IF ~Global("QI#ZakTalk","GLOBAL",20)~ QI#ZakTalk10
SAY @472
++ @473 + QI#ZakTalk10.0.1
++ @474 + QI#ZakTalk10.0.2
++ @475 + QI#ZakTalk10.0.3
++ @476 + QI#ZakTalk10.0.4
++ @477 + QI#ZakTalk10.0.5
++ @478 + QI#ZakTalk10.0.6
++ @479 + QI#ZakTalk10.0.7
++ @480 + QI#ZakTalk10.0.8 
++ @481 + QI#ZakTalk10.0.0
END 

IF ~~ QI#ZakTalk10.0.0
SAY @482
= @483
IF ~~ DO ~SetGlobal("QI#ZakFriendshipActive","GLOBAL",1)~ EXIT 
END 

IF ~~ QI#ZakTalk10.0.1
SAY @484
IF ~~ + QI#ZakTalk10.1
END

IF ~~ QI#ZakTalk10.0.2
SAY @485
IF ~~ + QI#ZakTalk10.1
END

IF ~~ QI#ZakTalk10.0.3
SAY @486
IF ~~ + QI#ZakTalk10.1
END

IF ~~ QI#ZakTalk10.0.4
SAY @487
IF ~~ + QI#ZakTalk10.1
END

IF ~~ QI#ZakTalk10.0.5
SAY @488
IF ~~ + QI#ZakTalk10.1
END

IF ~~ QI#ZakTalk10.0.6
SAY @489
IF ~~ + QI#ZakTalk10.1
END 

IF ~~ QI#ZakTalk10.0.7
SAY @490
IF ~~ + QI#ZakTalk10.1
END 

IF ~~ QI#ZakTalk10.0.8
SAY @491
= @492
IF ~~ + QI#ZakTalk10.1
END 

IF ~~ QI#ZakTalk10.1
SAY @493
++ @494 + QI#ZakTalk10.1.1
++ @495 + QI#ZakTalk10.2
++ @496 + QI#ZakTalk10.1.2
++ @497 + QI#ZakTalk10.1.3
END 

IF ~~ QI#ZakTalk10.1.1
SAY @498
IF ~~ + QI#ZakTalk10.2
END

IF ~~ QI#ZakTalk10.1.2
SAY @499
++ @500 + QI#ZakTalk10.1.1
++ @501 + QI#ZakTalk10.1.2a
++ @502 + QI#ZakTalk10.1.1
++ @503 + QI#ZakTalk10.1.2b
++ @504 + QI#ZakTalk10.1.2c
END

IF ~~ QI#ZakTalk10.1.2a
SAY @505
++ @506 + QI#ZakTalk10.1.2aa
++ @507 +  QI#ZakTalk10.1.2ab
+ ~Gender(Player1,FEMALE)
	OR (5)
		Race(Player1,HUMAN)
		Race(Player1,ELF)
		Race(Player1,HALF_ELF)
		Race(Player1,HALFLING)
		Race(Player1,GNOME)~ 
	+ @508 + QI#ZakTalk10.1.2main
++ @509 + QI#ZakTalk10.1.2ac
++ @510 +  QI#ZakTalk10.1.2ad
END

IF ~~ QI#ZakTalk10.1.2aa
SAY @511
= @512
IF ~~ + QI#ZakTalk10.1.2main
END 

IF ~~ QI#ZakTalk10.1.2ab
SAY @513
= @514
++ @515 + QI#ZakTalk10.1.1
++ @516 + QI#ZakTalk10.1.2aba
END

IF ~~ QI#ZakTalk10.1.2aba
SAY @517
= @518
++ @519 + QI#ZakTalk10.1.1
++ @520 + QI#ZakTalk10.1.1
END 

IF ~~ QI#ZakTalk10.1.2ac
SAY @521
= @522
IF ~~ + QI#ZakTalk10.1.2main
END

IF ~~ QI#ZakTalk10.1.2ad
SAY @523
= @524
IF ~~ + QI#ZakTalk10.1.2main
END 

IF ~~ QI#ZakTalk10.1.2main
SAY @525
= @526
++ @527 + QI#ZakTalk10.2
++ @528 + QI#ZakTalk10.1.2bbx
++ @529 + QI#ZakTalk10.2
END

IF ~~ QI#ZakTalk10.1.2b
SAY @530
++ @531 + QI#ZakTalk10.1.1
++ @532 + QI#ZakTalk10.1.2c
++ @533 + QI#ZakTalk10.1.2bb
END 

IF ~~ QI#ZakTalk10.1.2bb
SAY @534
++ @535 + QI#ZakTalk10.2
++ @536 + QI#ZakTalk10.1.2bbx
++ @537 + QI#ZakTalk10.2
END 

IF ~~ QI#ZakTalk10.1.2bbx
SAY @538
= @539
IF ~~ DO ~SetGlobal("QI#ZakFriendshipActive","GLOBAL",1)~ EXIT 
END 

IF ~~ QI#ZakTalk10.1.2c
SAY @540
++ @541 + QI#ZakTalk10.1.2aa
++ @542 +  QI#ZakTalk10.1.2ab
+ ~Gender(Player1,FEMALE)
	OR (5)
		Race(Player1,HUMAN)
		Race(Player1,ELF)
		Race(Player1,HALF_ELF)
		Race(Player1,HALFLING)
		Race(Player1,GNOME)~ 
	+ @543 + QI#ZakTalk10.1.2ab
++ @544 + QI#ZakTalk10.1.2ac
++ @545 +  QI#ZakTalk10.1.2ad
END 

IF ~~ QI#ZakTalk10.1.3
SAY @546
= @547
++ @548 + QI#ZakTalk10.1.3.0x
++ @549 + QI#ZakTalk10.1.3a
++ @550 + QI#ZakTalk10.1.3b
++ @551 + QI#ZakTalk10.1.3c
END

IF ~~ QI#ZakTalk10.1.3.0x
SAY @552
= @553
IF ~~ DO ~SetGlobal("QI#ZakFriendshipActive","GLOBAL",1) DropInventory() LeaveParty() EscapeArea()~ EXIT 
END

IF ~~ QI#ZakTalk10.1.3a
SAY @554
IF ~~ + QI#ZakTalk10.1.3xx
END

IF ~~ QI#ZakTalk10.1.3b
SAY @555
IF ~~ + QI#ZakTalk10.1.3xx
END

IF ~~ QI#ZakTalk10.1.3c
SAY @556
IF ~~ + QI#ZakTalk10.1.3xx
END 

IF ~~ QI#ZakTalk10.1.3xx
SAY @557
++ @558 + QI#ZakTalk10.1.1
++ @559 + QI#ZakTalk10.1.1
++ @560 + QI#ZakTalk10.1.2b
++ @561 + QI#ZakTalk10.1.2c
END 

IF ~~ QI#ZakTalk10.2
SAY @562
= @563
= @564
= @565
= @566
= @567
++ @568 + QI#ZakTalk10.2.1
++ @569 + QI#ZakTalk10.2.2
++ @570 + QI#ZakTalk10.2.1
++ @571 + QI#ZakTalk10.2.3
++ @572 + QI#ZakTalk10.2.4
END 

IF ~~ QI#ZakTalk10.2.1
SAY @573
= @574
= @575
IF ~~ + QI#ZakTalk10.3
END

IF ~~ QI#ZakTalk10.2.2
SAY @576
IF ~~ + QI#ZakTalk10.3
END

IF ~~ QI#ZakTalk10.2.3
SAY @577
= @578
= @579
IF ~~ + QI#ZakTalk10.3
END

IF ~~ QI#ZakTalk10.2.4
SAY @580
IF ~~ + QI#ZakTalk10.3
END 

IF ~~ QI#ZakTalk10.3
SAY @581
= @582
IF ~~ DO ~IncrementGlobal("QI#ZakTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakTimer","GLOBAL",3600)~ EXIT
END 

/* Talk 11: I'm still trying to figure out what to do with my life. */
IF ~Global("QI#ZakTalk","GLOBAL",22)~ QI#ZakTalk11
SAY @583
++ @584  + QI#ZakTalk11.0.1
++ @585 + QI#ZakTalk11.0.2
++ @586 + QI#ZakTalk11.0.3
++ @587 + QI#ZakTalk11.0.4
++ @588 + QI#ZakTalk11.0.5
END 

IF ~~ QI#ZakTalk11.0.1
SAY @589
= @590
IF ~~ + QI#ZakTalk11.1
END 

IF ~~ QI#ZakTalk11.0.2
SAY @591
IF ~~ + QI#ZakTalk11.1
END 

IF ~~ QI#ZakTalk11.0.3
SAY @592
= @593
IF ~~ + QI#ZakTalk11.1
END 

IF ~~ QI#ZakTalk11.0.4
SAY @594
IF ~~ + QI#ZakTalk11.1
END 

IF ~~ QI#ZakTalk11.0.5
SAY @595
IF ~~ + QI#ZakTalk11.1
END 

IF ~~ QI#ZakTalk11.1
SAY @596
= @597
= @598
= @599
= @600
= @601
IF ~~ DO ~IncrementGlobal("QI#ZakTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakTimer","GLOBAL",3600)~ EXIT
END 

/* Talk 12: Father teaches patiences and perspective. What to do with a bad sailor? */ 
IF ~Global("QI#ZakTalk","GLOBAL",24)~ QI#ZakTalk12
SAY @602
= @603
++ @604 + QI#ZakTalk12.0.1
++ @605 + QI#ZakTalk12.0.2
++ @606 + QI#ZakTalk12.0.3
++ @607 + QI#ZakTalk12.0.4
++ @608 + QI#ZakTalk12.0.5
++ @609 + QI#ZakTalk12.0.5
END 

IF ~~ QI#ZakTalk12.0.1
SAY @610
++ @611 + QI#ZakTalk12.0.2
++ @612 + QI#ZakTalk12.0.3
++ @613 + QI#ZakTalk12.0.4
++ @614 + QI#ZakTalk12.0.5
++ @615 + QI#ZakTalk12.0.5
END 

IF ~~ QI#ZakTalk12.0.2
SAY @616
++ @617 + QI#ZakTalk12.0.3
++ @618 + QI#ZakTalk12.0.4
++ @619 + QI#ZakTalk12.0.5
++ @620 + QI#ZakTalk12.0.5
END 

IF ~~ QI#ZakTalk12.0.3
SAY @621
= @622
IF ~~ + QI#ZakTalk12.1
END 

IF ~~ QI#ZakTalk12.0.4
SAY @623
IF ~~ + QI#ZakTalk12.1
END 

IF ~~ QI#ZakTalk12.0.5
SAY @624
IF ~~ + QI#ZakTalk12.1
END 

IF ~~ QI#ZakTalk12.1
SAY @625
= @626
= @627
= @628
++ @629 + QI#ZakTalk12.1.1
++ @630 + QI#ZakTalk12.2
++ @631 + QI#ZakTalk12.1.2
++ @632 + QI#ZakTalk12.1.3
++ @633 + QI#ZakTalk12.1.4
END 

IF ~~ QI#ZakTalk12.1.1
SAY @634
IF ~~ + QI#ZakTalk12.3
END 

IF ~~ QI#ZakTalk12.1.2
SAY @635
IF ~~ + QI#ZakTalk12.3
END 

IF ~~ QI#ZakTalk12.1.3
SAY @636
IF ~~ + QI#ZakTalk12.3
END 

IF ~~ QI#ZakTalk12.1.4
SAY @637
IF ~~ + QI#ZakTalk12.3
END 

IF ~~ QI#ZakTalk12.2
SAY @638
IF ~~ + QI#ZakTalk12.3
END 

IF ~~ QI#ZakTalk12.3
SAY @639
IF ~~ DO ~IncrementGlobal("QI#ZakTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakTimer","GLOBAL",3600)~ EXIT
END 

/* Talk 13: I'm still having troubles relating to others. */ 
IF ~Global("QI#ZakTalk","GLOBAL",26)~ QI#ZakTalk13
SAY @640
= @641
++ @642 + QI#ZakTalk13.0.1
++ @643 + QI#ZakTalk13.1
++ @644 + QI#ZakTalk13.0.1
++ @645 + QI#ZakTalk13.0.1
++ @646 + QI#ZakTalk13.0.0x
END 

IF ~~ QI#ZakTalk13.0.0x
SAY @647
= @648
IF ~~ DO ~SetGlobal("QI#ZakFriendshipActive","GLOBAL",1)~ EXIT 
END

IF ~~ QI#ZakTalk13.0.1
SAY @649
IF ~~ + QI#ZakTalk13.1
END

IF ~~ QI#ZakTalk13.1
SAY @650
= @651
= @652
= @653
= @654
= @655
++ @656 + QI#ZakTalk13.1.1
++ @657 + QI#ZakTalk13.1.2
++ @658 + QI#ZakTalk13.1.3
++ @659 + QI#ZakTalk13.1.4
++ @660 + QI#ZakTalk13.1.5
++ @661 + QI#ZakTalk13.1.6
END 

IF ~~ QI#ZakTalk13.1.1
SAY @662
IF ~~ + QI#ZakTalk13.2
END 

IF ~~ QI#ZakTalk13.1.2
SAY @663
IF ~~ + QI#ZakTalk13.2
END 

IF ~~ QI#ZakTalk13.1.3
SAY @664
IF ~~ + QI#ZakTalk13.2
END 

IF ~~ QI#ZakTalk13.1.4
SAY @665
IF ~~ + QI#ZakTalk13.2
END 

IF ~~ QI#ZakTalk13.1.5
SAY @666
IF ~~ + QI#ZakTalk13.2
END 

IF ~~ QI#ZakTalk13.1.6
SAY @667
IF ~~ + QI#ZakTalk13.2
END 

IF ~~ QI#ZakTalk13.2
SAY @668
= @669
IF ~~ DO ~IncrementGlobal("QI#ZakTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakTimer","GLOBAL",3600)~ EXIT
END 

/* Talk 14: Society has a habit of caging the most creative ones of us and condeming them, but in the sea, there are no rules. */
IF ~Global("QI#ZakTalk","GLOBAL",28)~ QI#ZakTalk14
SAY @670
++ @671 + QI#ZakTalk14.0.3
++ @672 + QI#ZakTalk14.0.3
++ @673 + QI#ZakTalk14.0.1 
++ @674 + QI#ZakTalk14.0.2
++ @675 + QI#ZakTalk14.0.0x
END 

IF ~~ QI#ZakTalk14.0.0x
SAY @676
= @677
IF ~~ DO ~SetGlobal("QI#ZakFriendshipActive","GLOBAL",1)~ EXIT 
END

IF ~~ QI#ZakTalk14.0.1
SAY @678
IF ~~ + QI#ZakTalk14.1
END

IF ~~ QI#ZakTalk14.0.2
SAY @679
IF ~~ + QI#ZakTalk14.1
END

IF ~~ QI#ZakTalk14.0.3
SAY @680
IF ~~ + QI#ZakTalk14.1
END

IF ~~ QI#ZakTalk14.1
SAY @681
= @682
++ @683 + QI#ZakTalk14.2
++ @684 + QI#ZakTalk14.2
++ @685 + QI#ZakTalk14.1.1
++ @686 + QI#ZakTalk14.0.0x
END 

IF ~~ QI#ZakTalk14.1.1
SAY @687
= @688
IF ~~ DO ~SetGlobal("QI#ZakFriendshipActive","GLOBAL",1)~ EXIT 
END

IF ~~ QI#ZakTalk14.2
SAY @689
= @690
= @691
= @692
= @693
++ @694 + QI#ZakTalk14.2.1
++ @695 + QI#ZakTalk14.2.2
++ @696 + QI#ZakTalk14.2.3
++ @697 + QI#ZakTalk14.2.4
++ @698 + QI#ZakTalk14.2.5
END 

IF ~~ QI#ZakTalk14.2.1
SAY @699
IF ~~ + QI#ZakTalk14.3
END

IF ~~ QI#ZakTalk14.2.2
SAY @700
IF ~~ + QI#ZakTalk14.3
END

IF ~~ QI#ZakTalk14.2.3
SAY @701
IF ~~ + QI#ZakTalk14.3
END

IF ~~ QI#ZakTalk14.2.4
SAY @702
= @703
IF ~~ + QI#ZakTalk14.3
END

IF ~~ QI#ZakTalk14.2.5
SAY @704
= @705
= @706
IF ~~ + QI#ZakTalk14.3
END

IF ~~ QI#ZakTalk14.3
SAY @707
= @708
= @709
IF ~~ DO ~IncrementGlobal("QI#ZakTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakTimer","GLOBAL",3600)~ EXIT
END 

/* Talk 15: I'm a pirate. */ 
IF ~Global("QI#ZakTalk","GLOBAL",30)~ QI#ZakTalk15
SAY @710
++ @711 + QI#ZakTalk15.0.1
++ @712 + QI#ZakTalk15.0.2
++ @713 + QI#ZakTalk15.0.3
++ @714 + QI#ZakTalk15.0.0x
++ @715 + QI#ZakTalk15.0.4
END 

IF ~~ QI#ZakTalk15.0.0x
SAY @716
= @717
= @718
IF ~~ DO ~SetGlobal("QI#ZakFriendshipActive","GLOBAL",1)~ EXIT 
END

IF ~~ QI#ZakTalk15.0.1
SAY @719
IF ~~ + QI#ZakTalk15.1
END 

IF ~~ QI#ZakTalk15.0.2
SAY @720
++ @721 + QI#ZakTalk15.0.2a
++ @722 + QI#ZakTalk15.0.2b
++ @723 + QI#ZakTalk15.0.2c
++ @724 + QI#ZakTalk15.0.2d
++ @725 + QI#ZakTalk15.0.2e
END 

IF ~~ QI#ZakTalk15.0.2a
SAY @726
IF ~~ + QI#ZakTalk15.0.2ax
END

IF ~~ QI#ZakTalk15.0.2b
SAY @727
IF ~~ + QI#ZakTalk15.0.2ax
END

IF ~~ QI#ZakTalk15.0.2c
SAY @728
IF ~~ + QI#ZakTalk15.0.2ax
END

IF ~~ QI#ZakTalk15.0.2d
SAY @729
IF ~~ + QI#ZakTalk15.0.2ax
END

IF ~~ QI#ZakTalk15.0.2e
SAY @730
IF ~~ + QI#ZakTalk15.1
END 

IF ~~ QI#ZakTalk15.0.2ax
SAY @731
IF ~~ + QI#ZakTalk15.1
END

IF ~~ QI#ZakTalk15.0.3
SAY @732
IF ~~ + QI#ZakTalk15.1
END 

IF ~~ QI#ZakTalk15.0.4
SAY @733
IF ~~ + QI#ZakTalk15.1
END 

IF ~~ QI#ZakTalk15.1
SAY @734
= @735
= @736
++ @737 + QI#ZakTalk15.2
++ @738 + QI#ZakTalk15.1.1
++ @739 + QI#ZakTalk15.2
END

IF ~~ QI#ZakTalk15.1.1
SAY @740
IF ~~ + QI#ZakTalk15.2
END

IF ~~ QI#ZakTalk15.2
SAY @741
= @742
++ @743 + QI#ZakTalk15.2.1
++ @744 + QI#ZakTalk15.3
++ @745 + QI#ZakTalk15.3
++ @746 + QI#ZakTalk15.2.2
++ @747 + QI#ZakTalk15.2.3
++ @748 + QI#ZakTalk15.3
END 

IF ~~ QI#ZakTalk15.2.1
SAY @749
++ @750 + QI#ZakTalk15.3
++ @751 + QI#ZakTalk15.3
++ @752 + QI#ZakTalk15.2.2
++ @753 + QI#ZakTalk15.2.3
++ @754 + QI#ZakTalk15.3
END

IF ~~ QI#ZakTalk15.2.2
SAY @755
++ @756 + QI#ZakTalk15.2.2a
++ @757 + QI#ZakTalk15.2.2b
++ @758 + QI#ZakTalk15.3
++ @759 + QI#ZakTalk15.3
END

IF ~~ QI#ZakTalk15.2.2a
SAY @760
= @761
IF ~~ DO ~SetGlobal("QI#ZakFriendshipActive","GLOBAL",1)~ EXIT 
END

IF ~~ QI#ZakTalk15.2.2b
SAY @762
= @763
++ @764 + QI#ZakTalk15.2.2a
++ @765 + QI#ZakTalk15.2.2a
++ @766 + QI#ZakTalk15.2.2ba
END 

IF ~~ QI#ZakTalk15.2.2ba
SAY @767
++ @768 + QI#ZakTalk15.3
++ @769 + QI#ZakTalk15.3
++ @770 + QI#ZakTalk15.2.3
++ @771 + QI#ZakTalk15.3
END

IF ~~ QI#ZakTalk15.2.3
SAY @772
= @773
++ @774 + QI#ZakTalk15.2.2
++ @775 + QI#ZakTalk15.2.2a
++ @776 + QI#ZakTalk15.2.2a
END

IF ~~ QI#ZakTalk15.3
SAY @777
= @778
= @779
= @780
= @781
= @782
IF ~~ DO ~IncrementGlobal("QI#ZakTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakTimer","GLOBAL",3600)~ EXIT
END 

/* Talk 16: The pirate I was meant to be. */
IF ~Global("QI#ZakTalk","GLOBAL",32)~ QI#ZakTalk16
SAY @783
= @784
++ @785 + QI#ZakTalk16.1
++ @786 + QI#ZakTalk16.0.1
++ @787 + QI#ZakTalk16.0.2
++ @788 + QI#ZakTalk16.0.3
END 

IF ~~ QI#ZakTalk16.0.1
SAY @789
IF ~~ + QI#ZakTalk16.1
END

IF ~~ QI#ZakTalk16.0.2
SAY @790
IF ~~ + QI#ZakTalk16.1
END

IF ~~ QI#ZakTalk16.0.3
SAY @791
IF ~~ + QI#ZakTalk16.1
END

IF ~~ QI#ZakTalk16.1
SAY @792
= @793
++ @794 + QI#ZakTalk16.2
++ @795 + QI#ZakTalk16.1.1
++ @796 + QI#ZakTalk16.1.2
++ @797 + QI#ZakTalk16.1.3
END 

IF ~~ QI#ZakTalk16.1.1
SAY @798
IF ~~ + QI#ZakTalk16.2
END

IF ~~ QI#ZakTalk16.1.2
SAY @799
IF ~~ + QI#ZakTalk16.2
END

IF ~~ QI#ZakTalk16.1.3
SAY @800
IF ~~ + QI#ZakTalk16.2
END

IF ~~ QI#ZakTalk16.2
SAY @801
= @802
= @803
= @804
++ @805 + QI#ZakTalk16.2.1
++ @806 + QI#ZakTalk16.2.2
++ @807 + QI#ZakTalk16.2.3
++ @808 + QI#ZakTalk16.2.4
END 

IF ~~ QI#ZakTalk16.2.1
SAY @809
= @810
IF ~~ + QI#ZakTalk16.3
END 

IF ~~ QI#ZakTalk16.2.2
SAY @811
IF ~~ + QI#ZakTalk16.3
END 

IF ~~ QI#ZakTalk16.2.3
SAY @812
IF ~~ + QI#ZakTalk16.3
END 

IF ~~ QI#ZakTalk16.2.4
SAY @813
IF ~~ + QI#ZakTalk16.3
END 

IF ~~ QI#ZakTalk16.3
SAY @814
= @815
++ @816 + QI#ZakTalk16.4
++ @817 + QI#ZakTalk16.3.1
++ @818 + QI#ZakTalk16.3.2
++ @819 + QI#ZakTalk16.3.3
++ @820 + QI#ZakTalk16.3.4
END 

IF ~~ QI#ZakTalk16.3.1
SAY @821
IF ~~ + QI#ZakTalk16.4
END

IF ~~ QI#ZakTalk16.3.2
SAY @822
= @823
= @824
IF ~~ + QI#ZakTalk16.4
END

IF ~~ QI#ZakTalk16.3.3
SAY @825
IF ~~ + QI#ZakTalk16.4
END 

IF ~~ QI#ZakTalk16.3.4
SAY @826
IF ~~ + QI#ZakTalk16.4
END 

IF ~~ QI#ZakTalk16.4
SAY @827
IF ~~ DO ~IncrementGlobal("QI#ZakTalk","GLOBAL",1)~ EXIT
END 

END 

/**************************************************************************************************
			Romance-Related Talks
**************************************************************************************************/
APPEND QI#ZAKJ

/* Talk 1: This was never my strong suit. */
IF ~Global("QI#ZakSemiRomTalk","GLOBAL",2)~ QI#ZakSemiRomTalk1
SAY @828
++ @829 + QI#ZakSemiRomTalk1.0.1
++ @830 + QI#ZakSemiRomTalk1.0.2
++ @831 + QI#ZakSemiRomTalk1.0.3
++ @832 + QI#ZakSemiRomTalk1.0.0
END 

IF ~~ QI#ZakSemiRomTalk1.0.0
SAY @833
IF ~~ DO ~SetGlobal("QI#ZakSemiRomanceActive","GLOBAL",3)~ EXIT
END 

IF ~~ QI#ZakSemiRomTalk1.0.1
SAY @834
= @835
IF ~~ + QI#ZakSemiRomTalk1.1
END

IF ~~ QI#ZakSemiRomTalk1.0.2
SAY @836
IF ~~ + QI#ZakSemiRomTalk1.1
END

IF ~~ QI#ZakSemiRomTalk1.0.3
SAY @837
IF ~~ + QI#ZakSemiRomTalk1.1
END 

IF ~~ QI#ZakSemiRomTalk1.1
SAY @838
= @839
= @840
++ @841 + QI#ZakSemiRomTalk1.3
++ @842 + QI#ZakSemiRomTalk1.2
++ @843 + QI#ZakSemiRomTalk1.1.1
++ @844 + QI#ZakSemiRomTalk1.0.0
++ @845 + QI#ZakSemiRomTalk1.0.0
END 

IF ~~ QI#ZakSemiRomTalk1.1.1
SAY @846
++ @847 + QI#ZakSemiRomTalk1.1.1a
++ @848 + QI#ZakSemiRomTalk1.3
++ @849 + QI#ZakSemiRomTalk1.0.0
++ @850 + QI#ZakSemiRomTalk1.0.0
END 

IF ~~ QI#ZakSemiRomTalk1.1.1a
SAY @851
++ @852 + QI#ZakSemiRomTalk1.1.1aa
++ @853 + QI#ZakSemiRomTalk1.1.1aa
END

IF ~~ QI#ZakSemiRomTalk1.1.1aa
SAY @854
= @855
++ @856 + QI#ZakSemiRomTalk1.3
++ @857 + QI#ZakSemiRomTalk1.2
++ @858 + QI#ZakSemiRomTalk1.0.0
END 

IF ~~ QI#ZakSemiRomTalk1.2
SAY @859
++ @860 + QI#ZakSemiRomTalk1.2.1
++ @861 + QI#ZakSemiRomTalk1.3
++ @862 + QI#ZakSemiRomTalk1.0.0
END 

IF ~~ QI#ZakSemiRomTalk1.2.1
SAY @863
= @864
++ @865 + QI#ZakSemiRomTalk1.2.1a
++ @866 + QI#ZakSemiRomTalk1.3
++ @867 + QI#ZakSemiRomTalk1.3
++ @868 + QI#ZakSemiRomTalk1.0.0
END 

IF ~~ QI#ZakSemiRomTalk1.2.1a
SAY @869
= @870
IF ~~ DO ~IncrementGlobal("QI#ZakSemiRomTalk","GLOBAL",1) SetGlobal("QI#ZakSemiRomanceActive","GLOBAL",3) SetGlobal("QI#ZakSexOnlyActive","GLOBAL",1)~ EXIT
END 

IF ~~ QI#ZakSemiRomTalk1.3
SAY @871
= @872
IF ~~ DO ~IncrementGlobal("QI#ZakSemiRomTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakSemiRomanceTimer","GLOBAL",3600)~ EXIT
END 

/* Talk 2: I admire you. */
IF ~Global("QI#ZakSemiRomTalk","GLOBAL",4)~ QI#ZakSemiRomTalk2
SAY @873
++ @874 + QI#ZakSemiRomTalk2.1
++ @875 + QI#ZakSemiRomTalk2.1
++ @876 + QI#ZakSemiRomTalk2.1
++ @877 + QI#ZakSemiRomTalk2.1
++ @878 + QI#ZakSemiRomTalk2.0.1
END 

IF ~~ QI#ZakSemiRomTalk2.0.0x
SAY @879
IF ~~ DO ~SetGlobal("QI#ZakSemiRomanceActive","GLOBAL",3)~ EXIT 
END

IF ~~ QI#ZakSemiRomTalk2.0.1
SAY @880
IF ~~ + QI#ZakSemiRomTalk2.1
END 

IF ~~ QI#ZakSemiRomTalk2.1
SAY @881
++ @882 + QI#ZakSemiRomTalk2.1.1
++ @883 + QI#ZakSemiRomTalk2.1.2
++ @884 + QI#ZakSemiRomTalk2.2
++ @885 + QI#ZakSemiRomTalk2.1.3
END 

IF ~~ QI#ZakSemiRomTalk2.1.1
SAY @886
IF ~~ + QI#ZakSemiRomTalk2.2
END

IF ~~ QI#ZakSemiRomTalk2.1.2
SAY @887
IF ~~ + QI#ZakSemiRomTalk2.2
END

IF ~~ QI#ZakSemiRomTalk2.1.3
SAY @888
IF ~~ + QI#ZakSemiRomTalk2.2
END

IF ~~ QI#ZakSemiRomTalk2.2
SAY @889
= @890
= @891
= @892
++ @893 + QI#ZakSemiRomTalk2.2.1
++ @894 + QI#ZakSemiRomTalk2.2.1
++ @895 + QI#ZakSemiRomTalk2.2.2
++ @896 + QI#ZakSemiRomTalk2.0.0x
END

IF ~~ QI#ZakSemiRomTalk2.2.1
SAY @897
= @898
IF ~~ + QI#ZakSemiRomTalk2.3
END 

IF ~~ QI#ZakSemiRomTalk2.2.2
SAY @899
IF ~~ + QI#ZakSemiRomTalk2.3
END 

IF ~~ QI#ZakSemiRomTalk2.3
SAY @900
IF ~~ DO ~IncrementGlobal("QI#ZakSemiRomTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakSemiRomanceTimer","GLOBAL",3600)~ EXIT
END 

/* Talk 3: Let's take things slow. */
IF ~Global("QI#ZakSemiRomTalk","GLOBAL",6)~ QI#ZakSemiRomTalk3
SAY @901
= @902
++ @903 + QI#ZakSemiRomTalk3.0.4
++ @904 + QI#ZakSemiRomTalk3.0.1
++ @905 + QI#ZakSemiRomTalk3.0.2
++ @906 + QI#ZakSemiRomTalk3.0.3
END

IF ~~ QI#ZakSemiRomTalk3.0.1
SAY @907
IF ~~ + QI#ZakSemiRomTalk3.1
END

IF ~~ QI#ZakSemiRomTalk3.0.2
SAY @908
IF ~~ + QI#ZakSemiRomTalk3.1
END

IF ~~ QI#ZakSemiRomTalk3.0.3
SAY @909
IF ~~ + QI#ZakSemiRomTalk3.1
END

IF ~~ QI#ZakSemiRomTalk3.0.4
SAY @910
IF ~~ + QI#ZakSemiRomTalk3.1
END

IF ~~ QI#ZakSemiRomTalk3.1
SAY @911
= @912
++ @913 + QI#ZakSemiRomTalk3.1.1
++ @914 + QI#ZakSemiRomTalk3.1.2
++ @915 + QI#ZakSemiRomTalk3.1.3
++ @916 + QI#ZakSemiRomTalk3.1.4
END 

IF ~~ QI#ZakSemiRomTalk3.1.1
SAY @917
IF ~~ + QI#ZakSemiRomTalk3.2
END 

IF ~~ QI#ZakSemiRomTalk3.1.2
SAY @918
IF ~~ + QI#ZakSemiRomTalk3.2
END 

IF ~~ QI#ZakSemiRomTalk3.1.3
SAY @919
IF ~~ + QI#ZakSemiRomTalk3.2
END 

IF ~~ QI#ZakSemiRomTalk3.1.4
SAY @920
IF ~~ + QI#ZakSemiRomTalk3.2
END 

IF ~~ QI#ZakSemiRomTalk3.2
SAY @921
= @922
= @923
= @924
++ @925 + QI#ZakSemiRomTalk3.2.1
++ @926 + QI#ZakSemiRomTalk3.2.2
++ @927 + QI#ZakSemiRomTalk3.2.3
++ @928 + QI#ZakSemiRomTalk3.2.4
++ @929 + QI#ZakSemiRomTalk3.2.5
END 

IF ~~ QI#ZakSemiRomTalk3.2.1
SAY @930
IF ~~ + QI#ZakSemiRomTalk3.3
END 

IF ~~ QI#ZakSemiRomTalk3.2.2
SAY @931
= @932
= @933
IF ~~ DO ~SetGlobal("QI#ZakSemiRomanceActive","GLOBAL",3)~ EXIT 
END 

IF ~~ QI#ZakSemiRomTalk3.2.3
SAY @934
= @935
IF ~~ + QI#ZakSemiRomTalk3.3
END 

IF ~~ QI#ZakSemiRomTalk3.2.4
SAY @936
= @937
++ @938 + QI#ZakSemiRomTalk3.2.4a
++ @939 + QI#ZakSemiRomTalk3.2.4b
++ @940 + QI#ZakSemiRomTalk3.2.4c
++ @941 + QI#ZakSemiRomTalk3.2.4d
END 

IF ~~ QI#ZakSemiRomTalk3.2.4a
SAY @942
IF ~~ + QI#ZakSemiRomTalk3.3
END 

IF ~~ QI#ZakSemiRomTalk3.2.4b
SAY @943
IF ~~ + QI#ZakSemiRomTalk3.3
END 

IF ~~ QI#ZakSemiRomTalk3.2.4c
SAY @944
IF ~~ + QI#ZakSemiRomTalk3.3
END 

IF ~~ QI#ZakSemiRomTalk3.2.4d
SAY @945
IF ~~ + QI#ZakSemiRomTalk3.3
END  

IF ~~ QI#ZakSemiRomTalk3.2.5
SAY @946
++ @947 + QI#ZakSemiRomTalk3.3
++ @948 + QI#ZakSemiRomTalk3.3
++ @949 + QI#ZakSemiRomTalk3.2.5a
++ @950 + QI#ZakSemiRomTalk3.2.5a
END 

IF ~~ QI#ZakSemiRomTalk3.2.5a
SAY @951
= @952
IF ~~ DO ~SetGlobal("QI#ZakSemiRomanceActive","GLOBAL",3)~ EXIT 
END

IF ~~ QI#ZakSemiRomTalk3.3
SAY @953
= @954
IF ~~ DO ~IncrementGlobal("QI#ZakSemiRomTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakSemiRomanceTimer","GLOBAL",3600)~ EXIT
END 

/* Talk 4: I don't know how I feel about all this. */
IF ~Global("QI#ZakSemiRomTalk","GLOBAL",8)~ QI#ZakSemiRomTalk4
SAY @955
++ @956 + QI#ZakSemiRomTalk4.1
++ @957 + QI#ZakSemiRomTalk4.1
++ @958 + QI#ZakSemiRomTalk4.0.1
END 

IF ~~ QI#ZakSemiRomTalk4.0.1
SAY @959
++ @960 + QI#ZakSemiRomTalk4.1
++ @961 + QI#ZakSemiRomTalk4.1
++ @962 + QI#ZakSemiRomTalk4.0.1a
END

IF ~~ QI#ZakSemiRomTalk4.0.1a
SAY @963
= @964
IF ~~ DO ~SetGlobal("QI#ZakSemiRomanceActive","GLOBAL",3)~ EXIT 
END

IF ~~ QI#ZakSemiRomTalk4.1
SAY @965
= @966
++ @967 + QI#ZakSemiRomTalk4.1.1
++ @968 + QI#ZakSemiRomTalk4.1.2
++ @969 + QI#ZakSemiRomTalk4.1.1
END

IF ~~ QI#ZakSemiRomTalk4.1.1
SAY @970
= @971
++ @967 + QI#ZakSemiRomTalk4.1.1a
++ @968 + QI#ZakSemiRomTalk4.1.2
++ @973 + QI#ZakSemiRomTalk4.1.1a
END

IF ~~ QI#ZakSemiRomTalk4.1.1a
SAY @974
++ @975 + QI#ZakSemiRomTalk4.1.1aa
++ @976 + QI#ZakSemiRomTalk4.1.1ab
END 

IF ~~ QI#ZakSemiRomTalk4.1.1aa
SAY @972
IF ~~ + QI#ZakSemiRomTalk4.2
END

IF ~~ QI#ZakSemiRomTalk4.1.1ab
SAY @977
++ @978 + QI#ZakSemiRomTalk4.1.1aba
++ @979 + QI#ZakSemiRomTalk4.1.1abb
++ @980 + QI#ZakSemiRomTalk4.1.1abc
++ @981 + QI#ZakSemiRomTalk4.1.1abc
END 

IF ~~ QI#ZakSemiRomTalk4.1.1aba
SAY @982
IF ~~ + QI#ZakSemiRomTalk4.2
END

IF ~~ QI#ZakSemiRomTalk4.1.1abb
SAY @983
IF ~~ + QI#ZakSemiRomTalk4.2
END

IF ~~ QI#ZakSemiRomTalk4.1.1abc
SAY @984
= @985
IF ~~ DO ~SetGlobal("QI#ZakSemiRomanceActive","GLOBAL",3)~ EXIT 
END

IF ~~ QI#ZakSemiRomTalk4.1.2
SAY @986
IF ~~ + QI#ZakSemiRomTalk4.2
END

IF ~~ QI#ZakSemiRomTalk4.2
SAY @987
= @988
IF ~~ DO ~IncrementGlobal("QI#ZakSemiRomTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakSemiRomanceTimer","GLOBAL",3600)~ EXIT
END 

/* Talk 5: This is too much. I'm sorry. */ 
IF ~Global("QI#ZakSemiRomTalk","GLOBAL",10)~ QI#ZakSemiRomTalk5
SAY @989
++ @990 + QI#ZakSemiRomTalk5.1
++ @991 + QI#ZakSemiRomTalk5.0.1
++ @992 + QI#ZakSemiRomTalk5.0.2
++ @993 + QI#ZakSemiRomTalk5.0.3
++ @994 + QI#ZakSemiRomTalk5.0.3
END 

IF ~~ QI#ZakSemiRomTalk5.0.1
SAY @995
= @996
IF ~~ + QI#ZakSemiRomTalk5.1
END 

IF ~~ QI#ZakSemiRomTalk5.0.2
SAY @997
END 

IF ~~ QI#ZakSemiRomTalk5.0.3
SAY @998
= @999
IF ~~ + QI#ZakSemiRomTalk5.1
END 

IF ~~ QI#ZakSemiRomTalk5.1
SAY @1000
= @1001
= @1002
++ @1003 + QI#ZakSemiRomTalk5.1.1
++ @1004 + QI#ZakSemiRomTalk5.1.2
++ @1005 + QI#ZakSemiRomTalk5.1.3
++ @1006 + QI#ZakSemiRomTalk5.1.4
++ @1007 + QI#ZakSemiRomTalk5.1.5
++ @1008 + QI#ZakSemiRomTalk5.1.6
END 

IF ~~ QI#ZakSemiRomTalk5.1.1
SAY @1009
++ @1010 + QI#ZakSemiRomTalk5.1.3
++ @1011 + QI#ZakSemiRomTalk5.1.4
++ @1012 + QI#ZakSemiRomTalk5.1.5
++ @1013 + QI#ZakSemiRomTalk5.1.6
++ @1014 + QI#ZakSemiRomTalk5.1.7
END

IF ~~ QI#ZakSemiRomTalk5.1.2
SAY @1015
++ @1016 + QI#ZakSemiRomTalk5.1.3
++ @1017 + QI#ZakSemiRomTalk5.1.4
++ @1018 + QI#ZakSemiRomTalk5.1.5
++ @1019 + QI#ZakSemiRomTalk5.1.6
++ @1020 + QI#ZakSemiRomTalk5.1.7
END

IF ~~ QI#ZakSemiRomTalk5.1.3
SAY @1021
= @1022
IF ~~ + QI#ZakSemiRomTalk5.2
END

IF ~~ QI#ZakSemiRomTalk5.1.4
SAY @1023
IF ~~ + QI#ZakSemiRomTalk5.2
END

IF ~~ QI#ZakSemiRomTalk5.1.5
SAY @1024
IF ~~ + QI#ZakSemiRomTalk5.2
END

IF ~~ QI#ZakSemiRomTalk5.1.6
SAY @1025
IF ~~ + QI#ZakSemiRomTalk5.2
END

IF ~~ QI#ZakSemiRomTalk5.1.7
SAY @1026
IF ~~ + QI#ZakSemiRomTalk5.2
END

IF ~~ QI#ZakSemiRomTalk5.2
SAY @1027
++ @1028 + QI#ZakSemiRomTalk5.2.1
++ @1029 + QI#ZakSemiRomTalk5.3
++ @1030 + QI#ZakSemiRomTalk5.2.2
++ @1031 + QI#ZakSemiRomTalk5.2.3
++ @1032 + QI#ZakSemiRomTalk5.2.4
END 

IF ~~ QI#ZakSemiRomTalk5.2.1
SAY @1033
IF ~~ + QI#ZakSemiRomTalk5.3
END

IF ~~ QI#ZakSemiRomTalk5.2.2
SAY @1034
= @1035
IF ~~ + QI#ZakSemiRomTalk5.3
END

IF ~~ QI#ZakSemiRomTalk5.2.3
SAY @1036
= @1037
IF ~~ + QI#ZakSemiRomTalk5.3
END

IF ~~ QI#ZakSemiRomTalk5.2.4
SAY @1038
= @1039
= @1040
= @1041
IF ~~ DO ~IncrementGlobal("QI#ZakSemiRomTalk","GLOBAL",1) SetGlobal("QI#ZakSemiRomanceActive","GLOBAL",3) DropInventory() LeaveParty() EscapeArea()~ EXIT 
END

IF ~~ QI#ZakSemiRomTalk5.3
SAY @1042
= @1043
IF ~~ DO ~IncrementGlobal("QI#ZakSemiRomTalk","GLOBAL",1) SetGlobal("QI#ZakSemiRomanceActive","GLOBAL",3) RealSetGlobalTimer("QI#ZakSemiRomanceTimer","GLOBAL",3600)~ EXIT 
END 

/* Talk 6: Are you okay? */ 
IF ~Global("QI#ZakSemiRomTalk","GLOBAL",12)~ QI#ZakSemiRomTalk6
SAY @1274
= @1275
++ @1276 + QI#ZakSemiRomTalk6.1
++ @1277 + QI#ZakSemiRomTalk6.1
++ @1278 + QI#ZakSemiRomTalk6.0.1
++ @1279 + QI#ZakSemiRomTalk6.0.1
++ @1280 + QI#ZakSemiRomTalk6.0.2
++ @1281 + QI#ZakSemiRomTalk6.0x
++ @1282 + QI#ZakSemiRomTalk6.0x
END

IF ~~ QI#ZakSemiRomTalk6.0x
SAY @1283
= @1284
= @1285
IF ~~ DO ~IncrementGlobal("QI#ZakSemiRomTalk","GLOBAL",1)~ EXIT 
END 

IF ~~ QI#ZakSemiRomTalk6.0.1
SAY @1286
IF ~~ + QI#ZakSemiRomTalk6.1
END

IF ~~ QI#ZakSemiRomTalk6.0.2
SAY @1287
IF ~~ + QI#ZakSemiRomTalk6.1
END 

IF ~~ QI#ZakSemiRomTalk6.1
SAY @1288
= @1289
= @1290
++ @1291 + QI#ZakSemiRomTalk6.1.1
++ @1292 + QI#ZakSemiRomTalk6.1.1
++ @1293 + QI#ZakSemiRomTalk6.1.2
++ @1294 + QI#ZakSemiRomTalk6.0x
END

IF ~~ QI#ZakSemiRomTalk6.1.1
SAY @1295
IF ~~ + QI#ZakSemiRomTalk6.2
END 

IF ~~ QI#ZakSemiRomTalk6.1.2
SAY @1296
IF ~~ + QI#ZakSemiRomTalk6.2
END

IF ~~ QI#ZakSemiRomTalk6.2
SAY @1297
= @1298
IF ~~ DO ~IncrementGlobal("QI#ZakSemiRomTalk","GLOBAL",1)~ EXIT 
END

END


/**************************************************************************************************
			No Romance Only Physical Track
**************************************************************************************************/
APPEND QI#ZAKJ

/* Talk 2.5a: Visting PC at night after no feelings statement. */
IF ~Global("QI#ZakNoFeelingsTalk","GLOBAL",2)~ QI#ZakNoFeelingsTalk1
SAY @1044
++ @1045 + QI#ZakNoFeelingsTalk1.1.1
++ @1046 + QI#ZakNoFeelingsTalk1.1.2
++ @1047 + QI#ZakNoFeelingsTalk1.1.3
++ @1048 + QI#ZakNoFeelingsTalk1.1.4
END 

IF ~~ QI#ZakNoFeelingsTalk1.1.1
SAY @1049
IF ~~ + QI#ZakNoFeelingsTalk1.2
END 

IF ~~ QI#ZakNoFeelingsTalk1.1.2
SAY @1050
IF ~~ + QI#ZakNoFeelingsTalk1.2
END 

IF ~~ QI#ZakNoFeelingsTalk1.1.3
SAY @1051
++ @1052 + QI#ZakNoFeelingsTalk1.1.1
++ @1053 + QI#ZakNoFeelingsTalk1.1.2
++ @1054 + QI#ZakNoFeelingsTalk1.1.4
END 

IF ~~ QI#ZakNoFeelingsTalk1.1.4
SAY @1055
= @1056
IF ~~ DO ~SetGlobal("QI#ZakNoSexOnlyActive","GLOBAL",2) RestParty()~ EXIT 
END 

IF ~~ QI#ZakNoFeelingsTalk1.2
SAY @1057
= @1058
IF ~~ DO ~IncrementGlobal("QI#ZakNoFeelingsTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakNoFeelingsTimer","GLOBAL",3600) RestParty()~ EXIT
END

/* Talk 2.5b: Visting PC at night after no feelings statement - Part 2. */
IF ~Global("QI#ZakNoFeelingsTalk","GLOBAL",4)~ QI#ZakNoFeelingsTalk2
SAY @1059
= @1060
++ @1061 + QI#ZakNoFeelingsTalk2.0.1
++ @1062 + QI#ZakNoFeelingsTalk2.0.2
++ @1063 + QI#ZakNoFeelingsTalk2.0.3
++ @1064 + QI#ZakNoFeelingsTalk2.0.4
++ @1065 + QI#ZakNoFeelingsTalk2.0.0x
END 

IF ~~ QI#ZakNoFeelingsTalk2.0.0x
SAY @1066
IF ~~ DO ~ IncrementGlobal("QI#ZakNoFeelingsTalk","GLOBAL",1) RealSetGlobalTimer("QI#ZakNoFeelingsTimer","GLOBAL",3600) RestParty()~ EXIT 
END 

IF ~~ QI#ZakNoFeelingsTalk2.0.1
SAY @1067
IF ~~ + QI#ZakNoFeelingsTalk2.1
END 

IF ~~ QI#ZakNoFeelingsTalk2.0.2
SAY @1068
IF ~~ + QI#ZakNoFeelingsTalk2.1
END 

IF ~~ QI#ZakNoFeelingsTalk2.0.3
SAY @1069
= @1070
= @1071
IF ~~ DO ~SetGlobal("QI#ZakNoSexOnlyActive","GLOBAL",2) RestParty() ~ EXIT 
END 

IF ~~ QI#ZakNoFeelingsTalk2.0.4
SAY @1072
IF ~~ + QI#ZakNoFeelingsTalk2.1
END 

IF ~~ QI#ZakNoFeelingsTalk2.1
SAY @1073
IF ~~ DO ~ IncrementGlobal("QI#ZakNoFeelingsTalk","GLOBAL",1)RealSetGlobalTimer("QI#ZakNoFeelingsTimer","GLOBAL",3600) RestParty()~ EXIT 
END 

/* Talk 2.5c: Visting PC at night after no feelings statement - Part 3. */
IF ~Global("QI#ZakNoFeelingsTalk","GLOBAL",6)~ QI#ZakNoFeelingsTalk3
SAY @1074
++ @1075 + QI#ZakNoFeelingsTalk3.1
++ @1076 + QI#ZakNoFeelingsTalk3.1
++ @1077 + QI#ZakNoFeelingsTalk3.0.1
++ @1078 + QI#ZakNoFeelingsTalk3.1
++ @1079 + QI#ZakNoFeelingsTalk3.1
END 

IF ~~ QI#ZakNoFeelingsTalk3.0.1
SAY @1080
IF ~~ + QI#ZakNoFeelingsTalk3.1
END 

IF ~~ QI#ZakNoFeelingsTalk3.1
SAY @1081
= @1082
= @1083
++ @1084 + QI#ZakNoFeelingsTalk3.1.1
++ @1085 + QI#ZakNoFeelingsTalk3.1.2
++ @1086 + QI#ZakNoFeelingsTalk3.2
++ @1087 + QI#ZakNoFeelingsTalk3.2
END

IF ~~ QI#ZakNoFeelingsTalk3.1.1
SAY @1088
= @1089
= @1090
++ @1091 + QI#ZakNoFeelingsTalk3.1.1a
++ @1092 + QI#ZakNoFeelingsTalk3.2
++ @1093 + QI#ZakNoFeelingsTalk3.2
END 

IF ~~ QI#ZakNoFeelingsTalk3.1.1a
SAY @1094
= @1095
++ @1096 + QI#ZakNoFeelingsTalk3.1.1aa
++ @1097 + QI#ZakNoFeelingsTalk3.1.1ab
++ @1098 + QI#ZakNoFeelingsTalk3.1.1ab
END

IF ~~ QI#ZakNoFeelingsTalk3.1.1aa
SAY @1099
= @1100
IF ~~ DO ~SetGlobal("QI#ZakNoSexOnlyActive","GLOBAL",2) RestParty()~ EXIT 
END 

IF ~~ QI#ZakNoFeelingsTalk3.1.1ab
SAY @1101
= @1102
IF ~~ DO ~SetGlobal("QI#ZakNoSexOnlyActive","GLOBAL",2) RestParty()~ EXIT 
END 

IF ~~ QI#ZakNoFeelingsTalk3.1.2
SAY @1103
++ @1104 + QI#ZakNoFeelingsTalk3.1.1
++ @1105 + QI#ZakNoFeelingsTalk3.2
++ @1106 + QI#ZakNoFeelingsTalk3.2
END

IF ~~ QI#ZakNoFeelingsTalk3.2
SAY @1107
= @1108
IF ~~ DO ~SetGlobal("QI#ZakNoSexOnlyActive","GLOBAL",2) RestParty()~ EXIT 
END 

END 

/**************************************************************************************************
			Event Talks
**************************************************************************************************/
APPEND QI#ZAKJ

/* Event 1: *Seeing a note* - I had a hard time figuring out my signature. */
IF ~Global("QI#ZakNotes", "GLOBAL",1)~ QI#ZakNotesTalk1
SAY @1109
= @1110
= @1111
= @1112
IF ~~ DO ~SetGlobal("QI#ZakNotes","GLOBAL",2)~ EXIT
END 

/* Event 2: *PC dreams* - I used to have bad dreams when my mother left my father and me. */
IF ~Global("QI#ZakDreams","GLOBAL",2)~ QI#ZakDreamTalk1
SAY @1113
++ @1114 + QI#ZakDreamTalk1.1
++ @1115 + QI#ZakDreamTalk1.1
++ @1116 + QI#ZakDreamTalk1.1
++ @1117 + QI#ZakDreamTalk1.1
END

IF ~~ QI#ZakDreamTalk1.1
SAY @1118
= @1119
= @1120
= @1121
= @1122
IF ~~ DO ~SetGlobal("QI#ZakDreams","GLOBAL",3)~ EXIT
END 

/* Event 3: *PC helps little girl find her dead cat* - Buttercup */
IF ~Global("QI#ZakButtercup","GLOBAL",1)~ QI#ZakButtercupTalk1
SAY @1123
++ @1124 + QI#ZakButtercupTalk1.1
++ @1125 + QI#ZakButtercupTalk1.1a
++ @1126 + QI#ZakButtercupTalk1.1.0x
END 

IF ~~ QI#ZakButtercupTalk1.1a
SAY @1127
= @1128
= @1129
++ @1130 + QI#ZakButtercupTalk1.2
++ @1131 + QI#ZakButtercupTalk1.1.1
++ @1132 + QI#ZakButtercupTalk1.1.2
++ @1133 + QI#ZakButtercupTalk1.1.0x
END

IF ~~ QI#ZakButtercupTalk1.1
SAY @1134
= @1135
= @1136
= @1137
++ @1138 + QI#ZakButtercupTalk1.2
++ @1139 + QI#ZakButtercupTalk1.1.1
++ @1140 + QI#ZakButtercupTalk1.1.2
++ @1141 + QI#ZakButtercupTalk1.1.0x
END

IF ~~ QI#ZakButtercupTalk1.1.0x
SAY @1142
IF ~~ DO ~SetGlobal("QI#ZakButtercup","GLOBAL",2)~ EXIT
END

IF ~~ QI#ZakButtercupTalk1.1.1
SAY @1143
IF ~~ + QI#ZakButtercupTalk1.2
END

IF ~~ QI#ZakButtercupTalk1.1.2
SAY @1144
IF ~~ + QI#ZakButtercupTalk1.2
END 

IF ~~ QI#ZakButtercupTalk1.2
SAY @1145
= @1146
IF ~~ DO ~SetGlobal("QI#ZakButtercup","GLOBAL",2)~ EXIT 
END 

/* Event 4: *PC finds out their heritage* - And I thought being a pirate was bad */
IF ~Global("QI#ZakBhaalspawnTalk","GLOBAL",1)~ QI#ZakBhaalspawnTalk1
SAY @1147
= @1148
++ @1149 + QI#ZakBhaalspawnTalk1.0.1
++ @1150 + QI#ZakBhaalspawnTalk1.0.2
+ ~Global("QI#ZakSemiRomanceActive","GLOBAL",1)~ + @1151 + QI#ZakBhaalspawnTalk1.0.3
++ @1152 + QI#ZakBhaalspawnTalk1.0.4
++ @1153 + QI#ZakBhaalspawnTalk1.0.0x
END 

IF ~~ QI#ZakBhaalspawnTalk1.0.0x
SAY @1154
IF ~~ DO ~SetGlobal("QI#ZakBhaalspawnTalk","GLOBAL",2)~ EXIT 
END 

IF ~~ QI#ZakBhaalspawnTalk1.0.1
SAY @1155
IF ~~ + QI#ZakBhaalspawnTalk1.1
END

IF ~~ QI#ZakBhaalspawnTalk1.0.2
SAY @1156
IF ~~ + QI#ZakBhaalspawnTalk1.1
END

IF ~~ QI#ZakBhaalspawnTalk1.0.3
SAY @1157
= @1158
= @1159
++ @1160 + QI#ZakBhaalspawnTalk1.0.3a
++ @1161 + QI#ZakBhaalspawnTalk1.0.3b
++ @1162 + QI#ZakBhaalspawnTalk1.0.3c
++ @1163 + QI#ZakBhaalspawnTalk1.0.3d
END

IF ~~ QI#ZakBhaalspawnTalk1.0.3a
SAY @1164
= @1165
IF ~~ + QI#ZakBhaalspawnTalk1.2
END 

IF ~~ QI#ZakBhaalspawnTalk1.0.3b
SAY @1166
= @1165
IF ~~ + QI#ZakBhaalspawnTalk1.2
END

IF ~~ QI#ZakBhaalspawnTalk1.0.3c
SAY @1167
IF ~~ + QI#ZakBhaalspawnTalk1.2
END 

IF ~~ QI#ZakBhaalspawnTalk1.0.3d
SAY @1168
= @1169
= @1170
IF ~~ + QI#ZakBhaalspawnTalk1.2
END 

IF ~~ QI#ZakBhaalspawnTalk1.0.4
SAY @1171
IF ~~ + QI#ZakBhaalspawnTalk1.1
END

IF ~~ QI#ZakBhaalspawnTalk1.1
SAY @1172
= @1173
IF ~~ DO ~SetGlobal("QI#ZakBhaalspawnTalk","GLOBAL",2)~ EXIT
END 

IF ~~ QI#ZakBhaalspawnTalk1.2
SAY @1174
= @1175
IF ~~ DO ~SetGlobal("QI#ZakBhaalspawnTalk","GLOBAL",2)~ EXIT
END

/* Event 5: *Crashed ship* - Reminds me of my ship */
IF ~Global("QI#ZakCrashedShip","GLOBAL",1)~ QI#ZakCrashedShipTalk1
SAY @1176
= @1177
IF ~~ DO ~SetGlobal("QI#ZakCrashedShip","GLOBAL",2)~ EXIT 
END 

/* Event 6: *Tavern Drinks* - Where's that pint of ale? */
IF ~Global("QI#ZakTavern","GLOBAL",1)~ QI#ZakTavern1
SAY @1178
++ @1179 + QI#ZakTavern1.1
++ @1180 + QI#ZakTavern1.1
++ @1181 + QI#ZakTavern1.0
++ @1182 + QI#ZakTavern1.0
END 

IF ~~ QI#ZakTavern1.0
SAY @1183
IF ~~ DO ~SetGlobal("QI#ZakTavern","GLOBAL",2)~ EXIT 
END 

IF ~~ QI#ZakTavern1.1
SAY @1184
= @1185
++ @1186 + QI#ZakTavern1.1.1
++ @1187 + QI#ZakTavern1.1.2
++ @1188 + QI#ZakTavern1.1.3
++ @1189 + QI#ZakTavern1.0
END 

IF ~~ QI#ZakTavern1.1.1
SAY @1190
++ @1191 + QI#ZakTavern1.1.1a
++ @1192 + QI#ZakTavern1.2
++ @1193 + QI#ZakTavern1.1.2
END 

IF ~~ QI#ZakTavern1.1.1a
SAY @1194
IF ~~ + QI#ZakTavern1.2
END 

IF ~~ QI#ZakTavern1.1.2
SAY @1195
= @1196
IF ~~ DO ~SetGlobal("QI#ZakTavern","GLOBAL",2)~ EXIT 
END 

IF ~~ QI#ZakTavern1.1.3
SAY @1197
= @1198
IF ~~ DO ~SetGlobal("QI#ZakTavern","GLOBAL",2)~ EXIT 
END 

IF ~~ QI#ZakTavern1.2
SAY @1199
= @1200
IF ~~ DO ~SetGlobal("QI#ZakTavern","GLOBAL",2) Wait(3)~ EXIT 
END 
 

/* Event 7: *Blushing Mermaid* - Have you ever seen a blushing mermaid (special segment if PC is in a no feelings relationship with him) */
IF ~Global("QI#ZakBlushingMermaid","GLOBAL",1)~ QI#ZakBlushingMermaid
SAY @1201
++ @1202 + QI#ZakBlushingMermaid1.0.1
++ @1203 + QI#ZakBlushingMermaid1.0.2
++ @1204 + QI#ZakBlushingMermaid1.0.3
++ @1205 + QI#ZakBlushingMermaid1.0.4
++ @1206 + QI#ZakBlushingMermaid1.0.5
++ @1207 + QI#ZakBlushingMermaid1.0.0x
END 

IF ~~ QI#ZakBlushingMermaid1.0.0x
SAY @1208
IF ~~ DO ~SetGlobal("QI#ZakBlushingMermaid","GLOBAL",2)~ EXIT
END

IF ~~ QI#ZakBlushingMermaid1.0.1
SAY @1209
= @1210
= @1211
++ @1212 + QI#ZakBlushingMermaid1.0.2
++ @1213 + QI#ZakBlushingMermaid1.0.2
++ @1214 + QI#ZakBlushingMermaid1.0.5
++ @1215 + QI#ZakBlushingMermaid1.0.0x
END 

IF ~~ QI#ZakBlushingMermaid1.0.2
SAY @1216
IF ~~ + QI#ZakBlushingMermaid1.1
END

IF ~~ QI#ZakBlushingMermaid1.0.3
SAY @1217
++ @1218 + QI#ZakBlushingMermaid1.0.3a
++ @1219 + QI#ZakBlushingMermaid1.0.2
++ @1220 + QI#ZakBlushingMermaid1.0.2
++ @1221 + QI#ZakBlushingMermaid1.0.5
END 

IF ~~ QI#ZakBlushingMermaid1.0.3a
SAY @1222
IF ~~ + QI#ZakBlushingMermaid1.1
END 

IF ~~ QI#ZakBlushingMermaid1.0.4
SAY @1223
++ @1224 + QI#ZakBlushingMermaid1.1
++ @1225 + QI#ZakBlushingMermaid1.0.5
++ @1226 + QI#ZakBlushingMermaid1.0.0x
END 

IF ~~ QI#ZakBlushingMermaid1.0.5
SAY @1227
IF ~~ DO ~SetGlobal("QI#ZakBlushingMermaid","GLOBAL",2)~ EXIT
END
 
IF ~~ QI#ZakBlushingMermaid1.1
SAY @1228
IF ~~ DO ~SetGlobal("QI#ZakBlushingMermaid","GLOBAL",2)~ EXIT
END


/* Event 8: *Getting a ship and crew* - We've amassed a lot of money. */
IF ~Global("QI#ZakShipMoney","GLOBAL",1)~ QI#ZakShipMoneyTalk1
SAY @1229
= @1230
++ @1231 + QI#ZakShipMoneyTalk1.0.1
++ @1232 + QI#ZakShipMoneyTalk1.0.2
++ @1233 + QI#ZakShipMoneyTalk1.0.3
++ @1234 + QI#ZakShipMoneyTalk1.0.1
++ @1235 + QI#ZakShipMoneyTalk1.0.4
END 

IF ~~ QI#ZakShipMoneyTalk1.0.1
SAY @1236
IF ~~ + QI#ZakShipMoneyTalk1.1
END 

IF ~~ QI#ZakShipMoneyTalk1.0.2
SAY @1237
IF ~~ + QI#ZakShipMoneyTalk1.1
END 

IF ~~ QI#ZakShipMoneyTalk1.0.3
SAY @1238
IF ~~ + QI#ZakShipMoneyTalk1.1
END 

IF ~~ QI#ZakShipMoneyTalk1.0.4
SAY @1239
IF ~~ + QI#ZakShipMoneyTalk1.1
END 

IF ~~ QI#ZakShipMoneyTalk1.1
SAY @1240
= @1241
++ @1242 + QI#ZakShipMoneyTalk1.1.1
++ @1243 + QI#ZakShipMoneyTalk1.2
++ @1244 + QI#ZakShipMoneyTalk1.2
++ @1245 + QI#ZakShipMoneyTalk1.1.2
END 

IF ~~ QI#ZakShipMoneyTalk1.1.1
SAY @1246
IF ~~ + QI#ZakShipMoneyTalk1.2
END

IF ~~ QI#ZakShipMoneyTalk1.1.2
SAY @1247
IF ~~ + QI#ZakShipMoneyTalk1.2
END

IF ~~ QI#ZakShipMoneyTalk1.2
SAY @1248
= @1249
= @1250
= @1251
++ @1252 + QI#ZakShipMoneyTalk1.3
++ @1253 + QI#ZakShipMoneyTalk1.2.1
++ @1254 + QI#ZakShipMoneyTalk1.2.2
END 

IF ~~ QI#ZakShipMoneyTalk1.2.1
SAY @1255
IF ~~ + QI#ZakShipMoneyTalk1.3
END

IF ~~ QI#ZakShipMoneyTalk1.2.2
SAY @1256
= @1257
++ @1258 + QI#ZakShipMoneyTalk1.3
++ @1259 + QI#ZakShipMoneyTalk1.3.1
++ @1260 + QI#ZakShipMoneyTalk1.2.2x
END

IF ~~ QI#ZakShipMoneyTalk1.2.2x
SAY @1261
IF ~~ DO ~SetGlobal("QI#ZakShipMoney","GLOBAL",2) LeaveParty() TakePartyGold(20000) EscapeArea()~ EXIT
END 

IF ~~ QI#ZakShipMoneyTalk1.3
SAY @1262
= @1263
++ @1264 + QI#ZakShipMoneyTalk1.4
++ @1265 + QI#ZakShipMoneyTalk1.4
++ @1266 + QI#ZakShipMoneyTalk1.3.1
++ @1267 + QI#ZakShipMoneyTalk1.2.2x
END 

IF ~~ QI#ZakShipMoneyTalk1.3.1
SAY @1268
++ @1269 + QI#ZakShipMoneyTalk1.4.1
++ @1270 + QI#ZakShipMoneyTalk1.2.2x
END

IF ~~ QI#ZakShipMoneyTalk1.4
SAY @1271
IF ~~ DO ~SetGlobal("QI#ZakShipMoney","GLOBAL",2) TakePartyGold(10000) DestroyGold(10000)~ EXIT
END 

IF ~~ QI#ZakShipMoneyTalk1.4.1
SAY @1271
IF ~~ DO ~SetGlobal("QI#ZakShipMoney","GLOBAL",2) TakePartyGold(8000) DestroyGold(8000)~ EXIT
END 

/* Event 9: *Tavern full of sailors* - These men are sailors no doubt. */
IF ~Global("QI#ZakSailorTavern","GLOBAL",1)~ QI#ZakSailorTavernTalk1
SAY @1272
= @1273
IF ~~ DO ~SetGlobal("QI#ZakSailorTavern","GLOBAL",2)~ EXIT 
END 

/* Event 10: *Umberlee and Talos* - The Bitch Queen or the Storm Lord? */
// PC Sided
IF ~Global("QI#ZakSeaGodsDecided","GLOBAL",1)~ QI#ZakSeaGodsDispute1
SAY @1303
= @1304
++ @1305 + QI#ZakSeaGodsDispute1.1
++ @1306 + QI#ZakSeaGodsDispute1.0.1
++ @1307 + QI#ZakSeaGodsDispute1.0.2
++ @1308 + QI#ZakSeaGodsDispute1.0.3
++ @1309 + QI#ZakSeaGodsDispute1.1
END

IF ~~ QI#ZakSeaGodsDispute1.0.1
SAY @1310
= @1311
= @1312
++ @1305 + QI#ZakSeaGodsDispute1.1
++ @1307 + QI#ZakSeaGodsDispute1.0.2
++ @1308 + QI#ZakSeaGodsDispute1.0.3
++ @1309 + QI#ZakSeaGodsDispute1.1
END 

IF ~~ QI#ZakSeaGodsDispute1.0.2
SAY @1313
= @1314
= @1315
= @1316
= @1317
= @1318
++ @1305 + QI#ZakSeaGodsDispute1.1
++ @1306 + QI#ZakSeaGodsDispute1.0.1
++ @1307 + QI#ZakSeaGodsDispute1.0.2
++ @1308 + QI#ZakSeaGodsDispute1.0.3
++ @1309 + QI#ZakSeaGodsDispute1.1
END 

IF ~~ QI#ZakSeaGodsDispute1.0.3
SAY @1319
= @1320
= @1321
= @1322
= @1323
++ @1305 + QI#ZakSeaGodsDispute1.1
++ @1306 + QI#ZakSeaGodsDispute1.0.1
++ @1307 + QI#ZakSeaGodsDispute1.0.2
++ @1308 + QI#ZakSeaGodsDispute1.0.3
++ @1309 + QI#ZakSeaGodsDispute1.1
END 

IF ~~ QI#ZakSeaGodsDispute1.1
SAY @1324
IF ~~ DO ~SetGlobal("QI#ZakSeaGodsDecided","GLOBAL",2)~ EXIT 
END 

//PC Undecided
IF ~Global("QI#ZakSeaGodsUndecided","GLOBAL",1)~ QI#ZakSeaGodsDispute2
SAY @1325
= @1326
++ @1327 + QI#ZakSeaGodsDispute2.1
++ @1328 + QI#ZakSeaGodsDispute2.1
++ @1307 + QI#ZakSeaGodsDispute2.0.1
++ @1308 + QI#ZakSeaGodsDispute2.0.2
++ @1329 + QI#ZakSeaGodsDispute2.1
END

IF ~~ QI#ZakSeaGodsDispute2.0.1
SAY @1313
= @1314
= @1315
= @1316
= @1317
++ @1327 + QI#ZakSeaGodsDispute2.1
++ @1328 + QI#ZakSeaGodsDispute2.1
++ @1307 + QI#ZakSeaGodsDispute2.0.1
++ @1308 + QI#ZakSeaGodsDispute2.0.2
++ @1329 + QI#ZakSeaGodsDispute2.1
END 

IF ~~ QI#ZakSeaGodsDispute2.0.2
SAY @1319
= @1320
= @1321
= @1322
++ @1327 + QI#ZakSeaGodsDispute2.1
++ @1328 + QI#ZakSeaGodsDispute2.1
++ @1307 + QI#ZakSeaGodsDispute2.0.1
++ @1308 + QI#ZakSeaGodsDispute2.0.2
++ @1329 + QI#ZakSeaGodsDispute2.1
END 

IF ~~ QI#ZakSeaGodsDispute2.1
SAY @1330
IF ~~ DO ~SetGlobal("QI#ZakSeaGodsUndecided","GLOBAL",2)~ EXIT
END 

END 