BEGIN SENLICH

EXTEND_BOTTOM SENLICH 0 
IF ~Global("QI#MiSendaiLichEncounter","GLOBAL",0)
	OR(2) 
	  InParty("QI#Mi") 
	  InParty("QI#Ela")~ THEN GOTO SendaiLichMeeting
END


APPEND SENLICH

IF ~~ THEN BEGIN SendaiLichMeeting
SAY @0
IF ~InParty("QI#Mi")~ THEN EXTERN QI#M25J MinyaeSendaiLich
IF ~InParty("QI#Ela")~ THEN EXTERN QI#E25J ElarynSendaiLich
END

END


APPEND QI#M25J

IF ~~ THEN MinyaeSendaiLich
SAY @1
= @2
IF ~~ THEN EXTERN SENLICH MinyaeSendaiLich2.0
END

END


APPEND QI#E25J

IF ~~ THEN ElarynSendaiLich
SAY @3
IF ~~ THEN DO ~SetGlobal("QI#MiSendaiLichEncounter","GLOBAL",1)~ EXTERN SENLICH SendaiLichAttack
END

END


APPEND QI#M25J

IF ~~ THEN MinyaeBaelnorn
SAY @7
= @8
IF ~~ THEN DO ~SetGlobal("QI#MiSendaiLichEncounter","GLOBAL",1)~ EXTERN SENLICH SendaiLichAttack
END

END

APPEND SENLICH

IF ~~ THEN BEGIN MinyaeSendaiLich2.0
SAY @4
= @5
= @6
IF ~~ THEN EXTERN QI#M25J MinyaeBaelnorn
END

IF ~~ THEN BEGIN SendaiLichAttack
SAY @9
COPY_TRANS SENLICH 1
END

END