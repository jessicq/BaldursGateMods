BEGIN QI#ZAKP

IF ~Global("QI#ZakJoined","GLOBAL",1)~ QI#ZakKickedOut
SAY @0
++ @1 + QI#ZakKickedOut1.1
++ @2 + QI#ZakKickedOut1.2
++ @3 + QI#ZakKickedOut1.3
++ @4 DO ~JoinParty()~ EXIT
END

IF ~~ QI#ZakKickedOut1.1
SAY @5
= @6
IF ~~ DO ~SetGlobal("QI#ZakJoined","GLOBAL",0)~ EXIT
END 

IF ~~ QI#ZakKickedOut1.2
SAY @7
= @8
IF ~~ DO ~SetGlobal("QI#ZakJoined","GLOBAL",0) EscapeArea()~ EXIT
END 

IF ~~ QI#ZakKickedOut1.3
SAY @9
= @10
IF ~~ DO ~SetGlobal("QI#ZakJoined","GLOBAL",0) EscapeArea()~ EXIT
END 

IF ~Global("QI#HalaJoined","GLOBAL",0)~ QI#ZakRejoinParty
SAY @11
= @12
= @13
++ @14 DO ~SetGlobal("QI#ZakJoined","GLOBAL",1) JoinParty()~ EXIT
++ @15 + QI#ZakRejoinParty1.1
++ @16 + QI#ZakRejoinParty1.2
++ @17 + QI#ZakRejoinParty1.3
++ @18 DO ~SetGlobal("QI#ZakJoined","GLOBAL",1) JoinParty()~ EXIT
END 

IF ~~ QI#ZakRejoinParty1.1
SAY @19
= @20
IF ~~ EXIT 
END 

IF ~~ QI#ZakRejoinParty1.2
SAY @21
= @22
IF ~~ DO ~JoinParty() SetGlobal("QI#ZakJoined","GLOBAL",1) ~ EXIT 
END 

IF ~~ QI#ZakRejoinParty1.3
SAY @23
= @24
IF ~~ EXIT 
END 