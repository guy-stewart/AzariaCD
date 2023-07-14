
delete from games;

--for testing we're going to make the sanddirts objects
delete from objects where [object] like 'IDD_SANDDIRT%';
delete from objects where [object] like 'IDD_SANDROCK%';
insert into objects values
('IDD_SANDDIRT',40001,'IDC_NULL','sanddirt','sanddirt','sanddirt'),
('IDD_SANDDIRT2',40002,'IDC_NULL','sanddirt2','sanddirt2','sanddirt2'),
('IDD_SANDDIRT3',40003,'IDC_NULL','sanddirt3','sanddirt3','sanddirt3'),
('IDD_SANDDIRTGRS',40004,'IDC_NULL','sanddirtgrs','sanddirtgrs','sanddirtgrs'),
('IDD_SANDDIRTMOON',40005,'IDC_NULL','sanddirtMoon','sanddirtMoon','sanddirtMoon'),
('IDD_SANDDIRTGRSDK',40006,'IDC_NULL','sanddirtgrsdk','sanddirtgrsdk','sanddirtgrsdk'),

('IDD_SANDROCK1',40007,'IDC_NULL','sandrock1','sandrock1','sandrock1'),
('IDD_SANDROCK2',40008,'IDC_NULL','sandrock2','sandrock2','sandrock2'),
('IDD_SANDROCK3',40009,'IDC_NULL','sandrock3','sandrock3','sandrock3');

delete from sounds where [name] like 'SOUND_DIG%';
delete from sounds where [name] like 'SOUND_CHIMES%';
delete from sounds where [name] like 'SOUND_GROAN%';
delete from sounds where [name] like 'SOUND_THUMP%';
INSERT INTO "main"."sounds" ("name", "value", "id") VALUES ('SOUND_DIG', 'dig', '0');
INSERT INTO "main"."sounds" ("name", "value", "id") VALUES ('SOUND_CHIMES', 'chimes', '0');
INSERT INTO "main"."sounds" ("name", "value", "id") VALUES ('SOUND_THUMP', 'THUMP', '0');

delete from spr_names where [name] like 'IDS_SANDDIRTGRS%';
delete from spr_names where [name] like 'IDS_SAND%';

insert into spr_names values ('IDS_SANDDIRTGRS','sanddirtgrs','40004');
insert into spr_names values ('IDS_SANDDIRTGRSDK','sanddirtgrsdk','40006');
insert into spr_names values ('IDS_SANDROCK1','sandrock1','40007');
insert into spr_names values ('IDS_SANDROCK2','sandrock2','40008');
insert into spr_names values ('IDS_SANDROCK3','sandrock3','40009');
insert into spr_names values ('IDS_SANDWALL1','sandwall1','40010');
insert into spr_names values ('IDS_SANDWALL2','sandwall2','40011');
insert into spr_names values ('IDS_SANDWALL3','sandwall3','40012');
insert into spr_names values ('IDS_SANDPILE1','dig1','40013');
insert into spr_names values ('IDS_SANDPILE2','dig2','40014');
insert into spr_names values ('IDS_SANDPILE3','dig3','40015');
insert into spr_names values ('IDS_SANDSTRIKE','strike','40016');
insert into spr_names values ('IDS_SANDWOBBLE','wobble','40017');
insert into spr_names values ('IDS_SANDFLIP','flip','40018');

delete from map where op like 'S00_HID%';

INSERT INTO "main"."map" ("op", "key", "value")
VALUES 
--identify hidden items
('S00_HIDDENITEM', '1', 'IDD_POTTALIS1'), 
('S00_HIDDENITEM', '2', 'IDD_POTTALIS2'),
('S00_HIDDENITEM', '3', 'IDD_POTTALIS3'),
('S00_HIDDENITEM', '4', 'IDD_POTTALIS4'),
('S00_HIDDENITEM', '5', 'IDD_POTTALIS5'),
('S00_HIDDENITEM', '6', 'IDD_POTTALIS6'),
('S00_HIDDENITEM', '7', 'IDD_ENCSTONE'),
('S00_HIDDENITEM', '8', 'IDD_AMULET'),
('S00_HIDDENITEM', '9', 'IDD_RUBY'),
('S00_HIDDENITEM', '10', 'IDD_FISHASH9'),

