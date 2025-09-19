BEGIN ~SAREV25J~

IF ~~ THEN BEGIN 0 // from: HGWRA01:11.0
  SAY @0 /* #65872 */
  IF ~IsValidForPartyDialog("Imoen2")~ THEN EXTERN ~HGWRA01~ 12
  IF ~!IsValidForPartyDialog("Imoen2")~ THEN EXTERN ~HGWRA01~ 13
END

IF ~~ THEN BEGIN 1 // from:
  SAY @1 /* #67756 */
  IF ~~ THEN EXTERN ~SARBHA01~ 2
END

IF ~~ THEN BEGIN 2 // from: BALTH2:13.12 CERND25J:1.18 EDWIN25J:0.18 FINSOL01:27.12 HAERD25J:2.18 JAN25J:11.18 KELDO25J:1.18 KORGA25J:3.18 MAZZY25J:1.18 MINSC25J:1.18 NALIA25J:2.18
  SAY @2  /* #67914 */
  IF ~True()~ THEN EXTERN ~FINSOL01~ 28
  IF ~IsValidForPartyDialog("Valygar")
Global("ValygarRomanceActive","GLOBAL",2)~ THEN EXTERN ~VALYG25J~ 3
  IF ~IsValidForPartyDialog("Anomen")
Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN ~ANOME25J~ 11
  IF ~IsValidForPartyDialog("Viconia")
Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN ~VICON25J~ 8
  IF ~IsValidForPartyDialog("Aerie")
Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN ~AERIE25J~ 9
  IF ~IsValidForPartyDialog("Jaheira")
Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN ~JAHEI25J~ 9
  IF ~IsValidForPartyDialog("Valygar")
!Global("ValygarRomanceActive","GLOBAL",2)~ THEN EXTERN ~VALYG25J~ 2
  IF ~IsValidForPartyDialog("Anomen")
!Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN ~ANOME25J~ 10
  IF ~IsValidForPartyDialog("Viconia")
!Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN ~VICON25J~ 8
  IF ~IsValidForPartyDialog("Aerie")
!Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN ~AERIE25J~ 7
  IF ~IsValidForPartyDialog("Jaheira")
!Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN ~JAHEI25J~ 7
  IF ~IsValidForPartyDialog("Imoen2")~ THEN EXTERN ~IMOEN25J~ 15
END

IF ~~ THEN BEGIN 3 // from: BALTH2:13.13 CERND25J:1.19 EDWIN25J:0.19 FINSOL01:27.13 HAERD25J:2.19 JAN25J:11.19 KELDO25J:1.19 KORGA25J:3.19 MAZZY25J:1.19 MINSC25J:1.19 NALIA25J:2.19
  SAY @3  /* #67916 */
  IF ~True()~ THEN EXTERN ~FINSOL01~ 28
  IF ~IsValidForPartyDialog("Valygar")
Global("ValygarRomanceActive","GLOBAL",2)~ THEN EXTERN ~VALYG25J~ 3
  IF ~IsValidForPartyDialog("Anomen")
Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN ~ANOME25J~ 11
  IF ~IsValidForPartyDialog("Viconia")
Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN ~VICON25J~ 8
  IF ~IsValidForPartyDialog("Aerie")
Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN ~AERIE25J~ 9
  IF ~IsValidForPartyDialog("Jaheira")
Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN ~JAHEI25J~ 9
  IF ~IsValidForPartyDialog("Valygar")
!Global("ValygarRomanceActive","GLOBAL",2)~ THEN EXTERN ~VALYG25J~ 2
  IF ~IsValidForPartyDialog("Anomen")
!Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN ~ANOME25J~ 10
  IF ~IsValidForPartyDialog("Viconia")
!Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN ~VICON25J~ 6
  IF ~IsValidForPartyDialog("Aerie")
!Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN ~AERIE25J~ 7
  IF ~IsValidForPartyDialog("Jaheira")
!Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN ~JAHEI25J~ 7
  IF ~IsValidForPartyDialog("Imoen2")~ THEN EXTERN ~IMOEN25J~ 15
END

