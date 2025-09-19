// creator  : DLTCEP_enhanced_WeiDU (version 23600)
// argument : TDR10A.DLG
// game     : .
// source   : ./DATA/DIALOG.BIF
// dialog   : c:\games\beamdog\games\00546\lang/en_US/dialog.tlk
// dialogF  : (none)

REPLACE ~TDR10A~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 2 even though they appear after this state */
~OR(2)
Global("trevil01Job","GLOBAL",1)
!Dead("cefald01")
NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY #49040 /* ~Your careless meanderings across the great Mother Earth will not go unpunished.~ */
  IF ~~ THEN DO ~Shout(79)
Enemy()~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 2 even though they appear after this state */
~!Dead("cefald01")
NumTimesTalkedTo(1)~ THEN BEGIN 1 // from:
  SAY #49041 /* ~We have fought as our mistress commanded us. Now we surrender, to return to the woods and to restore the balance.~ */
  IF ~~ THEN DO ~ActionOverride("tdr10b",EscapeArea())
ActionOverride("tdr6a",EscapeArea())
ActionOverride("tdr8a",EscapeArea())
ActionOverride("tdr8b",EscapeArea())
ChangeEnemyAlly(Myself,NEUTRAL)
EscapeArea()~ EXIT
END

IF WEIGHT #0 ~Dead("cefald01")
Global("trevil01Job","GLOBAL",0)~ THEN BEGIN 2 // from:
  SAY #49210 /* ~My life's work will be the restoration of the balance that Faldorn so carelessly upset. I thank you for your help and wish you well on your travels.~ */
  IF ~~ THEN DO ~ActionOverride("tdr10b",EscapeArea())
ActionOverride("tdr8a",EscapeArea())
ActionOverride("tdr8b",EscapeArea())
ActionOverride("tdr6a",EscapeArea())
EscapeArea()~ EXIT
END


END