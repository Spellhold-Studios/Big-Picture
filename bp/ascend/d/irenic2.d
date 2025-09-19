// creator  : weidu (version 169)
// argument : BPV170/DLG/IRENIC2.DLG
// game     : .
// source   : BPV170/DLG/IRENIC2.DLG
// dialog   : ./dialog.tlk
// dialogF  : (none)

BEGIN ~IRENIC2~

IF ~False()
~ THEN BEGIN 0 // from: FINMEL01:13.0
  SAY @0 /* #100582 */
  IF ~~ THEN REPLY @1 /* #100583 */ EXTERN ~FINMEL01~ 14
  IF ~~ THEN REPLY @2 /* #100584 */ EXTERN ~FINMEL01~ 14
  IF ~~ THEN REPLY @3 /* #100585 */ EXTERN ~FINMEL01~ 14
  IF ~~ THEN REPLY @4 /* #100586 */ EXTERN ~FINMEL01~ 14
END

IF ~Global("FinalFight","AR6200",2)
~ THEN BEGIN 1 // from:
  SAY @5 /* #100587 */
  IF ~InParty("Sarevok")
!Dead("Sarevok")
!StateCheck("Sarevok",STATE_SLEEPING)
!StateCheck("Sarevok",STATE_STUNNED)
!StateCheck("Sarevok",STATE_SILENCED)
~ THEN EXTERN ~SAREV25J~ 27
  IF ~OR(5)
!InParty("Sarevok")
Dead("Sarevok")
StateCheck("Sarevok",STATE_SLEEPING)
StateCheck("Sarevok",STATE_STUNNED)
StateCheck("Sarevok",STATE_SILENCED)
~ THEN REPLY @6 /* #100588 */ GOTO 2
  IF ~OR(5)
!InParty("Sarevok")
Dead("Sarevok")
StateCheck("Sarevok",STATE_SLEEPING)
StateCheck("Sarevok",STATE_STUNNED)
StateCheck("Sarevok",STATE_SILENCED)
~ THEN REPLY @7 /* #100589 */ GOTO 3
  IF ~OR(5)
!InParty("Sarevok")
Dead("Sarevok")
StateCheck("Sarevok",STATE_SLEEPING)
StateCheck("Sarevok",STATE_STUNNED)
StateCheck("Sarevok",STATE_SILENCED)
~ THEN REPLY @8 /* #100590 */ GOTO 4
  IF ~OR(5)
!InParty("Sarevok")
Dead("Sarevok")
StateCheck("Sarevok",STATE_SLEEPING)
StateCheck("Sarevok",STATE_STUNNED)
StateCheck("Sarevok",STATE_SILENCED)
~ THEN REPLY @9 /* #100591 */ GOTO 5
  IF ~OR(5)
!InParty("Sarevok")
Dead("Sarevok")
StateCheck("Sarevok",STATE_SLEEPING)
StateCheck("Sarevok",STATE_STUNNED)
StateCheck("Sarevok",STATE_SILENCED)
~ THEN REPLY @10 /* #100592 */ GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 16.0 1.1
  SAY @11 /* #100593 */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 3 // from: 16.1 1.2
  SAY @12 /* #100594 */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 4 // from: 16.2 1.3
  SAY @13 /* #100595 */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 16.3 1.4
  SAY @14 /* #100596 */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 16.4 1.5
  SAY @15 /* #100597 */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0 5.0 4.0 3.0 2.0
  SAY @16 /* #100598 */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("finiren1")
~ EXIT
END

IF ~False()
~ THEN BEGIN 8 // from: FINBODH:0.0
  SAY @17 /* #100599 */
  IF ~~ THEN EXTERN ~FINBODH~ 1
END

IF ~False()
~ THEN BEGIN 9 // from: FINBODH:16.0 FINBODH:15.0 FINBODH:13.0 FINBODH:6.0
  SAY @18 /* #100600 */
  IF ~Global("BalthazarFights","GLOBAL",1)
DifficultyLT(NORMAL)
~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("irenic2a")
~ EXIT
  IF ~Global("BalthazarFights","GLOBAL",1)
DifficultyGT(EASY)
~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("irenic2b")
~ EXIT
  IF ~Global("BalthazarFights","GLOBAL",0)
!DifficultyGT(NORMAL)
~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("irenic2a")
~ EXIT
  IF ~Global("BalthazarFights","GLOBAL",0)
DifficultyGT(NORMAL)
~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("irenic2b")
~ EXIT
END

IF ~False()
~ THEN BEGIN 10 // from: FINBODH:1.0
  SAY @19 /* #100601 */
  IF ~~ THEN EXTERN ~FINBODH~ 2
END

IF ~False()
~ THEN BEGIN 11 // from: FINBODH:10.0 FINBODH:8.1
  SAY @20 /* #100602 */
  IF ~~ THEN EXTERN ~FINBODH~ 9
END

IF ~False()
~ THEN BEGIN 12 // from: FINBODH:31.0 FINBODH:21.0 FINBODH:18.0 FINBODH:17.0 FINBODH:4.0
  SAY @21 /* #100603 */
  IF ~Global("BalthazarFights","GLOBAL",1)
DifficultyLT(NORMAL)
~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("irenic2a")
~ EXIT
  IF ~Global("BalthazarFights","GLOBAL",1)
DifficultyGT(EASY)
~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("irenic2b")
~ EXIT
  IF ~Global("BalthazarFights","GLOBAL",0)
!DifficultyGT(NORMAL)
~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("irenic2a")
~ EXIT
  IF ~Global("BalthazarFights","GLOBAL",0)
DifficultyGT(NORMAL)
~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("irenic2b")
~ EXIT
END

IF ~False()
~ THEN BEGIN 13 // from: FINBODH:5.0
  SAY @22 /* #100604 */
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY @23 /* #100605 */
  IF ~Difficulty(NORMAL)
~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("irenic2c")
~ EXIT
  IF ~DifficultyGT(NORMAL)
~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("irenic2d")
~ EXIT
  IF ~DifficultyLT(NORMAL)
~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("irenic2e")
~ EXIT
END

IF ~False()
~ THEN BEGIN 15 // from: SAREV25J:27.0
  SAY @24 /* #100606 */
  IF ~~ THEN EXTERN ~SAREV25J~ 28
END

IF ~False()
~ THEN BEGIN 16 // from: SAREV25J:28.0
  SAY @25 /* #100607 */
  IF ~~ THEN REPLY @6 /* #100588 */ GOTO 2
  IF ~~ THEN REPLY @7 /* #100589 */ GOTO 3
  IF ~~ THEN REPLY @8 /* #100590 */ GOTO 4
  IF ~~ THEN REPLY @9 /* #100591 */ GOTO 5
  IF ~~ THEN REPLY @10 /* #100592 */ GOTO 6
END