IF ~~ THEN BEGIN 4 // from: BALTH2:15.7 FINSOL01:31.7 FINSOL01:30.7 FINSOL01:29.7
  SAY @4  /* #68093 */
  IF ~True()~ THEN EXTERN ~FINSOL01~ 33
  IF ~IsValidForPartyDialog("Valygar")
Global("ValygarRomanceActive","GLOBAL",2)~ THEN EXTERN ~VALYG25J~ 11
  IF ~IsValidForPartyDialog("Anomen")
Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN ~ANOME25J~ 20
  IF ~IsValidForPartyDialog("Viconia")
Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN ~VICON25J~ 18
  IF ~IsValidForPartyDialog("Aerie")
Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN ~AERIE25J~ 20
  IF ~IsValidForPartyDialog("Jaheira")
Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN ~JAHEI25J~ 18
  IF ~IsValidForPartyDialog("Imoen2")~ THEN EXTERN ~IMOEN25J~ 18
END

IF ~~ THEN BEGIN 5 // from: BALTH2:14.7 FINSOL01:32.7
  SAY @5  /* #68094 */
  IF ~True()~ THEN EXTERN ~FINSOL01~ 33
  IF ~IsValidForPartyDialog("Valygar")
Global("ValygarRomanceActive","GLOBAL",2)~ THEN EXTERN ~VALYG25J~ 12
  IF ~IsValidForPartyDialog("Anomen")
Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN ~ANOME25J~ 21
  IF ~IsValidForPartyDialog("Viconia")
Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN ~VICON25J~ 19
  IF ~IsValidForPartyDialog("Aerie")
Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN ~AERIE25J~ 21
  IF ~IsValidForPartyDialog("Jaheira")
Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN ~JAHEI25J~ 19
  IF ~IsValidForPartyDialog("Imoen2")~ THEN EXTERN ~IMOEN25J~ 19
END

IF ~~ THEN BEGIN 6 // from: BALTH2:15.8 FINSOL01:31.8 FINSOL01:30.8 FINSOL01:29.8
  SAY @6  /* #68095 */
  IF ~True()~ THEN EXTERN ~FINSOL01~ 33
  IF ~IsValidForPartyDialog("Valygar")
Global("ValygarRomanceActive","GLOBAL",2)~ THEN EXTERN ~VALYG25J~ 11
  IF ~IsValidForPartyDialog("Anomen")
Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN ~ANOME25J~ 20
  IF ~IsValidForPartyDialog("Viconia")
Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN ~VICON25J~ 18
  IF ~IsValidForPartyDialog("Aerie")
Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN ~AERIE25J~ 20
  IF ~IsValidForPartyDialog("Jaheira")
Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN ~JAHEI25J~ 18
  IF ~IsValidForPartyDialog("Imoen2")~ THEN EXTERN ~IMOEN25J~ 18
END

IF ~~ THEN BEGIN 7 // from: BALTH2:14.8 FINSOL01:32.8
  SAY @7  /* #68096 */
  IF ~True()~ THEN EXTERN ~FINSOL01~ 33
  IF ~IsValidForPartyDialog("Valygar")
Global("ValygarRomanceActive","GLOBAL",2)~ THEN EXTERN ~VALYG25J~ 12
  IF ~IsValidForPartyDialog("Anomen")
Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN ~ANOME25J~ 21
  IF ~IsValidForPartyDialog("Viconia")
Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN ~VICON25J~ 19
  IF ~IsValidForPartyDialog("Aerie")
Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN ~AERIE25J~ 21
  IF ~IsValidForPartyDialog("Jaheira")
Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN ~JAHEI25J~ 19
  IF ~IsValidForPartyDialog("Imoen2")~ THEN EXTERN ~IMOEN25J~ 19
END

IF ~~ THEN BEGIN 8 // from: AMBAR01:18.3
  SAY @8 /* #70384 */
  IF ~~ THEN EXTERN ~AMBAR01~ 19
  IF ~IsValidForPartyDialog("Cernd")~ THEN EXTERN ~CERND25J~ 3
END

IF ~~ THEN BEGIN 9 // from: AERIE25J:22.1 BAZMONK:3.1 IMOEN25J:22.1 VICON25J:20.1
  SAY @9 /* #70393 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10 // from: JAN25J:13.4
  SAY @10 /* #70430 */
  IF ~~ THEN EXTERN ~JAN25J~ 14
