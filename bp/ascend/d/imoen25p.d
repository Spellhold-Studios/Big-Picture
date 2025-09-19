// creator  : weidu (version 169)
// argument : BPV170/DLG/IMOEN25P.DLG
// game     : .
// source   : BPV170/DLG/IMOEN25P.DLG
// dialog   : ./dialog.tlk
// dialogF  : (none)

BEGIN ~IMOEN25P~

IF ~!Global("ImoenBackToHuman","GLOBAL",1)
!Global("ImoenHurt","GLOBAL",1)
!Global("ImoenResurrected","GLOBAL",1)
!Global("ImoenResurrected2","GLOBAL",1)
Global("KickedOut","LOCALS",0)~ THEN BEGIN 0 // from:
  SAY @0  /* #65299 */
  IF ~~ THEN REPLY @1 /* #65300 */ DO ~SetGlobal("KickedOut","LOCALS",0)
JoinParty()~ EXIT
  IF ~AreaCheck("AR4500")~ THEN REPLY @2 /* #65301 */ DO ~SetGlobal("KickedOut","LOCALS",1)
MoveToPointNoInterrupt([1800.1465])
Face(0)~ GOTO 1
  IF ~!AreaCheck("AR4500")
!AreaCheck("AR4000")
!AreaCheck("AR6200")~ THEN REPLY @3 /* #65302 */ DO ~SetGlobal("KickedOut","LOCALS",1)
CreateVisualEffectObject("SPDIMNDR",Myself)
Wait(2)
MoveBetweenAreas("AR4500",[1800.1465],0)
~ EXIT
  IF ~!AreaCheck("AR4500")
!AreaCheck("AR4000")
!AreaCheck("AR6200")~ THEN REPLY @2 /* #70959 */ DO ~SetGlobal("KickedOut","LOCALS",1)
~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.3 0.1
  SAY @4 /* #65303 */
  IF ~~ THEN EXIT
END

IF ~!Global("ImoenBackToHuman","GLOBAL",1)
!Global("ImoenHurt","GLOBAL",1)
!Global("ImoenResurrected","GLOBAL",1)
!Global("ImoenResurrected2","GLOBAL",1)
Global("KickedOut","LOCALS",1)~ THEN BEGIN 2 // from:
  SAY @5  /* #65304 */
  IF ~~ THEN REPLY @6 /* #65305 */ DO ~SetGlobal("KickedOut","LOCALS",0)
JoinParty()~ EXIT
  IF ~~ THEN REPLY @7 /* #65306 */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY @8 /* #65307 */
  IF ~~ THEN EXIT
END

IF ~Global("ImoenHurt","GLOBAL",1)
~ THEN BEGIN 4 // from:
  SAY @9  /* #100557 */
  IF ~~ THEN REPLY @10 /* #100558 */ DO ~SetGlobal("ImoenHurt","GLOBAL",0)
~ EXTERN ~FINMEL01~ 4
  IF ~~ THEN REPLY @11 /* #100559 */ DO ~SetGlobal("ImoenHurt","GLOBAL",0)
~ EXTERN ~FINMEL01~ 4
  IF ~~ THEN REPLY @12 /* #100560 */ DO ~SetGlobal("ImoenHurt","GLOBAL",0)
~ EXTERN ~FINMEL01~ 4
  IF ~~ THEN REPLY @13 /* #100561 */ DO ~SetGlobal("ImoenHate","GLOBAL",1)
SetGlobal("ImoenHurt","GLOBAL",0)
~ EXTERN ~FINMEL01~ 4
END

IF ~Global("ImoenHurt","GLOBAL",0)
Global("ImoenBackToHuman","GLOBAL",0)
OR(2)
Global("ImoenResurrected","GLOBAL",1)
Global("ImoenResurrected2","GLOBAL",1)
~ THEN BEGIN 5 // from:
  SAY @14 /* #100562 */
  IF ~~ THEN EXTERN ~FINMEL01~ 20
END

