BEGIN QI#THUG1
BEGIN QI#THUG2
BEGIN QI#THUG3
BEGIN QI#THUG4

CHAIN
IF ~Global("QI#TelziEncounter1","GLOBAL",0) See(Player1)~ THEN QI#THUG1 QI#TelziEncounter1
~Hey you! What are you skulking around for?~
DO ~SetGlobal("QI#TelziEncounter1","GLOBAL",1)~ 
== QI#THUG2 ~Don't ignore him!~
== QI#THUG3 ~Yeah, don't ignore him!~
== QI#THUG4 ~Why don't we take off that hood of hers? Wonder what's under there...~
== QI#THUG4 ~(With one swift movement, the thug pulls down the hood of the tall figure.)~
== QI#THUG1 ~I-it's a troll!~
== QI#THUG2 ~Troll?! Kill it! Kill it!~
END
++ ~A troll? What's it doing here?! Hurry, kill it with fire!~ + FirstEncounter1.0.1
++ ~Stop! This does not look like any ordinary troll.~ + FirstEncounter1.0.2

IF ~~ QI#TEL FirstEncounter1.0.1
SAY ~I have stopped many before you, you will not stop me now.~
DO ~SetGlobal("QI#TelziEncounter1","GLOBAL",2) 
  Attack(Player1) 
  ReallyForceSpell("QI#TEL", CLERIC_ARMOR_OF_FAITH)
	ReallyForceSpell("QI#TEL", WIZARD_IMPROVED_HASTE)
  Enemy()~
EXIT

IF ~~ QI#TEL FirstEncounter1.0.2
SAY ~Yes. You would do well to listen to the Hero of Baldur's Gate.~
END
