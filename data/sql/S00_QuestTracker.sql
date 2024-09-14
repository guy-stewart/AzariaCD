delete from games;
-- create a map of these quests
-- map should have quest id and description
-- Create a waiter -- signal in quest begin and quest complete 
-- on quest begin - add to screen in a color 
-- on quest complete -- change color to grey
-- related script --> enchanted stone looks at puzzle completion

-- Quest Log

-- - [ ] Find the ancient map in the Wilderness
-- - [ ] Recover the seed of Azaria’s unity
-- - [ ] Excavate the Ancient Crypts in the canyons
-- - [ ] Restore the pyramid of the eyes
-- - [ ] Read the signs of the ancients
-- - [ ] Perform the ritual of the 7 moons

-- Meflin Quests

-- - [ ] Find Neelp’s sacred amulet
-- - [ ] Bring Neelp the soul of a fish
-- - [ ] Bring Neelp a red gopa berry
-- - [ ] Find the Emerald of light for Rathe
-- - [ ] Find a green gopa berry for Rathe
-- - [ ] Bring Thaor a rare plant from the nystrom mines
-- - [ ] Bring Thaor the flower bud
-- - [ ] Find the enchanted stone for Perst
-- - [ ] Manufacture an item for Perst

-- Learn more about …

delete from spr_names where name = 'IDS_BLACKBACK';
INSERT INTO "main"."spr_names" ("name", "value") 
VALUES 
('IDS_BLACKBACK', 'BLACKBACK');

-- Add the view
delete from views where [view_name] like 'IDV_QUESTPAN%';

INSERT INTO "main"."views" ("view_id", "view_name", "Z", "backgroundAudio", "locator_view", "behavior_id", "portal_filename", "surface_filename") 
VALUES 
('2400', 'IDV_QUESTPAN', '1', '0', '1', '2', 'wdepanel.vct', 'spacepanbig');

delete from map where op like 'S00_QUEST%';
INSERT INTO "main"."map" ("op", "key", "value")
VALUES 
--identify hidden items
('S00_QUEST',  '1', ' Find the ancient map in the wilderness.'), 
('S00_QUEST',  '2', ' Recover the seed of Azarian unity.'),
('S00_QUEST',  '3', ' Excavate the Ancient crypts in the canyons.'),
('S00_QUEST',  '4', ' Restore the pyramid of the eyes.'),
('S00_QUEST',  '5', ' Read the signs of the ancients.'),
('S00_QUEST',  '6', ' Perform the ritual of the 7 moons.'),
('S00_QUEST',  '7', ' Find the sacred amulet that belongs to Neelp.'),
('S00_QUEST',  '8', ' Bring Neelp the soul of a fish.'),
('S00_QUEST',  '9', ' Bring Neelp a red gopa berry.'),
('S00_QUEST', '10', ' Find the Emerald of light for Rathe.'),
('S00_QUEST', '11', ' Bring a green gopa berry to Rathe.'),
('S00_QUEST', '12', ' Bring Thaor a rare plant from the nystrom mines.'),
('S00_QUEST', '13', ' Bring Thaor the flower bud.'),
('S00_QUEST', '14', ' Find the enchanted stone for Perst.'),
('S00_QUEST', '15', ' Manufacture an item for Perst.');



