/********************* Interjections *********************/

/********************* "Friendship" Path *********************/

//Talk 1 - Male Dislike
IF ~Global("QI#TelziFriendshipTalk","GLOBAL",2) Gender(Player1, MALE)~ TelziFriendshipTalk1.0Male
SAY ~I do not like males.~
= ~They reek of strong odors and think too highly of themselves.~
++ ~I agree.~ + tft1.0.1male
++ ~I was not put into this world for you to like me.~ + tft1.0.2male
++ ~I could care less what on you think of men.~ + tft1.0.3
++ ~Because men are the rulers of this world. We have and make kings and great leaders, what does your kind do?~ + tft1.0.4male
++ ~You are a troll - a monster! If you think I smell, then you haven't properly smelled yourself!~ + tft1.0.5
++ ~Then, don't talk to me.~ + tft1.0.0male
END

IF ~~ tft1.0.0male
SAY ~That is something I will not have a problem doing.~
IF ~~ DO ~SetGlobal("QI#TelziFriendshipActive","GLOBAL",1)~ EXIT
END

IF ~~ tft1.0.1male
SAY ~You would agree? I find that strange that a male would agree with this statement.~
= ~I expected resistance from your kind.~
++ ~No, I agree. My "kind" step out of their bounds, far too often, I might add.~ + tft1.0.1malea
++ ~I was just pulling your leg. I don't think that way about men.~ + tft1.0.1maleb
++ ~I neither disagree or agree.~ + tft1.0.1malec
END

IF ~~ tft1.0.1malea
SAY ~You show surprising intelligence.~
= ~Your kind could learn more from you.~
IF ~~ tft1.1
END

IF ~~ tft1.0.1maleb
SAY ~I did not feel a tugging sensation on my leg.~
= ~You lie.~
++ ~Uh, never mind.~ + tft1.1
END

IF ~~ tft1.0.1malec
SAY ~Typical.~
= ~You speak before you know what you have said.~
IF ~~ + tft1.1
END

IF ~~ tft1.0.2male
SAY ~You speak the truth.~
= ~However, it would not hurt for your kind to understand the perspectives of those who are not of the same gender.~
IF ~~ + tft1.1
END
  
IF ~~ tft1.0.4male
SAY ~That thinking is the reason why there is chaos in this world.~
= ~Males believe they provide law and order, but they only bring pain and suffering.~
IF ~~ + tft1.1
END

//Talk 1 - Female Version
IF ~Global("QI#TelziFriendshipTalk","GLOBAL",2) Gender(Player1, FEMALE)~ TelziFriendshipTalk1.0Female
SAY ~It is good to see a female as powerful and memorable as you. I do not like males.~
= ~They reek of strong odors and think too highly of themselves.~
++ ~I agree.~ + tft1.0.1female
++ ~I could care less on what you think of men.~ + tft1.0.2female
++ ~Because men are the rulers of this world. They have and make kings and great leaders, what does your kind do?~ + tft1.0.4female
++ ~You are a troll - a monster! If you think men smell, then you haven't properly smelled yourself!~ + tft1.0.5
++ ~I don't want to talk to you anymore, stop talking.~ + tft1.0.0female
END

IF ~~ tft1.0.0female
SAY ~I was a hoping a strong female like yourself would appreciate this talk.~
= ~But I see I was wrong about you.~
IF ~~ DO ~SetGlobal("QI#TelziFriendshipActive","GLOBAL",1)~ EXIT
END

IF ~~ tft1.0.1female
SAY ~I am glad to hear your agreement.~
IF ~~ + tft1.1
END

IF ~~ tft1.0.2female
SAY ~That may be true, but you cannot deny the way males present themselves.~
IF ~~ + tft1.1
END

IF ~~ tft1.0.4female
SAY ~It is appalling how the males have brainwashed you into thinking.~
IF ~~ + tft1.1
END

IF ~~ tft1.0.5
SAY ~A smell does not make a creature a monster.~
IF ~~ + tft1.1
END

