///////////////////////////////////////////////////////////////////////
// Ascension : MELISS01
///////////////////////////////////////////////////////////////////////
// (1) adds more transitions to state 12
// (2) changes the SAY text in state 14
// (3) appends states 18 -- 19
///////////////////////////////////////////////////////////////////////

EXTEND_BOTTOM MELISS01 12
  IF ~~ THEN REPLY @0 DO ~IncrementGlobal("Bhaal25Dream5","GLOBAL",-1)~ GOTO a18
  IF ~Global("BalthazarFights","GLOBAL",1)~ THEN REPLY @1 GOTO a19
END

REPLACE_SAY MELISS01 14 @2 

APPEND MELISS01

IF ~~ THEN BEGIN a18 // from: 12.6
  SAY @3 
  IF ~Global("BalthazarFights","GLOBAL",1)~ THEN REPLY @1 GOTO a19
  IF ~Global("BalthazarFights","GLOBAL",0)~ THEN GOTO 15
END

IF ~~ THEN BEGIN a19 // from: 18.0 12.7
  SAY @4 
  IF ~~ THEN GOTO 13
END

END /* end of: APPEND MELISS01 */