delete from controls where id like 'ID_QL%';
insert into controls values
('IDV_QUESTPAN', 'ID_QLPOS1','LABEL','IDS_BLACKBACK','',120, 140, 0,'','', 'IDS_FONTTNB16',0xe2ebb2,''),
('IDV_QUESTPAN', 'ID_QLPOS2','LABEL','IDS_BLACKBACK','',120, 180, 0,'','', 'IDS_FONTTNB16',0xe2ebb2,''),
('IDV_QUESTPAN', 'ID_QLPOS3','LABEL','IDS_BLACKBACK','',120, 220, 0,'','', 'IDS_FONTTNB16',0xe2ebb2,''),
('IDV_QUESTPAN', 'ID_QLPOS4','LABEL','IDS_BLACKBACK','',120, 260, 0,'','', 'IDS_FONTTNB16',0xe2ebb2,''),
('IDV_QUESTPAN', 'ID_QLPOS5','LABEL','IDS_BLACKBACK','',120, 300, 0,'','', 'IDS_FONTTNB16',0xe2ebb2,''),
('IDV_QUESTPAN', 'ID_QLPOS6','LABEL','IDS_BLACKBACK','',120, 340, 0,'','', 'IDS_FONTTNB16',0xe2ebb2,''),
('IDV_QUESTPAN', 'ID_QLPOS7','LABEL','IDS_BLACKBACK','',120, 380, 0,'','', 'IDS_FONTTNB16',0xe2ebb2,''),
('IDV_QUESTPAN', 'ID_QLPOS8','LABEL','IDS_BLACKBACK','',120, 420, 0,'','', 'IDS_FONTTNB16',0xe2ebb2,''),
('IDV_QUESTPAN', 'ID_QLPOS9','LABEL','IDS_BLACKBACK','',120, 460, 0,'','', 'IDS_FONTTNB16',0xe2ebb2,''),
('IDV_QUESTPAN','ID_QLPOS10','LABEL','IDS_BLACKBACK','',120, 500, 0,'','', 'IDS_FONTTNB16',0xe2ebb2,''),
('IDV_QUESTPAN','ID_QLPOS11','LABEL','IDS_BLACKBACK','',120, 540, 0,'','', 'IDS_FONTTNB16',0xe2ebb2,''),
('IDV_QUESTPAN','ID_QLPOS12','LABEL','IDS_BLACKBACK','',120, 580, 0,'','', 'IDS_FONTTNB16',0xe2ebb2,''),
('IDV_QUESTPAN','ID_QLPOS13','LABEL','IDS_BLACKBACK','',120, 620, 0,'','', 'IDS_FONTTNB16',0xe2ebb2,''),
('IDV_QUESTPAN','ID_QLPOS14','LABEL','IDS_BLACKBACK','',120, 660, 0,'','', 'IDS_FONTTNB16',0xe2ebb2,''),
('IDV_QUESTPAN','ID_QLPOS15','LABEL','IDS_BLACKBACK','',120, 700, 0,'','', 'IDS_FONTTNB16',0xe2ebb2,''),
('IDV_QUESTPAN','ID_QLPOS16','LABEL','IDS_BLACKBACK','',120, 740, 0,'','', 'IDS_FONTTNB16',0xe2ebb2,'');
--ADD 15 OR SO MACHINES ONTO QUESTPAN - EACH ONE WILL USE A STANDARD MACHINE
delete from machines where [name] like 'QL_%';

INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") 
VALUES 
('2300',  'QL_POS1', '2400', 'IDV_QUESTPAN', '120', '140', '500',  '75', '1','M_QUEST_WAITER','ID_QLPOS1','','',''),
('2301',  'QL_POS2', '2400', 'IDV_QUESTPAN', '120', '180', '500', '100', '1','M_QUEST_WAITER','ID_QLPOS2','','',''),
('2302',  'QL_POS3', '2400', 'IDV_QUESTPAN', '120', '220', '500', '125', '1','M_QUEST_WAITER','ID_QLPOS3','','',''),
('2303',  'QL_POS4', '2400', 'IDV_QUESTPAN', '120', '260', '500', '150', '1','M_QUEST_WAITER','ID_QLPOS4','','',''),
('2304',  'QL_POS5', '2400', 'IDV_QUESTPAN', '120', '300', '500', '175', '1','M_QUEST_WAITER','ID_QLPOS5','','',''),
('2305',  'QL_POS6', '2400', 'IDV_QUESTPAN', '120', '340', '500', '200', '1','M_QUEST_WAITER','ID_QLPOS6','','',''),
('2306',  'QL_POS7', '2400', 'IDV_QUESTPAN', '120', '380', '500', '225', '1','M_QUEST_WAITER','ID_QLPOS7','','',''),
('2307',  'QL_POS8', '2400', 'IDV_QUESTPAN', '120', '420', '500', '250', '1','M_QUEST_WAITER','ID_QLPOS8','','',''),
('2308',  'QL_POS9', '2400', 'IDV_QUESTPAN', '120', '460', '500', '275', '1','M_QUEST_WAITER','ID_QLPOS9','','',''),
('2309', 'QL_POS10', '2400', 'IDV_QUESTPAN', '120', '500', '500', '300', '1','M_QUEST_WAITER','ID_QLPOS10','','',''),
('2310', 'QL_POS11', '2400', 'IDV_QUESTPAN', '120', '540', '500', '325', '1','M_QUEST_WAITER','ID_QLPOS11','','',''),
('2311', 'QL_POS12', '2400', 'IDV_QUESTPAN', '120', '580', '500', '350', '1','M_QUEST_WAITER','ID_QLPOS12','','',''),
('2312', 'QL_POS13', '2400', 'IDV_QUESTPAN', '120', '620', '500', '375', '1','M_QUEST_WAITER','ID_QLPOS13','','',''),
('2313', 'QL_POS14', '2400', 'IDV_QUESTPAN', '120', '660', '500', '400', '1','M_QUEST_WAITER','ID_QLPOS14','','',''),
('2314', 'QL_POS15', '2400', 'IDV_QUESTPAN', '120', '700', '500', '425', '1','M_QUEST_WAITER','ID_QLPOS15','','',''),
('2315', 'QL_POS16', '2400', 'IDV_QUESTPAN', '120', '740', '500', '450', '1','M_QUEST_WAITER','ID_QLPOS16','','',''),

