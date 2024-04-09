BEGIN ~KESTRELL~

IF ~Global("KestrellQuest","GLOBAL",2)~ THEN BEGIN 0 // from:
  SAY @1 
  IF ~~ THEN REPLY @3 GOTO 1
  IF ~~ THEN REPLY @2 DO ~~ EXIT
  
END


IF ~Global("KestrellQuest","GLOBAL",3)~ THEN BEGIN 0 // from:
  SAY @8 
  IF ~~ THEN REPLY @6 GOTO 2
  IF ~~ THEN REPLY @2 DO ~~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @5 
  IF ~~ THEN REPLY @6 GOTO 2
  IF ~~ THEN REPLY @4 DO ~SetGlobal("KestrellQuest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 2.1
  SAY @7 
  IF ~~ THEN DO ~SetGlobal("KestrellQuest","GLOBAL",4)~ %UNSOLVED_JOURNAL% @10023 EXIT
END

IF ~Global("KestrellQuest","GLOBAL",4)!PartyHasItem("R8ITM11")!PartyHasItem("R8ITM12")!PartyHasItem("R8ITM19")!PartyHasItem("R8ITM20")~ THEN BEGIN 3 // from:
  SAY @9 
  IF ~~ THEN REPLY @10 DO ~~ EXIT
END


IF ~Global("KestrellQuest","GLOBAL",4)PartyHasItem("R8ITM11")PartyHasItem("R8ITM12")PartyHasItem("R8ITM19")PartyHasItem("R8ITM20")~ THEN BEGIN 4
  SAY @11
  IF ~~ THEN DO ~SetGlobal("KestrellQuest","GLOBAL",5)SetInterrupt(FALSE)AddexperienceParty(500)TakePartyItem("R8ITM11")TakePartyItem("R8ITM12")TakePartyItem("R8ITM19")TakePartyItem("R8ITM20")GiveGoldForce(300) %ERASEJOURNALENTRY_10023% EscapeArea()~ %SOLVED_JOURNAL% @10024 EXIT
END