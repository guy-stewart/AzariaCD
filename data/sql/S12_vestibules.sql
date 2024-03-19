delete from games;

--Resources
delete from views where [view_name] like 'IDV_VEST%';
INSERT INTO "main"."views" ("view_id", "view_name", "Z", "backgroundAudio", "locator_view", "behavior_id", "portal_filename", "surface_filename") VALUES 
('4627', 'IDV_VESTPAN1', '1', '0', '1', '1', 'wdepanel.vct', 'VESTPAN1'),
('4629', 'IDV_VESTPAN2', '1', '0', '1', '1', 'wdepanel.vct', 'VESTPAN');


delete from map where op like 'S12_FISHSPELL%';

INSERT INTO "main"."map" ("op", "key", "value")
VALUES 
--identify hidden items
('S12_FISHSPELL', 'IDD_FISHASH1', 'IDD_SPELx01'), 
('S12_FISHSPELL', 'IDD_FISHASH2', 'IDD_SPELx02'),
('S12_FISHSPELL', 'IDD_FISHASH3', 'IDD_SPELx03'),
('S12_FISHSPELL', 'IDD_FISHASH4', 'IDD_SPELx04'),
('S12_FISHSPELL', 'IDD_FISHASH5', 'IDD_SPELx05'),
('S12_FISHSPELL', 'IDD_FISHASH6', 'IDD_SPELx06'), 
('S12_FISHSPELL', 'IDD_FISHASH7', 'IDD_SPELx07'),
('S12_FISHSPELL', 'IDD_FISHASH8', 'IDD_SPELx08'),
('S12_FISHSPELL', 'IDD_FISHASH9', 'IDD_SPELx09'),
('S12_FISHSPELL', 'IDD_FISHASH10','IDD_SPELx10');






delete from spr_names where [name] like 'IDS_VEST%';
delete from spr_names where [name] like 'IDS_REVIAL%';

INSERT INTO "main"."spr_names" ("name", "value", "id") 
VALUES 
('IDS_VESTBNYS', 'VESTBNYS', '4610'),
('IDS_VESTCAN', 'VESTCAN', '4609'),
('IDS_VESTH2O', 'VESTH2O', '4611'),
('IDS_VESTNYS', 'VESTNYS', '46002'),
('IDS_REVIAL', 'revial', '46003');

delete from objects where [object] like 'IDD_REVIAL%';
INSERT INTO "main"."objects" ("object", "object_id", "class", "icon", "cursor", "actor") 
VALUES 
('IDD_REVIAL', '46003', 'IDC_SPELL', 'revial', 'revial', 'revial');





delete from machines where [name] like 'S12_SPRIN%';
delete from machines where [name] like 'S12_WATER%';
delete from machines where [name] like 'S12_CANDLE1';
delete from machines where [name] like 'S12_CANDLE2';
delete from machines where [name] like 'S12_ASHSHELF%';


INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") VALUES 



-- Vestpan1
-- Turn a death spell into a revival vial


--Vestpan2
--fish spells are for - clearing language bariers?
--Turn off foul wind - by filling w/ nystrom scoop and sacrificing a fish spell


-- the strange vestibules -- TO BE LIFE AND DEATH
--('4646', 'S12_SPRING1', '4627', 'IDV_VESTPAN1', '504', '131', '539', '170', '0', 'M12_SPRING', '', '', '', ''),
('4647', 'S12_WATER1', '4627', 'IDV_VESTPAN1', '200', '95', '431', '242', '0', 'M12_WATER', 'S12_CANDLE1', '', '', ''),
('4648', 'S12_CANDLE1', '4627', 'IDV_VESTPAN1', '501', '137 ', '554', '200', '0', 'M12_CANDLE', 'S12_WATER1', 'S12_ASHSHELF1A', 'S12_ASHSHELF1B', ''),
('4646', 'S12_ASHSHELF1A', '4627', 'IDV_VESTPAN1', '70', '117', '120', '210', '0', 'M12_SHELF', 'S12_CANDLE1', 'S12_WATER1', 'IDD_DEATH', ''),
('4649', 'S12_ASHSHELF1B', '4627', 'IDV_VESTPAN1', '144', '173', '200', '260', '0', 'M12_SHELF', 'S12_CANDLE1', 'S12_WATER1', 'IDD_GVIAL', 'IDD_REVIAL'),

('4651', 'S12_WATER2', '4629', 'IDV_VESTPAN2', '200', '95', '431', '242', '0', 'M12_WATER', 'S12_CANDLE2', '', '', ''),
('4652', 'S12_CANDLE2', '4629', 'IDV_VESTPAN2', '501', '137', '604', '241', '0', 'M12_CANDLE2', 'S12_WATER2', 'S12_ASHSHELF2', '', ''),
('4653', 'S12_ASHSHELF2', '4629', 'IDV_VESTPAN2', '95', '140', '160', '210', '0', 'M12_MAPSHELF', 'S12_CANDLE2', 'S12_WATER2', '', '');


----------DFAs-------------------------------

delete from transitions where [automaton] like 'M12_ASH%';
delete from transitions where [automaton] like 'M12_SHEL%';
delete from transitions where [automaton] LIKE 'M12_CANDLE%';
delete from transitions where [automaton] LIKE 'M12_SPRING';
delete from transitions where [automaton] LIKE 'M12_WATER';
delete from transitions where [automaton] like 'M12_MAPSHEL%';

INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code") 
VALUES 
('M12_SHELF', '0', 'holding', 'DROP', 'WIP3', '', 'SHOW(WOBJECT);'),
('M12_SHELF', 'holding', 'empty', 'GRAB', '', '', 'SHOW();'),

