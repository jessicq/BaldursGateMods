BEGIN QI#ZAK

APPEND QI#ZAK
IF ~NumTimesTalkedTo(0)~ QI#ZakIntroduction
SAY @0
++ @1 + QI#ZakIntroduction1.1
++ @2 + QI#ZakIntroduction1.0.1
++ @3 + QI#ZakIntroduction1.0.2
++ @4 + QI#ZakIntroduction1.1
END 

IF ~~ QI#ZakIntroduction1.0.1
SAY @5
= @6
IF ~~ + QI#ZakIntroduction1.1
END 

IF ~~ QI#ZakIntroduction1.0.2
SAY @7
IF ~~ + QI#ZakIntroduction1.1
END 

IF ~~ QI#ZakIntroduction1.1
SAY @8
= @9
++ @10 + QI#ZakIntroduction1.2
++ @11 + QI#ZakIntroduction1.1.1
++ @12 + QI#ZakIntroduction1.2.2
++ @13 + QI#ZakIntroduction1.1.2
++ @14 + QI#ZakIntroduction1.2.4
END

IF ~~ QI#ZakIntroduction1.1.1
SAY @15
= @16
IF ~~ + QI#ZakIntroduction1.2
END

IF ~~ QI#ZakIntroduction1.1.2
SAY @17
= @18
IF ~~ + QI#ZakIntroduction1.2
END

IF ~~ QI#ZakIntroduction1.2
SAY @19
++ @20 + QI#ZakIntroduction1.2.1
++ @21 + QI#ZakIntroduction1.3
++ @22 + QI#ZakIntroduction1.2.3
++ @23 + QI#ZakIntroduction1.2.4
END 

IF ~~ QI#ZakIntroduction1.2.1
SAY @24
++ @25 + QI#ZakIntroduction1.3
++ @26 + QI#ZakIntroduction1.2.3
++ @27 + QI#ZakIntroduction1.2.4
END

IF ~~ QI#ZakIntroduction1.2.2
SAY @28
++ @29 + QI#ZakIntroduction1.2
++ @30 + QI#ZakIntroduction1.2.3
++ @31 + QI#ZakIntroduction1.2.4
END 

IF ~~ QI#ZakIntroduction1.2.3
SAY @32
= @33
IF ~~ DO ~EscapeArea()~ EXIT 
END

IF ~~ QI#ZakIntroduction1.2.4
SAY @34
= @35
IF ~~ DO ~Enemy() Attack(Player1)~ EXIT
END

IF ~~ QI#ZakIntroduction1.3
SAY @36
= @37
= @38
= @39
++ @40 + QI#ZakIntroduction1.3.1b
++ @41 + QI#ZakIntroduction1.3.1a
++ @42 + QI#ZakIntroduction1.3.1a
++ @43 + QI#ZakIntroduction1.3.1b
END

IF ~~ QI#ZakIntroduction1.3.1
SAY @44
++ @45 + QI#ZakIntroduction1.3.1b
++ @46 + QI#ZakIntroduction1.3.1a
END 

IF ~~ QI#ZakIntroduction1.3.1a
SAY @47
= @48
= @49
IF ~~ DO ~EscapeArea()~ EXIT 
END

IF ~~ QI#ZakIntroduction1.3.1b
SAY @50
IF ~~ + QI#ZakIntroduction1.4
END 

IF ~~ QI#ZakIntroduction1.4
SAY @51
IF ~~ DO ~SetGlobal("QI#ZakJoined","GLOBAL",1) SetGlobal("QI#ZakNeedRest","GLOBAL",1) SetGlobalTimer("QI#ZakDelayedTimer1","GLOBAL",TEN_DAYS) JoinParty()~ EXIT
END

END 
