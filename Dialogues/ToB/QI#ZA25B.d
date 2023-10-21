BEGIN QI#ZA25B

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
Global("QI#Zak2ImoenToBTalk","GLOBAL",0)~ THEN QI#ZA25B QI#Zak2ImoenToBTalk1
@0
DO ~SetGlobal("QI#Zak2ImoenToBTalk","GLOBAL",1)~
== BIMOEN25 @1
= @2
== QI#ZA25B @3
== BIMOEN25 @4
= @5
== QI#ZA25B @6
== BIMOEN25 @7
== QI#ZA25B @8
== BIMOEN25 @9
= @10
= @11
EXIT 

//Talk 2
CHAIN
IF ~InParty("QI#ZAK2")
InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#Zak2ImoenToBTalk","GLOBAL",1)~ THEN QI#ZA25B QI#Zak2ImoenToBTalk2
@12
DO ~SetGlobal("QI#Zak2ImoenToBTalk","GLOBAL",2)~
== BIMOEN25 @13
== QI#ZA25B @14
== BIMOEN25 @15
= @16
== QI#ZA25B @17
== BIMOEN25 @18
== QI#ZA25B @19
== BIMOEN25 @20
EXIT 


/**************************************************************************************************
										Aerie Banters (1)
**************************************************************************************************/

//Talk 1
CHAIN
IF ~InParty("QI#ZAK2")
InParty("Aerie")
See("QI#ZAK2")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#Zak2AerieToBTalk","GLOBAL",0)~ THEN BAERIE25 QI#Zak2AerieToBTalk1
@21
DO ~SetGlobal("QI#Zak2AerieToBTalk","GLOBAL",1)~
== QI#ZA25B @22
== BAERIE25 @23
== QI#ZA25B @24
= @25
== BAERIE25 @26
== QI#ZA25B @27
= @28
== BAERIE25 @29
EXIT 


/**************************************************************************************************
										Nalia Banters (2)
**************************************************************************************************/

//Talk 1
CHAIN
IF ~InParty("QI#ZAK2")
InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#Zak2NaliaToBTalk","GLOBAL",0)~ THEN QI#ZA25B QI#Zak2NaliaToBTalk1
@30
DO ~SetGlobal("QI#Zak2NaliaToBTalk","GLOBAL",1)~
== BNALIA25 @31
= @32
== QI#ZA25B @33
== BNALIA25 @34
== QI#ZA25B @35
= @36
== BNALIA25 @37
== QI#ZA25B @38
EXIT

//Talk 2
CHAIN
IF ~InParty("QI#ZAK2")
InParty("Nalia")
See("QI#ZAK2")
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#Zak2NaliaToBTalk","GLOBAL",1)~ THEN BNALIA25 QI#Zak2NaliaToBTalk2
@39
DO ~SetGlobal("QI#Zak2NaliaToBTalk","GLOBAL",2)~
== QI#ZA25B @40
== BNALIA25 @41
= @42
== QI#ZA25B @43
== BNALIA25 @44
== QI#ZA25B @45
EXIT 


/**************************************************************************************************
										Cernd Banters (1)
**************************************************************************************************/

//Talk 1
CHAIN
IF ~InParty("QI#ZAK2")
InParty("Cernd")
See("Cernd")
!StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#Zak2CerndToBTalk","GLOBAL",0)~ THEN QI#ZA25B QI#Zak2CerndToBTalk1
@46
DO ~SetGlobal("QI#Zak2CerndToBTalk","GLOBAL",1)~
== QI#ZA25B @47
== BCERND @48
== QI#ZA25B @49
EXIT 


/**************************************************************************************************
										Valygar Banters (1)
**************************************************************************************************/

