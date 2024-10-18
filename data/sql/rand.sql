
('M16_DICEROLL','6','7','RAND','6','1','','',''),

('M16_DIEROLL','ROLLING','8','SYNCPOINT','2','SYNC_ROLL','
RAND(6,1);
BFRAME=WRAND;
MAPi(BFRAME,S16_DICE_MAP);
SHOW(BFRAME);','',''),

('M19_PICK','setup','randomGenned','RAND','8','1','','',''),

('M_BLINDVIEW','5','10','RAND','10','1','
    if(WRAND > 5){
        SIGNAL(BLINDNESS_ACTIVE,SIG_STOP);
    }
','',''),

('M_FISHSTATION','baited_pole','fish_on','SYNCPOINT','WRAND','SYNC_FISH1','PLAYWAVE(0,SOUND_HURT);
    MOV(WPARM,WOBJECT);
      if(WTEMP1 < 6 ){
        RAND(5,1); 
        MOV(WOBJECT,WRAND);
        MAP(WOBJECT,FISH_CAUGHT);
      }
    if(WTEMP1 >= 6 ){
        RAND(8,5); 
        MOV(WOBJECT,WRAND);
        MAP(WOBJECT,FISH_CAUGHT);
    }
    SHOW(IDS_POLE1LCT);','',''),

('M_FISHSTATION','branch','baited_pole','IS_A','WOBJECT','ISA_BAITEDPOLE','SHOW(IDS_POLE1LCL);
RAND(ADD_CATCH_TIME,MIN_CATCH_TIME);','',''),

('M_HIDER','0','topOLoop','WAIT','','SIG_OPEN','
      want("%")~ 
      want(1). 
      want(2).
      want(3).
      want(4).
      want(5).
      want(6).
      want(7).
      want(8).
      want(9).
      want(10).
      ASSIGN(WTEMP3,0);
      ASSIGN(WTEMP2,0);
      RAND(3,1); 
      ASSIGN(BPARM,WRAND);  
','',''),

('M_HIDER','hideItem','objectHidden','Z_EPSILON','','','   
         WRITE('HIDING ITEM '); 
         MOV(WTEMP2,BPARM);
         MAPi(WTEMP2,S00_HIDINGPLACE); 
         SIGNAL(WTEMP2,SIG_OPEN); 
         RAND(4,1); 
        //I want to update BPARM by adding 1,2, 3 or 4
        ASSIGN(WTEMP2,BPARM);
        ADD(WTEMP2,WRAND); 
        ASSIGN(BPARM,WTEMP2); //BPARM is now again The new hiding machine
','',''),


('M_HIDER','topOLoop','numberCheck','Z_EPSILON','','','
         RAND(10,1);
         ASSIGN(WTEMP1,WRAND);
         WRITE('Check to see if we want WTEMP1 '); 
         if (want(WTEMP1)) {
            want(WTEMP1)~   
            ASSIGN(WPARM,WTEMP1);
            ADD(WTEMP3,1);
         } else {
            ASSIGN(WPARM,0);
         }
  ','',''),

('M_MEMORY','1','2','RAND','8','0','','',''),
