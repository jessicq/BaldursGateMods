BEGIN QI#MIP

IF ~Global("QI#MiJoined","GLOBAL",1) Global("QI#NoBook","GLOBAL",0)~ KickedOut
SAY @0
++ @1 DO ~JoinParty()~ EXIT
++ @2 + Wait
++ @3 + Leaving
END

IF ~~ Wait
SAY @4
= @5
IF ~~ DO ~SetGlobal("QI#MiJoined","GLOBAL",0)~ EXIT
END

IF ~~ Leaving
SAY @6
IF ~~ DO ~SetGlobal("QI#MiJoined","GLOBAL",0) MoveGlobal("AR0021","QI#Mi",[552.217])~ EXIT
END

IF ~Global("QI#MiJoined","GLOBAL",0)~ Rejoin
SAY @7
++ @8 DO ~SetGlobal("QI#MiJoined","GLOBAL",1) JoinParty()~ EXIT
++ @9 EXIT
END

IF ~Global("QI#MiJoined","GLOBAL",1) Global("QI#NoBook","GLOBAL",2)~ KickedOutWithTome
SAY @10
++ @11 DO ~JoinParty()~ EXIT
++ @12 + Wait
++ @13 + LeavingWithTome
END

IF ~~ LeavingWithTome
SAY @14
IF ~~ DO ~SetGlobal("QI#MiJoined","GLOBAL",0) MoveGlobal("AR0021","QI#Mi",[552.217]) ~ EXIT
END

IF ~Global("QI#MiJoined","GLOBAL",1) Global("QI#MiFriend","GLOBAL",1)~ KickedAsFriendWithTome
SAY @15
++ @16 DO ~JoinParty()~ EXIT
++ @17 + Wait
++ @18 + LeavingWithTome
END
