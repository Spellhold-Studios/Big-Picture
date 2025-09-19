// Pontifex, the guy who gives you the ritual quest

BEGIN RITPONT

IF ~AreaCheck("AR0088")~ THEN BEGIN arrived
  SAY @0
  IF ~~ THEN DO ~GiveItemCreate("Potn11",Player1,5,5,5)
GiveItemCreate("Potn42",Player1,5,5,5)
GiveItemCreate("Restore",Player1,5,5,5)
GiveItemCreate("scrl7o",Player1,5,5,5)
GiveItemCreate("scrl7q",Player1,5,5,5)
GiveItemCreate("scrl94",Player1,5,5,5)
GiveItemCreate("scrl8w",Player1,5,5,5)
GiveItemCreate("wand10",Player1,8,8,8)
GiveItemCreate("mysboot",Player1,1,1,1)
GivePartyAllEquipment()
ReallyForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END

IF ~Global("Fight","LOCALS",1)~ THEN BEGIN fight
  SAY @1 = @2 = @3
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~Global("RitPrep","GLOBAL",1)~ THEN BEGIN rit
  SAY @4
  /* decision tree ahoy! */
  IF ~~ THEN GOTO perfect
  IF ~Dead("ritcount")~ THEN GOTO dead_disrupt
  IF ~Global("RitualDisrupted","GLOBAL",0)~ THEN GOTO dead_nodisrupt
  IF ~Global("RitualGuardPassed","GLOBAL",0)~ THEN GOTO never_got_in
END

IF ~~ THEN BEGIN never_got_in
  SAY @5 = @6 
  IF ~~ THEN DO ~GiveItemCreate("ritamul",Player1,1,0,0)
GiveItemCreate("ritamul",Player2,1,0,0)
GiveItemCreate("ritamul",Player3,1,0,0)
GiveItemCreate("ritamul",Player4,1,0,0)
GiveItemCreate("ritamul",Player5,1,0,0)
GiveItemCreate("ritamul",Player6,1,0,0)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN dead_nodisrupt
  SAY @7 = @8
  IF ~~ THEN DO ~GiveItemCreate("ritamul",Player1,1,0,0)
GiveItemCreate("ritamul",Player2,1,0,0)
GiveItemCreate("ritamul",Player3,1,0,0)
GiveItemCreate("ritamul",Player4,1,0,0)
GiveItemCreate("ritamul",Player5,1,0,0)
GiveItemCreate("ritamul",Player6,1,0,0)
SetGlobal("Fight","LOCALS",1)
AddXPObject(Player1,30000) 
AddXPObject(Player2,30000) 
AddXPObject(Player3,30000) 
AddXPObject(Player4,30000) 
AddXPObject(Player5,30000) 
AddXPObject(Player6,30000)~ EXIT
END

IF ~~ THEN BEGIN dead_disrupt
  SAY @9 = @8
  IF ~~ THEN DO ~GiveItemCreate("ritamul",Player1,1,0,0)
GiveItemCreate("ritamul",Player2,1,0,0)
GiveItemCreate("ritamul",Player3,1,0,0)
GiveItemCreate("ritamul",Player4,1,0,0)
GiveItemCreate("ritamul",Player5,1,0,0)
GiveItemCreate("ritamul",Player6,1,0,0)
SetGlobal("Fight","LOCALS",1)
AddXPObject(Player1,30000) 
AddXPObject(Player2,30000) 
AddXPObject(Player3,30000) 
AddXPObject(Player4,30000) 
AddXPObject(Player5,30000) 
AddXPObject(Player6,30000)~ EXIT
END

IF ~~ THEN BEGIN perfect
  SAY @10 = @11
  IF ~~ THEN DO ~GiveItemCreate("ritamul",Player1,1,0,0)
GiveItemCreate("ritamul",Player2,1,0,0)
GiveItemCreate("ritamul",Player3,1,0,0)
GiveItemCreate("ritamul",Player4,1,0,0)
GiveItemCreate("ritamul",Player5,1,0,0)
GiveItemCreate("ritamul",Player6,1,0,0)
GiveItemCreate("ritdrag",Player1,1,0,0)
AddXPObject(Player1,90000) 
AddXPObject(Player2,90000) 
AddXPObject(Player3,90000) 
AddXPObject(Player4,90000) 
AddXPObject(Player5,90000) 
AddXPObject(Player6,90000)
ReallyForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 1
  SAY @12
  IF ~~ THEN REPLY @13 GOTO req
  IF ~~ THEN REPLY @14 GOTO sim
  // IF ~~ THEN REPLY @4 EXIT
END

IF ~~ THEN BEGIN sim
  SAY @15 IF ~~ THEN GOTO req
END

