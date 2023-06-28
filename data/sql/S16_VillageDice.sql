delete from games;

delete from spr_names where [name] like 'IDS_DICE%';
delete from spr_names where [name] like 'IDS_SHAKE%';
insert into spr_names values ('IDS_DICE','dice','25000');
insert into spr_names values ('IDS_DICE_1','dice_1','25001');
insert into spr_names values ('IDS_DICE_2','dice_2','25002');
insert into spr_names values ('IDS_DICE_3','dice_3','25003');
insert into spr_names values ('IDS_DICE_4','dice_4','25004');
insert into spr_names values ('IDS_DICE_5','dice_5','25005');
insert into spr_names values ('IDS_DICE_6','dice_6','25006');
insert into spr_names values ('IDS_DICESHAKE','diceshake','25008');

delete from objects where object = 'IDD_DICE';
delete from objects where object = 'IDD_SHAKE';
insert into objects values
('IDD_DICE',25007,'IDC_NULL','die','die','die'),
('IDD_SHAKE',25008,'IDC_NULL','diceshake','diceshake','diceshake');


delete from map where op like 'S16_DICE%';
INSERT INTO "main"."map" ("op", "key", "value")
VALUES 
('S16_DICE_MAP',1,'IDS_DICE_1'), 
('S16_DICE_MAP',2,'IDS_DICE_2'), 
('S16_DICE_MAP',3,'IDS_DICE_3'), 
('S16_DICE_MAP',4,'IDS_DICE_4'), 
('S16_DICE_MAP',5,'IDS_DICE_5'), 
('S16_DICE_MAP',6,'IDS_DICE_6');
 


delete from machines where [name] like 'S16_DICETABLE%';
delete from machines where [name] like 'S16_DICEDROP%';
delete from machines where [name] like 'S16_DICEROLL%';

INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name","wip3_name",  "wip4_name") 
VALUES 
('16003', 'S16_DICEDROP_R', '4881', 'IDV_TRAYL', '218', '133', '333', '174', '0','M16_DICEDROP','S16_DICEROLL_R1','S16_DICEROLL_R2','', ''),
('16004', 'S16_DICEROLL_R1', '4881', 'IDV_TRAYL', '205', '140', '280', '240', '0','M16_DICEROLL','IDS_DICE','S16_DICEROLL_R2','', ''),
('16005', 'S16_DICEROLL_R2', '4881', 'IDV_TRAYL', '281', '140', '365', '240', '0','M16_DICEROLL','IDS_DICE','S16_DICEROLL_R1','', ''),

('16006', 'S16_DICEDROP_L', '4881', 'IDV_TRAYL', '50', '120', '176', '150', '0','M16_DICEDROP','S16_DICEROLL_L1','S16_DICEROLL_L2','', ''),
('16007', 'S16_DICEROLL_L1', '4881', 'IDV_TRAYL', '40', '150', '100', '210', '0','M16_DICEROLL','IDS_DICE','S16_DICEROLL_L2','', ''),
('16008', 'S16_DICEROLL_L2', '4881', 'IDV_TRAYL', '110', '150', '160', '210', '0','M16_DICEROLL','IDS_DICE','S16_DICEROLL_L1','', '');



delete from transitions where automaton = 'M16_DICEDROP';
delete from transitions where automaton = 'M16_DICEROLL';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code","guard")
VALUES 

('M16_DICEDROP', '0', '2', 'O_ACCEPT', '0', 'IDD_SHAKE', '',''),
('M16_DICEDROP', '2', '3', 'DROP', '0', '0', 'SIGNAL(WIP1,SIG_SHOW);',''),
('M16_DICEDROP', '3', '0', 'ESTIME', '', '.5', 'SIGNAL(WIP2,SIG_SHOW);',''), 


('M16_DICEROLL', '0', '2', 'WAIT', '0', 'SIG_SHOW', '',''),

('M16_DICEROLL', '2', '4', 'MOV', 'WSPRITE', 'WIP1', '',''),
('M16_DICEROLL', '4', '5', 'ASHOW', 'WSPRITE', 'V_LOOP', '',''),
('M16_DICEROLL', '5', '6', 'ESTIME', '', '2', '',''), 
('M16_DICEROLL','6','7','RAND','6','1','',''),
('M16_DICEROLL','7','8','MOV','BFRAME', 'WRAND','
    MAPi(BFRAME,S16_DICE_MAP);
    SHOW(BFRAME);
',''),
('M16_DICEROLL', '8', '0', 'GRAB', '', 'IDD_SHAKE', ' 
    SIGNAL(WIP2,SIG_HIDE); 
    CLEAR(WOBJECT);
    SHOW();
',''),
('M16_DICEROLL', '8', '9', 'WAIT', '0', 'SIG_HIDE', '',''),
('M16_DICEROLL', '9', '0', 'CLEAR', '', 'WOBJECT', 'SHOW(); 
','');



-- A single dice rolling

-- ('M16_DICEROLL', '0', '2', 'O_ACCEPT', '0', 'IDD_SHAKE', '',''),
-- ('M16_DICEROLL', '2', '3', 'DROP', '0', '0', '',''),
-- ('M16_DICEROLL', '3', '4', 'MOV', 'WSPRITE', 'WIP1', '',''),
-- ('M16_DICEROLL', '4', '5', 'ASHOW', 'WSPRITE', 'V_LOOP', '',''),
-- ('M16_DICEROLL', '5', '6', 'ESTIME', '', '2', '',''), 

-- ('M16_DICEROLL','6','7','RAND','6','1','',''),
-- ('M16_DICEROLL','7','8','MOV','BFRAME', 'WRAND','
--     MAPi(BFRAME,S16_DICE_MAP);
--     SHOW(BFRAME);
-- ',''),
-- ('M16_DICEROLL', '8', '0', 'GRAB', '', '', 'CLEAR(WOBJECT);SHOW();','');