('S00_HIDINGPLACE', '1', 'S00_HIDDEN_1'), 
('S00_HIDINGPLACE', '2', 'S00_HIDDEN_2'),
('S00_HIDINGPLACE', '3', 'S00_HIDDEN_3'),
('S00_HIDINGPLACE', '4', 'S00_HIDDEN_4'),
('S00_HIDINGPLACE', '5', 'S00_HIDDEN_5'),
('S00_HIDINGPLACE', '6', 'S00_HIDDEN_6'),
('S00_HIDINGPLACE', '7', 'S00_HIDDEN_7'),
('S00_HIDINGPLACE', '8', 'S00_HIDDEN_8'),
('S00_HIDINGPLACE', '9', 'S00_HIDDEN_9'),
('S00_HIDINGPLACE', '10', 'S00_HIDDEN_10'),
('S00_HIDINGPLACE', '11', 'S00_HIDDEN_11'),
('S00_HIDINGPLACE', '12', 'S00_HIDDEN_12'),
('S00_HIDINGPLACE', '13', 'S00_HIDDEN_13'),
('S00_HIDINGPLACE', '14', 'S00_HIDDEN_14'),
('S00_HIDINGPLACE', '15', 'S00_HIDDEN_15'),
('S00_HIDINGPLACE', '16', 'S00_HIDDEN_16'),
('S00_HIDINGPLACE', '17', 'S00_HIDDEN_17'),
('S00_HIDINGPLACE', '18', 'S00_HIDDEN_18'),
('S00_HIDINGPLACE', '19', 'S00_HIDDEN_19'),
('S00_HIDINGPLACE', '20', 'S00_HIDDEN_20'),
('S00_HIDINGPLACE', '21', 'S00_HIDDEN_21'),
('S00_HIDINGPLACE', '22', 'S00_HIDDEN_22');

delete from isa where [class] like 'ISA_TOOL_%';
INSERT INTO "main"."isa" ("class", "member")
VALUES 
('ISA_TOOL_DIGGER', 'IDD_SHOVEL'),
('ISA_TOOL_STRIKER', 'IDD_PICK'),
('ISA_TOOL_PRYER', 'IDD_CROWBAR');

delete from objects where object = 'IDD_SHOVEL';
delete from objects where object = 'IDD_PICK';
delete from objects where object = 'IDD_CROWBAR';
INSERT INTO "main"."objects" ("object", "object_id", "class", "icon", "cursor", "actor") VALUES
('IDD_SHOVEL', '4469', 'ISA_TOOL_DIGGER', 'shovelb', 'shovelb', 'shovelb'),
('IDD_PICK', '4463', 'ISA_TOOL_STRIKER', 'PICK', 'PICK', 'PICK'),
('IDD_CROWBAR', '9488', 'ISA_TOOL_PRYER', 'Crowbar', 'Crowbar', 'Crowbar');

--some new panel views
delete from idv where [name] like 'IDV_CU_%';
delete from views where [view_name] like 'IDV_CU_%';
INSERT INTO "main"."idv" ("name", "id") VALUES ('IDV_CU_GRASSPATCH1', '40001');
INSERT INTO "main"."idv" ("name", "id") VALUES ('IDV_CU_DIRTPATCH1', '40002');
INSERT INTO "main"."idv" ("name", "id") VALUES ('IDV_CU_DIRTPATCH2', '40003');

INSERT INTO "main"."views" ("view_id", "view_name", "Z", "backgroundAudio", "locator_view", "behavior_id", "portal_filename", "surface_filename") VALUES 
('40001', 'IDV_CU_GRASSPATCH1', '1', '3', '1', '1', 'smlpanel.vct', 'grasspatchcu'),
('40002', 'IDV_CU_DIRTPATCH1', '1', '3', '1', '1', 'smlpanel.vct', 'sanddirtcu'),
('40003', 'IDV_CU_DIRTPATCH2', '1', '3', '1', '1', 'smlpanel.vct', 'sanddirtcu2');


--clean up false start - rename and keep coordinates
delete from machines where [name] like 'S30_PATHDIG%';
delete from machines where [name] like 'S31_MOONDIG%';
delete from machines where [name] like 'S04_CITYDIG%';
delete from machines where [name] like 'S25_SANDDIG%';


