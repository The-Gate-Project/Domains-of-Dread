BEGIN ~DEMDUD~ 

IF ~Global("DemoTravI6","GLOBAL",1)~ THEN BEGIN 100 // from: 0.1
  SAY @11 
  IF ~~ THEN EXIT
END

IF ~True() !Global("DemoTravI6","GLOBAL",1)~ THEN BEGIN 0 // from:
  SAY @0 
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 6
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @3 
  IF ~~ THEN REPLY @4 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @5 
  IF ~~ THEN REPLY @6 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @7 
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @10
  IF ~Global("Demodia","GLOBAL",0)~ THEN DO ~SetGlobal("Demodia","GLOBAL",1)~ EXIT
  IF ~See(Player1) PartyHasItem("MISC42") Global("Demodia","GLOBAL",1)~ THEN DO ~SetGlobal("Demodia","GLOBAL",2)~ EXIT
  IF ~!See(Player1) PartyHasItem("MISC42") Global("Demodia","GLOBAL",1)~ THEN EXIT
  IF ~!PartyHasItem("MISC42") Global("Demodia","GLOBAL",1)~ THEN EXIT
  IF ~GlobalGT("Demodia","GLOBAL",1)~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.1
  SAY @11 
  IF ~~ THEN EXIT
END

