BEGIN QI#ZAK2


/**************************************************************************************************
			Introduction - Finding Zakrion
**************************************************************************************************/

APPEND QI#ZAK2
IF ~Global("QI#ZakFreed","GLOBAL",1)~ QI#ZakFound1.0
SAY @0
++ @1 + QI#ZakFound1.1
++ @2 + QI#ZakFound1.0.1
++ @3 + QI#ZakFound1.1
++ @4 DO ~SetGlobal("QI#ZakPCKnown","GLOBAL",1)~ + QI#ZakFound1.0.2
++ @5 DO ~SetGlobal("QI#ZakPCKnown","GLOBAL",1)~ + QI#ZakFound1.0.2
END

IF ~~ QI#ZakFound1.0.1
SAY @6
= @7
IF ~~ + QI#ZakFound1.1
END 

IF ~~ QI#ZakFound1.0.2
SAY @8
= @9
= @10
IF ~~ + QI#ZakFound1.1
END

IF ~~ QI#ZakFound1.1
SAY @11
= @12
= @13
++ @14 + QI#ZakFound1.1.1
++ @15 + QI#ZakFound1.2
++ @16 + QI#ZakFound1.2
END 

IF ~~ QI#ZakFound1.1.1
SAY @17
= @18
++ @19 + QI#ZakFound1.2
END

IF ~~ QI#ZakFound1.2
SAY @20
= @21
++ @22 + QI#ZakFound1.2.1
++ @23 + QI#ZakFound1.2.2
+ ~Global("QI#ZakPCKnown","GLOBAL",1)~ + @24 + QI#ZakFound1.2.3
++ @25 + QI#ZakFound1.3
++ @26 + QI#ZakFound1.2.4
END

IF ~~ QI#ZakFound1.2.1
SAY @27
= @28
+ ~Global("QI#ZakPCKnown","GLOBAL",1)~ + @24 + QI#ZakFound1.2.3
++ @25 + QI#ZakFound1.3
++ @26 + QI#ZakFound1.2.4
END

IF ~~ QI#ZakFound1.2.2
SAY @29
= @30
++ @22 + QI#ZakFound1.2.1
+ ~Global("QI#ZakPCKnown","GLOBAL",1)~ + @24 + QI#ZakFound1.2.3
++ @25 + QI#ZakFound1.3
++ @26 + QI#ZakFound1.2.4
END

IF ~~ QI#ZakFound1.2.3
SAY @31
++ @32 + QI#ZakFound1.2.3a
++ @33 + QI#ZakFound1.2.3b
END

IF ~~ QI#ZakFound1.2.3a
SAY @34
IF ~~ + QI#ZakFound1.5
END

IF ~~ QI#ZakFound1.2.3b
SAY @35
IF ~~ + QI#ZakFound1.5
END 

IF ~~ QI#ZakFound1.2.4
SAY @36
IF ~Global("QI#ZakPCKnown","GLOBAL",1)~ + QI#ZakFound1.2.4a
IF ~!Global("QI#ZakPCKnown","GLOBAL",1)~ + QI#ZakFound1.2.4NotKnownPC
END 

IF ~~ QI#ZakFound1.2.4NotKnownPC
SAY @37
++ @38 + QI#ZakFound1.2.4a
++ @39 + QI#ZakFound1.2.4a
++ @40 + QI#ZakFound1.0x
END

IF ~~ QI#ZakFound1.2.4a
SAY @41
= @42
IF ~~ DO ~SetGlobal("QI#ZakFreed","GLOBAL",2) SetGlobal("QI#ZakInitialRejection","GLOBAL",1) EscapeAreaMove("AR0314",311,445,11)~ EXIT
END

IF ~~ QI#ZakFound1.3
SAY @43
= @44
IF ~Global("QI#ZakPCKnown","GLOBAL",1)~ + QI#ZakFound1.4
IF ~!Global("QI#ZakPCKnown","GLOBAL",1)~ + QI#ZakFound1.3.4NotKnownPC
END

IF ~~ QI#ZakFound1.3.4NotKnownPC
SAY @45
++ @38 + QI#ZakFound1.4
++ @46 + QI#ZakFound1.4
END

IF ~~ QI#ZakFound1.4
SAY @47
++ @32 + QI#ZakFound1.2.3a
++ @33 + QI#ZakFound1.2.3b
END

IF ~~ QI#ZakFound1.5
SAY @48
= @49
= @50
= @51
IF ~~ DO ~SetGlobal("QI#Zak2Joined","GLOBAL",1) SetGlobal("QI#ZakFreed","GLOBAL",2) JoinParty()~ EXIT
END 

IF ~~ QI#ZakFound1.0x
SAY @52
IF ~~ DO ~SetGlobal("QI#ZakFreed","GLOBAL",2) SetGlobal("QI#ZakInitialRejection","GLOBAL",1) EscapeAreaMove("AR0314",311,445,11)~ EXIT
END


/**************************************************************************************************
			Initial Rejection into the Party
**************************************************************************************************/

IF ~Global("QI#ZakInitialRejection","GLOBAL",1)~ QI#Zak2InitialRejection
SAY @53
++ @54 + QI#Zak2InitialRejection1.0.1
++ @55 + QI#Zak2InitialRejection1.0.2
++ @56 + QI#Zak2InitialRejection1.0.3
++ @57 EXIT 
END 

IF ~~ QI#Zak2InitialRejection1.0.1
SAY @58
IF ~~ + QI#Zak2InitialRejection1.1
END

IF ~~ QI#Zak2InitialRejection1.0.2
SAY @59
IF ~~ + QI#Zak2InitialRejection1.1
END

IF ~~ QI#Zak2InitialRejection1.0.3
SAY @60
IF ~~ EXIT 
END 

IF ~~ QI#Zak2InitialRejection1.1
SAY @61
= @62
= @63
++ @64 + QI#Zak2InitialRejection1.1.1
++ @65 + QI#Zak2InitialRejection1.1.2
++ @67 DO ~SetGlobal("QI#Zak2Joined","GLOBAL",1) JoinParty()~ EXIT 
END

IF ~~ QI#Zak2InitialRejection1.1.1
SAY @34
IF ~~ + QI#Zak2InitialRejection1.2
END 

IF ~~ QI#Zak2InitialRejection1.1.2
SAY @35
IF ~~ + QI#Zak2InitialRejection1.2
END 

IF ~~ QI#Zak2InitialRejection1.2
SAY @66
IF ~~ DO ~SetGlobal("QI#Zak2Joined","GLOBAL",1) SetGlobal("QI#ZakInitialRejection","GLOBAL",2) JoinParty()~ EXIT 
END 

END 