delete from machines where [name] like 'S00_HIDDEN%';
delete from machines where [name] like 'S00_HIDE%';
INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name","wip3_name",  "wip4_name") 
VALUES  
('40000', 'S00_HIDER', '4392', 'IDV_PATH2', '1', '1', '2', '1', '2', 'M_HIDER', '10', '22', '', ''),
--Digging - Striking - Plying
('40001', 'S00_HIDDEN_1', '4392', 'IDV_PATH2', '2348', '179', '2425', '230', '2', 'M_DIGGABLE', 'IDV_CU_GRASSPATCH1', 'IDS_SANDDIRTGRS', 'ISA_TOOL_DIGGER', ''),
('40002', 'S00_HIDDEN_2', '4703', 'IDV_MOON3', '2599', '174', '2675', '225', '2', 'M_DIGGABLE', 'IDV_CU_GRASSPATCH1', 'IDS_SANDDIRTMOON', 'ISA_TOOL_DIGGER', ''),
('40022', 'S00_HIDDEN_3', '4705', 'IDV_MOON5', '2355', '89', '2455', '150', '2', 'M_DIGGABLE', 'IDV_CU_GRASSPATCH1', 'IDS_SANDWALL2', 'ISA_TOOL_STRIKER', ''),
('40018', 'S00_HIDDEN_4', '9218', 'IDV_EYEB', '2464', '100', '2536', '170', '2', 'M_DIGGABLE', 'IDV_CU_GRASSPATCH1', 'IDS_SANDWALL1', 'ISA_TOOL_STRIKER', ''),

('40005', 'S00_HIDDEN_5', '9475', 'IDV_WR3', '274', '202', '375', '300', '2', 'M_DIGGABLE', 'IDV_CU_GRASSPATCH1', 'IDS_SANDDIRT', 'ISA_TOOL_DIGGER', ''),

('40017', 'S00_HIDDEN_6', '506', 'IDV_CTO1', '2285', '223', '2330', '270', '2', 'M_DIGGABLE', 'IDV_CU_GRASSPATCH1', 'IDS_SANDROCK1', 'ISA_TOOL_PRYER', ''),
('40007', 'S00_HIDDEN_7', '4866', 'IDV_VIL4', '1985', '203', '2060', '224', '2', 'M_DIGGABLE', 'IDV_CU_GRASSPATCH1', 'IDS_SANDDIRTGRS', 'ISA_TOOL_DIGGER', ''),
('40008', 'S00_HIDDEN_8', '5381', 'IDV_TMPLPTH5', '1899', '239', '1940', '250', '2', 'M_DIGGABLE', 'IDV_CU_GRASSPATCH1', 'IDS_SANDDIRTGRS', 'ISA_TOOL_DIGGER', ''),
('40019', 'S00_HIDDEN_9', '9218', 'IDV_EYEB', '881', '95', '950', '150', '2', 'M_DIGGABLE', 'IDV_CU_GRASSPATCH1', 'IDS_SANDWALL2', 'ISA_TOOL_STRIKER', ''),
('40020', 'S00_HIDDEN_10', '9474', 'IDV_WR2', '2578', '46', '2660', '150', '2', 'M_DIGGABLE', 'IDV_CU_GRASSPATCH1', 'IDS_SANDWALL3', 'ISA_TOOL_STRIKER', ''),
 
('40011', 'S00_HIDDEN_11', '4096', 'IDV_SCN10PT0', '622', '181', '700', '220', '2', 'M_DIGGABLE', 'IDV_CU_DIRTPATCH1', 'IDS_SANDDIRTGRSDK', 'ISA_TOOL_DIGGER', ''),
('40012', 'S00_HIDDEN_12', '4353', 'IDV_FA1PAN', '1424', '204', '1480', '240', '2', 'M_DIGGABLE', 'IDV_CU_GRASSPATCH1', 'IDS_SANDDIRTGRSDK', 'ISA_TOOL_DIGGER', ''),
('40013', 'S00_HIDDEN_13', '4353', 'IDV_FA1PAN', '2853', '208', '2920', '240', '2', 'M_DIGGABLE', 'IDV_CU_GRASSPATCH1', 'IDS_SANDDIRTGRSDK', 'ISA_TOOL_DIGGER', ''),
('40014', 'S00_HIDDEN_14', '4354', 'IDV_FH1PTH1', '238', '262', '290', '320', '2', 'M_DIGGABLE', 'IDV_CU_DIRTPATCH1', 'IDS_SANDDIRTGRSDK', 'ISA_TOOL_DIGGER', ''),