END

IF ~~ THEN BEGIN 11 // from:
  SAY @11 /* #70511 */
  IF ~True()~ THEN EXIT
  IF ~IsValidForPartyDialog("Imoen2")~ THEN EXTERN ~IMOEN25J~ 27
  IF ~IsValidForPartyDialog("Anomen")~ THEN EXTERN ~ANOME25J~ 27
END

IF ~~ THEN BEGIN 12 // from: GORODR1:11.2
  SAY @12 /* #70522 */
  IF ~~ THEN EXTERN ~GORODR1~ 12
END

IF ~~ THEN BEGIN 13 // from: SARVOLO:33.1
  SAY @13 /* #71638 */
  IF ~~ THEN EXTERN ~SARVOLO~ 9
END

IF ~~ THEN BEGIN 14 // from:
  SAY @14 /* #72394 */
  IF ~~ THEN EXTERN ~SARKIS01~ 17
END

IF ~False()
~ THEN BEGIN 15 // from: FINMEL01:29.0
  SAY @15 /* #100626 */
  IF ~~ THEN EXTERN ~FINMEL01~ 31
END

IF ~False()
~ THEN BEGIN 16 // from: FINMEL01:31.0
  SAY @16 /* #100627 */
  IF ~~ THEN EXTERN ~FINMEL01~ 32
END

IF ~False()
~ THEN BEGIN 17 // from: FINMEL01:32.0 FINMEL01:31.1
  SAY @17 /* #100628 */
  IF ~~ THEN EXTERN ~FINMEL01~ 33
END

IF ~False()
~ THEN BEGIN 18 // from: FINMEL01:33.3 FINMEL01:33.1
  SAY @18 /* #100629 */
  IF ~~ THEN EXTERN ~FINMEL01~ 36
END

IF ~False()
~ THEN BEGIN 19 // from: FINMEL01:33.2
  SAY @19 /* #100630 */
  IF ~False()
~ THEN EXIT
  IF ~~ THEN REPLY @20 /* #100631 */ GOTO 21
  IF ~~ THEN REPLY @21 /* #100632 */ GOTO 22
  IF ~~ THEN REPLY @22 /* #100633 */ GOTO 23
END

IF ~False()
~ THEN BEGIN 20 // from: FINMEL01:33.0
  SAY @23 /* #100634 */
  IF ~~ THEN EXTERN ~FINMEL01~ 36
END

IF ~~ THEN BEGIN 21 // from: 19.1
  SAY @24 /* #100635 */
  IF ~~ THEN EXTERN ~FINMEL01~ 34
END

IF ~~ THEN BEGIN 22 // from: 19.2
  SAY @25 /* #100636 */
  IF ~~ THEN EXTERN ~FINMEL01~ 34
END

IF ~~ THEN BEGIN 23 // from: 19.3
  SAY @26 /* #100637 */
  IF ~~ THEN EXTERN ~FINMEL01~ 34
END

IF ~Global("MelStillImmortal","AR6200",2)
!Global("SarevokHasSword","LOCALS",1)
~ THEN BEGIN 24 // from:
  SAY @27 /* #100638 */
  IF ~~ THEN DO ~SetGlobal("MelStillImmortal","AR6200",3)
~ EXIT
END

IF ~Global("SarevokHasSword","LOCALS",1)
~ THEN BEGIN 25 // from:
  SAY @28 /* #100639 */
  IF ~~ THEN DO ~SetGlobal("SarevokHasSword","LOCALS",2)
~ GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY @29 /* #100640 */
  IF ~~ THEN DO ~DestroyItem("sw2h16")
GiveItemCreate("finsarev",Myself,0,0,0)
~ EXIT
END

IF ~False()
~ THEN BEGIN 27 // from: IRENIC2:1.0
  SAY @30 /* #100641 */
  IF ~~ THEN EXTERN ~IRENIC2~ 15
END

IF ~False()
~ THEN BEGIN 28 // from: IRENIC2:15.0
  SAY @31 /* #100642 */
  IF ~~ THEN EXTERN ~IRENIC2~ 16
END
