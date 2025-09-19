// creator  : DLTCEP_enhanced_WeiDU (version 23600)
// argument : TOLGER2.DLG
// game     : .
// source   : ./override/TOLGER2.DLG
// dialog   : c:\games\beamdog\games\00546\lang/en_US/dialog.tlk
// dialogF  : (none)

REPLACE ~TOLGER2~

IF ~!IsValidForPartyDialog("Valygar")
OR(2)
Global("BetrayedCowled","GLOBAL",1)
Dead("VALYGAR")~ THEN BEGIN 0 // from:
  SAY #39663 /* ~Fool! Did you believe that you could betray the Cowled Wizards and live to tell the tale?!~ */
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #39664 /* ~You forged the path, and we followed with ease through the doors you opened! We shall continue without you! Now learn why the wrath of the Cowled Wizards is feared!~ */
  IF ~~ THEN DO ~SetGlobal("BPSPHERE","GLOBAL",1)
Shout(HELP79)
ActionOverride("tolmag02",Enemy())
Enemy()
~ JOURNAL #16302 /* ~The hunt for Valygar Corthala

We have been assaulted by Tolgerias, the Cowled Wizard who was hunting Valygar in an obvious attempt to gain access to the planar sphere. The wizard is dead now... although further repercussions from the Cowled Wizards seem likely.~ */ EXIT
END

IF ~IsValidForPartyDialog("Valygar")
~ THEN BEGIN 2 // from:
  SAY #39666 /* ~Fools! Did you believe that you could betray the Cowled Wizards with impunity?! Now you will be rewarded with nothing but death, and Valygar will be ours!~ */
  IF ~~ THEN EXTERN ~VALYGARJ~ 3
END

IF ~~ THEN BEGIN 3 // from:
  SAY #39667 /* ~Idiot! You should have run much further! We have followed through the doors you opened, using you as we saw fit! Now suffer our wrath!~ */
  IF ~~ THEN DO ~Shout(HELP79)
ActionOverride("tolmag02",Enemy())
Enemy()
~ UNSOLVED_JOURNAL #16302 /* ~The hunt for Valygar Corthala

We have been assaulted by Tolgerias, the Cowled Wizard who was hunting Valygar in an obvious attempt to gain access to the planar sphere. The wizard is dead now... although further repercussions from the Cowled Wizards seem likely.~ */ EXIT
END

IF ~!Dead("VALYGAR")
!Global("BetrayedCowled","GLOBAL",1)
!IsValidForPartyDialog("Valygar")
Global("TalkedToTolgerias","GLOBAL",0)~ THEN BEGIN 4 // from:
  SAY #39670 /* ~So, you are the fools Valygar duped into helping him. Unfortunate. We have followed through the doors you opened, and now all involved will be eliminated. Face the wrath of the Cowled Wizards!~ */
  IF ~~ THEN DO ~Shout(HELP79)
ActionOverride("tolmag02",Enemy())
Enemy()~ EXIT
END

IF ~Global("TalkedToTolgerias","GLOBAL",0)
Dead("Valygar")~ THEN BEGIN 5 // from:
  SAY #61300 /* ~You foolish ants. You have saved us much trouble by killing Valygar and opening this sphere. But my orders are clear... you are to be destroyed.~ */
  IF ~~ THEN DO ~Enemy()
Shout(HELP79)
~ EXIT
END


END