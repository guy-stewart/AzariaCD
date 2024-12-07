drop table if exists games;
drop table if exists players;
drop table if exists env;
drop table if exists idv;

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
('S1_VIALMETER', 'IDV_MAIN_PANEL', '56', '258', '68', '316', '3', 'M_VIALMETER', 'SMP_VIAL','IDS_NYSMETER','',''),
('SMP_VIAL',  'IDV_MAIN_PANEL', '78', '262', '133', '313', '3', 'M_VIAL', '', '', '', '');

delete from "main"."machines" where [name] like 'S0_ALARM%';

INSERT INTO "main"."machines" ("name","view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") 
VALUES 
('S0_ALARM_1','IDV_MAIN_PANEL',190,450,215,469, 3, 'M_ALARM', '', '', '', ''),
('S0_ALARM_2','IDV_MAIN_PANEL',220,450,243,469, 3, 'M_ALARM', '', '', '', ''),
('S0_ALARM_3','IDV_MAIN_PANEL',249,450,273,469, 3, 'M_ALARM', '', '', '', ''),
('S0_ALARM_4','IDV_MAIN_PANEL',278,450,302,469, 3, 'M_ALARM', '', '', '', ''),
('S0_ALARM_5','IDV_MAIN_PANEL',307,450,332,469, 3, 'M_ALARM', '', '', '', ''),
('S0_ALARM_6','IDV_MAIN_PANEL',337,450,360,469, 3, 'M_ALARM', '', '', '', ''),
('S0_ALARM_7','IDV_MAIN_PANEL',365,450,388,469, 3, 'M_ALARM', '', '', '', '');

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
('SMP_EYEINFO', 'IDV_MAIN_PANEL', '61', '326', '129', '379', '3', 'M_EYEINFO', '', '', '', '');

delete from machines where name = 'SMP_RECYCLE';
INSERT INTO "main"."machines" ("name","view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") VALUES 
('SMP_RECYCLE','IDV_MAIN_PANEL', '934', '387', '993', '445', '3', 'M_RECYCLE', '', '', '', '');

delete from machines where [name] like 'SMP_INV%';
delete from machines where [name] like 'SMP_TEXT%';
delete from machines where [name] like 'SMP_LISTEN%';
delete from machines where [name] like 'SMP_TALK%';
delete from machines where [name] like 'SMP_COM_%';
--inventory and com buttons
INSERT INTO "main"."machines" ("name", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name", "z") VALUES 
 ( 'SMP_INV_LEFT', 'IDV_MAIN_PANEL', '12', '381', '56', '408', '3', 'M_INV_LEFT', '', '', '', '', ''),
 ( 'SMP_INV_RIGHT','IDV_MAIN_PANEL', '136', '382', '179', '409', '3', 'M_INV_RIGHT', '', '', '', '', ''),
 
 ( 'SMP_TEXT_UP',  'IDV_MAIN_PANEL', '848', '60', '878', '94', '3', 'M_TEXT_UP', '', '', '', '', ''),
 ( 'SMP_TEXT_DOWN','IDV_MAIN_PANEL', '848', '99', '878', '132', '3', 'M_TEXT_DOWN', '', '', '', '', ''),
 
 --35/35
 ( 'SMP_LISTEN1',  'IDV_MAIN_PANEL', '850', '10', '885', '43', '3', 'M_LISTEN', '0', '4', '0', '', ''),
 ( 'SMP_LISTEN2',  'IDV_MAIN_PANEL', '885', '10', '920', '43', '3', 'M_LISTEN', '1', '5', '0', '', ''),
 ( 'SMP_LISTEN3',  'IDV_MAIN_PANEL', '920', '10', '955', '43', '3', 'M_LISTEN', '2', '6', '0', '', ''),
 ( 'SMP_LISTEN4',  'IDV_MAIN_PANEL', '955', '10', '990', '43', '3', 'M_LISTEN', '3', '7', '0', '', ''),
 
 --35/25
 ( 'SMP_TALK1',    'IDV_MAIN_PANEL', '846', '32', '875', '62', '3', 'M_TALK', '1', '4', '1', '', ''),
 ( 'SMP_TALK2',    'IDV_MAIN_PANEL', '883', '32', '905', '62', '3', 'M_TALK', '2', '4', '0', '', ''),
 ( 'SMP_TALK3',    'IDV_MAIN_PANEL', '919', '32', '945', '62', '3', 'M_TALK', '3', '4', '0', '', ''),
 ( 'SMP_TALK4',    'IDV_MAIN_PANEL', '954', '32', '980', '62', '3', 'M_TALK', '4', '4', '0', '', ''),

 -- Comm button Enlarge
 ( 'SMP_COM_UP',    'IDV_MAIN_PANEL', '997', '367', '1037', '407', '3', 'M_POP_COM', '', '', '', '', '');

-- =================== NEW TELETYPE VIEWS
delete from "main"."views" where [view_name] like 'IDV_COM_UI%';

INSERT INTO "main"."views" ("view_name", "Z", "backgroundAudio", "locator_view", "behavior_id", "portal_filename", "surface_filename") VALUES 
 ('IDV_COM_UI_LG', '4', '0', '0', '10', 'comUI_LG.vct', 'com_UI_LG'),
 ('IDV_COM_UI_TELE', '1', '0', '0', '4', 'comboxLG.vct', 'teletype');

-- M_TALK(channel[1..N], count[N]);
delete from transitions where [automaton] like 'M_TALK';
insert into transitions ([automaton], [state], [new_state], [opcode], [param_1], [param_2], [code])
 values
('M_TALK','0','READY','EQUAL','WIP3','1',
'SHOW(reddot);
SENDKEY(WIP1,IDV_S_TELETYPE);'),
('M_TALK','0','READY','Z_EPSILON','','', ''),
('M_TALK','READY','READY','WAIT','','', 'SHOW();'),
('M_TALK','READY','READY','CLICK','','',
'SENDKEY(WIP1,IDV_S_TELETYPE);
PLAYWAVE (SOUND_CLICK);
SIGNAL   (SMP_TALK1);
SIGNAL   (SMP_TALK2);
SIGNAL   (SMP_TALK3);
SIGNAL   (SMP_TALK4);
SHOW     (reddot);');
