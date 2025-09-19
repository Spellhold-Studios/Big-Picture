REPLACE ~PLAYER1~

IF WEIGHT #20 ~!Global("FinalFight","AR6200",4)
!Global("MelStillImmortal","AR6200",2)
Global("playerTalk","AR1515",1)~ THEN BEGIN 15
  SAY #50656
  IF ~Global("BP_HardRoad","GLOBAL",1)~ THEN REPLY #153224 DO ~SetGlobal("playerTalk","AR1515",2)
      SetGlobalTimer("BP_GoQuickly","GLOBAL",185)
      SetGlobal("BP_GetTheGoods","GLOBAL",1)~ EXIT
  IF ~!IsValidForPartyDialogue("IMOEN2")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("VICONIA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("AERIE")
!IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("EDWIN")
!IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("JAN")
!IsValidForPartyDialogue("CERND")~ THEN DO ~SetGlobal("playerTalk","AR1515",2)
SetGlobal("AsylumPlot","GLOBAL",54)
StartCutSceneMode()
StartCutScene("Cut41m")~ EXIT
  IF ~IsValidForPartyDialogue("IMOEN2")
~ THEN EXTERN ~IMOEN2J~ 8
  IF ~IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("IMOEN2")~ THEN EXTERN ~JAHEIRAJ~ 434
  IF ~IsValidForPartyDialogue("VICONIA")
!IsValidForPartyDialogue("IMOEN2")
!IsValidForPartyDialogue("JAHEIRA")
~ THEN EXTERN ~VICONIJ~ 89
  IF ~IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("IMOEN2")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("VICONIA")
~ THEN EXTERN ~ANOMENJ~ 252
  IF ~IsValidForPartyDialogue("AERIE")
!IsValidForPartyDialogue("IMOEN2")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("VICONIA")
!IsValidForPartyDialogue("ANOMEN")~ THEN EXTERN ~AERIEJ~ 118
  IF ~IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("IMOEN2")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("VICONIA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("AERIE")
~ THEN EXTERN ~MINSCJ~ 148
  IF ~IsValidForPartyDialogue("EDWIN")
!IsValidForPartyDialogue("IMOEN2")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("VICONIA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("AERIE")
!IsValidForPartyDialogue("MINSC")
~ THEN EXTERN ~EDWINJ~ 93
  IF ~IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("IMOEN2")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("VICONIA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("AERIE")
!IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("EDWIN")
~ THEN EXTERN ~KORGANJ~ 109
  IF ~IsValidForPartyDialogue("JAN")
!IsValidForPartyDialogue("IMOEN2")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("VICONIA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("AERIE")
!IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("EDWIN")
!IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~JANJ~ 142
  IF ~IsValidForPartyDialogue("CERND")
!IsValidForPartyDialogue("IMOEN2")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("VICONIA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("AERIE")
!IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("EDWIN")
!IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("JAN")
~ THEN EXTERN ~CERNDJ~ 98
END

END