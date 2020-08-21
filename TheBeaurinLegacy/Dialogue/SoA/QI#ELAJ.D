BEGIN QI#ELAJ

//Fortune Teller - Gypsy
EXTEND_BOTTOM TRGYP02 2
IF ~!InPartySlot(LastTalkedToBy,0) Name("QI#Ela",LastTalkedToBy)~ EXTERN TRGYP02 fortuneElaryn
END

CHAIN TRGYP02 fortuneElaryn
@0
== QI#ELAJ @1
EXIT

//Celvan
CHAIN IF WEIGHT #-1 
~InParty("QI#Ela")
See("QI#Ela")
!StateCheck("QI#Ela",CD_STATE_NOTVALID)
Global("QI#ElaReactionCelvan","AR0300",0)~ THEN CELVAN celvan1e
@78
DO ~SetGlobal("QI#ElaReactionCelvan","AR0300",1)~
== QI#ELAJ @79
END CELVAN 1

//Salvanas
CHAIN 
IF ~!InPartySlot(LastTalkedToBy,0)
Name("QI#Ela",LastTalkedToBy)~ THEN SALVANAS ElarynSalvanas
@2
== QI#ELAJ @3
== SALVANAS @4
== QI#ELAJ @5
== SALVANAS @6
== QI#ELAJ @7
EXIT

//Madame Nin
CHAIN IF WEIGHT #-1
~NumTimesTalkedTo(0) 
Name("QI#Ela",LastTalkedToBy)
!Global("MadamUpset","GLOBAL",1)~ THEN MADAM QI#ElaReactionMadam1
@8
== QI#ELAJ @9
EXIT

CHAIN PLAYER1 notfriends
@10
DO ~SetGlobal("QI#ElaTreeOfLife","GLOBAL",1)~
END
++ @11 EXTERN QI#ELAJ elatree
++ @12 EXTERN QI#ELAJ elatree
++ @13 EXTERN QI#ELAJ elatree

CHAIN QI#ELAJ elatree
@14
END
COPY_TRANS PLAYER1 33 

//Irenicus - Tree of Life
I_C_T PLAYER1 16 QI#ElaIrenicusIsDead1
== QI#ELAJ IF ~InParty("QI#Ela") Range("QI#Ela",15) !StateCheck("QI#Ela",CD_STATE_NOTVALID)~ THEN @15
END

//Entering Hell
I_C_T PLAYER1 25 QI#ElaEnteringHell1
== QI#ELAJ IF ~InParty("QI#Ela") InMyArea("QI#Ela") !StateCheck("QI#Ela",CD_STATE_NOTVALID)~ THEN @16
END

//Battling Irenicus - Final Time
I_C_T HELLJON 7 QI#ElaThirdBattleWithIrenicus1
== QI#ELAJ IF ~InParty("QI#Ela") InMyArea("QI#Ela") !StateCheck("QI#Ela",CD_STATE_NOTVALID)~ THEN @17
END

I_C_T HELLJON 8 QI#ElaThirdBattleWithIrenicus2
== QI#ELAJ IF ~InParty("QI#Ela") InMyArea("QI#Ela") !StateCheck("QI#Ela",CD_STATE_NOTVALID)~ THEN @17
END

I_C_T HELLJON 9 QI#ElaThirdBattleWithIrenicus3
== QI#ELAJ IF ~InParty("QI#Ela") InMyArea("QI#Ela") !StateCheck("QI#Ela",CD_STATE_NOTVALID)~ THEN @17
END

I_C_T HELLJON 10 QI#ElaThirdBattleWithIrenicus4
== QI#ELAJ IF ~InParty("QI#Ela") InMyArea("QI#Ela") !StateCheck("QI#Ela",CD_STATE_NOTVALID)~ THEN @17
END

//Hendak
I_C_T HENDAK 1 QI#ElaHendak1
== QI#ELAJ IF ~InParty("QI#Ela") InMyArea("QI#Ela") !StateCheck("QI#Ela",CD_STATE_NOTVALID)~ THEN @18
END

