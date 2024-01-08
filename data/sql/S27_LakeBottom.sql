delete from games;


delete from spr_names where name = 'IDS_CLAM';
delete from spr_names where name = 'IDS_TICKLEPLANT';
delete from spr_names where name = 'IDS_TICKLELEAF';
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_CLAM', 'CLAM', '1613');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_TICKLEPLANT', 'tickleplant', '1614');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_TICKLELEAF', 'tickleleaf', '1615');

delete from machines where name like 'S27_POLE%';
delete from machines where name like 'S27_FISH%';


INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") 
VALUES 
('9820', 'S27_POLESTANDa', '5385', 'IDV_TMPLPTH9', '930', '120', '1000', '300', '0', 'M_POLESTAND', '', '','',''),
('9821', 'S27_FISHSTATION1', '5385', 'IDV_TMPLPTH9', '257', '151', '345', '275', '0', 'M_FISHSTATION',  '', '','',''),
('9822', 'S27_FISHSTATION2', '5385', 'IDV_TMPLPTH9', '351', '151', '400', '275', '0', 'M_FISHSTATION',  '', '','',''),
('9823', 'S27_LAKEMANAGER', '5390', 'IDV_LAKEB1', '1', '1', '10', '10', '0', 'M_LAKEMANGER',  '', '','','');




--SIGNALi(SIG_SET,S27_LAKEMANAGER);
--SIGNALi(SIG_CLEAR,S27_LAKEMANAGER);
--Waiting on triggers to be fixed
delete from triggers where [from] = 'IDV_TMPLPTH9';
delete from triggers where [from] = 'IDV_LAKEB1';
INSERT INTO "main"."triggers" ("from", "left", "top", "right", "bottom", "to", "facing", "code") 
VALUES 
('IDV_TMPLPTH9', '2620', '126', '3148', '278','IDV_LAKEB1', '354', ''),
('IDV_LAKEB1', '1268', '9', '1696', '224','IDV_TMPLPTH9', '166', '');






--Remove old cardinal for entering lake
delete from cardinals where [from] = 'IDV_TMPLPTH9';
delete from cardinals where [from] = 'IDV_LAKEB1';
INSERT INTO "main"."cardinals" ("from", "north", "northeast", "east", "southeast", "south", "southwest", "west", "northwest") VALUES 
('IDV_TMPLPTH9', '', '', '', 'IDV_TMPLPTH5', '', '', '', ''),
('IDV_LAKEB1', 'IDV_LAKEB2', '', '', '', '', '', '', '');


--WAIT FOR SIG_SET and the player is in
--there's a certain amount of air in lungs start timer
-- check for spell protection (add to timer)
-- timer runs out -- start draining energy

-- auto for testing
-- 'WAIT', '', 'SIG_SET', '
delete from transitions where automaton = 'M_LAKEMANGER';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code")
VALUES 
('M_LAKEMANGER', '0', 'swimming', 'WAIT', '', 'SIG_SET', '
    PLAYWAVE(SOUND_SPLASH);
    BPARM=5;
'),
('M_LAKEMANGER', 'swimming', 'fineOnBreath', 'ESTIME', '', 'BPARM', ''),
('M_LAKEMANGER', 'fineOnBreath', 'needAir', 'Z_EPSILON', '0', '', ''),
('M_LAKEMANGER', 'needAir', 'swimming', 'IFSTATE', 'active', 'WETBREATH_ACTIVE', ''),
('M_LAKEMANGER', 'needAir', 'drowning', 'ESTIME', '0', '2','
     PLAYWAVE(SOUND_BURBLE);
    SIGNAL(SID_DEC_ENERGY,SIG_DEC); 
    
 
'),
('M_LAKEMANGER', 'drowning', 'dead', 'LTE', 'LENERGY','1', ''),
('M_LAKEMANGER', 'drowning', '0', 'WAIT', '','SIG_CLEAR', ''),
('M_LAKEMANGER', 'drowning', 'needAir', 'Z_EPSILON', '', '', ''),
('M_LAKEMANGER', 'dead', '0', 'Z_EPSILON', '','', '');










delete from objects where object = 'IDD_TICKLELEAF';
insert into objects values
('IDD_TICKLELEAF','IDD_NULL','0','tickleleaf','tickleleaf','tickleleaf');


delete from machines where name = 'S27_HUNGRYCLAM';
delete from machines where name = 'S27_TICKLEPLANT';
INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") VALUES 
('9800', 'S27_HUNGRYCLAM', '5390', 'IDV_LAKEB1', '1722', '162', '1780', '200', '0', 'M_CLAM', 'IDS_CLAM', '', '', ''),
('9801', 'S27_TICKLEPLANT', '5391', 'IDV_LAKEB2', '448', '164', '584', '271', '2', 'M_PLANTBIN', 'IDD_TICKLELEAF', 'IDS_TICKLEPLANT', '60', '');

delete from transitions where automaton = 'M_CLAM';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code")
VALUES 
('M_CLAM', '0', '1', 'MOV', 'BFRAME', '0', ''),
('M_CLAM', '1', '2', 'SHOW', 'WIP1', '', ''),
('M_CLAM', '2', '10', 'CLICK', '', '', 'SIGNALi(SIG_SET,S27_LAKEMANAGER);'),
('M_CLAM', '10', '2', 'Z_EPSILON', '', '', ''),
('M_CLAM',  '2', '3', 'DRAG', '0', 'IDD_TICKLELEAF', ''),
('M_CLAM', '3', '4', 'ESTIME', '', '3', ''),
('M_CLAM', '4', '5', 'ADDI', 'BFRAME', '1', ''),
('M_CLAM', '5', '0', 'GRAB', '', 'IDD_EMERALD', '');







-- ('M_CLAM', '0', '1', 'MOV', 'BFRAME', '0', ''),
-- ('M_CLAM', '1', '2', 'SHOW', 'WIP1', '', ''),
-- ('M_CLAM',  '2', '3', 'DRAG', '0', 'IDD_TICKLELEAF', ''),
-- ('M_CLAM', '3', '4', 'ESTIME', '', '3', ''),
-- ('M_CLAM', '4', '5', 'ADDI', 'BFRAME', '1', ''),
-- ('M_CLAM', '5', '0', 'GRAB', '', 'IDD_EMERALD', '');