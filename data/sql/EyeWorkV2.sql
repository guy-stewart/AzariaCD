
delete from games;
-- ASSETS:
delete from spr_names where name = 'IDS_EYEPLATEASML';
delete from spr_names where name = 'IDS_EYEPLATEBSML';

delete from spr_names where name = 'IDS_EYESPELLBSML';
delete from spr_names where name = 'IDS_EYESPELLASML';

insert into spr_names values ('IDS_EYEPLATEASML','eyeplateasml',9236);
insert into spr_names values ('IDS_EYEPLATEBSML','eyeplatebsml',9237);
insert into spr_names values ('IDS_EYESPELLBSML','eyespellbsml',9238);
insert into spr_names values ('IDS_EYESPELLASML','eyespellasml',9239);

delete from machines where name = 'S24_EYEPLATE1';
delete from machines where name = 'S24_EYEPLATE2';
delete from machines where name = 'S24_EYEPLATE3';
delete from machines where name = 'S24_EYESPELL1';
delete from machines where name = 'S24_EYESPELL3';

delete from machines where name = 'S24_BIGEYE'; -- OTHERWISE KNOWN AS EYESPELL2
-- this is where they pass in which alternate eyeplate views to signal in WIP1, 2..
INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip1_value", "wip2_name", "wip2_value", "wip3_name", "wip3_value", "wip4_name", "wip4_value") 
VALUES 
('9216', 'S24_EYEPLATE1', '9219', 'IDV_EYEC1P', '200', '28', '260', '63', '0', 'M24_EYEPLATE', 'S24_ALTa_EYEPLATE1', '9230', 'S24_ALTb_EYEPLATE1', '9233', '', '0', '', '0'),
('9217', 'S24_EYEPLATE2', '9219', 'IDV_EYEC1P', '266', '32', '324', '68', '0', 'M24_EYEPLATE', 'S24_ALTa_EYEPLATE2', '9231', 'S24_ALTb_EYEPLATE2', '9234', '', '0', '', '0'),
('9218', 'S24_EYEPLATE3', '9219', 'IDV_EYEC1P', '333', '38', '390', '73', '0', 'M24_EYEPLATE', 'S24_ALTa_EYEPLATE3', '9232', 'S24_ALTb_EYEPLATE3', '9235', '', '0', '', '0'),
('9219', 'S24_EYESPELL1', '9219', 'IDV_EYEC1P', '0', '64', '59', '105', '0', 'M24_EYESPELL', 'S24_ALTa_EYESPELL1', '9236', 'S24_ALTb_EYESPELL1', '9237', '', '0', '', '0'),
('9221', 'S24_EYESPELL3', '9219', 'IDV_EYEC1P', '542', '79', '603', '120', '0', 'M24_EYESPELL', 'S24_ALTa_EYESPELL3', '9238', 'S24_ALTb_EYESPELL3', '9239', '', '0', '', '0'),
('9222', 'S24_BIGEYE', '9219', 'IDV_EYEC1P', '295', '60', '368', '112', '0', 'M24_BIGEYE', 'IDS_BIGEYE1', '30629', 'S24_ALTa_EYESPELL2', '9240', 'S24_ALTb_EYESPELL2', '9241', '', '0');

delete from  "main"."transitions" where name = 'M24_EYEPLATE';
INSERT INTO "main"."transitions" ("name", "state", "new_state", "opcode", "param_1", "param_2") VALUES 
('M24_EYEPLATE', '0', '1', 'DROP', '0', 'IDD_EYEFUSE'),
('M24_EYEPLATE', '1', '2', 'SIGNALi', '0', 'S24_BIGEYE'),
('M24_EYEPLATE', '2', '3', 'C_ACCEPT', '0', 'IDC_BOMB'),
('M24_EYEPLATE', '3', '4', 'ASHOW', '0', 'IDS_EYEPLATE'),
('M24_EYEPLATE', '4', '5', 'SIGNAL','WIP1', 'SIG_SHOW'),
('M24_EYEPLATE', '5', '6', 'SIGNAL', 'WIP2', 'SIG_SHOW'),
('M24_EYEPLATE', '6', '50', 'DROP', '0', '0'),
('M24_EYEPLATE', '50', '51', 'VIDEO', '0', 'IDS_EXPLODE1'),
('M24_EYEPLATE', '51', '52', 'PLAYWAVE', '0', 'SOUND_EXPLODE'),
('M24_EYEPLATE', '52', '53', 'SHOW', '0', '0'),
('M24_EYEPLATE', '53', '54', 'SIGNAL', 'WIP1', 'SIG_HIDE'),
('M24_EYEPLATE', '54', '55', 'SIGNAL', 'WIP2', 'SIG_HIDE'),
('M24_EYEPLATE', '55', '56', 'O_ACCEPT', '0', 'IDD_EYEFUSE'),
('M24_EYEPLATE', '56', '0', 'SIGNALi', 'SIG_BOMB', 'S24_BIGEYE');

