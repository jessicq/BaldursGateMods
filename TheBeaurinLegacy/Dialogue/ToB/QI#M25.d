BEGIN QI#M25

// On Friendship Track
IF ~Global("QI#MiSummoned","GLOBAL",1) Global("QI#MiNoFriendship","GLOBAL",0)~ MinyaeGreetingsToB
SAY @0
++ @1 DO ~SetGlobal("QI#MiSummoned","GLOBAL",2)~ + MinyaeNoWorries
++ @2 DO ~SetGlobal("QI#MiSummoned","GLOBAL",2)~ + MinyaeHome
++ @3 DO ~SetGlobal("QI#MiSummoned","GLOBAL",2)~ + MinyaePP
END

IF ~~ MinyaeNoWorries
SAY @4
IF ~~ + MinyaeAskJoin
END

IF ~~ MinyaeAskJoin
SAY @5
+ ~Global("QI#MiNoFriendship","GLOBAL",0)~ + @6 + MinyaeContinue
+ ~!Global("QI#MiNoFriendship","GLOBAL",0)~ + @6 + MinyaeContinueNF
++ @7 + MinyaeWaitPP
END

IF ~~ MinyaeContinue
SAY @8
IF ~~ DO ~SetGlobal("QI#MiJoined","GLOBAL",1) JoinParty()~ EXIT
END

IF ~~ MinyaeContinueNF
SAY @9
IF ~~ DO ~SetGlobal("QI#MiJoined","GLOBAL",1) JoinParty()~ EXIT
END

IF ~~ MinyaeWaitPP
SAY @10
IF ~~ DO ~MoveToPointNoInterrupt([1710.1710]) Face(0)~ EXIT //Possibly will need to change
END

IF ~~ MinyaeHome
SAY @11
IF ~~ + MinyaeAskJoin
END

IF ~~ MinyaePP
SAY @12
IF ~~ + MinyaeAskJoin
END


// Not on Friendship Track
IF ~Global("QI#MiSummoned","GLOBAL",1) !Global("QI#MiNoFriendship","GLOBAL",0)~ MinyaeGreetingsToB
SAY @13
++ @14 DO ~SetGlobal("QI#MiSummoned","GLOBAL",2)~ + MinyaeNoWorriesNF
++ @15 DO ~SetGlobal("QI#MiSummoned","GLOBAL",2)~ + MinyaeHomeNF
++ @16 DO ~SetGlobal("QI#MiSummoned","GLOBAL",2)~ + MinyaePPNF
END

IF ~~ MinyaeNoWorriesNF
SAY @17
IF ~~ + MinyaeAskJoin
END

IF ~~ MinyaeHomeNF
SAY @18
IF ~~ + MinyaeAskJoin
END

IF ~~ MinyaePPNF
SAY @19
IF ~~ + MinyaeAskJoin
END


/* On Friendship Track and Edwin Romance Exist
IF ~Global("QI#MiSummoned","GLOBAL",1) GlobalGT("QI#MiFriendshipTalk","GLOBAL",20) GlobalGT("","GLOBAL",)~ MinyaeGreetingsRomToB */



