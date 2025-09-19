// creator  : weidu (version 169)
// argument : BPV170/DLG/BPSKULLY.DLG
// game     : .
// source   : BPV170/DLG/BPSKULLY.DLG
// dialog   : ./dialog.tlk
// dialogF  : (none)

BEGIN ~BPSKULLY~

IF ~Global("BPSkullySpeaks","LOCALS",1)
Global("BPHorredGaveWord","GLOBAL",1)~ THEN BEGIN 0 // from: 6.0
  SAY @0 /* #96759 */
  IF ~~ THEN DO ~SetGlobal("BPSkullySpeaks","LOCALS",2)
CreateCreature("BPSKELAR",[300.620],13)
CreateCreature("BPGHAST",[400.800],11)
CreateCreature("BPGHAST",[600.400],4)
CreateCreature("BPSKELAR",[800.425],5)
SetGlobalTimer("BPHorredHoard","AR8051",24)
Enemy()~ EXIT
END

IF ~Global("BPSkullySpeaks","LOCALS",2)
HPPercentLT(Myself,35)~ THEN BEGIN 1 // from:
  SAY @1 /* #96760 */
  IF ~~ THEN DO ~SetGlobal("BPSkullySpeaks","LOCALS",3)
SetGlobal("BPSkullyPist","LOCALS",1)~ EXIT
END

IF ~Global("BPSkullySpeaks","LOCALS",3)
OR(2)
HPLT(Myself,50)
Dead("BPSKULLY")~ THEN BEGIN 2 // from:
  SAY @2 /* #96761 */
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @3 /* #96762 */
  IF ~~ THEN DO ~SetGlobal("BPSkullySpeaks","LOCALS",4)~ EXTERN ~HORRED~ 33
END

IF ~Dead("Horred")~ THEN BEGIN 4 // from: HORRED:23.0
  SAY @4 /* #96763 */
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @5 /* #96764 */
  IF ~~ THEN DO ~SetGlobal("BPSkullyPist","LOCALS",1)
ReallyForceSpell(Myself,WIZARD_IMPROVED_HASTE)~ EXIT
END

IF ~~ THEN BEGIN 6 // from:
  SAY @6 /* #96765 */
  IF ~~ THEN GOTO 0
END

IF ~~ THEN BEGIN 7 // from: HORRED:20.0 HORRED:13.0 HORRED:8.0 HORRED:7.0 HORRED:6.0 HORRED:5.0
  SAY @7 /* #96766 */
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @8 /* #96767 */
  IF ~~ THEN EXTERN ~HORRED~ 32
END

IF ~~ THEN BEGIN 9 // from: HORRED:32.0
  SAY @0 /* #96759 */
  IF ~~ THEN DO ~SetGlobal("BPSkullySpeaks","LOCALS",2)
CreateCreature("BPSKELAR",[300.620],13)
CreateCreature("BPGHAST",[400.800],11)
CreateCreature("BPGHAST",[600.400],4)
CreateCreature("BPSKELAR",[800.425],5)
SetGlobalTimer("BPHorredHoard","AR8051",24)
Enemy()~ EXIT
END

IF ~Global("BPSkullySpeaks","LOCALS",0)~ THEN BEGIN 10 // from:
  SAY @9 /* #96768 */
  IF ~~ THEN DO ~SetGlobal("BPAlertAlert","AR8051",2)
SetGlobal("BPSkullySpeaks","LOCALS",1)
Explore()~ EXTERN ~HORRED~ 36
END

IF ~Global("BPAlertAlert","AR8501",3)~ THEN BEGIN 11 // from: HORRED:36.0
  SAY @10 /* #96769 */
  IF ~~ THEN DO ~SetGlobal("BPAlertAlert","AR8051",4)
ActionOverride("HORRED",StartDialogNoSet(Player1))~ EXIT
END
