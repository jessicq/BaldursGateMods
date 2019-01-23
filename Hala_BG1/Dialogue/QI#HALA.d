BEGIN QI#HALA

APPEND QI#HALA
IF ~NumTimesTalkedTo(0)~ HalaIntroduction
SAY ~Is there something I can help you with?~ [QI#HALAv]
++ ~No, but you look you could use some help.~ + h1
++ ~Perhaps, what can you do for me?~ + h2
++ ~You seem out of place here.~ + h3
++ ~My apologies, perhaps we can speak another time.~ EXIT
END

IF ~~ h1
SAY ~Me?~
= ~Why would you help a stranger?~
++ ~Why not?~ + h1.1
END

IF ~~ h2
SAY ~I can do nothing for you. It was simply a gesture of courtesy.~
= ~I doubt there is anything I could personally do for you, and I do not wish to offend but I am hardly interested in any business proposal or idea you might have for me.~
++ ~Try me. Tell me what I can do to help you.~ + h1.2
++ ~Fair enough. Farewell then.~ EXIT
END

IF ~~ h3
SAY ~What do you mean? I have a right to be here as does anyone else who may walk through those doors.~
++ ~My apologies, your thoughts were not my intention. I meant that you look like you could use some help.~ + h1
++ ~You don't belong here.~ + h3.1
++ ~Never mind.~ EXIT
END

IF ~~ h3.1
SAY ~I will not argue with you. I can see when I am outmatched and I will not risk my life over a petty quarrel.~
= ~I do not wish any kindness on you.~
IF ~~ DO ~EscapeArea()~ EXIT
END

IF ~~ h1.1
SAY ~I could give you many reasons why my interests would not align with yours, but I could not give you a single reason as to why or how we might need one another to achieve them.~
++ ~Try me. Tell me what I can do to help you.~ + h1.2
++ ~Fair enough. Farewell then.~ EXIT
END

IF ~~ h1.2
SAY ~I suppose it wouldn't hurt to tell you...~
= ~Very well. Someone very special to me was taken...I have been led to believe the kidnappers are aligned with the current bandit attacks around this area.~
= ~I have been following the kidnappers' trail for days and the scent is fresh here. I believe they have stayed in one of these inns at Beregost, but I will only know until the night comes.~
= ~Reinforcement would be very welcome, but I have nothing to give you in return but my eternal gratitude. However, anything you might find in their possession, you may keep.~
= ~Will you aid a complete stranger?~
++ ~Sure, why not? Join with me, and we will see to it that you will be reunited with your loved one.~ + h1.3
++ ~I would be more than happy to assist. Join me.~ + h1.3
++ ~You offer nothing in return for my service? I must decline.~ + h1.4
++ ~Sorry, but that's your problem.~ + h1.4
END

IF ~~ h1.3
SAY ~I am surprised by your kindness.~
= ~Thank you. Now, let us be off.~
IF ~~ DO ~SetGlobal("QI#HalaJoined","GLOBAL",1) JoinParty()~ EXIT
END

IF ~~ h1.4
SAY ~That is understandable.~
= ~I wish you the best on your travel.~
IF ~~ DO ~SetGlobal("QI#HalaProposition","GLOBAL",1)~ EXIT
END


IF ~NumTimesTalkedToGT(0) Global("QI#HalaProposition","GLOBAL",0)~ HalaIntro2-Noprop
SAY ~Hello again. I am unsure how I can help you since the last time we spoke.~
++ ~I want to know how I can help you.~ + h1
++ ~Good point.~ EXIT
++ ~I just came by to say hello.~ EXIT
END

IF ~NumTimesTalkedToGT(0) Global("QI#HalaProposition","GLOBAL",1)~ HalaIntro2-Prop
SAY ~Have you come back to help a stranger?~
++ ~Yes, join me.~ + h1.3
++ ~No.~ EXIT
END

END