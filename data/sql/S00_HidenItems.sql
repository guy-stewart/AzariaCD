
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
('IDD_SANDROCK3',40009,'IDC_NULL','sandrock3','sandrock3','sandrock3'),
('IDD_SANDDIRTBIG',40010,'IDC_NULL','sanddirtbig','sanddirtbig','sanddirtbig');


delete from sounds where [name] like 'SOUND_DIG%';
delete from sounds where [name] like 'SOUND_CHIMES%';
delete from sounds where [name] like 'SOUND_GROAN%';
delete from sounds where [name] like 'SOUND_THUMP%';
INSERT INTO "main"."sounds" ("name", "value", "id") VALUES ('SOUND_DIG', 'dig', '0');
INSERT INTO "main"."sounds" ("name", "value", "id") VALUES ('SOUND_CHIMES', 'chimes', '0');
INSERT INTO "main"."sounds" ("name", "value", "id") VALUES ('SOUND_THUMP', 'THUMP', '0');

delete from spr_names where [name] like 'IDS_SANDDIRTGRS%';
delete from spr_names where [name] like 'IDS_SAND%';

insert into spr_names values ('IDS_SANDDIRT','sanddirt','40500');
insert into spr_names values ('IDS_SANDDIRTGRS','sanddirtgrs','40004');
insert into spr_names values ('IDS_SANDDIRT3','sanddirt3','40003');
insert into spr_names values ('IDS_SANDDIRTBIG','sanddirtbig','40022');
insert into spr_names values ('IDS_SANDDIRTMOON','sanddirtMoon','40005');
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
('S00_HIDDENITEM', '8', 'IDD_DEATH'),
('S00_HIDDENITEM', '9', 'IDD_RUBY'),
('S00_HIDDENITEM', '10', 'IDD_TRANSFER'),

--AFTER POTTERY COMPLETE HIDDEN ITEMS BECOME SPELLS/BOMBS
('S00_HIDDENSPELL', '1', 'IDD_BOMB2'), 
('S00_HIDDENSPELL', '2', 'IDD_BOMB1'),
('S00_HIDDENSPELL', '3', 'IDD_BANISH'),
('S00_HIDDENSPELL', '4', 'IDD_BANISH'),
('S00_HIDDENSPELL', '5', 'IDD_DEATH'),
('S00_HIDDENSPELL', '6', 'IDD_DEATH'),
('S00_HIDDENSPELL', '7', 'IDD_ENCSTONE'),
('S00_HIDDENSPELL', '8', 'IDD_PROTECT'),
('S00_HIDDENSPELL', '9', 'IDD_NYBREATH'),
('S00_HIDDENSPELL', '10','IDD_GVIAL'),

('S00_HIDINGPLACE', 1, 'S00_HIDDEN_1'), 
('S00_HIDINGPLACE', 2, 'S00_HIDDEN_2'),
('S00_HIDINGPLACE', 3, 'S00_HIDDEN_3'),
('S00_HIDINGPLACE', 4, 'S00_HIDDEN_4'),
('S00_HIDINGPLACE', 5, 'S00_HIDDEN_5'),
('S00_HIDINGPLACE', 6, 'S00_HIDDEN_6'),
('S00_HIDINGPLACE', 7, 'S00_HIDDEN_7'),
('S00_HIDINGPLACE', 8, 'S00_HIDDEN_8'),
('S00_HIDINGPLACE', 9, 'S00_HIDDEN_9'),
('S00_HIDINGPLACE', 10, 'S00_HIDDEN_10'),
('S00_HIDINGPLACE', 11, 'S00_HIDDEN_11'),
('S00_HIDINGPLACE', 12, 'S00_HIDDEN_12'),
('S00_HIDINGPLACE', 13, 'S00_HIDDEN_13'),
('S00_HIDINGPLACE', 14, 'S00_HIDDEN_14'),
('S00_HIDINGPLACE', 15, 'S00_HIDDEN_15'),
('S00_HIDINGPLACE', 16, 'S00_HIDDEN_16'),
('S00_HIDINGPLACE', 17, 'S00_HIDDEN_17'),
('S00_HIDINGPLACE', 18, 'S00_HIDDEN_18'),
('S00_HIDINGPLACE', 19, 'S00_HIDDEN_19'),
('S00_HIDINGPLACE', 20, 'S00_HIDDEN_20'),
('S00_HIDINGPLACE', 21, 'S00_HIDDEN_21'),
('S00_HIDINGPLACE', 22, 'S00_HIDDEN_22'),
--these are being added to ensure if the machine 
--picked a 3 for each of 10 random picks (HIGHLY UNLIKELY)
('S00_HIDINGPLACE', 23, 'S00_HIDDEN_23'),
('S00_HIDINGPLACE', 24, 'S00_HIDDEN_24'),
('S00_HIDINGPLACE', 25, 'S00_HIDDEN_25'),
('S00_HIDINGPLACE', 26, 'S00_HIDDEN_26'),
('S00_HIDINGPLACE', 27, 'S00_HIDDEN_27'),
('S00_HIDINGPLACE', 28, 'S00_HIDDEN_28'),
('S00_HIDINGPLACE', 29, 'S00_HIDDEN_29'),
('S00_HIDINGPLACE', 30, 'S00_HIDDEN_30'),

