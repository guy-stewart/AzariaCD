


----RESOURCES 
delete from spr_names where name like 'IDS_ORIEKEY%';
delete from objects where [object] like 'IDD_ORIEKEY%';
delete from spr_names where name like 'IDS_LOGBOOK%';
delete from objects where [object] like 'IDD_LOGBOOK%';

--Orientation doesn't need a cardinal exit
delete from "main"."cardinals"  where [from] like 'IDV_ORIE%';
INSERT INTO "main"."cardinals" ("from", "north", "northeast", "east", "southeast", "south", "southwest", "west", "northwest") VALUES 
('IDV_ORIE', '', '', '', '', '', '', '', '');



INSERT INTO "main"."spr_names" ("name", "value") 
VALUES 
('IDS_ORIEKEY', 'ORIEKEY'),
('IDS_ORIEKEYSMALL', 'ORIEKEYSMALL'),
('IDS_ORIEKEYIN', 'ORIEKEYIN'),

('IDS_LOGBOOK', 'LOGBOOK'),
('IDS_LOGBOOKBTN', 'LOG');

insert into objects values
('IDD_ORIEKEY','IDC_NULL','ORIEKEY','ORIEKEY','ORIEKEY'),
('IDD_ORIEKEYSMALL','IDC_NULL','ORIEKEYSMALL','ORIEKEYSMALL','ORIEKEYSMALL'),
('IDD_ORIEKEYIN','IDC_NULL','ORIEKEYIN','ORIEKEYIN','ORIEKEYIN'),

('IDD_LOGBOOK','IDC_NULL','LOGBOOK','LOGBOOK','LOGBOOK'),
('IDD_LOGBOOKBTN','IDC_NULL','LOG','LOG','LOG');

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
delete from machines where [name] like 'S03_SPEAKERSTAND%';

delete from machines where [name] = 'S03_LOGBOOKBIN';
INSERT INTO "main"."machines" ("name", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") 
VALUES 
('S03_DIARYBIN', 'IDV_ORIE', '946', '86', '999', '142', '2', 'M_BIN', 'IDD_DIARY2', '', '', ''),
('S03_DOORANIM', 'IDV_ORIE', '305', '55', '406', '260', '2', 'M_QANIPORTAL', 'IDS_DOORANIM', '', 'IDV_N2A', ''),


('S03_LOGBOOKBIN', 'IDV_ORIE', '2228', '221', '2280', '280', '2','M_PLANTBIN','IDD_LOGBOOKBTN','IDS_LOGBOOK','100','');

INSERT INTO "main"."machines" ( "name", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name", "z") VALUES 
('S03_SPEAKERSTANDa','IDV_ORIE', '2416', '170', '2442', '200', '2', 'M_ORIESPEAKER', '', '', 'SOUND_ORIE1', '', ''),
('S03_SPEAKERSTANDb','IDV_ORIE', '2148', '170', '2177', '200', '2', 'M_ORIESPEAKER', '', '', 'SOUND_ORIE2', '', ''),
('S03_SPEAKERSTANDc','IDV_ORIE', '1881', '170', '1910', '200', '2', 'M_ORIESPEAKER', '', '', 'SOUND_ORIE3', '', ''),
('S03_SPEAKERSTANDd','IDV_ORIE', '1347', '170', '1378', '200', '2', 'M_ORIESPEAKER', '', '', 'SOUND_ORIE4', '', ''),
('S03_SPEAKERSTANDe','IDV_ORIE', '819', '170', '848', '200',   '2', 'M_ORIESPEAKER', '', '', 'SOUND_ORIE5', '', ''),
('S03_SPEAKERSTANDf','IDV_ORIE', '251', '170', '281', '200','2',   'M_ORIEKEY', 'S03_DOORANIM', '', '', '', ''),
('S03_SPEAKERSTANDg','IDV_ORIE', '986', '168','1012','194',  '2',   'M_ORIESPEAKER', '', '', 'SOUND_ORIE6', '', '');



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
    SIGNAL(QL_MANAGER,Q0_STOP);
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
 ('M_QANIPORTAL', '30', '10', 'LOADVIEW', '0', 'WIP3','
    q_local_active(?BPARM, "1");
    if(BPARM != " Find the ancient map in the wilderness."){
     SIGNAL(QL_MANAGER,Q1_START);
    }
   
 ');


delete from transitions where automaton = 'M_ORIESPEAKER';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code") VALUES 
 ('M_ORIESPEAKER', '0', '1', 'O_ACCEPT', '0', 'IDD_SPEAKER', ''),
 ('M_ORIESPEAKER', '1', '2', 'DROP', '0', '0', ''),
 ('M_ORIESPEAKER', '2', '3', 'ASSIGN', 'WOBJECT', 'IDD_SPEAKER', ''),
 ('M_ORIESPEAKER', '2', '3', 'ASSIGN', 'WOBJECT', 'IDD_SPEAKER', ''),
 ('M_ORIESPEAKER', '2', '3', 'ASSIGN', 'WOBJECT', 'IDD_SPEAKER', ''),
 ('M_ORIESPEAKER', '3', '4', 'SHOW', 'WOBJECT', '', ''),
 ('M_ORIESPEAKER', '4', '5', 'PLAYWAVE', 'WIP3', '', '
      if(WIP3 == "SOUND_ORIE1"){
          q_local_active(?BPARM, "1");
            if(BPARM != " Find the ancient map in the wilderness."){
               SIGNAL(QL_MANAGER,Q1_START);
            }
      }
 '),
 ('M_ORIESPEAKER', '5', '6', 'GRAB', '0', '0', ''),
 ('M_ORIESPEAKER', '6', '1', 'SHOW', '0', '0', '');










delete from cardinals where [from] like 'IDV_N2A%';
INSERT INTO "main"."cardinals" ("from", "north", "northeast", "east", "southeast", "south", "southwest", "west", "northwest")
VALUES ('IDV_N2A', '', '', 'IDV_N2B', '', '', '', 'IDV_ORIE', '');