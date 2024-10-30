drop table if exists games;
drop table if exists players;
drop table if exists env;


--add network choice sprites IDS_BTN_NW1A,B & C

delete from spr_names where [name] like 'IDS_INDC_NW_%';
delete from spr_names where [name] like 'IDS_INDC_BLINK%';
INSERT INTO "main"."spr_names" ("name", "value") VALUES 

('IDS_INDC_NW_BLANK',   'indc_nw_blank'),
('IDS_INDC_NW_WHITE',   'indc_nw_white'),
('IDS_INDC_NW_GREEN',   'indc_nw_green'),
('IDS_INDC_NW_RED',     'indc_nw_red'),
('IDS_INDC_BLINK',      'indc_blink');



delete from machines where [name] like 'S1_VIALM%';
delete from machines where [name] like 'SMP_VIAL%';


INSERT INTO "main"."machines" ("name", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") 
VALUES 
('S1_VIALMETER', 'IDV_MAIN_PANEL', '281', '78', '253', '134', '3', 'M_VIALMETER', 'SMP_VIAL','IDS_NYSMETER','',''),
('SMP_VIAL',  'IDV_MAIN_PANEL', '301', '78', '360', '133', '3', 'M_VIAL', '', '', '', '');

delete from "main"."machines" where [name] like 'S0_ALARM%';

INSERT INTO "main"."machines" ("name","view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") 
VALUES 
('S0_ALARM_1','IDV_MAIN_PANEL',245,140,274,161, 3, 'M_ALARM', '', '', '', ''),
('S0_ALARM_2','IDV_MAIN_PANEL',275,140,304,161, 3, 'M_ALARM', '', '', '', ''),
('S0_ALARM_3','IDV_MAIN_PANEL',305,140,334,161, 3, 'M_ALARM', '', '', '', ''),
('S0_ALARM_4','IDV_MAIN_PANEL',335,140,364,161, 3, 'M_ALARM', '', '', '', ''),
('S0_ALARM_5','IDV_MAIN_PANEL',365,140,394,161, 3, 'M_ALARM', '', '', '', ''),
('S0_ALARM_6','IDV_MAIN_PANEL',395,140,424,161, 3, 'M_ALARM', '', '', '', ''),
('S0_ALARM_7','IDV_MAIN_PANEL',425,140,454,161, 3, 'M_ALARM', '', '', '', '');

-- machines for network indicators on the man panel
delete from "main"."machines" where [name] like 'S0_NW_INDC%';
INSERT INTO "main"."machines" ("name", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") 
VALUES 
('S0_NW_INDC_LIGHT',    'IDV_MAIN_PANEL',991,218,1005,259, 0, 'M_NW_INDC_LIGHT', 'IDS_INDC_NW_WHITE', 'IDS_INDC_NW_GREEN', 'IDS_INDC_BLINK', 'IDS_INDC_NW_RED'),
('S0_NW_INDC_GAME',     'IDV_MAIN_PANEL',890,215,1005,259, 0, 'M_NW_INDC_NAME', 'IDS_INDC_NW_BLANK', '', '', '');

--menu button
delete from machines where name = 'SMP_BACKBUTTON';
INSERT INTO "main"."machines" ( "name", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") VALUES 
('SMP_BACKBUTTON', 'IDV_MAIN_PANEL', '22', '19', '60', '55', '3', 'M_BACKBUTTON', '', '', '', '');


delete from machines where [name] like 'SMP_MAPBUTTON%';
INSERT INTO "main"."machines" ("name","view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") 
VALUES 
('SMP_MAPBUTTON','IDV_MAIN_PANEL', 67,19,104,56,'3', 'M_MAPBUTTON', '', '', '', '');


delete from "main"."machines" where [name] like 'S0_QL_BTN%';
INSERT INTO "main"."machines" ("name", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") 
VALUES 
('S0_QL_BTN',    'IDV_MAIN_PANEL',108,18,142,56, 3, 'M_QLBTN', '', '', '', '');

delete from "main"."machines" where [name] like 'SMP_COMPASS%';
INSERT INTO "main"."machines" ( "name",  "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name", "z") VALUES 
('SMP_COMPASS', 'IDV_MAIN_PANEL', '462', '165', '611', '179', '3', 'M_COMPASS', '', '', '', '', '');



delete from machines where name = 'SMP_EYEINFO';
INSERT INTO "main"."machines" ("name", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") 
VALUES 
('SMP_EYEINFO', 'IDV_MAIN_PANEL', '509', '89', '580', '153', '3', 'M_EYEINFO', '', '', '', '');

delete from machines where name = 'SMP_RECYCLE';
INSERT INTO "main"."machines" ("name","view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") VALUES 
('SMP_RECYCLE','IDV_MAIN_PANEL', '367', '75', '423', '132', '3', 'M_RECYCLE', '', '', '', '');



delete from machines where [name] like 'SMP_INV%';
delete from machines where [name] like 'SMP_TEXT%';
delete from machines where [name] like 'SMP_LISTEN%';
delete from machines where [name] like 'SMP_TALK%';
delete from machines where [name] like 'SMP_COM_%';
--inventory and com buttons
INSERT INTO "main"."machines" ("name", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name", "z") VALUES 
 ( 'SMP_INV_LEFT', 'IDV_MAIN_PANEL', '30', '379', '69', '408', '3', 'M_INV_LEFT', '', '', '', '', ''),
 ( 'SMP_INV_RIGHT','IDV_MAIN_PANEL', '133', '379', '175', '408', '3', 'M_INV_RIGHT', '', '', '', '', ''),
 
 ( 'SMP_TEXT_UP',  'IDV_MAIN_PANEL', '831', '11', '846', '34', '3', 'M_TEXT_UP', '', '', '', '', ''),
 ( 'SMP_TEXT_DOWN','IDV_MAIN_PANEL', '831', '35', '846', '58', '3', 'M_TEXT_DOWN', '', '', '', '', ''),
 
 --35/35
 ( 'SMP_LISTEN1',  'IDV_MAIN_PANEL', '850', '10', '885', '43', '3', 'M_LISTEN', '0', '4', '0', '', ''),
 ( 'SMP_LISTEN2',  'IDV_MAIN_PANEL', '885', '10', '920', '43', '3', 'M_LISTEN', '1', '5', '0', '', ''),
 ( 'SMP_LISTEN3',  'IDV_MAIN_PANEL', '920', '10', '955', '43', '3', 'M_LISTEN', '2', '6', '0', '', ''),
 ( 'SMP_LISTEN4',  'IDV_MAIN_PANEL', '955', '10', '990', '43', '3', 'M_LISTEN', '3', '7', '0', '', ''),
 
 --35/25
 ( 'SMP_TALK1',    'IDV_MAIN_PANEL', '846', '32', '875', '62', '3', 'M_TALK', 'SMP_TALK2', 'SMP_TALK3', 'SMP_TALK4', 'IDS_REDDOT', ''),
 ( 'SMP_TALK2',    'IDV_MAIN_PANEL', '883', '32', '905', '62', '3', 'M_TALK', 'SMP_TALK1', 'SMP_TALK3', 'SMP_TALK4', '', ''),
 ( 'SMP_TALK3',    'IDV_MAIN_PANEL', '919', '32', '945', '62', '3', 'M_TALK', 'SMP_TALK1', 'SMP_TALK2', 'SMP_TALK4', '', ''),
 ( 'SMP_TALK4',    'IDV_MAIN_PANEL', '954', '32', '980', '62', '3', 'M_TALK', 'SMP_TALK1', 'SMP_TALK2', 'SMP_TALK3', '', ''),

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