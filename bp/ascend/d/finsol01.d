BEGIN ~FINSOL01~

IF ~NumberOfTimesTalkedTo(0)
~ THEN BEGIN 0
  SAY @0 
  IF ~~ THEN EXTERN ~FINMEL01~ 7
END

IF ~~ THEN BEGIN 1
  SAY @1 
  IF ~~ THEN EXTERN ~FINMEL01~ 8
END

IF ~~ THEN BEGIN 2
  SAY @2 
  IF ~~ THEN EXTERN ~FINMEL01~ 9
END

IF ~~ THEN BEGIN 3
  SAY @3 
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("cut233h")
~ EXIT
END

IF ~NumTimesTalkedToGT(0)
~ THEN BEGIN 4
  SAY @4 
  IF ~OR(2)
!InParty("Imoen2")
Dead("Imoen2")
Global("BalthazarFights","GLOBAL",0)
!Global("BodhiFights","GLOBAL",1)
~ THEN GOTO 5
  IF ~InParty("Imoen2")
!Dead("Imoen2")
Global("BalthazarFights","GLOBAL",0)
!Global("BodhiFights","GLOBAL",1)
~ THEN GOTO 6
  IF ~OR(2)
!InParty("Imoen2")
Dead("Imoen2")
Global("BalthazarFights","GLOBAL",1)
!Global("BodhiFights","GLOBAL",1)
~ THEN GOTO 34
  IF ~InParty("Imoen2")
!Dead("Imoen2")
Global("BalthazarFights","GLOBAL",1)
!Global("BodhiFights","GLOBAL",1)
~ THEN GOTO 35
  IF ~Global("BodhiFights","GLOBAL",1)
~ THEN EXTERN ~FINBODH~ 22
END

IF ~~ THEN BEGIN 5
  SAY @5 
  IF ~~ THEN REPLY @6 GOTO 12
  IF ~~ THEN REPLY @7 GOTO 9
  IF ~InParty("Imoen2")
!Dead("Imoen2")
~ THEN REPLY @8 GOTO 10
  IF ~OR(2)
!InParty("Imoen2")
Dead("Imoen2")
~ THEN REPLY @9 GOTO 10
  IF ~~ THEN REPLY @10 GOTO 11
END

IF ~~ THEN BEGIN 6
  SAY @11 
  IF ~~ THEN EXTERN ~IMOEN25J~ 14
END

IF ~~ THEN BEGIN 7
  SAY @12 
  IF ~~ THEN EXTERN ~IMOEN25J~ 13
END

IF ~~ THEN BEGIN 8
  SAY @13 
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 9
  SAY @14 
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 10
  SAY @15 
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 11
  SAY @16 
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @17 
  IF ~!Alignment(Player1,MASK_EVIL)~ THEN GOTO 13
  IF ~Alignment(Player1,MASK_EVIL)
~ THEN GOTO 14
END

IF ~~ THEN BEGIN 13
  SAY @18 
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY @19 
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY @20 
  IF ~~ THEN REPLY @21 GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY @22 
  IF ~GlobalLT("PPEvilChoices","GLOBAL",2)
~ THEN GOTO 17
  IF ~GlobalGT("PPEvilChoices","GLOBAL",1)
GlobalLT("PPEvilChoices","GLOBAL",4)
~ THEN GOTO 20
  IF ~GlobalGT("PPEvilChoices","GLOBAL",3)
GlobalLT("PPEvilChoices","GLOBAL",6)
~ THEN GOTO 23
END

IF ~~ THEN BEGIN 17
  SAY @23 
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY @24 
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19
  SAY @25 
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 20
  SAY @26 
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21
  SAY @27 
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22
  SAY @28 
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 23
  SAY @29 
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24
  SAY @30 
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 25
  SAY @31 
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26
  SAY @32 
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27
  SAY @33 
  IF ~True()
~ THEN GOTO 28
  IF ~IfValidForPartyDialogue("Valygar")
Global("ValygarRomanceActive","GLOBAL",2)
~ THEN EXTERN ~VALYG25J~ 3
  IF ~IfValidForPartyDialogue("Anomen")
Global("AnomenRomanceActive","GLOBAL",2)
~ THEN EXTERN ~ANOME25J~ 11
  IF ~IfValidForPartyDialogue("Viconia")
Global("ViconiaRomanceActive","GLOBAL",2)
~ THEN EXTERN ~VICON25J~ 8
  IF ~IfValidForPartyDialogue("Aerie")
Global("AerieRomanceActive","GLOBAL",2)
~ THEN EXTERN ~AERIE25J~ 9
  IF ~IfValidForPartyDialogue("Jaheira")
Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN EXTERN ~JAHEI25J~ 9
  IF ~IfValidForPartyDialogue("Valygar")
!Global("ValygarRomanceActive","GLOBAL",2)
~ THEN EXTERN ~VALYG25J~ 2
  IF ~IfValidForPartyDialogue("Anomen")
