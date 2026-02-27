BEGIN QI#ZAK25

/**************************************************************************************************
										No Relationship Track
**************************************************************************************************/
IF ~Global("QI#ZakSummoned","GLOBAL",1) !Global("QI#ZakrionTalkActive","GLOBAL",0) !Global("QI#ZakRomanceActive","GLOBAL",2)~ QI#ZakSummoned
SAY @0
= @1
++ @2 + QI#ZakSummoned1.1
++ @3 + QI#ZakSummoned1.0.1
++ @4 + QI#ZakSummoned1.1
END 

IF ~~ QI#ZakSummoned1.0.1
SAY @5
= @6
IF ~~ + QI#ZakSummoned1.1
END

IF ~~ QI#ZakSummoned1.1
SAY @7
++ @8 + QI#ZakSummoned1.2
++ @9 + QI#ZakSummoned1.2
++ @10 + QI#ZakSummoned1.0x
END 

IF ~~ QI#ZakSummoned1.0x
SAY @11
= @12
= @13
IF ~~ DO ~SetGlobal("QI#ZakSummoned","GLOBAL",2) SetGlobal("QI#Zak2Joined","GLOBAL",0)  MoveToPointNoInterrupt([2409.1408]) Face(4)~ EXIT 
END 

IF ~~ QI#ZakSummoned1.2
SAY @14
IF ~~ DO ~SetGlobal("QI#Zak2Joined","GLOBAL",1) SetGlobal("QI#ZakSummoned","GLOBAL",2) JoinParty()~ EXIT
END 


/**************************************************************************************************
										Friendship Track
**************************************************************************************************/
IF ~Global("QI#ZakSummoned","GLOBAL",1) Global("QI#ZakrionTalkActive","GLOBAL",0) !Global("QI#ZakRomanceActive","GLOBAL",2)~ QI#ZakFriendSummoned
SAY @15
= @16
++ @17 + QI#ZakFriendSummoned1.1
++ @3 + QI#ZakFriendSummoned1.0.1
++ @18 + QI#ZakFriendSummoned1.0.2
END 

IF ~~ QI#ZakFriendSummoned1.0.1
SAY @19
= @20
IF ~~ + QI#ZakFriendSummoned1.1
END

IF ~~ QI#ZakFriendSummoned1.0.2
SAY @21
IF ~~ + QI#ZakFriendSummoned1.1
END 

IF ~~ QI#ZakFriendSummoned1.1
SAY @22
= @23
++ @24 + QI#ZakFriendSummoned1.2
++ @25 + QI#ZakFriendSummoned1.2
++ @26 + QI#ZakFriendSummoned1.0x
END 

IF ~~ QI#ZakFriendSummoned1.0x
SAY @27
= @28
IF ~~ DO ~SetGlobal("QI#ZakSummoned","GLOBAL",2) SetGlobal("QI#Zak2Joined","GLOBAL",0) MoveToPointNoInterrupt([2409.1408]) Face(4)~ EXIT 
END

IF ~~ QI#ZakFriendSummoned1.2
SAY @29
= @30
= @31
IF ~~ DO ~SetGlobal("QI#Zak2Joined","GLOBAL",1) SetGlobal("QI#ZakSummoned","GLOBAL",2) JoinParty()~ EXIT
END 


/**************************************************************************************************
										Known Romance Track
**************************************************************************************************/
IF ~Global("QI#ZakSummoned","GLOBAL",1) Global("QI#ZakRomanceActive","GLOBAL",2) GlobalGT("QI#ZakrionKnownRomanceTalk","GLOBAL",18)~ QI#ZakKnownRomanceSummoned
SAY @32
= @33
++ @34 + QI#ZakKnownRomanceSummoned1.1
++ @35 + QI#ZakKnownRomanceSummoned1.1
++ @36 + QI#ZakKnownRomanceSummoned1.0.1
END 

IF ~~ QI#ZakKnownRomanceSummoned1.0.1
SAY @37
IF ~~ + QI#ZakKnownRomanceSummoned1.1
END 

