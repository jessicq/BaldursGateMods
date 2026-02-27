/*****************************************************************************************************************************************************************
													Baeloth Banters (2)
*****************************************************************************************************************************************************************/

//Talk 1
CHAIN IF 
	~InParty("QI#ZAK")
	InParty("Baeloth")
	See("QI#ZAK")
	!StateCheck("Baeloth",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	Global("QI#ZakBaelothTalk","GLOBAL",0)~ THEN BAELOTHJ QI#ZakBaelothTalk1
	@0
	DO ~SetGlobal("QI#ZakBaelothTalk","GLOBAL",1)~
	== QI#ZAKB @1
	== BAELOTHJ @2
	== QI#ZAKB @3
	== BAELOTHJ @4
	= @5
	== QI#ZAKB @6
	= @7
	== BAELOTHJ @8
EXIT

//Talk 2
CHAIN IF 
	~InParty("QI#ZAK")
	InParty("Baeloth")
	See("QI#ZAK")
	!StateCheck("Baeloth",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	Global("QI#ZakBaelothTalk","GLOBAL",1)~ THEN BAELOTHJ QI#ZakBaelothTalk2
	@9
	DO ~SetGlobal("QI#ZakBaelothTalk","GLOBAL",2)~
	== QI#ZAKB @10
	= @11
	== BAELOTHJ @12
	== QI#ZAKB @13
EXIT 

/*****************************************************************************************************************************************************************
													Dorn Banters (2)
*****************************************************************************************************************************************************************/

//Talk 1
CHAIN IF 
	~InParty("QI#ZAK")
	InParty("Dorn")
	See("Dorn")
	!StateCheck("Dorn",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	Global("QI#ZakDornTalk","GLOBAL",0)~ THEN QI#ZAKB QI#ZakDornTalk1
	@14
	DO ~SetGlobal("QI#ZakDornTalk","GLOBAL",1)~
	== BDORN @15
	== QI#ZAKB @16
	= @17
	= @18
	== BDORN @19
	== QI#ZAKB @20
EXIT

//Talk 2
CHAIN IF 
	~InParty("QI#ZAK")
	InParty("Dorn")
	See("Dorn")
	!StateCheck("Dorn",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	Global("QI#ZakDornTalk","GLOBAL",0)~ THEN QI#ZAKB QI#ZakDornTalk2
	@21
	DO ~SetGlobal("QI#ZakDornTalk","GLOBAL",1)~
	== BDORN @22
	== QI#ZAKB @23
	== BDORN @24
	== QI#ZAKB @25
EXIT 

/*****************************************************************************************************************************************************************
													Neera Banters (2)
*****************************************************************************************************************************************************************/

// Talk 1
CHAIN IF 
	~InParty("QI#ZAK")
	InParty("Neera")
	See("QI#ZAK")
	!StateCheck("Neera",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	Global("QI#ZakNeeraTalk","GLOBAL",0)~ THEN BNEERA QI#ZakNeeraTalk1
	@26
	DO ~SetGlobal("QI#ZakNeeraTalk","GLOBAL",1)~
	= @27
	== QI#ZAKB @28
	= @29
	= @30
	== BNEERA @31
	= @32
	== QI#ZAKB @33
EXIT

//Talk 2
CHAIN IF 
	~InParty("QI#ZAK")
	InParty("Neera")
	See("QI#ZAK")
	!StateCheck("Neera",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	Global("QI#ZakNeeraTalk","GLOBAL",1)~ THEN BNEERA QI#ZakNeeraTalk2
	@34
	DO ~SetGlobal("QI#ZakNeeraTalk","GLOBAL",2)~
	== QI#ZAKB @35
	== BNEERA @36
	= @37
	== QI#ZAKB @38
	== BNEERA @39
	== QI#ZAKB @40
EXIT 

//Talk 3
CHAIN IF 
	~InParty("QI#ZAK")
	InParty("Neera")
	See("QI#ZAK")
	!StateCheck("Neera",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	Global("QI#ZakNeeraTalk","GLOBAL",2)~ THEN BNEERA QI#ZakNeeraTalk3
	@41
	DO ~SetGlobal("QI#ZakNeeraTalk","GLOBAL",3)~
	== QI#ZAKB @42
	== BNEERA @43
	== QI#ZAKB @44
EXIT 

/*****************************************************************************************************************************************************************
													Rasaad Banters (2)
*****************************************************************************************************************************************************************/

//Talk 1
CHAIN IF
	~InParty("Rasaad")
	InParty("QI#ZAK")
	See("Rasaad")
	!StateCheck("Rasaad",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	Global("QI#ZakRasaadTalk","GLOBAL",0)~ THEN QI#ZAKB QI#ZakRasaadTalk1
	@45
	DO ~SetGlobal("QI#ZakRasaadTalk","GLOBAL",1)~
	== BRASAAD @46
	== QI#ZAKB @47
EXIT

//Talk 2
CHAIN IF
	~InParty("Rasaad")
	InParty("QI#ZAK")
	See("Rasaad")
	!StateCheck("Rasaad",CD_STATE_NOTVALID)
	!StateCheck("QI#ZAK",CD_STATE_NOTVALID)
	CombatCounter(0)
	!See([ENEMY])
	Global("QI#ZakRasaadTalk","GLOBAL",1)~ THEN QI#ZAKB QI#ZakRasaadTalk2
	@48
	DO ~SetGlobal("QI#ZakRasaadTalk","GLOBAL",2)~
	== BRASAAD @49
	== QI#ZAKB @50
	== BRASAAD @51
	== QI#ZAKB @52
	= @53
	== BRASAAD @54
	== QI#ZAKB @55
EXIT 