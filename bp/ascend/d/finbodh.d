BEGIN ~FINBODH~

IF ~Global("BodhiTalks","LOCALS",0)
!GlobalGT("BodhiHappyBunny","LOCALS",0)
~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~SetGlobal("BodhiTalks","LOCALS",1)
~ EXTERN ~IRENIC2~ 8
END

IF ~False()
~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN EXTERN ~IRENIC2~ 10
END

IF ~False()
~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 15
  IF ~~ THEN REPLY @5 GOTO 15
  IF ~~ THEN REPLY @6 GOTO 16
END

IF ~~ THEN BEGIN 3
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 6
  IF ~~ THEN REPLY @9 GOTO 6
  IF ~CheckStatGT(Player1,15,CHR)
Global("BalthazarFights","GLOBAL",0)
!Alignment(Player1,MASK_GOOD)
!ReputationGT(Player1,11)
~ THEN REPLY @10 GOTO 7
  IF ~OR(4)
!CheckStatGT(Player1,15,CHR)
!Global("BalthazarFights","GLOBAL",0)
Alignment(Player1,MASK_GOOD)
ReputationGT(Player1,11)
~ THEN REPLY @10 GOTO 11
  IF ~CheckStatGT(Player1,15,CHR)
Global("BalthazarFights","GLOBAL",0)
!Alignment(Player1,MASK_GOOD)
!ReputationGT(Player1,11)
~ THEN REPLY @11 GOTO 7
  IF ~OR(4)
!CheckStatGT(Player1,15,CHR)
!Global("BalthazarFights","GLOBAL",0)
Alignment(Player1,MASK_GOOD)
ReputationGT(Player1,11)
~ THEN REPLY @11 GOTO 14
END

IF ~False()
~ THEN BEGIN 4
  SAY @12
  IF ~~ THEN EXTERN ~IRENIC2~ 12
END

IF ~False()
~ THEN BEGIN 5
  SAY @13
  IF ~~ THEN EXTERN ~IRENIC2~ 13
END

IF ~~ THEN BEGIN 6
  SAY @14
  IF ~~ THEN EXTERN ~IRENIC2~ 9
END

IF ~~ THEN BEGIN 7
  SAY @15
  IF ~InPartyAllowDead("Sarevok")
!Dead("Sarevok")
~ THEN GOTO 8
  IF ~OR(2)
!InPartyAllowDead("Sarevok")
Dead("Sarevok")
~ THEN GOTO 10
END

IF ~~ THEN BEGIN 8
  SAY @16
  IF ~False()
~ THEN GOTO 9
  IF ~True()
~ THEN EXTERN ~IRENIC2~ 11
END

IF ~~ THEN BEGIN 9
  SAY @17
  IF ~False()
~ THEN EXIT
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 10
  SAY @18
  IF ~~ THEN EXTERN ~IRENIC2~ 11
END

IF ~~ THEN BEGIN 11
  SAY @19
  IF ~~ THEN REPLY @20 GOTO 12
  IF ~~ THEN REPLY @21 GOTO 13
  IF ~~ THEN REPLY @22 GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @23
  IF ~Global("BalthazarFights","GLOBAL",0)
OR(2)
Alignment(Player1,MASK_GOOD)
ReputationGT(Player1,11)
GlobalGT("WorkingForBodhi","GLOBAL",0)
~ THEN GOTO 17
  IF ~Global("BalthazarFights","GLOBAL",0)
OR(2)
Alignment(Player1,MASK_GOOD)
ReputationGT(Player1,11)
Global("WorkingForBodhi","GLOBAL",0)
~ THEN GOTO 18
  IF ~Global("BalthazarFights","GLOBAL",0)
!Alignment(Player1,MASK_GOOD)
!ReputationGT(Player1,11)
~ THEN GOTO 19
  IF ~Global("BalthazarFights","GLOBAL",1)
GlobalGT("WorkingForBodhi","GLOBAL",0)
~ THEN GOTO 21
  IF ~Global("BalthazarFights","GLOBAL",1)
Global("WorkingForBodhi","GLOBAL",0)
~ THEN GOTO 31
END

IF ~~ THEN BEGIN 13
  SAY @24
  IF ~~ THEN EXTERN ~IRENIC2~ 9
END

IF ~~ THEN BEGIN 14
  SAY @25
  IF ~~ THEN REPLY @20 GOTO 12
  IF ~~ THEN REPLY @21 GOTO 13
  IF ~~ THEN REPLY @22 GOTO 12
  IF ~~ THEN REPLY @26 GOTO 13
END

IF ~~ THEN BEGIN 15
  SAY @27
  IF ~~ THEN EXTERN ~IRENIC2~ 9
END

IF ~~ THEN BEGIN 16
  SAY @28
  IF ~~ THEN EXTERN ~IRENIC2~ 9
END

IF ~~ THEN BEGIN 17
  SAY @29
  IF ~~ THEN EXTERN ~IRENIC2~ 12
END

IF ~~ THEN BEGIN 18
  SAY @30
  IF ~~ THEN EXTERN ~IRENIC2~ 12
END

IF ~~ THEN BEGIN 19
  SAY @31
  IF ~~ THEN REPLY @32 DO ~SetGlobal("BodhiPromised","GLOBAL",1)