//Lehtinan
I_C_T LEHTIN 3 QI#ElaLeht03
== QI#ELAJ IF ~InParty("QI#Ela") InMyArea("QI#Ela") !StateCheck("QI#Ela",CD_STATE_NOTVALID)~ THEN @19
END

//Tolger
I_C_T TOLGER 19 QI#ElaTOLGER19
== QI#ELAJ IF ~InParty("QI#Ela") InMyArea("QI#Ela") !StateCheck("QI#Ela",CD_STATE_NOTVALID)~ THEN @20
END

//Mayor of Umar Hills
I_C_T UHMAY01 55 QI#ElaUHMAY0155
== QI#ELAJ IF ~InParty("QI#Ela") InMyArea("QI#Ela") !StateCheck("QI#Ela",CD_STATE_NOTVALID)~ THEN @21
END

//Beggar
I_C_T BEGGAR1 0 QI#ElaBEGGAR1
== QI#ELAJ IF ~InParty("QI#Ela") InMyArea("QI#Ela") !StateCheck("QI#Ela",CD_STATE_NOTVALID)~ THEN @22
END

//Kangaxx
I_C_T HLKANG 2 QI#HKLANG02
== QI#ELAJ IF ~InParty("QI#Ela") InMyArea("QI#Ela") !StateCheck("QI#Ela",CD_STATE_NOTVALID)~ THEN @24
== HLKANG @25
== HLKANG @26
END


APPEND QI#ELAJ

//Talk After Encounter

IF ~Global("QI#MiEncounterTalk","GLOBAL",1)~ te1
SAY @27
++ @75 + te1.1
++ @28 + te1.1
++ @29 + te1.1
++ @30 + te1.1
END

IF ~~ te1.1
SAY @31
= @32
= @33
= @34
= @76
= @35
++ @36 + te1.2
++ @37 + te1.3
++ @38 + te1.4
END

IF ~~ te1.2
SAY @39
IF ~~ + te1.4
END

IF ~~ te1.3
SAY @40
IF ~~ DO ~SetGlobal("QI#MiEncounterTalk","GLOBAL",2)~ EXIT
END

IF ~~ te1.4
SAY @41
IF ~~ DO ~SetGlobal("QI#MiEncounterTalk","GLOBAL",2)~ EXIT
END


// Player - Initiated Dialogues

IF ~IsGabber(Player1)~ QI#ElaPID
SAY @42
++ @43 + nt
++ @77 + lying
+ ~RandomNum(3,1)~ + @44 + ae1
+ ~RandomNum(3,2)~ + @44 + ae2
+ ~RandomNum(3,3)~ + @44 + ae3
+ ~Gender(Player1,MALE)~ + @45 + pcboyela
+ ~Gender(Player1,FEMALE)~ + @45 + pcgirlela
++ @46 + elascar
++ @47 + difference
++ @48 EXIT
END

IF ~~ difference
SAY @49
= @50
= @51
IF ~~ EXIT
END

IF ~~ elascar
SAY @52
IF ~~ EXIT
END

IF ~~ ae1
SAY @53
IF ~~ EXIT
END 

IF ~~ ae2
SAY @54
IF ~~ EXIT
END

IF ~~ ae3
SAY @55
IF ~~ EXIT
END

IF ~~ pcboyela
SAY @56
++ @57 + relationship
++ @58 EXIT
END

IF ~~ pcgirlela
SAY @59
++ @60 + relationship
++ @61 EXIT
END

IF ~~ relationship
SAY @62
= @63
++ @64 + rela1
++ @65 + rela2
++ @66 + rela3
END

IF ~~ rela1
SAY @67
IF ~~ EXIT
END

IF ~~ rela2
SAY @68
= @69
IF ~~ EXIT
END

IF ~~ rela3
SAY @70
IF ~~ + rela2
END

IF ~~ lying
SAY @71
= @72
IF ~~ EXIT
END

IF ~~ nt
SAY @73
= @74
IF ~~ EXIT
END

END
