BEGIN QI#TELZI 

APPEND QI#TELZI

// First Encounter
IF ~Gender(Player1,MALE) Global("QI#TelziEncounter1","GLOBAL",1)~ TelziIntroductionMale
SAY ~A male would save me? To what end?~
= ~I will not be your slave. I refuse.~
++ ~I don't want to enslave you.~ + noslave
++ ~I couldn't let them hurt you.~ + tIntro1.0.1
++ ~A little appreciation would be nice.~ + tIntro1.0.2
++ ~I saved you, so what can you offer me in return?~ + tIntro1.0.2
++ ~Why does it matter?~ + tIntro1.0.1
++ ~Yes, and I'm starting to regret it.~ + tIntro1.0.3
++ ~I did, now get out of my sight.~ + tIntro1.0.4
++ ~Yes, you will now be my slave!~ + enslavement
END

IF ~~ noslave
SAY ~No?~
= ~Then what does the male want?~
++ ~I just couldn't let them hurt you.~ + tIntro1.0.1
++ ~A little appreciation would be nice.~ + tIntro1.0.2
++ ~I saved you, so what can you offer me in return?~ + tIntro1.0.2
++ ~Why does it matter?~ + tIntro1.0.1
++ ~Yes, and I'm starting to regret it.~ + tIntro1.0.3
++ ~I did, now get out of my sight.~ + tIntro1.0.4
END

IF ~~ enslavement
SAY ~No!~
= ~I will not be enslaved by your kind again!~
IF ~~ DO ~Enemy() Attack(LastSeenBy()) SetGlobal("QI#TelziEncounter1","GLOBAL",2)~ EXIT
END

IF ~Gender(Player1,FEMALE) Global("QI#TelziEncounter1","GLOBAL",1)~ TelziIntroductionFemale
SAY ~You would save me?~
= ~Why?~
++ ~I couldn't let them hurt you.~ + tIntro1.0.1
++ ~A little appreciation would be nice.~ + tIntro1.0.2
++ ~I saved you, so what can you offer me in return?~ + tIntro1.0.2
++ ~Why does it matter?~ + tIntro1.0.1
++ ~Yes, and I'm starting to regret it.~ + tIntro1.0.3
++ ~I did, now get out of my sight.~ + tIntro1.0.4
END

IF ~~ tIntro1.0.1
SAY ~That is kind of you.~
= ~Not many people would do that for someone like me.~
++ ~Then, you haven't met many people.~ + tIntro1.0.1a
++ ~Well, I'm not like most people.~ + tIntro1.0.1b
++ ~You could say that again.~ + tIntro1.0.1c
END

IF ~~ tIntro1.0.1a
SAY ~I do not need to know many people.~
++ ~Sure...anyway, what can you offer me in return for saving you?~ + tIntro1.0.2
++ ~Okay, well, you are free to go.~ + tIntro1.0.5
++ ~I expected as much, but you look like you can hold your own ground. We could use someone like you.~ + tIntro1.1
++ ~And I am not going to on the list of people you do know, so I'm leaving now.~ + tIntro1.0.4
END

IF ~~ tIntro1.0.1b
SAY ~Yes, you are strange. You smell different than most.~
++ ~What's that supposed to mean?~ + tIntro1.0.1ba
++ ~Okay, well, what can you offer me?~ + tIntro1.0.2
++ ~That's interesting. I think I'll be going now.~ + tIntro1.0.4
END

IF ~~ tIntro1.0.1ba
SAY ~It means that you smell differently than others.~
++ ~Wow, thanks for the stating the obvious.~ + tIntro1.0.1bc
++ ~Anyway, like I said, I couldn't let them hurt you.~ + tIntro1.0.2
++ ~So, what can you offer me in return for helping you?~ + tIntro1.0.2
++ ~Oookay. I am going to go now.~ + tIntro1.0.4
END 

IF ~~ tIntro1.0.1bc
SAY ~You are welcome.~
++ ~...I was being sarcastic.~ + tIntro1.0.1d
++ ~Okay, well, what can you offer me?~ + tIntro1.0.2
++ ~Anyway, like I said, I couldn't let them hurt you.~ + tIntro1.0.2
++ ~Oookay. I am going to go now.~ + tIntro1.0.4
END

