BEGIN ~BALTH2~

IF ~False()
~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXTERN ~FINMEL01~ 21
END

IF ~False()
~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN EXTERN ~FINMEL01~ 22
END

IF ~False()
~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN EXTERN ~FINMEL01~ 23
END

IF ~Global("FinalFight","AR6200",4)
~ THEN BEGIN 3
  SAY @3
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @4
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @5
  IF ~~ THEN DO ~SetGlobal("FinalFight","AR6200",5)
~ EXIT
END

IF ~False()
~ THEN BEGIN 6
  SAY @6
  IF ~~ THEN EXTERN ~FINMEL01~ 26
END

IF ~False()
~ THEN BEGIN 7
  SAY @7
  IF ~~ THEN EXTERN ~FINSOL01~ 36
END

IF ~False()
~ THEN BEGIN 8
  SAY @8
  IF ~~ THEN EXTERN ~FINSOL01~ 37
END

IF ~False()
~ THEN BEGIN 9
  SAY @9
  IF ~~ THEN EXTERN ~FINSOL01~ 38
END

IF ~False()
~ THEN BEGIN 10
  SAY @10
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY @11
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @12
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @13
  IF ~True()
~ THEN EXTERN ~FINSOL01~ 28
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
END

IF ~False()
~ THEN BEGIN 14
  SAY @14
  IF ~True()
~ THEN EXTERN ~FINSOL01~ 33
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
END

IF ~False()
~ THEN BEGIN 15
  SAY @15
  IF ~True()
~ THEN EXTERN ~FINSOL01~ 33
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
END

IF ~Global("MelStillImmortal","AR6200",3)
~ THEN BEGIN 16
  SAY @16
  IF ~~ THEN DO ~SetGlobal("MelStillImmortal","AR6200",4)
~ EXIT
END
