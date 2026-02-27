BEGIN QI#ZBU25

CHAIN
IF ~True()~ THEN QI#ZBU25 QI#ButtercupToBMain
@0
END
++ @1 EXTERN QI#ZBU25 QI#ButtercupToBWellness
++ @2 EXTERN QI#ZBU25 QI#ButtercupToBCutie
++ @3 EXTERN QI#ZBU25 QI#ButtercupToBWeird
++ @4 EXTERN QI#ZBU25 QI#ButtercupToBZakrion
+ ~InParty("Minsc")~ + @5 EXTERN QI#ZBU25 QI#ButtercupToBBoo
+ ~OR(2)
	  Global("QI#ZakRomanceActive","GLOBAL",1)
	  Global("QI#ZakRomanceActive","GLOBAL",2)~ + @6 EXTERN QI#ZBU25 QI#ButtercupToBRomance
++ @7 EXTERN QI#ZBU25 QI#ButtercupToBWizard
++ @8 EXTERN QI#ZBU25 QI#ButtercupToBPreference
++ @9 EXTERN QI#ZBU25 QI#ButtercupToBPetHead
++ @10 EXTERN QI#ZBU25 QI#ButtercupToBPlay
++ @11 EXTERN QI#ZBU25 QI#ButtercupToBTail
+ ~PartyHasItem("QI#ZRING")~ + @32 EXTERN QI#ZBU25 QI#ButtercupToBProposal
+ ~Dead("Yaga01")~ + @34 EXTERN QI#ZBU25 QI#ButtercupToBSaradush
++ @12 EXTERN QI#ZBU25 QI#ButtercupToBEnd

CHAIN QI#ZBU25 QI#ButtercupToBWellness
@13
END
++ @14 EXTERN QI#ZBU25 QI#ButtercupToBWellness1
++ @15 EXTERN QI#ZBU25 QI#ButtercupToBWellness2
++ @16 EXTERN QI#ZBU25 QI#ButtercupToBWellness3

CHAIN QI#ZBU25 QI#ButtercupToBWellness1
@19
EXIT 

CHAIN QI#ZBU25 QI#ButtercupToBWellness2
@18
END
++ @17 EXTERN QI#ZBU25 QI#ButtercupToBWellness2.1
++ @16 EXTERN QI#ZBU25 QI#ButtercupToBWellness3

CHAIN QI#ZBU25 QI#ButtercupToBWellness2.1
@19
EXIT 

CHAIN QI#ZBU25 QI#ButtercupToBWellness3
@20
EXIT

CHAIN QI#ZBU25 QI#ButtercupToBCutie
@21
EXIT

CHAIN QI#ZBU25 QI#ButtercupToBWeird
@22
EXIT

CHAIN QI#ZBU25 QI#ButtercupToBZakrion
@19
END
++ @23 EXTERN QI#ZBU25 QI#ButtercupToBZakrion1
++ @24 EXTERN QI#ZBU25 QI#ButtercupToBZakrion1

CHAIN QI#ZBU25 QI#ButtercupToBZakrion1
@20
END
++ @25 EXTERN QI#ZBU25 QI#ButtercupToBZakrion1.1
++ @26 EXTERN QI#ZBU25 QI#ButtercupToBZakrion1.1

CHAIN QI#ZBU25 QI#ButtercupToBZakrion1.1
@27
EXIT

CHAIN QI#ZBU25 QI#ButtercupToBBoo
@28
END
++ @29 EXTERN QI#ZBU25 QI#ButtercupToBBoo1
++ @30 EXTERN QI#ZBU25 QI#ButtercupToBBoo2

CHAIN QI#ZBU25 QI#ButtercupToBBoo1
@19
EXIT

CHAIN QI#ZBU25 QI#ButtercupToBBoo2
@21
EXIT

CHAIN QI#ZBU25 QI#ButtercupToBRomance
@22
END
++ @23 EXTERN QI#ZBU25 QI#ButtercupToBRomance1
++ @24 EXTERN QI#ZBU25 QI#ButtercupToBRomance1
++ @25 EXTERN QI#ZBU25 QI#ButtercupToBRomance1

CHAIN QI#ZBU25 QI#ButtercupToBRomance1
@26
EXIT

CHAIN QI#ZBU25 QI#ButtercupToBWizard
@27
END
++ @28 EXTERN QI#ZBU25 QI#ButtercupToBWizard1

CHAIN QI#ZBU25 QI#ButtercupToBWizard1
@20
EXIT 

CHAIN QI#ZBU25 QI#ButtercupToBPreference
@29
EXIT

CHAIN QI#ZBU25 QI#ButtercupToBPetHead
@30
EXIT

CHAIN QI#ZBU25 QI#ButtercupToBPlay
@31
EXIT 

CHAIN QI#ZBU25 QI#ButtercupToBTail
@27
EXIT 

CHAIN QI#ZBU25 QI#ButtercupToBEnd
@20
EXIT 

CHAIN QI#ZBU25 QI#ButtercupToBProposal
@33
EXIT 

CHAIN QI#ZBU25 QI#ButtercupToBSaradush
@35
EXIT