('S00_HIDINGPLACE', 31, 'S00_HIDDEN_31'),
('S00_HIDINGPLACE', 32, 'S00_HIDDEN_32'),
('S00_HIDINGPLACE', 33, 'S00_HIDDEN_33'),
('S00_HIDINGPLACE', 34, 'S00_HIDDEN_34'),
('S00_HIDINGPLACE', 35, 'S00_HIDDEN_35');



--This was dumb of me to wipe out all of the tools everywhere
--don't run until fix like
--delete from isa where [member] like 'IDD_SPADE%';

-- delete from isa where [class] like 'ISA_TOOL_%';
-- INSERT INTO "main"."isa" ("class", "member")
-- VALUES 
-- ('ISA_TOOL_DIGGER', 'IDD_SHOVEL'),
-- ('ISA_TOOL_STRIKER', 'IDD_PICK'),
-- ('ISA_TOOL_PRYER', 'IDD_CROWBAR');

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



delete from machines where [name] like 'S00_HIDDEN%';
delete from machines where [name] like 'S00_HIDE%';
INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name","wip3_name",  "wip4_name") 
VALUES  
('40000', 'S00_HIDER', '4392', 'IDV_PATH2', '1', '1', '2', '1', '2', 'M_HIDER', '10', '22', '', ''),
('40025', 'S00_HIDECHECK', '4392', 'IDV_PATH2', '0', '0', '0', '0', '2', 'M_OLIEOLIE', '10', '22', '', ''),
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
('40004', 'S00_HIDDEN_18', '551', 'IDV_ctyh', '2807', '207', '2900', '250', '2', 'M_DIGGABLE', 'IDV_CU_GRASSPATCH1', 'IDS_SANDDIRT3', 'ISA_TOOL_DIGGER', ''),


('40021', 'S00_HIDDEN_21', '9475', 'IDV_WR3', '2492', '46', '2570', '150', '2', 'M_DIGGABLE', 'IDV_CU_GRASSPATCH1', 'IDS_SANDWALL3', 'ISA_TOOL_STRIKER', ''),
('40003', 'S00_HIDDEN_22', '4704', 'IDV_WR3', '1198', '227', '1275', '275', '2', 'M_DIGGABLE', 'IDV_CU_GRASSPATCH1', 'IDS_SANDDIRT', 'ISA_TOOL_DIGGER', ''),
('40009', 'S00_HIDDEN_19', '5381', 'IDV_TMPLPTH5', '431', '195', '500', '230', '2', 'M_DIGGABLE', 'IDV_CU_GRASSPATCH1', 'IDS_SANDDIRTGRS', 'ISA_TOOL_DIGGER', ''),
('40010', 'S00_HIDDEN_20', '4096', 'IDV_SCN10PT0', '2510', '175', '2580', '230', '2', 'M_DIGGABLE', 'IDV_CU_GRASSPATCH1', 'IDS_SANDDIRTGRSDK', 'ISA_TOOL_DIGGER', ''),

