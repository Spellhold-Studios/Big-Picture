///////////////////////////////////////////////////////////////////////
// Ascension : PPGUY02   (final battle pool effects)
///////////////////////////////////////////////////////////////////////
// (1) created from scratch (not in the original game)
///////////////////////////////////////////////////////////////////////

BEGIN ~PPGUY02~

IF ~!InPartySlot(LastTalkedToBy,0)
!Name("Imoen2",LastTalkedToBy)~ THEN BEGIN a0 // from:
  SAY @0
  IF ~~ THEN DO ~ReallyForceSpellRES("baldead",Myself)
DestroySelf()~ EXIT
END

IF ~Global("Pool1Active","AR6200",2)~ THEN BEGIN a1 // from:
  SAY @1
  IF ~!Global("Pool2Active","AR6200",3)
!Global("Pool3Active","AR6200",3)
DifficultyLT(4)~ THEN DO ~SetGlobal("Pool1Active","AR6200",3)
ReallyForceSpellRES("pool1a",LastTalkedToBy)
ClearAllActions()
StartCutSceneMode()
StartCutScene("pool1b")~ JOURNAL @2 EXIT
  IF ~Global("Pool2Active","AR6200",3)
Global("Pool3Active","AR6200",3)~ THEN JOURNAL @3 GOTO a4
  IF ~!Global("Pool2Active","AR6200",3)
Global("Pool3Active","AR6200",3)~ THEN JOURNAL @3 GOTO a5
  IF ~Global("Pool2Active","AR6200",3)
!Global("Pool3Active","AR6200",3)~ THEN JOURNAL @3 GOTO a5
  IF ~!Global("Pool2Active","AR6200",3)
!Global("Pool3Active","AR6200",3)
DifficultyGT(3)~ THEN DO ~SetGlobal("Pool1Active","AR6200",3)
ReallyForceSpellRES("pool1a",LastTalkedToBy)
ClearAllActions()
StartCutSceneMode()
StartCutScene("pool1b2")~ JOURNAL @2 EXIT
END

IF ~Global("Pool2Active","AR6200",2)~ THEN BEGIN a2 // from:
  SAY @4 
  IF ~!Global("Pool1Active","AR6200",3)
!Global("Pool3Active","AR6200",3)
DifficultyLT(4)~ THEN DO ~SetGlobal("Pool2Active","AR6200",3)
ReallyForceSpellRES("POOL2A",LastTalkedToBy)
ClearAllActions()
StartCutSceneMode()
StartCutScene("pool2b")~ JOURNAL @5 EXIT
  IF ~Global("Pool1Active","AR6200",3)
Global("Pool3Active","AR6200",3)~ THEN JOURNAL @5 GOTO a6
  IF ~!Global("Pool1Active","AR6200",3)
Global("Pool3Active","AR6200",3)~ THEN JOURNAL @5 GOTO a7
  IF ~Global("Pool1Active","AR6200",3)
!Global("Pool3Active","AR6200",3)~ THEN JOURNAL @5 GOTO a7
  IF ~!Global("Pool1Active","AR6200",3)
!Global("Pool3Active","AR6200",3)
DifficultyGT(3)~ THEN DO ~SetGlobal("Pool2Active","AR6200",3)
ReallyForceSpellRES("POOL2A",LastTalkedToBy)
ClearAllActions()
StartCutSceneMode()
StartCutScene("pool2b2")~ JOURNAL @5 EXIT
END

IF ~Global("Pool3Active","AR6200",2)~ THEN BEGIN a3 // from:
  SAY @6
  IF ~!Global("Pool1Active","AR6200",3)
!Global("Pool2Active","AR6200",3)
DifficultyLT(4)~ THEN DO ~SetGlobal("Pool3Active","AR6200",3)
ReallyForceSpellRES("POOL3A",LastTalkedToBy)
ClearAllActions()
StartCutSceneMode()
StartCutScene("pool3b")~ JOURNAL @7 EXIT
  IF ~Global("Pool1Active","AR6200",3)
Global("Pool2Active","AR6200",3)~ THEN JOURNAL @8 GOTO a8
  IF ~Global("Pool1Active","AR6200",3)
!Global("Pool2Active","AR6200",3)~ THEN JOURNAL @8 GOTO a9
  IF ~!Global("Pool1Active","AR6200",3)
Global("Pool2Active","AR6200",3)~ THEN JOURNAL @8 GOTO a9
  IF ~!Global("Pool1Active","AR6200",3)
