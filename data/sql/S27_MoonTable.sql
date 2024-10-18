


delete from spr_names where name = 'IDS_MOON1';
delete from spr_names where name = 'IDS_MOON2';
delete from spr_names where name = 'IDS_MOON3';
delete from spr_names where name = 'IDS_MOON4';
delete from spr_names where name = 'IDS_MOON5';
delete from spr_names where name = 'IDS_MOON6';
delete from spr_names where name = 'IDS_MOON7';
delete from spr_names where name = 'IDS_MEMSPELL';
delete from spr_names where name = 'IDS_MEMFUSE';
delete from spr_names where name = 'IDS_MEMFUSEO';
delete from spr_names where name = 'IDS_MEMSPELLO';


INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_MOON1', 'm1', '1621');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_MOON2', 'm2', '1622');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_MOON3', 'm3', '1623');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_MOON4', 'm4', '1624');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_MOON5', 'm5', '1625');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_MOON6', 'm6', '1626');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_MOON7', 'm7', '1627');

INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_MEMSPELL', 'MEMSPELL', '1630');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_MEMFUSE', 'MEMSFUSE', '1631');


INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_MEMSPELLO', 'memspello', '1632');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_MEMFUSEO', 'memfuseo', '1633');


delete from objects where object = 'IDD_MEMSPELL';
delete from objects where object = 'IDD_MEMFUSE';
insert into objects values
('IDD_MEMSPELL','IDC_SPELL','MEMSPELL','MEMSPELL','MEMSPELL'),
('IDD_MEMFUSE', 'IDD_NULL','MEMFUSE','MEMFUSE','MEMFUSE');

delete from machines where name = 'S27_MEMSTONE1';
delete from machines where name = 'S27_MEMSTONE2';
delete from machines where name = 'S27_MEMSTONE3';
delete from machines where name = 'S27_MEMSTONE4';
delete from machines where name = 'S27_MEMSTONE5';
delete from machines where name = 'S27_MEMSTONE6';
delete from machines where name = 'S27_MEMSTONE7';

