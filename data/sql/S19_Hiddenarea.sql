
--sign trigger conditional - SIGNPAN
--continent trigger conditional - when racepan cleared

--hidden items 
-- uncovering racepan
-- scientific diary
delete from "main"."constants" where name = 'IDS_DIARY3_BIN';
INSERT INTO "main"."spr_names" ("name", "value", "id") 
VALUES 
('IDS_DIARY3_BIN', 'DIARY3_BIN', '0');

delete from "main"."idv" where [name] like 'IDV_N1%';
INSERT INTO "main"."idv" ("name", "id") VALUES 
('IDV_N1BPAN1', '60020'),
('IDV_N1CPAN1', '60021');

delete from views where [view_name] like 'IDV_NAT1%';
delete from views where [view_name] like 'IDV_N1%';
INSERT INTO "main"."views" ("view_name", "Z", "backgroundAudio", "locator_view", "behavior_id", "portal_filename", "surface_filename") 
VALUES 
('IDV_NAT1A', '1', '0', '1', '6', 'surround.vct', 'nat1a'),
('IDV_NAT1B', '1', '0', '1', '6', 'surround.vct', 'nat1b'),
('IDV_NAT1C', '1', '0', '1', '6', 'surround.vct', 'nat1c'),
('IDV_NAT1D', '1', '0', '1', '6', 'surround.vct', 'nat1d'),

('IDV_N1BPAN1', '1', '0', '1', '1', 'wdepanel.vct', 'N1BPAN1'),
('IDV_N1CPAN1', '1', '0', '1', '1', 'wdepanel.vct', 'N1CPAN1');



delete from "main"."cardinals"  where [from] like 'IDV_NAT1%';
INSERT INTO "main"."cardinals" ("from", "north", "northeast", "east", "southeast", "south", "southwest", "west", "northwest") VALUES 
 ('IDV_NAT1A', 'IDV_NAT1B', '', '', 'IDV_GRNDCNT1', '', '', '', ''),
 ('IDV_NAT1B', 'IDV_NAT1C', '', '', 'IDV_NAT1A', '', '', 'IDV_N1BPAN1', 'IDV_NAT1C'),
 ('IDV_NAT1C', '', 'IDV_NAT1D', 'IDV_N1CPAN1', '', 'IDV_NAT1B', '', '', ''),
 ('IDV_NAT1D', '', 'IDV_RUBBLECU', '', '', 'IDV_N1CPAN1', 'IDV_NAT1C', '', '');

delete from "main"."panel_nav" where [from] like 'IDV_N1%';
INSERT INTO "main"."panel_nav" ("from", "forward", "back") VALUES 
('IDV_N1BPAN1', '', 'IDV_NAT1B'),
('IDV_N1CPAN1', '', 'IDV_NAT1C');




