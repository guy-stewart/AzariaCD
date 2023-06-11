delete from games;



delete from "main"."spr_names"  where name = 'IDS_SICKLE';
delete from "main"."spr_names"  where [name] like 'IDS_NYSME%';

INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES 
('IDS_SICKLE', 'sickle', '18700'),
('IDS_NYSMETER', 'NYSMETER', '201');


delete from objects where object ='IDD_SICKLE';
INSERT INTO "main"."objects" ("object", "object_id", "class", "icon", "cursor", "actor") 
VALUES 
('IDD_SICKLE', '18700', 'IDC_NULL', 'sickle', 'sickle', 'sickle');

delete from transitions where [name] like 'M_RECYCLE%';
INSERT INTO "main"."transitions" ("name", "state", "new_state", "opcode", "param_1", "param_2", "code") VALUES 
('M_RECYCLE', '0', '1', 'DROP', '0', '0', ''),
('M_RECYCLE', '1', '0', 'VIDEO', '0', 'IDS_SMBURST', '');


delete from transitions where [name] like 'M_VIAL%';
INSERT INTO "main"."transitions" ("name", "state", "new_state", "opcode", "param_1", "param_2", "code") 
VALUES 
('M_VIAL', '0', '1', 'SHOW', '0', '0', 'MOV(BPARM,LWEALTH);SIGNALi(SIG_SHOW,S1_VIALMETER);'),
('M_VIAL', '1', '2', 'DRAG', '0', 'IDD_SCOOPE', ''),

('M_VIAL', '1', '5', 'DRAG', '0', 'IDD_SCOOPF', ''),

('M_VIAL', '1', '1', 'DROP', '0', 'IDD_SCOOPE', ''),

('M_VIAL', '1', '8', 'DROP', '0', 'IDD_SCOOPF', ''),

('M_VIAL', '1', '1', 'GRAB', '0', 'IDD_SCOOPE', ''),

('M_VIAL', '2', '1', 'EQUALi', 'LWEALTH', '0', ''),

('M_VIAL', '2', '3', 'SUBI', 'LWEALTH', '1', 'MOV(BPARM,LWEALTH);SIGNALi(SIG_SHOW,S1_VIALMETER);'),
('M_VIAL', '3', '4', 'PLAYWAVE', '0', 'SOUND_SLURP', ''),
('M_VIAL', '4', '1', 'HANDOFF', '0', 'IDD_SCOOPF', ''),

('M_VIAL', '5', '6', 'ADDI', 'LWEALTH', '1', 'MOV(BPARM,LWEALTH);SIGNALi(SIG_SHOW,S1_VIALMETER);'),
('M_VIAL', '5', '1', 'GTEi', 'LWEALTH', 'MAX_VIAL_STORAGE', ''),
('M_VIAL', '6', '7', 'PLAYWAVE', '0', 'SOUND_SPIT', ''),
('M_VIAL', '7', '1', 'HANDOFF', '0', 'IDD_SCOOPE', ''),

('M_VIAL', '8', '1', 'ADDI', 'LWEALTH', '1', 'MOV(BPARM,LWEALTH);SIGNALi(SIG_SHOW,S1_VIALMETER);'),
('M_VIAL', '8', '1', 'GTEi', 'LWEALTH', 'MAX_VIAL_STORAGE', '');

delete from machines where [name] like 'S1_VIALM%';

INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") 
VALUES 
('60251', 'S1_VIALMETER', '1', 'IDV_MAIN_PANEL', '200', '7', '212', '63', '3', 'M_VIALMETER', 'SMP_VIAL','IDS_NYSMETER','','');

INSERT INTO "main"."transitions" ("name", "state", "new_state", "opcode", "param_1", "param_2", "code") 
VALUES 
('M_VIALMETER', '0', '0', 'WAIT','0', 'SIG_SHOW', 'REF_MACHINE(WIP1);MOV(WPARM,R_BPARM);MULI(WPARM,2);MOV(WFRAME,WPARM);SHOW(WIP2);');

