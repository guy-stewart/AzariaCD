delete from games;



delete from "main"."spr_names"  where name = 'IDS_SICKLE';
delete from "main"."spr_names"  where [name] like 'IDS_NYSME%';

INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES 
('IDS_SICKLE', 'sickle', '18700'),
('IDS_NYSMETER', 'NYSMETER', '18705');


delete from objects where object ='IDD_SICKLE';
INSERT INTO "main"."objects" ("object", "object_id", "class", "icon", "cursor", "actor") 
VALUES 
('IDD_SICKLE', '18700', 'IDC_NULL', 'sickle', 'sickle', 'sickle');

delete from transitions where [automaton] like 'M_RECYCLE%';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code") VALUES 
('M_RECYCLE', '0', '1', 'DROP', '0', '0', ''),
('M_RECYCLE', '1', '0', 'VIDEO', '0', 'IDS_SMBURST', '');


delete from "main"."isa"  where [class] like 'ISA_NYSTROM%';
INSERT INTO "main"."isa" ("class", "member") VALUES 
('ISA_NYSTROMVIAL', 'IDD_VIAL1'),
('ISA_NYSTROMVIAL', 'IDD_VIAL2'),
('ISA_NYSTROMVIAL', 'IDD_VIAL3');


delete from transitions where [automaton] like 'M_VIAL%';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code") 
VALUES 
('M_VIAL', '0', '1', 'SHOW', '0', '0', ''),
('M_VIAL', '1', '10', 'LTEi', 'WPARM', '20', 'ASSIGN(LWEALTH,10);ASSIGN(WPARM,MAX_VIAL_STORAGE);MOV(BPARM,LWEALTH);SIGNALi(SIG_SHOW,S1_VIALMETER);'), 
('M_VIAL', '1', '2', 'Z_EPSILON', '', '', ''), 
('M_VIAL', '2', '10', 'MOV', 'BPARM', 'LWEALTH', 'SIGNALi(SIG_SHOW,S1_VIALMETER);'), 

('M_VIAL', '10', '12', 'DRAG', '0', 'IDD_SCOOPE', ''),
('M_VIAL', '10', '16', 'DRAG', '0', 'IDD_SCOOPF', 'ADDI(BPARM,1);'), --ADDI(BPARM,1);ADDI HERE COMPENSATES FOR FRAME 0 I THINK

('M_VIAL', '10', '10', 'DROP', '0', 'IDD_SCOOPE', ''),
('M_VIAL', '10', '19', 'DROP', '0', 'IDD_SCOOPF', ''),
('M_VIAL', '10', '40', 'DROP', '0', 'IDD_VIAL1', ''), --+20 = 40
('M_VIAL', '10', '50', 'DROP', '0', 'IDD_VIAL2', ''), --+60 = 80
('M_VIAL', '10', '10', 'GRAB', '0', 'IDD_SCOOPE', ''),

('M_VIAL', '12', '10', 'EQUALi', 'LWEALTH', '0', ''),
('M_VIAL', '12', '13', 'Z_EPSILON', '', '', 'SUBI(LWEALTH,1);MOV(BPARM,LWEALTH);SIGNALi(SIG_SHOW,S1_VIALMETER);'),
('M_VIAL', '13', '14', 'PLAYWAVE', '0', 'SOUND_SLURP', ''),
('M_VIAL', '14', '10', 'HANDOFF', '0', 'IDD_SCOOPF', ''),

('M_VIAL', '16', '10', 'GTE', 'BPARM', 'WPARM', ''), --MAX_VIAL_STORAGE
('M_VIAL', '16', '17', 'Z_EPSILON', '', '', 'ADDI(LWEALTH,1);MOV(BPARM,LWEALTH);SIGNALi(SIG_SHOW,S1_VIALMETER);'),
('M_VIAL', '17', '18', 'PLAYWAVE', '0', 'SOUND_SPIT', ''),
('M_VIAL', '18', '10', 'HANDOFF', '0', 'IDD_SCOOPE', ''),

('M_VIAL', '19', '10', 'GTE', 'BPARM', 'WPARM', ''),
('M_VIAL', '19', '20', 'Z_EPSILON', '', '', ''),
('M_VIAL', '20', '10', 'ADDi', 'LWEALTH', '1', 'MOV(BPARM,LWEALTH);SIGNALi(SIG_SHOW,S1_VIALMETER);'),

('M_VIAL', '40', '0', 'ASSIGN', 'WPARM', '40', ''),
('M_VIAL', '50', '0', 'ASSIGN', 'WPARM', '80', '');




delete from machines where [name] like 'S1_VIALM%';

INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") 
VALUES 
('60251', 'S1_VIALMETER', '1', 'IDV_MAIN_PANEL', '200', '6', '219', '63', '3', 'M_VIALMETER', 'SMP_VIAL','IDS_NYSMETER','','');

INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code") 
VALUES 
('M_VIALMETER', '0', '5', 'WAIT','0', 'SIG_SHOW', 'REF_MACHINE(WIP1);MOV(BPARM,R_BPARM);MOV(WPARM,R_WPARM);'), -- BPARM = wealth WPARM = max

('M_VIALMETER', '5', '10', 'EQUALi','R_WPARM', '20', 'MULI(BPARM,2);MOV(BFRAME,BPARM);SHOW(WIP2);'),
('M_VIALMETER', '5', '20', 'EQUALi','R_WPARM', '40', 'ASSIGN(WSPRITE,WIP2);MOV(BFRAME,BPARM);SHOW(WIP2);'),
('M_VIALMETER', '5', '30', 'EQUALi','R_WPARM', '80', 'DIVI(BPARM,2);MOV(BFRAME,BPARM);SHOW(WIP2);'),
('M_VIALMETER', '5', '0', 'Z_EPSILON','', '', ''),

('M_VIALMETER', '10', '0', 'Z_EPSILON','', '', ''),
('M_VIALMETER', '20', '0', 'Z_EPSILON','', '', ''),
('M_VIALMETER', '30', '0', 'Z_EPSILON','', '', '');



--('M_VIALMETER', '0', '0', 'WAIT','0', 'SIG_SHOW', 'REF_MACHINE(WIP1);MOV(WPARM,R_BPARM);MULi(WPARM,2);MOV(BFRAME,WPARM);SHOW(WIP2);');