IF ~~ THEN BEGIN req
  SAY @16

  IF ~~ THEN REPLY @17 GOTO whytrust
  IF ~~ THEN REPLY @18 GOTO explain
END

IF ~~ THEN BEGIN whytrust
  SAY @19
    = @20
    = @21
    = @22

  IF ~~ THEN REPLY @23 GOTO insane
  IF ~~ THEN REPLY @24 GOTO explain
END

IF ~~ THEN BEGIN insane
  SAY @25
  IF ~~ THEN GOTO explain
END

IF ~~ THEN BEGIN explain
  SAY @26
    = @27 
  IF ~~ THEN REPLY @28 GOTO e1
  IF ~~ THEN REPLY @29 GOTO e2
END

IF ~~ THEN BEGIN e1 SAY @30 IF ~~ THEN GOTO e3 END
IF ~~ THEN BEGIN e2 SAY @31 IF ~~ THEN GOTO e3 END

IF ~~ THEN BEGIN e3
  SAY @32
    = @33
  IF ~~ THEN GOTO main_quest
END

IF ~!NumTimesTalkedTo(0)~ THEN BEGIN main_quest
  SAY @34
  IF ~~ THEN REPLY @35 GOTO say_defenses
  IF ~~ THEN REPLY @36 GOTO say_people
  IF ~~ THEN REPLY @37 GOTO say_advice
  IF ~~ THEN REPLY @38 GOTO say_ritual
  IF ~~ THEN REPLY @39 GOTO say_betray
  IF ~~ THEN REPLY @40 GOTO say_reward
  IF ~~ THEN REPLY @41 GOTO say_whoare
  IF ~~ THEN REPLY @42 GOTO say_moretime
  IF ~~ THEN REPLY @43 GOTO g1
END

CHAIN2 RITPONT say_defenses
   @44
  = @45
  = @46
  = @47
  = @48
  = @49
  = @50

END RITPONT main_quest

CHAIN2 RITPONT say_people
    @51
  = @52
  = @53
  = @54
  = @55
  = @56
  = @57
  = @58
  = @59

END RITPONT main_quest

CHAIN2 RITPONT say_advice
    @60
  = @61
  = @62
  = @63
  = @64
  = @65

END RITPONT main_quest

// explain the Ritual .. not!
IF ~~ THEN BEGIN say_ritual
  SAY @66
  IF ~~ THEN REPLY @67 GOTO say_r2
END
IF ~~ THEN BEGIN say_r2
  SAY @68
 IF ~~ THEN REPLY @69 GOTO say_r3
END
IF ~~ THEN BEGIN say_r3
  SAY @70
  IF ~~ THEN REPLY @71 GOTO say_r4
END
IF ~~ THEN BEGIN say_r4
  SAY @72
  IF ~~ THEN GOTO main_quest
END

// cute little trick: we'll use a CHAIN to ourselves!
CHAIN2 RITPONT say_betray
    @73
  = @74
END RITPONT main_quest

CHAIN2 RITPONT say_reward
    @75
  = @76 
  = @77

END RITPONT main_quest

CHAIN2 RITPONT say_whoare
    @78
  = @79 
  = @80
  = @81

END RITPONT main_quest

IF ~~ THEN BEGIN say_moretime
  SAY @82 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN g1
  SAY @83
  IF ~~ THEN REPLY @84 GOTO trustme
  IF ~~ THEN REPLY @85 GOTO moretime2
END

IF ~~ THEN BEGIN trustme
  SAY @86
    = @87
  IF ~~ THEN REPLY @88 GOTO accept
  IF ~~ THEN REPLY @85 GOTO moretime2
END

IF ~~ THEN BEGIN accept
  SAY @89 
  // ONE_DAY = 7200, so one hour = 300 time units
  IF ~~ THEN REPLY @90 DO ~SetGlobalTimer("RitualIsNowOver","GLOBAL",4500)~
        GOTO want_more_time
  IF ~~ THEN REPLY @91 DO ~SetGlobalTimer("RitualIsNowOver","GLOBAL",2100)~ 
        GOTO accept_fine
  IF ~~ THEN REPLY @92 DO ~SetGlobalTimer("RitualIsNowOver","GLOBAL",2100)~ 
        GOTO accept_heckle
END

IF ~~ THEN BEGIN want_more_time
  SAY @93
  IF ~~ THEN REPLY @94 GOTO accept_fine
END

IF ~~ THEN BEGIN accept_heckle
  SAY @95

  IF ~~ THEN GOTO accept_fine
END

IF ~~ THEN BEGIN accept_fine
  SAY @96
  IF ~~ THEN DO ~SetGlobal("RitualAccept","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN moretime2
  SAY @97 IF ~~ THEN GOTO main_quest
END

