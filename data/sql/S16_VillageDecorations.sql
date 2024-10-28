


delete from spr_names where [name] like 'IDS_CURTAIN%';
delete from spr_names where [name] like 'IDS_POTTERY%';
delete from spr_names where [name] like 'IDS_SPARK%';
insert into spr_names values ('IDS_CURTAIN1','CURT','25060');
insert into spr_names values ('IDS_CURTAINSD','CURTSD','25061');
insert into spr_names values ('IDS_CURTAINUP','CURTUP','25062');
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
insert into spr_names values ('IDS_SPARKLE','SPARK','25201');

delete from sounds where [name] like 'SOUND_CLINK%';
INSERT INTO "main"."sounds" ("name", "value", "id") VALUES ('SOUND_CLINK', 'CLINK', '0');

delete from objects where object = 'IDD_EXPLOA';
delete from objects where object = 'IDD_SPARKLE';
insert into objects values
('IDD_EXPLOA','IDC_NULL','EXPLOA','EXPLOA','EXPLOA'),
('IDD_SPARKLE','IDC_NULL','SPARK','SPARK','SPARK');

delete from objects where [object] like 'IDD_POTTALIS%';
insert into objects values
('IDD_POTTALIS1','IDC_NULL','pottalis1','pottalis1','pottalis1'),
('IDD_POTTALIS2','IDC_NULL','pottalis2','pottalis2','pottalis2'),
('IDD_POTTALIS3','IDC_NULL','pottalis3','pottalis3','pottalis3'),
('IDD_POTTALIS4','IDC_NULL','pottalis4','pottalis4','pottalis4'),
('IDD_POTTALIS5','IDC_NULL','pottalis5','pottalis5','pottalis5'),
('IDD_POTTALIS6','IDC_NULL','pottalis6','pottalis6','pottalis6');


delete from machines where [name] like 'S16_CURT%';
delete from machines where [name] like 'S16_POTT%';
INSERT INTO "main"."machines" ( "name",  "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name","wip3_name",  "wip4_name") 
VALUES  
( 'S16_CURT_1',        'IDV_VIL3',990,141,1077,197, '0','M_ANIBIN','IDS_CURTAIN1','IDD_BAIT1','',''),
( 'S16_CURT_2',        'IDV_VIL2',230,136,330,191, '0','M_ANIBIN','IDS_CURTAIN1','IDD_BAIT1','',''),
( 'S16_CURT_1SD',      'IDV_VIL5',1860,90,1923,199, '0','M_ANIBIN','IDS_CURTAINSD','IDD_BAIT1','',''),
( 'S16_CURT_2UP',      'IDV_VIL3',1088,44,1144,81, '0','M_ANIBIN','IDS_CURTAINUP','IDD_BAIT1','',''),
( 'S16_POTTERY1',      'IDV_VIL3',1148,180,1191,225, '0','M16_POTTERY','IDS_POTTERY1','IDD_POTTALIS1','S16_POTTERYCHECK',''),
( 'S16_POTTERYDROP1',  'IDV_VIL3',1126,125,1191,180, '0','M16_POTTERYDROP','IDS_POTTERY1','IDD_POTTALIS1','S16_POTTERYCHECK',''),
( 'S16_POTTERY2',      'IDV_VIL6',2817,150,2886,227, '0','M16_POTTERY','IDS_POTTERY2','IDD_POTTALIS2','S16_POTTERYCHECK',''),
( 'S16_POTTERYDROP2',  'IDV_VIL6',2817,95,2886,150, '0','M16_POTTERYDROP','IDS_POTTERY2','IDD_POTTALIS2','S16_POTTERYCHECK',''),
( 'S16_POTTERY3',      'IDV_VIL4',986,165,1096,217, '0','M16_POTTERY','IDS_POTTERY3','IDD_POTTALIS3','S16_POTTERYCHECK',''),
( 'S16_POTTERYDROP3',  'IDV_VIL4',980,115,1096,165, '0','M16_POTTERYDROP','IDS_POTTERY3','IDD_POTTALIS3','S16_POTTERYCHECK',''),
( 'S16_POTTERY4',      'IDV_VIL7',38,180,150,237, '0','M16_POTTERY','IDS_POTTERY4','IDD_POTTALIS4','S16_POTTERYCHECK',''),
( 'S16_POTTERYDROP4',  'IDV_VIL7',38,130,150,180, '0','M16_POTTERYDROP','IDS_POTTERY4','IDD_POTTALIS4','S16_POTTERYCHECK',''),
( 'S16_POTTERY5',      'IDV_VIL5',5,170,74,287, '0','M16_POTTERY','IDS_POTTERY5','IDD_POTTALIS5','S16_POTTERYCHECK',''),
( 'S16_POTTERYDROP5',  'IDV_VIL5',5,115,74,170, '0','M16_POTTERYDROP','IDS_POTTERY5','IDD_POTTALIS5','S16_POTTERYCHECK',''),
( 'S16_POTTERY6',      'IDV_VIL2',2900,180,2960,200, '0','M16_POTTERY','IDS_POTTERY6','IDD_POTTALIS6','S16_POTTERYCHECK',''),
( 'S16_POTTERYDROP6',  'IDV_VIL2',2885,130,2960,180, '0','M16_POTTERYDROP','IDS_POTTERY6','IDD_POTTALIS6','S16_POTTERYCHECK',''),
( 'S16_POTTERYCHECK',  'IDV_VIL2',1,1,2,2, '0','M16_POTTERYCHECK','','','','');