IF ~~ QI#ZakKnownRomanceSummoned1.1
SAY @38
= @39
++ @40 + QI#ZakKnownRomanceSummoned1.2
++ @41 + QI#ZakKnownRomanceSummoned1.2
++ @42 + QI#ZakKnownRomanceSummoned1.0x
END 

IF ~~ QI#ZakKnownRomanceSummoned1.0x
SAY @43
= @44
IF ~~ DO ~SetGlobal("QI#ZakSummoned","GLOBAL",2) SetGlobal("QI#Zak2Joined","GLOBAL",0) MoveToPointNoInterrupt([2409.1408]) Face(4)~ EXIT 
END

IF ~~ QI#ZakKnownRomanceSummoned1.2
SAY @45
= @46
= @47
IF ~~ DO ~SetGlobal("QI#ZakSummoned","GLOBAL",2) SetGlobal("QI#Zak2Joined","GLOBAL",1) JoinParty()~ EXIT
END 


/**************************************************************************************************
										Not Known Romance Track
**************************************************************************************************/
IF ~Global("QI#ZakSummoned","GLOBAL",1) Global("QI#ZakRomanceActive","GLOBAL",2) GlobalGT("QI#ZakrionNotKnownRomanceTalk","GLOBAL",18)~ QI#ZakNotKnownRomanceSummoned
SAY @32
++ @34 + QI#ZakNotKnownRomanceSummoned1.1
++ @35 + QI#ZakNotKnownRomanceSummoned1.1
++ @36 + QI#ZakNotKnownRomanceSummoned1.0.1
END 

IF ~~ QI#ZakNotKnownRomanceSummoned1.0.1
SAY @48
IF ~~ + QI#ZakNotKnownRomanceSummoned1.1
END 

IF ~~ QI#ZakNotKnownRomanceSummoned1.1
SAY @49
++ @40 + QI#ZakNotKnownRomanceSummoned1.2
++ @41 + QI#ZakNotKnownRomanceSummoned1.2
++ @42 + QI#ZakNotKnownRomanceSummoned1.0x
END 

IF ~~ QI#ZakNotKnownRomanceSummoned1.0x
SAY @43
= @44
IF ~~ DO ~SetGlobal("QI#ZakSummoned","GLOBAL",2) SetGlobal("QI#Zak2Joined","GLOBAL",0) MoveToPointNoInterrupt([2409.1408]) Face(4)~ EXIT 
END

IF ~~ QI#ZakNotKnownRomanceSummoned1.2
SAY @45
= @46
= @47
IF ~~ DO ~SetGlobal("QI#ZakSummoned","GLOBAL",2) SetGlobal("QI#Zak2Joined","GLOBAL",1) JoinParty()~ EXIT
END 


/**************************************************************************************************
									Rejoining - No Romance Active
**************************************************************************************************/
IF ~!Global("QI#ZakRomanceActive","GLOBAL",2)
	OR(2)
		Global("QI#Zak2Joined","GLOBAL",0) 
		Global("QI#ZakSummoned","GLOBAL",2)~ QI#Zak25Rejoin1.0
SAY @50
= @51
= @52
++ @53 + QI#Zak25Rejoin1.1
++ @54 EXIT 
END 

IF ~~ QI#Zak25Rejoin1.1
SAY @55
IF ~~ DO ~SetGlobal("QI#Zak2Joined","GLOBAL",1) JoinParty()~ EXIT
END 


/**************************************************************************************************
									Rejoining - Romance Active
**************************************************************************************************/
IF ~Global("QI#ZakRomanceActive","GLOBAL",2)
	OR(2)
		Global("QI#Zak2Joined","GLOBAL",0) 
		Global("QI#ZakSummoned","GLOBAL",2)~ QI#Zak25Rejoin2.0
SAY @56
= @57
++ @58 + QI#Zak25Rejoin2.1
++ @59 EXIT 
END 

IF ~~ QI#Zak25Rejoin2.1
SAY @60
IF ~~ DO ~SetGlobal("QI#Zak2Joined","GLOBAL",1) JoinParty()~ EXIT
END 