// Ritual High Priestess
BEGIN RITCOUNT

IF ~NumTimesTalkedTo(0)
GlobalTimerExpired("RitualTimeout","GLOBAL")~ THEN BEGIN toolate
  SAY @0
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(0)
!GlobalTimerExpired("RitualTimeout","GLOBAL")~ THEN BEGIN 1
  SAY @1
    = @2
    = @3
  IF ~~ THEN REPLY @4 GOTO dontknow
  IF ~~ THEN REPLY @5 GOTO stopyou
  IF ~~ THEN REPLY @6 GOTO stopyou
END

IF ~~ THEN BEGIN dontknow
  SAY @7
  IF ~~ THEN GOTO stopyou
END

IF ~~ THEN BEGIN stopyou
  SAY @8
    = @9
    = @10
  IF ~~ THEN EXIT
END
