BEGIN QI#ZAKBU

CHAIN
IF ~True()~ THEN QI#ZAKBU QI#ButtercupMain
@0
END
++ @1 EXTERN QI#ZAKBU QI#ButtercupWellness
++ @2 EXTERN QI#ZAKBU QI#ButtercupCutie
++ @3 EXTERN QI#ZAKBU QI#ButtercupWeird
++ @4 EXTERN QI#ZAKBU QI#ButtercupZakrion
+ ~InParty("Minsc")~ + @5 EXTERN QI#ZAKBU QI#ButtercupBoo
+ ~OR(14) 
	  AreaCheck("AR2100") 
	  AreaCheck("AR2101") 
	  AreaCheck("AR2102")
	  AreaCheck("AR2200") 
	  AreaCheck("AR2201") 
	  AreaCheck("AR2202") 
	  AreaCheck("AR2203") 
	  AreaCheck("AR2204") 
	  AreaCheck("AR2205") 
	  AreaCheck("AR2206") 
	  AreaCheck("AR2207") 
	  AreaCheck("AR2208") 
	  AreaCheck("AR2209") 
	  AreaCheck("AR2210")~ + @6 EXTERN QI#ZAKBU QI#ButtercupUnderdark
+ ~OR(2)
	  Global("QI#ZakRomanceActive","GLOBAL",1)
	  Global("QI#ZakRomanceActive","GLOBAL",2)~ + @7 EXTERN QI#ZAKBU QI#ButtercupRomance
++ @8 EXTERN QI#ZAKBU QI#ButtercupWizard
++ @9 EXTERN QI#ZAKBU QI#ButtercupPreference
++ @10 EXTERN QI#ZAKBU QI#ButtercupPetHead
++ @11 EXTERN QI#ZAKBU QI#ButtercupPlay
++ @12 EXTERN QI#ZAKBU QI#ButtercupTail
+ ~Global("QI#ZakSalbreadQuest","GLOBAL",5)
   PartyHasItem("QI#ZHAND")
   AreaCheck("AR0900")~ + @48 EXTERN QI#ZAKBU QI#ButtercupHalflingQuestTemple1
+ ~Global("QI#ZakSalbreadQuest","GLOBAL",5)
   PartyHasItem("QI#ZHAND")
   AreaCheck("AR0701")~ + @48 EXTERN QI#ZAKBU QI#ButtercupHalflingQuestSewers1
+ ~Global("QI#ZakSalbreadQuest","GLOBAL",5)
   PartyHasItem("QI#ZHAND")
   !AreaCheck("AR0701")
   !AreaCheck("AR0900")~ + @48 EXTERN QI#ZAKBU QI#ButtercupHalflingQuestNotHere1
++ @13 EXTERN QI#ZAKBU QI#ButtercupEnd

CHAIN QI#ZAKBU QI#ButtercupHalflingQuestTemple1
@49
END
++ @50 EXTERN QI#ZAKBU QI#ButtercupHalflingQuestTemple2 

CHAIN QI#ZAKBU QI#ButtercupHalflingQuestTemple2 
@19
END
++ @51 EXTERN QI#ZAKBU QI#ButtercupHalflingQuestTemple3

CHAIN QI#ZAKBU QI#ButtercupHalflingQuestTemple3
@52
EXIT

CHAIN QI#ZAKBU QI#ButtercupHalflingQuestSewers1
@53
END 
++ @54 EXTERN QI#ZAKBU QI#ButtercupHalflingQuestSewers2

CHAIN QI#ZAKBU QI#ButtercupHalflingQuestSewers2
@23
EXIT 

CHAIN QI#ZAKBU QI#ButtercupHalflingQuestNotHere1
@55
END 
++ @56 EXTERN QI#ZAKBU QI#ButtercupHalflingQuestNotHere2

CHAIN QI#ZAKBU QI#ButtercupHalflingQuestNotHere2
@32
EXIT 

CHAIN QI#ZAKBU QI#ButtercupWellness
@14
END
++ @15 EXTERN QI#ZAKBU QI#ButtercupWellness1
++ @16 EXTERN QI#ZAKBU QI#ButtercupWellness2
++ @17 EXTERN QI#ZAKBU QI#ButtercupWellness3

CHAIN QI#ZAKBU QI#ButtercupWellness1
@20
EXIT 

CHAIN QI#ZAKBU QI#ButtercupWellness2
@19
END
++ @18 EXTERN QI#ZAKBU QI#ButtercupWellness2.1
++ @17 EXTERN QI#ZAKBU QI#ButtercupWellness3

CHAIN QI#ZAKBU QI#ButtercupWellness2.1
@20
EXIT 

CHAIN QI#ZAKBU QI#ButtercupWellness3
@21
EXIT

CHAIN QI#ZAKBU QI#ButtercupCutie
@22
EXIT

CHAIN QI#ZAKBU QI#ButtercupWeird
@23
EXIT

CHAIN QI#ZAKBU QI#ButtercupZakrion
@20
END
++ @24 EXTERN QI#ZAKBU QI#ButtercupZakrion1
++ @25 EXTERN QI#ZAKBU QI#ButtercupZakrion1

CHAIN QI#ZAKBU QI#ButtercupZakrion1
@21
END
++ @26 EXTERN QI#ZAKBU QI#ButtercupZakrion1.1
++ @27 EXTERN QI#ZAKBU QI#ButtercupZakrion1.1

CHAIN QI#ZAKBU QI#ButtercupZakrion1.1
@28
EXIT

CHAIN QI#ZAKBU QI#ButtercupBoo
@29
END
++ @30 EXTERN QI#ZAKBU QI#ButtercupBoo1
++ @31 EXTERN QI#ZAKBU QI#ButtercupBoo2

CHAIN QI#ZAKBU QI#ButtercupBoo1
@20
EXIT

CHAIN QI#ZAKBU QI#ButtercupBoo2
@22
EXIT

CHAIN QI#ZAKBU QI#ButtercupUnderdark
@32
END
++ @33 EXTERN QI#ZAKBU QI#ButtercupUnderdark1
++ @34 EXTERN QI#ZAKBU QI#ButtercupUnderdark2
++ @35 EXTERN QI#ZAKBU QI#ButtercupUnderdark1

CHAIN QI#ZAKBU QI#ButtercupUnderdark1
@36
EXIT

CHAIN QI#ZAKBU QI#ButtercupUnderdark2
@37
EXIT

CHAIN QI#ZAKBU QI#ButtercupRomance
@38
END
++ @39 EXTERN QI#ZAKBU QI#ButtercupRomance1
++ @40 EXTERN QI#ZAKBU QI#ButtercupRomance1
++ @41 EXTERN QI#ZAKBU QI#ButtercupRomance1

CHAIN QI#ZAKBU QI#ButtercupRomance1
@42
EXIT

CHAIN QI#ZAKBU QI#ButtercupWizard
@43
END
++ @44 EXTERN QI#ZAKBU QI#ButtercupWizard1

CHAIN QI#ZAKBU QI#ButtercupWizard1
@21
EXIT 

CHAIN QI#ZAKBU QI#ButtercupPreference
@45
EXIT

CHAIN QI#ZAKBU QI#ButtercupPetHead
@46
EXIT

CHAIN QI#ZAKBU QI#ButtercupPlay
@47
EXIT 

CHAIN QI#ZAKBU QI#ButtercupTail
@43
EXIT 

CHAIN QI#ZAKBU QI#ButtercupEnd
@21
EXIT 