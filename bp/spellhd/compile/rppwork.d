REPLACE ~PPWORKER~

IF ~~ THEN BEGIN 26
  SAY #45081
  IF ~~ THEN DO ~SetGlobal("AsylumPlot","GLOBAL",53)
SetGlobal("BP_Lonk","GLOBAL",1)
EscapeArea()~ EXIT
END

END