delete from  "main"."transitions" where name = 'M24_EYESPELL';
INSERT INTO "main"."transitions" ("name", "state", "new_state", "opcode", "param_1", "param_2")
VALUES 
('M24_EYESPELL', '0', '1', 'DROP', '0', 'IDD_EYESPELL'),
('M24_EYESPELL', '1', '2', 'SIGNALi', '0', 'S24_BIGEYE'),
('M24_EYESPELL', '2', '3', 'C_ACCEPT', '0', 'IDC_BOMB'),
('M24_EYESPELL', '3', '4', 'ASHOW', '0', 'IDS_EYESPELL'),
('M24_EYESPELL', '4', '5', 'SIGNAL','WIP1', 'SIG_SHOW'),
('M24_EYESPELL', '5', '6', 'SIGNAL', 'WIP2', 'SIG_SHOW'),
('M24_EYESPELL', '6', '50', 'DROP', '0', '0'), -- should be 50 but don't think bombing spells works here
('M24_EYESPELL', '50', '51', 'VIDEO', '0', 'IDS_EXPLODE1'),
('M24_EYESPELL', '51', '52', 'PLAYWAVE', '0', 'SOUND_EXPLODE'),
('M24_EYESPELL', '52', '53', 'SHOW', '0', '0'),
('M24_EYESPELL', '53', '54', 'SIGNAL', 'WIP1', 'SIG_HIDE'),
('M24_EYESPELL', '54', '55', 'SIGNAL', 'WIP2', 'SIG_HIDE'),
('M24_EYESPELL', '55', '56', 'O_ACCEPT', '0', 'IDD_EYESPELL'),
('M24_EYESPELL', '56', '0', 'SIGNALi', 'SIG_BOMB', 'S24_BIGEYE');


INSERT INTO "main"."transitions" ("name", "state", "new_state", "opcode", "param_1", "param_2") 
VALUES 
('M24_BIGEYE', '0', '1', 'MOV', 'WSPRITE', 'WIP1'),
('M24_BIGEYE', '1', '2', 'ASHOW', 'WSPRITE', 'V_LOOP'),
('M24_BIGEYE', '2', '5', 'ANIMATE', '0', 'V_LOOP'),
('M24_BIGEYE', '5', '6', 'SIGNAL','WIP2', 'SIG_SHOW'),
('M24_BIGEYE', '6', '7', 'SIGNAL','WIP3', 'SIG_SHOW'),
('M24_BIGEYE', '7', '0', 'CLICK', '', ''),
('M24_BIGEYE', '7', '10', 'WAIT', '0', '0'),
('M24_BIGEYE', '10', '50', 'IFSTATEi', '0', 'S24_EYEPLATE1'),
('M24_BIGEYE', '10', '50', 'IFSTATEi', '0', 'S24_EYEPLATE2'),
('M24_BIGEYE', '10', '50', 'IFSTATEi', '0', 'S24_EYEPLATE3'),
('M24_BIGEYE', '10', '50', 'IFSTATEi', '0', 'S24_EYESPELL1'),
('M24_BIGEYE', '10', '50', 'IFSTATEi', '0', 'S24_EYESPELL3'),
('M24_BIGEYE', '10', '20', 'Z_EPSILON', '', ''),

('M24_BIGEYE', '20', '30', 'ASHOW', '0', 'IDS_BIGEYE1'),
('M24_BIGEYE', '30', '30', 'GRAB', '0', 'IDD_EYEWAND'),
('M24_BIGEYE', '30', '50', 'WAIT', '0', 'SIG_BOMB'),
('M24_BIGEYE', '50', '51', 'SHOW', '0', '0'),
('M24_BIGEYE', '51', '52', 'SIGNAL','WIP2', 'SIG_HIDE'),
('M24_BIGEYE', '52', '0', 'SIGNAL','WIP3', 'SIG_HIDE');


