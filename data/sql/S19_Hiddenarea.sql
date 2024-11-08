
--sign trigger conditional - SIGNPAN
--continent trigger conditional - when racepan cleared

--hidden items 
-- uncovering racepan
-- scientific diary
delete from "main"."constants" where name = 'IDS_DIARY3_BIN';
INSERT INTO "main"."spr_names" ("name", "value", "id") 
VALUES 
('IDS_DIARY3_BIN', 'DIARY3_BIN', '0');


delete from views where [view_name] like 'IDV_NAT1%';
INSERT INTO "main"."views" ("view_name", "Z", "backgroundAudio", "locator_view", "behavior_id", "portal_filename", "surface_filename") 
VALUES 
('IDV_NAT1A', '1', '0', '1', '6', 'surround.vct', 'nat1a'),
('IDV_NAT1B', '1', '0', '1', '6', 'surround.vct', 'nat1b'),
('IDV_NAT1C', '1', '0', '1', '6', 'surround.vct', 'nat1c'),
('IDV_NAT1D', '1', '0', '1', '6', 'surround.vct', 'nat1d');


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
('S19_DIARYBIN', 'IDV_RUBBLECU', '149', '226', '181', '247', '2',  'M_PLANTBIN', 'IDD_DIARY3', 'IDS_DIARY3_BIN', '60', '');

 

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