delete from machines where name = 'S27_MEMFUSE';
delete from machines where name = 'S27_MEMSPELL';
INSERT INTO "main"."machines" ("name", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name","wip3_name",  "wip4_name") 
VALUES 
--These are 1 nearest the planet to 7 furthest away
('S27_MEMSTONE1', 'IDV_MEMSTONE', '0', '0', '10', '10', '0','M_MEMORY','IDS_MOON1','8','', ''),
('S27_MEMSTONE2', 'IDV_MEMSTONE', '0', '0', '10', '20', '0','M_MEMORY','IDS_MOON2','8','', ''),
('S27_MEMSTONE3', 'IDV_MEMSTONE', '0', '0', '10', '30', '0','M_MEMORY','IDS_MOON3','8','', ''),
('S27_MEMSTONE4', 'IDV_MEMSTONE', '0', '0', '10', '40', '0','M_MEMORY','IDS_MOON4','8','', ''),
('S27_MEMSTONE5', 'IDV_MEMSTONE', '0', '0', '10', '50', '0','M_MEMORY','IDS_MOON5','8','', ''),
('S27_MEMSTONE6', 'IDV_MEMSTONE', '0', '0', '10', '60', '0','M_MEMORY','IDS_MOON6','8','', ''),
('S27_MEMSTONE7', 'IDV_MEMSTONE', '0', '0', '10', '70', '0','M_MEMORY','IDS_MOON7','8','', ''),


('S27_MEMFUSE', 'IDV_MEMSTONE', '355', '109','390', '172', '0','M_MEMOBJ','IDD_MEMFUSE','IDD_MEMSPELL', 'IDS_MEMFUSEO', 'S27_MEMSPELL'),
('S27_MEMSPELL', 'IDV_MEMSTONE', '8', '111', '281', '163', '0','M_MEMOBJ','IDD_MEMSPELL','IDD_MEMFUSE', 'IDS_MEMSPELLO', 'S27_MEMFUSE');


delete from transitions where automaton = 'M_MEMORY';
delete from transitions where automaton = 'M_MEMOBJ';


INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code")
VALUES 
('M_MEMORY','0','1','WAIT','','SIG_SHOW',''),
('M_MEMORY','1','2','RAND','0','8',''),
('M_MEMORY','2','3','MOV','BFRAME', 'WRAND',''), -- 
('M_MEMORY','3','4','SHOW','WIP1', '', 'MOV(BPARM,BFRAME);ASSIGN(WPARM,1);'),
('M_MEMORY','4','5','WAIT','','SIG_HIDE',''),
('M_MEMORY', '5', '6', 'CLEAR', 'WSPRITE', '', ''),
('M_MEMORY', '6', '0', 'SHOW', '', '', '');

-- GO TO STATE WRAND+10 - SO THAT YOU CAN CHECK STATE OF MACHINE AND KNOW WHAT FRAME IT'S ON



INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code")
VALUES 
('M_MEMOBJ', '0', '1', 'Z_EPSILON', '', '',''),
('M_MEMOBJ', '1', '2', 'DROP', 'WIP1','','
    ADDI(LWISDOM,3); 
    SIGNALi(0,SID_ID);
'),
('M_MEMOBJ','2', '3', 'MOV', 'WSPRITE', 'WIP3', ''),
('M_MEMOBJ', '3', '4', 'SHOW','WSPRITE', '',''),
('M_MEMOBJ', '4', '5', 'ASSIGN', 'BPARM', 'WIP1',''),
--CHECK THE OTHER OBJECT
('M_MEMOBJ', '5', '11', 'IFSTATE', '18', 'WIP4',''),
('M_MEMOBJ', '5', '18', 'Z_EPSILON', '', '',''),
('M_MEMOBJ', '11', '12', 'SIGNALi', 'SIG_SHOW', 'S27_MEMSTONE1',''),
('M_MEMOBJ', '12', '13', 'SIGNALi', 'SIG_SHOW', 'S27_MEMSTONE2',''),
('M_MEMOBJ', '13', '14', 'SIGNALi', 'SIG_SHOW', 'S27_MEMSTONE3',''),
('M_MEMOBJ', '14', '15', 'SIGNALi', 'SIG_SHOW', 'S27_MEMSTONE4',''),
('M_MEMOBJ', '15', '16', 'SIGNALi', 'SIG_SHOW', 'S27_MEMSTONE5',''),
('M_MEMOBJ', '16', '17', 'SIGNALi', 'SIG_SHOW', 'S27_MEMSTONE6',''),
('M_MEMOBJ', '17', '18', 'SIGNALi', 'SIG_SHOW', 'S27_MEMSTONE7',''),

('M_MEMOBJ', '18', '20', 'GRAB', 'WIP1', '', ''),
('M_MEMOBJ', '20', '21', 'CLEAR', 'WOBJECT', '', ''),
('M_MEMOBJ', '21', '22', 'CLEAR', 'WPARM', '', ''),
('M_MEMOBJ', '22', '23', 'CLEAR', 'WSPRITE', '', ''),
('M_MEMOBJ', '23', '30', 'SHOW', '', '', '
    ADDI(LKARMA,2);
    SIGNAL(SID_HALO,SIG_ADD);
'),
('M_MEMOBJ', '30', '31', 'SIGNALi', 'SIG_HIDE', 'S27_MEMSTONE1',''),
('M_MEMOBJ', '31', '32', 'SIGNALi', 'SIG_HIDE', 'S27_MEMSTONE2',''),
('M_MEMOBJ', '32', '33', 'SIGNALi', 'SIG_HIDE', 'S27_MEMSTONE3',''),
('M_MEMOBJ', '33', '34', 'SIGNALi', 'SIG_HIDE', 'S27_MEMSTONE4',''),
('M_MEMOBJ', '34', '35', 'SIGNALi', 'SIG_HIDE', 'S27_MEMSTONE5',''),
('M_MEMOBJ', '35', '36', 'SIGNALi', 'SIG_HIDE', 'S27_MEMSTONE6',''),
('M_MEMOBJ', '36', '0', 'SIGNALi', 'SIG_HIDE', 'S27_MEMSTONE7','');

