
//Encounter
CHAIN 
IF ~InParty("QI#Mi")
!StateCheck("QI#Mi",CD_STATE_NOTVALID)
!StateCheck(Player1,CD_STATE_NOTVALID)
See("QI#Mi")
See(Player1)
Global("QI#MiEncounter","GLOBAL",0)~ THEN QI#ELA QI#MiEncounterEla
@116
== QI#MIJ @117
DO ~SetGlobal("QI#MiEncounter","GLOBAL",1)~
== QI#MIJ @118
== QI#ELA @119
== QI#MIJ @120
== QI#ELA @121
== QI#ELA @122
== QI#MIJ @123
== QI#ELA @124
== QI#MIJ @125
== QI#ELA @126
== QI#MIJ @127
== QI#MIJ @128
== QI#ELA @129
== QI#MIJ @130
== QI#ELA @131
== QI#MIJ @132
== EDWINJ IF ~InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @133
== QI#ELA @134
== QI#MIJ @135
== QI#ELA @170
END
++ @136 + nopart
++ @137 + questions
++ @138 + ElarynChoice
++ @139 + ElarynChoice
++ @140 + MinyaeChoice

CHAIN
IF ~~ THEN QI#ELA nopart //Minyae starts
@141
== QI#MIJ @142
== EDWINJ IF ~InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID) GlobalGT("QI#MiEdwinRomanceSoA","GLOBAL",14)~ THEN @143
== KELDORJ IF ~InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @144
== VALYGARJ IF ~InParty("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @145
DO ~SetGlobal("QI#MiNoFriendship","GLOBAL",1)~
END
++ @146 + MvsE

CHAIN 
IF ~~ THEN QI#ELA questions
@147
== QI#MIJ @148
== QI#MIJ @149
END
++ @150 + nopart
++ @151 + ElarynChoice
++ @152 + ElarynChoice
++ @153 + MinyaeChoice

CHAIN 
IF ~~ THEN QI#ELA ElarynChoice 
@154
== KELDORJ IF ~InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @155
== EDWINJ IF ~InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID) GlobalGT("QI#MiEdwinRomanceSoA","GLOBAL",14)~ THEN @156
END
++ @157 + KillMinyae

CHAIN
IF ~~ THEN QI#ELA MinyaeChoice
@158
== QI#MIJ @159
== EDWINJ IF ~InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID) GlobalGT("QI#MiEdwinRomanceSoA","GLOBAL",14)~ THEN @160
== QI#MIJ @161
END
++ @162 + KillElaryn

CHAIN
IF ~~ THEN QI#ELA KillMinyae
@163
== QI#MIJ @164
== QI#MIJ @165
DO ~SetGlobal("MinyaeDies","GLOBAL",1)
	ReallyForceSpell("QI#Mi", WIZARD_STONE_SKIN) 
	ReallyForceSpell("QI#Mi", WIZARD_IMPROVED_INVISIBILITY) 
	ReallyForceSpell("QI#Mi", WIZARD_IMPROVED_HASTE)
	ReallyForceSpell("QI#Ela", CLERIC_ARMOR_OF_FAITH)
	ReallyForceSpell("QI#Ela", WIZARD_IMPROVED_HASTE)~
EXIT

CHAIN
IF ~~ THEN QI#ELA KillElaryn
@166
DO ~SetGlobal("ElarynDies","GLOBAL",1)
	ReallyForceSpell("QI#Ela", CLERIC_ARMOR_OF_FAITH)
	ReallyForceSpell("QI#Ela", WIZARD_IMPROVED_HASTE)
	Enemy()~
EXIT

CHAIN
IF ~~ THEN QI#ELA MvsE
@167
END
IF ~~ + MinyaeVSElaryn1

CHAIN
IF ~~ THEN QI#ELA MinyaeVSElaryn1
@168
== QI#MIJ @169
DO ~SetGlobal("OneAlive","GLOBAL",1) SetGlobal("ElaMinCheck","GLOBAL",1)
	ReallyForceSpell("QI#Mi", WIZARD_STONE_SKIN) 
	ReallyForceSpell("QI#Mi", WIZARD_IMPROVED_INVISIBILITY) 
	ReallyForceSpell("QI#Mi", WIZARD_IMPROVED_HASTE)
	Attack("QI#Ela")
	//StartCutSceneMode()
	//StartCutScene("QI#evm")~
EXIT 
