delete from games;
delete from spr_names where [name] like 'IDS_ALARM%';

INSERT INTO "main"."spr_names" ("name", "value", "id") 
VALUES 
('IDS_ALARMRED', 'ALMRED', '30401'),
('IDS_ALARMGRN', 'ALMGRN', '30402'),
('IDS_ALARMOFF', 'ALMOFF', '30403');


delete from "main"."machines" where [name] like 'S0_ALARM%';
INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") 
VALUES 
('40', 'S0_ALARM_1', '1', 'IDV_MAIN_PANEL',211,69,240,90, 0, 'M_ALARM', '', '', '', ''),
('41', 'S0_ALARM_2', '1', 'IDV_MAIN_PANEL',241,69,270,90, 0, 'M_ALARM', '', '', '', ''),
('42', 'S0_ALARM_3', '1', 'IDV_MAIN_PANEL',271,69,300,90, 0, 'M_ALARM', '', '', '', ''),
('43', 'S0_ALARM_4', '1', 'IDV_MAIN_PANEL',301,69,330,90, 0, 'M_ALARM', '', '', '', ''),
('44', 'S0_ALARM_5', '1', 'IDV_MAIN_PANEL',331,69,360,90, 0, 'M_ALARM', '', '', '', ''),
('45', 'S0_ALARM_6', '1', 'IDV_MAIN_PANEL',361,69,390,90, 0, 'M_ALARM', '', '', '', ''),
('46', 'S0_ALARM_7', '1', 'IDV_MAIN_PANEL',391,69,420,90, 0, 'M_ALARM', '', '', '', '');

delete from "main"."transitions" where [automaton] like 'M_ALARM%';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code", "guard", "doc") 
VALUES 
('M_ALARM', '0', 'ready', 'O_ACCEPT', '0', 'IDD_ALARM', '
    ASSIGN(WPARM,0); //WILL BE LVIEW VALUE
', '', ''),
('M_ALARM', 'ready', 'alarmWhite', 'DROP', '0', '0', '
    SHOW(WOBJECT);
    MOV(WPARM,LVIEW);
', '', ''),
('M_ALARM', 'alarmWhite', '0', 'GRAB', '0', '0', 'SHOW();', '', ''),
('M_ALARM', 'alarmWhite', 'alarmGreen', 'ESTIME', '0', '2', '
    MOV(WSPRITE,IDS_ALARMGRN);
    SHOW(WSPRITE);
', '', ''),
-- in alarmGreen there should be a wait for sig_alarm
('M_ALARM', 'alarmGreen', 'alarmRed', 'WAIT', '0', 'SIG_ALARM', '
    MOV(WSPRITE,IDS_ALARMRED);
    ASHOW(WSPRITE);
', '', ''),
('M_ALARM', 'alarmRed', 'alarmWhite', 'CLICK', '0', '', '
    MOV(WSPRITE,IDS_ALARMOFF);
    SHOW(WSPRITE);
    LOADVIEW(WPARM);
', '', ''),
 ('M_ALARM', 'alarmGreen', 'alarmWhite', 'CLICK', '0', '', '
    MOV(WSPRITE,IDS_ALARMOFF);
    SHOW(WSPRITE);
    LOADVIEW(WPARM);
', '', '');


