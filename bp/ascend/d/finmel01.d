BEGIN ~FINMEL01~

IF ~Global("FinalFight","AR6200",0)~ THEN BEGIN 0 // from:
  SAY @0 
  IF ~~ THEN DO ~SetGlobal("FinalFight","AR6200",1)~ GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~Global("BalthazarFights","GLOBAL",0)
~ THEN REPLY @3 GOTO 3
  IF ~Global("BalthazarFights","GLOBAL",1)
~ THEN REPLY @4 GOTO 11
  IF ~Global("BalthazarFights","GLOBAL",0)
~ THEN REPLY @5 GOTO 12
  IF ~Global("BalthazarFights","GLOBAL",0)
~ THEN REPLY @6 GOTO 12
  IF ~Global("BalthazarFights","GLOBAL",0)
~ THEN REPLY @7 GOTO 12
  IF ~Global("BalthazarFights","GLOBAL",1)
~ THEN REPLY @5 GOTO 39
  IF ~Global("BalthazarFights","GLOBAL",1)
~ THEN REPLY @6 GOTO 39
  IF ~Global("BalthazarFights","GLOBAL",1)
~ THEN REPLY @7 GOTO 39
END

IF ~~ THEN BEGIN 2
  SAY @8
  IF ~Global("BalthazarFights","GLOBAL",0)
~ THEN GOTO 10
  IF ~Global("BalthazarFights","GLOBAL",1)
~ THEN EXTERN ~BALTH2~ 0
END

IF ~~ THEN BEGIN 3
  SAY @9
  IF ~~ THEN DO ~Enemy()
~ GOTO 10
END

IF ~False()
~ THEN BEGIN 4
  SAY @10 
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("resimo4")
~ EXIT
END

IF ~Global("FinalFight","AR6200",6)
Global("TheFiveAreHere","AR6200",0)
~ THEN BEGIN 5
  SAY @11 
  IF ~Global("BalthazarFights","GLOBAL",0)
~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("finmel3a")
~ EXIT
  IF ~Global("BalthazarFights","GLOBAL",1)
DifficultyGT(EASY)
~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("finmel3b")
~ EXIT
  IF ~Global("BalthazarFights","GLOBAL",1)
DifficultyLT(NORMAL)
~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("finmel3c")
~ EXIT
END

IF ~Global("FinalFight","AR6200",8)
Global("ShesInIt","LOCALS",0)
~ THEN BEGIN 6
  SAY @12 
  IF ~~ THEN DO ~SetGlobal("ShesInIt","LOCALS",1)
ActionOverride("cutspy",DestroySelf())
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @13 
  IF ~~ THEN EXTERN ~FINSOL01~ 1
END

IF ~~ THEN BEGIN 8
  SAY @14 
  IF ~~ THEN EXTERN ~FINSOL01~ 2
END

IF ~~ THEN BEGIN 9
  SAY @15 
  IF ~~ THEN EXTERN ~FINSOL01~ 3
END

IF ~~ THEN BEGIN 10
  SAY @16
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("finmel1")
~ EXIT
END

IF ~~ THEN BEGIN 11
  SAY @17
  IF ~~ THEN EXTERN ~BALTH2~ 1
END

IF ~~ THEN BEGIN 12
  SAY @18
  IF ~~ THEN GOTO 10
END

IF ~Global("FinalFight","AR6200",2)
~ THEN BEGIN 13
  SAY @19
  IF ~~ THEN EXTERN ~IRENIC2~ 0
END

IF ~False()
~ THEN BEGIN 14
  SAY @20
  IF ~InPartyAllowDead("Imoen2")
!Dead("Imoen2")
~ THEN GOTO 15
  IF ~InPartyAllowDead("Imoen2")
Dead("Imoen2")
~ THEN GOTO 16
  IF ~!InPartyAllowDead("Imoen2")
!Dead("Imoen2")
~ THEN GOTO 17
  IF ~!InPartyAllowDead("Imoen2")
Dead("Imoen2")
~ THEN GOTO 18
END

IF ~~ THEN BEGIN 15
  SAY @21
  IF ~~ THEN EXTERN ~IMOEN25J~ IMOEN1A
END

IF ~~ THEN BEGIN 16
  SAY @22
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("resimo1")
~ EXIT
END

IF ~~ THEN BEGIN 17
  SAY @22
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("resimo2")
~ EXIT
END

IF ~~ THEN BEGIN 18
  SAY @22
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("resimo2")
~ EXIT
END

IF ~False()
~ THEN BEGIN 19
  SAY @23
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("resimo3")
~ EXIT
END

IF ~False()
~ THEN BEGIN 20
  SAY @24
  IF ~InParty("Imoen2")
~ THEN EXTERN ~IMOEN25J~ IMOEN1A
  IF ~!InParty("Imoen2")
~ THEN EXTERN ~IMOEN25P~ 6
END

IF ~False()
~ THEN BEGIN 21
  SAY @25
  IF ~~ THEN EXTERN ~BALTH2~ 1
END

IF ~False()
~ THEN BEGIN 22
  SAY @26
  IF ~~ THEN EXTERN ~BALTH2~ 2
END

