delete from games;

delete from spr_names where name = 'IDS_GBANIM';
delete from spr_names where name = 'IDS_GOPAB';
delete from spr_names where name = 'IDS_GOPAG';
delete from spr_names where name = 'IDS_GOPAR';

insert into spr_names values ('IDS_GBANIM','GBANIM','16001');
insert into spr_names values ('IDS_GOPAB','GOPAB','16002');
insert into spr_names values ('IDS_GOPAG','GOPAG','16003');
insert into spr_names values ('IDS_GOPAR','GOPAR','16004');

delete from objects where object = 'IDD_GOPAB';
delete from objects where object = 'IDD_GOPAG';
delete from objects where object = 'IDD_GOPAR';
INSERT INTO "main"."objects" ("object", "object_id", "class", "class_id", "icon", "cursor", "actor") 
VALUES
('IDD_GOPAR', '16004', 'IDC_NULL', '0', 'GOPAR', 'GOPAR', 'GOPAR'),
('IDD_GOPAG', '16003', 'IDC_NULL', '0', 'GOPAG', 'GOPAG', 'GOPAG'),
('IDD_GOPAB', '16002', 'IDC_NULL', '0', 'GOPAB', 'GOPAB', 'GOPAB');


delete from machines where name = 'S16_GOPABUSH';
INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip1_value", "wip2_name", "wip2_value", "wip3_name", "wip3_value", "wip4_name", "wip4_value") 
VALUES 
('16001', 'S16_GOPABUSH', '4866', 'IDV_VIL4', '2362', '140', '2428', '244', '0', 'M_GOPABIN', 'IDS_GBANIM', '16001', '4', '', '0', '', '', '');


delete from  "main"."transitions" where name = 'M_GOPABIN';
INSERT INTO "main"."transitions" ("name", "state", "new_state", "opcode", "param_1", "param_2") 
VALUES 
('M_GOPABIN', '0', '1', 'MOV', 'BFRAME', 'WIP3'), -- START WITH A RED GOPA 0 FRAME
('M_GOPABIN', '1', '2', 'SHOW', 'WIP1', ''),

('M_GOPABIN', '2', '20', 'GRAB', '', ''),
('M_GOPABIN','2', '3', 'WAIT', '0', 'SIG_RIPEN'),

('M_GOPABIN', '3', '4', 'ADDI', 'BFRAME', '1'), -- SHOULD NOW BE GREEN GOPA
('M_GOPABIN', '4', '5', 'ASSIGN', 'WOBJECT', ''),
-- could assign here
-- ('M_GOPABIN', '4', '5', 'EQUALi', 'BFRAME', '0'),
-- ('M_GOPABIN', '5', '6', 'ASSIGN', 'WOBJECT', 'IDD_GOPAR'),




-----
('M_GOPABIN', '5', '0', 'GTE', 'BFRAME', 'WIP2'), -- NUMBER OF FRAMES
('M_GOPABIN','5', '1', 'Z_EPSILON', '', ''),

('M_GOPABIN','20', '30', 'EQUALi', 'BFRAME', '0'),
('M_GOPABIN', '30', '31', 'ASSIGN', 'WOBJECT', 'IDD_GOPAR'),
('M_GOPABIN', '31', '1', 'SHOW', '0', '0'),

('M_GOPABIN','20', '40', 'EQUALi', 'BFRAME', '1'),
('M_GOPABIN', '40', '41',  'ASSIGN', 'WOBJECT', 'IDD_GOPAG'),
('M_GOPABIN', '41', '1', 'SHOW', '0', '0'),

('M_GOPABIN','20', '50', 'EQUALi', 'BFRAME', '2'),
('M_GOPABIN', '50', '51', 'ASSIGN', 'WOBJECT', 'IDD_GOPAB'),
('M_GOPABIN', '51', '1', 'SHOW', '0', '0'),

('M_GOPABIN','20', '1', 'Z_EPSILON', '', '');