IF ~False()
~ THEN BEGIN 6 // from: FINMEL01:20.1
  SAY @15 /* #100556 */
  IF ~~ THEN EXTERN ~FINMEL01~ 19
END

IF ~Global("ImoenBackToHuman","GLOBAL",1)
~ THEN BEGIN 7 // from:
  SAY @16 /* #100563 */
  IF ~Global("ImoenHate","GLOBAL",1)
~ THEN DO ~SetGlobal("ImoenBackToHuman","GLOBAL",2)
~ GOTO 8
  IF ~Global("ImoenResurrected2","GLOBAL",1)
Global("ImoenHate","GLOBAL",0)
~ THEN DO ~SetGlobal("ImoenBackToHuman","GLOBAL",2)
~ GOTO 10
  IF ~Global("ImoenResurrected2","GLOBAL",0)
Global("ImoenHate","GLOBAL",0)
~ THEN DO ~SetGlobal("ImoenBackToHuman","GLOBAL",2)
~ GOTO 15
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @17 /* #100564 */
  IF ~CheckStatGT(Player1,15,CHR)
~ THEN REPLY @18 /* #100565 */ GOTO 9
  IF ~!CheckStatGT(Player1,15,CHR)
~ THEN REPLY @18 /* #100565 */ GOTO 13
  IF ~~ THEN REPLY @19 /* #100566 */ GOTO 14
  IF ~OR(2)
ActuallyInCombat()
See([ENEMY])
~ THEN REPLY @20 /* #100567 */ GOTO 16
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @21 /* #100568 */
  IF ~Global("ImoenResurrected2","GLOBAL",1)
~ THEN GOTO 10
  IF ~!Global("ImoenResurrected2","GLOBAL",1)
~ THEN GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 9.0 7.1
  SAY @22 /* #100569 */
  IF ~~ THEN DO ~ForceSpell(Myself,DRYAD_TELEPORT)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 15.0 9.1
  SAY @23 /* #100570 */
  IF ~~ THEN REPLY @24 /* #100571 */ DO ~SetGlobal("ImoenResurrected","GLOBAL",0)
JoinParty()
~ JOURNAL @25 /* #100572 */ EXIT
  IF ~~ THEN REPLY @26 /* #100573 */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 17.2 16.1 11.1
  SAY @27 /* #100574 */
  IF ~~ THEN DO ~SetGlobal("ImoenEpilogueAnyway","GLOBAL",1)
DropInventory()
ForceSpell(Myself,DRYAD_TELEPORT)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 8.1
  SAY @28 /* #100575 */
  IF ~~ THEN DO ~ForceSpell(Myself,DRYAD_TELEPORT)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 8.2
  SAY @29 /* #100576 */
  IF ~~ THEN DO ~ForceSpell(Myself,DRYAD_TELEPORT)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 7.2
  SAY @30 /* #100577 */
  IF ~!ActuallyInCombat()
!See([ENEMY])
~ THEN GOTO 11
  IF ~OR(2)
ActuallyInCombat()
See([ENEMY])
~ THEN GOTO 17
END

IF ~~ THEN BEGIN 16 // from: 8.3
  SAY @31 /* #100578 */
  IF ~~ THEN REPLY @24 /* #100571 */ DO ~SetGlobal("ImoenResurrected","GLOBAL",0)
JoinParty()
~ JOURNAL @25 /* #100572 */ EXIT
  IF ~~ THEN REPLY @26 /* #100573 */ GOTO 12
END

IF ~~ THEN BEGIN 17 // from: 15.1
  SAY @32 /* #100579 */
  IF ~~ THEN REPLY @24 /* #100571 */ GOTO 18
  IF ~~ THEN REPLY @33 /* #100580 */ GOTO 18
  IF ~~ THEN REPLY @26 /* #100573 */ GOTO 12
END

IF ~~ THEN BEGIN 18 // from: 17.1 17.0
  SAY @34 /* #100581 */
  IF ~~ THEN DO ~SetGlobal("ImoenResurrected","GLOBAL",0)
JoinParty()
~ JOURNAL @25 /* #100572 */ EXIT
END