!Global("AnomenRomanceActive","GLOBAL",2)
~ THEN EXTERN ~ANOME25J~ 10
  IF ~IfValidForPartyDialogue("Viconia")
!Global("ViconiaRomanceActive","GLOBAL",2)
~ THEN EXTERN ~VICON25J~ 6
  IF ~IfValidForPartyDialogue("Aerie")
!Global("AerieRomanceActive","GLOBAL",2)
~ THEN EXTERN ~AERIE25J~ 7
  IF ~IfValidForPartyDialogue("Jaheira")
!Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN EXTERN ~JAHEI25J~ 7
  IF ~IfValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN25J~ 15
  IF ~IfValidForPartyDialogue("Sarevok")
!Alignment("Sarevok",MASK_EVIL)
~ THEN EXTERN ~SAREV25J~ 2
  IF ~IfValidForPartyDialogue("Sarevok")
Alignment("Sarevok",MASK_EVIL)
~ THEN EXTERN ~SAREV25J~ 3
  IF ~IfValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSC25J~ 0
  IF ~IfValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIA25J~ 1
  IF ~IfValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERD25J~ 1
  IF ~IfValidForPartyDialogue("Jan")
~ THEN EXTERN ~JAN25J~ 3
  IF ~IfValidForPartyDialogue("Cernd")
~ THEN EXTERN ~CERND25J~ 0
  IF ~IfValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZY25J~ 0
  IF ~IfValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWIN25J~ 0
  IF ~IfValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGA25J~ 2
  IF ~IfValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDO25J~ 0
  IF ~Global("BalthazarFights","GLOBAL",1)
~ THEN EXTERN ~BALTH2~ 10
END

IF ~~ THEN BEGIN 28
  SAY @34 
  IF ~GlobalLT("PPEvilChoices","GLOBAL",2)
~ THEN REPLY @35 DO ~SetGlobal("PlayerChoseEssence","GLOBAL",1)
~ GOTO 31
  IF ~GlobalGT("PPEvilChoices","GLOBAL",1)
GlobalLT("PPEvilChoices","GLOBAL",4)
~ THEN REPLY @35 DO ~SetGlobal("PlayerChoseEssence","GLOBAL",1)
~ GOTO 30
  IF ~GlobalGT("PPEvilChoices","GLOBAL",3)
GlobalLT("PPEvilChoices","GLOBAL",6)
~ THEN REPLY @35 DO ~SetGlobal("PlayerChoseEssence","GLOBAL",1)
~ GOTO 29
  IF ~~ THEN REPLY @36 GOTO 32
END

IF ~~ THEN BEGIN 29
  SAY @37 
  IF ~True()
~ THEN GOTO 33
  IF ~IfValidForPartyDialogue("Valygar")
Global("ValygarRomanceActive","GLOBAL",2)
~ THEN EXTERN ~VALYG25J~ 11
  IF ~IfValidForPartyDialogue("Anomen")
Global("AnomenRomanceActive","GLOBAL",2)
~ THEN EXTERN ~ANOME25J~ 20
  IF ~IfValidForPartyDialogue("Viconia")
Global("ViconiaRomanceActive","GLOBAL",2)
~ THEN EXTERN ~VICON25J~ 18
  IF ~IfValidForPartyDialogue("Aerie")
Global("AerieRomanceActive","GLOBAL",2)
~ THEN EXTERN ~AERIE25J~ 20
  IF ~IfValidForPartyDialogue("Jaheira")
Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN EXTERN ~JAHEI25J~ 18
  IF ~IfValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN25J~ 18
  IF ~IfValidForPartyDialogue("Sarevok")
Alignment("Sarevok",MASK_EVIL)
~ THEN EXTERN ~SAREV25J~ 4
  IF ~IfValidForPartyDialogue("Sarevok")
!Alignment("Sarevok",MASK_EVIL)
~ THEN EXTERN ~SAREV25J~ 6
  IF ~Global("BalthazarFights","GLOBAL",1)
~ THEN EXTERN ~BALTH2~ 15
END

IF ~~ THEN BEGIN 30
  SAY @38 
  IF ~True()
~ THEN GOTO 33
  IF ~IfValidForPartyDialogue("Valygar")
Global("ValygarRomanceActive","GLOBAL",2)
~ THEN EXTERN ~VALYG25J~ 11
  IF ~IfValidForPartyDialogue("Anomen")
Global("AnomenRomanceActive","GLOBAL",2)
~ THEN EXTERN ~ANOME25J~ 20
  IF ~IfValidForPartyDialogue("Viconia")
Global("ViconiaRomanceActive","GLOBAL",2)
~ THEN EXTERN ~VICON25J~ 18
  IF ~IfValidForPartyDialogue("Aerie")
Global("AerieRomanceActive","GLOBAL",2)
~ THEN EXTERN ~AERIE25J~ 20
  IF ~IfValidForPartyDialogue("Jaheira")
Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN EXTERN ~JAHEI25J~ 18
  IF ~IfValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN25J~ 18
  IF ~IfValidForPartyDialogue("Sarevok")
