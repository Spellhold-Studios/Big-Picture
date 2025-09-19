// creator  : weidu (version 169)
// argument : BPV170/DLG/HORRED.DLG
// game     : .
// source   : BPV170/DLG/HORRED.DLG
// dialog   : ./dialog.tlk
// dialogF  : (none)

BEGIN ~HORRED~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~Global("BPHorredSpeaks","GLOBAL",1)~ THEN BEGIN 0 // from:
  SAY @0 /* #96772 */
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @1 /* #96773 */
  IF ~~ THEN DO ~PlaySound("DEMO01A")~ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @2 /* #96774 */
  IF ~Global("CHAPTER","GLOBAL",6)~ THEN DO ~SetInterrupt(FALSE)
PlaySound("VWOLF04")
PlaySound("OROGC07A")
SetInterrupt(TRUE)~ GOTO 3
  IF ~!PartyHasItem("KEY66")
OR(2)
GlobalLT("Chapter","GLOBAL",6)
GlobalGT("Chapter","GLOBAL",6)~ THEN DO ~PlaySound("VWOLF04")
PlaySound("OROGC07A")~ GOTO 35
  IF ~PartyHasItem("KEY66")
OR(2)
GlobalLT("Chapter","GLOBAL",6)
GlobalGT("Chapter","GLOBAL",6)~ THEN DO ~PlaySound("VWOLF04")
PlaySound("AIREL07")~ GOTO 9
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @3 /* #96775 */
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @4 /* #96776 */
  IF ~~ THEN REPLY @5 /* #96803 */ GOTO 5
  IF ~~ THEN REPLY @6 /* #96804 */ GOTO 6
  IF ~~ THEN REPLY @7 /* #96805 */ GOTO 7
  IF ~~ THEN REPLY @8 /* #96806 */ GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @9 /* #96777 */
  IF ~~ THEN DO ~PlaySound("DEMO07")
Enemy()~ EXTERN ~BPSKULLY~ 7
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY @10 /* #96778 */
  IF ~~ THEN DO ~PlaySound("DEMO07")
Enemy()~ EXTERN ~BPSKULLY~ 7
END

IF ~~ THEN BEGIN 7 // from: 4.2
  SAY @11 /* #96779 */
  IF ~~ THEN DO ~PlaySound("DEMO07")
Enemy()~ EXTERN ~BPSKULLY~ 7
END

IF ~~ THEN BEGIN 8 // from: 4.3
  SAY @12 /* #96780 */
  IF ~~ THEN DO ~PlaySound("DEMO07")
Enemy()~ EXTERN ~BPSKULLY~ 7
END

IF ~~ THEN BEGIN 9 // from: 35.0 2.2
  SAY @13 /* #96781 */
  IF ~~ THEN REPLY @14 /* #96807 */ GOTO 10
  IF ~~ THEN REPLY @15 /* #96808 */ GOTO 14
  IF ~~ THEN REPLY @16 /* #96809 */ GOTO 15
  IF ~~ THEN REPLY @17 /* #96810 */ GOTO 16
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY @18 /* #96782 */
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY @19 /* #96783 */
  IF ~~ THEN REPLY @20 /* #96811 */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 16.0 15.0 14.0 11.0
  SAY @21 /* #96784 */
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY @22 /* #96785 */
  IF ~~ THEN DO ~SetInterrupt(FALSE)
PlaySound("DEMO07")
Enemy()~ EXTERN ~BPSKULLY~ 7
END

IF ~~ THEN BEGIN 14 // from: 9.1
  SAY @23 /* #96786 */
  IF ~~ THEN REPLY @20 /* #96811 */ GOTO 12
END

IF ~~ THEN BEGIN 15 // from: 9.2
  SAY @24 /* #96787 */
  IF ~~ THEN REPLY @20 /* #96811 */ GOTO 12
END

