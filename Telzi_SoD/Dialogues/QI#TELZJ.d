/********************* Interjections *********************/

/********************* Romance Path *********************/

/********************* "Friendship" Path *********************/
//Talk 1 - Male Dislike
IF ~Global("QI#TelziFriendshipTalk","GLOBAL",2) Gender(Player1, MALE)~ TelziFriendshipTalk1.0Male
SAY ~I do not like males.~
= ~They reek of strong odors and think too highly of themselves.~
++ ~I was not put into this world for you to like me.~
++ ~I could care less what you think of men.~
++ ~Because men are the rulers of this world. We have and make kings and great leaders, what does your kind do?~
++ ~You are a troll - a monster! If you think I smell, then you must haven't properly smelled yourself!~
++ ~Then, don't talk to me.~
END

IF ~Global("QI#TelziFriendshipTalk","GLOBAL",2) Gender(Player1, FEMALE)~ TelziFriendshipTalk1.0Female
SAY ~~
END

//Talk 2 -
IF ~Global("QI#TelziFriendshipTalk","GLOBAL",4)~ TelziFriendshipTalk2.0
SAY ~~
END

//Talk 3 - 
IF ~Global("QI#TelziFriendshipTalk","GLOBAL",6)~ TelziFriendshipTalk3.0
SAY ~~
END

//Talk 4 - I support you.
IF ~Global("QI#TelziFriendshipTalk","GLOBAL",8)~ TelziFriendshipTalk4.0
SAY ~You are a respectable warrior.~
+ Gender(Player1, MALE) + ~Thank you. You are too.~ + tft4.0.1a
+ Gender(Player1, FEMALE) + ~Thank you. You are too.~ + tft4.0.1b
+ Gender(Player1, MALE) + ~Thanks? Although, I hardly need your confirmations.~ + tft4.0.1a
+ Gender(Player1, FEMALE) + ~Thanks? Although, I hardly need your confirmations.~ + tft4.0.1b
++ ~What brought this on?~ + tft4.0.2
++ ~Coming from a monster, that doesn't mean anything.~ + tft4.0.3
++ ~You are talking again? Don't you understand when someone doesn't want to talk to you?~ + tft4.0.4
END

IF ~~ tft4.0.1a
SAY ~I did not think males could be respectable.~
= ~But I see I was wrong.~
IF ~~ + tft4.1
END

IF ~~ tft4.0.1b
SAY ~You are a formidable female.~
= ~I cannot help but admire your strength and determination.~
IF ~~ + tft4.1
END

IF ~~ tft4.0.2
SAY ~I traveled and fought by your side.~
= ~I believed you would fail and disappoint in your tasks, but you have proven otherwise.~
IF ~~ + tft4.1
END

IF ~~ tft4.0.3
SAY ~I am a monster, you are right.~
= ~But I am a monster that has traveled and fought by your side.~
= ~I believed you would fail and disappoint in your tasks, but you have proven otherwise.~
IF ~~ + tf4.1
END

IF ~~ tft4.0.4
SAY ~You gave no indication, so no, I would not know.~
= ~If you would like for me to stop, you must say it.~
++ ~Yes, stop talking to me. I don't want to listen to your voice ever again.~ +  tft4.0.4a
++ ~Sorry, Telzi. I didn't mean that. Please continue with what you were going to say.~ + tft4.0.2
END

IF ~~ tft4.0.4a
SAY ~Fine.~
IF ~~ DO ~SetGlobal("QI#TelziFriendshipActive,"GLOBAL",1)~ EXIT
END

IF ~~ tft4.1
SAY ~It is a pleasure and honor watching you fight. I feel inspired by your actions.~
= ~You have also calmly traveled with a monster. It is surprising to me.~
++ ~You aren't a monster, you're my friend.~ + tft4.2
++ ~Aren't we all monsters here?~ + tft4.1.1
++ ~I wouldn't say I was calm about the whole situation, but you're welcome.~ + tft4.2
++ ~Good. I am glad to hear that. Perhaps you will fight harder for me next we engage in battle.~ + tft4.1.2
END

IF ~~ tft4.1.1
SAY ~No, you are a <PRO_RACE>.~
++ ~(sigh) Never mind.~ + tft4.2
++ ~I'll never get tired of your sense of humor.~ + tft4.1.1a
END

IF ~~ tft4.1.1a
SAY ~I was not trying to be funny.~
++ ~(sigh) Never mind.~ + tft4.2
END

IF ~~ tft4.1.2
SAY ~Yes, I will do that.~
IF ~~ + tft4.2
END

IF ~~ tft4.2
SAY ~You are a rare find.~
= ~There is no other creature like you in this world, always stay to true yourself. Do not let others speak ill of you.~
= ~Do not change.~
= ~You will always have my support, my friend.~
IF ~~ DO ~IncrementGlobal("QI#TelziFriendshipTalk","GLOBAL",1)~ EXIT
END
