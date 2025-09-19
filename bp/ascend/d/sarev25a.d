BEGIN ~SAREV25A~

IF ~Global("SarevokAlive","GLOBAL",0)
Global("TalkedToSarevok","GLOBAL",0)
InPartySlot(LastTalkedToBy,0)~ THEN BEGIN 0 // from:
  SAY @0  /* #64071 */
  IF ~!IsValidForPartyDialog("Minsc")
!IsValidForPartyDialog("Edwin")
!IsValidForPartyDialog("Jaheira")
!IsValidForPartyDialog("Imoen2")~ THEN REPLY @1 /* #64072 */ DO ~SetGlobal("TalkedToSarevok","GLOBAL",1)~ GOTO 1
  IF ~!IsValidForPartyDialog("Minsc")
!IsValidForPartyDialog("Edwin")
!IsValidForPartyDialog("Jaheira")
!IsValidForPartyDialog("Imoen2")~ THEN REPLY @2 /* #64074 */ DO ~SetGlobal("TalkedToSarevok","GLOBAL",1)~ GOTO 2
  IF ~IsValidForPartyDialog("Minsc")~ THEN EXTERN ~MINSC25J~ 4
  IF ~IsValidForPartyDialog("Edwin")~ THEN EXTERN ~EDWIN25J~ 3
  IF ~IsValidForPartyDialog("Jaheira")~ THEN EXTERN ~JAHEI25J~ 27
  IF ~IsValidForPartyDialog("Imoen2")~ THEN EXTERN ~IMOEN25J~ 26
END

