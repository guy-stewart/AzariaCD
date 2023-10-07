
delete from games;

----RESOURCES 

delete from views where [view_name] like 'IDV_PARCHBIG%';
delete from views where [view_name] like 'IDV_PARCHSMALL%';
delete from views where [view_name] like 'IDV_PARCHNYSTROM%';
INSERT INTO "main"."views" ("view_id", "view_name", "Z", "backgroundAudio", "locator_view", "behavior_id", "portal_filename", "surface_filename") 
VALUES 
('8710', 'IDV_PARCHBIG', '1', '0', '1', '2', 'wdepanel.vct', 'parchbig'),
('8711', 'IDV_PARCHSMALL', '1', '0', '1', '2', 'wdepanel.vct', 'parchpan'),
('8712', 'IDV_PARCHNYSTROM', '1', '0', '1', '2', 'wdepanel.vct', 'parchnystrom');

delete from spr_names where name = 'IDS_PARCHBIGBK';
INSERT INTO "main"."spr_names" ("name", "value", "id") 
VALUES 
('IDS_PARCHBIGBK', 'parchbigbk', '40650');
--can use parchpanbk as control background


delete from controls where id = 'ID_PARCHBIGTXT';
delete from controls where id = 'ID_PARCHSMALLTXT';
delete from controls where id = 'ID_PARCHNYSTROM';
insert into controls values
('IDV_PARCHBIG','ID_PARCHBIGTXT','LABEL','IDS_PARCHBIGBK','',46, 55, 0,'','', 'IDS_FONTTNB16', 0x010101,''),
('IDV_PARCHSMALL','ID_PARCHSMALLTXT','LABEL','IDS_PARCHPANBK','',40, 20, 0,'','', 'IDS_FONTTNB16', 0x010101,''),
('IDV_PARCHNYSTROM','ID_PARCHNYSTROM','LABEL','IDS_PARCHPANBK','',40, 20, 0,'','', 'IDS_FONTTNB16', 0x010101,'');


delete from idv where [name] like 'IDV_SPELLP%';
delete from views where [view_name] like 'IDV_SPELLP%';

INSERT INTO "main"."idv" ("name", "id") VALUES ('IDV_SPELLPAN', '8706');
INSERT INTO "main"."views" ("view_id", "view_name", "Z", "backgroundAudio", "locator_view", "behavior_id", "portal_filename", "surface_filename") 
VALUES 
('8706', 'IDV_SPELLPAN', '1', '0', '1', '1', 'wdepanel.vct', 'PARCHPAN');

--This is a progress recorder that shows players what they've accomplished
-- when then drop the enchanted stone on their eyes

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



---CREATE OBJECT CLASSES IF NEEDED

delete from "main"."isa"  where [member] like 'IDD_ENCSTONE%';
delete from isa where [class] like 'ISA_DIARY_%';
INSERT INTO "main"."isa" ("class", "member") VALUES ('ISA_ENCHANTEDSTONE', 'IDD_ENCSTONE');
INSERT INTO "main"."isa" ("class", "member") VALUES ('ISA_DIARY', 'IDD_DIARY1');



delete from idv where [name] like 'IDV_ENCHANTP%';
delete from views where [view_name] like 'IDV_ENCHANTP%';

INSERT INTO "main"."idv" ("name", "id") VALUES ('IDV_ENCHANTPAN', '8707');
INSERT INTO "main"."views" ("view_id", "view_name", "Z", "backgroundAudio", "locator_view", "behavior_id", "portal_filename", "surface_filename") 
VALUES ('8707', 'IDV_ENCHANTPAN', '1', '0', '1', '1', 'wdepanel.vct', 'PARCHPAN');

--------Recycle 

delete from transitions where [automaton] like 'M_RECYCLE%';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code") VALUES 
('M_RECYCLE', '0', '1', 'DROP', '0', '0', ''),
('M_RECYCLE', '1', '0', 'VIDEO', '0', 'IDS_SMBURST', '');


-- Machines for OBJECT Entries

delete from machines where name = 'NIRET_DIARY_WAITER';
INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") 
VALUES 
('15570', 'NIRET_DIARY_WAITER', '8710', 'IDV_PARCHBIG', '276', '236', '350', '300', '1','M_GENERAL_WAITER','IDV_PARCHBIG','SIG_DIARY','ID_PARCHBIGTXT',''),
('15571', 'OBJECT_WAITER', '8710', 'IDV_PARCHSMALL', '276', '236', '350', '300', '1','M_GENERAL_WAITER','IDV_PARCHSMALL','SIG_OBJECT','ID_PARCHSMALLTXT','');



delete from transitions where automaton =  'M_DIARY_WAITER';
delete from transitions where automaton =  'M_GENERAL_WAITER';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code")
VALUES 

