
delete from games;
-- ASSETS:
delete from spr_names where name = 'IDS_LEVANI';
delete from spr_names where name = 'IDS_MAPOPN';
delete from spr_names where [name] like 'IDS_DIARY1%';
delete from sounds where name = 'SOUND_LEVER';

insert into spr_names values ('IDS_DIARY1_BIN','DIARY1_BIN',0);
insert into spr_names values ('IDS_LEVANI','levani',0);
insert into sounds values ('SOUND_LEVER', 'lever',0);
insert into spr_names values ('IDS_MAPOPN','MAPOPN',0);




delete from machines where name = 'S21_MAPOPEN';
delete from machines where name = 'S21_LEVSTOP';
delete from machines where name = 'S21_LEVER';



INSERT INTO "main"."machines" ("name", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") 
VALUES 
('S21_LEVSTOP', 'IDV_LEVERCU', '295', '210', '360', '260', '1', 'M_LEVSTOP', '','S21_LEVER','',''),
('S21_LEVER',   'IDV_LEVERCU', '32', '42', '300', '187', '1', 'M_LEVER', 'IDS_LEVANI','2', 'S21_LEVSTOP', 'SOUND_LEVER'),
('S21_MAPOPEN', 'IDV_MAPBOX1', '40', '0', '227', '177', '1', 'M_LEVDOOR', 'IDS_MAPOPN','IDV_MAPROOM','','');


/*
                                                       _________YES_________
M_LEVER:                                              /                     \
           epsilon                     click          v    Sleep(3)         | 
[start]  --------------------->[ 2 ]--------------->[ 7 ]----------->< IFSTATE(S21_LEVSTOP, 60) >
          BFRAME = 0,            ^    BFRAME = 1                           |
          SHOW(IDS_LEVANI).      |                                         |
                                  \_________________NO____________________/
                                                 BFRAME = 0
                                                   
*/


delete from  "main"."transitions" where automaton = 'M_LEVER';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2","code")
 VALUES 
    ('M_LEVER', '0', '1', 'MOV', 'BFRAME', '0',''),
    ('M_LEVER', '1', '2', 'SHOW', 'WIP1', '',''),
    ('M_LEVER', '2', '3', 'CLICK', '0', '0',''),
    ('M_LEVER', '3', '4', 'PLAYWAVE', '0', 'SOUND_LEVER',''),
    ('M_LEVER', '4', '6', 'ADDI', 'BFRAME', '1',''),--door is open - signal S21_MAPOPEN (SIG_OPEN)
    ('M_LEVER', '6', '7', 'SIGNALi', 'SIG_OPEN', 'S21_MAPOPEN',''),
    ('M_LEVER', '7', '8', 'SIGNALi', 'SIG_SHOW', 'S21_ALT_MAPBOX',''),  -- the opened machines maybe should signal their alt views :/
    ('M_LEVER', '8', '9', 'SIGNALi', 'SIG_SHOW', 'S21_ALT_LEVER',''),
    ('M_LEVER', '9', '10', 'ESTIME', '', '3',''), -- sleep 3 seconds.
    ('M_LEVER', '10', '9', 'IFSTATEi', '60', 'S21_LEVSTOP',''),
    ('M_LEVER', '10', '11', 'Z_EPSILON', '', '',''),
    ('M_LEVER', '11', '12', 'SUBI', 'BFRAME', '1',''), --door is closed - signal S21_MAPOPEN (SIG_CLOSE)
    ('M_LEVER', '12', '13', 'SIGNALi', 'SIG_CLOSE', 'S21_MAPOPEN',''),
    ('M_LEVER', '13', '14', 'SIGNALi', 'SIG_HIDE', 'S21_ALT_MAPBOX',''),  -- the opened machines maybe should signal their alt views :/
    ('M_LEVER', '14', '15', 'SIGNALi', 'SIG_HIDE', 'S21_ALT_LEVER',''),
    ('M_LEVER', '15', '16', 'PLAYWAVE', '0', 'SOUND_LEVER',''),
    ('M_LEVER', '16', '2', 'SHOW', 'WIP1', '','');


delete from  "main"."transitions" where automaton = 'M_LEVSTOP';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code")
 VALUES 
    ('M_LEVSTOP', '0', '10', 'Z_EPSILON', '', '',''),
    ('M_LEVSTOP', '10', '30', 'DROP', 'IDD_ROCK', '','ADDI(LWISDOM,1); SIGNALi(0,SID_ID);'),
    ('M_LEVSTOP', '30', '40', 'SHOW', 'WOBJECT', '',''),
    ('M_LEVSTOP', '40', '50', 'PLAYWAVE', '0', 'SOUND_CLICK',''),
    ('M_LEVSTOP', '50', '60', 'SIGNAL', 'WIP2', '',''),
    ('M_LEVSTOP', '60', '70', 'GRAB', '0', '0',''),
    ('M_LEVSTOP', '70', '10', 'SHOW', '0', '0','');


delete from  "main"."transitions" where automaton = 'M_LEVDOOR';

INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code") VALUES     
   
    ('M_LEVDOOR', '0', '1', 'WAIT', '0', 'SIG_OPEN',''),
    ('M_LEVDOOR', '1', '3', 'MOV', 'WSPRITE', 'WIP1',''),
    ('M_LEVDOOR', '3', '4', 'SHOW', 'WSPRITE', '0',''),
    ('M_LEVDOOR', '4', '7', 'WAIT', '0', 'SIG_CLOSE',''),
    ('M_LEVDOOR', '4', '5', 'CLICK', '', '0',''),
    ('M_LEVDOOR', '5', '4', 'LOADVIEW', 'WIP2', '',''),
    ('M_LEVDOOR', '7', '0', 'SHOW', '0', '0','');
  


delete from machines where name = 'S21_ALT_LEVER';
delete from machines where name = 'S21_ALT_MAPBOX';
INSERT INTO "main"."machines" ("name", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") 
VALUES 
('S21_ALT_LEVER', 'IDV_N2B', '1556', '142', '1565', '147', '0', 'M_STATESCALEZ', 'IDS_LEVOPNSML','','',''),
('S21_ALT_MAPBOX','IDV_N2D2', '1300', '82', '1350', '182', '0', 'M_STATESCALEZ', 'IDS_MAPBOXSML','IDV_MAPBOX1','','');

delete from  "main"."transitions" where automaton = 'M_STATESCALE';

INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code") VALUES 

('M_STATESCALE', '0', '1', 'WAIT', '0', 'SIG_SHOW',''),
('M_STATESCALE', '1', '5', 'MOV', 'WSPRITE', 'WIP1',''),
('M_STATESCALE', '5', '10', 'SHOW', 'WSPRITE', '0',''),
('M_STATESCALE', '10', '11', 'WAIT', '0', 'SIG_HIDE',''),
('M_STATESCALE', '11', '0', 'SHOW', '0', '0','');

-- Scene 21 Plants and Rocks
delete from "main"."objects" where object = 'IDD_MAPBTN';
INSERT INTO "main"."objects" ("object", "class", "icon", "cursor", "actor") VALUES ('IDD_MAPBTN','IDC_NULL','mapbtn', 'mapbtn', 'mapbtn');


delete from  "main"."machines" where name = 'S21_ROCKBIN1';
delete from  "main"."machines" where name = 'S21_MAPBIN';
delete from  "main"."machines" where name = 'S21_MAPTEXT';
delete from  "main"."machines" where name = 'S21_DIARY1BIN';
delete from machines where [name] like 'S21_m1B%';
delete from machines where [name] like 'S21_m2B%';
delete from machines where [name] like 'S21_m3B%';
delete from machines where [name] like 'S21_m6B%';
delete from machines where [name] like 'S21_m4B%';
delete from machines where [name] like 'S21_m5B%';
delete from machines where [name] like 'S21_p%';
delete from machines where [name] like 'S21_o%';
delete from machines where [name] like 'S21_H%';

INSERT INTO "main"."machines"("name", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") 
 VALUES 
 
    ('S21_m1BERRYTREE', 'IDV_N2A', '1830', '213', '1900', '273', '2', 'M_PLANTBIN', 'IDD_FERNLEAF', 'IDS_FERN', '60', ''),
    ('S21_p3BERRYTREE', 'IDV_N2A', '708', '220', '758', '278', '2', 'M_PLANTBIN', 'IDD_WFLWRSPT','IDS_WFLOWER','60', ''),
    ('S21_m2BERRYTREE', 'IDV_N2B', '2015', '166', '2115', '314', '2', 'M_BIN', 'IDD_REDBERRY', '', '60', ''),
    ('S21_m6BERRYTREE', 'IDV_N2B', '570', '190', '760', '230', '2', 'M_PLANTBIN', 'IDD_YFLWRSPT', 'IDS_YFLOWER','60', ''),
    ('S21_p2BERRYTREE', 'IDV_N2B', '2471', '230', '2531', '290', '2', 'M_PLANTBIN', 'IDD_PFLWRSPT', 'IDS_PFLOWER','60', ''),
    ('S21_p4BERRYTREE', 'IDV_N2B', '1962', '234', '2022', '294', '2', 'M_PLANTBIN', 'IDD_GLEAFSPT', 'IDS_GRNPLANT', '60', ''),
    ('S21_m3BERRYTREE', 'IDV_N2C', '572', '212', '632', '272', '2', 'M_PLANTBIN', 'IDD_PFLWRSPT', 'IDS_PFLOWER', '60', ''),
    ('S21_m4BERRYTREE', 'IDV_N2C', '219', '219', '279', '279', '2', 'M_PLANTBIN', 'IDD_PFLWRSPT', 'IDS_PFLOWER', '60', ''),
    ('S21_m5BERRYTREE', 'IDV_N2C', '61', '161', '235', '209', '2', 'M_PLANTBIN', 'IDD_OMUSHSPT', 'IDS_OMUSH', '60', ''),
    ('S21_o1BERRYTREE', 'IDV_N2D2', '1711', '209', '1894', '269', '2','M_PLANTBIN', 'IDD_OMUSHSPT', 'IDS_OMUSH', '60', ''),
    ('S21_o2BERRYTREE', 'IDV_N2D2', '429', '229', '489', '289', '2', 'M_PLANTBIN', 'IDD_GLEAFSPT', 'IDS_GRNPLANT', '60', ''),
    ('S21_o4BERRYTREE', 'IDV_N2D2', '2030', '201', '2090', '261', '2', 'M_PLANTBIN', 'IDD_YFLWRSPT', 'IDS_YFLOWER','60', ''),
    ('S21_o5BERRYTREE', 'IDV_N2D2', '2100', '212', '2160', '272', '2', 'M_PLANTBIN', 'IDD_PFLWRSPT', 'IDS_PFLOWER','60', ''),
    ('S21_o6BERRYTREE', 'IDV_N2D2', '2170', '195', '2230', '255', '2', 'M_PLANTBIN', 'IDD_PFLWRSPT','IDS_PFLOWER', '60', ''),
    ('S21_ROCKBIN1', 'IDV_N2C', '1081', '223', '1120', '255', '2', 'M_PLANTBIN', 'IDD_ROCK', 'IDS_ROCKBIN', '60', ''),

    -- Scene 21 Maproom Map bin
    --8471 ->

   ( 'S21_MAPBIN',   'IDV_MAPROOM', '2708', '7', '2926', '179', '2', 'M_BIN', 'IDD_MAPBTN','', '60', ''),
   ( 'S21_MAPTEXT',  'IDV_MAPROOM', '1441', '2', '1810','200', '2', 'M24_EYETEXT', 'IDS_MAPENG','','60', ''),
   ( 'S21_DIARY1BIN','IDV_MAPROOM', '3049', '215', '3110','250', '2', 'M_PLANTBIN', 'IDD_DIARY1','IDS_DIARY1_BIN','60', ''),

  ('S21_HIDDEN_01','IDV_N2D2', '3097', '193', '3194', '230', '2', 'M_DIGDIRECT', 'IDD_AMULET', 'IDS_SANDDIRTGRSDK', 'ISA_TOOL_DIGGER', '');



--Need to create a machine that shuts everything down when someone clicks on the map
-- Meflin, Lake drowning , Mines poison
-- just doing here for now

delete from transitions where [automaton] like 'M_MAPBUTTON%';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code", "guard", "doc") VALUES 
('M_MAPBUTTON', '0', '1', 'Z_EPSILON', '', '', '
   CLEAR(WOBJECT);
   SHOW();
', '', ''),
('M_MAPBUTTON', '1', 'mapPresent', 'DROP', 'IDD_MAPBTN', '', '
   SIGNAL(QL_MANAGER,Q1_STOP);
   SHOW(WOBJECT);
   ADDI(LWISDOM,1); SIGNALi(0,SID_ID);
', '', ''),
('M_MAPBUTTON', 'mapPresent', 'requested', 'CLICK', '0', '0', '
      SIGNAL(MEFPAN_CLOSER,SIG_SET);
      SIGNAL(S27_DEATHMANAGER,SIG_CLEAR);
      SIGNAL(S17_aFOULWIND,SIG_CLEAR);
      SIGNAL(S17_bFOULWIND,SIG_CLEAR);
      SIGNAL(S17_cFOULWIND,SIG_CLEAR);
      SIGNAL(S17_dFOULWIND,SIG_CLEAR);
      SIGNAL(S17_eFOULWIND,SIG_CLEAR);
   PLAYWAVE(SOUND_POPUP);
', '', ''),
('M_MAPBUTTON', 'requested', 'mapPresent', 'LOADVIEW', '0', 'IDV_CONTINENT', '', '', ''),
('M_MAPBUTTON', 'mapPresent', 'empty', 'GRAB', '0', '', '', '', '');



delete from transitions where [automaton] like 'M_DIGDIRECT%';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code", "guard", "doc") VALUES 


('M_DIGDIRECT', '0', 'determinedItem', 'MOV', 'WOBJECT', 'WIP1', '', '', ''),
('M_DIGDIRECT', 'determinedItem', 'coverActive', 'MOV', 'WSPRITE', 'WIP2', '
        SHOW(WSPRITE);
', '', ''),
('M_DIGDIRECT', 'coverActive', 'firstWhack', 'Z_EPSILON', '', '', '', '', ''),
('M_DIGDIRECT', 'firstWhack', 'secondWhack', 'DRAG', 'WIP3', '', '
        if(WIP3 == ISA_TOOL_DIGGER){
            SHOW(0,IDS_SANDPILE1);
            ANIMATE();
            PLAYWAVE(SOUND_DIG);
         }   
         if(WIP3 == ISA_TOOL_STRIKER){
            SHOW(0,IDS_SANDSTRIKE);
            ANIMATE();
            PLAYWAVE(SOUND_DIG);
         }   
          if(WIP3 == ISA_TOOL_PRYER){
            SHOW(0,IDS_SANDWOBBLE);
            ANIMATE();
            PLAYWAVE(SOUND_THUMP);
         }   
', '', ''),
('M_DIGDIRECT', 'secondWhack', 'thirdWhack', 'DRAG', '', '', '
        if(WIP3 == ISA_TOOL_DIGGER){
            SHOW(0,IDS_SANDPILE2);
            ANIMATE();
            PLAYWAVE(SOUND_DIG);
         }   
         if(WIP3 == ISA_TOOL_STRIKER){
            SHOW(0,IDS_SANDSTRIKE);
            ANIMATE();
            PLAYWAVE(SOUND_DIG);
         }   
           if(WIP3 == ISA_TOOL_PRYER){
            SHOW(0,IDS_SANDFLIP);
            ANIMATE();
            PLAYWAVE(SOUND_THUMP);
         }   
', '', ''),
('M_DIGDIRECT', 'thirdWhack', 'fourthWhack', 'DRAG', '', '', '
        if(WIP3 == ISA_TOOL_DIGGER){
            SHOW(0,IDS_SANDPILE3);
            ANIMATE();
            PLAYWAVE(SOUND_DIG);
         }   
         if(WIP3 == ISA_TOOL_STRIKER){
            SHOW(0,IDS_SANDSTRIKE);
            ANIMATE();
            PLAYWAVE(SOUND_DIG);
         }   
           if(WIP3 == ISA_TOOL_PRYER){
            SHOW(0,IDS_SANDFLIP);
            ANIMATE();
            PLAYWAVE(SOUND_THUMP);
         }   
', '', ''),
('M_DIGDIRECT', 'fourthWhack', 'moveMe', 'DRAG', '', '', '', '', ''),
('M_DIGDIRECT', 'moveMe', 'displayItem', 'SET_YOFFSET', 'ADD','50', '
        PLAYWAVE(SOUND_CHIMES);
        SHOW(WOBJECT);
        ADDI(LWISDOM,1); 
        SIGNALi(0,SID_ID);
', '', ''),
('M_DIGDIRECT', 'displayItem', 'itemGrabbed', 'GRAB', '', '', '', '', ''),
('M_DIGDIRECT', 'itemGrabbed', '0', 'Z_EPSILON', '', '', 'SHOW();', '', '');