delete from machines where name = 'S16_SIGNPORTAL';
delete from machines where name = 'S16_SIGNTRANS';
INSERT INTO "main"."machines" ("name", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") 
VALUES 
('S16_SIGNTRANS',  'IDV_SIGNPAN', '99', '108', '219', '222', '0', 'M_SIGNTRANS','', '', '', ''),
('S16_SIGNPORTAL', 'IDV_SIGNPANENG', '99', '108', '219', '222', '0', 'M_PORTAL','IDV_NAT1A', '', '', ''),
('S16_CONTINENTPOINT',  'IDV_CONTINENT', '917', '363', '970', '430', '0', 'M_CONTLOCKED','IDV_NAT1A', '', '', '');




delete from transitions where [automaton] like 'M_SIGNTRANS%';
delete from transitions where [automaton] like 'M_PORTAL%';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code", "guard", "doc")
 VALUES 
('M_SIGNTRANS', '0', 'portalOpen', 'DRAG', '0', 'IDD_EYEWAND', 
'LOADVIEW(IDV_SIGNPANENG);
 ADDI(LWISDOM,2);
 SIGNALi(0,SID_ID);
', '', ''),
('M_SIGNTRANS', 'portalOpen', '0', 'Z_EPSILON', '0', '', '', '', ''),

('M_PORTAL', '0', 'portal', 'CLICK', '', '', '
        LOADVIEW(WIP1, WIP2);
', '', ''),
('M_PORTAL', 'portal', '0','Z_EPSILON', '0', '', '', '', '');


-- The race pan track covered in diggables
delete from machines where [name] like 'S19_COVER%';
delete from machines where [name] like 'S19_DIARY%';
delete from machines where [name] like 'S19_RACEGATE%';
INSERT INTO "main"."machines" ("name", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name","wip3_name",  "wip4_name") 
VALUES  
( 'S19_COVER1', 'IDV_NAT1D', '2636', '200', '2670', '300', '2', 'M_DIG_UNCOVER', '', 'IDS_SANDDIRTGRSDK', 'ISA_TOOL_DIGGER', ''),
( 'S19_COVER2', 'IDV_NAT1D', '2848', '210', '2870', '300', '2', 'M_DIG_UNCOVER', '', 'IDS_SANDDIRTGRSDK', 'ISA_TOOL_DIGGER', ''),
( 'S19_COVER3', 'IDV_NAT1D', '2762', '205', '2800', '300', '2', 'M_DIG_UNCOVER', '', 'IDS_SANDDIRTGRS', 'ISA_TOOL_DIGGER', ''),
--('16206', 'S19_COVERBIG', '8452', 'IDV_NAT1D', '2696', '176', '2861', '300', '2', 'M_DIG_UNCOVER', '', 'IDS_SANDDIRTBIG', 'ISA_TOOL_DIGGER', ''),
('S19_RACEGATE', 'IDV_NAT1D', '2710', '112', '2955', '225', '2', 'M_RACEGATE', 'IDV_RACEPAN', '', '', ''),
('S19_DIARYBIN', 'IDV_RUBBLECU', '149', '226', '181', '247', '2',  'M_PLANTBIN', 'IDD_DIARY3', 'IDS_DIARY3_BIN', '60', ''),
 ('S19_ROOTBIN', 'IDV_NAT1D', '1008', '193', '1058', '240', '1','M_PLANTBIN','IDD_ROOTDBL','IDS_ROOTPLANT','100','');

delete from transitions where [automaton] like 'M_DIG_UNCOVER%';
delete from transitions where [automaton] like 'M_RACEGATE%';
delete from transitions where [automaton] like 'M_CONTLOCKED%';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code", "guard", "doc") VALUES 

('M_DIG_UNCOVER', '0', 'coverActive', 'MOV', 'WSPRITE', 'WIP2', '
        SHOW(WSPRITE);
', '', ''),
('M_DIG_UNCOVER', 'coverActive', 'firstWhack', 'Z_EPSILON', '', '', '', '', ''),
('M_DIG_UNCOVER', 'firstWhack', 'secondWhack', 'DRAG','WIP3', '', '
        if(WIP3 == ISA_TOOL_DIGGER){
            SHOW(0,IDS_SANDPILE1);
            PLAYWAVE(SOUND_DIG);
            ANIMATE();
         }   
', '', ''),
('M_DIG_UNCOVER', 'secondWhack', 'thirdWhack', 'DRAG', '', '', '
        if(WIP3 == ISA_TOOL_DIGGER){
            SHOW(0,IDS_SANDPILE2);
            PLAYWAVE(SOUND_DIG);
            ANIMATE();
         }   
', '', ''),
('M_DIG_UNCOVER', 'thirdWhack', 'moveMe', 'DRAG', '', '', '
        if(WIP3 == ISA_TOOL_DIGGER){
            SHOW(0,IDS_SANDPILE3);
            PLAYWAVE(SOUND_DIG);
            ANIMATE();
         }   
', '', ''),
('M_DIG_UNCOVER', 'moveMe', 'oncovered', 'DRAG', '', '', '', '', ''),
('M_DIG_UNCOVER', 'oncovered', 'done', 'SET_YOFFSET','ADD','50', '
        PLAYWAVE(SOUND_CHIMES);
        SHOW();
', '', ''),


--('M_RACEGATE', '0', 'portal', 'CLICK', '', '', 'LOADVIEW(WIP1);', '', ''),
('M_RACEGATE', '0', '1','CLICK', '0', '', '
    REF_MACHINE(S19_COVER1);
    if( (IFSTATE(done,S19_COVER1)) 
     && ( IFSTATE(done,S19_COVER2)) 
     && ( IFSTATE(done,S19_COVER3)) ){
        LOADVIEW(WIP1);
        SIGNAL(S16_CONTINENTPOINT,SIG_UNLOCK);
     }
', '', ''),
('M_RACEGATE', '1', '0','Z_EPSILON', '0', '', '', '', ''),


('M_CONTLOCKED', '0', 'unlocked','WAIT', '', 'SIG_UNLOCK', '', '', ''),
('M_CONTLOCKED', 'unlocked', 'passthru','CLICK', '', '', '
    LOADVIEW(WIP1);
', '', ''),
('M_CONTLOCKED', 'passthru', 'unlocked','Z_EPSILON', '', '', '', '', ''),
('M_CONTLOCKED', 'unlocked', '0','WAIT', '', 'SIG_LOCK', '', '', '');


--------------------------------------------------------------------------------------------------
-----  Battle Bins - A series of 10 bins that produce items for attack and protection
--*
--*
--*
--*
--------------------------------------------------------------------------------------------------

-- I want to make generic bins that can produce a rotation of items - 1 every 60 seconds

delete from machines where [name] like 'S19_BATTLE%';

INSERT INTO "main"."machines" ("name", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name","wip3_name",  "wip4_name") 
VALUES  
( 'S19_BATTLESWITCH','IDV_NAT1A','2145', '130', '2177','150',   '3', 'M_BATTLESWITCH', 'IDD_BOMB1', 'IDS_BOMBBIN1', '10', ''),
( 'S19_BATTLEBIN1', 'IDV_NAT1A', '391', '146', '440', '196',    '3', 'M_BATTLEBIN',    'IDD_BOMB1', 'IDS_BOMBBIN1', '10', ''),
( 'S19_BATTLEBIN2', 'IDV_NAT1B', '540', '147', '600', '196',    '3', 'M_BATTLEBIN',    'IDD_BOMB1', 'IDS_BOMBBIN1', '10', ''),
( 'S19_BATTLEBIN3', 'IDV_NAT1B', '1988','180', '2040', '230',   '3', 'M_BATTLEBIN',    'IDD_BOMB1', 'IDS_BOMBBIN1', '10', ''),
( 'S19_BATTLEBIN4', 'IDV_NAT1B', '1015', '193','1065','243',    '3', 'M_BATTLEBIN',    'IDD_BOMB1', 'IDS_BOMBBIN1', '30', ''),
( 'S19_BATTLEBIN5', 'IDV_NAT1C', '1252', '124','1304','164',    '3', 'M_BATTLEBIN',    'IDD_BOMB1', 'IDS_BOMBBIN1', '30', ''),
( 'S19_BATTLEBIN6', 'IDV_NAT1C', '2564', '124','2636','168',    '3', 'M_BATTLEBIN',    'IDD_BOMB1', 'IDS_BOMBBIN1', '30', ''),
( 'S19_BATTLEBIN7', 'IDV_NAT1C', '2925', '141','2967','179',    '3', 'M_BATTLEBIN',    'IDD_BOMB1', 'IDS_BOMBBIN1', '30', ''),
( 'S19_BATTLEBIN8', 'IDV_NAT1D', '1350', '149', '1393', '178',  '3', 'M_BATTLEBIN',    'IDD_BOMB1', 'IDS_BOMBBIN1', '60', ''),
( 'S19_BATTLEBIN9', 'IDV_NAT1D', '1620', '231', '1684', '271',  '3', 'M_BATTLEBIN',    'IDD_BOMB1', 'IDS_BOMBBIN1', '60', ''),
( 'S19_BATTLEBIN10','IDV_NAT1D', '689', '59', '738', '109',     '3', 'M_BATTLEBIN',    'IDD_BOMB1', 'IDS_BOMBBIN1', '60', ''),

( 'S19_BATTLEBIN11','IDV_N1BPAN1', '415', '200', '445', '230',     '3', 'M_BATTLEBIN', 'IDD_PROTECT', 'IDS_PROTECTBIN', '60', ''),
( 'S19_BATTLEBIN12','IDV_N1BPAN1', '477', '168', '510', '200',     '3', 'M_BATTLEBIN', 'IDD_PROTECT', 'IDS_PROTECTBIN', '80', ''),
( 'S19_BATTLEBIN13','IDV_N1BPAN1', '574', '113', '605', '143',     '3', 'M_BATTLEBIN', 'IDD_PROTECT', 'IDS_PROTECTBIN', '100', ''),
( 'S19_BATTLEBIN14','IDV_N1CPAN1', '70', '105', '100', '135',      '3', 'M_BATTLEBIN', 'IDD_PROTECT', 'IDS_PROTECTBIN', '60', ''),
( 'S19_BATTLEBIN15','IDV_N1CPAN1', '253', '211', '283', '244',     '3', 'M_BATTLEBIN', 'IDD_PROTECT', 'IDS_PROTECTBIN', '80', ''),
( 'S19_BATTLEBIN16','IDV_N1CPAN1', '505', '72', '535', '102',      '3', 'M_BATTLEBIN', 'IDD_PROTECT', 'IDS_PROTECTBIN', '100', '');




delete from spr_names where [name] like 'IDS_BOMBBIN1%';
delete from spr_names where [name] like 'IDS_PROTECTBIN%';
INSERT INTO "main"."spr_names" ("name", "value") VALUES 
('IDS_BOMBBIN1', 'bombbin1'),
('IDS_PROTECTBIN', 'protectbronze');

delete from transitions where automaton = 'M_BATTLEBIN';
delete from transitions where automaton = 'M_BATTLESWITCH';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code", "guard", "doc") VALUES 
 ('M_BATTLEBIN', '0', '1', 'Z_EPSILON', '', '', '', '', ''),
 ('M_BATTLEBIN', '1', '2', 'WAIT', '', 'SIG_RESET', '
        PLAYWAVE(SOUND_LEVER);
        MOV(WSPRITE,WIP2);
 ', '', ''),
 ('M_BATTLEBIN', '2', '5', 'ASHOW', 'WSPRITE', '', '', '', ''),
 ('M_BATTLEBIN', '5', '10', 'GRAB', 'WIP1', '', '', '', ''),
 ('M_BATTLEBIN', '10', '20', 'SHOW', '0', '0', '', '', ''),
 ('M_BATTLEBIN', '20', '30', 'ESTIME', 'WIP3', '', '', '', ''),
 ('M_BATTLEBIN', '30', '40', 'MOV', 'WSPRITE', 'WIP2', '', '', ''),
 ('M_BATTLEBIN', '40', '5', 'ASHOW', 'WSPRITE', '', '', '', ''),

 ('M_BATTLESWITCH', '0', '0', 'CLICK', '0', '', '
   SIGNAL(S19_BATTLEBIN1,SIG_RESET);
   SIGNAL(S19_BATTLEBIN2,SIG_RESET);
   SIGNAL(S19_BATTLEBIN3,SIG_RESET);
   SIGNAL(S19_BATTLEBIN4,SIG_RESET);
   SIGNAL(S19_BATTLEBIN5,SIG_RESET);
   SIGNAL(S19_BATTLEBIN6,SIG_RESET);
   SIGNAL(S19_BATTLEBIN7,SIG_RESET);
   SIGNAL(S19_BATTLEBIN8,SIG_RESET);
   SIGNAL(S19_BATTLEBIN9,SIG_RESET);
   SIGNAL(S19_BATTLEBIN10,SIG_RESET);
   SIGNAL(S19_BATTLEBIN11,SIG_RESET);
   SIGNAL(S19_BATTLEBIN12,SIG_RESET);
   SIGNAL(S19_BATTLEBIN13,SIG_RESET);
   SIGNAL(S19_BATTLEBIN14,SIG_RESET);
   SIGNAL(S19_BATTLEBIN15,SIG_RESET);
   SIGNAL(S19_BATTLEBIN16,SIG_RESET);','','');