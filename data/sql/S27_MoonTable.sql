delete from games;


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
('IDD_MEMSPELL','1630','IDC_SPELL','8','MEMSPELL','MEMSPELL','MEMSPELL'),
('IDD_MEMFUSE','1631','IDD_NULL','0','MEMFUSE','MEMFUSE','MEMFUSE');

delete from machines where name = 'S27_MEMSTONE1';
delete from machines where name = 'S27_MEMSTONE2';
delete from machines where name = 'S27_MEMSTONE3';
delete from machines where name = 'S27_MEMSTONE4';
delete from machines where name = 'S27_MEMSTONE5';
delete from machines where name = 'S27_MEMSTONE6';
delete from machines where name = 'S27_MEMSTONE7';

delete from machines where name = 'S27_MEMFUSE';
delete from machines where name = 'S27_MEMSPELL';
INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip1_value", "wip2_name", "wip2_value", "wip3_name", "wip3_value", "wip4_name", "wip4_value") 
VALUES 
('9810', 'S27_MEMSTONE1', '5393', 'IDV_MEMSTONE', '0', '0', '10', '10', '0','M_MEMORY','IDS_MOON1','1621','8', '', '', '', '', ''),
('9811', 'S27_MEMSTONE2', '5393', 'IDV_MEMSTONE', '0', '0', '10', '20', '0','M_MEMORY','IDS_MOON2','1622','8', '', '', '', '', ''),
('9812', 'S27_MEMSTONE3', '5393', 'IDV_MEMSTONE', '0', '0', '10', '30', '0','M_MEMORY','IDS_MOON3','1623','8', '', '', '', '', ''),
('9813', 'S27_MEMSTONE4', '5393', 'IDV_MEMSTONE', '0', '0', '10', '40', '0','M_MEMORY','IDS_MOON4','1624','8', '', '', '', '', ''),
('9814', 'S27_MEMSTONE5', '5393', 'IDV_MEMSTONE', '0', '0', '10', '50', '0','M_MEMORY','IDS_MOON5','1625','8', '', '', '', '', ''),
('9815', 'S27_MEMSTONE6', '5393', 'IDV_MEMSTONE', '0', '0', '10', '60', '0','M_MEMORY','IDS_MOON6','1626','8', '', '', '', '', ''),
('9816', 'S27_MEMSTONE7', '5393', 'IDV_MEMSTONE', '0', '0', '10', '70', '0','M_MEMORY','IDS_MOON7','1627','8', '', '', '', '', ''),


('9817', 'S27_MEMFUSE', '5393', 'IDV_MEMSTONE', '355', '109','390', '172', '0','M_MEMOBJ','IDD_MEMFUSE','1631','IDD_MEMSPELL','1630', 'IDS_MEMFUSEO', '1633', 'S27_MEMSPELL', '9818'),
('9818', 'S27_MEMSPELL', '5393', 'IDV_MEMSTONE', '8', '111', '281', '163', '0','M_MEMOBJ','IDD_MEMSPELL','1630','IDD_MEMFUSE','1631', 'IDS_MEMSPELLO', '1632', 'S27_MEMFUSE', '9817');


delete from transitions where name = 'M_MEMORY';
delete from transitions where name = 'M_MEMOBJ';


INSERT INTO "main"."transitions" ("name", "state", "new_state", "opcode", "param_1", "param_2", "code")
VALUES 
('M_MEMORY','0','1','WAIT','','SIG_SHOW',''),
('M_MEMORY','1','2','RAND','8','0',''),
('M_MEMORY','2','3','MOV','BFRAME', 'WRAND',''),
('M_MEMORY','3','4','SHOW','WIP1', '', ''),
('M_MEMORY','4','5','WAIT','','SIG_HIDE',''),
('M_MEMORY', '5', '6', 'CLEAR', 'WSPRITE', '', ''),
('M_MEMORY', '6', '0', 'SHOW', '', '', '');

-- GO TO STATE WRAND+10 - SO THAT YOU CAN CHECK STATE OF MACHINE AND KNOW WHAT FRAME IT'S ON



INSERT INTO "main"."transitions" ("name", "state", "new_state", "opcode", "param_1", "param_2", "code")
VALUES 
('M_MEMOBJ', '0', '1', 'O_ACCEPT', 'WIP1', '',''),
('M_MEMOBJ', '1', '2', 'DROP', '0','',''),
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
('M_MEMOBJ', '23', '30', 'SHOW', '', '', ''),
('M_MEMOBJ', '30', '31', 'SIGNALi', 'SIG_HIDE', 'S27_MEMSTONE1',''),
('M_MEMOBJ', '31', '32', 'SIGNALi', 'SIG_HIDE', 'S27_MEMSTONE2',''),
('M_MEMOBJ', '32', '33', 'SIGNALi', 'SIG_HIDE', 'S27_MEMSTONE3',''),
('M_MEMOBJ', '33', '34', 'SIGNALi', 'SIG_HIDE', 'S27_MEMSTONE4',''),
('M_MEMOBJ', '34', '35', 'SIGNALi', 'SIG_HIDE', 'S27_MEMSTONE5',''),
('M_MEMOBJ', '35', '36', 'SIGNALi', 'SIG_HIDE', 'S27_MEMSTONE6',''),
('M_MEMOBJ', '36', '0', 'SIGNALi', 'SIG_HIDE', 'S27_MEMSTONE7','');