!Global("Pool2Active","AR6200",3)
DifficultyGT(3)~ THEN DO ~SetGlobal("Pool3Active","AR6200",3)
ReallyForceSpellRES("POOL3A",LastTalkedToBy)
ClearAllActions()
StartCutSceneMode()
StartCutScene("pool3b2")~ JOURNAL @7 EXIT
END

IF ~~ THEN BEGIN a4 // from: 1.1
  SAY @9 
  IF ~DifficultyLT(5)~ THEN DO ~SetGlobal("Pool1Active","AR6200",3)
SetGlobalTimer("MelissanComes","AR6200",15)
ReallyForceSpellRES("pool1a",LastTalkedToBy)
ClearAllActions()
StartCutSceneMode()
StartCutScene("pool1b")~ EXIT
  IF ~Difficulty(5)~ THEN DO ~SetGlobal("Pool1Active","AR6200",3)
SetGlobalTimer("MelissanComes","AR6200",15)
ReallyForceSpellRES("pool1a",LastTalkedToBy)
ClearAllActions()
StartCutSceneMode()
StartCutScene("pool1b2")~ EXIT
END

IF ~~ THEN BEGIN a5 // from: 1.3 1.2
  SAY @10 
  IF ~DifficultyLT(3)~ THEN DO ~SetGlobal("Pool1Active","AR6200",3)
ReallyForceSpellRES("pool1a",LastTalkedToBy)
ClearAllActions()
StartCutSceneMode()
StartCutScene("pool1b")~ EXIT
  IF ~DifficultyGT(2)~ THEN DO ~SetGlobal("Pool1Active","AR6200",3)
ReallyForceSpellRES("pool1a",LastTalkedToBy)
ClearAllActions()
StartCutSceneMode()
StartCutScene("pool1b2")~ EXIT
END

IF ~~ THEN BEGIN a6 // from: 2.1
  SAY @9 
  IF ~DifficultyLT(5)~ THEN DO ~SetGlobal("Pool2Active","AR6200",3)
SetGlobalTimer("MelissanComes","AR6200",15)
ReallyForceSpellRES("POOL2A",LastTalkedToBy)
ClearAllActions()
StartCutSceneMode()
StartCutScene("pool2b")~ EXIT
  IF ~Difficulty(5)~ THEN DO ~SetGlobal("Pool2Active","AR6200",3)
SetGlobalTimer("MelissanComes","AR6200",15)
ReallyForceSpellRES("POOL2A",LastTalkedToBy)
ClearAllActions()
StartCutSceneMode()
StartCutScene("pool2b2")~ EXIT
END

IF ~~ THEN BEGIN a7 // from: 2.3 2.2
  SAY @10 
  IF ~DifficultyLT(3)~ THEN DO ~SetGlobal("Pool2Active","AR6200",3)
ReallyForceSpellRES("POOL2A",LastTalkedToBy)
ClearAllActions()
StartCutSceneMode()
StartCutScene("pool2b")~ EXIT
  IF ~DifficultyGT(2)~ THEN DO ~SetGlobal("Pool2Active","AR6200",3)
ReallyForceSpellRES("POOL2A",LastTalkedToBy)
ClearAllActions()
StartCutSceneMode()
StartCutScene("pool2b2")~ EXIT
END

IF ~~ THEN BEGIN a8 // from: 3.1
  SAY @9 
  IF ~DifficultyLT(5)~ THEN DO ~SetGlobal("Pool3Active","AR6200",3)
SetGlobalTimer("MelissanComes","AR6200",15)
ReallyForceSpellRES("POOL3A",LastTalkedToBy)
ClearAllActions()
StartCutSceneMode()
StartCutScene("pool3b")~ EXIT
  IF ~Difficulty(5)~ THEN DO ~SetGlobal("Pool3Active","AR6200",3)
SetGlobalTimer("MelissanComes","AR6200",15)
ReallyForceSpellRES("POOL3A",LastTalkedToBy)
ClearAllActions()
StartCutSceneMode()
StartCutScene("pool3b2")~ EXIT
END

IF ~~ THEN BEGIN a9 // from: 3.3 3.2
  SAY @10
  IF ~DifficultyLT(3)~ THEN DO ~SetGlobal("Pool3Active","AR6200",3)
ReallyForceSpellRES("POOL3A",LastTalkedToBy)
ClearAllActions()
StartCutSceneMode()
StartCutScene("pool3b")~ EXIT
  IF ~DifficultyGT(2)~ THEN DO ~SetGlobal("Pool3Active","AR6200",3)
ReallyForceSpellRES("POOL3A",LastTalkedToBy)
ClearAllActions()
StartCutSceneMode()
StartCutScene("pool3b2")~ EXIT
END
