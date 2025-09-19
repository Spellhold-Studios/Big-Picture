// creator  : weidu (version 173)
// argument : CACHE/GROMNIR.DLG
// game     : .
// source   : CACHE/GROMNIR.DLG
// dialog   : ./dialog.tlk
// dialogF  : (none)

BEGIN ~GROMNIR~

IF ~~ THEN BEGIN 0 // from:
  SAY #65066 /* ~Gromnir knows a stranger came to Saradush, pretty Melissan.  Another Bhaalspawn.  You must think Gromnir too stupid not to remember there is no way in or out of the city, mmm?~ [GROM07] */
  IF ~~ THEN EXTERN ~SARMEL01~ 28
END

IF ~~ THEN BEGIN 1 // from:
  SAY #65069 /* ~Bah!  Gromnir knows the truth!  We is no idiot!  Melissan has brought this outsider in to kill Gromnir!~ [GROM08] */
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #65071 /* ~Bhaalspawn means nothing!  Yaga-Shura is Bhaalspawn - he wants Gromnir's head, too! HAH ha ha!  Foolish Melissan is plotting against Gromnir.  Melissan is plotting the ruin of all the Children of Bhaal!~ [GROM09] */
  IF ~~ THEN EXTERN ~SARMEL01~ 29
END

IF ~~ THEN BEGIN 3 // from:
  SAY #65073 /* ~Mad?  Paranoid?  HA HA HA!  No!  Gromnir finally understands how Melissan lied!  Melissan lured Gromnir into a deathtrap!  Tell Gromnir where the Bhaalspawn assassin is hiding!~ [GROM10] */
  IF ~~ THEN EXTERN ~SARMEL01~ 30
END

IF ~~ THEN BEGIN 4 // from:
  SAY #65075 /* ~Gromnir will never meet with this Bhaalspawn of yours!  HAH!!  Gromnir is wise to Melissan's schemes.   Melissan wants to turn Bhaalspawn against Bhaalspawn until all are dead!~ [GROM11] */
  IF ~~ THEN EXTERN ~SARMEL01~ 33
END

IF ~~ THEN BEGIN 5 // from:
  SAY #65077 /* ~Talk?  Talk?  The only talk Gromnir will give <CHARNAME> is a battle cry!  HAH!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from:
  SAY #65078 /* ~Take Melissan away - but watch closely.  Ha ha ha!  Gromnir knows that Melissan is tricky; Melissan lies; Melissan deceives.  ~ [GROM12] */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("cut225b")
~ EXIT
END

IF ~NumTimesTalkedTo(0)
~ THEN BEGIN 7 // from:
  SAY #65079 /* ~So the assassin is here!  Ha ha!  <CHARNAME> has come to kill Gromnir, eh?  HAH!!  Good fun!~ [GROM13] */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
EraseJournalEntry(64995)
EraseJournalEntry(65001)
EraseJournalEntry(65003)
Enemy()
SetGlobalTimer("reinfg","GLOBAL",10)
CreateCreature("GROMG03",[781.596],4)
CreateCreature("GROMG09",[832.609],4)
CreateCreature("GROMG10",[778.636],4)
EndCutSceneMode()
ActionOverride("gromg03",Shout(125))
ActionOverride("gromg03",Enemy())
ActionOverride("gromg05",Enemy())
ActionOverride("gromg08",Enemy())
ActionOverride("gromg09",Enemy())
ActionOverride("gromg10",Enemy())
~ SOLVED_JOURNAL #65062 /* ~Dealing With Gromnir

I managed to get into the castle, finally, and encountered the mad General.  Whatever chance there might have been for a peaceful resolution was dashed as soon as I met Gromnir...he was obviously as mad as Melissan claimed.  Regardless, he is dead now and his tyranny and his rampaging men will no longer be a problem for Saradush.  There is, of course, still the problem of Yaga-Shura's army around the city...  ~ */ EXIT
END
