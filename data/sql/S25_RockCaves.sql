delete from games;
delete from machines where name = 'S25_RUMBLE';
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


INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") 
VALUES 
('9472', 'S25_RUMBLE', '9476', 'IDV_W4LOCK', '374', '96', '574', '275', '2', 'M25_RUMBLE', '', '', '', ''),
('9473', 'S25_ROLL', '9476', 'IDV_W4LOCK', '274', '96', '516', '180', '2',   'M25_ROLL',  '', '', '', ''),
('9474', 'S25_SCATTER', '9476', 'IDV_W4LOCK', '25', '75', '326', '180', '2', 'M25_SCATTER',  '', '', '', ''),
('9477', 'S25_OPN1', '9478', 'IDV_WALL1IN', '95', '126', '404', '299', '2',  'M25_OPNDOOR', 'IDS_OPN1','IDV_HIDDENR1','',''),
('9478', 'S25_OPN2', '9480', 'IDV_WALL2IN', '2717', '138', '3028', '298','2','M25_OPNDOOR', 'IDS_OPN2', 'IDV_HIDDENR1', '', ''),
('9475', 'S25_WALLCU1E', '9481', 'IDV_PL1P', '162', '70', '476', '158', '2', 'M24_EYETEXT', 'IDS_WALL1CUE', '', '', ''),
('9510', 'S25_WALLCU2E', '9488', 'IDV_PL2P', '165', '78', '479', '218', '2', 'M24_EYETEXT', 'IDS_WALL2CUE', '', '', ''),
('9511', 'S25_RUMROLL_ALT', '9475', 'IDV_WR3', '1639', '121', '1642', '125', '0', 'M_STATEDOOR', 'IDS_RUMROLL_ALT_OP','IDS_RUMROLL_ALT_CL', '', ''),
('9512', 'S25_SCAT_ALT', '9475', 'IDV_WR3', '1533','130', '1642', '135', '0', 'M_STATEDOOR', 'IDS_SCAT_ALT_OP', 'IDS_SCAT_ALT_CL','', '');

delete from  "main"."transitions" where automaton = 'M_STATEDOOR';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2") VALUES 
('M_STATEDOOR', '0', '1', 'MOV', 'WSPRITE', 'WIP2'), --CLOSED
('M_STATEDOOR', '1', '2', 'SHOW', 'WSPRITE', '0'),
('M_STATEDOOR', '2', '3', 'WAIT', '0', 'SIG_OPEN'),
('M_STATEDOOR', '3', '5', 'MOV', 'WSPRITE', 'WIP1'),
('M_STATEDOOR', '5', '10', 'SHOW', 'WSPRITE', '0'),
('M_STATEDOOR', '10', '0', 'WAIT', '0', 'SIG_CLOSE');



-- TRANSITIONS FOR SCENE 25
delete from transitions where automaton = 'M25_RUMBLE';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2")
VALUES 
('M25_RUMBLE', '0', '1', 'ASSIGN', 'BFRAME', '1'),
('M25_RUMBLE',  '1', '2', 'ASSIGN', 'WSPRITE', 'IDS_RUMBLE'),
('M25_RUMBLE', '2', '3', 'SHOW', 'WSPRITE', ''),
('M25_RUMBLE', '3', '20', 'DRAGFOCUS', '0', 'FALSE'),
('M25_RUMBLE', '3', '40', 'DRAGFOCUS', '0', 'TRUE'),
('M25_RUMBLE', '3', '30', 'DROP', '0', 'IDD_TELEKINESIS'),
('M25_RUMBLE', '3', '10', 'WAIT', '0', 'SIG_INIT'),
('M25_RUMBLE', '10', '3', 'CLEAR', 'BPARM', ''), 

('M25_RUMBLE', '20', '3', 'SUBI', 'BPARM', '1'),
('M25_RUMBLE', '30', '50', 'ADDI', 'BPARM', '1'),
('M25_RUMBLE', '40', '50', 'ADDI', 'BPARM', '1'),
('M25_RUMBLE', '50', '60', 'GTi', 'BPARM', '1'),
('M25_RUMBLE', '50', '0', 'VIDEO', '0', 'IDS_RUMBLE'),

