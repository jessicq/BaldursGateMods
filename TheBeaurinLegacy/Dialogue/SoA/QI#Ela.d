BEGIN QI#ELA

APPEND QI#ELA
IF ~Dead("QI#Mi")~ MinyaeDead
SAY @0
++ @1 + RewardPlz
++ @2 + Unsure
++ @3 + NoPity
END

IF ~~ RewardPlz
SAY @4
IF ~Alignment(Player1, MASK_GOOD)~ + GoodJoin
IF ~!Alignment(Player1, MASK_GOOD)~ + MoneyReward
END

IF ~~ GoodJoin
SAY @5
= @6
= @7
IF ~~ + ReplaceMinyae
END

IF ~~ ReplaceMinyae
SAY @8
++ @9 + AcceptEla
++ @10 + ServeBetter
++ @11 + LeaveForever
++ @12 + LeaveForever
END

IF ~~ AcceptEla
SAY @13
IF ~~ DO ~SetGlobal("QI#ElaJoined","GLOBAL",1) JoinParty()~ EXIT
END

IF ~~ ServeBetter
SAY @14
IF ~~ DO ~SetGlobal("QI#ElaJoined","GLOBAL",1) JoinParty()~ EXIT
END

IF ~~ LeaveForever
SAY @15
IF ~~ + MoneyReward
END

IF ~~ MoneyReward
SAY @16
IF ~~ DO ~GiveGoldForce(5000) EscapeArea()~ EXIT
END

IF ~~ Unsure
SAY @17
= @18
IF ~~ + RewardPlz
END

IF ~~ NoPity
SAY @19
IF ~~ + RewardPlz
END


IF ~Global("OneAlive","GLOBAL",1) Dead("QI#Mi") Global("QI#MiAfterTalk","GLOBAL",0)~ ElarynWins1v1
SAY @20
= @21
IF ~~ DO ~EscapeArea() SetGlobal("QI#MiAfterTalk","GLOBAL",1)~ EXIT
END

END
