BEGIN QI#ZA25P 

/**************************************************************************************************
										No Relationship Track
**************************************************************************************************/
IF ~Global("QI#Zak2Joined","GLOBAL",1) !Global("QI#ZakrionTalkActive","GLOBAL",0)~ QI#ZakLeaveParty
SAY @0
++ @1 DO ~JoinParty()~ EXIT
++ @2 + QI#ZakLeaveParty1.0x
++ @3 + QI#ZakLeaveParty1.1
END 

IF ~~ QI#ZakLeaveParty1.0x
SAY @4
= @5
IF ~~ DO ~SetGlobal("QI#Zak2Joined","GLOBAL",0)~ EXIT 
END

IF ~~ QI#ZakLeaveParty1.1
SAY @6
= @7
= @8
IF ~~ DO ~SetGlobal("QI#Zak2Joined","GLOBAL",0) EscapeArea()~ EXIT 
END 


/**************************************************************************************************
										Friendship Track
**************************************************************************************************/
IF ~Global("QI#Zak2Joined","GLOBAL",1) Global("QI#ZakrionTalkActive","GLOBAL",0) !Global("QI#ZakRomanceActive","GLOBAL",2)~ QI#ZakFriendLeaveParty
SAY @9
++ @10 DO ~JoinParty()~ EXIT 
++ @11 + QI#ZakFriendLeaveParty1.0x
++ @12 + QI#ZakFriendLeaveParty1.1
END 

IF ~~ QI#ZakFriendLeaveParty1.0x
SAY @13
IF ~~ DO ~SetGlobal("QI#Zak2Joined","GLOBAL",0)~ EXIT 
END

IF ~~ QI#ZakFriendLeaveParty1.1
SAY @14
= @15
= @16
IF ~~ DO ~SetGlobal("QI#Zak2Joined","GLOBAL",0) EscapeArea()~ EXIT 
END 

/**************************************************************************************************
										Romance Track
**************************************************************************************************/
IF ~Global("QI#Zak2Joined","GLOBAL",1) Global("QI#ZakRomanceActive","GLOBAL",2)~ QI#ZakRomanceLeaveParty
SAY @17
++ @18 DO ~JoinParty()~ EXIT 
++ @19 + QI#ZakRomanceLeaveParty1.0x
++ @20 + QI#ZakRomanceLeaveParty1.1
END 

IF ~~ QI#ZakRomanceLeaveParty1.0x
SAY @21
IF ~~ DO ~SetGlobal("QI#Zak2Joined","GLOBAL",0)~ EXIT 
END

IF ~~ QI#ZakRomanceLeaveParty1.1
SAY @22
IF ~~ DO ~SetGlobal("QI#Zak2Joined","GLOBAL",0) EscapeArea()~ EXIT 
END 


/**************************************************************************************************
									Rejoining - No Romance Active
**************************************************************************************************/
IF ~!Global("QI#ZakRomanceActive","GLOBAL",2)
	OR(2)
		Global("QI#Zak2Joined","GLOBAL",0) 
		Global("QI#ZakSummoned","GLOBAL",2)~ QI#Zak25Rejoin1.0
SAY @23
= @24
= @25
++ @26 + QI#Zak25Rejoin1.1
++ @27 EXIT 
END 

IF ~~ QI#Zak25Rejoin1.1
SAY @28
IF ~~ DO ~SetGlobal("QI#Zak2Joined","GLOBAL",1) JoinParty()~ EXIT
END 


/**************************************************************************************************
									Rejoining - Romance Active
**************************************************************************************************/
IF ~Global("QI#ZakRomanceActive","GLOBAL",2)
	OR(2)
		Global("QI#Zak2Joined","GLOBAL",0) 
		Global("QI#ZakSummoned","GLOBAL",2)~ QI#Zak25Rejoin2.0
SAY @29
= @30
++ @31 + QI#Zak25Rejoin2.1
++ @32 EXIT 
END 

IF ~~ QI#Zak25Rejoin2.1
SAY @33
IF ~~ DO ~SetGlobal("QI#Zak2Joined","GLOBAL",1) JoinParty()~ EXIT
END 