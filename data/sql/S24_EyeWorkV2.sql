
delete from games;
-- ASSETS:
delete from spr_names where name = 'IDS_EYEPLATEASML';
delete from spr_names where name = 'IDS_EYEPLATEBSML';

delete from spr_names where name = 'IDS_EYESPELLBSML';
delete from spr_names where name = 'IDS_EYESPELLASML';

insert into spr_names values ('IDS_EYEPLATEASML','eyeplateasml',9236);
insert into spr_names values ('IDS_EYEPLATEBSML','eyeplatebsml',9237);
insert into spr_names values ('IDS_EYESPELLBSML','eyespellbsml',9238);
insert into spr_names values ('IDS_EYESPELLASML','eyespellasml',9239);

delete from machines where name = 'S24_EYEPLATE1';
delete from machines where name = 'S24_EYEPLATE2';
delete from machines where name = 'S24_EYEPLATE3';
delete from machines where name = 'S24_EYESPELL1';
delete from machines where name = 'S24_EYESPELL3';

delete from machines where name = 'S24_BIGEYE'; -- OTHERWISE KNOWN AS EYESPELL2
-- this is where they pass in which alternate eyeplate views to signal in WIP1, 2..
INSERT INTO "main"."machines" ( "name", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") 
VALUES 
('S24_EYEPLATE1','IDV_EYEC1P', '200', '28', '260', '63', '0', 'M24_EYEPLATE', 'S24_ALTa_EYEPLATE1', 'S24_ALTb_EYEPLATE1',  '', ''),
('S24_EYEPLATE2','IDV_EYEC1P', '266', '32', '324', '68', '0', 'M24_EYEPLATE', 'S24_ALTa_EYEPLATE2', 'S24_ALTb_EYEPLATE2',  '', ''),
('S24_EYEPLATE3','IDV_EYEC1P', '333', '38', '390', '73', '0', 'M24_EYEPLATE', 'S24_ALTa_EYEPLATE3', 'S24_ALTb_EYEPLATE3',  '', ''),
('S24_EYESPELL1','IDV_EYEC1P', '0', '64', '59', '105', '0', 'M24_EYESPELL', 'S24_ALTa_EYESPELL1', 'S24_ALTb_EYESPELL1', '', ''),
('S24_EYESPELL3','IDV_EYEC1P', '542', '79', '603', '120', '0', 'M24_EYESPELL', 'S24_ALTa_EYESPELL3', 'S24_ALTb_EYESPELL3', '', ''),
('S24_BIGEYE',   'IDV_EYEC1P', '295', '60', '368', '112', '0', 'M24_BIGEYE', 'IDS_BIGEYE1', 'S24_ALTa_EYESPELL2','S24_ALTb_EYESPELL2','');

delete from  "main"."transitions" where automaton = 'M24_EYEPLATE';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2","code") VALUES 
('M24_EYEPLATE', '0', '1', 'DROP', 'IDD_EYEFUSE', '', 'ADDI(LWISDOM,2); SIGNALi(0,SID_ID);'),
('M24_EYEPLATE', '1', '2', 'SIGNALi', '0', 'S24_BIGEYE', ''),
('M24_EYEPLATE', '2', '3', 'Z_EPSILON', '', '', ''),  
('M24_EYEPLATE', '3', '4', 'ASHOW', '0', 'IDS_EYEPLATE', ''),
('M24_EYEPLATE', '4', '5', 'SIGNAL','WIP1', 'SIG_SHOW', ''),
('M24_EYEPLATE', '5', '6', 'SIGNAL', 'WIP2', 'SIG_SHOW', ''),
('M24_EYEPLATE', '6', '50', 'DROP', 'IDC_BOMB', '', 'SUBI(LKARMA,1); SIGNAL(SID_HALO,SIG_ADD);'),
('M24_EYEPLATE', '50', '51', 'VIDEO', '0', 'IDS_EXPLODE1', ''),
('M24_EYEPLATE', '51', '52', 'PLAYWAVE', '0', 'SOUND_EXPLODE', ''),
('M24_EYEPLATE', '52', '53', 'SHOW', '0', '0', ''),
('M24_EYEPLATE', '53', '54', 'SIGNAL', 'WIP1', 'SIG_HIDE', ''),
('M24_EYEPLATE', '54', '55', 'SIGNAL', 'WIP2', 'SIG_HIDE', ''),
('M24_EYEPLATE', '55', '56', 'Z_EPSILON', '', '', ''),    --IDD_EYEFUSE
('M24_EYEPLATE', '56', '0', 'SIGNALi', 'SIG_BOMB', 'S24_BIGEYE', '');

delete from  "main"."transitions" where automaton = 'M24_EYESPELL';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2","code")
VALUES 
('M24_EYESPELL', '0', '1', 'DROP', 'IDD_EYESPELL', '', 'ADDI(LWISDOM,2); SIGNALi(0,SID_ID);'),
('M24_EYESPELL', '1', '2', 'SIGNALi', '0', 'S24_BIGEYE', ''),
('M24_EYESPELL', '2', '3', 'Z_EPSILON', '', '', ''),     --IDC_BOMB
('M24_EYESPELL', '3', '4', 'ASHOW', '0', 'IDS_EYESPELL', ''),
('M24_EYESPELL', '4', '5', 'SIGNAL','WIP1', 'SIG_SHOW', ''),
('M24_EYESPELL', '5', '6', 'SIGNAL', 'WIP2', 'SIG_SHOW', ''),
('M24_EYESPELL', '6', '50', 'DROP', 'IDC_BOMB', '', 'SUBI(LKARMA,1); SIGNAL(SID_HALO,SIG_ADD);'), -- should be 50 but don't think bombing spells works here
('M24_EYESPELL', '50', '51', 'VIDEO', '0', 'IDS_EXPLODE1', ''),
('M24_EYESPELL', '51', '52', 'PLAYWAVE', '0', 'SOUND_EXPLODE', ''),
('M24_EYESPELL', '52', '53', 'SHOW', '0', '0', ''),
('M24_EYESPELL', '53', '54', 'SIGNAL', 'WIP1', 'SIG_HIDE', ''),
('M24_EYESPELL', '54', '55', 'SIGNAL', 'WIP2', 'SIG_HIDE', ''),
('M24_EYESPELL', '55', '56', 'Z_EPSILON', '', '', ''),   --IDD_EYESELL
('M24_EYESPELL', '56', '0', 'SIGNALi', 'SIG_BOMB', 'S24_BIGEYE', '');


INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code") 
VALUES 
('M24_BIGEYE', '0', '1', 'MOV', 'WSPRITE', 'WIP1', ''),
('M24_BIGEYE', '1', '2', 'ASHOW', 'WSPRITE', 'V_LOOP', ''),
('M24_BIGEYE', '2', '5', 'ANIMATE', '0', 'V_LOOP', ''),
('M24_BIGEYE', '5', '6', 'SIGNAL','WIP2', 'SIG_SHOW', ''),
('M24_BIGEYE', '6', '7', 'SIGNAL','WIP3', 'SIG_SHOW', ''),
('M24_BIGEYE', '7', '0', 'CLICK', '', '', ''),
('M24_BIGEYE', '7', '10', 'WAIT', '0', '0', ''),
('M24_BIGEYE', '10', '50', 'IFSTATEi', '0', 'S24_EYEPLATE1', ''),
('M24_BIGEYE', '10', '50', 'IFSTATEi', '0', 'S24_EYEPLATE2', ''),
('M24_BIGEYE', '10', '50', 'IFSTATEi', '0', 'S24_EYEPLATE3', ''),
('M24_BIGEYE', '10', '50', 'IFSTATEi', '0', 'S24_EYESPELL1', ''),
('M24_BIGEYE', '10', '50', 'IFSTATEi', '0', 'S24_EYESPELL3', ''),
('M24_BIGEYE', '10', '20', 'Z_EPSILON', '', '', ''),

('M24_BIGEYE', '20', '30', 'ASHOW', '0', 'IDS_BIGEYE1', ''),
('M24_BIGEYE', '30', '30', 'GRAB', '0', 'IDD_EYEWAND', '
    ADDI(LWISDOM,2);
    SIGNALi(0,SID_ID);
      q_local_active(?BPARM, "5");
            if(BPARM != " Read the signs of the ancients."){
               SIGNAL(QL_MANAGER,Q5_START);
            }
'),
('M24_BIGEYE', '30', '50', 'WAIT', '0', 'SIG_BOMB', ''),
('M24_BIGEYE', '50', '51', 'SHOW', '0', '0', ''),
('M24_BIGEYE', '51', '52', 'SIGNAL','WIP2', 'SIG_HIDE', ''),
('M24_BIGEYE', '52', '0', 'SIGNAL','WIP3', 'SIG_HIDE', '');


--eyea from left to right
delete from machines where name = 'S24_ALTa_EYEPLATE1';
delete from machines where name = 'S24_ALTa_EYEPLATE2';
delete from machines where name = 'S24_ALTa_EYEPLATE3';
--eyeb from left to right
delete from machines where name = 'S24_ALTb_EYEPLATE1';
delete from machines where name = 'S24_ALTb_EYEPLATE2';
delete from machines where name = 'S24_ALTb_EYEPLATE3';

INSERT INTO "main"."machines" ( "name", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") 
VALUES 
('S24_ALTa_EYEPLATE1','IDV_EYEA', '3091', '113', '3093', '115', '0', 'M_STATESCALE', 'IDS_EYEPLATEASML', '', '', ''),
('S24_ALTa_EYEPLATE2','IDV_EYEA', '3114', '113', '3118', '115', '0', 'M_STATESCALE', 'IDS_EYEPLATEASML', '', '', ''),
('S24_ALTa_EYEPLATE3','IDV_EYEA', '3135', '113', '3137', '115', '0', 'M_STATESCALE', 'IDS_EYEPLATEASML', '', '', ''),
('S24_ALTb_EYEPLATE1','IDV_EYEB', '3065', '83', '3070', '85', '0', 'M_STATESCALE', 'IDS_EYEPLATEBSML',  '', '', ''),
('S24_ALTb_EYEPLATE2','IDV_EYEB', '3103', '83', '1565', '85', '0', 'M_STATESCALE', 'IDS_EYEPLATEBSML',  '', '', ''),
('S24_ALTb_EYEPLATE3','IDV_EYEB', '3144', '83', '1565', '85', '0', 'M_STATESCALE', 'IDS_EYEPLATEBSML',  '', '', '');


--eyea from left to right
delete from machines where name = 'S24_ALTa_EYESPELL1';
delete from machines where name = 'S24_ALTa_EYESPELL3';
delete from machines where name = 'S24_ALTb_EYESPELL1';
delete from machines where name = 'S24_ALTb_EYESPELL3';

delete from machines where name = 'S24_ALTa_EYESPELL2';
delete from machines where name = 'S24_ALTb_EYESPELL2';

INSERT INTO "main"."machines" ("name","view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") 
VALUES 
('S24_ALTa_EYESPELL1',   'IDV_EYEA', '3036', '130', '3040', '131', '0', 'M_STATESCALE', 'IDS_EYESPELLASML', '', '', ''),
('S24_ALTb_EYESPELL1',   'IDV_EYEB', '2952', '112', '2955', '115', '0', 'M_STATESCALE', 'IDS_EYESPELLBSML','', '', ''),
('S24_ALTa_EYESPELL3',   'IDV_EYEA', '3170', '130', '3171', '131', '0', 'M_STATESCALE', 'IDS_EYESPELLASML', '', '', ''),
('S24_ALTb_EYESPELL3',   'IDV_EYEB', '11', '112', '14', '115', '0', 'M_STATESCALE', 'IDS_EYESPELLBSML',  '', '', ''),

('S24_ALTa_EYESPELL2',  'IDV_EYEA', '3110', '130', '3110', '131', '0', 'M_STATESCALE', 'IDS_EYESPELLASML', '', '', ''),
('S24_ALTb_EYESPELL2',  'IDV_EYEB', '3090', '112', '3175', '115', '0', 'M_STATESCALE', 'IDS_EYESPELLBSML',  '', '', '');







