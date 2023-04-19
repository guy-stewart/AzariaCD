
delete from games;
-- ASSETS:
delete from spr_names where name = 'IDS_LEVANI';
insert into spr_names values ('IDS_LEVANI','levani',0);
insert into sounds values ('SOUND_LEVER', 	'lever',0);
delete from machines where name = 'S21_LEVER';
INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip1_value", "wip2_name", "wip2_value", "wip3_name", "wip3_value", "wip4_name", "wip4_value") 
VALUES ('8465', 'S21_LEVER', '8105', 'IDV_LEVERCU', '32', '42', '300', '187', '0', 'M_LEVER', 'IDS_LEVANI', '0', '2', '0', 'S21_LEVSTOP', '8466', 'SOUND_LEVER', '0');
delete from  "main"."transitions" where name = 'M_LEVER';
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
INSERT INTO "main"."transitions" ("name", "state", "new_state", "opcode", "param_1", "param_2")
 VALUES 
    ('M_LEVER', '0', '1', 'MOV', 'BFRAME', '0'),
    ('M_LEVER', '1', '2', 'SHOW', 'WIP1', ''),
    ('M_LEVER', '2', '3', 'CLICK', '0', '0'),
    ('M_LEVER', '3', '4', 'PLAYWAVE', '0', 'SOUND_LEVER'),
    ('M_LEVER', '4', '6', 'ADDI', 'BFRAME', '1'),--door is open - signal S21_MAPOPEN (SIG_OPEN)
    ('M_LEVER', '6', '7', 'SIGNALi', 'SIG_OPEN', 'S21_MAPOPEN'),
    ('M_LEVER', '7', '8', 'SIGNALi', 'SIG_SHOW', 'S21_ALT_MAPBOX'),  -- the opened machines maybe should signal their alt views :/
    ('M_LEVER', '8', '9', 'SIGNALi', 'SIG_SHOW', 'S21_ALT_LEVER'),
    ('M_LEVER', '9', '10', 'ESTIME', '', '3'), -- sleep 3 seconds.
    ('M_LEVER', '10', '9', 'IFSTATEi', '60', 'S21_LEVSTOP'),
    ('M_LEVER', '10', '11', 'Z_EPSILON', '', ''),
    ('M_LEVER', '11', '12', 'SUBI', 'BFRAME', '1'), --door is closed - signal S21_MAPOPEN (SIG_CLOSE)
    ('M_LEVER', '12', '13', 'SIGNALi', 'SIG_CLOSE', 'S21_MAPOPEN'),
    ('M_LEVER', '13', '14', 'SIGNALi', 'SIG_HIDE', 'S21_ALT_MAPBOX'),  -- the opened machines maybe should signal their alt views :/
    ('M_LEVER', '14', '15', 'SIGNALi', 'SIG_HIDE', 'S21_ALT_LEVER'),
    ('M_LEVER', '15', '16', 'PLAYWAVE', '0', 'SOUND_LEVER'),
    ('M_LEVER', '16', '2', 'SHOW', 'WIP1', '');

-- sleep only works with WPARM and not an arbitrary number
-- Ask Guy about clearing DETIME and what that does
delete from machines where name = 'S21_LEVSTOP';
INSERT INTO "main"."machines" (
    "id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name","wip1_value", "wip2_name", "wip2_value", "wip3_name", "wip3_value", "wip4_name", "wip4_value") 
    VALUES ('8466', 'S21_LEVSTOP', '8105', 'IDV_LEVERCU', '333', '116', '366', '213', '0', 'M_LEVSTOP', '', '', 'S21_LEVER', '8465', '', '0', '', '0');

delete from  "main"."transitions" where name = 'M_LEVSTOP';

INSERT INTO "main"."transitions" ("name", "state", "new_state", "opcode", "param_1", "param_2")
 VALUES 
    ('M_LEVSTOP', '0', '10', 'O_ACCEPT', '0', 'IDD_ROCK'),
    ('M_LEVSTOP', '10', '30', 'DROP', '0', '0'), -- A dropped object is automatically assigend to WOBJECT.
--    ('M_LEVSTOP', '20', '30', 'ASSIGN', 'WOBJECT', 'IDD_ROCK');
    ('M_LEVSTOP', '30', '40', 'SHOW', 'WOBJECT', ''),
    ('M_LEVSTOP', '40', '50', 'PLAYWAVE', '0', 'SOUND_CLICK'),
    ('M_LEVSTOP', '50', '60', 'SIGNAL', 'WIP2', ''),
    ('M_LEVSTOP', '60', '70', 'GRAB', '0', '0'),
    ('M_LEVSTOP', '70', '10', 'SHOW', '0', '0');

