/********************* Interjections *********************/

/********************* Romance Path *********************/

/********************* "Friendship" Path *********************/
//Talk 1 -
IF ~Global("QI#TelziFriendshipTalk","GLOBAL",2)~
SAY ~~
END

//Talk 2 -
IF ~Global("QI#TelziFriendshipTalk","GLOBAL",4)~
SAY ~~
END

//Talk 3 -
IF ~Global("QI#TelziFriendshipTalk","GLOBAL",6)~
SAY ~~
END

//Talk 4 - 
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
SAY ~~
END