('M12_SHELF', 'holding', 'empty', 'WAIT', '', 'SIG_HIDE', 'SHOW();'),
('M12_SHELF', 'holding', 'processed', 'WAIT', '', 'SIG_SHOW', '
     SHOW();
     MOV(WOBJECT,WIP4);
     SHOW(WOBJECT);
     ADDI(LWISDOM,2);
     SIGNALi(0,SID_ID);
     '),
     

('M12_SHELF','processed','empty','GRAB', '', '', '
SHOW();
'),
('M12_SHELF', 'empty', '0', 'Z_EPSILON', '', '', ''),


--------------------------------------------------
--This shelf maps its contents based on which fishash

('M12_MAPSHELF', '0', 'holding', 'DROP', 'WIP3', '', 'SHOW(WOBJECT);'),
('M12_MAPSHELF', 'holding', 'empty', 'GRAB', '', '', 'SHOW();'),

('M12_MAPSHELF', 'holding', 'empty', 'WAIT', '', 'SIG_HIDE', 'SHOW();'),
('M12_MAPSHELF', 'holding', 'processed', 'WAIT', '', 'SIG_SHOW', '
    
    //Map a new object based on wip3
    MOV(WPARM,WOBJECT);
    SHOW();
    MAP(WPARM,S12_FISHSPELL);
    MOV(WOBJECT,WPARM);
    SHOW(WOBJECT);
    ADDI(LWISDOM,2);
    SIGNALi(0,SID_ID);
    '),

('M12_MAPSHELF','processed','empty','GRAB', '', '', '
SHOW();
'),
('M12_MAPSHELF', 'empty', '0', 'Z_EPSILON', '', '', ''),


('M12_CANDLE', '0', 'lit', 'DRAG', '0', 'IDD_MATCH', '
    SHOW(IDD_VESTCAN);'),
('M12_CANDLE', 'lit', 'ritualChecked', 'ASSIGN', 'BPARM', '0', '
  //need three things in place 
  REF_MACHINE(S12_ASHSHELF1A);
  if(R_WOBJECT == IDD_DEATH){ADDI(BPARM,1);}
   REF_MACHINE(S12_ASHSHELF1B);
  if(R_WOBJECT == IDD_GVIAL){ADDI(BPARM,1);}
   REF_MACHINE(S12_WATER1);
  if(IFSTATE(nystromAdded,S12_WATER1)){ADDI(BPARM,1);}
  if(GTE(BPARM,3)){SIGNAL(WIP3,SIG_SHOW);SIGNAL(WIP2,SIG_HIDE);}
  '),
('M12_CANDLE', 'ritualChecked', 'snuffed', 'CLICK', '', '', '
    SHOW();
    SIGNAL(WIP1,SIG_HIDE);
    '),
('M12_CANDLE', 'snuffed', '0', 'Z_EPSILON', '', '', ''),    


('M12_CANDLE2', '0', 'lit', 'DRAG', '0', 'IDD_MATCH', '
    SHOW(IDD_VESTCAN);'),
('M12_CANDLE2', 'lit', 'ritualChecked', 'ASSIGN', 'BPARM', '0', '
  //need 2 things in place 
  REF_MACHINE(S12_ASHSHELF2);
  //if(ISA(R_WOBJECT,IDC_FISHASH)){ADDI(BPARM,1);} not working
    if(R_WOBJECT == IDD_FISHASH1){ADDI(BPARM,1);}
    if(R_WOBJECT == IDD_FISHASH2){ADDI(BPARM,1);}
    if(R_WOBJECT == IDD_FISHASH3){ADDI(BPARM,1);}
    if(R_WOBJECT == IDD_FISHASH4){ADDI(BPARM,1);}
    if(R_WOBJECT == IDD_FISHASH5){ADDI(BPARM,1);}
    if(R_WOBJECT == IDD_FISHASH6){ADDI(BPARM,1);}
    if(R_WOBJECT == IDD_FISHASH7){ADDI(BPARM,1);}
    if(R_WOBJECT == IDD_FISHASH8){ADDI(BPARM,1);}
    if(R_WOBJECT == IDD_FISHASH9){ADDI(BPARM,1);}
    if(R_WOBJECT == IDD_FISHASH10){ADDI(BPARM,1);}

  
   REF_MACHINE(S12_WATER1);
  if(IFSTATE(nystromAdded,S12_WATER2)){ADDI(BPARM,1);}
  if(GTE(BPARM,2)){SIGNAL(WIP2,SIG_SHOW);}
  '),
('M12_CANDLE2', 'ritualChecked', 'snuffed', 'CLICK', '', '', '
    SHOW();
    SIGNAL(WIP1,SIG_HIDE);
    '),
('M12_CANDLE2', 'snuffed', '0', 'Z_EPSILON', '', '', ''),    

-- if(ISA(R_WOBJECT,IDC_FISHASH)){ADDI(BPARM,1);} not working




('M12_WATER', '0', 'waterFull', 'DROP', '0', 'IDD_BUCKF', '
    HANDOFF(0,IDD_BUCKE);
    SHOW(VESTH2O);
'),
('M12_WATER','waterFull','nystromAdded','DRAG','0','IDD_SCOOPF','
    HANDOFF(0,IDD_SCOOPE);
    PLAYWAVE(0,SOUND_SPIT);
    SHOW(VESTBNYS);
    '),
('M12_WATER','nystromAdded','0','WAIT','','SIG_HIDE','
   SHOW();
    ');


