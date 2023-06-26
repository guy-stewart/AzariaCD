delete from games;

delete from "main"."cardinals" where [from] like 'IDV_MOON%';
--needed to reverse order of moondisks to match 1 being closesest to the planet
--which is represented by the building 
INSERT INTO "main"."cardinals" ("from", "north", "northeast", "east", "southeast", "south", "southwest", "west", "northwest") VALUES ('IDV_MOON1', 'IDV_GRNDCNT1', '', '', '', 'IDV_MOON2', 'IDV_MOONDISK7', '', '');
INSERT INTO "main"."cardinals" ("from", "north", "northeast", "east", "southeast", "south", "southwest", "west", "northwest") VALUES ('IDV_MOON2', 'IDV_MOON1', '', '', 'IDV_MOONDISK6', 'IDV_MOON3', '', '', 'IDV_MOONDISK7');
INSERT INTO "main"."cardinals" ("from", "north", "northeast", "east", "southeast", "south", "southwest", "west", "northwest") VALUES ('IDV_MOON3', 'IDV_MOON2', '', '', '', 'IDV_MOON4', '', 'IDV_MOONDISK5', '');
INSERT INTO "main"."cardinals" ("from", "north", "northeast", "east", "southeast", "south", "southwest", "west", "northwest") VALUES ('IDV_MOON4', 'IDV_MOON3', 'IDV_MOONDISK4', '', '', 'IDV_MOON5', 'IDV_MOONDISK3', '', '');
INSERT INTO "main"."cardinals" ("from", "north", "northeast", "east", "southeast", "south", "southwest", "west", "northwest") VALUES ('IDV_MOON5', 'IDV_MOON4', '', 'IDV_MOONDISK2', '', '', 'IDV_MOONDISK1', '', '');

delete from "main"."panel_nav" where [from] like 'IDV_MOONDISK%';
INSERT INTO "main"."panel_nav" ("from", "forward", "back") VALUES ('IDV_MOONDISK1', '', 'IDV_MOON5');
INSERT INTO "main"."panel_nav" ("from", "forward", "back") VALUES ('IDV_MOONDISK2', '', 'IDV_MOON5');
INSERT INTO "main"."panel_nav" ("from", "forward", "back") VALUES ('IDV_MOONDISK3', '', 'IDV_MOON4');
INSERT INTO "main"."panel_nav" ("from", "forward", "back") VALUES ('IDV_MOONDISK4', '', 'IDV_MOON4');
INSERT INTO "main"."panel_nav" ("from", "forward", "back") VALUES ('IDV_MOONDISK5', '', 'IDV_MOON3');
INSERT INTO "main"."panel_nav" ("from", "forward", "back") VALUES ('IDV_MOONDISK6', '', 'IDV_MOON2');
INSERT INTO "main"."panel_nav" ("from", "forward", "back") VALUES ('IDV_MOONDISK7', '', 'IDV_MOON1');




delete from spr_names where name = 'IDS_MOONSPIN';
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_MOONSPIN','moonspin','1634');

delete from machines where name = 'S28_DISK1';
delete from machines where name = 'S28_DISK2';
delete from machines where name = 'S28_DISK3';
delete from machines where name = 'S28_DISK4';
delete from machines where name = 'S28_DISK5';
delete from machines where name = 'S28_DISK6';
delete from machines where name = 'S28_DISK7';


INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name","wip3_name",  "wip4_name") 
VALUES 
--These are 1 nearest the planet to 7 furthest away
('9910', 'S28_DISK1', '4706', 'IDV_MOONDISK1', '41', '0', '320', '235', '0','M_DISKSPIN','S27_MEMSTONE1','','', ''),
('9911', 'S28_DISK2', '4707', 'IDV_MOONDISK2', '41', '0', '320', '235', '0','M_DISKSPIN','S27_MEMSTONE2','','', ''),
('9912', 'S28_DISK3', '4708', 'IDV_MOONDISK3', '41', '0', '320', '235', '0','M_DISKSPIN','S27_MEMSTONE3','','', ''),
('9913', 'S28_DISK4', '4709', 'IDV_MOONDISK4', '41', '0', '320', '235', '0','M_DISKSPIN','S27_MEMSTONE4','','', ''),
('9914', 'S28_DISK5', '4710', 'IDV_MOONDISK5', '41', '0', '320', '235', '0','M_DISKSPIN','S27_MEMSTONE5','','', ''),
('9915', 'S28_DISK6', '4711', 'IDV_MOONDISK6', '41', '0', '320', '235', '0','M_DISKSPIN','S27_MEMSTONE6','','', ''),
('9916', 'S28_DISK7', '4712', 'IDV_MOONDISK7', '41', '0', '320', '235', '0','M_DISKSPIN','S27_MEMSTONE7','','', ''),

('9917', 'S28_KAMDOOR', '4705', 'IDV_MOON5', '1508', '132', '1597', '200', '0','M_KAMDOOR','','','', '');

delete from transitions where automaton = 'M_DISKSPIN';
delete from transitions where automaton = 'M_KAMDOOR';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code","guard")
VALUES 
('M_DISKSPIN','0','5','MOV','BFRAME','0','',''),
('M_DISKSPIN','5','10','SHOW','','IDS_MOONSPIN','',''),
('M_DISKSPIN','10','20','LTE','BFRAME','7','',''),
('M_DISKSPIN','10','0','Z_EPSILON','','','ADD(BFRAME,1);',''),
('M_DISKSPIN','20','10','CLICK','','','ADD(BFRAME,1);MOV(BPARM,BFRAME);SIGNALi(SIG_CHECK,S28_KAMDOOR);',''),


('M_KAMDOOR','0','10','WAIT','','SIG_CHECK','ASSIGN(WPARM,0);',''), --WPARM will need to equal 7 to open the door

('M_KAMDOOR','10','11','REF_MACHINE','S27_MEMSTONE7','','MOV(WTEMP1,R_BPARM);',''),
('M_KAMDOOR','11','12','REF_MACHINE','S28_DISK7','','MOV(WTEMP2,R_BPARM);',''),
('M_KAMDOOR','12','20','EQUAL','WTEMP1','WTEMP2','ADD(WPARM,1);',''), -- need to change to go to 20 - A lso have a 0 problem frame 0 vs just initalize 0
('M_KAMDOOR','12','0','Z_EPSILON','','','',''),

('M_KAMDOOR','20','21','REF_MACHINE','S27_MEMSTONE6','','MOV(WTEMP1,R_BPARM);',''),
('M_KAMDOOR','21','22','REF_MACHINE','S28_DISK6','','MOV(WTEMP2,R_BPARM);',''),
('M_KAMDOOR','22','0','EQUAL','WTEMP1','WTEMP2','ADD(WPARM,1);',''),
('M_KAMDOOR','22','0','Z_EPSILON','','','','');