('40023', 'S00_HIDDEN_23', '4391', 'IDV_PATH2', '693', '208', '750', '275', '2', 'M_DIGGABLE', 'IDV_CU_GRASSPATCH1', 'IDS_SANDDIRTGRS', 'ISA_TOOL_DIGGER', ''),
('40024', 'S00_HIDDEN_24', '4391', 'IDV_PATH2', '2065', '214', '2165', '275', '2', 'M_DIGGABLE', 'IDV_CU_GRASSPATCH1', 'IDS_SANDDIRTGRS', 'ISA_TOOL_DIGGER', ''),
('40025', 'S00_HIDDEN_25','4703', 'IDV_MOON5', '300', '205', '380', '275', '2', 'M_DIGGABLE', 'IDV_CU_GRASSPATCH1', 'IDS_SANDDIRTMOON', 'ISA_TOOL_DIGGER', ''),
('40026', 'S00_HIDDEN_26',  '5381', 'IDV_TMPLPTH5', '2279', '215', '2350', '275', '2', 'M_DIGGABLE', 'IDV_CU_GRASSPATCH1', 'IDS_SANDDIRTGRS', 'ISA_TOOL_DIGGER', ''),
('40027', 'S00_HIDDEN_27', '5381', 'IDV_TMPLPTH5', '1197', '224', '1290', '280', '2', 'M_DIGGABLE', 'IDV_CU_GRASSPATCH1', 'IDS_SANDDIRTGRS', 'ISA_TOOL_DIGGER', ''),
('40028', 'S00_HIDDEN_28', '5382', 'IDV_TMPLPTH9', '2018', '245', '2100', '290', '2', 'M_DIGGABLE', 'IDV_CU_GRASSPATCH1', 'IDS_SANDDIRTGRS', 'ISA_TOOL_DIGGER', ''),
('40029', 'S00_HIDDEN_29', '4868', 'IDV_VIL6', '3180', '172', '3220', '224', '2', 'M_DIGGABLE', 'IDV_CU_GRASSPATCH1', 'IDS_SANDDIRTGRS', 'ISA_TOOL_DIGGER', ''),
('40030', 'S00_HIDDEN_30', '4868', 'IDV_VIL6', '2134', '222', '2220', '275', '2', 'M_DIGGABLE', 'IDV_CU_GRASSPATCH1', 'IDS_SANDDIRTGRS', 'ISA_TOOL_DIGGER', ''),

--Highly unlikely hiding places - just in case
('40031', 'S00_HIDDEN_26',  '5381', 'IDV_TMPLPTH5', '1279', '215', '1350', '275', '2', 'M_DIGGABLE', 'IDV_CU_GRASSPATCH1', 'IDS_SANDDIRTGRS', 'ISA_TOOL_DIGGER', ''),
('40032', 'S00_HIDDEN_27', '5381', 'IDV_TMPLPTH5', '1000', '224', '1190', '280', '2', 'M_DIGGABLE', 'IDV_CU_GRASSPATCH1', 'IDS_SANDDIRTGRS', 'ISA_TOOL_DIGGER', ''),
('40033', 'S00_HIDDEN_28', '5382', 'IDV_TMPLPTH9', '1018', '245', '1100', '290', '2', 'M_DIGGABLE', 'IDV_CU_GRASSPATCH1', 'IDS_SANDDIRTGRS', 'ISA_TOOL_DIGGER', ''),
('40034', 'S00_HIDDEN_29', '4868', 'IDV_VIL6', '3080', '172', '3120', '224', '2', 'M_DIGGABLE', 'IDV_CU_GRASSPATCH1', 'IDS_SANDDIRTGRS', 'ISA_TOOL_DIGGER', ''),
('40035', 'S00_HIDDEN_30', '4868', 'IDV_VIL6', '2034', '222', '2020', '275', '2', 'M_DIGGABLE', 'IDV_CU_GRASSPATCH1', 'IDS_SANDDIRTGRS', 'ISA_TOOL_DIGGER', ''),


('40023', 'S00_HIDEFINDER', '4096', 'IDV_SCN10PT1', '268', '128', '463', '204', '2', 'M_HIDELIST', 'S00_HIDECHECK', '', '', '');



delete from transitions where [automaton] like 'M_HIDE%';
delete from transitions where [automaton] like 'M_DIGGABLE%';
delete from transitions where [automaton] like 'M_OLIE%';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code", "guard", "doc") VALUES 

