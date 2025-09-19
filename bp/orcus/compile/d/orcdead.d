BEGIN ~ORCDEAD~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0 /* #75061 */
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 1
  SAY @1 /* #75062 */
  IF ~~ THEN EXIT
END
