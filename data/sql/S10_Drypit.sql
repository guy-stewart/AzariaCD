delete from games;

-- The original files for edits were m10_drypit_SEED.sql and m10_drypit.sql
delete from "main"."machines" where [name] like 'S10_DRYPIT';
delete from "main"."machines" where [name] like 'S10_FLOWER';
INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") 
VALUES 
('4096', 'S10_DRYPIT', '4098', 'IDV_SCN10PIT', '30', '205', '379', '260', '0', 'M10_DRYPIT', '', '', '', ''),
('4097', 'S10_FLOWER', '4098', 'IDV_SCN10PIT', '90', '0', '273', '127', '0', 'M10_FLOWER', '', '', '', '');


delete from transitions where automaton = 'M10_DRYPIT';
delete from transitions where automaton = 'M10_FLOWER';

INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code", "guard", "doc") VALUES 
('M10_DRYPIT', '0', '10', 'Z_EPSILON', '', '', '
    ASSIGN(BFRAME,9);
    MUL(BFRAME,BPARM);
    ASSIGN(WPARM,MAX_DRYPIT);
    DIV(BFRAME,WPARM);
    ASSIGN(WSPRITE,IDS_PITFUL);
    SHOW(WSPRITE);', '', ''),
 ('M10_DRYPIT', '10', '21', 'DRAG', '0', 'IDD_SCOOPE', '', '', ''),
 ('M10_DRYPIT', '10', '31', 'DRAG', '0', 'IDD_SCOOPF', '', '', ''),
 ('M10_DRYPIT', '10', '0', 'WAIT', '', 'SIG_CLOSE', '
    MOV(BPARM,0);
    PLAYWAVE(SOUND_BURBLE);', '', ''),
('M10_DRYPIT', '21', '25', 'GTEi', 'BPARM', '1', '
    PLAYWAVE(SOUND_SLURP);
    SUBI(BPARM,1);
    HANDOFF(0,IDD_SCOOPF);
    ADDI(LKARMA,1);
    SIGNAL(SID_HALO,SIG_ADD);', '', ''),
('M10_DRYPIT', '21', '10', 'Z_EPSILON', '0', '', '', '', ''),
('M10_DRYPIT', '25', '0', 'EQUALi', 'BPARM', 'MAX_DRYPIT-1', 'SIGNALi(SIG_CLOSE,S10_FLOWER);', '', ''),
('M10_DRYPIT', '25', '0', 'Z_EPSILON', '', '', '', '', ''),
('M10_DRYPIT', '31', '35', 'LTEi', 'BPARM', 'MAX_DRYPIT-1', '
    PLAYWAVE(SOUND_SPIT);
    ADDI(BPARM,1);
    HANDOFF(0,IDD_SCOOPE);', '', ''),
('M10_DRYPIT', '31', '10', 'Z_EPSILON', '', '', '', '', ''),
('M10_DRYPIT', '35', '0', 'EQUALi', 'BPARM', 'MAX_DRYPIT', 'SIGNALi(SIG_OPEN,S10_FLOWER);ADDI(LWISDOM,2); SIGNALi(0,SID_ID);', '', ''),
('M10_DRYPIT', '35', '0', 'Z_EPSILON', '', '', '', '', ''),


('M10_FLOWER', '0', '1', 'SHOW', '0', 'IDS_FLOPN1', '', '', ''),
('M10_FLOWER', '1', '30', 'WAIT', '', 'SIG_OPEN', '
    PLAYWAVE(SOUND_BUZZFUZZ);
    SHOW(0,IDS_FLOPN1);
    ANIMATE();
    SIGNALi(SIG_COMPLETE,REC_DRYPIT);', '', ''),
('M10_FLOWER', '30', '1', 'GRAB', '', 'IDD_SEED', '
    PLAYWAVE(SOUND_BUZZFUZZ);
    SHOW(0,IDS_FLOPN1);
    ANIMATE(0,V_REVERSE);
    ADDI(LWISDOM,5); SIGNALi(0,SID_ID);
    SIGNALi(SIG_CLOSE,S10_DRYPIT);', '', ''),
('M10_FLOWER', '30', '1', 'WAIT', '', 'SIG_CLOSE', '
    PLAYWAVE(SOUND_BUZZFUZZ);
    SHOW(0,IDS_FLOPN1);
    ANIMATE(0,V_REVERSE);', '', '');