delete from transitions where [automaton] like 'M16_POTT%';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code","guard")
VALUES 
--Need to add sparkle above the pottery when filled!
('M16_POTTERY', '0', '1', 'MOV', 'WSPRITE', 'WIP1', 'SHOW(WSPRITE);',''),


('M16_POTTERYDROP', '0', 'waitForDrop', 'Z_EPSILON', '', '', '',''),
('M16_POTTERYDROP', 'waitForDrop', 'containTalisman', 'DROP', 'WIP2', '', '
    ASSIGN(WPARM,1);
    PLAYWAVE(SOUND_CLINK);
    ADDI(LWISDOM,1);
    SIGNALi(0,SID_ID);
    ',''),
('M16_POTTERYDROP', 'containTalisman','showSparkle', 'Z_EPSILON', '', '', '
    SIGNAL(WIP3,SIG_CHECK); 
',''),    
('M16_POTTERYDROP', 'showSparkle','waitForReset', 'ASHOW', '0', 'IDS_SPARKLE', '',''),
('M16_POTTERYDROP', 'waitForReset','waitForDrop', 'WAIT', '0', 'SIG_RESET', 'ASHOW();ASSIGN(WPARM,0);',''),




('M16_POTTERYCHECK', '0', 'validate', 'WAIT', '0', 'SIG_CHECK', '
    ASSIGN(WPARM,0);
    ASSIGN(BPARM,0);
    REF_MACHINE(S16_POTTERYDROP1);
    ADD(WPARM,R_WPARM);
    REF_MACHINE(S16_POTTERYDROP2);
    ADD(WPARM,R_WPARM);
    REF_MACHINE(S16_POTTERYDROP3);
    ADD(WPARM,R_WPARM);
    REF_MACHINE(S16_POTTERYDROP4);
    ADD(WPARM,R_WPARM);
    REF_MACHINE(S16_POTTERYDROP5);
    ADD(WPARM,R_WPARM);
    REF_MACHINE(S16_POTTERYDROP6);
    ADD(WPARM,R_WPARM);
    //Check to see if we have the 6 required talismen
    ',''),
('M16_POTTERYCHECK', 'validate', 'success', 'EQUAL', 'WPARM', '6', '',''),
('M16_POTTERYCHECK', 'validate', '0', 'Z_EPSILON', '', '', '',''),
('M16_POTTERYCHECK', 'success', '0', 'Z_EPSILON', '', '', '
       //If this works we can set BPARM to 1
       //To mean that the spell has been accomplished
       //We can signal Hider which will ref bparm and 
       //point to a new map of spells to hide
        ASSIGN(BPARM,1);
        SIGNAL(S00_HIDER,SIG_OPEN);
        PLAYWAVE(SOUND_CHIMES);
        ADDI(LWISDOM,2);
        SIGNALi(0,SID_ID);
        SIGNAL(S16_POTTERYDROP1,SIG_RESET);
        SIGNAL(S16_POTTERYDROP2,SIG_RESET);
        SIGNAL(S16_POTTERYDROP3,SIG_RESET);
        SIGNAL(S16_POTTERYDROP4,SIG_RESET);
        SIGNAL(S16_POTTERYDROP5,SIG_RESET);
        SIGNAL(S16_POTTERYDROP6,SIG_RESET);    
','');


