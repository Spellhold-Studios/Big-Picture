BEGIN ~SOLAR~

IF ~Global("TalkedToSolar","GLOBAL",0)
~ THEN BEGIN 0
  SAY @0 
  IF ~~ THEN REPLY @1 DO ~SetGlobal("TalkedToSolar","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY @2 DO ~SetGlobal("TalkedToSolar","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY @3 DO ~SetGlobal("TalkedToSolar","GLOBAL",1)
~ GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @4 
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY @5 
  IF ~~ THEN REPLY @6 GOTO 1
  IF ~~ THEN REPLY @7 GOTO 1
END

IF ~~ THEN BEGIN 3
  SAY @8 
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @9 
  IF ~~ THEN REPLY @10 GOTO 7
  IF ~~ THEN REPLY @11 GOTO 5
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @13 GOTO 9
END

IF ~~ THEN BEGIN 5
  SAY @14 
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @15 
  IF ~~ THEN REPLY @16 GOTO 7
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @13 GOTO 9
END

IF ~~ THEN BEGIN 7
  SAY @17 
  IF ~~ THEN REPLY @18 GOTO 10
END

IF ~~ THEN BEGIN 8
  SAY @19 
  IF ~~ THEN REPLY @20 GOTO 7
  IF ~~ THEN REPLY @11 GOTO 5
  IF ~~ THEN REPLY @21 GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @22 
  IF ~~ THEN REPLY @23 GOTO 7
  IF ~~ THEN REPLY @24 GOTO 5
  IF ~~ THEN REPLY @25 GOTO 8
END

IF ~~ THEN BEGIN 10
  SAY @26 
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY @27 
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @28 
  IF ~~ THEN REPLY @29 GOTO 13
  IF ~~ THEN REPLY @30 GOTO 13
  IF ~~ THEN REPLY @31 GOTO 15
  IF ~~ THEN REPLY @32 GOTO 16
END

IF ~~ THEN BEGIN 13
  SAY @33 
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY @34 
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("cut205b")
~ EXIT
END

IF ~~ THEN BEGIN 15
  SAY @35 
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 16
  SAY @36 
  IF ~~ THEN GOTO 13
END

IF ~Global("TalkedToSolar","GLOBAL",1)
~ THEN BEGIN 17
  SAY @37 
  IF ~~ THEN REPLY @38 DO ~SetGlobal("TalkedToSolar","GLOBAL",2)
~ GOTO 18
  IF ~~ THEN REPLY @39 DO ~SetGlobal("TalkedToSolar","GLOBAL",2)
~ GOTO 18
  IF ~~ THEN REPLY @40 DO ~SetGlobal("TalkedToSolar","GLOBAL",2)
~ GOTO 19
  IF ~~ THEN REPLY @41 DO ~SetGlobal("TalkedToSolar","GLOBAL",2)
~ GOTO 19
END

IF ~~ THEN BEGIN 18
  SAY @42 
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19
  SAY @43 
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY @44 
  IF ~~ THEN REPLY @45 GOTO 21
  IF ~~ THEN REPLY @46 GOTO 22
END

IF ~~ THEN BEGIN 21
  SAY @47 
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22
  SAY @48 
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23
  SAY @49 
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24
  SAY @50 
  IF ~~ THEN REPLY @51 GOTO 25
  IF ~~ THEN REPLY @52 DO ~IncrementGlobal("Bhaal25Dream1","GLOBAL",-1)
~ GOTO 25
END

IF ~~ THEN BEGIN 25
  SAY @53 
  IF ~OR(2)
Race(Player1,DWARF)
Race(Player1,GNOME)
~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("cut217b2")
~ EXIT
  IF ~OR(2)
Race(Player1,ELF)
Race(Player1,HALF_ELF)
~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("cut217b3")
~ EXIT
  IF ~Race(Player1,HALFLING)
~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("cut217b4")
~ EXIT
  IF ~!Race(Player1,DWARF)
!Race(Player1,GNOME)
!Race(Player1,ELF)
!Race(Player1,HALF_ELF)
!Race(Player1,HALFLING)
~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("cut217b1")
~ EXIT
END

IF ~Global("TalkedToSolar","GLOBAL",2)
~ THEN BEGIN 26
  SAY @54 
  IF ~~ THEN REPLY @55 DO ~SetGlobal("TalkedToSolar","GLOBAL",3)
IncrementGlobal("Bhaal25Dream1","GLOBAL",-1)
~ GOTO 27
  IF ~~ THEN REPLY @56 DO ~SetGlobal("TalkedToSolar","GLOBAL",3)
IncrementGlobal("Bhaal25Dream1","GLOBAL",-1)
~ GOTO 27
  IF ~~ THEN REPLY @57 DO ~SetGlobal("TalkedToSolar","GLOBAL",3)
IncrementGlobal("Bhaal25Dream1","GLOBAL",1)
~ GOTO 27
  IF ~~ THEN REPLY @58 DO ~SetGlobal("TalkedToSolar","GLOBAL",3)
IncrementGlobal("Bhaal25Dream1","GLOBAL",1)
~ GOTO 27
  IF ~~ THEN REPLY @59 DO ~SetGlobal("TalkedToSolar","GLOBAL",3)
~ GOTO 27
END

IF ~~ THEN BEGIN 27
  SAY @60 
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 28
  SAY @61 
  IF ~~ THEN REPLY @62 DO ~IncrementGlobal("Bhaal25Dream1","GLOBAL",-1)
~ GOTO 29
  IF ~~ THEN REPLY @63 DO ~IncrementGlobal("Bhaal25Dream1","GLOBAL",-2)
~ GOTO 29
  IF ~~ THEN REPLY @64 GOTO 29
  IF ~OR(2)
!Dead("Sarevok")
InPartyAllowDead("Sarevok")
~ THEN REPLY @65 DO ~IncrementGlobal("Bhaal25Dream1","GLOBAL",1)
~ GOTO 29
  IF ~~ THEN REPLY @66 DO ~IncrementGlobal("Bhaal25Dream1","GLOBAL",2)
~ GOTO 29
END

IF ~~ THEN BEGIN 29
  SAY @67 
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30
  SAY @68 
  IF ~GlobalGT("Bhaal25Dream1","GLOBAL",0)
~ THEN DO ~AddXP2DA("Solar2")
StartCutSceneMode()
StartCutScene("cut217f")
~ JOURNAL @69 FLAGS 128 EXIT
  IF ~GlobalLT("Bhaal25Dream1","GLOBAL",1)
~ THEN DO ~AddXP2DA("Solar2")
StartCutSceneMode()
StartCutScene("cut217g")
~ JOURNAL @69 FLAGS 128 EXIT
END

IF ~Global("TalkedToSolar","GLOBAL",3)
~ THEN BEGIN 31
  SAY @70 
  IF ~~ THEN REPLY @71 DO ~SetGlobal("TalkedToSolar","GLOBAL",4)
~ GOTO 32
  IF ~~ THEN REPLY @72 DO ~SetGlobal("TalkedToSolar","GLOBAL",4)
~ GOTO 35
  IF ~~ THEN REPLY @73 DO ~SetGlobal("TalkedToSolar","GLOBAL",4)
~ GOTO 32
  IF ~~ THEN REPLY @74 DO ~SetGlobal("TalkedToSolar","GLOBAL",4)
~ GOTO 32
END

IF ~~ THEN BEGIN 32
  SAY @75 
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33
  SAY @76 
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 34
  SAY @77 
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 35
  SAY @78 
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 36
  SAY @79 
  IF ~~ THEN GOTO 37
END

IF ~~ THEN BEGIN 37
  SAY @80 
  IF ~~ THEN DO ~AddXP2DA("Solar2")
StartCutSceneMode()
StartCutScene("cut234b")
~ EXIT
END

IF ~~ THEN BEGIN 38
  SAY @81 
  IF ~~ THEN REPLY @82 DO ~IncrementGlobal("Bhaal25Dream2","GLOBAL",-2)
~ GOTO 39
  IF ~~ THEN REPLY @83 DO ~IncrementGlobal("Bhaal25Dream2","GLOBAL",-1)
~ GOTO 40
  IF ~~ THEN REPLY @84 GOTO 41
  IF ~~ THEN REPLY @85 DO ~IncrementGlobal("Bhaal25Dream2","GLOBAL",-1)
~ GOTO 40
  IF ~~ THEN REPLY @86 DO ~IncrementGlobal("Bhaal25Dream2","GLOBAL",2)
~ GOTO 42
END

IF ~~ THEN BEGIN 39
  SAY @87 
  IF ~~ THEN EXTERN ~DREAMPC~ 1
END

IF ~~ THEN BEGIN 40
  SAY @88 
  IF ~~ THEN EXTERN ~DREAMPC~ 1
END

IF ~~ THEN BEGIN 41
  SAY @89 
  IF ~~ THEN EXTERN ~DREAMPC~ 1
END

IF ~~ THEN BEGIN 42
  SAY @90 
  IF ~~ THEN EXTERN ~DREAMPC~ 1
END

IF ~~ THEN BEGIN 43
  SAY @91 
  IF ~~ THEN EXTERN ~DREAMPC~ 2
END

IF ~~ THEN BEGIN 44
  SAY @92 
  IF ~~ THEN REPLY @93 GOTO 45
  IF ~~ THEN REPLY @94 GOTO 46
  IF ~~ THEN REPLY @95 GOTO 46
END

IF ~~ THEN BEGIN 45
  SAY @96 
  IF ~~ THEN GOTO 47
END

IF ~~ THEN BEGIN 46
  SAY @97 
  IF ~~ THEN GOTO 47
END

IF ~~ THEN BEGIN 47
  SAY @98 
  IF ~~ THEN REPLY @99 FLAGS 128 GOTO 48
  IF ~~ THEN REPLY @100 DO ~IncrementGlobal("Bhaal25Dream2","GLOBAL",-1)
~ GOTO 48
  IF ~~ THEN REPLY @101 DO ~IncrementGlobal("Bhaal25Dream2","GLOBAL",-2)
~ GOTO 48
  IF ~~ THEN REPLY @102 DO ~IncrementGlobal("Bhaal25Dream2","GLOBAL",2)
~ GOTO 48
  IF ~~ THEN REPLY @103 DO ~IncrementGlobal("Bhaal25Dream2","GLOBAL",1)
~ GOTO 48
  IF ~~ THEN REPLY @104 DO ~IncrementGlobal("Bhaal25Dream2","GLOBAL",-1)
~ GOTO 48
  IF ~~ THEN REPLY @105 DO ~IncrementGlobal("Bhaal25Dream2","GLOBAL",-1)
~ GOTO 48
END

IF ~~ THEN BEGIN 48
  SAY @106 
  IF ~GlobalGT("Bhaal25Dream2","GLOBAL",0)
~ THEN DO ~AddXP2DA("Solar2")
StartCutSceneMode()
StartCutScene("cut234c")
~ JOURNAL @107 FLAGS 128 EXIT
  IF ~GlobalLT("Bhaal25Dream2","GLOBAL",1)
~ THEN DO ~AddXP2DA("Solar2")
StartCutSceneMode()
StartCutScene("cut234d")
~ JOURNAL @107 FLAGS 128 EXIT
END

IF ~Global("TalkedToSolar","GLOBAL",4)
~ THEN BEGIN 49
  SAY @108 
  IF ~~ THEN REPLY @109 DO ~SetGlobal("TalkedToSolar","GLOBAL",5)
~ GOTO 50
  IF ~~ THEN REPLY @110 DO ~SetGlobal("TalkedToSolar","GLOBAL",5)
IncrementGlobal("Bhaal25Dream3","GLOBAL",-1)
~ GOTO 50
  IF ~~ THEN REPLY @111 DO ~SetGlobal("TalkedToSolar","GLOBAL",5)
IncrementGlobal("Bhaal25Dream3","GLOBAL",-2)
~ GOTO 50
  IF ~~ THEN REPLY @112 DO ~SetGlobal("TalkedToSolar","GLOBAL",5)
IncrementGlobal("Bhaal25Dream3","GLOBAL",1)
~ GOTO 50
  IF ~~ THEN REPLY @113 DO ~SetGlobal("TalkedToSolar","GLOBAL",5)
IncrementGlobal("Bhaal25Dream3","GLOBAL",2)
~ GOTO 50
END

IF ~~ THEN BEGIN 50
  SAY @114 
  IF ~~ THEN GOTO 51
END

IF ~~ THEN BEGIN 51
  SAY @115 
  IF ~~ THEN GOTO 52
END

IF ~~ THEN BEGIN 52
  SAY @116 
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("cut235b")
~ EXIT
END

IF ~~ THEN BEGIN 53
  SAY @117 
  IF ~~ THEN EXTERN ~YAGA02~ 1
END

IF ~~ THEN BEGIN 54
  SAY @118 
  IF ~~ THEN EXTERN ~YAGA02~ 2
END

IF ~~ THEN BEGIN 55
  SAY @119 
  IF ~~ THEN EXTERN ~YAGA02~ 6
END

IF ~~ THEN BEGIN 56
  SAY @120 
  IF ~~ THEN REPLY @121 EXTERN ~YAGA02~ 7
  IF ~~ THEN REPLY @122 DO ~IncrementGlobal("Bhaal25Dream3","GLOBAL",-1)
~ EXTERN ~YAGA02~ 7
  IF ~~ THEN REPLY @123 DO ~IncrementGlobal("Bhaal25Dream3","GLOBAL",1)
~ EXTERN ~YAGA02~ 7
  IF ~~ THEN REPLY @124 EXTERN ~YAGA02~ 7
END

IF ~~ THEN BEGIN 57
  SAY @125 
  IF ~~ THEN REPLY @126 DO ~IncrementGlobal("Bhaal25Dream3","GLOBAL",1)
~ GOTO 58
  IF ~~ THEN REPLY @127 DO ~IncrementGlobal("Bhaal25Dream3","GLOBAL",-2)
~ GOTO 58
  IF ~~ THEN REPLY @128 GOTO 58
  IF ~~ THEN REPLY @129 DO ~IncrementGlobal("Bhaal25Dream3","GLOBAL",2)
~ GOTO 58
  IF ~~ THEN REPLY @130 DO ~IncrementGlobal("Bhaal25Dream3","GLOBAL",-2)
~ GOTO 58
  IF ~~ THEN REPLY @131 DO ~IncrementGlobal("Bhaal25Dream3","GLOBAL",-2)
~ GOTO 58
END

IF ~~ THEN BEGIN 58
  SAY @132 
  IF ~GlobalGT("Bhaal25Dream3","GLOBAL",0)
~ THEN DO ~AddXP2DA("Solar2")
StartCutSceneMode()
StartCutScene("cut235e")
~ JOURNAL @133 FLAGS 128 EXIT
  IF ~GlobalLT("Bhaal25Dream3","GLOBAL",1)
~ THEN DO ~AddXP2DA("Solar2")
StartCutSceneMode()
StartCutScene("cut235f")
~ JOURNAL @133 FLAGS 128 EXIT
END

IF ~Global("BalthazarFights","GLOBAL",0)
Global("TalkedToSolar","GLOBAL",5)
~ THEN BEGIN 59
  SAY @134 
  IF ~~ THEN REPLY @135 DO ~SetGlobal("TalkedToSolar","GLOBAL",6)
~ GOTO 60
  IF ~~ THEN REPLY @136 DO ~SetGlobal("TalkedToSolar","GLOBAL",6)
~ GOTO 61
  IF ~~ THEN REPLY @137 DO ~SetGlobal("TalkedToSolar","GLOBAL",6)
~ GOTO 61
  IF ~~ THEN REPLY @138 DO ~SetGlobal("TalkedToSolar","GLOBAL",6)
~ GOTO 61
END

IF ~~ THEN BEGIN 60
  SAY @139 
  IF ~~ THEN GOTO 61
END

IF ~~ THEN BEGIN 61
  SAY @140 
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("cut243b")
~ EXIT
END

IF ~~ THEN BEGIN 62
  SAY @141 
  IF ~~ THEN EXTERN ~MELISS01~ 1
END

IF ~~ THEN BEGIN 63
  SAY @142 
  IF ~~ THEN EXTERN ~MELISS01~ 2
END

IF ~~ THEN BEGIN 64
  SAY @143 
  IF ~~ THEN EXTERN ~MELISS01~ 3
END

IF ~~ THEN BEGIN 65
  SAY @144 
  IF ~~ THEN GOTO 66
END

IF ~~ THEN BEGIN 66
  SAY @145 
  IF ~~ THEN GOTO 67
END

IF ~~ THEN BEGIN 67
  SAY @146 
  IF ~GlobalGT("Bhaal25Dream5","GLOBAL",0)
~ THEN DO ~ClearAllActions()
AddXP2DA("Solar2")
StartCutSceneMode()
StartCutScene("cut243e")
~ JOURNAL @147 FLAGS 128 EXIT
  IF ~GlobalLT("Bhaal25Dream5","GLOBAL",1)
~ THEN DO ~ClearAllActions()
AddXP2DA("Solar2")
StartCutSceneMode()
StartCutScene("cut243f")
~ JOURNAL @147 FLAGS 128 EXIT
END

IF ~Global("TalkedToSolar","GLOBAL",5)
Global("BalthazarFights","GLOBAL",1)
~ THEN BEGIN 68
  SAY @148
  IF ~~ THEN REPLY @149 DO ~SetGlobal("TalkedToSolar","GLOBAL",6)
~ GOTO 69
END

IF ~~ THEN BEGIN 69
  SAY @150
  IF ~~ THEN REPLY @151 GOTO 70
  IF ~~ THEN REPLY @152 GOTO 70
  IF ~~ THEN REPLY @153 GOTO 70
  IF ~~ THEN REPLY @154 GOTO 70
END

IF ~~ THEN BEGIN 70
  SAY @155
  IF ~~ THEN GOTO 60
END
