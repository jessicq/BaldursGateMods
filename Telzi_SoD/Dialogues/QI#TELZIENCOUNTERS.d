BEGIN QI#THUG1
BEGIN QI#THUG2
BEGIN QI#THUG3
BEGIN QI#THUG4

//Encounter 1
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

CHAIN
IF ~~ QI#TEL FirstEncounter1.0.1
~I have stopped many before you, you will not stop me now.~
DO ~Enemy()
  Attack(Player1) 
  ReallyForceSpell("QI#TEL", CLERIC_ARMOR_OF_FAITH)
  ReallyForceSpell("QI#TEL", WIZARD_IMPROVED_HASTE)~
EXIT

CHAIN
IF ~~ QI#TEL FirstEncounter1.0.2
~Yes. You would do well to listen to the Hero of Baldur's Gate.~
IF ~~ + FirstEncounter1.1
END

CHAIN
IF ~~ QI#THUG1 FirstEncounter1.1
~The Hero of --?~
= ~Quick men, let's get out of here!~
DO ~SetGlobal("QI#TelziThugFlees","GLOBAL",1)~
EXIT

//Encounter 2
CHAIN
IF ~Global("QI#TelziEncounter1","GLOBAL",1) See(Player1)~ QI#THUG1 SecondMeeting1.0
~Did you really think we were going to let you go?~
= ~You must be stupid if you thought we were. Well, you are a troll after all.~
IF ~~ + SecondMeeting1.1
END

CHAIN
IF ~~ QI#TEL SecondMeeting1.1
~Again?~
= ~I thought the scare in Baldur's Gate was enough to scare you fools away.~
= ~Men are all weak and scared creatures.~
= ~You are all the same.~
IF ~~ + SecondMeeting1.2
END
++ ~Hey! It's you again.~ + SecondMeeting2.0
++ ~Really? This again?~ + SecondMeeting2.0
++ ~I am not getting into this again...~ + SecondMeeting2.0
	
CHAIN
IF ~~ QI#TEL SecondMeeting2.0
~You again?~
IF ~~ + SecondMeething3.0
END

CHAIN
IF ~~ QI#THUG1 SecondMeeting3.0
~The Hero of Baldur's Gate again?~
= ~Aw, shucks.~
= ~What do we do boys?~
= ~We can't let this troll off the hook again. People will think we're incompetent.~
== QI#THUG2 ~Incompetent? That is a big word.~
== QI#THUG3 ~I've never liked big words. They make me feel stupid.~
== QI#THUG4 ~In-com-pet-ent.~
== QI#THUG1 ~...Stand aside, hero, or we'll be forced to cut you down.~
END
++ ~By all means, please continue with what you were doing.~ + SecondMeeting3.1
++ ~No! I will not let you touch her!~ + SecondMeeting3.2
++ ~Sorry, troll, but today just isn't your lucky day, is it?~ + SecondMeeting3.3
	
CHAIN
IF ~~ QI#TEL SecondMeeting3.1
~~
END
