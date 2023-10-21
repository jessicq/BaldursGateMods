BEGIN QI#ZST25

IF ~GlobalGT("QI#ZakSaradushFamily","GLOBAL",1) AreaCheck("AR5012")~ QI#ZakStepFather
SAY @0 
IF ~~ EXIT
END 

IF ~AreaCheck("AR5500")~ QI#ZakStepFatherAlive
SAY @1
IF ~~ EXIT
END 