delete from machines where name = 'S21_MAPOPEN';
INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip1_value", "wip2_name", "wip2_value", "wip3_name", "wip3_value", "wip4_name", "wip4_value") 
VALUES ('8467', 'S21_MAPOPEN', '8104', 'IDV_MAPBOX1', '40', '0', '227', '177', '0', 'M_LEVDOOR', 'IDS_MAPOPN', '651', 'IDV_MAPROOM', '8106', '', '0', '', '0');

delete from  "main"."transitions" where name = 'M_LEVDOOR';

INSERT INTO "main"."transitions" ("name", "state", "new_state", "opcode", "param_1", "param_2")
 VALUES 
    
   
    ('M_LEVDOOR', '0', '1', 'WAIT', '0', 'SIG_OPEN'),
    ('M_LEVDOOR', '1', '3', 'MOV', 'WSPRITE', 'WIP1'),
    ('M_LEVDOOR', '3', '4', 'SHOW', 'WSPRITE', '0'),
    ('M_LEVDOOR', '4', '7', 'WAIT', '0', 'SIG_CLOSE'),
    ('M_LEVDOOR', '4', '5', 'CLICK', '', '0'),
    ('M_LEVDOOR', '5', '4', 'LOADVIEW', 'WIP2', ''),
    ('M_LEVDOOR', '7', '0', 'SHOW', '0', '0');
  


delete from machines where name = 'S21_ALT_LEVER';
delete from machines where name = 'S21_ALT_MAPBOX';
INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip1_value", "wip2_name", "wip2_value", "wip3_name", "wip3_value", "wip4_name", "wip4_value") 
VALUES 
('8468', 'S21_ALT_LEVER', '8101', 'IDV_N2B', '1556', '142', '1565', '147', '0', 'M_STATESCALE', 'IDS_LEVOPNSML', '652', '', '0', '', '0', '', '0'),
('8469', 'S21_ALT_MAPBOX', '8103', 'IDV_N2D2', '1300', '82', '1350', '182', '0', 'M_STATESCALE', 'IDS_MAPBOXSML', '653', '', '0', '', '0', '', '0');

delete from  "main"."transitions" where name = 'M_STATESCALE';

INSERT INTO "main"."transitions" ("name", "state", "new_state", "opcode", "param_1", "param_2") VALUES 

('M_STATESCALE', '0', '1', 'WAIT', '0', 'SIG_SHOW'),
('M_STATESCALE', '1', '5', 'MOV', 'WSPRITE', 'WIP1'),
('M_STATESCALE', '5', '10', 'SHOW', 'WSPRITE', '0'),
('M_STATESCALE', '10', '11', 'WAIT', '0', 'SIG_HIDE'),
('M_STATESCALE', '11', '0', 'SHOW', '0', '0');

-- Scene 21 Plants and Rocks

delete from  "main"."machines" where name = 'S21_m1BERRYTREE';
delete from  "main"."machines" where name = 'S21_p3BERRYTREE';
delete from  "main"."machines" where name = 'S21_m2BERRYTREE';
delete from  "main"."machines" where name = 'S21_m6BERRYTREE';
delete from  "main"."machines" where name = 'S21_p2BERRYTREE';
delete from  "main"."machines" where name = 'S21_p4BERRYTREE';
delete from  "main"."machines" where name = 'S21_m3BERRYTREE';
delete from  "main"."machines" where name = 'S21_m4BERRYTREE';
delete from  "main"."machines" where name = 'S21_m5BERRYTREE';
delete from  "main"."machines" where name = 'S21_o1BERRYTREE';
delete from  "main"."machines" where name = 'S21_o2BERRYTREE';
delete from  "main"."machines" where name = 'S21_o3BERRYTREE';
delete from  "main"."machines" where name = 'S21_o4BERRYTREE';
delete from  "main"."machines" where name = 'S21_o5BERRYTREE';
delete from  "main"."machines" where name = 'S21_o6BERRYTREE';
delete from  "main"."machines" where name = 'S21_ROCKBIN1';

INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip1_value", "wip2_name", "wip2_value", "wip3_name", "wip3_value", "wip4_name", "wip4_value") 
 VALUES 
 
    ('8449', 'S21_m1BERRYTREE', '8100', 'IDV_N2A', '1830', '213', '1900', '273', '2', 'M_PLANTBIN', 'IDD_FERNLEAF', '8480', 'IDS_FERN', '8497', '60', '60', '', '0'),
    ('8463', 'S21_p3BERRYTREE', '8100', 'IDV_N2A', '708', '220', '758', '278', '2', 'M_PLANTBIN', 'IDD_WFLWRSPT', '8487', 'IDS_WFLOWER', '8501', '60', '60', '', '0'),
    ('8450', 'S21_m2BERRYTREE', '8101', 'IDV_N2B', '2015', '166', '2115', '314', '2', 'M_BIN', 'IDD_REDBERRY', '8486', '', '0', '', '0', '', '0'),
    ('8454', 'S21_m6BERRYTREE', '8101', 'IDV_N2B', '570', '190', '760', '230', '2', 'M_PLANTBIN', 'IDD_YFLWRSPT', '8488', 'IDS_YFLOWER', '8502', '60', '60', '', '0'),
    ('8462', 'S21_p2BERRYTREE', '8101', 'IDV_N2B', '2471', '230', '2531', '290', '2', 'M_PLANTBIN', 'IDD_PFLWRSPT', '8483', 'IDS_PFLOWER', '8500', '60', '60', '', '0'),
    ('8464', 'S21_p4BERRYTREE', '8101', 'IDV_N2B', '1962', '234', '2022', '294', '2', 'M_PLANTBIN', 'IDD_GLEAFSPT', '8481', 'IDS_GRNPLANT', '8498', '60', '60', '', '0'),
    ('8451', 'S21_m3BERRYTREE', '8102', 'IDV_N2C', '572', '212', '632', '272', '2', 'M_PLANTBIN', 'IDD_PFLWRSPT', '8483', 'IDS_PFLOWER', '8500', '60', '60', '', '0'),
    ('8452', 'S21_m4BERRYTREE', '8102', 'IDV_N2C', '219', '219', '279', '279', '2', 'M_PLANTBIN', 'IDD_PFLWRSPT', '8483', 'IDS_PFLOWER', '8500', '60', '60', '', '0'),
    ('8453', 'S21_m5BERRYTREE', '8102', 'IDV_N2C', '61', '161', '235', '209', '2', 'M_PLANTBIN', 'IDD_OMUSHSPT', '8482', 'IDS_OMUSH', '8499', '60', '60', '', '0'),
    ('8455', 'S21_o1BERRYTREE', '8103', 'IDV_N2D2', '1679', '209', '1720', '269', '2', 'M_PLANTBIN', 'IDD_OMUSHSPT', '8482', 'IDS_OMUSH', '8499', '60', '60', '', '0'),
    ('8456', 'S21_o2BERRYTREE', '8103', 'IDV_N2D2', '429', '229', '489', '289', '2', 'M_PLANTBIN', 'IDD_GLEAFSPT', '8481', 'IDS_GRNPLANT', '8498', '60', '60', '', '0'),
    ('8457', 'S21_o3BERRYTREE', '8103', 'IDV_N2D2', '1180', '133', '1280', '291', '2', 'M_BIN', 'IDD_BLUEBERRY', '8485', '', '0', '', '0', '', '0'),
    ('8458', 'S21_o4BERRYTREE', '8103', 'IDV_N2D2', '2030', '201', '2090', '261', '2', 'M_PLANTBIN', 'IDD_YFLWRSPT', '8488', 'IDS_YFLOWER', '8502', '60', '60', '', '0'),
    ('8459', 'S21_o5BERRYTREE', '8103', 'IDV_N2D2', '2100', '212', '2160', '272', '2', 'M_PLANTBIN', 'IDD_PFLWRSPT', '8483', 'IDS_PFLOWER', '8500', '60', '60', '', '0'),
    ('8460', 'S21_o6BERRYTREE', '8103', 'IDV_N2D2', '2170', '195', '2230', '255', '2', 'M_PLANTBIN', 'IDD_PFLWRSPT', '8483', 'IDS_PFLOWER', '8500', '60', '60', '', '0'),

    ('8460', 'S21_ROCKBIN1', '8102', 'IDV_N2C', '1081', '223', '1120', '255', '2', 'M_PLANTBIN', 'IDD_ROCKBIN', '5898', 'IDS_ROCK', '5892', '60', '60', '', '0');