delete from games;
delete from machines where name = 'S25_RUMBLE';
delete from machines where name = 'S25_ROLL';
delete from machines where name = 'S25_SCATTER';
delete from machines where name = 'S25_OPN1';
delete from machines where name = 'S25_OPN2';
delete from machines where name = 'S25_WALLCU1E';
delete from machines where name = 'S25_WALLCU2E';

INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip1_value", "wip2_name", "wip2_value", "wip3_name", "wip3_value", "wip4_name", "wip4_value") 
VALUES 
('9472', 'S25_RUMBLE', '9476', 'IDV_W4LOCK', '374', '96', '574', '275', '2', 'M25_RUMBLE', '', '0', '', '0', '', '0', '', '0'),
('9473', 'S25_ROLL', '9476', 'IDV_W4LOCK', '274', '96', '516', '180', '2', 'M25_ROLL', '', '0', '', '0', '', '0', '', '0'),
('9474', 'S25_SCATTER', '9476', 'IDV_W4LOCK', '25', '75', '326', '180', '2', 'M25_SCATTER', '', '0', '', '0', '', '0', '', '0'),
('9477', 'S25_OPN1', '9478', 'IDV_WALL1IN', '95', '126', '404', '299', '2', 'M25_OPNDOOR', 'IDS_OPN1', '9478', 'IDV_HIDDENR1', '9489', '', '0', '', '0'),
('9478', 'S25_OPN2', '9480', 'IDV_WALL2IN', '2717', '138', '3028', '298', '2', 'M25_OPNDOOR', 'IDS_OPN2', '9479', 'IDV_HIDDENR1', '9489', '', '0', '', '0'),
('9475', 'S25_WALLCU1E', '9481', 'IDV_PL1P', '162', '70', '476', '158', '2', 'M24_EYETEXT', 'IDS_WALL1CUE', '9476', '', '0', '', '0', '', '0'),
('9476', 'S25_WALLCU2E', '9488', 'IDV_PL2P', '165', '78', '479', '218', '2', 'M24_EYETEXT', 'IDS_WALL2CUE', '9477', '', '0', '', '0', '', '0');



-- TRANSITIONS FOR SCENE 25
delete from transitions where name = 'M25_RUMBLE';
INSERT INTO "main"."transitions" ("name", "state", "new_state", "opcode", "param_1", "param_2")
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

delete from transitions where name = 'M25_ROLL';
INSERT INTO "main"."transitions" ("name", "state", "new_state", "opcode", "param_1", "param_2") 
VALUES 
('M25_ROLL', '0', '1', 'WAIT', '0', 'SIG_OPEN'),
('M25_ROLL', '1', '2', 'SHOW', '', 'IDS_ROLL'),
('M25_ROLL', '2', '0', 'ANIMATE', '', '');

delete from transitions where name = 'M25_SCATTER';
INSERT INTO "main"."transitions" ("name", "state", "new_state", "opcode", "param_1", "param_2") 
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
('M25_SCATTER', '73', '80', 'GTEi', 'BFRAME', '10'), -- DID WE GET TO FRAME 10/11?
('M25_SCATTER', '73', '10', 'Z_EPSILON', '', ''),
('M25_SCATTER', '80', '10', 'LOADVIEW', '0', 'IDV_WALL1EN');