IF ~~ THEN BEGIN 16 // from: 9.3
  SAY @25 /* #96788 */
  IF ~~ THEN REPLY @20 /* #96811 */ GOTO 12
END

IF WEIGHT #1 ~Global("BPHorredSpeaks","GLOBAL",2)~ THEN BEGIN 17 // from:
  SAY @0 /* #96772 */
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY @26 /* #96789 */
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY @27 /* #96790 */
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY @28 /* #96791 */
  IF ~~ THEN DO ~Enemy()~ EXTERN ~BPSKULLY~ 7
END

IF WEIGHT #2 ~Global("BPHorredSpeaks","GLOBAL",3)~ THEN BEGIN 21 // from:
  SAY @0 /* #96772 */
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY @29 /* #96792 */
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY @30 /* #96793 */
  IF ~~ THEN DO ~ActionOverride(Myself,ReallyForceSpell(NearestEnemyOf(Myself),CLERIC_SUMMON_FALLEN_DEVA))
Enemy()~ EXTERN ~BPSKULLY~ 4
END

IF WEIGHT #4 /* Triggers after states #: 28 even though they appear after this state */
~Global("BPHorredHit","GLOBAL",66)~ THEN BEGIN 24 // from:
  SAY @31 /* #96794 */
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY @32 /* #96795 */
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY @33 /* #96796 */
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY @34 /* #96797 */
  IF ~~ THEN DO ~SetGlobal("BPHorredLastSpeech","GLOBAL",2)
SetGlobal("BPHorredChanged","GLOBAL",1)
StartCutSceneMode()
DropInventory()
Kill(Myself)
ReallyForceSpellDead(Myself,VAMPIRE_GAS_FORM_CHANGE)
ReallyForceSpellDead(NearestEnemyOf(Myself),WIZARD_GATE)
EndCutSceneMode()~ EXIT
END

IF WEIGHT #3 ~Global("BPHorredLastSpeech","GLOBAL",1)~ THEN BEGIN 28 // from:
  SAY @31 /* #96794 */
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY @32 /* #96795 */
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY @33 /* #96796 */
  IF ~~ THEN DO ~DropInventory()
Kill(Myself)
ReallyForceSpellDead(Myself,VAMPIRE_GAS_FORM_CHANGE)
SetGlobal("BPHorredChanged","GLOBAL",1)~ GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY @34 /* #96797 */
  IF ~~ THEN DO ~SetGlobal("BPHorredLastSpeech","GLOBAL",2)
ReallyForceSpellDead(Myself,VAMPIRE_GAS_FORM_CHANGE)
ReallyForceSpellDead(NearestEnemyOf(Myself),WIZARD_GATE)
~ EXIT
END

IF ~~ THEN BEGIN 32 // from: BPSKULLY:8.0
  SAY @35 /* #96798 */
  IF ~~ THEN DO ~SetGlobal("BPHorredSpeaks","GLOBAL",4)~ EXTERN ~BPSKULLY~ 9
END

IF WEIGHT #5 ~Dead("BPSKULLY")~ THEN BEGIN 33 // from: BPSKULLY:3.0
  SAY @36 /* #96799 */
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY @37 /* #96800 */
  IF ~~ THEN DO ~SpellNoDec(Myself,CLERIC_RIGHTEOUS_MAGIC)
SpellNoDec(Myself,CLERIC_CHAOTIC_COMMANDS)
SpellNoDec(Myself,WIZARD_IMPROVED_HASTE)
SpellNoDec(Myself,WIZARD_IMPROVED_MANTLE)~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 2.1
  SAY @38 /* #96801 */
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 36 // from: BPSKULLY:10.0
  SAY @39 /* #96802 */
  IF ~~ THEN DO ~SetGlobal("BPAlertAlert","GLOBAL",3)
SetGlobal("BPHorredSpeaks","GLOBAL",1)
SetGlobal("BPHorredSpoke","LOCALS",1)~ EXTERN ~BPSKULLY~ 11
END
