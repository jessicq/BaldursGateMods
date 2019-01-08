BEGIN QI#M25P

IF ~Global("QI#MiJoined","GLOBAL",1) Global("QI#MiNoFriendship","GLOBAL",0)~ KickedOutFriend
SAY @0
++ @1 DO ~JoinParty()~ EXIT
++ @2 + WaitingToB
++ @3 + LeavingToB
END

IF ~~ WaitingToB
SAY @4
= @5
IF ~~ DO ~SetGlobal("QI#MiJoined","GLOBAL",0)~ EXIT
END

IF ~~ LeavingToB
SAY @6
= @7
IF ~~ DO ~SetGlobal("QI#MiJoined","GLOBAL",0) EscapeArea()~ EXIT
END

IF ~Global("QI#MiJoined","GLOBAL",1) !Global("QI#MiNoFriendship","GLOBAL",0)~ KickedOutNotFriend
SAY @8
++ @9 DO ~JoinParty()~ EXIT
++ @10 + WaitingNF
++ @11 + LeavingNF
END

IF ~~ WaitingNF
SAY @12
= @13
IF ~~ DO ~SetGlobal("QI#MiJoined","GLOBAL",0)~ EXIT
END

IF ~~ LeavingNF
SAY @14
IF ~~ DO ~SetGlobal("QI#MiJoined","GLOBAL",0) EscapeArea()~ EXIT
END

// Rejected as Friends
IF ~Global("QI#MiSummoned","GLOBAL",2) Global("QI#MiNoFriendship","GLOBAL",0)~ MinyaeComeAgainF
SAY @15
++ @16 + GoodOldDays
++ @17 + WaitMore
END

IF ~~ GoodOldDays
SAY @18
IF ~~ DO ~SetGlobal("QI#MiJoined","GLOBAL",1) JoinParty()~ EXIT
END

IF ~~ WaitMore
SAY @19
IF ~~ EXIT
END

//Rejected as Not Friends
IF ~Global("QI#MiSummoned","GLOBAL",2) !Global("QI#MiNoFriendship","GLOBAL",0)~ MinyaeComeAgainNF
SAY @20
++ @21 + JoinMeAgainNF
++ @22 + WaitMore
END

IF ~~ JoinMeAgainNF
SAY @23
IF ~~ DO ~SetGlobal("QI#MiJoined","GLOBAL",1) JoinParty()~ EXIT
END

