
delete from games;

----RESOURCES 


delete from "main"."spr_names"  where [name] like 'IDS_REC_%';

INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES 
('IDS_REC_DRYPIT', 'rec_drypit', '18800'),
('IDS_REC_CAVE1', 'rec_cave1', '18801'),
('IDS_REC_CAVE2', 'rec_cave2', '18802'),
('IDS_REC_EYEOG', 'rec_eyeog', '18803'),
('IDS_REC_HIDNAT', 'rec_hidnat', '18804'),
('IDS_REC_MOONTBL', 'rec_moontbl', '18805'),
('IDS_REC_MOONDSK', 'rec_moondsk', '18806'),
('IDS_REC_EYESPELL', 'rec_eyespell', '18807'),
('IDS_REC_EYEFUSE', 'rec_eyefuse', '18808'),
('IDS_REC_MEMFUSE', 'rec_memfuse', '18809'),
('IDS_REC_MEMSPELL', 'rec_memspell', '18810'),
('IDS_REC_KAMIOZA', 'rec_kamioza', '18811');

delete from "main"."isa"  where [member] like 'IDD_ENCSTONE%';
INSERT INTO "main"."isa" ("class", "member") VALUES ('ISA_ENCHANTEDSTONE', 'IDD_ENCSTONE');



delete from idv where [name] like 'IDV_ENCHANTP%';
delete from views where [view_name] like 'IDV_ENCHANTP%';

INSERT INTO "main"."idv" ("name", "id") VALUES ('IDV_ENCHANTPAN', '8707');
INSERT INTO "main"."views" ("view_id", "view_name", "Z", "backgroundAudio", "locator_view", "behavior_id", "portal_filename", "surface_filename") 
VALUES ('8707', 'IDV_ENCHANTPAN', '1', '0', '1', '1', 'wdepanel.vct', 'PARCHPAN');

delete from machines where name = 'SMP_EYEINFO';
delete from transitions where [automaton] like 'M_EYEINF%';

INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") 
VALUES 
('112', 'SMP_EYEINFO', '1', 'IDV_MAIN_PANEL', '290', '12', '344', '64', '3', 'M_EYEINFO', '', '', '', '');


INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code") 
VALUES 
('M_EYEINFO', '0', '100', 'DROP', '0', '0', 'PLAYWAVE(SOUND_POPUP);ASHOW(WOBJECT);CLEAR(WVIEWID);'),
('M_EYEINFO', '0', '10', 'GRAB', '0', '0', ''),
('M_EYEINFO', '10', '0', 'LOADVIEW', 'WVIEWID', '', 'CLEAR(WVIEWID);SHOW(0);'),

