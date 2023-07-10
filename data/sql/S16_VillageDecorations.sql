
delete from games;

delete from spr_names where [name] like 'IDS_CURTAIN%';
delete from spr_names where [name] like 'IDS_POTTERY%';
insert into spr_names values ('IDS_CURTAIN1','CURT','25060');
insert into spr_names values ('IDS_CURTAINSD','CURTSD','25061');
insert into spr_names values ('IDS_CURTAINUP','CURTUP','25062');

insert into spr_names values ('IDS_POTTERY1','POT1','25063');
insert into spr_names values ('IDS_POTTERY2','POT2','25064');
insert into spr_names values ('IDS_POTTERY3','POT3','25065');
insert into spr_names values ('IDS_POTTERY4','POT4','25066');
insert into spr_names values ('IDS_POTTERY5','POT5','25067');
insert into spr_names values ('IDS_POTTERY6','POT6','25068');

insert into spr_names values ('IDS_POTTALIS1','POTTALIS1','25070');
insert into spr_names values ('IDS_POTTALIS2','POTTALIS2','25071');
insert into spr_names values ('IDS_POTTALIS3','POTTALIS3','25072');
insert into spr_names values ('IDS_POTTALIS4','POTTALIS4','25073');
insert into spr_names values ('IDS_POTTALIS5','POTTALIS5','25074');
insert into spr_names values ('IDS_POTTALIS6','POTTALIS6','25075');

delete from objects where [object] like 'IDD_POTTALIS%';
insert into objects values
('IDD_POTTALIS1',25070,'IDC_NULL','pottalis1','pottalis1','pottalis1'),
('IDD_POTTALIS2',25071,'IDC_NULL','pottalis2','pottalis2','pottalis2'),
('IDD_POTTALIS3',25072,'IDC_NULL','pottalis3','pottalis3','pottalis3'),
('IDD_POTTALIS4',25073,'IDC_NULL','pottalis4','pottalis4','pottalis4'),
('IDD_POTTALIS5',25074,'IDC_NULL','pottalis5','pottalis5','pottalis5'),
('IDD_POTTALIS6',25075,'IDC_NULL','pottalis6','pottalis6','pottalis6');


delete from machines where [name] like 'S16_CURT%';
delete from machines where [name] like 'S16_POTT%';
INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name","wip3_name",  "wip4_name") 
VALUES  
('16080', 'S16_CURT_1', '4865', 'IDV_VIL3',990,141,1077,197, '0','M_ANIBIN','IDS_CURTAIN1','IDD_BAIT1','',''),
('16081', 'S16_CURT_1SD', '4867', 'IDV_VIL5',1860,90,1923,199, '0','M_ANIBIN','IDS_CURTAINSD','IDD_BAIT1','',''),
('16082', 'S16_CURT_2UP', '4865', 'IDV_VIL3',1088,44,1144,81, '0','M_ANIBIN','IDS_CURTAINUP','IDD_BAIT1','',''),

('16083', 'S16_POTTERY1', '4865', 'IDV_VIL3',1148,172,1191,225, '0','M16_POTTERYDROP','IDS_POTTERY1','IDD_POTTALIS1','S16_POTTERYCHECK',''),
('16084', 'S16_POTTERY2', '4868', 'IDV_VIL6',2817,144,2886,227, '0','M16_POTTERYDROP','IDS_POTTERY2','IDD_POTTALIS2','S16_POTTERYCHECK',''),
('16085', 'S16_POTTERY3', '4866', 'IDV_VIL4',986,157,1096,217, '0','M16_POTTERYDROP','IDS_POTTERY3','IDD_POTTALIS3','S16_POTTERYCHECK',''),
('16086', 'S16_POTTERY4', '4869', 'IDV_VIL7',38,173,150,237, '0','M16_POTTERYDROP','IDS_POTTERY4','IDD_POTTALIS4','S16_POTTERYCHECK',''),
('16087', 'S16_POTTERY5', '4867', 'IDV_VIL5',5,161,74,287, '0','M16_POTTERYDROP','IDS_POTTERY5','IDD_POTTALIS5','S16_POTTERYCHECK',''),
('16088', 'S16_POTTERY6', '4864', 'IDV_VIL2',2870,153,2960,200, '0','M16_POTTERYDROP','IDS_POTTERY6','IDD_POTTALIS6','S16_POTTERYCHECK',''),
('16089', 'S16_POTTERYCHECK', '4864', 'IDV_VIL2',1,1,2,2, '0','M16_POTTERYCHECK','','','','');


delete from transitions where [automaton] like 'M16_POTT%';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code","guard")
VALUES 
--Need to add sparkle above the pottery when filled!
('M16_POTTERYDROP', '0', '1', 'ACCEPT', 'WIP2', '', '',''),
('M16_POTTERYDROP', '1', 'waitForDrop', 'MOV', 'WSPRITE', 'WIP1', 'SHOW(WSPRITE);', ''),
('M16_POTTERYDROP', 'waitForDrop', 'containTalisman', 'DROP', '0', '0', 'ASSIGN(WPARM,1);',''),
('M16_POTTERYDROP', 'containTalisman','checkAllPots', 'SIGNAL', 'WIP3', 'SIG_CHECK', '',''),
('M16_POTTERYDROP', 'containTalisman','waitForDrop', 'WAIT', '0', 'SIG_RESET', '',''),

('M16_POTTERYCHECK', '0', '0', 'WAIT', '0', 'SIG_CHECK', '
    ASSIGN(WPARM,0);
    REF_MACHINE(S16_POTTERY1);
    ADD(WPARM,R_WPARM);
    REF_MACHINE(S16_POTTERY2);
    ADD(WPARM,R_WPARM);
    REF_MACHINE(S16_POTTERY3);
    ADD(WPARM,R_WPARM);
    REF_MACHINE(S16_POTTERY4);
    ADD(WPARM,R_WPARM);
    REF_MACHINE(S16_POTTERY5);
    ADD(WPARM,R_WPARM);
    REF_MACHINE(S16_POTTERY6);
    ADD(WPARM,R_WPARM);
    //Check to see if we have the 6 required talismen
    if(WPARM == 6){
         PLAYWAVE(SOUND_BUZZFUZZ);
         //signal reset to all the potterys and increase everyones health
          SIGNAL(S16_POTTERY1,SIG_RESET);
          SIGNAL(S16_POTTERY2,SIG_RESET);
          SIGNAL(S16_POTTERY3,SIG_RESET);
          SIGNAL(S16_POTTERY4,SIG_RESET);
          SIGNAL(S16_POTTERY5,SIG_RESET);
          SIGNAL(S16_POTTERY6,SIG_RESET);
          }
','');