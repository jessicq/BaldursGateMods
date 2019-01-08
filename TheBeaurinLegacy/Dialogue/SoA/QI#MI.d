BEGIN QI#MI

APPEND QI#MI
IF ~NumTimesTalkedTo(0)~ MeetMinyae
SAY @0
++ @1 + NeedHelp
++ @2 + Insult
++ @3 + Leave
END

IF ~~ NeedHelp
SAY @4
= @5
++ @6 + Insult
++ @7 + HelpAccepted
++ @8 + Leave
END

IF ~~ Insult
SAY @43
++ @9 + HelpAccepted
++ @10 + Leave
END

IF ~~ HelpAccepted
SAY @11
= @12
= @13
= @14
++ @15 + Reward
IF ~CheckStatGT(Player1, 14, INT)~ THEN REPLY @16 + Catch
++ @17 + InParty
++ @18 + Leave
END

IF ~~ Reward
SAY @19
= @20
= @21
++ @22 + InParty
++ @23 + Leave
END

IF ~~ Catch
SAY @24
= @25
IF ~CheckStatGT(Player1, 16, INT)~ THEN REPLY @26 + Hiding
++ @27 + InParty
++ @28 + Leave
END

IF ~~ Hiding
SAY @29
IF ~CheckStatGT(Player1, 12, WIS)~ THEN REPLY @30 + LastChance
++ @31 + InParty
++ @32 + Leave
END

IF ~~ LastChance
SAY @33
= @34
= @35
++ @36 + InParty
++ @37 + Leave
END

IF ~~ Leave
SAY @38
IF ~~ DO ~SetGlobal("QI#MiRejected","GLOBAL",1)~ EXIT
END

IF ~~ InParty
SAY @39
IF ~~ DO ~SetGlobal("QI#MiJoined","GLOBAL",1) JoinParty() AddJournalEntry(@88888,QUEST)~ EXIT
END

IF ~Global("QI#MiRejected","GLOBAL",1)~ BackAgain
SAY @40
++ @41 + InParty
++ @42 + Leave
END

END

