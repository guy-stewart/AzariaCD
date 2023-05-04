delete from games;


delete from spr_names where name = 'IDS_CLAM';
delete from spr_names where name = 'IDS_TICKLEPLANT';
delete from spr_names where name = 'IDS_TICKLELEAF';
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_CLAM', 'CLAM', '1613');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_TICKLEPLANT', 'tickleplant', '1614');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_TICKLELEAF', 'tickleleaf', '1615');


delete from objects where object = 'IDD_TICKLELEAF';
insert into objects values
('IDD_TICKLELEAF','1615','IDD_NULL','0','tickleleaf','tickleleaf','tickleleaf');


delete from machines where name = 'S27_HUNGRYCLAM';
delete from machines where name = 'S27_TICKLEPLANT';
INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip1_value", "wip2_name", "wip2_value", "wip3_name", "wip3_value", "wip4_name", "wip4_value") 
VALUES 
('9800', 'S27_HUNGRYCLAM', '5390', 'IDV_LAKEB1', '1722', '162', '1780', '200', '0','M_CLAM','IDS_CLAM','1613','', '', '', '', '', ''),
('9801', 'S27_TICKLEPLANT','5391', 'IDV_LAKEB2', '448', '164', '584', '271',  '2', 'M_PLANTBIN', 'IDD_TICKLELEAF', '1615', 'IDS_TICKLEPLANT', '1614', '60', '60', '', '0');

delete from transitions where name = 'M_CLAM';
INSERT INTO "main"."transitions" ("name", "state", "new_state", "opcode", "param_1", "param_2", "code")
VALUES 
('M_CLAM', '0', '1', 'MOV', 'BFRAME', '0', ''),
('M_CLAM', '1', '2', 'SHOW', 'WIP1', '', ''),
('M_CLAM',  '2', '3', 'DRAG', '0', 'IDD_TICKLELEAF', ''),
('M_CLAM', '3', '4', 'ESTIME', '', '3', ''),
('M_CLAM', '4', '5', 'ADDI', 'BFRAME', '1', ''),
('M_CLAM', '5', '0', 'GRAB', '', 'IDD_EMERALD', '');

