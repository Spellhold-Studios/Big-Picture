BEGIN ~ORCGONE~

IF ~Global("OrcusGone","GLOBAL",5)
NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0 /* #75063 */
  IF ~~ THEN EXIT
END