~ GOTO 20
  IF ~~ THEN REPLY @33 DO ~SetGlobal("BodhiPromised","GLOBAL",1)
~ GOTO 20
  IF ~~ THEN REPLY @34 GOTO 4
  IF ~CheckStatGT(Player1,15,WIS)
~ THEN REPLY @35 GOTO 5
END

IF ~~ THEN BEGIN 20
  SAY @36
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 21
  SAY @37
  IF ~~ THEN EXTERN ~IRENIC2~ 12
END

IF ~False()
~ THEN BEGIN 22
  SAY @38
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23
  SAY @39
  IF ~~ THEN REPLY @40 DO ~SetGlobal("BodhiHappyBunny","LOCALS",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("bodhif01")
~ EXIT
  IF ~~ THEN REPLY @41 GOTO 24
  IF ~~ THEN REPLY @42 DO ~SetGlobal("BodhiHappyBunny","LOCALS",2)
ClearAllActions()
StartCutSceneMode()
StartCutScene("bodhif01")
~ EXIT
  IF ~~ THEN REPLY @43 GOTO 25
END

IF ~~ THEN BEGIN 24
  SAY @44
  IF ~Global("BodhiPromised","GLOBAL",1)
~ THEN DO ~SetGlobal("BodhiHappyBunny","LOCALS",3)
~ EXTERN ~FINSOL01~ 40
  IF ~Global("BodhiPromised","GLOBAL",0)
~ THEN REPLY @45 DO ~SetGlobal("BodhiFights","GLOBAL",0)
ClearAllActions()
StartCutSceneMode()
StartCutScene("bodhif02")
~ EXIT
  IF ~Global("BodhiPromised","GLOBAL",0)
~ THEN REPLY @46 DO ~SetGlobal("BodhiFights","GLOBAL",0)
ClearAllActions()
StartCutSceneMode()
StartCutScene("bodhif02")
~ EXIT
  IF ~Global("BodhiPromised","GLOBAL",0)
~ THEN REPLY @47 DO ~SetGlobal("BodhiFights","GLOBAL",0)
ClearAllActions()
StartCutSceneMode()
StartCutScene("bodhif02")
~ EXIT
  IF ~Global("BodhiPromised","GLOBAL",0)
~ THEN REPLY @48 DO ~SetGlobal("BodhiFights","GLOBAL",0)
ClearAllActions()
StartCutSceneMode()
StartCutScene("bodhif02")
~ EXIT
END

IF ~~ THEN BEGIN 25
  SAY @49
  IF ~Global("BodhiPromised","GLOBAL",1)
~ THEN DO ~SetGlobal("BodhiHappyBunny","LOCALS",3)
~ EXTERN ~FINSOL01~ 40
  IF ~Global("BodhiPromised","GLOBAL",0)
~ THEN REPLY @45 DO ~SetGlobal("BodhiFights","GLOBAL",0)
ClearAllActions()
StartCutSceneMode()
StartCutScene("bodhif02")
~ EXIT
  IF ~Global("BodhiPromised","GLOBAL",0)
~ THEN REPLY @46 DO ~SetGlobal("BodhiFights","GLOBAL",0)
ClearAllActions()
StartCutSceneMode()
StartCutScene("bodhif02")
~ EXIT
  IF ~Global("BodhiPromised","GLOBAL",0)
~ THEN REPLY @47 DO ~SetGlobal("BodhiFights","GLOBAL",0)
ClearAllActions()
StartCutSceneMode()
StartCutScene("bodhif02")
~ EXIT
  IF ~Global("BodhiPromised","GLOBAL",0)
~ THEN REPLY @48 DO ~SetGlobal("BodhiFights","GLOBAL",0)
ClearAllActions()
StartCutSceneMode()
StartCutScene("bodhif02")
~ EXIT
END

IF ~Global("BodhiHappyBunny","LOCALS",1)
~ THEN BEGIN 26
  SAY @50
  IF ~~ THEN GOTO 28
END

IF ~Global("BodhiHappyBunny","LOCALS",2)
~ THEN BEGIN 27
  SAY @51
  IF ~~ THEN GOTO 28
END

IF ~Global("BodhiHappyBunny","LOCALS",3)
~ THEN BEGIN 28
  SAY @52
  IF ~~ THEN DO ~SetGlobal("BodhiFights","GLOBAL",2)
ClearAllActions()
StartCutSceneMode()
StartCutScene("bodhif03")
~ EXIT
END

IF ~~ THEN BEGIN 29
  SAY @53
  IF ~~ THEN REPLY @32 DO ~SetGlobal("BodhiPromised","GLOBAL",1)
~ GOTO 30
  IF ~~ THEN REPLY @33 DO ~SetGlobal("BodhiPromised","GLOBAL",1)
~ GOTO 30
  IF ~~ THEN REPLY @54 GOTO 4
  IF ~CheckStatGT(Player1,15,WIS)
~ THEN REPLY @35 GOTO 30
END

IF ~~ THEN BEGIN 30
  SAY @55
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 31
  SAY @56
  IF ~~ THEN EXTERN ~IRENIC2~ 12
END
