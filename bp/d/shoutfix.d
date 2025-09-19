  REPLACE_ACTION_TEXT ~PBHUNT01~ ~Shout(89)~ ~Shout(79)~

  REPLACE_ACTION_TEXT ~GAAL~ ~Shout(99)~ ~Shout(79)~

  REPLACE_ACTION_TEXT ~MAEVAR~ ~Shout(89)~ ~Shout(79)~

  REPLACE_ACTION_TEXT ~GORCAMB~ ~Shout(151)~ ~Shout(79)~
  
  REPLACE_ACTION_TEXT ~TARNOR~  ~Shout(99)~  ~Shout(79)~

  REPLACE_ACTION_TEXT ~TOLGER2~ ~ActionOverride("tolmag01",Enemy())~ ~ActionOverride("tolmag02",Enemy())~
  
  ADD_TRANS_ACTION ~TOLGER2~ BEGIN 1 3 4 5  END BEGIN END ~Shout(79)~ 
  
  ADD_TRANS_ACTION ~TOLGER2~ BEGIN 5  END BEGIN END ~Enemy()~ 
  