('M_EYEINFO', '100', '120', 'IS_A', 'WOBJECT', 'IDC_SCROLL', 
        'MOV(WPARM,WOBJECT);
        MAPi(WPARM,S12_SCROLL);
        MOV(WVIEWID,LVIEW);
        SIGNALi(SIG_SHOW,S12_SHIELD);
        SIGNALi(SIG_SHOW,S12_WORD);
        SIGNALi(SIG_SHOW,S12_ING1);
        SIGNALi(SIG_SHOW,S12_ING2);
        SIGNALi(SIG_SHOW,S12_ING3);
        SIGNALi(SIG_SHOW,S12_ING4);
        SIGNALi(SIG_SHOW,S12_NYST);
       
       '),
('M_EYEINFO', '100', '130', 'IS_A', 'WOBJECT', 'ISA_ENCHANTEDSTONE', 
        'MOV(WPARM,WOBJECT);
        MOV(WVIEWID,LVIEW);
        
        '),       
('M_EYEINFO', '100', '0', 'Z_EPSILON', '0', '0', ''),

('M_EYEINFO', '120', '0', 'LOADVIEW', '0', 'IDV_SPELLPAN', ''),
('M_EYEINFO', '130', '0', 'LOADVIEW', '0', 'IDV_ENCHANTPAN', '');

delete from transitions where [automaton] like 'M_RECYCLE%';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code") VALUES 
('M_RECYCLE', '0', '1', 'DROP', '0', '0', ''),
('M_RECYCLE', '1', '0', 'VIDEO', '0', 'IDS_SMBURST', '');


delete from machines where name = 'REC_%';
delete from transitions where [automaton] like 'M_RECORD_%';


INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") 
VALUES 

('30001', 'REC_DRYPIT', '8707', 'IDV_ENCHANTPAN', '25', '50', '50', '70', '3', 'M_RECORD_COMPLETE', 'IDS_REC_DRYPIT', '', '', ''),
('30002', 'REC_CAVE2', '8707', 'IDV_ENCHANTPAN', '30', '156', '80', '200', '3', 'M_RECORD_COMPLETE', 'IDS_REC_CAVE2', '', '', ''),
('30003', 'REC_CAVE1', '8707', 'IDV_ENCHANTPAN', '95', '199', '150', '245', '3', 'M_RECORD_COMPLETE', 'IDS_REC_CAVE1', '', '', ''),
('30004', 'REC_EYEOG', '8707', 'IDV_ENCHANTPAN', '204', '202', '250', '300', '3', 'M_RECORD_COMPLETE', 'IDS_REC_EYEOG', '', '', ''),
('30005', 'REC_HIDNAT', '8707', 'IDV_ENCHANTPAN', '388', '216', '440', '260', '3', 'M_RECORD_COMPLETE', 'IDS_REC_HIDNAT', '', '', ''),
('30006', 'REC_MOONTBL', '8707', 'IDV_ENCHANTPAN', '481', '182', '530', '220', '3', 'M_RECORD_COMPLETE', 'IDS_REC_MOONTBL', '', '', ''),
('30007', 'REC_MOONDSK', '8707', 'IDV_ENCHANTPAN', '491', '86', '550', '120', '3', 'M_RECORD_COMPLETE', 'IDS_REC_MOONDSK', '', '', ''),
('30008', 'REC_EYESPELL', '8707', 'IDV_ENCHANTPAN', '350', '30', '400', '60', '3', 'M_RECORD_COMPLETE', 'IDS_REC_EYESPELL', '', '', ''),
('30009', 'REC_EYEFUSE', '8707', 'IDV_ENCHANTPAN', '393', '30', '420', '60', '3', 'M_RECORD_COMPLETE', 'IDS_REC_EYEFUSE', '', '', ''),
('30010', 'REC_MEMFUSE', '8707', 'IDV_ENCHANTPAN', '436', '30', '460', '60', '3', 'M_RECORD_COMPLETE', 'IDS_REC_MEMFUSE', '', '', ''),
('30011', 'REC_MEMSPELL', '8707', 'IDV_ENCHANTPAN', '459', '30', '500', '60', '3', 'M_RECORD_COMPLETE', 'IDS_REC_MEMSPELL', '', '', ''),
('30012', 'REC_KAMIOZA', '8707', 'IDV_ENCHANTPAN', '275', '99', '320', '170', '3', 'M_RECORD_COMPLETE', 'IDS_REC_KAMIOZA', '', '', ''),
--Whenever someone pays a machine we increase the count
('30013', 'REC_NYSTROMPAID', '8707', 'IDV_ENCHANTPAN', '120', '35', '130', '45', '3', 'M_RECORD_COUNTER', '', '', '', ''),
('30014', 'REC_BADKARMA', '8707', 'IDV_ENCHANTPAN', '130', '35', '140', '45', '3', 'M_RECORD_COUNTER', '', '', '', '');

INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code") 
VALUES 
('M_RECORD_COMPLETE', '0', '100', 'WAIT','0', 'SIG_COMPLETE', 'ASSIGN(WSPRITE,WIP1);SHOW(WIP1);'),
('M_RECORD_COMPLETE', '100', '101', 'WAIT','0', 'SIG_RESET', ''),
('M_RECORD_COMPLETE', '101', '0', 'Z_EPSILON','', '', 'CLEAR(WSPRITE);SHOW();'),

('M_RECORD_COUNTER', '0', '0', 'WAIT','0', 'SIG_COUNT', 'ADDi(WPARM,1);');

        -- SIGNALi(SIG_COMPLETE,REC_DRYPIT);
        -- SIGNALi(SIG_COMPLETE,REC_CAVE1);
        -- SIGNALi(SIG_COMPLETE,REC_CAVE2);
        -- SIGNALi(SIG_COMPLETE,REC_EYEOG);
        -- SIGNALi(SIG_COMPLETE,REC_HIDNAT);
        -- SIGNALi(SIG_COMPLETE,REC_MOONTBL);
        -- SIGNALi(SIG_COMPLETE,REC_MOONDSK);
        -- SIGNALi(SIG_COMPLETE,REC_EYESPELL);
        -- SIGNALi(SIG_COMPLETE,REC_EYEFUSE);
        -- SIGNALi(SIG_COMPLETE,REC_MEMFUSE);
        -- SIGNALi(SIG_COMPLETE,REC_MEMSPELL);
        -- SIGNALi(SIG_COMPLETE,REC_KAMIOZA);