('40015', 'S00_HIDDEN_15', '4096', 'IDV_SCN10PT0', '492', '198', '560', '230', '2', 'M_DIGGABLE', 'IDV_CU_DIRTPATCH1', 'IDS_SANDROCK1', 'ISA_TOOL_PRYER', ''),
('40016', 'S00_HIDDEN_16', '508', 'IDV_CTO3', '2046', '250', '2100', '270', '2', 'M_DIGGABLE', 'IDV_CU_GRASSPATCH1', 'IDS_SANDROCK1', 'ISA_TOOL_PRYER', ''),
('40006', 'S00_HIDDEN_17', '507', 'IDV_CTO2', '1190', '239', '1270', '300', '2', 'M_DIGGABLE', 'IDV_CU_DIRTPATCH1', 'IDS_SANDDIRT3', 'ISA_TOOL_DIGGER', ''),
('40004', 'S00_HIDDEN_18', '551', 'IDV_ctyh', '1953', '207', '2025', '250', '2', 'M_DIGGABLE', 'IDV_CU_GRASSPATCH1', 'IDS_SANDDIRT3', 'ISA_TOOL_DIGGER', ''),


('40021', 'S00_HIDDEN_21', '9475', 'IDV_WR3', '2492', '46', '2570', '150', '2', 'M_DIGGABLE', 'IDV_CU_GRASSPATCH1', 'IDS_SANDWALL3', 'ISA_TOOL_STRIKER', ''),
('40003', 'S00_HIDDEN_22', '4704', 'IDV_MOON4', '1198', '227', '1275', '275', '2', 'M_DIGGABLE', 'IDV_CU_GRASSPATCH1', 'IDS_SANDDIRTGRS', 'ISA_TOOL_DIGGER', ''),
('40009', 'S00_HIDDEN_19', '5381', 'IDV_TMPLPTH5', '431', '195', '500', '230', '2', 'M_DIGGABLE', 'IDV_CU_GRASSPATCH1', 'IDS_SANDDIRTGRS', 'ISA_TOOL_DIGGER', ''),
('40010', 'S00_HIDDEN_20', '4096', 'IDV_SCN10PT0', '2510', '175', '2580', '230', '2', 'M_DIGGABLE', 'IDV_CU_GRASSPATCH1', 'IDS_SANDDIRTGRSDK', 'ISA_TOOL_DIGGER', '');



-- added to bard
--('40023', 'S00_HIDEBUTTON', '4096', 'IDV_SCN10PT1', '268', '128', '463', '204', '2', 'M_HIDEBUTTON', 'S00_HIDER', '', '', '');



delete from transitions where [automaton] like 'M_HIDE%';
delete from transitions where [automaton] like 'M_DIGGABLE%';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code", "guard", "doc") VALUES 

