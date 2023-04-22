delete from games;
delete from machines where name = 'S25_RUMBLE';
delete from machines where name = 'S25_ROLL';
delete from machines where name = 'S25_SCATTER';
delete from machines where name = 'S25_OPN2';
delete from machines where name = 'S25_OPN2';
delete from machines where name = 'S25_WALLCU1E';
delete from machines where name = 'S25_WALLCU2E';

INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip1_value", "wip2_name", "wip2_value", "wip3_name", "wip3_value", "wip4_name", "wip4_value") 
VALUES 
('9472', 'S25_RUMBLE', '9476', 'IDV_W4LOCK', '374', '96', '574', '275', '2', 'M25_RUMBLE', '', '0', '', '0', '', '0', '', '0'),
('9473', 'S25_ROLL', '9476', 'IDV_W4LOCK', '346', '59', '516', '180', '2', 'M25_ROLL', '', '0', '', '0', '', '0', '', '0'),
('9474', 'S25_SCATTER', '9476', 'IDV_W4LOCK', '25', '55', '326', '180', '2', 'M25_SCATTER', '', '0', '', '0', '', '0', '', '0'),
('9477', 'S25_OPN1', '9478', 'IDV_WALL1IN', '95', '126', '404', '299', '2', 'M25_OPNDOOR', 'IDS_OPN1', '9478', 'IDV_HIDDENR1', '9489', '', '0', '', '0'),
('9478', 'S25_OPN2', '9480', 'IDV_WALL2IN', '2717', '138', '3028', '298', '2', 'M25_OPNDOOR', 'IDS_OPN2', '9479', 'IDV_HIDDENR1', '9489', '', '0', '', '0'),
('9475', 'S25_WALLCU1E', '9481', 'IDV_PL1P', '162', '70', '476', '158', '2', 'M24_EYETEXT', 'IDS_WALL1CUE', '9476', '', '0', '', '0', '', '0'),
('9476', 'S25_WALLCU2E', '9488', 'IDV_PL2P', '165', '78', '479', '218', '2', 'M24_EYETEXT', 'IDS_WALL2CUE', '9477', '', '0', '', '0', '', '0');

-- TRANSITIONS FOR SCENE 25
delete from transitions where name = 'M25_RUMBLE';
INSERT INTO "main"."transitions" ("name", "state", "new_state", "opcode", "param_1", "param_2")
VALUES 
('M25_RUMBLE', '0', '20', 'DRAGFOCUS', '0', 'FALSE'),
('M25_RUMBLE', '0', '40', 'DRAGFOCUS', '0', 'TRUE'),
('M25_RUMBLE', '0', '30', 'DROP', '0', 'IDD_TELEKINESIS'),
('M25_RUMBLE', '0', '10', 'WAIT', '0', 'SIG_INIT'),
('M25_RUMBLE', '10', '0', 'CLEAR', 'BPARM', ''),
('M25_RUMBLE', '20', '0', 'SUBI', 'BPARM', '1'),
('M25_RUMBLE', '30', '50', 'ADDI', 'BPARM', '1'),
('M25_RUMBLE', '40', '50', 'ADDI', 'BPARM', '1'),
('M25_RUMBLE', '50', '60', 'GTi', 'BPARM', '1'),
('M25_RUMBLE', '50', '0', 'VIDEO', '0', 'IDS_RUMBLE'),
('M25_RUMBLE', '60', '70', 'SIGNALi', 'SIG_OPEN', 'S25_ROLL'),
('M25_RUMBLE', '70', '71', 'CLICK', '0', '0'),
('M25_RUMBLE', '71', '70', 'LOADVIEW', '0', 'IDV_WALL2EN');


INSERT INTO "main"."transitions" ("name", "state", "new_state", "opcode", "param_1", "param_2") 
VALUES 
('M25_ROLL', '0', '1', 'WAIT', '0', 'SIG_OPEN'),
('M25_ROLL', '1', '2', 'VIDEO', '0', 'IDS_ROLL'),
('M25_ROLL', '2', '3', 'ASSIGN', 'BFRAME', '7'),
('M25_ROLL', '3', '4', 'SHOW', '0', 'IDS_ROLL'),

INSERT INTO "main"."transitions" ("name", "state", "new_state", "opcode", "param_1", "param_2") 
VALUES 
('M25_SCATTER', '0', '10', 'C_ACCEPT', '0', 'IDC_BOMB'),
('M25_SCATTER', '10', '40', 'DROP', '0', '0'),
('M25_SCATTER', '40', '41', 'SET_YOFFSET', 'ADD', '10'),
('M25_SCATTER', '41', '50', 'SET_XOFFSET', 'ADD', '50'),
('M25_SCATTER', '50', '51', 'VIDEO', '0', 'IDS_EXPLODE1'),
('M25_SCATTER', '51', '52', 'PLAYWAVE', '0', 'SOUND_EXPLODE'),
('M25_SCATTER', '52', '53', 'SHOW', '0', 'IDS_SCATTER'),
('M25_SCATTER', '53', '54', 'CLICK', '0', '0'),
('M25_SCATTER', '54', '53', 'LOADVIEW', '0', 'IDV_WALL1EN');