IF ~~ tIntro1.0.1c
SAY ~Not many people would do that for someone like me.~
++ ~...I didn't mean that literally.~ + tIntro1.0.1d
++ ~Okay, well, what can you offer me?~ + tIntro1.0.2
++ ~And I wouldn't do it again. I think I'll be going now.~ + tIntro1.0.4
END

IF ~~ tIntro1.0.1d
SAY ~I will go now, safe travels to you.~
++ ~Wait! You look like someone who can hold their ground. Would you like to join me?~ + tIntro1.1
++ ~Safe travels to you as well.~ DO ~EscapeArea() SetGlobal("QI#TelziEncounter1","GLOBAL",2)~ EXIT 
++ ~Good riddance.~ DO ~EscapeArea() SetGlobal("QI#TelziEncounter1","GLOBAL",2)~ EXIT 
END

IF ~~ tIntro1.0.2
SAY ~I have nothing to offer you.~
++ ~That's fine, you are free to go.~ + tIntro1.0.5
++ ~That's fine, but you look like you can hold your ground. We could use someone like you.~ + tIntro1.1
++ ~I expected as much, but you look like you can hold your own ground. We could use someone like you.~ + tIntro1.1
++ ~Then, get out of my sight.~ + tIntro1.0.5
END

IF ~~ tIntro1.0.3
SAY ~I thought as much.~
IF ~~ + tIntro1.0.2
END

IF ~~ tIntro1.0.4
SAY ~That is a good idea.~
IF ~~ + tIntro1.0.5
END

IF ~~ tIntro1.0.5
SAY ~You will not see me again.~
IF ~~ DO ~EscapeArea() SetGlobal("QI#TelziEncounter1","GLOBAL",2)~ EXIT
END

IF ~~ tIntro1.1
SAY ~I do not like to travel with strangers.~
++ ~You'll get to know me as we travel together.~ + tIntro1.2
++ ~You must be the life of the party in all the taverns, aren't you?~ + tIntro1.1.1
++ ~Fine, I just thought it would be better for you to travel with me than on your own.~ + tIntro1.1.2
++ ~Makes sense. Safe travels to you.~ + tIntro1.0.5
END

IF ~~ tIntro1.1.1
SAY ~You are right. I am only the life in a tavern when the patrons see me for who I really am.~
++ ~I give up. I'm not arguing with you.~ + tIntro1.2.1
++ ~Sure. Anyway, would you be interested in joining with me?~ + tIntro1.3
++ ~Right. Anyway, I'll be going now.~ + tIntro1.0.4
END

IF ~~ tIntro1.1.2
SAY ~It is best if I travel alone.~
++ ~If you say so.~ + tIntro1.0.5
++ ~Safe travels then.~ + tIntro1.0.5 
END

IF ~~ tIntro1.2
SAY ~I do not need to know you.~
++ ~I give up. I'm not arguing with you.~ + tIntro1.2.1
++ ~Well, I think you do.~ + tIntro1.2.2
++ ~Are you sure about that?~ + tIntro1.2.3
++ ~I don't need to know you either. Good bye.~ + tIntro1.0.5
END

IF ~~ tIntro1.2.1
SAY ~There was no argument to begin with.~
= ~But I tire of this meaningless banter.~
= ~I will be leaving now.~
++ ~I guess there is no way I could convince you to join me. Very well, farewell.~ + tIntro1.0.5
++ ~If you say so.~ + tIntro1.0.5
++ ~Safe travels to you then.~ DO ~EscapeArea() SetGlobal("QI#TelziEncounter1","GLOBAL",2)~ EXIT 
++ ~Good riddance.~ DO ~EscapeArea() SetGlobal("QI#TelziEncounter1","GLOBAL",2)~ EXIT 
END

IF ~~ tIntro1.2.2
SAY ~I do not.~
++ ~I give up. I'm not arguing with you.~ + tIntro1.2.1
++ ~Are you sure about that?~ + tIntro1.2.3
++ ~You do.~ + tIntro1.2.2a
END

