drop table if exists games;
drop table if exists players;
drop table if exists env;

delete from machines where [name] like 'S1_VIALM%';
delete from machines where [name] like 'SMP_VIAL%';


INSERT INTO "main"."machines" ("name", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") 
VALUES 
('S1_VIALMETER', 'IDV_MAIN_PANEL', '233', '6', '253', '63', '3', 'M_VIALMETER', 'SMP_VIAL','IDS_NYSMETER','',''),
('SMP_VIAL',  'IDV_MAIN_PANEL', '256', '12', '309', '63', '3', 'M_VIAL', '', '', '', '');

delete from "main"."machines" where [name] like 'S0_ALARM%';
INSERT INTO "main"."machines" ("name","view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") 
VALUES 
('S0_ALARM_1','IDV_MAIN_PANEL',245,69,274,90, 0, 'M_ALARM', '', '', '', ''),
('S0_ALARM_2','IDV_MAIN_PANEL',275,69,304,90, 0, 'M_ALARM', '', '', '', ''),
('S0_ALARM_3','IDV_MAIN_PANEL',305,69,334,90, 0, 'M_ALARM', '', '', '', ''),
('S0_ALARM_4','IDV_MAIN_PANEL',335,69,364,90, 0, 'M_ALARM', '', '', '', ''),
('S0_ALARM_5','IDV_MAIN_PANEL',365,69,394,90, 0, 'M_ALARM', '', '', '', ''),
('S0_ALARM_6','IDV_MAIN_PANEL',395,69,424,90, 0, 'M_ALARM', '', '', '', ''),
('S0_ALARM_7','IDV_MAIN_PANEL',425,69,454,90, 0, 'M_ALARM', '', '', '', '');

delete from "main"."machines" where [name] like 'S0_QL_BTN%';
INSERT INTO "main"."machines" ("name", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") 
VALUES 
('S0_QL_BTN',    'IDV_MAIN_PANEL',457,9,497,49, 0, 'M_QLBTN', '', '', '', '');

delete from machines where [name] like 'SMP_MAPBUTTONH%';
INSERT INTO "main"."machines" ("name","view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") 
VALUES 
('SMP_MAPBUTTON','IDV_MAIN_PANEL', '189', '18', '223', '53', '3', 'M_MAPBUTTON', '', '', '', '');

delete from machines where name = 'SMP_EYEINFO';
INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") 
VALUES 
('112', 'SMP_EYEINFO', '1', 'IDV_MAIN_PANEL', '324', '12', '378', '64', '3', 'M_EYEINFO', '', '', '', '');

delete from machines where name = 'SMP_RECYCLE';
INSERT INTO "main"."machines" ("name","view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") VALUES 
('SMP_RECYCLE','IDV_MAIN_PANEL', '387', '12', '444', '64', '3', 'M_RECYCLE', '', '', '', '');

delete from machines where name = 'SMP_BACKBUTTON';
INSERT INTO "main"."machines" ( "name", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") VALUES 
('SMP_BACKBUTTON', 'IDV_MAIN_PANEL', '147', '19', '182', '52', '3', 'M_BACKBUTTON', '', '', '', '');