///////////////////////////////////////////////////////////////////////
// Red Badge of Courage Dialogue
// These guys want to poison and kill the party. Ouch!
///////////////////////////////////////////////////////////////////////
// sna1 = Bittersnake 
// sna2 = Bloodcaster
// sna3 = Fallowmist
// sna4 = Redspike
// sna5 = Bloodspear

BEGIN solasna1

IF ~NumTimesTalkedTo(0)~ THEN BEGIN s1
  SAY @0
    IF ~~ THEN EXTERN solasna2 s2
END

IF ~~ THEN BEGIN s6 SAY @1
  IF ~~ THEN EXTERN solasna2 s7 END
IF ~~ THEN BEGIN s11 SAY @2
  IF ~~ THEN EXTERN solasna2 s12 END

IF ~NumTimesTalkedTo(1)~ THEN BEGIN s19
  SAY @3 
    IF ~~ THEN EXTERN solasna5 s20
END

BEGIN solasna2
IF ~~ THEN BEGIN s2 SAY @4
  IF ~~ THEN EXTERN solasna3 s3 END
IF ~~ THEN BEGIN s7 SAY @5 
  IF ~~ THEN EXTERN solasna3 s8 END
IF ~~ THEN BEGIN s12 SAY @6 
  IF ~~ THEN EXTERN solasna3 s13 END

BEGIN solasna3
IF ~~ THEN BEGIN s3 SAY @7
  IF ~~ THEN EXTERN solasna4 s4 END
IF ~~ THEN BEGIN s8 SAY @8
  IF ~~ THEN EXTERN solasna4 s9 END
IF ~~ THEN BEGIN s13 SAY @9 
  IF ~~ THEN REPLY @10 EXTERN solasna4 s18
  IF ~~ THEN REPLY @11 EXTERN solasna4 s18
  IF ~~ THEN REPLY @12 EXTERN solasna4 s18
  IF ~~ THEN REPLY @13 EXTERN solasna4 s18
END 

BEGIN solasna4
IF ~~ THEN BEGIN s4 SAY @14
  IF ~~ THEN EXTERN solasna5 s5 END
IF ~~ THEN BEGIN s9 SAY @15 
  IF ~~ THEN EXTERN solasna5 s10 END
IF ~~ THEN BEGIN s18 SAY @16 
  IF ~~ THEN DO ~StartCutSceneMode()
CreateVisualEffectObject("SPDIMNDR",Player1)
CreateVisualEffectObject("SPDIMNDR",Player2)
CreateVisualEffectObject("SPDIMNDR",Player3)
CreateVisualEffectObject("SPDIMNDR",Player4)
CreateVisualEffectObject("SPDIMNDR",Player5)
CreateVisualEffectObject("SPDIMNDR",Player6)
Wait(2)
ActionOverride(Player1,LeaveAreaLUA("AR3000","",[1990.1260],6))
ActionOverride(Player2,LeaveAreaLUA("AR3000","",[1990.1260],6))
ActionOverride(Player3,LeaveAreaLUA("AR3000","",[1990.1260],6))
ActionOverride(Player4,LeaveAreaLUA("AR3000","",[1990.1260],6))
ActionOverride(Player5,LeaveAreaLUA("AR3000","",[1990.1260],6))
ActionOverride(Player6,LeaveAreaLUA("AR3000","",[1990.1260],6))
CreateVisualEffectObject("SPDIMNDR",Player1)
CreateVisualEffectObject("SPDIMNDR",Player2)
CreateVisualEffectObject("SPDIMNDR",Player3)
CreateVisualEffectObject("SPDIMNDR",Player4)
CreateVisualEffectObject("SPDIMNDR",Player5)
CreateVisualEffectObject("SPDIMNDR",Player6)
EndCutSceneMode()~ EXIT END 

BEGIN solasna5
IF ~~ THEN BEGIN s5 SAY @17
  IF ~~ THEN EXTERN solasna1 s6 END
IF ~~ THEN BEGIN s10 SAY @18
  IF ~~ THEN EXTERN solasna1 s11 END
IF ~~ THEN BEGIN s20 SAY @19
  IF ~~ THEN DO ~SetGlobal("RedBadgeFight","GLOBAL",1)~ EXIT END
