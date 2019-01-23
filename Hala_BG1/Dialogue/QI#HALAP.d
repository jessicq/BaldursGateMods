BEGIN QI#HALAP

IF ~Global("QI#HalaJoined","GLOBAL",1) Global("QI#HalaFriendshipActive","GLOBAL",0)~ KickedOut
SAY ~There is much to do and you are letting me go now? I ask you to reconsider.~
++ ~I need you to go to the Friendly Arm for now.~ + h1
++ ~Wait for me here. I will be back soon.~ + h2
++ ~My apologies. Let's get moving.~ DO ~JoinParty()~ EXIT
END

IF ~~ h1
SAY ~No. I cannot delay any longer with my mission. If you no longer need me, I must go.~
++ ~Then go. Your services are no longer needed.~ + h3
++ ~Never mind what I have said then. Let's get moving.~ DO ~JoinParty()~ EXIT
END

IF ~~ h2
SAY ~If you insist, but please make haste.~
IF ~~ DO ~SetGlobal("QI#HalaJoined","GLOBAL",0)~ EXIT
END

IF ~~ h3
SAY ~As you wish. Farewell, <CHARNAME>.~
IF ~~ DO ~SetGlobal("QI#HalaJoined","GLOBAL",0) EscapeArea()~ EXIT
END

IF ~Global("QI#HalaJoined","GLOBAL",1) !Global("QI#HalaFriendshipActive","GLOBAL",1)~ KickedOut2
SAY ~I have enjoyed your company and am willing to see this through to the end. Are you sure my services are no longer needed?~
++ ~I need you to go to the Friendly Arm for now.~ + h1
++ ~Wait for me here. I will be back soon.~ + h2
++ ~My apologies. Let's get moving.~ DO ~JoinParty()~ EXIT
END

IF ~Global("QI#HalaJoined","GLOBAL",0)~ RejoinParty
SAY ~I see that you are back. We should get going...together, yes?~
++ ~Yes, let us be on our way. Welcome back, Hala.~ DO ~SetGlobal("QI#HalaJoined","GLOBAL",1) JoinParty()~ EXIT
++ ~Yes, yes. Let's go.~ DO ~SetGlobal("QI#HalaJoined","GLOBAL",1) JoinParty()~ EXIT
++ ~No, not yet.~ EXIT
END