IF ~~ tIntro1.2.2a
SAY ~I do not.~
++ ~I give up. I'm not arguing with you.~ + tIntro1.2.1
++ ~Are you sure about that?~ + tIntro1.2.3
++ ~You do.~ + tIntro1.2.2b
END

IF ~~ tIntro1.2.2b
SAY ~I tire of this talk.~
= ~I will be leaving now.~
++ ~I guess there is no way I could convince you to join me. Very well, farewell.~ + tIntro1.0.5
++ ~If you say so, but you're going to regret it.~ + tIntro1.0.5
++ ~Safe travels to you then.~ DO ~EscapeArea() SetGlobal("QI#TelziEncounter1","GLOBAL",2)~ EXIT 
++ ~Good riddance.~ DO ~EscapeArea() SetGlobal("QI#TelziEncounter1","GLOBAL",2)~ EXIT 
END

IF ~~ tIntro1.2.3
SAY ~Yes.~
++ ~I guess there is no way I could convince you to join me. Very well, farewell.~ + tIntro1.0.5
++ ~Safe travels to you then.~ DO ~EscapeArea() SetGlobal("QI#TelziEncounter1","GLOBAL",2)~ EXIT 
++ ~Good riddance.~ DO ~EscapeArea() SetGlobal("QI#TelziEncounter1","GLOBAL",2)~ EXIT 
END

IF ~~ tIntro1.3
SAY ~No. I do not like traveling with strangers.~
++ ~You'll get to know me as we travel together.~ + tIntro1.2
++ ~Fine, I just thought it would be better for you to travel with me than on your own.~ + tIntro1.1.2
++ ~Makes sense. Safe travels to you.~ + tIntro1.0.5
END


// Second Encounter
IF ~Global("QI#TelziEncounter1","GLOBAL",2)~ SecondEncounter1.0
SAY ~I do not like this situation that you always find me in.~
++ ~Don't put yourself in these types of situations then.~ + SecondEncounter1.0.1
++ ~You should've traveled with me in the first place.~ + SecondEncounter1.0.2
++ ~This is the second time I've saved your hide.~ + SecondEncounter1.0.3
++ ~I have to see you again?! Get out of my sight forever this time, or I will ensure that you will never see the light of day!~ + SecondEncounter1.0.4
END

IF ~~ SecondEncounter1.0.1
SAY ~Hmph. I do not put myself in these situations. It just happens to me.~
++ ~So it seems.~ + SecondEncounter1.0.1a
++ ~Yes, well, now that I have already proven that you need me, why don't you join me?~ + SecondEncounter1.0.2
++ ~Well, hopefully it doesn't happen again.~ + SecondEncounter1.0.1b
END

IF ~~ SecondEncounter1.0.1a
SAY ~It is what it is.~
++ ~What will you do now?~ + SecondEncounter1.1
++ ~Anyway, I have other things to attend to. Try not to get into trouble again, I might not be there to help you out.~ + SecondEncounter1.0.4a
END

IF ~~ SecondEncounter1.0.1b
SAY ~Yes, let us hope.~
++ ~What will you do now?~ + SecondEncounter1.1
++ ~Anyway, I have other things to attend to. Try not to get into trouble again, I might not be there to help you out.~ + SecondEncounter1.0.4a
END

IF ~~ SecondEncounter1.0.2
SAY ~Maybe.~
++ ~What will you do now?~ + SecondEncounter1.1
++ ~Anyway, I have other things to attend to. Try not to get into trouble again, I might not be there to help you out.~ + SecondEncounter1.0.4a
END

IF ~~ SecondEncounter1.0.3
SAY ~Yes, it is.~
++ ~What will you do now?~ + SecondEncounter1.1
++ ~Anyway, I have other things to attend to. Try not to get into trouble again, I might not be there to help you out.~ + SecondEncounter1.0.4a
END

IF ~~ SecondEncounter1.0.4
SAY ~Done.~
IF ~~ + SecondEncounter.0
END

IF ~~ SecondEncounter1.0.4a
SAY ~I will not.~
IF ~~ + SecondEncounter.0
END

