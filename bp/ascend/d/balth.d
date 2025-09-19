// creator  : weidu (version 169)
// argument : BPV170/DLG/BALTH.DLG
// game     : .
// source   : BPV170/DLG/BALTH.DLG
// dialog   : ./dialog.tlk
// dialogF  : (none)

BEGIN ~BALTH~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 12 even though they appear after this state */
~Global("METBAL","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @0  /* #66489 */
  IF ~~ THEN REPLY @1 /* #66490 */ DO ~SetGlobal("METBAL","GLOBAL",1)~ GOTO 1
  IF ~~ THEN REPLY @2 /* #66491 */ DO ~SetGlobal("METBAL","GLOBAL",1)~ GOTO 1
  IF ~~ THEN REPLY @3 /* #66492 */ DO ~SetGlobal("METBAL","GLOBAL",1)~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.2 0.1 0.0
  SAY @4  /* #66493 */
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @5  /* #66494 */
  IF ~~ THEN REPLY @6 /* #66495 */ GOTO 4
  IF ~~ THEN REPLY @7 /* #66496 */ GOTO 5
  IF ~~ THEN REPLY @8 /* #66497 */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.2
  SAY @9 /* #66498 */
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY @10 /* #66499 */
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY @11 /* #66500 */
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0 4.0 3.0
  SAY @12 /* #66501 */
  IF ~~ THEN DO ~RevealAreaOnMap("AR6000")
RevealAreaOnMap("AR6100")~ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @13 /* #66502 */
  IF ~~ THEN REPLY @14 /* #66503 */ GOTO 8
  IF ~~ THEN REPLY @15 /* #66504 */ GOTO 9
  IF ~~ THEN REPLY @16 /* #66505 */ GOTO 10
  IF ~~ THEN REPLY @17 /* #66506 */ GOTO 11
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @18 /* #66507 */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("cutamk02")~ UNSOLVED_JOURNAL @19 /* #73859 */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY @20 /* #66508 */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("cutamk02")~ UNSOLVED_JOURNAL @19 /* #73859 */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.2
  SAY @21 /* #66509 */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("cutamk02")~ UNSOLVED_JOURNAL @19 /* #73859 */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.3
  SAY @22 /* #66510 */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("cutamk02")~ UNSOLVED_JOURNAL @19 /* #73859 */ EXIT
END

IF WEIGHT #0 ~OR(2)
Global("Enclave","GLOBAL",2)
Global("METBAL","GLOBAL",1)~ THEN BEGIN 12 // from:
  SAY @23  /* #67694 */
  IF ~~ THEN REPLY @24 /* #67695 */ GOTO 13
  IF ~~ THEN REPLY @25 /* #67696 */ GOTO 15
  IF ~~ THEN REPLY @26 /* #67697 */ GOTO 14
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY @27 /* #67698 */
  IF ~~ THEN REPLY @28 /* #67699 */ GOTO 15
END

IF ~~ THEN BEGIN 14 // from: 12.2
  SAY @29 /* #67700 */
  IF ~~ THEN REPLY @30 /* #67701 */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0 13.0 12.1
  SAY @31 /* #67702 */
  IF ~~ THEN REPLY @32 /* #67703 */ GOTO 16
  IF ~~ THEN REPLY @33 /* #67705 */ GOTO 17
  IF ~~ THEN REPLY @34 /* #67706 */ GOTO 17
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY @35 /* #67704 */
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0 15.2 15.1
  SAY @36  /* #67707 */
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY @37  /* #67708 */
  IF ~~ THEN REPLY @38 /* #67709 */ GOTO 19
  IF ~~ THEN REPLY @39 /* #67710 */ GOTO 19
  IF ~~ THEN REPLY @40 /* #67711 */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.2 18.1 18.0
  SAY @41 /* #86087 */
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY @42  /* #67713 */
  IF ~~ THEN REPLY @43 /* #67714 */ GOTO 21
  IF ~~ THEN REPLY @44 /* #67715 */ GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.1 20.0
  SAY @45 /* #67716 */
  IF ~~ THEN REPLY @46 /* #67717 */ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY @47 /* #67724 */
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY @48 /* #67725 */
  IF ~~ THEN REPLY @49 /* #67726 */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY @50  /* #67727 */
  IF ~Alignment(Player1,MASK_GOOD)
ReputationGT(Player1,18)~ THEN REPLY @51 /* #67730 */ GOTO 31
  IF ~!Alignment(Player1,MASK_GOOD)
ReputationGT(Player1,18)~ THEN REPLY @51 /* #67730 */ GOTO 32
  IF ~Alignment(Player1,MASK_GOOD)
!ReputationGT(Player1,18)~ THEN REPLY @51 /* #67730 */ GOTO 33
  IF ~!Alignment(Player1,MASK_GOOD)
!ReputationGT(Player1,18)
ReputationGT(Player1,6)~ THEN REPLY @51 /* #67730 */ GOTO 34
  IF ~~ THEN REPLY @52 /* #67731 */ GOTO 35
  IF ~~ THEN REPLY @53 /* #86156 */ GOTO 36
  IF ~~ THEN REPLY @54 /* #67733 */ GOTO 37
  IF ~Alignment(Player1,MASK_EVIL)
!ReputationGT(Player1,6)~ THEN REPLY @51 /* #67730 */ GOTO 38
END

IF ~~ THEN BEGIN 25 // from: 30.2 30.1 30.0
  SAY @55  /* #67734 */
  IF ~~ THEN DO ~Shout(125)
Enemy()
EraseJournalEntry(67720)
EraseJournalEntry(67721)
EraseJournalEntry(67722)
EraseJournalEntry(67723)
EraseJournalEntry(66357)~ SOLVED_JOURNAL @56 /* #67747 */ EXIT
END

IF ~~ THEN BEGIN 26 // from:
  SAY @57 /* #67735 */
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 27 // from:
  SAY @58 /* #67736 */
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.0 26.0
  SAY @59  /* #67737 */
  IF ~~ THEN REPLY @60 /* #67738 */ GOTO 29
  IF ~~ THEN REPLY @61 /* #67739 */ GOTO 29
  IF ~~ THEN REPLY @62 /* #67740 */ GOTO 29
  IF ~~ THEN REPLY @63 /* #67741 */ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.3 28.2 28.1 28.0
  SAY @64 /* #67742 */
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY @65  /* #67743 */
  IF ~~ THEN REPLY @66 /* #67744 */ GOTO 25
  IF ~~ THEN REPLY @67 /* #67745 */ GOTO 25
  IF ~~ THEN REPLY @68 /* #67746 */ GOTO 25
END

IF ~~ THEN BEGIN 31 // from: 24.0
  SAY @69 /* #86088 */
  IF ~~ THEN DO ~IncrementGlobal("ConvinceBalth","GLOBAL",2)~ GOTO 39
END

IF ~~ THEN BEGIN 32 // from: 24.1
  SAY @70 /* #86089 */
  IF ~~ THEN DO ~IncrementGlobal("ConvinceBalth","GLOBAL",1)~ GOTO 39
END

IF ~~ THEN BEGIN 33 // from: 24.2
  SAY @71 /* #86090 */
  IF ~~ THEN DO ~IncrementGlobal("ConvinceBalth","GLOBAL",0)~ GOTO 40
END

IF ~~ THEN BEGIN 34 // from: 24.3
  SAY @72 /* #86091 */
  IF ~~ THEN DO ~IncrementGlobal("ConvinceBalth","GLOBAL",-1)~ GOTO 40
END

IF ~~ THEN BEGIN 35 // from: 24.4
  SAY @73 /* #86092 */
  IF ~~ THEN DO ~IncrementGlobal("ConvinceBalth","GLOBAL",-1)~ GOTO 39
END

IF ~~ THEN BEGIN 36 // from: 24.5
  SAY @74 /* #86093 */
  IF ~~ THEN DO ~IncrementGlobal("ConvinceBalth","GLOBAL",-2)~ GOTO 40
END

IF ~~ THEN BEGIN 37 // from: 24.6
  SAY @75 /* #86094 */
  IF ~~ THEN DO ~IncrementGlobal("ConvinceBalth","GLOBAL",-2)~ GOTO 40
END

IF ~~ THEN BEGIN 38 // from: 24.7
  SAY @76 /* #86095 */
  IF ~~ THEN DO ~IncrementGlobal("ConvinceBalth","GLOBAL",-3)~ GOTO 41
END

IF ~~ THEN BEGIN 39 // from: 41.0 35.0 32.0 31.0
  SAY @77 /* #86096 */
  IF ~~ THEN REPLY @78 /* #86157 */ GOTO 42
  IF ~~ THEN REPLY @79 /* #86158 */ GOTO 95
  IF ~~ THEN REPLY @80 /* #86159 */ DO ~IncrementGlobal("ConvinceBalth","GLOBAL",1)~ GOTO 97
  IF ~~ THEN REPLY @81 /* #86160 */ DO ~IncrementGlobal("ConvinceBalth","GLOBAL",-1)~ GOTO 99
  IF ~~ THEN REPLY @82 /* #86161 */ DO ~IncrementGlobal("ConvinceBalth","GLOBAL",-2)~ GOTO 100
END

IF ~~ THEN BEGIN 40 // from: 37.0 36.0 34.0 33.0
  SAY @83 /* #86097 */
  IF ~~ THEN REPLY @78 /* #86157 */ GOTO 42
  IF ~~ THEN REPLY @79 /* #86158 */ GOTO 95
  IF ~~ THEN REPLY @80 /* #86159 */ DO ~IncrementGlobal("ConvinceBalth","GLOBAL",1)~ GOTO 97
  IF ~~ THEN REPLY @81 /* #86160 */ DO ~IncrementGlobal("ConvinceBalth","GLOBAL",-1)~ GOTO 99
  IF ~~ THEN REPLY @82 /* #86161 */ DO ~IncrementGlobal("ConvinceBalth","GLOBAL",-2)~ GOTO 100
END

IF ~~ THEN BEGIN 41 // from: 38.0
  SAY @84 /* #86098 */
  IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 42 // from: 40.0 39.0
  SAY @85 /* #86099 */
  IF ~~ THEN GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY @86 /* #86100 */
  IF ~!Alignment(Player1,MASK_EVIL)~ THEN DO ~IncrementGlobal("ConvinceBalth","GLOBAL",1)~ GOTO 44
  IF ~Alignment(Player1,MASK_EVIL)~ THEN DO ~IncrementGlobal("ConvinceBalth","GLOBAL",-1)~ GOTO 94
END

IF ~~ THEN BEGIN 44 // from: 100.0 99.0 98.0 96.0 43.0
  SAY @87 /* #86101 */
  IF ~Global("WhatBecomesMelissan","LOCALS",0)~ THEN REPLY @88 /* #86162 */ DO ~SetGlobal("WhatBecomesMelissan","LOCALS",1)~ GOTO 45
  IF ~Global("DontHaveToDoThis","LOCALS",0)~ THEN REPLY @89 /* #86163 */ DO ~SetGlobal("DontHaveToDoThis","LOCALS",1)~ GOTO 71
  IF ~Global("Righteousness","LOCALS",0)~ THEN REPLY @90 /* #86164 */ DO ~SetGlobal("Righteousness","LOCALS",1)~ GOTO 84
  IF ~~ THEN REPLY @91 /* #86165 */ GOTO 93
END

IF ~~ THEN BEGIN 45 // from: 94.0 49.0 44.0
  SAY @92 /* #86102 */
  IF ~~ THEN REPLY @93 /* #86166 */ GOTO 46
  IF ~CheckStatGT(Player1,8,WIS)~ THEN REPLY @94 /* #86167 */ GOTO 62
  IF ~~ THEN REPLY @95 /* #86168 */ GOTO 66
  IF ~~ THEN REPLY @96 /* #86169 */ DO ~IncrementGlobal("ConvinceBalth","GLOBAL",-2)~ GOTO 69
  IF ~~ THEN REPLY @97 /* #86170 */ DO ~IncrementGlobal("ConvinceBalth","GLOBAL",-1)~ GOTO 70
  IF ~~ THEN REPLY @98 /* #86171 */ GOTO 93
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY @99 /* #86103 */
  IF ~OR(2)
Alignment(Player1,MASK_EVIL)
CheckStatLT(Player1,16,CHR)~ THEN DO ~IncrementGlobal("ConvinceBalth","GLOBAL",-1)~ GOTO 47
  IF ~!Alignment(Player1,MASK_EVIL)
CheckStatGT(Player1,15,CHR)~ THEN DO ~IncrementGlobal("ConvinceBalth","GLOBAL",1)~ GOTO 61
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY @100 /* #86104 */
  IF ~!GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO 48
  IF ~GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO 60
END

IF ~~ THEN BEGIN 48 // from: 92.0 91.0 89.0 88.0 87.0 85.0 83.0 82.0 81.0 80.0 78.0 77.0 76.0 74.0 73.0 70.0 69.0 68.0 67.0 65.0 64.0 63.0 61.0 47.0
  SAY @101 /* #36427 */
  IF ~Global("WhatBecomesMelissan","LOCALS",1)
Global("DontHaveToDoThis","LOCALS",0)
Global("Righteousness","LOCALS",0)~ THEN GOTO 49
  IF ~Global("WhatBecomesMelissan","LOCALS",0)
Global("DontHaveToDoThis","LOCALS",1)
Global("Righteousness","LOCALS",0)~ THEN GOTO 49
  IF ~Global("WhatBecomesMelissan","LOCALS",0)
Global("DontHaveToDoThis","LOCALS",0)
Global("Righteousness","LOCALS",1)~ THEN GOTO 49
  IF ~Global("WhatBecomesMelissan","LOCALS",1)
Global("DontHaveToDoThis","LOCALS",1)
Global("Righteousness","LOCALS",0)~ THEN GOTO 50
  IF ~Global("WhatBecomesMelissan","LOCALS",1)
Global("DontHaveToDoThis","LOCALS",0)
Global("Righteousness","LOCALS",1)~ THEN GOTO 50
  IF ~Global("WhatBecomesMelissan","LOCALS",0)
Global("DontHaveToDoThis","LOCALS",1)
Global("Righteousness","LOCALS",1)~ THEN GOTO 50
END

IF ~~ THEN BEGIN 49 // from: 48.2 48.1 48.0
  SAY @102 /* #86105 */
  IF ~Global("WhatBecomesMelissan","LOCALS",0)~ THEN REPLY @88 /* #86162 */ DO ~SetGlobal("WhatBecomesMelissan","LOCALS",1)~ GOTO 45
  IF ~Global("DontHaveToDoThis","LOCALS",0)~ THEN REPLY @89 /* #86163 */ DO ~SetGlobal("DontHaveToDoThis","LOCALS",1)~ GOTO 71
  IF ~Global("Righteousness","LOCALS",0)~ THEN REPLY @90 /* #86164 */ DO ~SetGlobal("Righteousness","LOCALS",1)~ GOTO 84
  IF ~~ THEN REPLY @103 /* #86172 */ GOTO 93
END

IF ~~ THEN BEGIN 50 // from: 48.5 48.4 48.3
  SAY @104 /* #86106 */
  IF ~GlobalGT("ConvinceBalth","GLOBAL",3)~ THEN REPLY @105 /* #86173 */ GOTO 51
  IF ~!GlobalGT("ConvinceBalth","GLOBAL",3)~ THEN REPLY @105 /* #86173 */ GOTO 54
  IF ~GlobalGT("ConvinceBalth","GLOBAL",0)~ THEN REPLY @106 /* #86174 */ GOTO 55
  IF ~!GlobalGT("ConvinceBalth","GLOBAL",0)~ THEN REPLY @106 /* #86174 */ GOTO 57
  IF ~~ THEN REPLY @107 /* #86175 */ GOTO 57
  IF ~~ THEN REPLY @108 /* #86176 */ GOTO 59
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY @109 /* #86107 */
  IF ~~ THEN GOTO 52
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY @110 /* #86108 */
  IF ~~ THEN GOTO 53
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY @111 /* #86109 */
  IF ~~ THEN DO ~SetGlobal("BalthazarFights","GLOBAL",1)
ActionOverride("balelit1",EscapeArea())
ActionOverride("balelit2",EscapeArea())
ActionOverride("balelit3",EscapeArea())
ActionOverride("balelit4",EscapeArea())
EraseJournalEntry(67720)
EraseJournalEntry(67721)
EraseJournalEntry(67722)
EraseJournalEntry(67723)
EraseJournalEntry(66357)
ReallyForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END

IF ~~ THEN BEGIN 54 // from: 50.1
  SAY @112 /* #86110 */
  IF ~GlobalGT("ConvinceBalth","GLOBAL",0)~ THEN GOTO 55
  IF ~!GlobalGT("ConvinceBalth","GLOBAL",0)~ THEN GOTO 58
END

IF ~~ THEN BEGIN 55 // from: 54.0 50.2
  SAY @113 /* #86111 */
  IF ~~ THEN REPLY @114 /* #86177 */ GOTO 56
  IF ~~ THEN REPLY @115 /* #86178 */ GOTO 57
  IF ~~ THEN REPLY @116 /* #86179 */ GOTO 57
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY @117 /* #86112 */
  IF ~~ THEN DO ~ActionOverride("balelit1",EscapeArea())
ActionOverride("balelit2",EscapeArea())
ActionOverride("balelit3",EscapeArea())
ActionOverride("balelit4",EscapeArea())
EraseJournalEntry(67720)
EraseJournalEntry(67721)
EraseJournalEntry(67722)
EraseJournalEntry(67723)
EraseJournalEntry(66357)
Kill(Myself)~ EXIT
END

IF ~~ THEN BEGIN 57 // from: 55.2 55.1 50.4 50.3
  SAY @118 /* #86113 */
  IF ~~ THEN DO ~Shout(125)
Enemy()
EraseJournalEntry(67720)
EraseJournalEntry(67721)
EraseJournalEntry(67722)
EraseJournalEntry(67723)
EraseJournalEntry(66357)~ EXIT
END

IF ~~ THEN BEGIN 58 // from: 54.1
  SAY @119 /* #86114 */
  IF ~~ THEN DO ~Shout(125)
Enemy()
EraseJournalEntry(67720)
EraseJournalEntry(67721)
EraseJournalEntry(67722)
EraseJournalEntry(67723)
EraseJournalEntry(66357)~ EXIT
END

IF ~~ THEN BEGIN 59 // from: 50.5
  SAY @120 /* #86115 */
  IF ~~ THEN DO ~Shout(125)
Enemy()
EraseJournalEntry(67720)
EraseJournalEntry(67721)
EraseJournalEntry(67722)
EraseJournalEntry(67723)
EraseJournalEntry(66357)~ EXIT
END

IF ~~ THEN BEGIN 60 // from: 92.1 91.1 89.1 88.1 87.1 85.1 83.1 82.1 81.1 80.1 78.1 77.1 76.1 74.1 73.1 70.1 69.1 68.1 67.1 65.1 64.1 63.1 61.1 47.1
  SAY @121 /* #86116 */
  IF ~~ THEN DO ~Shout(125)
Enemy()
EraseJournalEntry(67720)
EraseJournalEntry(67721)
EraseJournalEntry(67722)
EraseJournalEntry(67723)
EraseJournalEntry(66357)~ EXIT
END

IF ~~ THEN BEGIN 61 // from: 46.1
  SAY @122 /* #86117 */
  IF ~!GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO 48
  IF ~GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO 60
END

IF ~~ THEN BEGIN 62 // from: 45.1
  SAY @123 /* #69176 */
  IF ~CheckStatLT(Player1,16,WIS)~ THEN REPLY @124 /* #86180 */ DO ~IncrementGlobal("ConvinceBalth","GLOBAL",-1)~ GOTO 63
  IF ~CheckStatGT(Player1,15,WIS)
CheckStatLT(Player1,19,WIS)~ THEN REPLY @125 /* #86181 */ DO ~IncrementGlobal("ConvinceBalth","GLOBAL",1)~ GOTO 64
  IF ~CheckStatGT(Player1,18,WIS)~ THEN REPLY @126 /* #86182 */ DO ~IncrementGlobal("ConvinceBalth","GLOBAL",2)~ GOTO 65
END

IF ~~ THEN BEGIN 63 // from: 62.0
  SAY @127 /* #86118 */
  IF ~!GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO 48
  IF ~GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO 60
END

IF ~~ THEN BEGIN 64 // from: 62.1
  SAY @128 /* #86119 */
  IF ~!GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO 48
  IF ~GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO 60
END

IF ~~ THEN BEGIN 65 // from: 62.2
  SAY @129 /* #86120 */
  IF ~!GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO 48
  IF ~GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO 60
END

IF ~~ THEN BEGIN 66 // from: 45.2
  SAY @130 /* #86121 */
  IF ~OR(2)
Alignment(Player1,MASK_GOOD)
ReputationGT(Player1,17)~ THEN DO ~IncrementGlobal("ConvinceBalth","GLOBAL",1)~ GOTO 67
  IF ~!Alignment(Player1,MASK_GOOD)
!ReputationGT(Player1,17)~ THEN DO ~IncrementGlobal("ConvinceBalth","GLOBAL",-1)~ GOTO 68
END

IF ~~ THEN BEGIN 67 // from: 66.0
  SAY @131 /* #86122 */
  IF ~!GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO 48
  IF ~GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO 60
END

IF ~~ THEN BEGIN 68 // from: 66.1
  SAY @132 /* #86123 */
  IF ~!GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO 48
  IF ~GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO 60
END

IF ~~ THEN BEGIN 69 // from: 45.3
  SAY @133 /* #86124 */
  IF ~!GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO 48
  IF ~GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO 60
END

IF ~~ THEN BEGIN 70 // from: 45.4
  SAY @134 /* #86125 */
  IF ~!GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO 48
  IF ~GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO 60
END

IF ~~ THEN BEGIN 71 // from: 94.1 49.1 44.1
  SAY @135 /* #86126 */
  IF ~~ THEN REPLY @136 /* #86183 */ GOTO 72
  IF ~CheckStatGT(Player1,9,WIS)~ THEN REPLY @137 /* #86184 */ GOTO 75
  IF ~~ THEN REPLY @138 /* #86185 */ GOTO 79
  IF ~~ THEN REPLY @139 /* #86186 */ DO ~IncrementGlobal("ConvinceBalth","GLOBAL",-2)~ GOTO 82
  IF ~~ THEN REPLY @140 /* #86187 */ DO ~IncrementGlobal("ConvinceBalth","GLOBAL",-1)~ GOTO 83
  IF ~~ THEN REPLY @141 /* #86188 */ GOTO 93
END

IF ~~ THEN BEGIN 72 // from: 71.0
  SAY @142 /* #86127 */
  IF ~OR(3)
Alignment(Player1,MASK_EVIL)
ReputationLT(Player1,10)
CheckStatLT(Player1,16,CHR)~ THEN DO ~IncrementGlobal("ConvinceBalth","GLOBAL",-1)~ GOTO 73
  IF ~!Alignment(Player1,MASK_EVIL)
!ReputationLT(Player1,10)
!CheckStatLT(Player1,16,CHR)~ THEN DO ~IncrementGlobal("ConvinceBalth","GLOBAL",1)~ GOTO 74
END

IF ~~ THEN BEGIN 73 // from: 72.0
  SAY @143 /* #86128 */
  IF ~!GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO 48
  IF ~GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO 60
END

IF ~~ THEN BEGIN 74 // from: 72.1
  SAY @144 /* #86129 */
  IF ~!GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO 48
  IF ~GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO 60
END

IF ~~ THEN BEGIN 75 // from: 71.1
  SAY @145 /* #86130 */
  IF ~CheckStatLT(Player1,15,WIS)~ THEN REPLY @146 /* #86189 */ DO ~IncrementGlobal("ConvinceBalth","GLOBAL",-1)~ GOTO 76
  IF ~CheckStatGT(Player1,14,WIS)
CheckStatLT(Player1,19,WIS)~ THEN REPLY @147 /* #86190 */ DO ~IncrementGlobal("ConvinceBalth","GLOBAL",1)~ GOTO 77
  IF ~CheckStatGT(Player1,18,WIS)~ THEN REPLY @148 /* #86191 */ DO ~IncrementGlobal("ConvinceBalth","GLOBAL",2)~ GOTO 78
END

IF ~~ THEN BEGIN 76 // from: 75.0
  SAY @149 /* #86131 */
  IF ~!GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO 48
  IF ~GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO 60
END

IF ~~ THEN BEGIN 77 // from: 75.1
  SAY @150 /* #86132 */
  IF ~!GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO 48
  IF ~GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO 60
END

IF ~~ THEN BEGIN 78 // from: 75.2
  SAY @151 /* #86133 */
  IF ~!GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO 48
  IF ~GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO 60
END

IF ~~ THEN BEGIN 79 // from: 71.2
  SAY @152 /* #86134 */
  IF ~CheckStatGT(Player1,16,CHR)
!Alignment(Player1,MASK_EVIL)~ THEN DO ~IncrementGlobal("ConvinceBalth","GLOBAL",1)~ GOTO 80
  IF ~OR(2)
!CheckStatGT(Player1,16,CHR)
Alignment(Player1,MASK_EVIL)~ THEN DO ~IncrementGlobal("ConvinceBalth","GLOBAL",-1)~ GOTO 81
END

IF ~~ THEN BEGIN 80 // from: 79.0
  SAY @153 /* #86135 */
  IF ~!GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO 48
  IF ~GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO 60
END

IF ~~ THEN BEGIN 81 // from: 79.1
  SAY @154 /* #86136 */
  IF ~!GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO 48
  IF ~GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO 60
END

IF ~~ THEN BEGIN 82 // from: 71.3
  SAY @155 /* #86137 */
  IF ~!GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO 48
  IF ~GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO 60
END

IF ~~ THEN BEGIN 83 // from: 71.4
  SAY @156 /* #86138 */
  IF ~!GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO 48
  IF ~GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO 60
END

IF ~~ THEN BEGIN 84 // from: 94.2 49.2 44.2
  SAY @157 /* #86139 */
  IF ~~ THEN REPLY @158 /* #86192 */ DO ~IncrementGlobal("ConvinceBalth","GLOBAL",2)
SetGlobal("Righteousness","LOCALS",1)~ GOTO 85
  IF ~~ THEN REPLY @159 /* #86193 */ DO ~SetGlobal("Righteousness","LOCALS",1)~ GOTO 86
  IF ~~ THEN REPLY @160 /* #86194 */ DO ~IncrementGlobal("ConvinceBalth","GLOBAL",-2)
SetGlobal("Righteousness","LOCALS",1)~ GOTO 89
  IF ~~ THEN REPLY @161 /* #86195 */ DO ~SetGlobal("Righteousness","LOCALS",1)~ GOTO 90
  IF ~~ THEN REPLY @162 /* #86196 */ DO ~SetGlobal("Righteousness","LOCALS",1)~ GOTO 93
END

IF ~~ THEN BEGIN 85 // from: 84.0
  SAY @163 /* #86140 */
  IF ~!GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO 48
  IF ~GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO 60
END

IF ~~ THEN BEGIN 86 // from: 84.1
  SAY @164 /* #86141 */
  IF ~!ReputationLT(Player1,11)~ THEN DO ~IncrementGlobal("ConvinceBalth","GLOBAL",1)~ GOTO 87
  IF ~ReputationLT(Player1,11)~ THEN DO ~IncrementGlobal("ConvinceBalth","GLOBAL",-1)~ GOTO 88
END

IF ~~ THEN BEGIN 87 // from: 86.0
  SAY @165 /* #86142 */
  IF ~!GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO 48
  IF ~GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO 60
END

IF ~~ THEN BEGIN 88 // from: 86.1
  SAY @166 /* #86143 */
  IF ~!GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO 48
  IF ~GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO 60
END

IF ~~ THEN BEGIN 89 // from: 84.2
  SAY @167 /* #86144 */
  IF ~!GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO 48
  IF ~GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO 60
END

IF ~~ THEN BEGIN 90 // from: 84.3
  SAY @168 /* #86145 */
  IF ~OR(2)
Alignment(Player1,MASK_GOOD)
ReputationGT(Player1,17)~ THEN DO ~IncrementGlobal("ConvinceBalth","GLOBAL",1)~ GOTO 91
  IF ~!Alignment(Player1,MASK_GOOD)
!ReputationGT(Player1,17)~ THEN DO ~IncrementGlobal("ConvinceBalth","GLOBAL",-1)~ GOTO 92
END

IF ~~ THEN BEGIN 91 // from: 90.0
  SAY @169 /* #86146 */
  IF ~!GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO 48
  IF ~GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO 60
END

IF ~~ THEN BEGIN 92 // from: 90.1
  SAY @170 /* #86147 */
  IF ~!GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO 48
  IF ~GlobalLT("ConvinceBalth","GLOBAL",-2)~ THEN GOTO 60
END

IF ~~ THEN BEGIN 93 // from: 94.3 84.4 71.5 49.3 45.5 44.3
  SAY @171 /* #86148 */
  IF ~~ THEN DO ~Shout(125)
Enemy()
EraseJournalEntry(67720)
EraseJournalEntry(67721)
EraseJournalEntry(67722)
EraseJournalEntry(67723)
EraseJournalEntry(66357)~ EXIT
END

IF ~~ THEN BEGIN 94 // from: 100.1 99.1 98.1 96.1 43.1
  SAY @172 /* #86149 */
  IF ~Global("WhatBecomesMelissan","LOCALS",0)~ THEN REPLY @88 /* #86162 */ DO ~SetGlobal("WhatBecomesMelissan","LOCALS",1)~ GOTO 45
  IF ~Global("DontHaveToDoThis","LOCALS",0)~ THEN REPLY @89 /* #86163 */ DO ~SetGlobal("DontHaveToDoThis","LOCALS",1)~ GOTO 71
  IF ~Global("Righteousness","LOCALS",0)~ THEN REPLY @90 /* #86164 */ DO ~SetGlobal("Righteousness","LOCALS",1)~ GOTO 84
  IF ~~ THEN REPLY @91 /* #86165 */ GOTO 93
END

IF ~~ THEN BEGIN 95 // from: 40.1 39.1
  SAY @173 /* #86150 */
  IF ~~ THEN GOTO 96
END

IF ~~ THEN BEGIN 96 // from: 95.0
  SAY @174 /* #86151 */
  IF ~!Alignment(Player1,MASK_EVIL)~ THEN DO ~IncrementGlobal("ConvinceBalth","GLOBAL",1)~ GOTO 44
  IF ~Alignment(Player1,MASK_EVIL)~ THEN DO ~IncrementGlobal("ConvinceBalth","GLOBAL",-1)~ GOTO 94
END

IF ~~ THEN BEGIN 97 // from: 40.2 39.2
  SAY @175 /* #86152 */
  IF ~~ THEN GOTO 98
END

IF ~~ THEN BEGIN 98 // from: 97.0
  SAY @176 /* #86153 */
  IF ~!Alignment(Player1,MASK_EVIL)~ THEN DO ~IncrementGlobal("ConvinceBalth","GLOBAL",1)~ GOTO 44
  IF ~Alignment(Player1,MASK_EVIL)~ THEN DO ~IncrementGlobal("ConvinceBalth","GLOBAL",-1)~ GOTO 94
END

IF ~~ THEN BEGIN 99 // from: 40.3 39.3
  SAY @177 /* #86154 */
  IF ~!Alignment(Player1,MASK_EVIL)~ THEN DO ~IncrementGlobal("ConvinceBalth","GLOBAL",1)~ GOTO 44
  IF ~Alignment(Player1,MASK_EVIL)~ THEN DO ~IncrementGlobal("ConvinceBalth","GLOBAL",-1)~ GOTO 94
END

IF ~~ THEN BEGIN 100 // from: 40.4 39.4
  SAY @178 /* #86155 */
  IF ~!Alignment(Player1,MASK_EVIL)~ THEN DO ~IncrementGlobal("ConvinceBalth","GLOBAL",1)~ GOTO 44
  IF ~Alignment(Player1,MASK_EVIL)~ THEN DO ~IncrementGlobal("ConvinceBalth","GLOBAL",-1)~ GOTO 94
END
