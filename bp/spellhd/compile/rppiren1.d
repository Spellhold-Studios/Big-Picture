REPLACE ~PPIRENI1~

IF ~~ THEN BEGIN 34
  SAY @0
  IF ~Global("BP_HardRoad","GLOBAL",2)
      OR(2)
        Global("Kachiko_Saved","GLOBAL",2)
        !InParty("Yoshimo")~ 
  THEN DO ~SetGlobal("AsylumPlot","GLOBAL",20)
DisplayString(Myself,50707)
Spell(Myself,DO_NOTHING)
StartCutSceneMode()
StartCutScene("Cut41g")~ EXIT
  IF ~Global("BP_HardRoad","GLOBAL",2)
      InParty("Yoshimo")
      OR(2)
        !Global("Kachiko_Saved","GLOBAL",2)
        Global("TT_Evil_Path","GLOBAL",3)~ 
  THEN DO ~SetGlobal("AsylumPlot","GLOBAL",20)
DisplayString(Myself,50707)
Spell(Myself,DO_NOTHING)
StartCutSceneMode()
StartCutScene("Cut41g")~ EXIT
  IF ~Global("BP_HardRoad","GLOBAL",1)
      OR(2)
        Global("Kachiko_Saved","GLOBAL",2)
        !InParty("Yoshimo")~ 
  THEN DO ~SetGlobal("AsylumPlot","GLOBAL",20)
DisplayString(Myself,50707)
Spell(Myself,DO_NOTHING)
StartCutSceneMode()
StartCutScene("Cut41gBP")~ EXIT
  IF ~Global("BP_HardRoad","GLOBAL",1)
      InParty("Yoshimo")
      OR(2)
        !Global("Kachiko_Saved","GLOBAL",2)
        Global("TT_Evil_Path","GLOBAL",3)~ 
  THEN DO ~SetGlobal("AsylumPlot","GLOBAL",20)
DisplayString(Myself,50707)
Spell(Myself,DO_NOTHING)
StartCutSceneMode()
StartCutScene("Cut41YBP")~ EXIT
END
END