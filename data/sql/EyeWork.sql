
delete from games;
-- ASSETS:
delete from spr_names where name = 'IDS_EYEPLATEASML';
delete from spr_names where name = 'IDS_EYEPLATEBSML';

insert into spr_names values ('IDS_EYEPLATEASML','eyeplateasml',9236);
insert into spr_names values ('IDS_EYEPLATEBSML','eyeplatebsml',9237);

delete from machines where name = 'S24_EYEPLATE1';
delete from machines where name = 'S24_EYEPLATE2';
delete from machines where name = 'S24_EYEPLATE3';

-- this is where they pass in which alternate eyeplate views to signal in WIP1, 2
INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip1_value", "wip2_name", "wip2_value", "wip3_name", "wip3_value", "wip4_name", "wip4_value") VALUES ('9216', 'S24_EYEPLATE1', '9219', 'IDV_EYEC1P', '200', '28', '260', '63', '0', 'M24_EYEPLATE', 'S24_ALTa_EYEPLATE1', '9230', 'S24_ALTb_EYEPLATE1', '9233', '', '0', '', '0');
INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip1_value", "wip2_name", "wip2_value", "wip3_name", "wip3_value", "wip4_name", "wip4_value") VALUES ('9217', 'S24_EYEPLATE2', '9219', 'IDV_EYEC1P', '266', '32', '324', '68', '0', 'M24_EYEPLATE', 'S24_ALTa_EYEPLATE2', '9231', 'S24_ALTb_EYEPLATE2', '9234', '', '0', '', '0');
INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip1_value", "wip2_name", "wip2_value", "wip3_name", "wip3_value", "wip4_name", "wip4_value") VALUES ('9218', 'S24_EYEPLATE3', '9219', 'IDV_EYEC1P', '333', '38', '390', '73', '0', 'M24_EYEPLATE', 'S24_ALTa_EYEPLATE3', '9232', 'S24_ALTb_EYEPLATE3', '9235', '', '0', '', '0');



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


-- delete from  "main"."transitions" where name = 'M_STATESCALE';

-- INSERT INTO "main"."transitions" ("name", "state", "new_state", "opcode", "param_1", "param_2") VALUES 

-- ('M_STATESCALE', '0', '1', 'WAIT', '0', 'SIG_SHOW'),
-- ('M_STATESCALE', '1', '5', 'MOV', 'WSPRITE', 'WIP1'),
-- ('M_STATESCALE', '5', '10', 'SHOW', 'WSPRITE', '0'),
-- ('M_STATESCALE', '10', '11', 'WAIT', '0', 'SIG_HIDE'),
-- ('M_STATESCALE', '11', '0', 'SHOW', '0', '0');


--('M_LEVER', '7', '8', 'SIGNALi', 'SIG_SHOW', 'S24_ALTa_EYEPLATE1');