--eyea from left to right
delete from machines where name = 'S24_ALTa_EYEPLATE1';
delete from machines where name = 'S24_ALTa_EYEPLATE2';
delete from machines where name = 'S24_ALTa_EYEPLATE3';
--eyeb from left to right
delete from machines where name = 'S24_ALTb_EYEPLATE1';
delete from machines where name = 'S24_ALTb_EYEPLATE2';
delete from machines where name = 'S24_ALTb_EYEPLATE3';

INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip1_value", "wip2_name", "wip2_value", "wip3_name", "wip3_value", "wip4_name", "wip4_value") 
VALUES 
('9230', 'S24_ALTa_EYEPLATE1', '9217', 'IDV_EYEA', '3091', '113', '3093', '115', '0', 'M_STATESCALE', 'IDS_EYEPLATEASML', '0', '', '0', '', '0', '', '0'),
('9231', 'S24_ALTa_EYEPLATE2', '9217', 'IDV_EYEA', '3114', '113', '3118', '115', '0', 'M_STATESCALE', 'IDS_EYEPLATEASML', '0', '', '0', '', '0', '', '0'),
('9232', 'S24_ALTa_EYEPLATE3', '9217', 'IDV_EYEA', '3135', '113', '3137', '115', '0', 'M_STATESCALE', 'IDS_EYEPLATEASML', '0', '', '0', '', '0', '', '0'),
('9233', 'S24_ALTb_EYEPLATE1', '9218', 'IDV_EYEB', '3065', '83', '3070', '85', '0', 'M_STATESCALE', 'IDS_EYEPLATEBSML', '0', '', '0', '', '0', '', '0'),
('9234', 'S24_ALTb_EYEPLATE2', '9218', 'IDV_EYEB', '3103', '83', '1565', '85', '0', 'M_STATESCALE', 'IDS_EYEPLATEBSML', '0', '', '0', '', '0', '', '0'),
('9235', 'S24_ALTb_EYEPLATE3', '9218', 'IDV_EYEB', '3144', '83', '1565', '85', '0', 'M_STATESCALE', 'IDS_EYEPLATEBSML', '0', '', '0', '', '0', '', '0');


--eyea from left to right
delete from machines where name = 'S24_ALTa_EYESPELL1';
delete from machines where name = 'S24_ALTa_EYESPELL3';
delete from machines where name = 'S24_ALTb_EYESPELL1';
delete from machines where name = 'S24_ALTb_EYESPELL3';

delete from machines where name = 'S24_ALTa_EYESPELL2';
delete from machines where name = 'S24_ALTb_EYESPELL2';

INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip1_value", "wip2_name", "wip2_value", "wip3_name", "wip3_value", "wip4_name", "wip4_value") 
VALUES 
('9236', 'S24_ALTa_EYESPELL1', '9217', 'IDV_EYEA', '3036', '130', '3040', '131', '0', 'M_STATESCALE', 'IDS_EYESPELLASML', '0', '', '0', '', '0', '', '0'),
('9237', 'S24_ALTb_EYESPELL1',  '9218', 'IDV_EYEB', '2952', '112', '2955', '115', '0', 'M_STATESCALE', 'IDS_EYESPELLBSML', '0', '', '0', '', '0', '', '0'),
('9238', 'S24_ALTa_EYESPELL3', '9217', 'IDV_EYEA', '3170', '130', '3171', '131', '0', 'M_STATESCALE', 'IDS_EYESPELLASML', '0', '', '0', '', '0', '', '0'),
('9239', 'S24_ALTb_EYESPELL3',  '9218', 'IDV_EYEB', '11', '112', '14', '115', '0', 'M_STATESCALE', 'IDS_EYESPELLBSML', '0', '', '0', '', '0', '', '0'),

('9240', 'S24_ALTa_EYESPELL2', '9217', 'IDV_EYEA', '3110', '130', '3110', '131', '0', 'M_STATESCALE', 'IDS_EYESPELLASML', '0', '', '0', '', '0', '', '0'),
('9241', 'S24_ALTb_EYESPELL2',  '9218', 'IDV_EYEB', '3090', '112', '3175', '115', '0', 'M_STATESCALE', 'IDS_EYESPELLBSML', '0', '', '0', '', '0', '', '0');







