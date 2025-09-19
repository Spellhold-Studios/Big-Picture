BEGIN ~KRGNOME~

IF ~NumTimesTalkedTo(0)
!InParty("Valygar")~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN DO ~~ EXIT
END

IF ~NumTimesTalkedTo(0)
InParty("Valygar")~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN EXIT
END