IF ~~ tft1.1
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


/********************* Romance Path *********************/
// Talk 1
IF ~Global("QI#TelziLoveTalk","GLOBAL",2)~ tz1.0
SAY ~You radiant strength and power.~
= ~It is very appealing to anyone in the area.~
++ ~Thank you, that was a very nice compliment.~ + tz1.0.1
++ ~Your flattery is not needed.~ + tz1.0.2
++ ~You're not so bad yourself.~ + tz1.0.3
++ ~I don't know what you are getting at, but I'm not interested.~ + tz1.0.4
END

IF ~~ tz1.0.1
SAY ~You are welcome.~
IF ~~ + tz1.1
END

IF ~~ tz1.0.2
SAY ~Then, what is needed?~
++ ~Not flattery.~ + tz1.1
++ ~Wouldn't you like to know.~ + tz1.0.2a
++ ~Flowers and the finest chocolates.~ + tz1.1
++ ~Not you.~ + tz1.1.0
END

IF ~~ tz1.0.2a
SAY ~I would.~
IF ~~ + tz1.1
END

IF ~~ tz1.0.3
SAY ~I am not a bad person.~
IF ~~ + tz1.1
END

IF ~~ tz1.0.4
SAY ~What are you not interested in?~
++ ~You.~ + tz1.1.0
END

IF ~~ tz1.1.0
SAY ~Okay, I will not bother you anymore.~
IF ~~ DO ~SetGlobal("QI#TelziRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ tz1.1
SAY ~I am not good with words, <CHARNAME>.~
= ~You should know that.~
++ ~You don't say.~ + tz1.2
++ ~I could tell.~ + tz1.2
++ ~Then, what are you good at?~ + tz1.1.1
++ ~I don't need flowery words, Telzi. You should know that.~ + tz1.2
END

IF ~~ tz1.1.1
SAY ~Fighting. Eating. Speaking the truth.~
IF ~~ + tz1.2
END

IF ~~ tz1.2
SAY ~I like to say things as they are.~
= ~I do not like hidden meanings. Symbols. Puzzles. Mysteries. Magic. Mages.~
= ~They are strange. They are secretive. They are dangerous.~
= ~They do not care about anything, except themselves.~
+ ~Class(Player1,MAGE_ALL)~ + ~You know I am a mage, right?~ + tz1.2.1
++ ~I disagree, without the mysteries of the world, what would we be searching for in life?~ + tz1.3a
++ ~I disagree, mages are very useful.~ + tz1.2.3
++ ~Every thing and everyone has their uses.~ + tz1.3b
++ ~I don't like mysteries either. It requires too much thinking.~ + tz1.3a
++ ~I don't like those things either, the answer should always be plain and simple.~ + tz1.3a
+ ~!Class(Player1,MAGE_ALL)~ + ~I've never been a fan of mages myself.~ + tz1.2.2
END

IF ~~ tz1.2.1
SAY ~Yes, I am aware.~
= ~But you are different. You saved me.~
= ~So, you cannot be like all mages.~
= ~Your actions speak for you, and your actions are true. Therefore, your words as a mage is okay.~
IF ~~ + tz1.3a
END

IF ~~ tz1.2.2
SAY ~Good.~
= ~That is something we have in common. Good bonds start with similarities, so I have been told.~
= ~Mages would be easier to handle if they spoke without mysteries.~
IF ~~ + tz1.3a
END

IF ~~ t1.2.3
SAY ~Hmph. Maybe a use for you, but not for me.~
= ~I find mages distrustful. They do not speak the truth.~
IF ~~ + tz1.3a
END

IF ~~ tz1.3a
SAY ~If people would speak their minds and share things straight away, we would not have to think about things longer than needed.~
= ~People would know what another person would want immediately. No need for guesses or embarrassment. No need to fake anything. Everything would be real.~
= ~Like you and me, and my sudden tiredness of this conversation.~
= ~I will speak to you again, when I am ready to talk.~
END


/***************** Player-Initiated Dialogues *****************/
