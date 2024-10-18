delete from games;


delete from sounds where name like 'SOUND_PICKA%';
INSERT INTO "main"."sounds" ("name", "value", "id") VALUES ('SOUND_PICKAXE', 'pickaxe', '0');

delete from machines where [name] like 'S25_RUMBLE%';
delete from machines where name = 'S25_ROLL';
delete from machines where name = 'S25_SCATTER';
delete from machines where name = 'S25_OPN1';
delete from machines where name = 'S25_OPN2';
delete from machines where name = 'S25_WALLCU1E';
delete from machines where name = 'S25_WALLCU2E';

delete from machines where name = 'S25_RUMROLL_ALT';
delete from machines where name = 'S25_SCAT_ALT';

delete from spr_names where name = 'IDS_RUMROLL_ALT_CL';
delete from spr_names where name = 'IDS_SCAT_ALT_CL';
delete from spr_names where name = 'IDS_RUMROLL_ALT_OP';
delete from spr_names where name = 'IDS_SCAT_ALT_OP';

INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_RUMROLL_ALT_CL', 'rumroll_alt_cl', '9510');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_SCAT_ALT_CL', 'scat_alt_cl', '9511');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_RUMROLL_ALT_OP', 'rumroll_alt_op', '9512');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_SCAT_ALT_OP', 'scat_alt_op', '9513');


