delete from games;
delete from spr_names where [name] like 'IDS_ALARM%';

INSERT INTO "main"."spr_names" ("name", "value", "id") 
VALUES 
('IDS_ALARMRED', 'ALMRED', '30401'),
('IDS_ALARMGRN', 'ALMGRN', '30402'),
('IDS_ALARMOFF', 'ALMOFF', '30403');


delete from "main"."transitions" where [automaton] like 'M_ALARM%';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code", "guard", "doc") 
VALUES 
('M_ALARM', '0', 'ready', 'Z_EPSILON', '', '', '
    ASSIGN(WPARM,0); //WILL BE LVIEW VALUE
', '', ''),
('M_ALARM', 'ready', 'alarmWhite', 'DROP', 'IDD_ALARM', '', '
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
     SIGNAL(MEFPAN_CLOSER,SIG_SET);
    LOADVIEW(WPARM);
', '', ''),
 ('M_ALARM', 'alarmGreen', 'alarmWhite', 'CLICK', '0', '', '
    MOV(WSPRITE,IDS_ALARMOFF);
    SHOW(WSPRITE);
    SIGNAL(MEFPAN_CLOSER,SIG_SET);
    LOADVIEW(WPARM);
', '', '');


