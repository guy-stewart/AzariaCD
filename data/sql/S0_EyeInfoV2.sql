
delete from games;

delete from "main"."constants" where name = 'IDS_DIARY8_BIN';
INSERT INTO "main"."spr_names" ("name", "value", "id") 
VALUES 
('IDS_DIARY8_BIN', 'DIARY8_BIN', '0');

----RESOURCES 
delete from objects where [object] like 'IDD_DIARY%';
insert into objects values
('IDD_DIARY1','IDC_NULL','DIARY1','DIARY1','DIARY1'),
('IDD_DIARY2','IDC_NULL','DIARY2','DIARY2','DIARY2'),
('IDD_DIARY3','IDC_NULL','DIARY3','DIARY3','DIARY3'),
('IDD_DIARY4','IDC_NULL','DIARY4','DIARY4','DIARY4'),
('IDD_DIARY5','IDC_NULL','DIARY5','DIARY5','DIARY5'),
('IDD_DIARY6','IDC_NULL','DIARY4','DIARY4','DIARY4'),
('IDD_DIARY7','IDC_NULL','DIARY4','DIARY4','DIARY4'),
('IDD_DIARY8','IDC_NULL','DIARY1','DIARY1','DIARY1');

delete from views where [view_name] like 'IDV_PARCHBIG%';
delete from views where [view_name] like 'IDV_PARCHSMALL%';
delete from views where [view_name] like 'IDV_PARCHNYSTROM%';
delete from views where [view_name] like 'IDV_TECHPAN%';
INSERT INTO "main"."views" ("view_name", "Z", "backgroundAudio", "locator_view", "behavior_id", "portal_filename", "surface_filename") 
VALUES 
('IDV_PARCHBIG', '1', '0', '1', '2', 'wdepanel.vct', 'parchbig'),
('IDV_PARCHSMALL', '1', '0', '1', '2', 'wdepanel.vct', 'parchpan'),
('IDV_PARCHNYSTROM', '1', '0', '1', '2', 'wdepanel.vct', 'parchnystrom'),
('IDV_TECHPAN', '1', '0', '1', '2', 'wdepanel.vct', 'techpan1'),
('IDV_TECHPANBIG', '1', '0', '1', '2', 'wdepanel.vct', 'techpanbig'),
('IDV_TECHPANBIGALT', '1', '0', '1', '2', 'wdepanel.vct', 'techpanbig');

delete from spr_names where name = 'IDS_PARCHBIGBK';
delete from spr_names where name = 'IDS_PARCHPANNYBK';
delete from spr_names where name = 'IDS_TECHPANBIGBK';
INSERT INTO "main"."spr_names" ("name", "value", "id") 
VALUES 
('IDS_PARCHBIGBK', 'parchbigbk', '40650'),
('IDS_PARCHPANNYBK', 'parchpanbk', '40652'),
('IDS_TECHPANBIGBK', 'techpanbigbk', '40653');
--can use parchpanbk as control background


delete from controls where id = 'ID_PARCHBIGTXT';
delete from controls where id = 'ID_TECHBIGTXT';
delete from controls where [id] like 'ID_PARCHSMALLTXT%';
delete from controls where id = 'ID_PARCHNYSTROMTXT';
insert into controls values
('IDV_PARCHBIG','ID_PARCHBIGTXT','LABEL','IDS_PARCHBIGBK','',46, 55, 0,'','', 'IDS_FONTTNB16', 0x010101,''),
('IDV_TECHPANBIG','ID_TECHBIGTXT','LABEL','IDS_TECHPANBIGBK','',40, 40, 0,'','', 'IDS_FONTTNB16',0xe2ebb2,''),
('IDV_TECHPANBIGALT','ID_TECHBIGTXT','LABEL','IDS_TECHPANBIGBK','',40, 40, 0,'','', 'IDS_FONTTNB16',0xe2ebb2,''),
('IDV_PARCHSMALL','ID_PARCHSMALLTXT','LABEL','IDS_PARCHPANBK','',40, 20, 0,'','', 'IDS_FONTTNB16', 0x010101,''),
('IDV_PARCHNYSTROM','ID_PARCHNYSTROMTXT','LABEL','IDS_PARCHPANNYBK','',40, 20, 0,'','', 'IDS_FONTTNB16', 0x010101,'');


delete from idv where [name] like 'IDV_SPELLP%';
delete from views where [view_name] like 'IDV_SPELLP%';

