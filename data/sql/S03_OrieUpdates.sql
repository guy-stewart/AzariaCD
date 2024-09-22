
delete from games;

----RESOURCES 
delete from spr_names where name like 'IDS_ORIEKEY%';
delete from objects where [object] like 'IDD_ORIEKEY%';


INSERT INTO "main"."spr_names" ("name", "value") 
VALUES 
('IDS_ORIEKEY', 'ORIEKEY'),
('IDS_ORIEKEYSMALL', 'ORIEKEYSMALL'),
('IDS_ORIEKEYIN', 'ORIEKEYIN');

insert into objects values
('IDD_ORIEKEY','IDC_NULL','ORIEKEY','ORIEKEY','ORIEKEY'),
('IDD_ORIEKEYSMALL','IDC_NULL','ORIEKEYSMALL','ORIEKEYSMALL','ORIEKEYSMALL'),
('IDD_ORIEKEYIN','IDC_NULL','ORIEKEYIN','ORIEKEYIN','ORIEKEYIN');

delete from sounds where [name] like 'SOUND_SWITCH%';
delete from sounds where [name] like 'SOUND_PORTAL%';
insert into sounds values ('SOUND_SWITCH', 'switch',0);
insert into sounds values ('SOUND_PORTAL', 'portal',0);



delete from views where [view_name] like 'IDV_GUITECHPAN%';

INSERT INTO "main"."views" ("view_name", "Z", "backgroundAudio", "locator_view", "behavior_id", "portal_filename", "surface_filename") 
VALUES 
('IDV_GUITECHPAN', '1', '0', '1', '1', 'wdepanel.vct', 'guitechpan');

delete from panel_nav where [from] like 'IDV_GUITECHPAN%';
INSERT INTO "main"."panel_nav" ("from", "forward", "back") 
VALUES ('IDV_GUITECHPAN', '', 'IDV_ORIE');

delete from machines where [name] like 'S03_DIARYBIN';
delete from machines where [name] like 'S03_DOORANIM';
delete from machines where [name] = 'S03_SPEAKERSTANDf';
INSERT INTO "main"."machines" ("name", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") 
VALUES 
('S03_DIARYBIN', 'IDV_ORIE', '946', '86', '999', '142', '2', 'M_BIN', 'IDD_DIARY2', '', '', ''),
('S03_DOORANIM', 'IDV_ORIE', '305', '55', '406', '260', '0', 'M_QANIPORTAL', 'IDS_DOORANIM', '', 'IDV_N2A', ''),
('S03_SPEAKERSTANDf','IDV_ORIE', '251', '170', '281', '200', '0', 'M_ORIEKEY', 'S03_DOORANIM', '', '', '');




delete from triggers where [to] like 'IDV_DOORS%';
delete from triggers where [to] like 'IDV_TECHPAN%';
delete from triggers where [to] like 'IDV_GUITECHPAN%';
INSERT INTO "main"."triggers" ("from", "left", "top", "right", "bottom", "to", "facing")
VALUES 
('IDV_ORIE', '763', '83', '833', '147', 'IDV_GUITECHPAN', '');

delete from transitions where automaton = 'M_ORIEKEY';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code", "guard", "doc") VALUES 
 ('M_ORIEKEY', '0', '2', 'DROP', 'IDD_ORIEKEYSMALL', '', '', '', ''),
 
 ('M_ORIEKEY', '2', '3', 'ASSIGN', 'WOBJECT', 'IDD_ORIEKEYIN', '
    PLAYWAVE(SOUND_SWITCH);
 ', '', ''),
 ('M_ORIEKEY', '3', '5', 'SHOW', 'WOBJECT', '', ' 
    SIGNAL(WIP1,SIG_UNLOCK);
 ', '', ''),
 ('M_ORIEKEY', '5', '6', 'GRAB', '0', '0', '
    HANDOFF(0,IDD_ORIEKEYSMALL);
    SIGNAL (WIP1,SIG_LOCK);
 ', '', ''),
 ('M_ORIEKEY', '6', '0', 'SHOW', '0', '0', '', '', '');





delete from transitions where automaton = 'M_QANIPORTAL';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code")
 VALUES 
 ('M_QANIPORTAL', '0', '1', 'MOV', 'WSPRITE', 'WIP1',''),
 ('M_QANIPORTAL', '1', '10', 'WAIT', '', 'SIG_UNLOCK',''),
 ('M_QANIPORTAL', '10', '20', 'ASHOW', 'WSPRITE', 'V_LOOP','
  PLAYWAVE(SOUND_PORTAL);
 '),
 ('M_QANIPORTAL', '20', '30', 'CLICK', '0', '0',''),
 ('M_QANIPORTAL', '20', '25', 'WAIT', '', 'SIG_LOCK','
    MOV(WSPRITE,0);
    SHOW(0,0);
    PLAYWAVE(0,0);
 '),    
 ('M_QANIPORTAL', '25', '10', 'WAIT', '', 'SIG_UNLOCK','
    MOV(WSPRITE,WIP1);
 '),
 ('M_QANIPORTAL', '30', '10', 'LOADVIEW', '0', 'WIP3','');

delete from cardinals where [from] like 'IDV_N2A%';
INSERT INTO "main"."cardinals" ("from", "north", "northeast", "east", "southeast", "south", "southwest", "west", "northwest")
VALUES ('IDV_N2A', '', '', 'IDV_N2B', '', '', '', 'IDV_ORIE', '');