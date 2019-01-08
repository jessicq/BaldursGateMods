EXTEND_BOTTOM BOTSMITH 4 
IF ~PartyHasItem("QI#MICK")~ THEN GOTO MinyaeRobes
END


APPEND BOTSMITH

IF ~~ THEN BEGIN MinyaeRobes
SAY @0
IF ~PartyHasItem("SCRL07")~ THEN GOTO GotMaterials
IF ~!PartyHasItem("SCRL07")~ THEN GOTO NoMaterials
IF ~InParty("QI#Mi") InMyArea("QI#Mi") !StateCheck("QI#Mi",CD_STATE_NOTVALID) Global("QI#MiToBCespenarInterjection","GLOBAL",0)~ THEN DO ~SetGlobal("QI#MiToBCespenarInterjection","GLOBAL",1)~ EXTERN QI#M25J MinyaeInterjects
END

END


APPEND QI#M25J

IF ~~ THEN MinyaeInterjects
SAY @1
++ @2 + mi1.1
++ @3 + mi2.0
++ @4 EXTERN BOTSMITH KeepGoing
END

IF ~~ THEN mi1.1
SAY @5
++ @6 + mi2.0
++ @7 + mi2.0
++ @8 + mi0.0
END

IF ~~ THEN mi2.0
SAY @9
IF ~PartyHasItem("SCRL07")~ THEN EXTERN BOTSMITH GotMaterials
IF ~!PartyHasItem("SCRL07")~ THEN EXTERN BOTSMITH NoMaterials
END

IF ~~ THEN mi0.0
SAY @10
IF ~~ THEN EXTERN BOTSMITH KeepGoing
END

END


APPEND BOTSMITH


IF ~~ THEN BEGIN GotMaterials
SAY @11
= @12
+ ~PartyGoldGT(14999)~ + #66760 DO ~SetGlobal("QI#MiItemMaker","GLOBAL",1) TakePartyGold(15000) TakePartyItem("SCRL07") TakePartyItem("QI#MICK") DestroyItem("SCRL07") DestroyItem("QI#MICK") DestroyGold(15000)~ GOTO 11
+ ~PartyGoldLT(15000)~ + @13 + KeepGoing
++ @14 + KeepGoing
END

IF ~~ THEN BEGIN KeepGoing
SAY @15
COPY_TRANS BOTSMITH 4
END

IF ~~ THEN BEGIN NoMaterials
SAY @16
IF ~~ THEN GOTO KeepGoing
END


IF WEIGHT #-1
~Global("QI#MiItemMaker","GLOBAL",1)~ THEN BEGIN MinyaeNewRobes
  SAY #70888
  IF ~~ THEN DO ~SetGlobal("QI#MiItemMaker","GLOBAL",2)~ EXIT
END

END