('M25_RUMBLE',  '60', '61', 'ASSIGN', 'WSPRITE', '0'),
('M25_RUMBLE', '61', '62', 'SHOW', 'WSPRITE', ''),
('M25_RUMBLE', '62', '70', 'SIGNALi', 'SIG_OPEN', 'S25_ROLL'),
('M25_RUMBLE', '70', '71', 'CLICK', '0', '0'),
('M25_RUMBLE', '71', '70', 'LOADVIEW', '0', 'IDV_WALL2EN');

delete from transitions where automaton = 'M25_ROLL';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2") 
VALUES 
('M25_ROLL', '0', '1', 'WAIT', '0', 'SIG_OPEN'),
('M25_ROLL', '1', '2', 'SHOW', '', 'IDS_ROLL'),
('M25_ROLL', '2', '3', 'SIGNALi', 'SIG_OPEN', 'S25_RUMROLL_ALT'),
('M25_ROLL', '3', '0', 'ANIMATE', '', '');

delete from transitions where automaton = 'M25_SCATTER';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2") 
VALUES 

('M25_SCATTER', '0', '2', 'MOV', 'BFRAME', '0'),
('M25_SCATTER',  '2', '3', 'ASSIGN', 'WSPRITE', 'IDS_SCATTER'),
('M25_SCATTER', '3', '4', 'SHOW', 'WSPRITE', ''),
('M25_SCATTER', '4', '10', 'C_ACCEPT', '0', 'IDC_BOMB'),
('M25_SCATTER', '10', '50', 'DROP', '0', '0'),
('M25_SCATTER', '10', '60', 'DRAG', '0', 'IDD_PICK'),
('M25_SCATTER', '10', '60', 'DRAG', '0', 'IDD_SHOVEL'),
('M25_SCATTER', '10', '73', 'CLICK', '0', '0'),
('M25_SCATTER', '50', '51', 'VIDEO', '0', 'IDS_EXPLODE1'),
('M25_SCATTER', '51', '52', 'PLAYWAVE', '0', 'SOUND_EXPLODE'),
('M25_SCATTER', '52', '70', 'ADDI', 'BPARM', '20'), -- ADD DAMAGE
('M25_SCATTER', '60', '61', 'PLAYWAVE', '0', 'SOUND_POP'),
('M25_SCATTER', '61', '70', 'ADDI', 'BPARM', '1'), -- ADD DAMAGE
--Check---
('M25_SCATTER', '70', '71', 'GTEi', 'BPARM', '20'), -- DAMAGE REQUIRED TO MOVE A FRAME
('M25_SCATTER', '70', '10', 'Z_EPSILON', '', ''),
--set BPARM to some value 0-10
('M25_SCATTER', '71', '72', 'ADDI', 'BFRAME', '1'),
('M25_SCATTER', '72', '73', 'ASSIGN', 'BPARM', '0'), --SET BPARM BACK TO 0 - NEW DAMAGE EFFORT
('M25_SCATTER', '73', '74', 'GTEi', 'BFRAME', '10'), -- DID WE GET TO FRAME 10/11?
('M25_SCATTER', '74', '80', 'SIGNALi', 'SIG_OPEN', 'S25_SCAT_ALT'),
('M25_SCATTER', '73', '10', 'Z_EPSILON', '', ''),
('M25_SCATTER', '80', '10', 'LOADVIEW', '0', 'IDV_WALL1EN');

------------CAVES COMPLETION
--M25_OPNDOOR
delete from "main"."machines" where [name] like 'S25_OPN%';
delete from "main"."machines" where [name] like 'S25_EXIT%';

INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") VALUES 
('9477', 'S25_OPN1', '9478', 'IDV_WALL1IN', '95', '126', '404', '299', '2', 'M25_OPNDOOR', 'IDS_OPN1', 'IDV_HIDDENR1', 'REC_CAVE1', ''),
('9478', 'S25_OPN2', '9480', 'IDV_WALL2IN', '2717', '138', '3028', '298', '2', 'M25_OPNDOOR', 'IDS_OPN2', 'IDV_HIDDENR2', 'REC_CAVE2', ''),

