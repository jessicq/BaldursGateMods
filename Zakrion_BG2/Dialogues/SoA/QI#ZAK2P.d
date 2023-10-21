BEGIN QI#ZAK2P

/**************************************************************************************************
			Departure - No Romance Active
**************************************************************************************************/

IF ~Global("QI#Zak2Joined","GLOBAL",1) !Global("QI#ZakRomanceActive","GLOBAL",2) ~ QI#Zak2Kicked
SAY @0
++ @1 + QI#Zak2Leave
++ @2 + QI#Zak2Wait
++ @3 DO ~JoinParty()~ EXIT
END 

IF ~~ QI#Zak2Wait
SAY @4
= @5
= @6
IF ~~ DO ~SetGlobal("QI#Zak2Joined","GLOBAL",0)~ EXIT
END 

IF ~~ QI#Zak2Leave
SAY @7
= @8
IF ~~ DO ~SetGlobal("QI#Zak2Joined","GLOBAL",0) EscapeAreaMove("AR0314",311,445,11)~ EXIT
END 

/**************************************************************************************************
			Departure - Romance Active
**************************************************************************************************/

IF ~Global("QI#Zak2Joined","GLOBAL",1) Global("QI#ZakRomanceActive","GLOBAL",2)~ QI#Zak2KickedRomance
SAY @9
++ @10 + QI#Zak2KickedRomance1.0.2
++ @11 + QI#Zak2KickedRomance1.0.1
++ @12  DO ~JoinParty()~ EXIT
++ @13 + QI#Zak2KickedRomance1.2
END 

IF ~~ QI#Zak2KickedRomance1.0.1
SAY @14
= @15
IF ~~ + QI#Zak2KickedRomance1.1
END

IF ~~ QI#Zak2KickedRomance1.0.2
SAY @16
IF ~~ + QI#Zak2KickedRomance1.1
END 

IF ~~ QI#Zak2KickedRomance1.1
SAY @17
IF ~~ DO ~SetGlobal("QI#Zak2Joined","GLOBAL",0) EscapeAreaMove("AR0314",311,445,11)~ EXIT
END

IF ~~ QI#Zak2KickedRomance1.2
SAY @18
= @19
IF ~~ DO ~SetGlobal("QI#Zak2Joined","GLOBAL",0)~ EXIT
END

/**************************************************************************************************
			Rejoining - No Romance Active
**************************************************************************************************/

IF ~Global("QI#Zak2Joined","GLOBAL",0)~ QI#Zak2Rejoin
SAY @20
++ @21 + QI#Zak2Rejoin1.0.1
++ @22 + QI#Zak2Rejoin1.0.2
++ @23 + QI#Zak2Rejoin1.0.3
++ @24 EXIT 
END 

IF ~~ QI#Zak2Rejoin1.0.1
SAY @25
IF ~~ + QI#Zak2Rejoin1.1
END

IF ~~ QI#Zak2Rejoin1.0.2
SAY @26
IF ~~ + QI#Zak2Rejoin1.1
END

IF ~~ QI#Zak2Rejoin1.0.3
SAY @27
= @28 
IF ~~ EXIT 
END 

IF ~~ QI#Zak2Rejoin1.1
SAY @29
IF ~~ DO ~SetGlobal("QI#Zak2Joined","GLOBAL",1) JoinParty()~ EXIT 
END

/**************************************************************************************************
			Rejoining - Romance Active
**************************************************************************************************/

IF ~Global("QI#Zak2Joined","GLOBAL",0) Global("QI#ZakRomanceActive","GLOBAL",2)~ QI#Zak2RejoinRomance
SAY @30
= @31
= @32
++ @33 + QI#Zak2RejoinRomance1.0.1
++ @34 + QI#Zak2RejoinRomance1.0.2
++ @35 + QI#Zak2RejoinRomance1.0.3
++ @36 + QI#Zak2RejoinRomance1.0.4
END

IF ~~ QI#Zak2RejoinRomance1.0.1
SAY @37
IF ~~ DO ~SetGlobal("QI#Zak2Joined","GLOBAL",1) JoinParty()~ EXIT
END 	

IF ~~ QI#Zak2RejoinRomance1.0.2
SAY @38
IF ~~ + QI#Zak2RejoinRomance1.1
END 

IF ~~ QI#Zak2RejoinRomance1.0.3
SAY @39
IF ~~ + QI#Zak2RejoinRomance1.1
END 

IF ~~ QI#Zak2RejoinRomance1.0.4
SAY @40
IF ~~ + QI#Zak2RejoinRomance1.1
END 

IF ~~ QI#Zak2RejoinRomance1.1
SAY @41
IF ~~ DO ~SetGlobal("QI#Zak2Joined","GLOBAL",1) JoinParty()~ EXIT
END  