//Talk 1
CHAIN
IF ~InParty("QI#ZAK2")
InParty("Valygar")
See("QI#ZAK2")
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#Zak2ValygarToBTalk","GLOBAL",0)~ THEN QI#ZA25B QI#Zak2ValygarToBTalk1
@50
DO ~SetGlobal("QI#Zak2ValygarToBTalk","GLOBAL",1)~
== QI#ZA25B @51
= @52
= @53
= IF ~Global("QI#ZakRomanceActive","GLOBAL",2)~ @54
== BVALYG25 @55
= @56
EXIT 


/**************************************************************************************************
										Viconia Banters (1)
**************************************************************************************************/

//Talk 1
CHAIN
IF ~InParty("QI#ZAK2")
InParty("Viconia")
See("QI#ZAK2")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#Zak2ViconiaToBTalk","GLOBAL",0)~ THEN BVICON25 QI#Zak2ViconiaToBTalk1
@57
DO ~SetGlobal("QI#Zak2ViconiaToBTalk","GLOBAL",1)~
== QI#ZA25B @58
== BVICON25 @59
== QI#ZA25B @60
== BVICON25 @61
== QI#ZA25B @62
== BVICON25 @63
= @64
EXIT 


/**************************************************************************************************
										Jan Jansen Banters (2)
**************************************************************************************************/

//Talk 1
CHAIN
IF ~InParty("QI#ZAK2")
InParty("Jan")
See("QI#ZAK2")
!StateCheck("Jan",CD_STATE_NOTVALID)
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#Zak2JanToBTalk","GLOBAL",0)~ THEN BJAN25 QI#Zak2JanToBTalk1
@65
DO ~SetGlobal("QI#Zak2JanToBTalk","GLOBAL",1)~
== QI#ZA25B @66
== BJAN25 @67
= @68
== QI#ZA25B @69
== BJAN25 @70
= @71
= @72
= @73
== QI#ZA25B @74
== BJAN25 @75
== QI#ZA25B @76
EXIT 

//Talk 2
CHAIN
IF ~InParty("QI#ZAK2")
InParty("Jan")
See("QI#ZAK2")
!StateCheck("Jan",CD_STATE_NOTVALID)
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#Zak2JanToBTalk","GLOBAL",1)~ THEN BJAN25 QI#Zak2JanToBTalk2
@77
DO ~SetGlobal("QI#Zak2JanToBTalk","GLOBAL",2)~
== QI#ZA25B @78
== BJAN25 @79
= @80
== QI#ZA25B @81
== BJAN25 @82
= @83
= @84
== QI#ZA25B @85
EXIT 

/**************************************************************************************************
										Jaheira Banters (1)
**************************************************************************************************/

//Talk 1
CHAIN
IF ~InParty("QI#ZAK2")
InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#Zak2JaheiraToBTalk","GLOBAL",0)~ THEN QI#ZA25B QI#Zak2JaheiraTalkToB1
@86
DO ~SetGlobal("QI#Zak2JaheiraToBTalk","GLOBAL",1)~
== BJAHEI25 @87
= @88
== QI#ZA25B @89
= @90
= @91
EXIT 

/**************************************************************************************************
										Minsc Banters (2)
**************************************************************************************************/

//Talk 1
CHAIN
IF ~InParty("QI#ZAK2")
InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#Zak2MinscToBTalk","GLOBAL",0)~ THEN QI#ZA25B QI#Zak2MinscToBTalk1
@92
DO ~SetGlobal("QI#Zak2MinscToBTalk","GLOBAL",1)~
= @93
== BMINSC25 @94
= @95
== QI#ZA25B @96
EXIT 

/**************************************************************************************************
										Korgan Banters (1)
**************************************************************************************************/

//Talk 1
CHAIN
IF ~InParty("QI#ZAK2")
InParty("Korgan")
See("QI#ZAK2")
!StateCheck("Korgan",CD_STATE_NOTVALID)
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#Zak2KorganToBTalk","GLOBAL",0)~ THEN BKORGA25 QI#Zak2KorganToBTalk1
@97
DO ~SetGlobal("QI#Zak2KorganToBTalk","GLOBAL",1)~
== QI#ZA25B @98
== BKORGA25 @99
== QI#ZA25B @100
= @101
= @102
== BKORGA25 @103
EXIT 

