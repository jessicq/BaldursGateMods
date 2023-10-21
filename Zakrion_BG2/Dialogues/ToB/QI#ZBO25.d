BEGIN QI#ZBO25

IF ~GlobalGT("QI#ZakSaradushFamily","GLOBAL",1) AreaCheck("AR5012")~ QI#ZakHalfBro
SAY @0 
IF ~~ EXIT
END 

IF ~AreaCheck("AR5500")~ QI#ZakHalfBroAlive
SAY @1
= @2 
IF ~~ EXIT
END 