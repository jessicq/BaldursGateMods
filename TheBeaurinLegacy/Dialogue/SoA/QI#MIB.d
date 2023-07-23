BEGIN QI#MIB

//Haer'Dalis
CHAIN
IF ~InParty("Haer'Dalis")
InParty("QI#Mi")
See("Haer'Dalis")
!StateCheck("HaerDalis",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#MiHaerDalis1","GLOBAL",0)~ THEN QI#MIB QI#MiHaerDalis1
@0
DO ~SetGlobal("QI#MiHaerDalis1","GLOBAL",1)~
== BHAERDA @1
== QI#MIB @2
== BHAERDA @3
== QI#MIB @4
== BHAERDA @5
== QI#MIB @6
== BHAERDA @7
EXIT

//Anomen
CHAIN
IF ~InParty("QI#Mi")
InParty("Anomen")
See("QI#Mi")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#MiAnomen1","GLOBAL",0)~ THEN BANOMEN QI#MiAnomen1
@8
DO ~SetGlobal("QI#MiAnomen1","GLOBAL",1)~
== QI#MIB @9
== BANOMEN @10
== QI#MIB @11
== BANOMEN @12
== QI#MIB @13
== QI#MIB @14
EXIT

//Aerie
CHAIN
IF ~InParty("Aerie")
InParty("QI#Mi")
See("Aerie")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#MiAerie1","GLOBAL",0)~ THEN QI#MIB QI#MiAerie1
@15
DO ~SetGlobal("QI#MiAerie1","GLOBAL",1)~
== BAERIE @16
== QI#MIB @17
== BAERIE @18
== QI#MIB @19
== BAERIE @20
== QI#MIB @21
== QI#MIB @22
EXIT

//Jan
CHAIN
IF ~InParty("QI#Mi")
InParty("Jan")
See("QI#Mi")
!StateCheck("Jan",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#MiJan1","GLOBAL",0)~ THEN BJAN QI#MiJan1
@23
DO ~SetGlobal("QI#MiJan1","GLOBAL",1)~
== QI#MIB @24
== BJAN @25
== QI#MIB @26
EXIT

//Nalia
CHAIN
IF ~InParty("Nalia")
InParty("QI#Mi")
See("Nalia")
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#MiNalia1","GLOBAL",0)~ THEN QI#MIB QI#MiNalia1
@27
DO ~SetGlobal("QI#MiNalia1","GLOBAL",1)~
== BNALIA @28
== QI#MIB @29
== BNALIA @30
== QI#MIB @31
== BNALIA @32
== QI#MIB @33
== BNALIA @34
== QI#MIB @35
EXIT

//Minsc
CHAIN
IF ~InParty("QI#Mi")
InParty("Minsc")
See("QI#Mi")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#MiMinsc1","GLOBAL",0)~ THEN BMINSC QI#MiMinsc1
@36
DO ~SetGlobal("QI#MiMinsc1","GLOBAL",1)~
== QI#MIB @37
== BMINSC @38
== QI#MIB @39
EXIT

//Anomen
CHAIN
IF ~InParty("QI#Mi")
InParty("Anomen")
See("QI#Mi")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#MiAnomen2","GLOBAL",0)~ THEN BANOMEN QI#MiAnomen2
@40
DO ~SetGlobal("QI#MiAnomen2","GLOBAL",1)~
== QI#MIB @41
== BANOMEN @42
== QI#MIB @43
== BANOMEN @44
== QI#MIB @45
== BANOMEN @46
== QI#MIB @47
== BANOMEN @48
EXIT

//Haer'Dalis
CHAIN
IF ~InParty("QI#Mi")
InParty("HaerDalis")
See("QI#Mi")
!StateCheck("HaerDalis",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#MiHaerDalis2","GLOBAL",0)~ THEN BHAERDA QI#MiHaerDalis2
@49
DO ~SetGlobal("QI#MiHaerDalis2","GLOBAL",1)~
== QI#MIB @50
== BHAERDA @51
== QI#MIB @52
== BHAERDA @53
EXIT

//Jan
CHAIN
IF ~InParty("Jan")
InParty("QI#Mi")
See("Jan")
!StateCheck("Jan",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#MiJan2","GLOBAL",0)~ THEN QI#MIB QI#MiJan2
@54
DO ~SetGlobal("QI#MiJan2","GLOBAL",1)~
== BJAN @55
== QI#MIB @56
== BJAN @57
== QI#MIB @58
== BJAN @59
== QI#MIB @60
== BJAN @472
== QI#MIB @61
== BJAN @62
EXIT

//Imoen
CHAIN
IF ~InParty("Imoen2")
InParty("QI#Mi")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#MiImoen1","GLOBAL",0)~ THEN QI#MIB QI#MiImoen1
@63
DO ~SetGlobal("QI#MiImoen1","GLOBAL",1)~
== IMOEN2J @64
== QI#MIB @65
== IMOEN2J @66
== IMOEN2J @67
== BJAHEIR IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @68
== QI#MIB IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @69
== BJAHEIR IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @70
== IMOEN2J IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @71
== QI#MIB @72
== QI#MIB @73
EXIT

//Korgan
CHAIN
IF ~InParty("QI#Mi")
InParty("Korgan")
See("QI#Mi")
!StateCheck("Korgan",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#MiKorgan1","GLOBAL",0)~ THEN BKORGAN QI#MiKorgan1
@74
DO ~SetGlobal("QI#MiKorgan1","GLOBAL",1)~
== QI#MIB @75
== BKORGAN @76
== QI#MIB @77
== BKORGAN @78
== QI#MIB @79
== QI#MIB @80
== BKORGAN @81
EXIT

//Anomen-NotKnight
CHAIN
IF ~InParty("Anomen")
InParty("QI#Mi")
See("Anomen")
Global("AnomenIsNotKnight","GLOBAL",1)
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#MiAnomen3","GLOBAL",0)~ THEN QI#MIB QI#MiAnomen3
@82
DO ~SetGlobal("QI#MiAnomen3","GLOBAL",1)~
== BANOMEN @83
== QI#MIB @84
== BANOMEN @85
== QI#MIB @86
== QI#MIB @87
EXIT

//Anomen-IsKnight
CHAIN
IF ~InParty("Anomen")
InParty("QI#Mi")
See("Anomen")
Global("AnomenIsKnight","GLOBAL",1)
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#MiAnomen4","GLOBAL",0)~ THEN QI#MIB QI#MiAnomen4
@88
DO ~SetGlobal("QI#MiAnomen4","GLOBAL",1)~
== BANOMEN @89
== QI#MIB @90
== BANOMEN @91
== QI#MIB @92
== QI#MIB @93
EXIT

//Valygar
CHAIN 
IF ~InParty("Valygar")
InParty("QI#Mi")
See("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#MiValygar1","GLOBAL",0)~ THEN QI#MIB QI#MiValygar1
@94
DO ~SetGlobal("QI#MiValygar1","GLOBAL",1)~
== BVALYGA @95
== QI#MIB @96
== BVALYGA @97
== QI#MIB @98
EXIT

//Jaheira
CHAIN
IF ~InParty("Jaheira")
InParty("QI#Mi")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#MiJaheira1","GLOBAL",0)~ THEN QI#MIB QI#MiJaheira1
@99
DO ~SetGlobal("QI#MiJaheira1","GLOBAL",1)~
== BJAHEIR @100
== QI#MIB @101
== BJAHEIR @102
== QI#MIB @103
== BJAHEIR @104
EXIT

//Viconia
CHAIN
IF ~InParty("Viconia")
InParty("QI#Mi")
See("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#MiViconia1","GLOBAL",0)~ THEN QI#MIB QI#MiViconia1
@105
DO ~SetGlobal("QI#MiViconia1","GLOBAL",1)~
== BVICONI @106
== QI#MIB @107
== QI#MIB @108
EXIT 

//Yoshimo
CHAIN
IF ~InParty("QI#Mi")
InParty("Yoshimo")
See("QI#Mi")
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#MiYoshimo1","GLOBAL",0)~ THEN BYOSHIM QI#MiYoshimo1
@109
DO ~SetGlobal("QI#MiYoshimo1","GLOBAL",1)~
== QI#MIB @110
== QI#MIB @111
== BYOSHIM @112
== QI#MIB @113
EXIT


//Keldorn
CHAIN 
IF ~InParty("Keldorn")
InParty("QI#Mi")
See("Keldorn")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#MiKeldorn1","GLOBAL",0)~ THEN QI#MIB QI#MiKeldorn1
@114
DO ~SetGlobal("QI#MiKeldorn1","GLOBAL",1)~
== BKELDOR @115
== QI#MIB @116
== BKELDOR @117
== QI#MIB @118
EXIT

//Cernd
CHAIN 
IF ~InParty("Cernd")
InParty("QI#Mi")
See("Cernd")
!StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#MiCernd1","GLOBAL",0)~ THEN QI#MIB QI#MiCernd1
@119
DO ~SetGlobal("QI#MiCernd1","GLOBAL",1)~
== BCERND @120
== QI#MIB @121
== BCERND @122
== QI#MIB @123
== QI#MIB @124
== QI#MIB @125
EXIT

//Anomen-NotKnight
CHAIN
IF ~InParty("Anomen")
InParty("QI#Mi")
See("Anomen")
Global("AnomenIsNotKnight","GLOBAL",1)
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
!Global("AnomenRomanceActive","GLOBAL",1)
!Global("AnomenRomanceActive","GLOBAL",2)
GlobalLT("QI#MiEdwinRomanceSoA","GLOBAL",26)
AreaType(CITY)
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
Global("QI#MiAnomen4","GLOBAL",0)~ THEN QI#MIB QI#MiAnomen4
@126
DO ~SetGlobal("QI#MiAnomen4","GLOBAL",1)~
== BANOMEN @127
== QI#MIB @128
== QI#MIB @129
== BANOMEN @130
== QI#MIB @131
== QI#MIB @132
== QI#MIB @133
== BEDWIN IF ~InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ @134
== BANOMEN @135
== BANOMEN @136
EXIT 


//Minsc
CHAIN
IF ~InParty("Minsc")
InParty("QI#Mi")
See("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#MiMinsc2","GLOBAL",0)~ THEN QI#MIB QI#MiMinsc2
@137
DO ~SetGlobal("QI#MiMinsc2","GLOBAL",1)~
== BMINSC @138
== QI#MIB @139
EXIT

//Imoen
CHAIN
IF ~InParty("QI#Mi")
InParty("Imoen2")
See("QI#Mi")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#MiImoen2","GLOBAL",0)~ THEN IMOEN2J QI#MiImoen2
@140
DO ~SetGlobal("QI#MiImoen2","GLOBAL",1)~
== QI#MIB @141
== IMOEN2J @142
== QI#MIB @143
== IMOEN2J @144
EXIT

//Valygar
CHAIN 
IF ~InParty("QI#Mi")
InParty("Valygar")
See("QI#Mi")
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#MiValygar2","GLOBAL",0)~ THEN BVALYGA QI#MiValygar2
@145
DO ~SetGlobal("QI#MiValygar2","GLOBAL",1)~
== QI#MIB @146
== BVALYGA @147
== QI#MIB @148
== BVALYGA @149
== BVALYGA @150
== QI#MIB @151
== BVALYGA @152
== QI#MIB @153
EXIT

//Jaheira
CHAIN
IF ~InParty("Jaheira")
InParty("QI#Mi")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#MiJaheira2","GLOBAL",0)~ THEN QI#MIB QI#MiJaheira2
@154
DO ~SetGlobal("QI#MiJaheira2","GLOBAL",1)~
== BJAHEIR @155
== QI#MIB @156
== BJAHEIR @157
== QI#MIB @158
== BJAHEIR @159
== BJAHEIR IF ~InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID) Global("QI#MiImoen1","GLOBAL",1)~ THEN @160
== QI#MIB IF ~InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID) Global("QI#MiImoen1","GLOBAL",1)~ THEN @161
== BJAHEIR IF ~InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID) Global("QI#MiImoen1","GLOBAL",1)~ THEN @162
== QI#MIB IF ~InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID) Global("QI#MiImoen1","GLOBAL",1)~ THEN @163
== QI#MIB @164
EXIT

//Nalia
CHAIN
IF ~InParty("QI#Mi")
InParty("Nalia")
See("QI#Mi")
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#MiNalia2","GLOBAL",0)~ THEN BNALIA QI#MiNalia2
@165
DO ~SetGlobal("QI#MiNalia2","GLOBAL",1)~
== QI#MIB @166
== BNALIA @167
== QI#MIB @168
== BNALIA @169 
== QI#MIB @170
== QI#MIB @171
EXIT

//Viconia
CHAIN
IF ~InParty("QI#Mi")
InParty("Viconia")
See("QI#Mi")
Global("QI#MiEdwinRomance","GLOBAL",2)
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#MiViconia2","GLOBAL",0)~ THEN BVICONI QI#MiViconia2
@172
DO ~SetGlobal("QI#MiViconia2","GLOBAL",1)~
== QI#MIB @173
== BVICONI @174
EXIT

//Jan
CHAIN
IF ~InParty("QI#Mi")
InParty("Jan")
See("QI#Mi")
Global("QI#MiQuest1","GLOBAL",2)
!StateCheck("Jan",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#MiJan3","GLOBAL",0)~ THEN BJAN QI#MiJan3
@175
DO ~SetGlobal("QI#MiJan3","GLOBAL",1)~
== QI#MIB @176
== BJAN @177
== QI#MIB @178
== BJAN @179
EXIT

//Aerie
CHAIN
IF ~InParty("QI#Mi")
InParty("Aerie")
See("QI#Mi")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#MiAerie2","GLOBAL",0)~ THEN BAERIE QI#MiAerie2
@180
DO ~SetGlobal("QI#MiAerie2","GLOBAL",1)~
== QI#MIB @181
== BAERIE @182
== QI#MIB @183
== QI#MIB @184
== BAERIE @185
== QI#MIB @186
== QI#MIB @187
EXIT

//Mazzy
CHAIN 
IF ~InParty("Mazzy")
InParty("QI#Mi")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#MiMazzy1","GLOBAL",0)~ THEN QI#MIB QI#MiMazzy1
@188
DO ~SetGlobal("QI#MiMazzy1","GLOBAL",1)~
== BMAZZY @189
== QI#MIB @190
== QI#MIB @191
== BMAZZY @192
== QI#MIB @193
EXIT

//Korgan
CHAIN
IF ~InParty("QI#Mi")
InParty("Korgan")
See("QI#Mi")
!StateCheck("Korgan",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#MiKorgan2","GLOBAL",0)~ THEN BKORGAN QI#MiKorgan2
@194
DO ~SetGlobal("QI#MiKorgan2","GLOBAL",1)~
== QI#MIB @195
== BKORGAN @196
== BKORGAN @197
EXIT


//NPC-related banter with/about Edwin

//Haer'Dalis
CHAIN
IF ~InParty("QI#Mi")
InParty("Edwin")
InParty("HaerDalis")
See("QI#Mi")
!StateCheck("HaerDalis",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
GlobalGT("QI#MiEdwinRomanceSoA","GLOBAL",14)
CombatCounter(0)
Global("QI#MiHaerDalisEdwin","GLOBAL",0)~ THEN BHAERDA QI#MiHaerDalisEdwin
@198
DO ~SetGlobal("QI#MiHaerDalisEdwin","GLOBAL",1)~
== QI#MIB @199
== BHAERDA @200
== QI#MIB @201
== QI#MIB @202
== BEDWIN @203
== QI#MIB @204
EXIT

//Anomen
CHAIN
IF ~InParty("QI#Mi")
InParty("Anomen")
InParty("Edwin")
See("QI#Mi")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
GlobalGT("QI#MiEdwinRomanceSoA","GLOBAL",14)
CombatCounter(0)
Global("QI#MiAnomenEdwin","GLOBAL",0)~ THEN BANOMEN QI#MiAnomenEdwin
@205
DO ~SetGlobal("QI#MiAnomenEdwin","GLOBAL",1)~
== QI#MIB @206
== BANOMEN @207
== QI#MIB @208
EXIT

//Korgan
CHAIN
IF ~InParty("QI#Mi")
InParty("Korgan")
InParty("Edwin")
See("QI#Mi")
!StateCheck("Korgan",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
GlobalGT("QI#MiEdwinRomanceSoA","GLOBAL",14)
CombatCounter(0)
Global("QI#MiKorganEdwin","GLOBAL",0)~ THEN BKORGAN QI#MiKorganEdwin
@209
DO ~SetGlobal("QI#MiKorganEdwin","GLOBAL",1)~
== QI#MIB @210
== BKORGAN IF ~InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @211
== BKORGAN @212
== BMAZZY IF ~InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @213
== QI#MIB @214
== BJAN IF ~InParty("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ @215
== QI#MIB @216
EXIT

//Valygar
CHAIN 
IF ~InParty("QI#Mi")
InParty("Valygar")
See("QI#Mi")
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#MiValygar3","GLOBAL",0)~ THEN BVALYGA QI#MiValygar3
@217
DO ~SetGlobal("QI#MiValygar3","GLOBAL",1)~
== QI#MIB @218
== BVALYGA @219
== QI#MIB @220
== BVALYGA @221
EXIT

//Aerie
CHAIN
IF ~InParty("QI#Mi")
InParty("Aerie")
See("QI#Mi")
InParty("Edwin")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
GlobalGT("QI#MiEdwinRomanceSoA","GLOBAL",14)
CombatCounter(0)
Global("QI#MiAerieEdwin","GLOBAL",0)~ THEN BAERIE QI#MiAerieEdwin
@222
DO ~SetGlobal("QI#MiAerieEdwin","GLOBAL",1)~
== QI#MIB @223
== BAERIE @224
== QI#MIB @225
== BAERIE @226
== QI#MIB @227
== BAERIE @228
EXIT

//Jan
CHAIN
IF ~InParty("QI#Mi")
InParty("Jan")
See("QI#Mi")
InParty("Edwin")
!StateCheck("Jan",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
GlobalGT("QI#MiEdwinRomanceSoA","GLOBAL",14)
CombatCounter(0)
Global("QI#MiJanEdwin","GLOBAL",0)~ THEN BJAN QI#MiJanEdwin
@229
DO ~SetGlobal("QI#MiJanEdwin","GLOBAL",1)~
== QI#MIB @230
== BJAN @231
== QI#MIB @232
== BJAN @233
== QI#MIB @234
== BJAN @235
== QI#MIB @236
EXIT

//Minsc
CHAIN
IF ~InParty("QI#Mi")
InParty("Minsc")
See("QI#Mi")
InParty("Edwin")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
CombatCounter(0)
Global("QI#MiMinscEdwin","GLOBAL",0)~ THEN BMINSC QI#MiMinscEdwin
@237
DO ~SetGlobal("QI#MiMinscEdwin","GLOBAL",1)~
== QI#MIB @238
== BMINSC @239
== BEDWIN @240
== BMINSC @241
== QI#MIB @242
== BJAHEIR IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @243
== BEDWIN IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @244
== BMINSC @245
== QI#MIB @246
== QI#MIB IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @247
== QI#MIB @248
EXIT


//Edwin

//Tell Me More of The Tome
CHAIN
IF ~InParty(Myself)
InParty("Edwin")
CombatCounter(0) 
!See([ENEMY])
!Global("Chapter","GLOBAL",%bg2_chapter_5%)
!StateCheck("Edwin",CD_STATE_NOTVALID) 
!StateCheck(Myself,CD_STATE_NOTVALID)
Global("QI#MiEdwinRomanceSoA","GLOBAL",0)
!GlobalTimerNotExpired("QI#MiEdwinTimer","GLOBAL")
CombatCounter(0)
Global("QI#MiSoAStart","GLOBAL",1)~ THEN QI#MIB QI#MiEdwin1
@449
== BEDWIN @249
== QI#MIB @250
== QI#MIB IF ~Gender("Edwin",FEMALE)~ THEN @448
== BEDWIN @251
== QI#MIB @252
== BEDWIN @253
== QI#MIB @254
== QI#MIB @255
DO ~SetGlobal("QI#MiSoAStart","GLOBAL",2) IncrementGlobal("QI#MiEdwinRomanceSoA","GLOBAL",1)~
EXIT 

//Bickering
CHAIN
IF ~InParty("QI#Mi")
InParty("Edwin")
See("QI#Mi")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
!GlobalTimerNotExpired("QI#MiEdwinTimer","GLOBAL")
!Global("Chapter","GLOBAL",%bg2_chapter_5%)
CombatCounter(0)
Global("QI#MiEdwinRomanceSoA","GLOBAL",1)~ THEN QI#MIB QI#MiEdwin2
@450
== BEDWIN @256
== QI#MIB @257
== BEDWIN @258
== QI#MIB @259
== BEDWIN @260
== QI#MIB @261
== BEDWIN @262
== QI#MIB @263
== BEDWIN @264
== BEDWIN @265
== QI#MIB @266
== BEDWIN @267
DO ~IncrementGlobal("QI#MiEdwinRomanceSoA","GLOBAL",1)~
EXIT

//Suggestive Proposal
CHAIN
IF ~InParty("Edwin")
InParty("QI#Mi")
See("Edwin")
Gender("Edwin",MALE)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
!GlobalTimerNotExpired("QI#MiEdwinTimer","GLOBAL")
!Global("Chapter","GLOBAL",%bg2_chapter_5%)
CombatCounter(0)
Global("QI#MiEdwinRomanceSoA","GLOBAL",2)~ THEN QI#MIB QI#MiEdwin3
@268
== BEDWIN @269
== QI#MIB @270
== BEDWIN @271
== BEDWIN @272
== QI#MIB @273
== BEDWIN @274
== QI#MIB @275
== QI#MIB @276
== BEDWIN @277
== QI#MIB @278
DO ~IncrementGlobal("QI#MiEdwinRomanceSoA","GLOBAL",1)~
EXIT

//Tavern Wench
CHAIN
IF ~InParty("QI#Mi")
InParty("Edwin")
See("QI#Mi")
Gender("Edwin",MALE)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
!GlobalTimerNotExpired("QI#MiEdwinTimer","GLOBAL")
!Global("Chapter","GLOBAL",%bg2_chapter_5%)
CombatCounter(0)
Global("QI#MiEdwinRomanceSoA","GLOBAL",3)~ THEN QI#MIB QI#MiEdwin3.1
@451
== BEDWIN @279
== QI#MIB @280
== BEDWIN @281
== QI#MIB @282
== QI#MIB @283
== BEDWIN @284
== QI#MIB @285
DO ~IncrementGlobal("QI#MiEdwinRomanceSoA","GLOBAL",1)~
EXIT 

//The Finest Wizard
CHAIN
IF ~InParty("Edwin")
InParty("QI#Mi")
See("Edwin")
!Gender("Edwin",FEMALE)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
!GlobalTimerNotExpired("QI#MiEdwinTimer","GLOBAL")
!Global("Chapter","GLOBAL",%bg2_chapter_5%)
CombatCounter(0)
Global("QI#MiEdwinRomanceSoA","GLOBAL",4)~ THEN QI#MIB QI#MiEdwin3.2
@286
== QI#MIB @287
== BEDWIN @288
== BEDWIN @289
== QI#MIB @290
== QI#MIB @291
== BEDWIN @292
== BEDWIN @293
== QI#MIB @294
DO ~IncrementGlobal("QI#MiEdwinRomanceSoA","GLOBAL",1)~
EXIT

//Mulani Traditions
CHAIN
IF ~InParty("Edwin")
InParty("QI#Mi")
See("Edwin")
!Gender("Edwin",FEMALE)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
!GlobalTimerNotExpired("QI#MiEdwinTimer","GLOBAL")
!Global("Chapter","GLOBAL",%bg2_chapter_5%)
CombatCounter(0)
Global("QI#MiEdwinRomanceSoA","GLOBAL",5)~ THEN QI#MIB QI#MiEdwin3.3
@295
== BEDWIN @296
== QI#MIB @297
== BEDWIN @298
DO ~IncrementGlobal("QI#MiEdwinRomanceSoA","GLOBAL",1)~
EXIT

//Teach Me
CHAIN
IF ~InParty("Edwin")
InParty("QI#Mi")
See("Edwin")
!Gender("Edwin",FEMALE)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
!GlobalTimerNotExpired("QI#MiEdwinTimer","GLOBAL")
!Global("Chapter","GLOBAL",%bg2_chapter_5%)
CombatCounter(0)
Global("QI#MiEdwinRomanceSoA","GLOBAL",6)~ THEN QI#MIB QI#MiEdwin3.4
@299
== BEDWIN @300
== QI#MIB @301
== BEDWIN @302
== BEDWIN @303
== QI#MIB @304
== BEDWIN @305
== QI#MIB @306
== BEDWIN @307
== QI#MIB @308
== BEDWIN @309
== QI#MIB @310
== BEDWIN @311
== QI#MIB @312
== BEDWIN @313
DO ~IncrementGlobal("QI#MiEdwinRomanceSoA","GLOBAL",1)~
EXIT

//Times Up
CHAIN
IF ~InParty("Edwin")
InParty("QI#Mi")
See("Edwin")
!Gender("Edwin",FEMALE)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
!GlobalTimerNotExpired("QI#MiEdwinTimer","GLOBAL")
!Global("Chapter","GLOBAL",%bg2_chapter_5%)
CombatCounter(0)
Global("QI#MiEdwinRomanceSoA","GLOBAL",7)~ THEN QI#MIB QI#MiEdwin3.5
@471
== BEDWIN @314
== QI#MIB @315
== QI#MIB @316
== BEDWIN @317
== QI#MIB @318
== BEDWIN @319
== QI#MIB @320
== BEDWIN @321
== QI#MIB @322
== BEDWIN @323
DO ~IncrementGlobal("QI#MiEdwinRomanceSoA","GLOBAL",1)~
EXIT

//First Time Meeting Edwina - before finishing all previous talks
CHAIN
IF ~InParty("Edwin")
InParty("QI#Mi")
See("Edwin")
Gender("Edwin",FEMALE)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
!Global("Chapter","GLOBAL",%bg2_chapter_5%)
Global("QI#MiPauseTalks","GLOBAL",1)
!GlobalTimerNotExpired("QI#MiEdwinFemaleTimer","GLOBAL")
CombatCounter(0)
Global("QI#MiEdwinFemale","GLOBAL",1)~ THEN QI#MIB QI#MiEdwin3.99
@324
== BEDWIN @325
== QI#MIB @326
== BEDWIN @327
== QI#MIB @328
== BEDWIN @329
== QI#MIB @330
== QI#MIB @331
== BEDWIN @332
== QI#MIB @333
== BEDWIN @334
== QI#MIB @335
DO ~IncrementGlobal("QI#MiEdwinFemale","GLOBAL",1)~
EXIT

//Pre Catch-up
CHAIN
IF ~InParty("Edwin")
InParty("QI#Mi")
See("Edwin")
Gender("Edwin",FEMALE)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
!Global("Chapter","GLOBAL",%bg2_chapter_5%)
Global("QI#MiPauseTalks","GLOBAL",1)
!GlobalTimerNotExpired("QI#MiEdwinFemaleTimer","GLOBAL")
CombatCounter(0)
Global("QI#MiEdwinFemale","GLOBAL",2)~ THEN QI#MIB QI#MiEdwin4.01
@456
DO ~IncrementGlobal("QI#MiEdwinFemale","GLOBAL",1)~
== BEDWIN @457
== QI#MIB @458
== QI#MIB @459
== BEDWIN IF ~Global("QI#MiEdwinRomanceSoA","GLOBAL",7)~ @460
== QI#MIB IF ~Global("QI#MiEdwinRomanceSoA","GLOBAL",7)~ @461
== QI#MIB IF ~Global("QI#MiEdwinRomanceSoA","GLOBAL",7)~ @462
== BEDWIN IF ~Global("QI#MiEdwinRomanceSoA","GLOBAL",6)~ @463 
== BEDWIN IF ~Global("QI#MiEdwinRomanceSoA","GLOBAL",5)~ @463
== QI#MIB IF ~Global("QI#MiEdwinRomanceSoA","GLOBAL",6)~ @464
== BEDWIN IF ~Global("QI#MiEdwinRomanceSoA","GLOBAL",6)~ @465
== QI#MIB IF ~Global("QI#MiEdwinRomanceSoA","GLOBAL",6)~ @466
== QI#MIB IF ~Global("QI#MiEdwinRomanceSoA","GLOBAL",5)~ @467
== BEDWIN IF ~Global("QI#MiEdwinRomanceSoA","GLOBAL",5)~ @468
EXIT

//Catch-up
CHAIN
IF ~InParty("Edwin")
InParty("QI#Mi")
See("Edwin")
Gender("Edwin",FEMALE)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
!Global("Chapter","GLOBAL",%bg2_chapter_5%)
Global("QI#MiPauseTalks","GLOBAL",1)
!GlobalTimerNotExpired("QI#MiEdwinFemaleTimer","GLOBAL")
CombatCounter(0)
Global("QI#MiEdwinFemale","GLOBAL",3)~ THEN QI#MIB QI#MiEdwin4.02
@471
== BEDWIN @314
== QI#MIB @315
== QI#MIB @316
== BEDWIN @317
== QI#MIB @318
== BEDWIN @319
== QI#MIB @320
== BEDWIN @321
== QI#MIB @322
== QI#MIB @469
== BEDWIN @470
DO ~IncrementGlobal("QI#MiEdwinFemale","GLOBAL",1) SetGlobal("QI#MiEdwinRomanceSoA","GLOBAL",9) SetGlobal("QI#MiPauseTalks","GLOBAL",0)~
EXIT


//First Time Meeting Edwina - provided all talks come according to plan
CHAIN
IF ~InParty("Edwin")
InParty("QI#Mi")
See("Edwin")
Gender("Edwin",FEMALE)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
!GlobalTimerNotExpired("QI#MiEdwinTimer","GLOBAL")
!Global("Chapter","GLOBAL",%bg2_chapter_5%)
CombatCounter(0)
Global("QI#MiEdwinRomanceSoA","GLOBAL",8)~ THEN QI#MIB QI#MiEdwin4
@324
== BEDWIN @325
== QI#MIB @326
== BEDWIN @327
== QI#MIB @328
== BEDWIN @329
== QI#MIB @330
== QI#MIB @331
== BEDWIN @332
== QI#MIB @333
== BEDWIN @334
== QI#MIB @335
DO ~IncrementGlobal("QI#MiEdwinRomanceSoA","GLOBAL",1)~
EXIT

//Red Dresses and Silken Robes
CHAIN
IF ~InParty("Edwin")
InParty("QI#Mi")
See("Edwin")
Gender("Edwin",FEMALE)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
!GlobalTimerNotExpired("QI#MiEdwinTimer","GLOBAL")
!Global("Chapter","GLOBAL",%bg2_chapter_5%)
CombatCounter(0)
Global("QI#MiEdwinRomanceSoA","GLOBAL",9)~ THEN QI#MIB QI#MiEdwin5
@336
== BEDWIN @337
== QI#MIB @338
== QI#MIB @339
== BEDWIN @340
== QI#MIB @341
== QI#MIB @342
== BEDWIN @343
DO ~IncrementGlobal("QI#MiEdwinRomanceSoA","GLOBAL",1)~
EXIT

//Edwina Tries To Communicate
CHAIN
IF ~InParty("QI#Mi")
InParty("Edwin")
See("QI#Mi")
Gender("Edwin",FEMALE)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
!GlobalTimerNotExpired("QI#MiEdwinTimer","GLOBAL")
!Global("Chapter","GLOBAL",%bg2_chapter_5%)
CombatCounter(0)
Global("QI#MiEdwinRomanceSoA","GLOBAL",10)~ THEN QI#MIB QI#MiEdwin6
@452
== BEDWIN @344
== QI#MIB @345
== BEDWIN @346
== QI#MIB @347
== BEDWIN @348
== QI#MIB @349
DO ~IncrementGlobal("QI#MiEdwinRomanceSoA","GLOBAL",1)~
EXIT

//Beg for Forgiveness
CHAIN
IF ~InParty("Edwin")
InParty("QI#Mi")
See("Edwin")
Gender("Edwin",FEMALE)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
!GlobalTimerNotExpired("QI#MiEdwinTimer","GLOBAL")
!Global("Chapter","GLOBAL",%bg2_chapter_5%)
CombatCounter(0)
Global("QI#MiEdwinRomanceSoA","GLOBAL",11)~ THEN QI#MIB QI#MiEdwin7
@350
== BEDWIN @351
== QI#MIB @352
== QI#MIB @353
== BEDWIN @354
== QI#MIB @355
== QI#MIB @356
== BEDWIN @357
DO ~IncrementGlobal("QI#MiEdwinRomanceSoA","GLOBAL",1)~
EXIT

//I am here for you
CHAIN
IF ~InParty("Edwin")
InParty("QI#Mi")
See("Edwin")
Gender("Edwin",FEMALE)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
!GlobalTimerNotExpired("QI#MiEdwinTimer","GLOBAL")
!Global("Chapter","GLOBAL",%bg2_chapter_5%)
CombatCounter(0)
Global("QI#MiEdwinRomanceSoA","GLOBAL",12)~ THEN QI#MIB QI#MiEdwin8
@358
== BEDWIN @359
== QI#MIB @360
== QI#MIB @361
== BEDWIN @362
== QI#MIB @363
== BEDWIN @364
== QI#MIB @365
DO ~IncrementGlobal("QI#MiEdwinRomanceSoA","GLOBAL",1)~
EXIT

//First Night - Rejection
CHAIN
IF ~InParty("Edwin")
InParty("QI#Mi")
See("Edwin")
Gender("Edwin",MALE)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
!GlobalTimerNotExpired("QI#MiEdwinTimer","GLOBAL")
!Global("Chapter","GLOBAL",%bg2_chapter_5%)
CombatCounter(0)
Global("QI#MiEdwinRomanceSoA","GLOBAL",13)~ THEN QI#MIB QI#MiEdwin9
@366
== BEDWIN @367
== QI#MIB @368
== QI#MIB @369
== BEDWIN @370
== QI#MIB @371
== BEDWIN @372
== QI#MIB @373
== BEDWIN @374
== QI#MIB @375
== QI#MIB @376
== QI#MIB @377
DO ~IncrementGlobal("QI#MiEdwinRomanceSoA","GLOBAL",1) RestParty()~
EXIT

//Second Time's the Charm
CHAIN
IF ~InParty("QI#Mi")
InParty("Edwin")
See("QI#Mi")
Gender("Edwin",MALE)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
!GlobalTimerNotExpired("QI#MiEdwinTimer","GLOBAL")
!Global("Chapter","GLOBAL",%bg2_chapter_5%)
CombatCounter(0)
Global("QI#MiEdwinRomanceSoA","GLOBAL",14)~ THEN QI#MIB QI#MiEdwin9.1
@453
== BEDWIN @378
== QI#MIB @379
== BEDWIN @380
== BEDWIN @381
== BEDWIN @382
== QI#MIB @383
== BEDWIN @384
== QI#MIB @385
== BEDWIN @386
== QI#MIB @387
== BEDWIN @388
DO ~IncrementGlobal("QI#MiEdwinRomanceSoA","GLOBAL",1) RestParty()~
EXIT

//Endurance and Fortitude
CHAIN 
IF ~InParty("Edwin")
InParty("QI#Mi")
See("Edwin")
Gender("Edwin",MALE)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
!GlobalTimerNotExpired("QI#MiEdwinTimer","GLOBAL")
!Global("Chapter","GLOBAL",%bg2_chapter_5%)
CombatCounter(0)
Global("QI#MiEdwinRomanceSoA","GLOBAL",15)~ THEN QI#MIB QI#MiEdwin10
@389
== BEDWIN @390
== QI#MIB @391
== QI#MIB @392
== BEDWIN @393
== BEDWIN @394
DO ~IncrementGlobal("QI#MiEdwinRomanceSoA","GLOBAL",1)~
EXIT

//Interruption Question when Edwin was Edwina
CHAIN 
IF ~InParty("Edwin")
InParty("QI#Mi")
See("Edwin")
Gender("Edwin",MALE)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
!GlobalTimerNotExpired("QI#MiEdwinTimer","GLOBAL")
!Global("Chapter","GLOBAL",%bg2_chapter_5%)
CombatCounter(0)
Global("QI#MiEdwinRomanceSoA","GLOBAL",16)~ THEN QI#MIB QI#MiEdwin11
@395
== BEDWIN @396
== QI#MIB @397
== BEDWIN @398
== QI#MIB @399
== QI#MIB @400
== QI#MIB @401
== BEDWIN @402
== QI#MIB @403
DO ~IncrementGlobal("QI#MiEdwinRomanceSoA","GLOBAL",1)~
EXIT

//Friends with Benefits
CHAIN 
IF ~InParty("QI#Mi")
InParty("Edwin")
See("QI#Mi")
Gender("Edwin",MALE)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
!GlobalTimerNotExpired("QI#MiEdwinTimer","GLOBAL")
!Global("Chapter","GLOBAL",%bg2_chapter_5%)
CombatCounter(0)
Global("QI#MiEdwinRomanceSoA","GLOBAL",17)~ THEN QI#MIB QI#MiEdwin12
@454
== BEDWIN @404
== QI#MIB @405
== BEDWIN @406
== QI#MIB @407
== QI#MIB @408
== BEDWIN @409
DO ~IncrementGlobal("QI#MiEdwinRomanceSoA","GLOBAL",1)~
EXIT

//Background History
CHAIN
IF ~InParty("QI#Mi")
InParty("Edwin")
See("QI#Mi")
Gender("Edwin",MALE)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
!GlobalTimerNotExpired("QI#MiEdwinTimer","GLOBAL")
!Global("Chapter","GLOBAL",%bg2_chapter_5%)
CombatCounter(0)
Global("QI#MiEdwinRomanceSoA","GLOBAL",18)~ THEN QI#MIB QI#MiEdwin13
@455
== BEDWIN @410
== QI#MIB @411
== BEDWIN @412
== BEDWIN @413
== QI#MIB @414
== QI#MIB @415
== QI#MIB @416
== QI#MIB @417
== BEDWIN @418
== QI#MIB @419
== BEDWIN @420
== QI#MIB @421
== QI#MIB @422
DO ~IncrementGlobal("QI#MiEdwinRomanceSoA","GLOBAL",1)~
EXIT

//Look at the Stars - Night
CHAIN
IF ~InParty("Edwin")
InParty("QI#Mi")
See("Edwin")
TimeOfDay(NIGHT)
Gender("Edwin",MALE)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
!GlobalTimerNotExpired("QI#MiEdwinTimer","GLOBAL")
!Global("Chapter","GLOBAL",%bg2_chapter_5%)
CombatCounter(0)
TimeOfDay(Night)
/*OR(7)
Time(22)
Time(23)
Time(0)
Time(1)
Time(2)
Time(3)
Time(4)*/
Global("QI#MiEdwinRomanceSoA","GLOBAL",19)~ THEN QI#MIB QI#MiEdwin14
@423
== BEDWIN @424
== QI#MIB @425
== QI#MIB @426
== BEDWIN @427
== BEDWIN @428
== QI#MIB @429
== QI#MIB @430
== QI#MIB @431
== BEDWIN @432
== BEDWIN @433
== BEDWIN @434
== QI#MIB @435
== QI#MIB @436
== BEDWIN @437
== BEDWIN @438
DO ~IncrementGlobal("QI#MiEdwinRomanceSoA","GLOBAL",1)~
EXIT

//Confession
CHAIN
IF ~InParty("Edwin")
InParty("QI#Mi")
See("Edwin")
Gender("Edwin",MALE)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
!GlobalTimerNotExpired("QI#MiEdwinTimer","GLOBAL")
!Global("Chapter","GLOBAL",%bg2_chapter_5%)
CombatCounter(0)
Global("QI#MiEdwinRomanceSoA","GLOBAL",20)~ THEN QI#MIB QI#MiEdwin15
@439
== BEDWIN @440
== QI#MIB @441
== BEDWIN @442
== QI#MIB @443
== QI#MIB @444
== QI#MIB @445
== QI#MIB @446
== BEDWIN @447
DO ~IncrementGlobal("QI#MiEdwinRomanceSoA","GLOBAL",1)~
EXIT