IF ~False()
~ THEN BEGIN 23
  SAY @27
  IF ~~ THEN GOTO 10
END

IF ~Global("FinalFight","AR6200",6)
Global("TheFiveAreHere","AR6200",1)
~ THEN BEGIN 24
  SAY @28
  IF ~Global("BalthazarFights","GLOBAL",1)
DifficultyGT(EASY)
~ THEN GOTO 25
  IF ~OR(2)
Global("BalthazarFights","GLOBAL",0)
DifficultyLT(NORMAL)
~ THEN GOTO 27
END

IF ~~ THEN BEGIN 25
  SAY @29
  IF ~Global("BalthazarFights","GLOBAL",1)
!Dead("balth2")
!StateCheck("balth2",STATE_SLEEPING)
!StateCheck("balth2",STATE_STUNNED)
~ THEN EXTERN ~BALTH2~ 6
  IF ~Global("BalthazarFights","GLOBAL",1)
OR(3)
Dead("balth2")
StateCheck("balth2",STATE_SLEEPING)
StateCheck("balth2",STATE_STUNNED)
~ THEN REPLY @30 GOTO 26
END

IF ~~ THEN BEGIN 26
  SAY @31
  IF ~Dead("sarevok")
~ THEN GOTO 28
  IF ~InPartyAllowDead("sarevok")
!Dead("sarevok")
~ THEN GOTO 29
  IF ~!InPartyAllowDead("sarevok")
!Dead("sarevok")
OR(2)
DifficultyGT(EASY)
Global("BalthazarFights","GLOBAL",1)
~ THEN GOTO 30
  IF ~!InPartyAllowDead("sarevok")
!Dead("sarevok")
DifficultyLT(NORMAL)
OR(2)
Global("BalthazarFights","GLOBAL",0)
Difficulty(EASIEST)
~ THEN GOTO 28
END

IF ~~ THEN BEGIN 27
  SAY @32
  IF ~Global("BalthazarFights","GLOBAL",1)
!Dead("balth2")
!StateCheck("balth2",STATE_SLEEPING)
!StateCheck("balth2",STATE_STUNNED)
~ THEN EXTERN ~BALTH2~ 6
  IF ~OR(4)
Dead("balth2")
StateCheck("balth2",STATE_SLEEPING)
StateCheck("balth2",STATE_STUNNED)
Global("BalthazarFights","GLOBAL",0)
~ THEN REPLY @30 GOTO 26
END

IF ~~ THEN BEGIN 28
  SAY @33
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("finmel4")
~ EXIT
END

IF ~~ THEN BEGIN 29
  SAY @34
  IF ~~ THEN EXTERN ~SAREV25J~ 15
END

IF ~~ THEN BEGIN 30
  SAY @35
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("finmel5")
~ EXIT
END

IF ~False()
~ THEN BEGIN 31
  SAY @36
  IF ~Global("SarevokOath","GLOBAL",1)
~ THEN EXTERN ~SAREV25J~ 16
  IF ~!Global("SarevokOath","GLOBAL",1)
~ THEN EXTERN ~SAREV25J~ 17
END

IF ~False()
~ THEN BEGIN 32
  SAY @37
  IF ~~ THEN EXTERN ~SAREV25J~ 17
END

IF ~False()
~ THEN BEGIN 33
  SAY @38
  IF ~!Alignment("sarevok",MASK_EVIL)
~ THEN EXTERN ~SAREV25J~ 20
  IF ~Alignment("sarevok",MASK_EVIL)
DifficultyLT(NORMAL)
~ THEN EXTERN ~SAREV25J~ 18
  IF ~Alignment("sarevok",MASK_EVIL)
!DifficultyLT(NORMAL)
OR(2)
!Alignment(Player1,MASK_EVIL)
!ReputationLT(Player1,10)
~ THEN EXTERN ~SAREV25J~ 19
  IF ~Alignment("sarevok",MASK_EVIL)
!DifficultyLT(NORMAL)
Alignment(Player1,MASK_EVIL)
ReputationLT(Player1,10)
~ THEN EXTERN ~SAREV25J~ 18
END

IF ~False()
~ THEN BEGIN 34
  SAY @39
  IF ~~ THEN DO ~SetGlobal("SarevokFights","GLOBAL",1)
~ GOTO 35
END

IF ~~ THEN BEGIN 35
  SAY @33
  IF ~!Global("SarevokSummoned","AR6200",1)
~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("finmel4a")
~ EXIT
  IF ~Global("SarevokSummoned","AR6200",1)
~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("finmel4b")
~ EXIT
END

IF ~False()
~ THEN BEGIN 36
  SAY @40
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("finmel4")
~ EXIT
END

IF ~False()
~ THEN BEGIN 37
  SAY @41
  IF ~~ THEN EXTERN ~FINSAREV~ 1
END

IF ~Global("allfive","GLOBAL",1)
Global("MelissanIsMortal","LOCALS",1)
~ THEN BEGIN 38
  SAY @42
  IF ~~ THEN DO ~SetGlobal("MelissanIsMortal","LOCALS",2)
SetInterrupt(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 39
  SAY @18
  IF ~~ THEN EXTERN ~BALTH2~ 0
END