/**************************************************************************************************
										Anomen Banters (1)
**************************************************************************************************/

//Talk 1
CHAIN 
IF ~InParty("Anomen")
InParty("QI#ZAK2")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#ZakAnomenToBTalk","GLOBAL",0)~ THEN QI#ZA25B QI#ZakAnomenToBTalk1
@104
DO ~SetGlobal("QI#ZakAnomenToBTalk","GLOBAL",1)~
== BANOME25 @105
== QI#ZA25B @106
== BANOME25 @107
== QI#ZA25B @108
EXIT


/**************************************************************************************************
										Mazzy Banters (1)
**************************************************************************************************/

//Talk 1
CHAIN
IF ~InParty("QI#ZAK2")
InParty("Mazzy")
See("QI#ZAK2")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#ZakMazzyToBTalk","GLOBAL",0)~ THEN BMAZZY25 QI#ZakMazzyToBTalk1
@109
DO ~SetGlobal("QI#ZakMazzyToBTalk","GLOBAL",1)~
== QI#ZA25B @110
= @111
== BMAZZY25 @112
== QI#ZA25B @113
== BMAZZY25 @114
== QI#ZA25B @115
EXIT 

/**************************************************************************************************
										Keldorn Banters (1)
**************************************************************************************************/

//Talk 1
CHAIN
IF ~InParty("QI#ZAK2")
InParty("Keldorn")
See("QI#ZAK2")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#Zak2KeldornToBTalk","GLOBAL",0)~ THEN BKELDO25 QI#Zak2KeldornToBTalk1
@116
DO ~SetGlobal("QI#Zak2KeldornToBTalk","GLOBAL",1)~
== QI#ZA25B @117
= @118
== BKELDO25 @119
= @120
= @121
= @122
== QI#ZA25B @123
== BKELDO25 @124
== QI#ZA25B @125
= @126
== BKELDO25 @127 DO ~LeaveParty() SetLeavePartyDialogueFile() ChangeAIScript("",DEFAULT) Attack("QI#ZAK2")~
== QI#ZA25B @128 DO ~LeaveParty() SetLeavePartyDialogueFile() ChangeAIScript("",DEFAULT) Attack("Keldorn")~
EXIT

/**************************************************************************************************
										Edwin Banters (1)
**************************************************************************************************/

//Talk 1 
CHAIN
IF ~InParty("QI#ZAK2")
InParty("Edwin")
See("Edwin")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#Zak2EdwinToBTalk","GLOBAL",0)~ THEN QI#ZA25B QI#Zak2EdwinToBTalk1
@129
DO ~SetGlobal("QI#Zak2EdwinToBTalk","GLOBAL",1)~
== BEDWIN25 @130
== QI#ZA25B @131
== BEDWIN25 @132
= @133
== QI#ZA25B @134
== BEDWIN25 @135
== QI#ZA25B @136
= @137
= @138
EXIT 

/**************************************************************************************************
										Haer'Dalis Banters (1)
**************************************************************************************************/

//Talk 1
CHAIN
IF ~InParty("QI#ZAK2")
InParty("HaerDalis")
See("QI#ZAK2")
!StateCheck("HaerDalis",CD_STATE_NOTVALID)
!StateCheck("QI#ZAK2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#Zak2HaerDalisToBTalk","GLOBAL",0)~ THEN BHAERD25 QI#Zak2HaerDalisToBTalk1
@139
DO ~SetGlobal("QI#Zak2HaerDalisToBTalk","GLOBAL",1)~
== QI#ZA25B @140
== BHAERD25 @141
== QI#ZA25B @142
= @143
== BHAERD25 @144
= @145
EXIT 