('M_HIDELIST', '0', '0', 'CLICK', '', '', '
    SIGNAL(WIP1,SIG_CHECK);
', '', ''),


--HIDER has to get get a random number 1-10 into WPARM to start and manage +1 until 10 then go back to 1
-- if I want to varry which items are hid where
-- HIDER also will pick which machine to hide the object in (BPARM) by starting at 1 and randomizing +1 or +2 for each
-- of the next machines(hiding places) to 22

('M_HIDER', '0', 'topOLoop', 'WAIT', '', 'SIG_OPEN', '
      want("%")~ 
      want(1). 
      want(2).
      want(3).
      want(4).
      want(5).
      want(6).
      want(7).
      want(8).
      want(9).
      want(10).
      ASSIGN(WTEMP3,0);
      ASSIGN(WTEMP2,0);
      RAND(3,1); 
      ASSIGN(BPARM,WRAND);  
', '', ''),
('M_HIDER', 'topOLoop', '0', 'GT', 'WTEMP3', 9, '
 WRITE('' should be done ''); 
', '', ''),
('M_HIDER', 'topOLoop', 'numberCheck','Z_EPSILON', '', '', '
         RAND(10,1);
         ASSIGN(WTEMP1,WRAND);
         WRITE(''Check to see if we want WTEMP1 ''); 
         if (want(WTEMP1)) {
            want(WTEMP1)~   
            ASSIGN(WPARM,WTEMP1);
            ADD(WTEMP3,1);
         } else {
            ASSIGN(WPARM,0);
         }
  ', '', ''),      

('M_HIDER', 'numberCheck', 'hideItem', 'GTEi', 'WPARM', 1, '
 WRITE('' lets hide this ''); 
', '', ''),

--WE'RE GOING TO GET THIS ALOT - NO CHECKING HERE TO SEE IF WE'RE DONE??
('M_HIDER', 'numberCheck', 'topOLoop','Z_EPSILON', '', '', '
 WRITE('' GOT ONE WE DONT WANT ''); 
', '', ''),

('M_HIDER', 'hideItem', 'objectHidden','Z_EPSILON', '', '', '   
         WRITE(''HIDING ITEM ''); 
         MOV(WTEMP2,BPARM);
         MAPi(WTEMP2,S00_HIDINGPLACE); 
         SIGNAL(WTEMP2,SIG_OPEN); 
         RAND(4,1); 
        //I want to update BPARM by adding 1,2, 3 or 4
        ASSIGN(WTEMP2,BPARM);
        ADD(WTEMP2,WRAND); 
        ASSIGN(BPARM,WTEMP2); //BPARM is now again The new hiding machine
', '', ''),

  --we need a seperate counter instead of LTE(WPARM,WIP1)!
('M_HIDER', 'objectHidden', 'topOLoop', 'LTEi', 'WTEMP3', 10, '
        WRITE(''Checking to see if we hid all 10  ''); 
', '', ''),
('M_HIDER', 'objectHidden', 'stopped','Z_EPSILON', '', '', '
     WRITE(''Finished Hiding Items'');   
', '', ''),
('M_HIDER', 'stopped', '0','Z_EPSILON', '', '', '', '', ''),




('M_DIGGABLE', '0', 'fixinToHideItem', 'WAIT', '', 'SIG_OPEN', '
    REF_MACHINE(S00_HIDER);
    MOV(WOBJECT,R_WPARM);
', '', ''),
('M_DIGGABLE', 'fixinToHideItem', 'determinedItem', 'REF_MACHINE', 'S16_POTTERYCHECK', '', '
    if(R_BPARM > 0){ MAPi(WOBJECT,S00_HIDDENSPELL);}
    if(R_BPARM == 0){ MAPi(WOBJECT,S00_HIDDENITEM);}
', '', ''),
('M_DIGGABLE', 'determinedItem', 'coverActive', 'MOV', 'WSPRITE', 'WIP2', '
        SHOW(WSPRITE);
', '', ''),
('M_DIGGABLE', 'coverActive', 'firstWhack', 'Z_EPSILON', '', '', '', '', ''),
('M_DIGGABLE', 'firstWhack', 'secondWhack', 'DRAG', 'WIP3', '', '
        if(WIP3 == ISA_TOOL_DIGGER){
            SHOW(0,IDS_SANDPILE1);
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
('M_DIGGABLE', 'secondWhack', 'thirdWhack', 'DRAG', 'WIP3', '', '
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
            SHOW(0,IDS_SANDFLIP);
            ANIMATE();
            PLAYWAVE(SOUND_THUMP);
         }   
', '', ''),
('M_DIGGABLE', 'thirdWhack', 'fourthWhack', 'DRAG', 'WIP3', '', '
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
('M_DIGGABLE', 'fourthWhack', 'moveMe', 'DRAG', 'WIP3', '', '', '', ''),
('M_DIGGABLE', 'moveMe', 'displayItem', 'SET_YOFFSET', 'ADD','50', '
        PLAYWAVE(SOUND_CHIMES);
        SHOW(WOBJECT);
        ADDI(LWISDOM,1); 
        SIGNALi(0,SID_ID);
', '', ''),
('M_DIGGABLE', 'displayItem', 'itemGrabbed', 'GRAB', '', '', '', '', ''),
('M_DIGGABLE', 'itemGrabbed', '0', 'Z_EPSILON', '', '', 'SHOW();', '', ''),


('M_OLIEOLIE', '0', '1', 'WAIT', '', 'SIG_CHECK', '', '', ''),
('M_OLIEOLIE', '1', '0', 'Z_EPSILON', '', '', '
if ( (IFSTATE(firstWhack, S00_HIDDEN_1)) ){WRITE("Place 1 IDV_PATH2");}

      if( (IFSTATE(firstWhack, S00_HIDDEN_2)) ){
         WRITE("Place 2 IDV_MOON3");
      }
      if( (IFSTATE(firstWhack, S00_HIDDEN_3)) ){
         WRITE("Place 3 IDV_MOON5");
      }
      if( (IFSTATE(firstWhack, S00_HIDDEN_4 )) ){
         WRITE("Place 4 IDV_EYEB");
      }
      if( (IFSTATE(firstWhack, S00_HIDDEN_5 )) ){
         WRITE("Place 5 IDV_WR3");
      }
      if( (IFSTATE(firstWhack, S00_HIDDEN_6 )) ){
         WRITE("Place 6 IDV_CTO1");
      }
      if( (IFSTATE(firstWhack, S00_HIDDEN_7 )) ){
         WRITE("Place 7 IDV_VIL4");
      }
      if( (IFSTATE(firstWhack, S00_HIDDEN_8 )) ){
         WRITE("Place 8 IDV_TMPLPTH5");
      }
      if( (IFSTATE(firstWhack, S00_HIDDEN_9)) ){
         WRITE("Place 9 IDV_EYEB");
      }
      if( (IFSTATE(firstWhack, S00_HIDDEN_10 )) ){
         WRITE("Place 10 IDV_WR2");
      }
      if( (IFSTATE(firstWhack, S00_HIDDEN_11 )) ){
         WRITE("Place 11 IDV_SCN10PT0");
      }
      if( (IFSTATE(firstWhack, S00_HIDDEN_12 )) ){
         WRITE("Place 12 IDV_FA1PAN");
      }
      if( (IFSTATE(firstWhack, S00_HIDDEN_13 )) ){
         WRITE("Place 13 IDV_FA1PAN");
      }
      if( (IFSTATE(firstWhack, S00_HIDDEN_14 )) ){
         WRITE("Place 14 IDV_FH1PTH1");
      }
      if( (IFSTATE(firstWhack, S00_HIDDEN_15 )) ){
         WRITE("Place 15 IDV_SCN10PT0");
      }
      if( (IFSTATE(firstWhack, S00_HIDDEN_16 )) ){
         WRITE("Place 16 IDV_CTO3");
      }
      if( (IFSTATE(firstWhack, S00_HIDDEN_17 )) ){
         WRITE("Place 17 IDV_CTO2");
      }
      if( (IFSTATE(firstWhack, S00_HIDDEN_18 )) ){
         WRITE("Place 18 IDV_ctyh");
      }
      if( (IFSTATE(firstWhack, S00_HIDDEN_19 )) ){
         WRITE("Place 19 IDV_TMPLPTH5");
      }
      if( (IFSTATE(firstWhack, S00_HIDDEN_20 )) ){
         WRITE("Place 20nIDV_SCN10PT0");
      }
      if( (IFSTATE(firstWhack, S00_HIDDEN_21 )) ){
         WRITE("Place 21 IDV_WR3");
      }
      if( (IFSTATE(firstWhack, S00_HIDDEN_22 )) ){
         WRITE("Place 22 IDV_WR3");
      }
       if( (IFSTATE(firstWhack, S00_HIDDEN_23 )) ){
         WRITE("Place 23 IDV_PATH2");
      }
       if( (IFSTATE(firstWhack, S00_HIDDEN_24 )) ){
         WRITE("Place 24 IDV_PATH2");
      }
       if( (IFSTATE(firstWhack, S00_HIDDEN_25 )) ){
         WRITE("Place 25 IDV_MOON5");
      }
       if( (IFSTATE(firstWhack, S00_HIDDEN_26 )) ){
         WRITE("Place 26 IDV_TMPLPTH5");
      }
       if( (IFSTATE(firstWhack, S00_HIDDEN_27 )) ){
         WRITE("Place 27 IDV_TMPLPTH5");
      }
       if( (IFSTATE(firstWhack, S00_HIDDEN_28 )) ){
         WRITE("Place 28 IDV_TMPLPTH9");
      }
       if( (IFSTATE(firstWhack, S00_HIDDEN_29 )) ){
         WRITE("Place 29 IDV_VIL6");
      }
       if( (IFSTATE(firstWhack, S00_HIDDEN_30 )) ){
         WRITE("Place 30 IDV_VIL6");
      }

', '', '');