BEGIN QI#TELZP

IF ~Global("TelziJoined","GLOBAL",1) !Global("QI#TelziRomanceActive","GLOBAL",2)~ KickedOutNotActive
SAY ~I go?~
++ ~Yes.~ + KickedOut1.1
++ ~Just wait here, I'll be back for you.~ + KickedOut1.2
++ ~Go back to camp, I'll meet you back there when I need you.~ + KickedOut1.3
++ ~Never mind.~ DO ~JoinParty()~ EXIT
END

IF ~Global("TelziJoined","GLOBAL",1) Global("QI#TelziRomanceActive","GLOBAL",2)~ KickedOutActive
SAY ~I do not want to be separated from you.~
= ~You must reconsider.~
++ ~I have already considered, you must leave, Telzi. You must leave.~ + KickedOut1.1a
++ ~Go back to camp, I'll meet you back there when I need you.~ + KickedOut1.3
++ ~Just wait here, I'll be back for you.~ + KickedOut1.2
++ ~Never mind.~ DO ~JoinParty()~ EXIT
END

IF ~~ KickedOut1.1
SAY ~I will go then.~
= ~This time, you will not see me again.~
IF ~~ DO ~SetGlobal("TelziJoined","GLOBAL",0) EscapeArea()~ EXIT
END

IF ~~ KickedOut1.1a
SAY ~I do not like this, but I will leave. I will not be far from you.~
IF ~~ DO ~SetGlobal("TelziJoined","GLOBAL",0) EscapeArea()~ EXIT
END

IF ~~ KickedOut1.2
SAY ~Fine.~
IF ~~ DO ~SetGlobal("TelziJoined","GLOBAL",0)~ EXIT
END

//Go back to camp - needs position [x,y]
IF ~~ KickedOut1.3
SAY ~I will go to camp then.~
IF ~~ DO ~SetGlobal("TelziJoined","GLOBAL",0)~ EXIT
END
