
delete from games;

------------DRYPIT COMPLETION
delete from machines where name = 'S10_DRYPIT';
delete from machines where name = 'S10_FLOWER';
insert into machines values (0x1000,'S10_DRYPIT',0x1002,'IDV_SCN10PIT',30,205,379,300,0,'M10_DRYPIT','', '', '', '' );
insert into machines values (0x1001,'S10_FLOWER',0x1002,'IDV_SCN10PIT',90,0,273,127,0,'M10_FLOWER','', '', '', '' );

delete from transitions where automaton = 'M10_DRYPIT';
delete from transitions where automaton = 'M10_FLOWER';

insert into transitions ([automaton], [state], [new_state], [opcode], [param_1], [param_2], [code], [guard]) values
('M10_DRYPIT','0','10','Z_EPSILON','','','
    ASSIGN(BFRAME,9);
    MUL(BFRAME,BPARM);
    ASSIGN(WPARM,MAX_DRYPIT);
    DIV(BFRAME,WPARM);
    ASSIGN(WSPRITE,IDS_PITFUL);
    SHOW(WSPRITE);',''),
('M10_DRYPIT','10','21','DRAG','0','IDD_SCOOPE','',''),
('M10_DRYPIT','10','31','DRAG','0','IDD_SCOOPF','',''),
('M10_DRYPIT','10','0','WAIT','','SIG_CLOSE','
    MOV(BPARM,0);
    PLAYWAVE(SOUND_BURBLE);',''),
('M10_DRYPIT','21','25','GTEi','BPARM','1','
    PLAYWAVE(SOUND_SLURP);
    SUBI(BPARM,1);
    HANDOFF(0,IDD_SCOOPF);',''),
('M10_DRYPIT','21','10','Z_EPSILON','0','','',''),
('M10_DRYPIT','25','0','EQUALi','BPARM','MAX_DRYPIT-1','SIGNALi(SIG_CLOSE,S10_FLOWER);',''),
('M10_DRYPIT','25','0','Z_EPSILON','','','',''),
('M10_DRYPIT','31','35','LTEi','BPARM','MAX_DRYPIT-1','
    PLAYWAVE(SOUND_SPIT);
    ADDI(BPARM,1);
    HANDOFF(0,IDD_SCOOPE);',''),
('M10_DRYPIT','31','10','Z_EPSILON','','','',''),
('M10_DRYPIT','35','0','EQUALi','BPARM','MAX_DRYPIT','SIGNALi(SIG_OPEN,S10_FLOWER);',''),
('M10_DRYPIT','35','0','Z_EPSILON','','','',''),

('M10_FLOWER','0','1','SHOW','0','IDS_FLOPN1','',''),
('M10_FLOWER','1','30','WAIT','','SIG_OPEN','
    PLAYWAVE(SOUND_BUZZFUZZ);
    SHOW(0,IDS_FLOPN1);
    ANIMATE();SIGNALi(SIG_COMPLETE,REC_DRYPIT);',''),
('M10_FLOWER','30','1','GRAB','','IDD_SEED','
    PLAYWAVE(SOUND_BUZZFUZZ);
    SHOW(0,IDS_FLOPN1);
    ANIMATE(0,V_REVERSE);
    SIGNALi(SIG_CLOSE,S10_DRYPIT);',''),
('M10_FLOWER','30','1','WAIT','','SIG_CLOSE','
    PLAYWAVE(SOUND_BUZZFUZZ);
    SHOW(0,IDS_FLOPN1);
    ANIMATE(0,V_REVERSE);','');

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


------------EYE OF GOD COMPLETEION

delete from transitions where automaton = 'M24_BIGEYE';
delete from transitions where automaton = 'M_MEMOBJ';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code", "guard") VALUES 
('M24_BIGEYE', '0', '1', 'MOV', 'WSPRITE', 'WIP1', '', ''),
('M24_BIGEYE', '1', '2', 'ASHOW', 'WSPRITE', 'V_LOOP', '', ''),
('M24_BIGEYE', '2', '5', 'ANIMATE', '0', 'V_LOOP', '', ''),
('M24_BIGEYE', '5', '6', 'SIGNAL', 'WIP2', 'SIG_SHOW', '', ''),
('M24_BIGEYE', '6', '7', 'SIGNAL', 'WIP3', 'SIG_SHOW', '', ''),
('M24_BIGEYE', '7', '0', 'CLICK', '', '', '', ''),
('M24_BIGEYE', '7', '10', 'WAIT', '0', '0', '', ''),
('M24_BIGEYE', '10', '50', 'IFSTATEi', '0', 'S24_EYEPLATE1', '', ''),
('M24_BIGEYE', '10', '50', 'IFSTATEi', '0', 'S24_EYEPLATE2', '', ''),
('M24_BIGEYE', '10', '50', 'IFSTATEi', '0', 'S24_EYEPLATE3', '', ''),
('M24_BIGEYE', '10', '50', 'IFSTATEi', '0', 'S24_EYESPELL1', '', ''),
('M24_BIGEYE', '10', '50', 'IFSTATEi', '0', 'S24_EYESPELL3', '', ''),
('M24_BIGEYE', '10', '20', 'Z_EPSILON', '', '', '', ''),
('M24_BIGEYE', '20', '30', 'ASHOW', '0', 'IDS_BIGEYE1', '', ''),
('M24_BIGEYE', '30', '30', 'GRAB', '0', 'IDD_EYEWAND', 'SIGNALi(SIG_COMPLETE,REC_EYEOG);', ''),
('M24_BIGEYE', '30', '50', 'WAIT', '0', 'SIG_BOMB', '', ''),
('M24_BIGEYE', '50', '51', 'SHOW', '0', '0', '', ''),
('M24_BIGEYE', '51', '52', 'SIGNAL', 'WIP2', 'SIG_HIDE', '', ''),
('M24_BIGEYE', '52', '0', 'SIGNAL', 'WIP3', 'SIG_HIDE', '', ''),


------------HIDDEN NATURE AREA DISCOVERY

------------MOON ALTAR TABLE 

('M_MEMOBJ','0','1','O_ACCEPT','WIP1','','',''),
('M_MEMOBJ','1','2','DROP','0','','',''),
('M_MEMOBJ','11','12','SIGNALi','SIG_SHOW','S27_MEMSTONE1','',''),
('M_MEMOBJ','12','13','SIGNALi','SIG_SHOW','S27_MEMSTONE2','',''),
('M_MEMOBJ','13','14','SIGNALi','SIG_SHOW','S27_MEMSTONE3','',''),
('M_MEMOBJ','14','15','SIGNALi','SIG_SHOW','S27_MEMSTONE4','',''),
('M_MEMOBJ','15','16','SIGNALi','SIG_SHOW','S27_MEMSTONE5','',''),
('M_MEMOBJ','16','17','SIGNALi','SIG_SHOW','S27_MEMSTONE6','',''),
('M_MEMOBJ','17','18','SIGNALi','SIG_SHOW','S27_MEMSTONE7','',''),
('M_MEMOBJ','18','20','GRAB','WIP1','','',''),
('M_MEMOBJ','2','3','MOV','WSPRITE','WIP3','',''),
('M_MEMOBJ','20','21','CLEAR','WOBJECT','','',''),
('M_MEMOBJ','21','22','CLEAR','WPARM','','',''),
('M_MEMOBJ','22','23','CLEAR','WSPRITE','','',''),
('M_MEMOBJ','23','30','SHOW','','','',''),
('M_MEMOBJ','3','4','SHOW','WSPRITE','','',''),
('M_MEMOBJ','30','31','SIGNALi','SIG_HIDE','S27_MEMSTONE1','',''),
('M_MEMOBJ','31','32','SIGNALi','SIG_HIDE','S27_MEMSTONE2','',''),
('M_MEMOBJ','32','33','SIGNALi','SIG_HIDE','S27_MEMSTONE3','',''),
('M_MEMOBJ','33','34','SIGNALi','SIG_HIDE','S27_MEMSTONE4','',''),
('M_MEMOBJ','34','35','SIGNALi','SIG_HIDE','S27_MEMSTONE5','',''),
('M_MEMOBJ','35','36','SIGNALi','SIG_HIDE','S27_MEMSTONE6','',''),
('M_MEMOBJ','36','0','SIGNALi','SIG_HIDE','S27_MEMSTONE7','',''),
('M_MEMOBJ','4','5','ASSIGN','BPARM','WIP1','',''),
('M_MEMOBJ','5','11','IFSTATE','18','WIP4','SIGNALi(SIG_COMPLETE,REC_MOONTBL);',''),
('M_MEMOBJ','5','18','Z_EPSILON','','','','');