('2316', 'QL_MANAGER', '2400', 'IDV_QUESTPAN', '10', '10', '20', '20', '1','M_QUEST_MANAGER','','','',''),

--RECORD WHAT/WHERE EACH QUEST IS PUT
('2320',  'QL_1RECORDER', '2400', 'IDV_QUESTPAN', '20', '10', '30', '15', '1','M_QUEST_RECORDER','','','',''),
('2321',  'QL_2RECORDER', '2400', 'IDV_QUESTPAN', '20', '10', '30', '15', '1','M_QUEST_RECORDER','','','',''),
('2322',  'QL_3RECORDER', '2400', 'IDV_QUESTPAN', '20', '10', '30', '15', '1','M_QUEST_RECORDER','','','',''),
('2323',  'QL_4RECORDER', '2400', 'IDV_QUESTPAN', '20', '10', '30', '15', '1','M_QUEST_RECORDER','','','',''),
('2324',  'QL_5RECORDER', '2400', 'IDV_QUESTPAN', '20', '10', '30', '15', '1','M_QUEST_RECORDER','','','',''),
('2325',  'QL_6RECORDER', '2400', 'IDV_QUESTPAN', '20', '10', '30', '15', '1','M_QUEST_RECORDER','','','',''),
('2326',  'QL_7RECORDER', '2400', 'IDV_QUESTPAN', '20', '10', '30', '15', '1','M_QUEST_RECORDER','','','',''),
('2327',  'QL_8RECORDER', '2400', 'IDV_QUESTPAN', '20', '10', '30', '15', '1','M_QUEST_RECORDER','','','',''),
('2328',  'QL_9RECORDER', '2400', 'IDV_QUESTPAN', '20', '10', '30', '15', '1','M_QUEST_RECORDER','','','',''),
('2329', 'QL_10RECORDER', '2400', 'IDV_QUESTPAN', '20', '10', '30', '15', '1','M_QUEST_RECORDER','','','',''),
('2330', 'QL_11RECORDER', '2400', 'IDV_QUESTPAN', '20', '10', '30', '15', '1','M_QUEST_RECORDER','','','',''),
('2331', 'QL_12RECORDER', '2400', 'IDV_QUESTPAN', '20', '10', '30', '15', '1','M_QUEST_RECORDER','','','',''),
('2332', 'QL_13RECORDER', '2400', 'IDV_QUESTPAN', '20', '10', '30', '15', '1','M_QUEST_RECORDER','','','',''),
('2333', 'QL_14RECORDER', '2400', 'IDV_QUESTPAN', '20', '10', '30', '15', '1','M_QUEST_RECORDER','','','',''),
('2334', 'QL_15RECORDER', '2400', 'IDV_QUESTPAN', '20', '10', '30', '15', '1','M_QUEST_RECORDER','','','',''),
('2334', 'QL_16RECORDER', '2400', 'IDV_QUESTPAN', '20', '10', '30', '15', '1','M_QUEST_RECORDER','','','','');


delete from transitions where automaton like 'M_QUEST_%';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code")
VALUES 

-- The state of which line is open
-- the state of each line - what map item is written to it



