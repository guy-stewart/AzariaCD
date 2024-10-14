drop table if exists games;
drop table if exists players;
drop table if exists env;

delete from machines where [name] like 'S1_VIALM%';
delete from machines where [name] like 'SMP_VIAL%';


INSERT INTO "main"."machines" ("name", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") 
VALUES 
('S1_VIALMETER', 'IDV_MAIN_PANEL', '281', '6', '253', '63', '3', 'M_VIALMETER', 'SMP_VIAL','IDS_NYSMETER','',''),
('SMP_VIAL',  'IDV_MAIN_PANEL', '301', '7', '360', '62', '3', 'M_VIAL', '', '', '', '');

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
('S0_QL_BTN',    'IDV_MAIN_PANEL',228,7,268,47, 0, 'M_QLBTN', '', '', '', '');

delete from machines where [name] like 'SMP_MAPBUTTONH%';
INSERT INTO "main"."machines" ("name","view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") 
VALUES 
('SMP_MAPBUTTON','IDV_MAIN_PANEL', '187', '8', '223', '53', '3', 'M_MAPBUTTON', '', '', '', '');

delete from machines where name = 'SMP_EYEINFO';
INSERT INTO "main"."machines" ("name", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") 
VALUES 
('SMP_EYEINFO', 'IDV_MAIN_PANEL', '509', '18', '580', '82', '3', 'M_EYEINFO', '', '', '', '');

delete from machines where name = 'SMP_RECYCLE';
INSERT INTO "main"."machines" ("name","view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") VALUES 
('SMP_RECYCLE','IDV_MAIN_PANEL', '367', '4', '423', '61', '3', 'M_RECYCLE', '', '', '', '');

delete from machines where name = 'SMP_BACKBUTTON';
INSERT INTO "main"."machines" ( "name", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") VALUES 
('SMP_BACKBUTTON', 'IDV_MAIN_PANEL', '147', '19', '182', '52', '3', 'M_BACKBUTTON', '', '', '', '');


delete from machines where [name] like 'SMP_INV%';
delete from machines where [name] like 'SMP_TEXT%';
delete from machines where [name] like 'SMP_LISTEN%';
delete from machines where [name] like 'SMP_TALK%';
--inventory and com buttons
INSERT INTO "main"."machines" ("name", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name", "z") VALUES 
 ( 'SMP_INV_LEFT', 'IDV_MAIN_PANEL', '30', '379', '69', '408', '3', 'M_INV_LEFT', '', '', '', '', ''),
 ( 'SMP_INV_RIGHT','IDV_MAIN_PANEL', '133', '379', '175', '408', '3', 'M_INV_RIGHT', '', '', '', '', ''),
 
 ( 'SMP_TEXT_UP',  'IDV_MAIN_PANEL', '831', '364', '846', '387', '3', 'M_TEXT_UP', '', '', '', '', ''),
 ( 'SMP_TEXT_DOWN','IDV_MAIN_PANEL', '831', '388', '846', '411', '3', 'M_TEXT_DOWN', '', '', '', '', ''),
 
 --35/35
 ( 'SMP_LISTEN1',  'IDV_MAIN_PANEL', '850', '360', '885', '390', '3', 'M_LISTEN', '0', '4', '0', '', ''),
 ( 'SMP_LISTEN2',  'IDV_MAIN_PANEL', '885', '360', '920', '390', '3', 'M_LISTEN', '1', '5', '0', '', ''),
 ( 'SMP_LISTEN3',  'IDV_MAIN_PANEL', '920', '360', '955', '390', '3', 'M_LISTEN', '2', '6', '0', '', ''),
 ( 'SMP_LISTEN4',  'IDV_MAIN_PANEL', '955', '360', '990', '390', '3', 'M_LISTEN', '3', '7', '0', '', ''),
 
 --35/25
 ( 'SMP_TALK1',    'IDV_MAIN_PANEL', '850', '385', '875', '410', '3', 'M_TALK', 'SMP_TALK2', 'SMP_TALK3', 'SMP_TALK4', 'IDS_REDDOT', ''),
 ( 'SMP_TALK2',    'IDV_MAIN_PANEL', '885', '385', '905', '410', '3', 'M_TALK', 'SMP_TALK1', 'SMP_TALK3', 'SMP_TALK4', '', ''),
 ( 'SMP_TALK3',    'IDV_MAIN_PANEL', '920', '385', '945', '410', '3', 'M_TALK', 'SMP_TALK1', 'SMP_TALK2', 'SMP_TALK4', '', ''),
 ( 'SMP_TALK4',    'IDV_MAIN_PANEL', '955', '385', '980', '410', '3', 'M_TALK', 'SMP_TALK1', 'SMP_TALK2', 'SMP_TALK3', '', ''),

 -- Comm button Enlarge
 ( 'SMP_COM_UP',    'IDV_MAIN_PANEL', '997', '367', '1037', '407', '3', 'M_POP_COM', '', '', '', '', '');

-- =================== NEW TELETYPE VIEWS
delete from "main"."idv" where [name] like 'IDV_COM_UI%';
delete from "main"."views" where [view_name] like 'IDV_COM_UI%';

INSERT INTO "main"."idv" ("name", "id") VALUES ('IDV_COM_UI_LG', '60000');
INSERT INTO "main"."idv" ("name", "id") VALUES ('IDV_COM_UI_TELE', '60001');
INSERT INTO "main"."views" ("view_name", "Z", "backgroundAudio", "locator_view", "behavior_id", "portal_filename", "surface_filename") VALUES 
 ('IDV_COM_UI_LG', '4', '0', '0', '10', 'comUI_LG.vct', 'com_UI_LG'),
 ('IDV_COM_UI_TELE', '1', '0', '0', '4', 'comboxLG.vct', 'teletype');