// creator  : weidu (version 173)
// argument : CACHE/ILLASERA.DLG
// game     : .
// source   : CACHE/ILLASERA.DLG
// dialog   : ./dialog.tlk
// dialogF  : (none)

BEGIN ~ILLASERA~

IF ~True()~ THEN BEGIN 0 // from:
  SAY #63956 /* ~So I have found you at last!  It was an effort to track you down, <CHARNAME>, in these woods.  Too many old wards for my liking...but here you are.~ [ILLASE07] */
  IF ~~ THEN REPLY #63957 /* ~I suppose you are some bounty hunter after Bhaalspawn?~ */ GOTO 1
  IF ~~ THEN REPLY #63958 /* ~So you've found me.  What do you want?~ */ GOTO 1
  IF ~~ THEN REPLY #63959 /* ~And just who are you?~ */ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.2 0.1 0.0
  SAY #63969 /* ~All that you need to know is that I've been given the pleasure of ending your life.  I may yet mount your head on the wall with all the other Bhaalspawn I've killed...I haven't decided.~ [ILLASE08] */
  IF ~~ THEN REPLY #63970 /* ~I've no argument with you, whoever you are!~ */ GOTO 2
  IF ~~ THEN REPLY #63971 /* ~You can try, if you like.  I am no ordinary Bhaalspawn.~ */ GOTO 3
  IF ~~ THEN REPLY #63972 /* ~You hunt Bhaalspawn?!  Why?!~ */ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #63977 /* ~No?  I rather think the source of our disagreement is obvious.  I am Bhaalspawn...as are you.~ */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #63978 /* ~I know.  Neither am I.~ */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY #63979 /* ~Isn't it obvious?  I am Bhaalspawn myself, dear <PRO_MANWOMAN>.~ */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 7.0
  SAY #63981 /* ~The time of Alaundo's prophecy has come, <CHARNAME>.  These rhyming ghosts, here, should have told you that much.  Great things are afoot...and your contribution will be your death.~ [ILLASE10] */
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #63982 /* ~It has already been decided, <CHARNAME>.  I am Illasera the Quick, Child of Bhaal, and I have been chosen to perform this deed.  You cannot resist us.~ [ILLASE11] */
  IF ~~ THEN REPLY #63984 /* ~Enough talk, then!  Let's see how tough you are!~ */ GOTO 8
  IF ~~ THEN REPLY #63985 /* ~So others have said.  They're dead, now.~ */ GOTO 8
  IF ~~ THEN REPLY #63986 /* ~I can...and you are a fool to think otherwise.~ */ GOTO 8
  IF ~~ THEN REPLY #63988 /* ~Who are you working with?!  I shall stop whatever you plan!!~ */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 4.0 3.0 2.0
  SAY #63983 /* ~Not all of us have been wandering Faerun like witless cattle, like you and pathetic Imoen and so many others of Bhaal's blood.  Some of us have far greater aspirations.~ [ILLASE09] */
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 8 // from: 6.3 6.2 6.1 6.0
  SAY #63987 /* ~We shall see, <CHARNAME>.  ~ [ILLASE12] */
  IF ~~ THEN DO ~SetGlobal("IllaseraHostile","GLOBAL",1)
Enemy()
ActionOverride("zilmag01",Enemy())
ActionOverride("zilarc01",Enemy())
ActionOverride("zilfgt01",Enemy())
ActionOverride("zilfgt01",Enemy())~ EXIT
END