--M_QUEST_MANAGER
('M_QUEST_MANAGER','0','waiting','Z_EPSILON', '', '', '
        WPARM=0; 
        BPARM=0;   
        
'),
('M_QUEST_MANAGER','waiting','startposted','WAIT', 'Q1_START', '', '
        WTEMP1 = WTEMP1 + 1; //set the current row and update the recorder for the quest (pattern: set, signal,- read,set)
        WPARM = QL_POS + WTEMP1;
        SIGNAL(QL_1RECORDER,SIG_RECORD_POSITION);
     
       //NOW QUEST_WAITER HAS TO GET THE RIGHT TEXT
        BPARM = 1; // THE MAPPING KEY for the first quest
        MAPi(BPARM,S00_QUEST); 
        SIGNAL(WPARM, SIG_WRITE_TEXT);

'),
('M_QUEST_MANAGER','waiting','startposted','WAIT', 'Q2_START', '', '
        WTEMP1 = WTEMP1 + 1; WPARM = QL_POS + WTEMP1; SIGNAL(QL_2RECORDER,SIG_RECORD_POSITION);
        BPARM = 2; MAPi(BPARM,S00_QUEST); SIGNAL(WPARM, SIG_WRITE_TEXT); '),

('M_QUEST_MANAGER','waiting','startposted','WAIT', 'Q3_START', '', '
        WTEMP1 = WTEMP1 + 1; WPARM = QL_POS + WTEMP1; SIGNAL(QL_3RECORDER,SIG_RECORD_POSITION);
        BPARM = 3; MAPi(BPARM,S00_QUEST); SIGNAL(WPARM, SIG_WRITE_TEXT); '),

('M_QUEST_MANAGER','waiting','startposted','WAIT', 'Q4_START', '', '
        WTEMP1 = WTEMP1 + 1; WPARM = QL_POS + WTEMP1; SIGNAL(QL_4RECORDER,SIG_RECORD_POSITION);
        BPARM = 4; MAPi(BPARM,S00_QUEST); SIGNAL(WPARM, SIG_WRITE_TEXT); '),

('M_QUEST_MANAGER','waiting','startposted','WAIT', 'Q5_START', '', '
        WTEMP1 = WTEMP1 + 1; WPARM = QL_POS + WTEMP1; SIGNAL(QL_5RECORDER,SIG_RECORD_POSITION);
        BPARM = 5; MAPi(BPARM,S00_QUEST); SIGNAL(WPARM, SIG_WRITE_TEXT); '),

('M_QUEST_MANAGER','waiting','startposted','WAIT', 'Q6_START', '', '
        WTEMP1 = WTEMP1 + 1; WPARM = QL_POS + WTEMP1; SIGNAL(QL_6RECORDER,SIG_RECORD_POSITION);
        BPARM = 6; MAPi(BPARM,S00_QUEST); SIGNAL(WPARM, SIG_WRITE_TEXT); '),

('M_QUEST_MANAGER','waiting','startposted','WAIT', 'Q7_START', '', '
        WTEMP1 = WTEMP1 + 1; WPARM = QL_POS + WTEMP1; SIGNAL(QL_7RECORDER,SIG_RECORD_POSITION);
        BPARM = 7; MAPi(BPARM,S00_QUEST); SIGNAL(WPARM, SIG_WRITE_TEXT); '),

('M_QUEST_MANAGER','waiting','startposted','WAIT', 'Q8_START', '', '
        WTEMP1 = WTEMP1 + 1; WPARM = QL_POS + WTEMP1; SIGNAL(QL_8RECORDER,SIG_RECORD_POSITION);
        BPARM = 8; MAPi(BPARM,S00_QUEST); SIGNAL(WPARM, SIG_WRITE_TEXT); '),
        
('M_QUEST_MANAGER','waiting','startposted','WAIT', 'Q9_START', '', '
        WTEMP1 = WTEMP1 + 1; WPARM = QL_POS + WTEMP1; SIGNAL(QL_9RECORDER,SIG_RECORD_POSITION);
        BPARM = 9; MAPi(BPARM,S00_QUEST); SIGNAL(WPARM, SIG_WRITE_TEXT); '),

('M_QUEST_MANAGER','waiting','startposted','WAIT', 'Q10_START', '', '
        WTEMP1 = WTEMP1 + 1; WPARM = QL_POS + WTEMP1; SIGNAL(QL_10RECORDER,SIG_RECORD_POSITION);
        BPARM = 10; MAPi(BPARM,S00_QUEST); SIGNAL(WPARM, SIG_WRITE_TEXT); '),

('M_QUEST_MANAGER','waiting','startposted','WAIT', 'Q11_START', '', '
        WTEMP1 = WTEMP1 + 1; WPARM = QL_POS + WTEMP1; SIGNAL(QL_11RECORDER,SIG_RECORD_POSITION);
        BPARM = 11; MAPi(BPARM,S00_QUEST); SIGNAL(WPARM, SIG_WRITE_TEXT); '),

('M_QUEST_MANAGER','waiting','startposted','WAIT', 'Q12_START', '', '
        WTEMP1 = WTEMP1 + 1; WPARM = QL_POS + WTEMP1; SIGNAL(QL_12RECORDER,SIG_RECORD_POSITION);
        BPARM = 12; MAPi(BPARM,S00_QUEST); SIGNAL(WPARM, SIG_WRITE_TEXT); '),
        
('M_QUEST_MANAGER','waiting','startposted','WAIT', 'Q13_START', '', '
        WTEMP1 = WTEMP1 + 1; WPARM = QL_POS + WTEMP1; SIGNAL(QL_13RECORDER,SIG_RECORD_POSITION);
        BPARM = 13; MAPi(BPARM,S00_QUEST); SIGNAL(WPARM, SIG_WRITE_TEXT); '),        

('M_QUEST_MANAGER','waiting','startposted','WAIT', 'Q14_START', '', '
        WTEMP1 = WTEMP1 + 1; WPARM = QL_POS + WTEMP1; SIGNAL(QL_14RECORDER,SIG_RECORD_POSITION);
        BPARM = 14; MAPi(BPARM,S00_QUEST); SIGNAL(WPARM, SIG_WRITE_TEXT); '),

('M_QUEST_MANAGER','waiting','startposted','WAIT', 'Q15_START', '', '
        WTEMP1 = WTEMP1 + 1; WPARM = QL_POS + WTEMP1; SIGNAL(QL_15RECORDER,SIG_RECORD_POSITION);
        BPARM = 15; MAPi(BPARM,S00_QUEST); SIGNAL(WPARM, SIG_WRITE_TEXT); '),
        
('M_QUEST_MANAGER','waiting','startposted','WAIT', 'Q16_START', '', '
        WTEMP1 = WTEMP1 + 1; WPARM = QL_POS + WTEMP1; SIGNAL(QL_16RECORDER,SIG_RECORD_POSITION);
        BPARM = 16; MAPi(BPARM,S00_QUEST); SIGNAL(WPARM, SIG_WRITE_TEXT); '),        

---
('M_QUEST_MANAGER','startposted','0','Z_EPSILON', '', '', ''),
---
('M_QUEST_MANAGER','waiting', 'postfini','WAIT', '', 'Q1_STOP', '
            REF_MACHINE(QL_1RECORDER);  //has to find which row Q1 is in
            WPARM = R_WPARM; //The position  machine
            BPARM = 1;
            MAPi(BPARM,S00_QUEST); 
            SIGNAL(WPARM, SIG_DIM_TEXT);

'),
('M_QUEST_MANAGER','waiting',  'postfini','WAIT', '', 'Q2_STOP', '
        REF_MACHINE(QL_2RECORDER); WPARM = R_WPARM; BPARM = 2;
        MAPi(BPARM,S00_QUEST);  SIGNAL(WPARM, SIG_DIM_TEXT);'),

('M_QUEST_MANAGER','waiting',  'postfini','WAIT', '', 'Q3_STOP', '
        REF_MACHINE(QL_3RECORDER); WPARM = R_WPARM; BPARM = 3;
        MAPi(BPARM,S00_QUEST);  SIGNAL(WPARM, SIG_DIM_TEXT);'),

('M_QUEST_MANAGER','waiting',  'postfini','WAIT', '', 'Q4_STOP', '
        REF_MACHINE(QL_4RECORDER); WPARM = R_WPARM; BPARM = 4;
        MAPi(BPARM,S00_QUEST);  SIGNAL(WPARM, SIG_DIM_TEXT);'),

('M_QUEST_MANAGER','waiting',  'postfini','WAIT', '', 'Q5_STOP', '
        REF_MACHINE(QL_5RECORDER); WPARM = R_WPARM; BPARM = 5;
        MAPi(BPARM,S00_QUEST);  SIGNAL(WPARM, SIG_DIM_TEXT);'),

('M_QUEST_MANAGER','waiting',  'postfini','WAIT', '', 'Q6_STOP', '
        REF_MACHINE(QL_6RECORDER); WPARM = R_WPARM; BPARM = 6;
        MAPi(BPARM,S00_QUEST);  SIGNAL(WPARM, SIG_DIM_TEXT);'),

('M_QUEST_MANAGER','waiting',  'postfini','WAIT', '', 'Q7_STOP', '
        REF_MACHINE(QL_7RECORDER); WPARM = R_WPARM; BPARM = 7;
        MAPi(BPARM,S00_QUEST);  SIGNAL(WPARM, SIG_DIM_TEXT);'),

('M_QUEST_MANAGER','waiting',  'postfini','WAIT', '', 'Q8_STOP', '
        REF_MACHINE(QL_8RECORDER); WPARM = R_WPARM; BPARM = 8;
        MAPi(BPARM,S00_QUEST);  SIGNAL(WPARM, SIG_DIM_TEXT);'),

('M_QUEST_MANAGER','waiting',  'postfini','WAIT', '', 'Q9_STOP', '
        REF_MACHINE(QL_9RECORDER); WPARM = R_WPARM; BPARM = 9;
        MAPi(BPARM,S00_QUEST);  SIGNAL(WPARM, SIG_DIM_TEXT);'),

('M_QUEST_MANAGER','waiting',  'postfini','WAIT', '', 'Q10_STOP', '
        REF_MACHINE(QL_10RECORDER); WPARM = R_WPARM; BPARM = 10;
        MAPi(BPARM,S00_QUEST);  SIGNAL(WPARM, SIG_DIM_TEXT);'),

('M_QUEST_MANAGER','waiting',  'postfini','WAIT', '', 'Q11_STOP', '
        REF_MACHINE(QL_11RECORDER); WPARM = R_WPARM; BPARM = 11;
        MAPi(BPARM,S00_QUEST);  SIGNAL(WPARM, SIG_DIM_TEXT);'),

('M_QUEST_MANAGER','waiting',  'postfini','WAIT', '', 'Q12_STOP', '
        REF_MACHINE(QL_12RECORDER); WPARM = R_WPARM; BPARM = 12;
        MAPi(BPARM,S00_QUEST);  SIGNAL(WPARM, SIG_DIM_TEXT);'),

('M_QUEST_MANAGER','waiting',  'postfini','WAIT', '', 'Q13_STOP', '
        REF_MACHINE(QL_13RECORDER); WPARM = R_WPARM; BPARM = 13;
        MAPi(BPARM,S00_QUEST);  SIGNAL(WPARM, SIG_DIM_TEXT);'),

('M_QUEST_MANAGER','waiting',  'postfini','WAIT', '', 'Q14_STOP', '
        REF_MACHINE(QL_14RECORDER); WPARM = R_WPARM; BPARM = 14;
        MAPi(BPARM,S00_QUEST);  SIGNAL(WPARM, SIG_DIM_TEXT);'),

('M_QUEST_MANAGER','waiting',  'postfini','WAIT', '', 'Q15_STOP', '
        REF_MACHINE(QL_15RECORDER); WPARM = R_WPARM; BPARM = 15;
        MAPi(BPARM,S00_QUEST);  SIGNAL(WPARM, SIG_DIM_TEXT);'),

('M_QUEST_MANAGER','waiting',  'postfini','WAIT', '', 'Q16_STOP', '
        REF_MACHINE(QL_16RECORDER); WPARM = R_WPARM; BPARM = 16;
        MAPi(BPARM,S00_QUEST);  SIGNAL(WPARM, SIG_DIM_TEXT);'),


('M_QUEST_MANAGER','postfini','0','Z_EPSILON', '', '', ''),
-----------------------------

('M_QUEST_RECORDER','0', 'posrecorded', 'WAIT', '', 'SIG_RECORD_POSITION', '
        REF_MACHINE(QL_MANAGER);
        ASSIGN(WPARM,R_WPARM); //Each individual quest recorder now knows its position ie. QL_POS1
'),
('M_QUEST_RECORDER','posrecorded', '0', 'Z_EPSILON', '', '', ''),


-------------------------
('M_QUEST_WAITER','0', 'waiting', 'Z_EPSILON', '', '', '
        CLEAR(WPARM);
'),

('M_QUEST_WAITER', 'waiting', 'showText', 'WAIT', '0', 'SIG_WRITE_TEXT', '
         REF_MACHINE(QL_MANAGER);
         ASSIGN(WPARM,R_BPARM);
         WTEMP1 = "[ ]";
         WTEMP2 = WTEMP1 + WPARM;
         SETTEXT(WIP1,WTEMP2);      
'),
('M_QUEST_WAITER', 'waiting', 'dimText', 'WAIT', '0', 'SIG_DIM_TEXT', '
         REF_MACHINE(QL_MANAGER);
         ASSIGN(WPARM,R_BPARM);
         WTEMP1 = "-------------------------------------------------"; 
         WTEMP2 = WTEMP1 + WPARM;
         SETTEXT(WIP1,WTEMP1);      
'),
('M_QUEST_WAITER', 'showText', '0', 'Z_EPSILON', '', '', ''),
('M_QUEST_WAITER', 'dimText', '0', 'Z_EPSILON', '', '', '');








-- ('M_QUEST_MANAGER','waiting',  'startposted','WAIT', '', 'Q2_START', ''),
-- ('M_QUEST_MANAGER','waiting',  'startposted','WAIT', '', 'Q3_START', ''),
-- ('M_QUEST_MANAGER','waiting',  'startposted','WAIT', '', 'Q4_START', ''),
-- ('M_QUEST_MANAGER','waiting',  'startposted','WAIT', '', 'Q5_START', ''),
-- ('M_QUEST_MANAGER','waiting',  'startposted','WAIT', '', 'Q6_START', ''),
-- ('M_QUEST_MANAGER','waiting',  'startposted','WAIT', '', 'Q7_START', ''),
-- ('M_QUEST_MANAGER','waiting',  'startposted','WAIT', '', 'Q8_START', ''),
-- ('M_QUEST_MANAGER','waiting',  'startposted','WAIT', '', 'Q9_START', ''),
-- ('M_QUEST_MANAGER','waiting',  'startposted','WAIT', '', 'Q10_START', ''),
-- ('M_QUEST_MANAGER','waiting',  'startposted','WAIT', '', 'Q11_START', ''),
-- ('M_QUEST_MANAGER','waiting',  'startposted','WAIT', '', 'Q12_START', ''),

-- ('M_QUEST_MANAGER','waiting',  'postfini','WAIT', '', 'Q1_END', ''),
-- ('M_QUEST_MANAGER','waiting',  'postfini','WAIT', '', 'Q2_END', '
--     //has to find which row Q2 is in
-- '),
-- ('M_QUEST_MANAGER','waiting',  'postfini','WAIT', '', 'Q3_END', ''),
-- ('M_QUEST_MANAGER','waiting',  'postfini','WAIT', '', 'Q4_END', ''),
-- ('M_QUEST_MANAGER','waiting',  'postfini','WAIT', '', 'Q5_END', ''),
-- ('M_QUEST_MANAGER','waiting',  'postfini','WAIT', '', 'Q6_END', ''),
-- ('M_QUEST_MANAGER','waiting',  'postfini','WAIT', '', 'Q7_END', ''),
-- ('M_QUEST_MANAGER','waiting',  'postfini','WAIT', '', 'Q8_END', ''),
-- ('M_QUEST_MANAGER','waiting',  'postfini','WAIT', '', 'Q9_END', ''),
-- ('M_QUEST_MANAGER','waiting',  'postfini','WAIT', '', 'Q10_END', ''),
-- ('M_QUEST_MANAGER','waiting',  'postfini','WAIT', '', 'Q11_END', ''),
-- ('M_QUEST_MANAGER','waiting',  'postfini','WAIT', '', 'Q12_END', ''),
-- ('M_QUEST_MANAGER','waiting',  '0','Z_EPSILON', '', 'Q12_END', ''),