('M_GENERAL_WAITER','0', 'waiting', 'Z_EPSILON', '', '', '
        REF_MACHINE(SMP_EYEINFO);
        CLEAR(WPARM);
'),
----
('M_GENERAL_WAITER', 'waiting', 'showDiary', 'WAIT', '0', 'WIP2', '
        predicate objectInfo(object,control,content);
        objectInfo(R_WPARM,?BPARM,?WPARM);
        LOADVIEW(WIP1);
        SETTEXT(WIP3,WPARM);
       
'),
('M_GENERAL_WAITER', 'showDiary', '0', 'Z_EPSILON', '', '', '');

-----------------------------------------------------------------
------------- DROP ON EYE AND CHECK
delete from machines where name = 'SMP_EYEINFO';
delete from transitions where [automaton] like 'M_EYEINF%';

INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") 
VALUES 
('112', 'SMP_EYEINFO', '1', 'IDV_MAIN_PANEL', '290', '12', '344', '64', '3', 'M_EYEINFO', '', '', '', '');


INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code") 
VALUES 
('M_EYEINFO', '0', 'checkObject', 'DROP', '0', '0', '
PLAYWAVE(SOUND_POPUP);ASHOW(WOBJECT);
MOV(BPARM,LVIEW);
'),
('M_EYEINFO', '0', 'replacedView', 'GRAB', '0', '0', '
      SHOW(0);
'),
('M_EYEINFO', 'replacedView', '0', 'Z_EPSILON', '0', '0', '
        LOADVIEW(BPARM);
'),

('M_EYEINFO', 'checkObject', 'viewSpell', 'IS_A', 'WOBJECT', 'IDC_SCROLL', 
       'MOV(WPARM,WOBJECT);
        MAPi(WPARM,S12_SCROLL);
        SIGNALi(SIG_SHOW,S12_SHIELD);
        SIGNALi(SIG_SHOW,S12_WORD);
        SIGNALi(SIG_SHOW,S12_ING1);
        SIGNALi(SIG_SHOW,S12_ING2);
        SIGNALi(SIG_SHOW,S12_ING3);
        SIGNALi(SIG_SHOW,S12_ING4);
        SIGNALi(SIG_SHOW,S12_NYST);
       
       '),
('M_EYEINFO', 'checkObject', 'viewEnchantment', 'IS_A', 'WOBJECT', 'ISA_ENCHANTEDSTONE', 
        'MOV(WPARM,WOBJECT);      
        '), 
('M_EYEINFO', 'checkObject', '0', 'IS_A', 'WOBJECT', 'ISA_DIARY', 
        'MOV(WPARM,WOBJECT);
        if((WOBJECT == IDD_DIARY1 )|| (WOBJECT == IDD_DIARY2)){
                 SIGNAL(NIRET_DIARY_WAITER,SIG_DIARY);
        }
        '),           
     

('M_EYEINFO', 'checkObject', '0', 'Z_EPSILON', '', '', '
       
       if(IS_A(WOBJECT,IDC_NULL) || IS_A(WOBJECT,IDC_BOMB) || IS_A(WOBJECT,IDC_FISH) || IS_A(WOBJECT,IDC_SPELL) || IS_A(WOBJECT,IDC_BAIT)){
                MOV(WPARM,WOBJECT);
                SIGNAL(OBJECT_WAITER,SIG_OBJECT);
                }
'),   

('M_EYEINFO', 'checkObject', '0', 'Z_EPSILON', '0', '0', ''),

('M_EYEINFO', 'viewSpell', '0', 'LOADVIEW', '0', 'IDV_SPELLPAN', ''),
('M_EYEINFO', 'viewEnchantment', '0', 'LOADVIEW', '0', 'IDV_ENCHANTPAN', '');





--------------------Database Entries for Object text info display ( diarys and objects )



--drop table if exists objectInfo;

-- 'id' is used by the card index cartridge on the card disbursement machine in the city.
-- create table objectInfo (object text, control text, content text);
-- insert into objectInfo values
-- ( 'IDD_DIARY1', 'ID_PARCHBIGTXT' ,'
--         I leave this here in case something happens
--         46 Zan, 192978
        
--         I Onam, archiologist of Niret 
--         have  found the sacred map of our forefathers
--         that grants power over the sky.
        
--         Although their language still comfounds me!

--         Now, I shall continue the quest, spurred on 
--         by our great discovery of a promise written in stone.
--         I speak, of cours, of the stone rubbing unearthed 
--         outside of Etnoc - that hideous city of great 
--         sadness and tragedy.

--         It is the Niret way of spirit that makes us so 
--         much better than those of Etnoc.

--         ....to take the seed of Azaria and plant it
--          on the altar of seven moons.
        
--         I imagine the seed as some relic that existed 
--         before the rains... I must find it! Something that
--         contains this seed.

--         I shall now see for myself and fill my spirit with joy - 
--         Searching for some seed to plant on some altar!'),

-- ( 'IDD_DIARY2', 'IDV_PARCHBIG' ,'Placeholder1'),
-- ( 'IDD_DIARY3', 'IDV_PARCHBIG' ,'Placeholder2'),
-- ( 'IDD_DIARY4', 'IDV_PARCHBIG' ,'Placeholder3'),
-- ( 'IDD_BLOBBALL', 'IDV_PARCHSMALL' ,'

--        The object of Blob ball is to get rid of all your balls first.
--        Pick a side and roll a die. place your ball in the number
--        corresponding to the number rolled.  If you roll a six, that is 
--        great because your ball gets sucked away. 
       
--        At any point, you can pass your turn to the other player 
--        If you roll a number which already has a ball in it, 
--        you take it and the other player takes over.
-- '),
-- ( 'IDD_EMERALD', 'IDV_PARCHSMALL' ,'
--        The Emerald of Light! 
--        Rathe will be ecstatic.
-- '),
-- ( 'IDD_RUBY', 'IDV_PARCHSMALL' ,'
--         This is a Ruby. It may have some
--         value to somebody. It may not.
-- ');













