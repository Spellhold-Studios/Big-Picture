// creator  : weidu (version 173)
// argument : CACHE/YAGA01.DLG
// game     : .
// source   : CACHE/YAGA01.DLG
// dialog   : ./dialog.tlk
// dialogF  : (none)

BEGIN ~YAGA01~

IF ~Global("YagaShuraHeart","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY #66160 /* ~HA-ha ha haaa!!  I knew I should have been the one to carve up your hide, Bhaalspawn!  And now the great Yaga-Shura shall become even greater still!!~ [YAGA07] */
  IF ~~ THEN DO ~SetGlobal("Reminder","AR5203",1)
Enemy()~ EXIT
END

IF ~Global("YagaShuraHeart","GLOBAL",1)~ THEN BEGIN 1 // from:
  SAY #66162 /* ~What a disappointment you created for me, worm!  I redoubled our efforts to crush this worthless town when I heard you were within, the Terror of the Sword Coast...only to find you gone!~ [YAGA08] */
  IF ~~ THEN DO ~SetGlobal("Reminder","AR5203",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #66164 /* ~I thought I would have to content myself with slaughtering all the weakling Bhaalspawn in the city and forgetting about you.  But here you are!!  HA haha ha!!~ [YAGA11] */
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #66165 /* ~I should have been the first sent after you, and now I shall prove it!  Yaga-Shura shall become even greater still!!~ [YAGA12] */
  IF ~~ THEN DO ~SetGlobal("YagaShuraHeart","GLOBAL",2)~ EXIT
END

IF ~Global("YagaShuraHeart","GLOBAL",2)
HPPercentLT(Myself,100)~ THEN BEGIN 4 // from:
  SAY #66166 /* ~What...?!  No!  No, this cannot be!  I...I am wounded!!~ [YAGA09] */
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #66167 /* ~Yaga-Shura cannot be defeated!!  Men...men, destroy them!  Rip the hearts from their chests and make them suffer!!  I will return with reinforcements!~ [YAGA13] */
  IF ~~ THEN DO ~SetGlobal("YagaShuraHeart","GLOBAL",3)
SetGlobalTimer("YagaReturnTimer","AR5203",100)
CreateVisualEffectObject("ICFIRSDI",Myself)
DisplayStringHead(Myself,46150)
EscapeArea()
~ EXIT
END

IF ~Global("YagaShuraHeart","GLOBAL",3)
~ THEN BEGIN 6 // from:
  SAY #66168 /* ~You...you have weakened me!  You and that foul witch, I know it!  NO MATTER!!  Yaga-Shura will defeat you yet!  RAAAAAUUUGHHH!!~ [YAGA10] */
  IF ~~ THEN DO ~SetGlobal("YagaShuraHeart","GLOBAL",4)
EraseJournalEntry(65769)
EraseJournalEntry(66112)
EraseJournalEntry(66117)
EraseJournalEntry(66121)
EraseJournalEntry(66143)
EraseJournalEntry(66263)
~ FLAGS 128 EXIT
END
