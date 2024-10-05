delete from games;


delete from spr_names where name = 'IDS_CLAM';
delete from spr_names where name = 'IDS_TICKLEPLANT';
delete from spr_names where name = 'IDS_TICKLELEAF';
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_CLAM', 'CLAM', '1613');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_TICKLEPLANT', 'tickleplant', '1614');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_TICKLELEAF', 'tickleleaf', '1615');

delete from machines where name like 'S27_POLE%';
delete from machines where name like 'S27_FISH%';
delete from machines where name like 'S27_LAKE%';
delete from machines where name like 'S27_DEATH%';

INSERT INTO "main"."machines" ( "name","view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") 
VALUES 
('S27_POLESTANDa',   'IDV_TMPLPTH9', '930', '120', '1000', '300', '0', 'M_POLESTAND', '', '','',''),
('S27_FISHSTATION1', 'IDV_TMPLPTH9', '257', '151', '345', '275', '0', 'M_FISHSTATION',  '', '','',''),
('S27_FISHSTATION2', 'IDV_TMPLPTH9', '351', '151', '400', '275', '0', 'M_FISHSTATION',  '', '','',''),
('S27_DEATHMANAGER', 'IDV_LAKEB1', '1', '1', '10', '10', '1', 'M_DEATHMANAGER', '5', 'WETBREATH_ACTIVE','2','SOUND_SPLASH');




delete from triggers where [from] = 'IDV_TMPLPTH9';
delete from triggers where [from] = 'IDV_LAKEB1';
INSERT INTO "main"."triggers" ("from", "left", "top", "right", "bottom", "to", "facing", "code") 
VALUES 
('IDV_TMPLPTH9', '2620', '126', '3148', '278','IDV_LAKEB1', '354', 'SIGNAL(S27_DEATHMANAGER,SIG_START);'),
('IDV_LAKEB1', '1268', '9', '1696', '224','IDV_TMPLPTH9', '166', 'SIGNAL(S27_DEATHMANAGER,SIG_CLEAR);');


--Remove old cardinal for entering lake
delete from cardinals where [from] = 'IDV_TMPLPTH9';
delete from cardinals where [from] = 'IDV_LAKEB1';
INSERT INTO "main"."cardinals" ("from", "north", "northeast", "east", "southeast", "south", "southwest", "west", "northwest") VALUES 
('IDV_TMPLPTH9', '', '', '', 'IDV_TMPLPTH5', '', '', '', ''),
('IDV_LAKEB1', 'IDV_LAKEB2', '', '', '', '', '', '', '');


--WAIT FOR SIG_START and the player is in
--there's a certain amount of air in lungs start timer
-- check for spell protection (add to timer)
-- timer runs out -- start draining energy

-- auto for testing
-- 'WAIT', '', 'SIG_START', '

--WIP1 = time before pain sets in
--WIP2 = protection spell that may be active
--WIP3 = time between pain
--WIP4 = Entry sound

delete from transitions where automaton = 'M_DEATHMANAGER';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code")
VALUES 
('M_DEATHMANAGER', '0', 'safe', 'WAIT', '','SIG_START', '
    PLAYWAVE(WIP4);
'),
('M_DEATHMANAGER', 'safe', 'fineOnBreath', 'ESTIME', '', 'WIP1', ''),
('M_DEATHMANAGER', 'safe', '0','WAIT','','SIG_CLEAR', ''),
('M_DEATHMANAGER', 'fineOnBreath', 'needAir', 'Z_EPSILON', '0', '', ''),
('M_DEATHMANAGER', 'needAir', 'safe', 'IFSTATE', 'active', 'WIP2', ''),
('M_DEATHMANAGER', 'needAir', 'dieing', 'ESTIME', '0', 'WIP3','
     PLAYWAVE(SOUND_BURBLE);
     SIGNAL(SID_DEC_ENERGY,SIG_DEC); 
'),
('M_DEATHMANAGER', 'needAir', '0','WAIT','','SIG_CLEAR', ''),
('M_DEATHMANAGER', 'dieing', 'dead', 'LTE', 'LENERGY','1', ''),
('M_DEATHMANAGER', 'dieing', 'needAir', 'Z_EPSILON', '', '', ''),
('M_DEATHMANAGER', 'dead', '0', 'Z_EPSILON', '','', '');



delete from objects where object = 'IDD_TICKLELEAF';
insert into objects values
('IDD_TICKLELEAF','IDD_NULL','tickleleaf','tickleleaf','tickleleaf');


delete from machines where name = 'S27_HUNGRYCLAM';
delete from machines where name = 'S27_TICKLEPLANT';
INSERT INTO "main"."machines" ("name", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") VALUES 
('S27_HUNGRYCLAM', 'IDV_LAKEB1', '1722', '162', '1780', '200', '0', 'M_CLAM', 'IDS_CLAM', '', '', ''),
('S27_TICKLEPLANT','IDV_LAKEB2', '448', '164', '584', '271', '2', 'M_PLANTBIN', 'IDD_TICKLELEAF', 'IDS_TICKLEPLANT', '60', '');

delete from transitions where automaton = 'M_CLAM';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code")
VALUES 
('M_CLAM', '0', '1', 'MOV', 'BFRAME', '0', ''),
('M_CLAM', '1', '2', 'SHOW', 'WIP1', '', ''),
('M_CLAM',  '2', '3', 'DRAG', 'IDD_TICKLELEAF, IDD_BAIT1', '', ''),
('M_CLAM', '3', '4', 'ESTIME', '', '3', ''),
('M_CLAM', '4', '5', 'ADDI', 'BFRAME', '1', '
    ADDI(LWISDOM,1); 
    SIGNALi(0,SID_ID);
'),
('M_CLAM', '5', '0', 'GRAB', '', 'IDD_EMERALD', '');