('9482', 'S25_EXIT1', '9489', 'IDV_HIDDENR1', '1264', '138', '1473', '288', '2', 'M25_EXITDOOR', 'IDV_WALL1IN', '', '', ''),
('9483', 'S25_EXIT2', '9490', 'IDV_HIDDENR2', '1579', '136', '1795', '289', '2', 'M25_EXITDOOR', 'IDV_WALL2IN', '', '', '');


delete from transitions where automaton = 'M25_OPNDOOR';
insert into transitions ([automaton], [state], [new_state], [opcode], [param_1], [param_2], [code], [guard]) values
('M25_OPNDOOR','0','10','C_ACCEPT','0','IDC_BOMB','',''),
('M25_OPNDOOR','10','40','DROP','0','0','',''),
('M25_OPNDOOR','40','50','Z_EPSILON','','','',''),
('M25_OPNDOOR','50','51','VIDEO','0','IDS_EXPLODE1','',''),
('M25_OPNDOOR','51','52','PLAYWAVE','0','SOUND_EXPLODE','SIGNAL(WIP3,SIG_COMPLETE);',''),
('M25_OPNDOOR','52','53','MOV','WSPRITE','WIP1','',''),
('M25_OPNDOOR','53','70','SHOW','WSPRITE','','',''),
('M25_OPNDOOR','70','71','CLICK','0','0','',''),
('M25_OPNDOOR','71','70','LOADVIEW','WIP2','','',''),

('M25_EXITDOOR','0','1','CLICK','0','0','',''),
('M25_EXITDOOR','1','0','LOADVIEW','WIP1','','','');

-------------------
--adding hidden room items to grab 

INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") 
VALUES 
('9491', 'S25_aHIDDENSCROLL', '9489', 'IDV_HIDDENR1', '2583', '223', '2620', '300', '2', 'M_PLANTBIN', 'IDD_SCR022', 'IDS_HR1SA', '60', ''), --seeing eye
('9494', 'S25_dHIDDENSCROLL', '9489', 'IDV_HIDDENR1', '613', '203', '665', '258', '2', 'M_PLANTBIN', 'IDD_SCR019', 'IDS_HR1SD', '60', ''),
('9496', 'S25_aHIDDENTEMP', '9489', 'IDV_HIDDENR1', '2638', '217', '2690', '270', '2', 'M_PLANTBIN', 'IDD_TEMPLATE_24', 'IDS_HR1TA', '60', ''), -- gas mask
('9498', 'S25_cHIDDENTEMP', '9489', 'IDV_HIDDENR1', '820', '208', '871', '260', '2', 'M_PLANTBIN', 'IDD_TEMPLATE_25', 'IDS_HR1TC', '60', ''), -- eye fuse

('9499', 'S25_2aHIDDENSCROLL', '9490', 'IDV_HIDDENR2', '2509', '210', '2559', '264', '2', 'M_PLANTBIN', 'IDD_SCR021', 'IDS_HR2SA', '60', ''), --time
('9501', 'S25_2cHIDDENSCROLL', '9490', 'IDV_HIDDENR2', '232', '212', '282', '264', '2', 'M_PLANTBIN', 'IDD_ROOTWHITE', 'IDS_HR2SC', '60', ''),
('9502', 'S25_2aHIDDENTEMP', '9490', 'IDV_HIDDENR2', '2323', '210', '2373', '262', '2', 'M_PLANTBIN', 'IDD_TEMPLATE_30', 'IDS_HR2TA', '60', ''), --MEMFUSE
('9504', 'S25_2cHIDDENTEMP', '9490', 'IDV_HIDDENR2', '393', '224', '443', '276', '2', 'M_PLANTBIN', 'IDD_ROOTWHITE', 'IDS_HR2TC', '60', '');