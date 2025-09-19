///////////////////////////////////////////////////////////////////////
// Ascension : PLAYER1
///////////////////////////////////////////////////////////////////////
// (1) adds a "we're not in the final fight" state trigger to just about
//      every state here
// (2) changes the slayer ability so that you get the new slayer powers
// (3) adds states 55--57 (final battle options)
///////////////////////////////////////////////////////////////////////

ADD_STATE_TRIGGER PLAYER1 0 
~!Global("FinalFight","AR6200",4)
!Global("MelStillImmortal","AR6200",2)~ 
1 7 10 13 15 16 18 21 28 30 // also add this trigger to all these states

REPLACE PLAYER1 

IF ~Global("Slayer10","GLOBAL",1)
!Global("FinalFight","AR6200",4)
!Global("MelStillImmortal","AR6200",2)~ THEN BEGIN 27 // from:
  SAY #55324 
  IF ~~ THEN REPLY #55326 DO ~SetGlobal("Slayer10","GLOBAL",0)~ EXIT
  IF ~XPLT(Player1,2000001)~ THEN REPLY #61320 DO ~IncrementGlobal("SlayerDeath","GLOBAL",1)
SetGlobal("Slayer10","GLOBAL",2)
SetGlobalTimer("TheSlayerTimer","GLOBAL",60)
ReputationInc(-1)
ApplySpell(Player1,SLAYER_CHANGE_TWO)~ EXIT
  IF ~XPLT(Player1,4000001)
XPGT(Player1,2000000)~ THEN REPLY #61320 DO ~IncrementGlobal("SlayerDeath","GLOBAL",1)
SetGlobal("Slayer10","GLOBAL",2)
SetGlobalTimer("TheSlayerTimer","GLOBAL",60)
ReputationInc(-1)
ApplySpellRES("slayer2",Player1)~ JOURNAL @0 EXIT
  IF ~XPGT(Player1,4000000)~ THEN REPLY #61320 DO ~IncrementGlobal("SlayerDeath","GLOBAL",1)
SetGlobal("Slayer10","GLOBAL",2)
SetGlobalTimer("TheSlayerTimer","GLOBAL",60)
ReputationInc(-2)
ApplySpellRES("slayer3",Player1)~ JOURNAL @1 EXIT
  IF ~XPGT(Player1,6000000)~ THEN REPLY @2 DO ~IncrementGlobal("SlayerDeath","GLOBAL",1)
SetGlobal("Slayer10","GLOBAL",2)
SetGlobalTimer("TheSlayerTimer","GLOBAL",60)
ReputationInc(-3)
ApplySpellRES("slayer4",Player1)~ JOURNAL @3  EXIT
END

END /* end of: REPLACE PLAYER1 */

APPEND PLAYER1

IF ~Global("FinalFight","AR6200",4)
!Global("MelStillImmortal","AR6200",2)~ THEN BEGIN a55 // from:
  SAY @4 
  IF ~~ THEN GOTO a56
END

IF ~~ THEN BEGIN a56 // from: 55.0
  SAY @5 
  IF ~~ THEN DO ~SetGlobal("FinalFight","AR6200",5)~ EXIT
END

IF ~Global("MelStillImmortal","AR6200",2)~ THEN BEGIN a57 // from:
  SAY @6 
  IF ~~ THEN DO ~SetGlobal("MelStillImmortal","AR6200",3)~ EXIT
END

END /* end of: APPEND PLAYER1 */
