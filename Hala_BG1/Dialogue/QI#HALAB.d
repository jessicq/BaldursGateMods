BEGIN QI#HALAB

//Coran
CHAIN 
IF ~InParty("Coran")
InParty("QI#Hala")
See("QI#Hala")
!StateCheck("Coran",CD_STATE_NOTVALID)
!StateCheck("QI#Hala",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("QI#HalaCoran1","GLOBAL",0)~ THEN %CORAN_BANTER% QI#HalaCoran1
~My, my, what has my wonderful goddess, Hanali, brought to me on this fine day?~
DO ~SetGlobal("QI#HalaCoran1","GLOBAL",1)~
== QI#HALAB ~I beg your pardon?~
== %CORAN_BANTER% ~Do not blush~
EXIT 