('M_HIDEBUTTON', '0', '0', 'CLICK', '', '', '
    SIGNAL(WIP1,SIG_OPEN);
', '', ''),


--HIDER has to get get a random number 1-10 into WPARM to start and manage +1 until 10 then go back to 1
-- if I want to varry which items are hid where
-- HIDER also will pick which machine to hide the object in (BPARM) by starting at 1 and randomizing +1 or +2 for each
-- of the next machines(hiding places) to 22

('M_HIDER', '0', 'topOLoop', 'WAIT', '', 'SIG_OPEN', '
  
    ASSIGN(WTEMP2,0);
    RAND(WIP1,1);
    MOV(WPARM,WRAND); // WPARM will be referenced as the first item to hide
    
    RAND(3,1);
    ASSIGN(BPARM,WRAND);  // BPARM starting point for locations
    MOV(WTEMP1,BPARM);
    MAPi(WTEMP1,S00_HIDINGPLACE);
    SIGNAL(WTEMP1,SIG_OPEN); // Signal first hidden spot
    WRITE(''FIRST ITEM HIDDEN'');
  ', '', ''),

--WIP1 -> total number of items to hide 10 let's say
--WTEMP2 -> count of items hid

('M_HIDER', 'topOLoop', 'objectSelected', 'LTE', 'WTEMP2', 'WIP1', '  
            RAND(2,1); 
            ADD(BPARM,WRAND);
            MOV(WTEMP1,BPARM);
            MAPi(WTEMP1,S00_HIDINGPLACE); 
    
            //Set wparm to represent the object pointer
            //X+1 or 1 if we started in the middle
            if(WPARM < WIP1){
                ADD(WPARM,1);
                ADD(WTEMP2,1);
             }
            if(WPARM >= WIP1){ 
                ASSIGN(WPARM,1); 
                ADD(WTEMP2,1);
             }
', '', ''),

('M_HIDER', 'objectSelected', 'topOLoop', 'LTE', 'WTEMP2', 'WIP1', '
        SIGNAL(WTEMP1,SIG_OPEN); 
        WRITE(''NEXT ITEM HIDDEN'');    
', '', ''),
('M_HIDER', 'objectSelected', 'stopped', 'Z_EPSILON', '', '', '
     WRITE(''Finished Hiding Items'');   
', '', ''),
('M_HIDER', 'stopped', '0', 'WAIT', '', 'SIG_OPEN', '', '', ''),




('M_DIGGABLE', '0', 'fixinToHideItem', 'WAIT', '', 'SIG_OPEN', '
    REF_MACHINE(S00_HIDER);
    MOV(WOBJECT,R_WPARM);
', '', ''),
('M_DIGGABLE', 'fixinToHideItem', 'determinedItem', 'MAPi', 'WOBJECT', 'S00_HIDDENITEM', '', '', ''),
('M_DIGGABLE', 'determinedItem', 'coverActive', 'MOV', 'WSPRITE', 'WIP2', '
        SHOW(WSPRITE);
', '', ''),
('M_DIGGABLE', 'coverActive', 'firstWhack', 'C_ACCEPT', 'WIP3', '', '', '', ''),
('M_DIGGABLE', 'firstWhack', 'secondWhack', 'DRAG', '', '', '
        if(WIP3 == ISA_TOOL_DIGGER){
            SHOW(0,IDS_SANDPILE2);
            ANIMATE();
            PLAYWAVE(SOUND_DIG);
         }   
         if(WIP3 == ISA_TOOL_STRIKER){
            SHOW(0,IDS_SANDSTRIKE);
            ANIMATE();
            PLAYWAVE(SOUND_DIG);
         }   
          if(WIP3 == ISA_TOOL_PRYER){
            SHOW(0,IDS_SANDWOBBLE);
            ANIMATE();
            PLAYWAVE(SOUND_THUMP);
         }   
', '', ''),
('M_DIGGABLE', 'secondWhack', 'thirdWhack', 'DRAG', '', '', '
        if(WIP3 == ISA_TOOL_DIGGER){
            SHOW(0,IDS_SANDPILE3);
            ANIMATE();
            PLAYWAVE(SOUND_DIG);
         }   
         if(WIP3 == ISA_TOOL_STRIKER){
            SHOW(0,IDS_SANDSTRIKE);
            ANIMATE();
            PLAYWAVE(SOUND_DIG);
         }   
           if(WIP3 == ISA_TOOL_PRYER){
            SHOW(0,IDS_SANDFLIP);
            ANIMATE();
            PLAYWAVE(SOUND_THUMP);
         }   
', '', ''),
('M_DIGGABLE', 'thirdWhack', 'moveMe', 'DRAG', '', '', '', '', ''),
('M_DIGGABLE', 'moveMe', 'displayItem', 'SET_YOFFSET', 'ADD','50', '
        PLAYWAVE(SOUND_CHIMES);
        SHOW(WOBJECT);
', '', ''),
('M_DIGGABLE', 'displayItem', 'itemGrabbed', 'GRAB', '', '', '', '', ''),
('M_DIGGABLE', 'itemGrabbed', '0', 'Z_EPSILON', '', '', 'SHOW();', '', '');