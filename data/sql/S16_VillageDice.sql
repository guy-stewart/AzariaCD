delete from games;

delete from spr_names where [name] like 'IDS_DICE%';
insert into spr_names values ('IDS_DICE','dice','25000');
insert into spr_names values ('IDS_DICE_1','dice_1','25001');
insert into spr_names values ('IDS_DICE_2','dice_2','25002');
insert into spr_names values ('IDS_DICE_3','dice_3','25003');
insert into spr_names values ('IDS_DICE_4','dice_4','25004');
insert into spr_names values ('IDS_DICE_5','dice_5','25005');
insert into spr_names values ('IDS_DICE_6','dice_6','25006');

delete from objects where object = 'IDD_DICE';
insert into objects values
('IDD_DICE',25007,'IDC_NULL','die','die','die');

delete from map where op like 'S16_DICE%';
INSERT INTO "main"."map" ("op", "key", "value")
VALUES 
('S16_DICE_MAP',1,'IDS_DICE_1'), 
('S16_DICE_MAP',2,'IDS_DICE_2'), 
('S16_DICE_MAP',3,'IDS_DICE_3'), 
('S16_DICE_MAP',4,'IDS_DICE_4'), 
('S16_DICE_MAP',5,'IDS_DICE_5'), 
('S16_DICE_MAP',6,'IDS_DICE_6');
 


delete from machines where name = 'S16_DICETABLE';

INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name","wip3_name",  "wip4_name") 
VALUES 
('16003', 'S16_DICETABLE', '4881', 'IDV_TRAYL', '150', '140', '300', '250', '0','M16_DICEROLL','IDS_DICE','','', '');

delete from transitions where automaton = 'M16_DICEROLL';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code","guard")
VALUES 
('M16_DICEROLL', '0', '2', 'O_ACCEPT', '0', 'IDD_DICE', '',''),
('M16_DICEROLL', '2', '3', 'DROP', '0', '0', '',''),
('M16_DICEROLL', '3', '4', 'MOV', 'WSPRITE', 'WIP1', '',''),
--('M16_DICEROLL', '4', '5', 'ESTIME', '', '1', '',''),
('M16_DICEROLL', '4', '5', 'ASHOW', 'WSPRITE', 'V_LOOP', '',''),
('M16_DICEROLL', '5', '6', 'ESTIME', '', '2', '',''), 

('M16_DICEROLL','6','7','RAND','6','1','',''),
('M16_DICEROLL','7','8','MOV','BFRAME', 'WRAND','
    MAPi(BFRAME,S16_DICE_MAP);
    SHOW(BFRAME);
',''),
('M16_DICEROLL', '8', '0', 'GRAB', '', '', 'CLEAR(WOBJECT);SHOW();','');