Alignment("Sarevok",MASK_EVIL)
~ THEN EXTERN ~SAREV25J~ 4
  IF ~IfValidForPartyDialogue("Sarevok")
!Alignment("Sarevok",MASK_EVIL)
~ THEN EXTERN ~SAREV25J~ 6
  IF ~Global("BalthazarFights","GLOBAL",1)
~ THEN EXTERN ~BALTH2~ 15
END

IF ~~ THEN BEGIN 31
  SAY @39 
  IF ~True()
~ THEN GOTO 33
  IF ~IfValidForPartyDialogue("Valygar")
Global("ValygarRomanceActive","GLOBAL",2)
~ THEN EXTERN ~VALYG25J~ 11
  IF ~IfValidForPartyDialogue("Anomen")
Global("AnomenRomanceActive","GLOBAL",2)
~ THEN EXTERN ~ANOME25J~ 20
  IF ~IfValidForPartyDialogue("Viconia")
Global("ViconiaRomanceActive","GLOBAL",2)
~ THEN EXTERN ~VICON25J~ 18
  IF ~IfValidForPartyDialogue("Aerie")
Global("AerieRomanceActive","GLOBAL",2)
~ THEN EXTERN ~AERIE25J~ 20
  IF ~IfValidForPartyDialogue("Jaheira")
Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN EXTERN ~JAHEI25J~ 18
  IF ~IfValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN25J~ 18
  IF ~IfValidForPartyDialogue("Sarevok")
Alignment("Sarevok",MASK_EVIL)
~ THEN EXTERN ~SAREV25J~ 4
  IF ~IfValidForPartyDialogue("Sarevok")
!Alignment("Sarevok",MASK_EVIL)
~ THEN EXTERN ~SAREV25J~ 6
  IF ~Global("BalthazarFights","GLOBAL",1)
~ THEN EXTERN ~BALTH2~ 15
END

IF ~~ THEN BEGIN 32
  SAY @40 
  IF ~True()
~ THEN GOTO 33
  IF ~IfValidForPartyDialogue("Valygar")
Global("ValygarRomanceActive","GLOBAL",2)
~ THEN EXTERN ~VALYG25J~ 12
  IF ~IfValidForPartyDialogue("Anomen")
Global("AnomenRomanceActive","GLOBAL",2)
~ THEN EXTERN ~ANOME25J~ 21
  IF ~IfValidForPartyDialogue("Viconia")
Global("ViconiaRomanceActive","GLOBAL",2)
~ THEN EXTERN ~VICON25J~ 19
  IF ~IfValidForPartyDialogue("Aerie")
Global("AerieRomanceActive","GLOBAL",2)
~ THEN EXTERN ~AERIE25J~ 21
  IF ~IfValidForPartyDialogue("Jaheira")
Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN EXTERN ~JAHEI25J~ 19
  IF ~IfValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN25J~ 19
  IF ~IfValidForPartyDialogue("Sarevok")
Alignment("Sarevok",MASK_EVIL)
~ THEN EXTERN ~SAREV25J~ 5
  IF ~IfValidForPartyDialogue("Sarevok")
!Alignment("Sarevok",MASK_EVIL)
~ THEN EXTERN ~SAREV25J~ 7
  IF ~Global("BalthazarFights","GLOBAL",1)
~ THEN EXTERN ~BALTH2~ 14
END

IF ~~ THEN BEGIN 33
  SAY @41 
  IF ~GlobalLT("PPEvilChoices","GLOBAL",3)
Global("PlayerChoseEssence","GLOBAL",1)
~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("cut233i")
~ EXIT
  IF ~GlobalGT("PPEvilChoices","GLOBAL",2)
Global("PlayerChoseEssence","GLOBAL",1)
~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("cut233i2")
~ EXIT
  IF ~Global("PlayerChoseEssence","GLOBAL",0)
~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("cut233i3")
~ EXIT
END

IF ~~ THEN BEGIN 34
  SAY @42
  IF ~~ THEN EXTERN ~BALTH2~ 7
END

IF ~~ THEN BEGIN 35
  SAY @43
  IF ~~ THEN EXTERN ~BALTH2~ 7
END

IF ~False()
~ THEN BEGIN 36
  SAY @44
  IF ~~ THEN EXTERN ~BALTH2~ 8
END

IF ~False()
~ THEN BEGIN 37
  SAY @45
  IF ~~ THEN EXTERN ~BALTH2~ 9
END

IF ~False()
~ THEN BEGIN 38
  SAY @46
  IF ~InParty("Imoen2")
!Dead("Imoen2")
~ THEN GOTO 39
  IF ~OR(2)
!InParty("Imoen2")
Dead("Imoen2")
~ THEN GOTO 5
END

IF ~~ THEN BEGIN 39
  SAY @47
  IF ~~ THEN EXTERN ~IMOEN25J~ 14
END

IF ~False()
~ THEN BEGIN 40
  SAY @48
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("bodhif01")
~ EXIT
END