INSERT INTO "main"."idv" ("name", "id") VALUES ('IDV_SPELLPAN', '8706');
INSERT INTO "main"."views" ("view_name", "Z", "backgroundAudio", "locator_view", "behavior_id", "portal_filename", "surface_filename") 
VALUES 
('IDV_SPELLPAN', '1', '0', '1', '1', 'wdepanel.vct', 'PARCHPAN');

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


delete from machines where [name] like 'S08_DIARYBIN';
INSERT INTO "main"."machines" ("name","view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name","wip3_name",  "wip4_name") 
VALUES 
('S08_DIARYBIN', 'IDV_EYEB', '2684', '198', '2720', '250', '2',  'M_PLANTBIN', 'IDD_DIARY8', 'IDS_DIARY8_BIN', '60', '');




delete from machines where name = 'REC_%';
delete from transitions where [automaton] like 'M_RECORD_%';
INSERT INTO "main"."machines" ("name", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") 
VALUES 

-- record the completion for the enchanted stone and also stop the quest for the quest manager (wip2 quest number)

('REC_DRYPIT',  'IDV_ENCHANTPAN', '25', '50', '50', '70', '3', 'M_RECORD_COMPLETE', 'IDS_REC_DRYPIT', 'Q2_STOP', '', ''),
('REC_CAVE2',   'IDV_ENCHANTPAN', '30', '156', '80', '200', '3', 'M_RECORD_COMPLETE', 'IDS_REC_CAVE2', 'Q3_STOP', '', ''),
('REC_CAVE1',   'IDV_ENCHANTPAN', '95', '199', '150', '245', '3', 'M_RECORD_COMPLETE', 'IDS_REC_CAVE1', 'Q3_STOP', '', ''),
('REC_EYEOG',   'IDV_ENCHANTPAN', '204', '202', '250', '300', '3', 'M_RECORD_COMPLETE', 'IDS_REC_EYEOG', 'Q4_STOP', '', ''),
('REC_HIDNAT',  'IDV_ENCHANTPAN', '388', '216', '440', '260', '3', 'M_RECORD_COMPLETE', 'IDS_REC_HIDNAT', 'Q5_STOP', '', ''),
('REC_MOONTBL', 'IDV_ENCHANTPAN', '481', '182', '530', '220', '3', 'M_RECORD_COMPLETE', 'IDS_REC_MOONTBL', '', '', ''),
('REC_MOONDSK', 'IDV_ENCHANTPAN', '491', '86', '550', '120', '3', 'M_RECORD_COMPLETE', 'IDS_REC_MOONDSK', 'Q6_STOP', 'Q20_START', ''),
('REC_EYESPELL','IDV_ENCHANTPAN', '350', '30', '400', '60', '3', 'M_RECORD_COMPLETE', 'IDS_REC_EYESPELL', '', '', ''),
('REC_EYEFUSE', 'IDV_ENCHANTPAN', '393', '30', '420', '60', '3', 'M_RECORD_COMPLETE', 'IDS_REC_EYEFUSE', '', '', ''),
('REC_MEMFUSE', 'IDV_ENCHANTPAN', '436', '30', '460', '60', '3', 'M_RECORD_COMPLETE', 'IDS_REC_MEMFUSE', '', '', ''),
('REC_MEMSPELL','IDV_ENCHANTPAN', '459', '30', '500', '60', '3', 'M_RECORD_COMPLETE', 'IDS_REC_MEMSPELL', '', '', ''),
('REC_KAMIOZA', 'IDV_ENCHANTPAN', '275', '99', '320', '170', '3', 'M_RECORD_COMPLETE', 'IDS_REC_KAMIOZA', 'Q20_STOP', '', ''),
--Whenever someone pays a machine we increase the count
('REC_NYSTROMPAID', 'IDV_ENCHANTPAN', '120', '35', '130', '45', '3', 'M_RECORD_COUNTER', '', '', '', ''),
('REC_BADKARMA', 'IDV_ENCHANTPAN', '130', '35', '140', '45', '3', 'M_RECORD_COUNTER', '', '', '', '');


INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code") 
VALUES 
('M_RECORD_COMPLETE', '0', '100', 'WAIT','0', 'SIG_COMPLETE', '
        ASSIGN(WSPRITE,WIP1);
        SHOW(WIP1);
        if(WIP2 != ""){
          WRITE(''Trying to stop QL_MANAGER'');
         SIGNAL(QL_MANAGER,WIP2);
        }
         if(WIP3){
          SIGNAL(QL_MANAGER,WIP3);
        }
'),
('M_RECORD_COMPLETE', '100', '101', 'WAIT','0', 'SIG_RESET', ''),
('M_RECORD_COMPLETE', '101', '0', 'Z_EPSILON','', '', 'CLEAR(WSPRITE);SHOW();'),

('M_RECORD_COUNTER', '0', '0', 'WAIT','0', 'SIG_COUNT', 'ADDi(WPARM,1);');



---CREATE OBJECT CLASSES IF NEEDED

delete from "main"."isa"  where [member] like 'IDD_ENCSTONE%';
delete from isa where [class] like 'ISA_DIARY%';
INSERT INTO "main"."isa" ("class", "member") VALUES ('ISA_ENCHANTEDSTONE', 'IDD_ENCSTONE');
INSERT INTO "main"."isa" ("class", "member") VALUES ('ISA_DIARY', 'IDD_DIARY1');
INSERT INTO "main"."isa" ("class", "member") VALUES ('ISA_DIARY', 'IDD_DIARY2');
INSERT INTO "main"."isa" ("class", "member") VALUES ('ISA_DIARY', 'IDD_DIARY3');
INSERT INTO "main"."isa" ("class", "member") VALUES ('ISA_DIARY', 'IDD_DIARY4');
INSERT INTO "main"."isa" ("class", "member") VALUES ('ISA_DIARY', 'IDD_DIARY5');
INSERT INTO "main"."isa" ("class", "member") VALUES ('ISA_DIARY', 'IDD_DIARY6');
INSERT INTO "main"."isa" ("class", "member") VALUES ('ISA_DIARY', 'IDD_DIARY7');
INSERT INTO "main"."isa" ("class", "member") VALUES ('ISA_DIARY', 'IDD_DIARY8');

delete from idv where [name] like 'IDV_ENCHANTP%';
delete from views where [view_name] like 'IDV_ENCHANTP%';

INSERT INTO "main"."idv" ("name", "id") VALUES ('IDV_ENCHANTPAN', '8707');
INSERT INTO "main"."views" ( "view_name", "Z", "backgroundAudio", "locator_view", "behavior_id", "portal_filename", "surface_filename") 
VALUES ('IDV_ENCHANTPAN', '1', '0', '1', '1', 'wdepanel.vct', 'PARCHPAN');

--------Recycle 

delete from transitions where [automaton] like 'M_RECYCLE%';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code") VALUES 
('M_RECYCLE', '0', '1', 'DROP', '0', '0', ''),
('M_RECYCLE', '1', '0', 'VIDEO', '0', 'IDS_SMBURST', '');


-- Machines for OBJECT Entries

delete from machines where [name] like 'NIRET_DIARY_WAITER';
delete from machines where [name] like 'ETNOC_DIARY_WAITER';
delete from machines where [name] like 'OBJECT_WAITER';
delete from machines where [name] like 'NYSTROM_WAITER';
delete from machines where [name] like 'ORIE_DIARY%';

INSERT INTO "main"."machines" ( "name", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") 
VALUES 
('NIRET_DIARY_WAITER',  'IDV_PARCHBIG', '276', '236', '350', '300', '1','M_GENERAL_WAITER','IDV_PARCHBIG','SIG_DIARY','ID_PARCHBIGTXT',''),
('ETNOC_DIARY_WAITER',  'IDV_TECHPANBIG', '276', '236', '350', '300', '1','M_GENERAL_WAITER','IDV_TECHPANBIG','SIG_DIARY','ID_TECHBIGTXT',''),

('ORIE_DIARY_WAITER',  'IDV_TECHPANBIGALT', '276', '236', '350', '300', '1','M_GENERAL_WAITER','IDV_TECHPANBIGALT','SIG_DIARY','ID_TECHBIGTXT',''),
('ORIE_DIARY_KEYHOLDER',  'IDV_TECHPANBIGALT', '240', '400', '300', '450', '1','M_PLANTBIN','IDD_ORIEKEYSMALL','IDS_ORIEKEY','200',''),


('OBJECT_WAITER',       'IDV_PARCHSMALL', '276', '236', '350', '300', '1','M_GENERAL_WAITER','IDV_PARCHSMALL','SIG_OBJECT','ID_PARCHSMALLTXT',''),
('NYSTROM_WAITER',      'IDV_PARCHNYSTROM', '276', '236', '350', '300', '1','M_GENERAL_WAITER','IDV_PARCHNYSTROM','SIG_NYSTROM','ID_PARCHNYSTROMTXT','');

delete from transitions where automaton =  'M_DIARY_WAITER';
delete from transitions where automaton =  'M_GENERAL_WAITER';
delete from transitions where automaton =  'M_NY_WAITER';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code")
VALUES 

('M_GENERAL_WAITER','0', 'waiting', 'Z_EPSILON', '', '', '
        REF_MACHINE(SMP_EYEINFO);
        CLEAR(WPARM);
'),
----
('M_GENERAL_WAITER', 'waiting', 'showText', 'WAIT', '0', 'WIP2', '
        predicate objectInfo(object,view,control,content);
        objectInfo(R_WPARM,?BPARM,?WPARM, ?WTEMP1);
        LOADVIEW(BPARM);
        SETTEXT(WPARM,WTEMP1);
       
'),
('M_GENERAL_WAITER', 'showText', '0', 'Z_EPSILON', '', '', '
        CLEAR(WTEMP1);
        CLEAR(BPARM);
        CLEAR(WPARM);
');



-----------------------------------------------------------------
------------- DROP ON EYE AND CHECK

delete from transitions where [automaton] like 'M_EYEINF%';


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
        if((WOBJECT == IDD_DIARY1 )){
                 SIGNAL(NIRET_DIARY_WAITER,SIG_DIARY);
                   q_world_active(?TEMP1, "2");
                        if(TEMP1 != " Recover the seed of Azarian unity."){
                                SIGNAL(QL_MANAGER,Q2_START);
                        }
        }
        if((WOBJECT == IDD_DIARY2 )){
                 SIGNAL(ORIE_DIARY_WAITER,SIG_DIARY);
        }
         if((WOBJECT == IDD_DIARY3 )){
                 SIGNAL(ETNOC_DIARY_WAITER,SIG_DIARY);
        }
         if((WOBJECT == IDD_DIARY4 )){
                 SIGNAL(ETNOC_DIARY_WAITER,SIG_DIARY);
        }
         if((WOBJECT == IDD_DIARY5 )){
                  SIGNAL(NIRET_DIARY_WAITER,SIG_DIARY);
                  q_world_active(?TEMP1, "6");
                        if(TEMP1 != " Perform the ritual of the 7 moons."){
                                SIGNAL(QL_MANAGER,Q6_START);
                        }
        }
        if((WOBJECT == IDD_DIARY8 )){
                 SIGNAL(NIRET_DIARY_WAITER,SIG_DIARY);
                   q_world_active(?TEMP1, "4");
                        if(TEMP1 != " Restore the pyramid of the eyes."){
                                SIGNAL(QL_MANAGER,Q4_START);
                        }
        }
        '),           
     

('M_EYEINFO', 'checkObject', '0', 'Z_EPSILON', '', '', '
       
if(IS_A(WOBJECT,IDD_SCOOPE) || IS_A(WOBJECT,IDD_SCOOPF)){
                MOV(WPARM,WOBJECT);
                SIGNAL(NYSTROM_WAITER,SIG_NYSTROM);
                }

       if(IS_A(WOBJECT,IDC_NULL) || IS_A(WOBJECT,IDC_BOMB) || IS_A(WOBJECT,IDC_FISH) || IS_A(WOBJECT,IDC_SPELL) || IS_A(WOBJECT,IDC_BAIT) || IS_A(WOBJECT,IDC_TOKEN)|| IS_A(WOBJECT,ISA_TOOL_DIGGER)|| IS_A(WOBJECT,ISA_TOOL_STRIKER)|| IS_A(WOBJECT,ISA_TOOL_PRYER)){
                MOV(WPARM,WOBJECT);
                SIGNAL(OBJECT_WAITER,SIG_OBJECT);
                }
'),   

('M_EYEINFO', 'checkObject', '0', 'Z_EPSILON', '0', '0', ''),

('M_EYEINFO', 'viewSpell', '0', 'LOADVIEW', '0', 'IDV_SPELLPAN', ''),
('M_EYEINFO', 'viewEnchantment', '0', 'LOADVIEW', '0', 'IDV_ENCHANTPAN', '');





--------------------Database Entries for Object text info display ( diarys and objects ) - now in S0EyeInfoData.sql

