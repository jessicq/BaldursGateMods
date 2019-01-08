BEGIN QI#ELAP

IF ~Global("QI#ElaJoined","GLOBAL",1)~ ByeElarin
SAY @0
++ @1 DO ~JoinParty()~ EXIT
++ @2 + bye1.1
++ @3 + importance1
END

IF ~~ bye1.1
SAY @4
IF ~~ DO ~SetGlobal("QI#ElaJoined","GLOBAL",0) EscapeArea()~ EXIT
END

IF ~~ importance1
SAY @5
= @6
= @7
++ @8 DO ~JoinParty()~ EXIT
++ @9 + bye1.1
END