INSERT INTO "main"."machines" ("name", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") 
VALUES 
('S25_RUMBLE',     'IDV_W4LOCK', '374', '96', '507', '200', '1', 'M25_RUMBLE', '', '', '', ''),
('S25_RUMBLEPRY',  'IDV_W4LOCK', '508', '201', '580', '275', '1', 'M25_RUMBLEPRY', '', '', '', ''),
('S25_ROLL',       'IDV_W4LOCK', '274', '96', '516', '180', '1',   'M25_ROLL',  '', '', '', ''),
('S25_SCATTER',    'IDV_W4LOCK', '25', '75', '326', '180', '1', 'M25_SCATTER',  '', '', '', ''),
('S25_OPN1',       'IDV_WALL1IN', '95', '126', '404', '299', '1',  'M25_OPNDOOR', 'IDS_OPN1','IDV_HIDDENR1','',''),
('S25_OPN2',       'IDV_WALL2IN', '2717', '138', '3028', '298','1','M25_OPNDOOR', 'IDS_OPN2', 'IDV_HIDDENR1', '', ''),
('S25_WALLCU1E',   'IDV_PL1P', '162', '70', '476', '158', '1', 'M24_EYETEXT', 'IDS_WALL1CUE', '', '', ''),
('S25_WALLCU2E',   'IDV_PL2P', '165', '78', '479', '218', '1', 'M24_EYETEXT', 'IDS_WALL2CUE', '', '', ''),
('S25_RUMROLL_ALT','IDV_WR3', '1639', '121', '1642', '125', '1', 'M_STATEDOOR', 'IDS_RUMROLL_ALT_OP','IDS_RUMROLL_ALT_CL', '', ''),
('S25_SCAT_ALT',   'IDV_WR3', '1533','130', '1642', '135', '1', 'M_STATEDOOR', 'IDS_SCAT_ALT_OP', 'IDS_SCAT_ALT_CL','', '');

delete from  "main"."transitions" where automaton = 'M_STATEDOOR';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code", "guard", "doc") VALUES 
('M_STATEDOOR', '0', '1', 'MOV', 'WSPRITE', 'WIP2', '', '', ''), --CLOSED
('M_STATEDOOR', '1', '2', 'SHOW', 'WSPRITE', '0', '', '', ''),
('M_STATEDOOR', '2', '3', 'WAIT', '0', 'SIG_OPEN', '', '', ''),
('M_STATEDOOR', '3', '5', 'MOV', 'WSPRITE', 'WIP1', '', '', ''),
('M_STATEDOOR', '5', '10', 'SHOW', 'WSPRITE', '0', '', '', ''),
('M_STATEDOOR', '10', '0', 'WAIT', '0', 'SIG_CLOSE', '', '', '');



-- TRANSITIONS FOR SCENE 25
delete from transitions where [automaton] like 'M25_RUMBLE%';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code", "guard", "doc") VALUES  
('M25_RUMBLE', '0', '1', 'ASSIGN', 'BFRAME', '1', '', '', ''), 
('M25_RUMBLE',  '1', '2', 'ASSIGN', 'WSPRITE', 'IDS_RUMBLE', '', '', ''), 
('M25_RUMBLE', '2', 'steady', 'SHOW', 'WSPRITE', '', '', '', ''), 


('M25_RUMBLE', 'steady', 'minorForce', 'WAIT','0', 'SIG_PRY', '', '', ''), 
('M25_RUMBLE', 'steady', 'minorForce', 'DROP','IDC_BOMB,  IDD_EXPLOSION', '', '
    VIDEO(0,IDS_EXPLODE1);
    PLAYWAVE(SOUND_EXPLODE);
', '', ''), 
('M25_RUMBLE', 'steady', 'majorForce', 'DROP', 'IDD_TELEKINESIS, IDD_STRENGTH', '', '', '', ''), 
('M25_RUMBLE', 'steady', 'reinitialized', 'WAIT', '0', 'SIG_INIT', '', '', ''), 

('M25_RUMBLE', 'reinitialized', 'steady', 'CLEAR', 'BPARM', '', '', '', ''), 

('M25_RUMBLE', 'majorForce', 'forceCheck', 'ADDI', 'BPARM', '10', '', '', ''), 
('M25_RUMBLE', 'minorForce', 'forceCheck', 'ADDI', 'BPARM', '1', '', '', ''), 

('M25_RUMBLE', 'forceCheck', 'startOpen', 'GTi', 'BPARM', '7', '', '', ''), 
('M25_RUMBLE', 'forceCheck', '0', 'Z_EPSILON', '', '', 'VIDEO(0,IDS_RUMBLE);', '', ''), 

('M25_RUMBLE',  'startOpen', '61', 'ASSIGN', 'WSPRITE', '0', '', '', ''), 
('M25_RUMBLE', '61', '62', 'SHOW', 'WSPRITE', '', '', '', ''), 
('M25_RUMBLE', '62', '70', 'SIGNALi', 'SIG_OPEN', 'S25_ROLL', '
   ADDI(LWISDOM,2); 
   SIGNALi(0,SID_ID);
', '', ''), 
('M25_RUMBLE', '70', '71', 'CLICK', '0', '0', '', '', ''), 
('M25_RUMBLE', '71', '70', 'LOADVIEW', '0', 'IDV_WALL2EN', '', '', ''),

('M25_RUMBLEPRY', '0', 'prying', 'DRAG', 'IDD_CROWBAR, IDD_SHOVEL, IDD_PICK', '', '
    ASSIGN(BPARM,0);
', '', ''), 
('M25_RUMBLEPRY', 'prying', 'rest', 'LTE', 'BPARM', '5', '
   ADDi(BPARM,1);
', '', ''),

('M25_RUMBLEPRY', 'rest', 'prying', 'CLICK', '', '', '
     SIGNALi(SIG_PRY,S25_RUMBLE);
', '', '');

delete from transitions where automaton = 'M25_ROLL';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code", "guard", "doc")
VALUES 
('M25_ROLL', '0', '1', 'WAIT', '0', 'SIG_OPEN', '', '', ''),
('M25_ROLL', '1', '2', 'SHOW', '', 'IDS_ROLL', '', '', ''),
('M25_ROLL', '2', '3', 'SIGNALi', 'SIG_OPEN', 'S25_RUMROLL_ALT', '', '', ''),
('M25_ROLL', '3', '0', 'ANIMATE', '', '', '', '', '');

delete from transitions where automaton = 'M25_SCATTER';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2","code", "guard") 
VALUES 

('M25_SCATTER', '0', 'notscattered', 'MOV', 'BFRAME', '0', '
    ASSIGN(WSPRITE,IDS_SCATTER);
    SHOW(WSPRITE);
', ''),
('M25_SCATTER', 'notscattered', 'bombed', 'DROP', 'IDC_BOMB,  IDD_EXPLOSION', '0', '', ''),
('M25_SCATTER', 'notscattered', 'axed', 'DRAG', '0', 'IDD_PICK', '', ''),
('M25_SCATTER', 'notscattered', 'axed', 'DRAG', '0', 'IDD_SHOVEL', '', ''),

('M25_SCATTER', 'bombed', 'checkDamage', 'VIDEO', '0', 'IDS_EXPLODE1', '
    //add damage
    PLAYWAVE(SOUND_EXPLODE);
    ADDI(BPARM,20);
', ''),

('M25_SCATTER', 'axed', 'checkDamage', 'PLAYWAVE', '0', 'SOUND_PICKAXE', '
      ADDI(BPARM,1);
', ''),

--Check---
('M25_SCATTER', 'checkDamage', 'advanceFrame', 'GTEi', 'BPARM', '20', '', ''), -- DAMAGE REQUIRED TO MOVE A FRAME
('M25_SCATTER', 'checkDamage', 'notscattered', 'Z_EPSILON', '', '', '', ''),

('M25_SCATTER', 'advanceFrame', 'checkIfComplete', 'ADDI', 'BFRAME', '1', '
    ASSIGN(BPARM,0);
', ''),

('M25_SCATTER', 'checkIfComplete', 'scattered', 'GTEi', 'BFRAME', '10', '
    SIGNALi(SIG_OPEN,S25_SCAT_ALT);
    ADDI(LWISDOM,2); 
    SIGNALi(0,SID_ID);
', ''), 
('M25_SCATTER', 'checkIfComplete', 'notscattered', 'Z_EPSILON', '', '', '', ''),
('M25_SCATTER', 'scattered', 'allowAccess', 'CLICK', '', '', '
    LOADVIEW(0,IDV_WALL1EN);
', ''),
('M25_SCATTER', 'allowAccess', 'scattered', 'CLICK', '', '', '
    LOADVIEW(0,IDV_WALL1EN);
', '');


------------CAVES COMPLETION
--M25_OPNDOOR
delete from "main"."machines" where [name] like 'S25_OPN%';
delete from "main"."machines" where [name] like 'S25_EXIT%';

INSERT INTO "main"."machines" ("name", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") VALUES 
('S25_OPN1',    'IDV_WALL1IN', '95', '126', '404', '299', '1', 'M25_OPNDOOR', 'IDS_OPN1', 'IDV_HIDDENR1', 'REC_CAVE2', ''),
('S25_OPN2',    'IDV_WALL2IN', '2717', '138', '3028', '298', '1', 'M25_OPNDOOR', 'IDS_OPN2', 'IDV_HIDDENR2', 'REC_CAVE1', ''),
('S25_EXIT1',   'IDV_HIDDENR1', '1264', '138', '1473', '288', '1', 'M25_EXITDOOR', 'IDV_WALL1IN', '', '', ''),
('S25_EXIT2',   'IDV_HIDDENR2', '1579', '136', '1795', '289', '1', 'M25_EXITDOOR', 'IDV_WALL2IN', '', '', '');


delete from transitions where automaton = 'M25_OPNDOOR';
delete from transitions where automaton = 'M25_EXITDOOR';
insert into transitions ([automaton], [state], [new_state], [opcode], [param_1], [param_2], [code], [guard]) values
('M25_OPNDOOR','0','10','Z_EPSILON','','','',''),
('M25_OPNDOOR','10','40','DROP','IDC_BOMB, IDD_EXPLOSION','0','',''),
('M25_OPNDOOR','40','50','Z_EPSILON','','','',''),
('M25_OPNDOOR','50','51','VIDEO','0','IDS_EXPLODE1','',''),
('M25_OPNDOOR','51','52','PLAYWAVE','0','SOUND_EXPLODE','
        SIGNAL(WIP3,SIG_COMPLETE);
        ADDI(LWISDOM,3); 
        SIGNALi(0,SID_ID);
',''),
('M25_OPNDOOR','52','53','MOV','WSPRITE','WIP1','',''),
('M25_OPNDOOR','53','70','SHOW','WSPRITE','','',''),
('M25_OPNDOOR','70','71','CLICK','0','0','',''),
('M25_OPNDOOR','71','70','LOADVIEW','WIP2','','',''),

('M25_EXITDOOR','0','1','CLICK','0','0','',''),
('M25_EXITDOOR','1','0','LOADVIEW','WIP1','','','');

-------------------
--adding hidden room items to grab 
delete from "main"."machines" where [name] like 'S25_aHID%';
delete from "main"."machines" where [name] like 'S25_dHID%';
delete from "main"."machines" where [name] like 'S25_cHID%';
delete from "main"."machines" where [name] like 'S25_2aHID%';
delete from "main"."machines" where [name] like 'S25_2cHID%';
INSERT INTO "main"."machines" ("name","view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") 
VALUES 
('S25_aHIDDENSCROLL',  'IDV_HIDDENR1', '2583', '223', '2620', '300', '1', 'M_PLANTBIN', 'IDD_SCR022', 'IDS_HR1SA', '60', ''), --seeing eye
('S25_dHIDDENSCROLL',  'IDV_HIDDENR1', '613', '203', '665', '258', '1', 'M_PLANTBIN', 'IDD_SCR019', 'IDS_HR1SD', '60', ''), -- breath -->nybreath
('S25_aHIDDENTEMP',    'IDV_HIDDENR1', '2638', '217', '2690', '270', '1', 'M_PLANTBIN', 'IDD_TEMPLATE_24', 'IDS_HR1TA', '60', ''), -- gas mask
('S25_cHIDDENTEMP',    'IDV_HIDDENR1', '820', '208', '871', '260', '1', 'M_PLANTBIN', 'IDD_TEMPLATE_25', 'IDS_HR1TC', '60', ''), -- eye fuse
('S25_2aHIDDENSCROLL', 'IDV_HIDDENR2', '2509', '210', '2559', '264', '1', 'M_PLANTBIN', 'IDD_SCR021', 'IDS_HR2SA', '60', ''), --time
('S25_2cHIDDENSCROLL', 'IDV_HIDDENR2', '232', '212', '282', '264', '1', 'M_PLANTBIN', 'IDD_SCR020', 'IDS_HR2SC', '60', ''), -- submerge
('S25_2aHIDDENTEMP',   'IDV_HIDDENR2', '2323', '210', '2373', '262', '1', 'M_PLANTBIN', 'IDD_TEMPLATE_30', 'IDS_HR2TA', '60', ''), --MEMFUSE
('S25_2cHIDDENTEMP',   'IDV_HIDDENR2', '393', '224', '443', '276', '1', 'M_PLANTBIN', 'IDD_TEMPLATE_17', 'IDS_HR2TC', '60', ''); -- A FAN