IF ~~ THEN BEGIN 1 // from: 68.0 0.0
  SAY @3 /* #64236 */
  IF ~~ THEN REPLY @4 /* #22962 */ DO ~SetGlobal("TalkedToSarevok","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 68.1 0.1
  SAY @5 /* #64239 */
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0 1.1 1.0
  SAY @6 /* #64247 */
  IF ~~ THEN REPLY @7 /* #64252 */ GOTO 4
  IF ~~ THEN REPLY @8 /* #64262 */ GOTO 6
  IF ~~ THEN REPLY @9 /* #64263 */ GOTO 7
END

IF ~~ THEN BEGIN 4 // from: 7.0 6.0 3.0
  SAY @10 /* #64281 */
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @11 /* #64282 */
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY @12 /* #64286 */
  IF ~~ THEN REPLY @13 /* #64288 */ GOTO 4
  IF ~~ THEN REPLY @14 /* #64290 */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.1 3.2
  SAY @15 /* #64293 */
  IF ~~ THEN REPLY @16 /* #64294 */ GOTO 4
END

IF ~~ THEN BEGIN 8 // from: 5.0
  SAY @17 /* #64296 */
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @18 /* #64299 */
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY @19 /* #64300 */
  IF ~!IsValidForPartyDialog("Jan")
!IsValidForPartyDialog("Nalia")
!IsValidForPartyDialog("Korgan")~ THEN REPLY @20 /* #64306 */ GOTO 14
  IF ~!IsValidForPartyDialog("Jan")
!IsValidForPartyDialog("Nalia")
!IsValidForPartyDialog("Korgan")~ THEN REPLY @21 /* #64307 */ GOTO 12
  IF ~IsValidForPartyDialog("Jan")~ THEN EXTERN ~JAN25J~ 15
  IF ~IsValidForPartyDialog("Nalia")~ THEN EXTERN ~NALIA25J~ 6
  IF ~IsValidForPartyDialog("Korgan")~ THEN EXTERN ~KORGA25J~ 7
END

IF ~~ THEN BEGIN 11 // from: 19.6 13.1
  SAY @22 /* #64311 */
  IF ~~ THEN JOURNAL @23 /* #73855 */ FLAGS 128 EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY @24 /* #64329 */
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY @25 /* #64337 */
  IF ~~ THEN REPLY @26 /* #64339 */ GOTO 14
  IF ~~ THEN REPLY @27 /* #64341 */ GOTO 11
END

IF ~~ THEN BEGIN 14 // from: JAN25J:15.0 KORGA25J:7.0 NALIA25J:6.0 37.0 13.0 10.0
  SAY @28 /* #64385 */
  IF ~~ THEN DO ~SetGlobal("SarevokToldProposal","GLOBAL",1)~ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY @29 /* #64388 */
  IF ~~ THEN REPLY @30 /* #64389 */ GOTO 17
  IF ~~ THEN REPLY @31 /* #64393 */ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY @32 /* #64399 */
  IF ~~ THEN REPLY @33 /* #64405 */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0 15.0
  SAY @34 /* #64407 */
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY @35 /* #64409 */
  IF ~~ THEN GOTO 67
END

IF ~~ THEN BEGIN 19 // from: 67.0 25.0 24.0 23.0 21.0 20.0
  SAY @36 /* #64412 */
  IF ~~ THEN REPLY @37 /* #64413 */ GOTO 20
  IF ~~ THEN REPLY @38 /* #64414 */ GOTO 21
  IF ~~ THEN REPLY @39 /* #64415 */ GOTO 22
  IF ~~ THEN REPLY @40 /* #64416 */ GOTO 24
  IF ~InParty("Imoen2")
!Dead("Imoen2")
Global("ImoenGiveSoul","GLOBAL",0)~ THEN REPLY @41 /* #64417 */ GOTO 26
  IF ~OR(3)
!InParty("Imoen2")
Dead("Imoen2")
GlobalGT("ImoenGiveSoul","GLOBAL",0)~ THEN REPLY @41 /* #64418 */ GOTO 31
  IF ~~ THEN REPLY @42 /* #64419 */ GOTO 11
  IF ~~ THEN REPLY @43 /* #66353 */ GOTO 25
  IF ~~ THEN REPLY @44 /* #71037 */ GOTO 33
END

IF ~~ THEN BEGIN 20 // from: 37.4 19.0
  SAY @45 /* #64422 */
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 21 // from: 37.5 19.1
  SAY @46 /* #64439 */
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 22 // from: 37.6 19.2
  SAY @47 /* #64491 */
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY @48 /* #64493 */
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 24 // from: 37.7 19.3
  SAY @49 /* #64523 */
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 25 // from: 19.7
  SAY @50 /* #64535 */
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 26 // from: 37.8 19.4
  SAY @51 /* #64546 */
  IF ~~ THEN DO ~SetGlobal("ImoenGiveSoul","GLOBAL",1)~ EXTERN ~IMOEN25J~ 0
END

IF ~~ THEN BEGIN 27 // from: IMOEN25J:0.0
  SAY @52 /* #64548 */
  IF ~~ THEN EXTERN ~IMOEN25J~ 1
END

IF ~~ THEN BEGIN 28 // from: IMOEN25J:1.0
  SAY @53 /* #64550 */
  IF ~~ THEN EXTERN ~IMOEN25J~ 2
END

IF ~~ THEN BEGIN 29 // from: IMOEN25J:4.2 IMOEN25J:2.1 IMOEN25J:2.0 37.2 31.0
  SAY @54 /* #64577 */
  IF ~~ THEN EXTERN ~IMOEN25J~ 3
END

IF ~~ THEN BEGIN 30 // from: IMOEN25J:3.0
  SAY @55 /* #64582 */
  IF ~~ THEN DO ~SetGlobal("ImoenGiveSoul","GLOBAL",2)
SetGlobal("SarevokAlive","GLOBAL",1)
StartCutSceneMode()
StartCutScene("Cut206b")~ EXIT
END

IF ~~ THEN BEGIN 31 // from: IMOEN25J:4.1 IMOEN25J:4.0 IMOEN25J:2.2 37.9 19.5
  SAY @56 /* #64592 */
  IF ~InParty("Imoen2")
!Dead("Imoen2")
Global("ImoenGiveSoul","GLOBAL",1)~ THEN REPLY @57 /* #64614 */ GOTO 29
  IF ~~ THEN REPLY @58 /* #64617 */ GOTO 33
  IF ~~ THEN REPLY @59 /* #64620 */ GOTO 32
  IF ~~ THEN REPLY @60 /* #64622 */ GOTO 32
END

IF ~~ THEN BEGIN 32 // from: IMOEN25J:4.3 IMOEN25J:2.3 37.1 31.3 31.2
  SAY @61 /* #64623 */
  IF ~~ THEN JOURNAL @23 /* #73855 */ FLAGS 128 EXIT
END

IF ~~ THEN BEGIN 33 // from: 37.3 31.1 19.8
  SAY @62 /* #64627 */
  IF ~~ THEN DO ~SetGlobal("SarevokAlive","GLOBAL",1)
StartCutSceneMode()
StartCutScene("Cut206a")~ EXIT
END

IF ~Global("SarevokAlive","GLOBAL",0)
!InPartySlot(LastTalkedToBy,0)
!Name("Imoen2",LastTalkedToBy)~ THEN BEGIN 34 // from:
  SAY @63 /* #64635 */
  IF ~~ THEN EXIT
END

IF ~Global("SarevokAlive","GLOBAL",0)
!InPartySlot(LastTalkedToBy,0)
Name("Imoen2",LastTalkedToBy)~ THEN BEGIN 35 // from:
  SAY @64  /* #64638 */
  IF ~~ THEN EXTERN ~IMOEN25J~ 5
END

IF ~~ THEN BEGIN 36 // from: IMOEN25J:5.0
  SAY @65 /* #64652 */
  IF ~~ THEN EXTERN ~IMOEN25J~ 6
END

IF ~Global("SarevokAlive","GLOBAL",0)
Global("TalkedToSarevok","GLOBAL",1)
InPartySlot(LastTalkedToBy,0)~ THEN BEGIN 37 // from:
  SAY @66 /* #64660 */
  IF ~Global("SarevokToldProposal","GLOBAL",0)~ THEN REPLY @67 /* #64663 */ GOTO 14
  IF ~~ THEN REPLY @68 /* #64667 */ GOTO 32
  IF ~Global("SarevokToldProposal","GLOBAL",1)
Global("ImoenGiveSoul","GLOBAL",1)~ THEN REPLY @69 /* #64669 */ GOTO 29
  IF ~Global("SarevokToldProposal","GLOBAL",1)~ THEN REPLY @70 /* #64670 */ GOTO 33
  IF ~Global("SarevokToldProposal","GLOBAL",1)~ THEN REPLY @71 /* #64674 */ GOTO 20
  IF ~Global("SarevokToldProposal","GLOBAL",1)~ THEN REPLY @72 /* #64679 */ GOTO 21
  IF ~Global("SarevokToldProposal","GLOBAL",1)~ THEN REPLY @73 /* #64681 */ GOTO 22
  IF ~Global("SarevokToldProposal","GLOBAL",1)~ THEN REPLY @40 /* #64683 */ GOTO 24
  IF ~Global("SarevokToldProposal","GLOBAL",1)
InParty("Imoen2")
!Dead("Imoen2")
Global("ImoenGiveSoul","GLOBAL",0)~ THEN REPLY @74 /* #64684 */ GOTO 26
  IF ~Global("SarevokToldProposal","GLOBAL",1)
OR(3)
!InParty("Imoen2")
Dead("Imoen2")
Global("ImoenGiveSoul","GLOBAL",1)~ THEN REPLY @74 /* #64685 */ GOTO 31
END

IF ~Global("SarevokAlive","GLOBAL",1)~ THEN BEGIN 38 // from:
  SAY @75  /* #64690 */
  IF ~True()~ THEN DO ~SetGlobal("SarevokAlive","GLOBAL",2)~ GOTO 39
  IF ~IsValidForPartyDialog("Viconia")~ THEN DO ~SetGlobal("SarevokAlive","GLOBAL",2)~ EXTERN ~VICON25J~ 24
  IF ~IsValidForPartyDialog("Jaheira")~ THEN DO ~SetGlobal("SarevokAlive","GLOBAL",2)~ EXTERN ~JAHEI25J~ 28
  IF ~IsValidForPartyDialog("Anomen")~ THEN DO ~SetGlobal("SarevokAlive","GLOBAL",2)~ EXTERN ~ANOME25J~ 23
END

IF ~~ THEN BEGIN 39 // from: ANOME25J:23.0 JAHEI25J:28.0 38.0 VICON25J:24.0
  SAY @76 /* #64692 */
  IF ~Global("ImoenGiveSoul","GLOBAL",2)~ THEN REPLY @77 /* #64693 */ GOTO 40
  IF ~GlobalLT("ImoenGiveSoul","GLOBAL",2)~ THEN REPLY @78 /* #64701 */ GOTO 41
  IF ~~ THEN REPLY @79 /* #64702 */ GOTO 43
  IF ~~ THEN REPLY @80 /* #64703 */ GOTO 43
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY @81 /* #64704 */
  IF ~~ THEN EXTERN ~IMOEN25J~ 7
END

IF ~~ THEN BEGIN 41 // from: IMOEN25J:7.0 39.1
  SAY @82 /* #64706 */
  IF ~True()~ THEN REPLY @83 /* #64707 */ GOTO 42
  IF ~IsValidForPartyDialog("Imoen2")~ THEN EXTERN ~IMOEN25J~ 8
  IF ~IsValidForPartyDialog("Jaheira")
!IsValidForPartyDialog("Imoen2")
Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN ~JAHEI25J~ 29
  IF ~IsValidForPartyDialog("Anomen")
!IsValidForPartyDialog("Imoen2")
Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN ~ANOME25J~ 24
  IF ~IsValidForPartyDialog("Aerie")
!IsValidForPartyDialog("Imoen2")
Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN ~AERIE25J~ 24
  IF ~IsValidForPartyDialog("Viconia")
!IsValidForPartyDialog("Imoen2")
Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN ~VICON25J~ 25
END

IF ~~ THEN BEGIN 42 // from: AERIE25J:24.0 ANOME25J:24.0 IMOEN25J:8.0 JAHEI25J:29.0 41.0 VICON25J:25.0
  SAY @84 /* #64710 */
  IF ~~ THEN GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 42.0 39.3 39.2
  SAY @85 /* #64711 */
  IF ~~ THEN GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY @86 /* #64712 */
  IF ~~ THEN GOTO 45
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY @87 /* #64714 */
  IF ~!Alignment(Player1,MASK_EVIL)
!ReputationLT(Player1,8)~ THEN DO ~SetGlobal("SarevokAlive","GLOBAL",3)
EraseJournalEntry(73855)
StartCutSceneMode()
StartCutScene("cut206c")~ EXIT
  IF ~OR(2)
Alignment(Player1,MASK_EVIL)
ReputationLT(Player1,8)
~ THEN DO ~SetGlobal("SarevokAlive","GLOBAL",3)
EraseJournalEntry(73855)
StartCutSceneMode()
StartCutScene("cut206d")~ EXIT
END

IF ~Global("SarevokAlive","GLOBAL",3)~ THEN BEGIN 46 // from:
  SAY @88 /* #64715 */
  IF ~~ THEN DO ~SetGlobal("SarevokAlive","GLOBAL",4)~ GOTO 70
END

IF ~~ THEN BEGIN 47 // from: 70.0
  SAY @89  /* #64750 */
  IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY @90  /* #64755 */
  IF ~~ THEN JOURNAL @91 /* #73856 */ FLAGS 128 GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY @92  /* #64758 */
  IF ~~ THEN REPLY @93 /* #64760 */ JOURNAL @94 /* #73857 */ FLAGS 128 GOTO 50
  IF ~~ THEN REPLY @95 /* #64761 */ JOURNAL @94 /* #73857 */ FLAGS 128 GOTO 52
  IF ~~ THEN REPLY @96 /* #64763 */ JOURNAL @94 /* #73857 */ FLAGS 128 GOTO 53
  IF ~~ THEN REPLY @97 /* #64764 */ JOURNAL @94 /* #73857 */ FLAGS 128 GOTO 51
END

IF ~~ THEN BEGIN 50 // from: 51.0 49.0
  SAY @98 /* #64767 */
  IF ~~ THEN REPLY @95 /* #64769 */ GOTO 52
  IF ~~ THEN REPLY @99 /* #64770 */ GOTO 53
  IF ~~ THEN REPLY @100 /* #64771 */ GOTO 51
  IF ~~ THEN REPLY @101 /* #64772 */ GOTO 53
END

IF ~~ THEN BEGIN 51 // from: 50.2 49.3
  SAY @102 /* #64773 */
  IF ~~ THEN REPLY @103 /* #64775 */ GOTO 50
  IF ~~ THEN REPLY @95 /* #64776 */ GOTO 52
  IF ~~ THEN REPLY @104 /* #64777 */ GOTO 53
  IF ~~ THEN REPLY @101 /* #64779 */ GOTO 53
END

IF ~~ THEN BEGIN 52 // from: 51.1 50.0 49.1
  SAY @105 /* #64781 */
  IF ~!IsValidForPartyDialog("Imoen2")~ THEN REPLY @106 /* #64783 */ GOTO 54
  IF ~IsValidForPartyDialog("Imoen2")~ THEN EXTERN ~IMOEN25J~ 9
END

IF ~~ THEN BEGIN 53 // from: 51.3 51.2 50.3 50.1 49.2
  SAY @107 /* #64782 */
  IF ~!IsValidForPartyDialog("Imoen2")~ THEN REPLY @106 /* #64784 */ GOTO 54
  IF ~IsValidForPartyDialog("Imoen2")~ THEN EXTERN ~IMOEN25J~ 9
END

IF ~~ THEN BEGIN 54 // from: IMOEN25J:9.0 53.0 52.0
  SAY @108 /* #64788 */
  IF ~~ THEN GOTO 55
END

IF ~~ THEN BEGIN 55 // from: 54.0
  SAY @109 /* #64789 */
  IF ~~ THEN GOTO 56
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY @110 /* #64790 */
  IF ~~ THEN REPLY @111 /* #64792 */ GOTO 57
  IF ~~ THEN REPLY @112 /* #64793 */ GOTO 58
  IF ~~ THEN REPLY @113 /* #64794 */ GOTO 59
  IF ~NumInParty(6)~ THEN REPLY @114 /* #64795 */ GOTO 60
END

IF ~~ THEN BEGIN 57 // from: 62.3 62.2 60.2 60.0 59.0 58.0 56.0
  SAY @115 /* #64799 */
  IF ~~ THEN DO ~DialogInterrupt(FALSE)
ReallyForceSpell(Myself,DRYAD_TELEPORT)~ UNSOLVED_JOURNAL @116 /* #73858 */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 56.1
  SAY @117 /* #64801 */
  IF ~~ THEN REPLY @118 /* #64802 */ GOTO 57
  IF ~~ THEN REPLY @119 /* #64804 */ GOTO 59
  IF ~NumInParty(6)~ THEN REPLY @114 /* #64807 */ GOTO 60
END

IF ~~ THEN BEGIN 59 // from: 60.1 58.1 56.2
  SAY @120 /* #64832 */
  IF ~~ THEN REPLY @121 /* #64835 */ GOTO 57
  IF ~~ THEN REPLY @122 /* #64836 */ GOTO 61
  IF ~~ THEN REPLY @123 /* #64838 */ DO ~SetGlobal("SarevokOath","GLOBAL",1)~ GOTO 62
  IF ~~ THEN REPLY @124 /* #64839 */ GOTO 63
END

IF ~~ THEN BEGIN 60 // from: 58.2 56.3
  SAY @125 /* #64842 */
  IF ~~ THEN REPLY @126 /* #64845 */ GOTO 57
  IF ~~ THEN REPLY @127 /* #64847 */ GOTO 59
  IF ~~ THEN REPLY @128 /* #64853 */ GOTO 57
END

IF ~~ THEN BEGIN 61 // from: 59.1
  SAY @129 /* #64863 */
  IF ~True()~ THEN DO ~JoinParty()~ UNSOLVED_JOURNAL @116 /* #73858 */ EXIT
  IF ~IsValidForPartyDialog("Keldorn")~ THEN DO ~JoinParty()~ UNSOLVED_JOURNAL @116 /* #73858 */ EXTERN ~KELDO25J~ 5
  IF ~IsValidForPartyDialog("HaerDalis")~ THEN DO ~JoinParty()~ UNSOLVED_JOURNAL @116 /* #73858 */ EXTERN ~HAERD25J~ 6
  IF ~IsValidForPartyDialog("Jaheira")~ THEN DO ~JoinParty()~ UNSOLVED_JOURNAL @116 /* #73858 */ EXTERN ~JAHEI25J~ 30
  IF ~IsValidForPartyDialog("Valygar")~ THEN DO ~JoinParty()~ UNSOLVED_JOURNAL @116 /* #73858 */ EXTERN ~VALYG25J~ 15
END

IF ~~ THEN BEGIN 62 // from: 65.1 59.2
  SAY @130 /* #64868 */
  IF ~~ THEN REPLY @131 /* #64871 */ GOTO 69
  IF ~~ THEN REPLY @132 /* #64872 */ GOTO 63
  IF ~~ THEN REPLY @133 /* #64873 */ GOTO 57
  IF ~~ THEN REPLY @134 /* #64874 */ GOTO 57
END

IF ~~ THEN BEGIN 63 // from: 65.2 62.1 59.3
  SAY @135 /* #64876 */
  IF ~~ THEN DO ~MoveToPointNoInterrupt([2460.1744])
Face(0)~ UNSOLVED_JOURNAL @116 /* #73858 */ EXIT
END

IF ~GlobalGT("SarevokAlive","GLOBAL",0)
Global("SarevokAttacked","LOCALS",1)~ THEN BEGIN 64 // from:
  SAY @136 /* #64878 */
  IF ~~ THEN DO ~ForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END

IF ~Global("SarevokAlive","GLOBAL",4)
InPartySlot(LastTalkedToBy,0)~ THEN BEGIN 65 // from:
  SAY @137  /* #64879 */
  IF ~~ THEN REPLY @138 /* #64880 */ DO ~JoinParty()~ EXIT
  IF ~Global("SarevokOath","GLOBAL",0)~ THEN REPLY @139 /* #64881 */ DO ~SetGlobal("SarevokOath","GLOBAL",1)~ GOTO 62
  IF ~~ THEN REPLY @140 /* #64882 */ GOTO 63
END

IF ~Global("SarevokAlive","GLOBAL",4)
!InPartySlot(LastTalkedToBy,0)~ THEN BEGIN 66 // from:
  SAY @141 /* #64895 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 67 // from: 18.0
  SAY @142 /* #66350 */
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 68 // from: EDWIN25J:3.0 IMOEN25J:26.0 JAHEI25J:27.0 MINSC25J:4.0
  SAY @143 /* #70445 */
  IF ~~ THEN REPLY @1 /* #70446 */ DO ~SetGlobal("TalkedToSarevok","GLOBAL",1)~ GOTO 1
  IF ~~ THEN REPLY @2 /* #70447 */ DO ~SetGlobal("TalkedToSarevok","GLOBAL",1)~ GOTO 2
END

IF ~~ THEN BEGIN 69 // from: 62.0
  SAY @144 /* #70488 */
  IF ~True()~ THEN DO ~JoinParty()~ EXIT
  IF ~IsValidForPartyDialog("Mazzy")~ THEN DO ~JoinParty()~ EXTERN ~MAZZY25J~ 4
  IF ~IsValidForPartyDialog("Edwin")~ THEN DO ~JoinParty()~ EXTERN ~EDWIN25J~ 4
  IF ~IsValidForPartyDialog("Cernd")~ THEN DO ~JoinParty()~ EXTERN ~CERND25J~ 5
  IF ~IsValidForPartyDialog("Nalia")~ THEN DO ~JoinParty()~ EXTERN ~NALIA25J~ 7
END

IF ~~ THEN BEGIN 70 // from: 46.0
  SAY @145 /* #71109 */
  IF ~~ THEN GOTO 47
END