IF ~~ SecondEncounter.0
SAY ~You will not see me again...this time it will be true.~
IF ~~ DO ~EscapeArea() SetGlobal("QI#TelziEncounter1","GLOBAL",3)~ EXIT 
END

IF ~~ SecondEncounter1.1
SAY ~Maybe I should have traveled with you.~
IF ~Gender(Player1,FEMALE)~ + SecondEncounter1.2Female
IF ~Gender(Player1,MALE)~ + SecondEncounter1.2Male
END

IF ~~ SecondEncounter1.2Female
SAY ~You have kind eyes.~
= ~I can protect you, if you let me join you.~
++ ~It seems like I'll be protecting you, but very well, come with me.~ + SecondEncounter1.2Femalea
++ ~I don't have room in my party right now, but go back to the camp and tell them I sent you. That will give you a place to stay for now.~ + SecondEncounter1.2Femaleb
++ ~I don't need protection, but you are welcome to join me.~ + SecondEncounter1.2Femalea
++ ~I don't need you, you can barely protect yourself.~ + SecondEncounter1.2Femalec
++ ~Sorry, but I must decline your offer.~ + SecondEncounter1.3
END

IF ~~ SecondEncounter1.2Femalea
SAY ~You will be surprised.~
IF ~~ DO ~SetGlobal("TelziJoined","GLOBAL",1) SetGlobal("QI#TelziEncounter1","GLOBAL",3) JoinParty()~ EXIT
END

IF ~~ SecondEncounter1.2Femaleb //go to camp location, need [x,y]
SAY ~I will go to camp.~
= ~I will see you there.~
IF ~~ DO ~SetGlobal("QI#TelziEncounter1","GLOBAL",3)~ EXIT
END

IF ~~ SecondEncounter1.2Femalec
SAY ~I can protect you. Reconsider.~
++ ~Fine.~ + SecondEncounter1.2Femalea 
++ ~Okay, but you have a lot to prove.~ + SecondEncounter1.2Femalea
++ ~Sorry, but I'm not risking it.~ + SecondEncounter1.3
END

IF ~~ SecondEncounter1.2Male
SAY ~But do not get too prideful, male.~
= ~Remember, I am not your slave.~
= ~Do not treat me as one, and I will join you.~
++ ~I will not treat you as a slave, you have my word.~ + SecondEncounter1.2Malea
++ ~You are nothing, but a slave. You can join me if you announce your complete and absolute loyalty to me.~ + SecondEncounter1.2Maleb
++ ~I don't have room in my party right now, but go back to the camp and tell them I sent you. That will give you a place to stay for now.~ + SecondEncounter1.2Malec
++ ~I don't need you, you can barely protect yourself.~ + SecondEncounter1.2Maled
++ ~Sorry, but I must decline your offer.~ + SecondEncounter1.3
END

IF ~~ SecondEncounter1.2Malea
SAY ~Good.~
= ~Let us go, but I will keep my eyes on you.~
IF ~~ DO ~SetGlobal("TelziJoined","GLOBAL",1) SetGlobal("QI#TelziEncounter1","GLOBAL",3) JoinParty()~ EXIT
END

IF ~~ SecondEncounter1.2Maleb
SAY ~You males need to be rid of this world.~
= ~Starting with you!~
IF ~~ DO ~Enemy() Attack(LastSeenBy()) SetGlobal("QI#TelziEncounter1","GLOBAL",3)~ EXIT
END

IF ~~ SecondEncounter1.2Malec
SAY ~I will go to camp.~
= ~I will see you there, but do not disrespect me.~
IF ~~ DO ~SetGlobal("QI#TelziEncounter1","GLOBAL",3)~ EXIT
END

IF ~~ SecondEncounter1.2Maled
SAY ~I am not useless.~
++ ~Fine.~ + SecondEncounter1.2Malea
++ ~Okay, but you have a lot to prove.~ + SecondEncounter1.2Malea
++ ~Sorry, but I'm not risking it.~ + SecondEncounter1.3
END

IF ~~ SecondEncounter1.3
SAY ~Then, I will go.~
IF ~~ DO ~EscapeArea() SetGlobal("QI#TelziEncounter1","GLOBAL",3)~ EXIT
END

END 