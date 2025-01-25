
-- create a map of these quests
-- map should have quest id and description
-- Create a waiter -- signal in quest begin and quest complete 
-- on quest begin - add to screen in a color 
-- on quest complete -- change color to grey
-- related script --> enchanted stone looks at puzzle completion

-- Quest Log

-- - [e ] Find the ancient map in the Wilderness
-- - [g ] Recover the seed of Azaria’s unity
-- - [g ] Excavate the Ancient Crypts in the canyons
-- - [g ] Restore the pyramid of the eyes
-- - [e ] Read the signs of the ancients
-- - [g ] Perform the ritual of the 7 moons

-- Meflin Quests

-- - [e ] Find Neelp’s sacred amulet
-- - [e ] Bring Neelp the soul of a fish
-- - [e ] Bring Neelp a red gopa berry
-- - [e ] Find the Emerald of light for Rathe
-- - [e ] Find a green gopa berry for Rathe
-- - [e ] Bring Thaor a rare plant from the nystrom mines
-- - [e ] Bring Thaor the flower bud
-- - [g ] Find the enchanted stone for Perst
-- - [g ] Manufacture an item for Perst

--QL_glow 409,8

-- Learn more about …

delete from spr_names where name = 'IDS_BLACKBACK';
delete from spr_names where name = 'IDS_CLEARBACK';
delete from spr_names where name = 'IDS_QL_GLOW';
INSERT INTO "main"."spr_names" ("name", "value") 
VALUES 
('IDS_BLACKBACK', 'BLACKBACK'),
('IDS_CLEARBACK', 'CLEARBACK'),
('IDS_QL_GLOW', 'IDS_QL_GLOW');
-- Add the view
delete from views where [view_name] like 'IDV_QUESTPAN%';

INSERT INTO "main"."views" ( "view_name", "Z", "backgroundAudio", "locator_view", "behavior_id", "portal_filename", "surface_filename") 
VALUES 
('IDV_QUESTPAN', '1', '0', '1', '2', 'wdepanel.vct', 'spacepanbig'),
('IDV_QUESTPANW', '1', '0', '1', '2', 'wdepanel.vct', 'spacepanbig2');

delete from map where op like 'S00_QUEST%';
INSERT INTO "main"."map" ("op", "key", "value")
VALUES 
--identify hidden items
('S00_QUEST',  '0', ' Find the key to power the portal.'), 
('S00_QUEST',  '1', ' Find the ancient map in the wilderness.'), 

('S00_QUEST',  '2', ' Recover the seed of Azarian unity.'),
('S00_QUEST',  '3', ' Excavate the Ancient crypts in the canyons.'),
('S00_QUEST',  '4', ' Restore the pyramid of the eyes.'),
('S00_QUEST',  '5', ' Read the signs of the ancients.'),
('S00_QUEST',  '6', ' Perform the ritual of the 7 moons.'),
('S00_QUEST',  '20', 'Plant the seed to evolve to Kamiozan.'),

('S00_QUEST',  '7', ' Find the sacred amulet that belongs to Neelp.'),
('S00_QUEST',  '8', ' Bring Neelp the soul of a fish.'),
('S00_QUEST',  '9', ' Bring Neelp a red gopa berry.'),
('S00_QUEST', '10', ' Find the Emerald of light for Rathe.'),
('S00_QUEST', '11', ' Bring a green gopa berry to Rathe.'),
('S00_QUEST', '12', ' Bring Thaor a rare plant from the nystrom mines.'),
('S00_QUEST', '13', ' Bring Thaor the flower bud.'),
('S00_QUEST', '14', ' Find the enchanted stone for Perst.'),
('S00_QUEST', '15', ' Manufacture an item for Perst.'),

('S00_QUESTLOC',  '0', ' IDV_ORIE'), 
('S00_QUESTLOC',  '1', ' IDV_N2A'),
('S00_QUESTLOC',  '2', ' IDV_SNC10PT0'),
('S00_QUESTLOC',  '3', ' IDV_WR1'),
('S00_QUESTLOC',  '4', ' IDV_EYEA'),
('S00_QUESTLOC',  '5', ' IDV_MAPROOM'),
('S00_QUESTLOC',  '6', ' IDV_MOON1'),
('S00_QUESTLOC',  '7', ' IDV_IDV_N2C'),
('S00_QUESTLOC',  '8', ' IDV_FA1PAN'),
('S00_QUESTLOC',  '9', ' IDV_CONTINENT'),
('S00_QUESTLOC', '10', ' IDV_TMPLPTH9'),
('S00_QUESTLOC', '11', ' IDV_CONTINENT'),
('S00_QUESTLOC', '12', ' IDV_QUARSA'),
('S00_QUESTLOC', '13', ' IDV_CONTINENT'),
('S00_QUESTLOC', '14', ' IDV_CONTINENT'),
('S00_QUESTLOC', '15', ' IDV_CTO3');



delete from controls where [view] like 'IDV_QUEST%';

--CREATE TABLE q_local_complete (p_0 TEXT,p_1 TEXT,p_2 TEXT,p_3 TEXT, PRIMARY KEY ([p_0],[p_1],[p_2],[p_3]) ON CONFLICT REPLACE);
insert into controls ([view],[id], [type],[image],[image_selected],[x],[y],[border],[values],[default],[ids_font],[font_color],[code]) values

('IDV_QUESTPAN', 19,'LISTBOX',  'IDS_BLACKBACK','IDS_BLACKBACK',104, 185, 7, 'q_local_active','2','IDS_FONTENG_BIG',14871474,
    'myvar = LB_SELECTED_ROW_TEXT;
    LOADVIEW(myvar);
'),

('IDV_QUESTPAN', 20,'LISTBOX',  'IDS_BLACKBACK','IDS_BLACKBACK',104, 434, 7, 'q_local_complete','2','IDS_FONTENG_BIG','#e0e0e0',
    'myvar = LB_SELECTED_ROW_TEXT;
    LOADVIEW(myvar);
'),

('IDV_QUESTPANW', 21,'LISTBOX',  'IDS_BLACKBACK','IDS_BLACKBACK',104, 185, 7, 'q_world_active','2','IDS_FONTENG_BIG',14871474,
    'myvar = LB_SELECTED_ROW_TEXT;
    LOADVIEW(myvar);
'),

('IDV_QUESTPANW', 22,'LISTBOX',  'IDS_BLACKBACK','IDS_BLACKBACK',104, 434, 7, 'q_world_complete','2','IDS_FONTENG_BIG','#e0e0e0',
    'myvar = LB_SELECTED_ROW_TEXT;
    LOADVIEW(myvar);
');


delete from main.machines where [name] like 'QL_%';

INSERT INTO "main"."machines" ("name","view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") 
VALUES 

( 'QL_WORLDTAB', 'IDV_QUESTPAN', '226', '80', '366',  '103', '1','M_QUEST_TAB','IDV_QUESTPANW','','',''),
( 'QL_MYTAB', 'IDV_QUESTPANW', '115', '80', '207',  '103', '1','M_QUEST_TAB','IDV_QUESTPAN','','',''),

( 'QL_WORLDEXT',  'IDV_QUESTPAN', '112', '24', '144',  '51', '1','M_QUEST_EXT','','','',''),
( 'QL_MYTABEXT', 'IDV_QUESTPANW', '112', '24', '144',  '51', '1','M_QUEST_EXT','','','',''),

('QL_MANAGER', 'IDV_QUESTPAN', '10', '10', '20', '20', '1','M_QUEST_MANAGER','','','','');

--RECORD WHAT/WHERE EACH QUEST IS PUT


delete from transitions where automaton like 'M_QUEST_%';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code")
VALUES 

('M_QUEST_TAB','0','switched','CLICK', '', '', '
        PLAYWAVE(SOUND_BTNDRAG);
        LOADVIEW(WIP1);          
'),
('M_QUEST_TAB','switched','0','Z_EPSILON', '', '', ''),
--

('M_QUEST_EXT','0','exited','CLICK', '', '', '
       REF_MACHINE(S0_QL_BTN);
       LOADVIEW(R_WPARM);       
'),
('M_QUEST_EXT','exited','0','Z_EPSILON', '', '', ''),

-- The state of which line is open
-- the state of each line - what map item is written to it



--M_QUEST_MANAGER
 ('M_QUEST_MANAGER','0','waiting','Z_EPSILON', '', '', '    
 '),
('M_QUEST_MANAGER','waiting','startposted','WAIT', 'Q0_START', '', '
        BPARM = 0; MAPi(BPARM,S00_QUEST); 
        WPARM = 0; MAPi(WPARM,S00_QUESTLOC); 
        q_local_active(BPARM, 0,active,WPARM).
'),
('M_QUEST_MANAGER','waiting','startposted','WAIT', 'Q1_START', '', '
        BPARM = 1; MAPi(BPARM,S00_QUEST); 
        WPARM = 1; MAPi(WPARM,S00_QUESTLOC); 
        q_local_active(BPARM, 1,active,WPARM).
'),
('M_QUEST_MANAGER','waiting','startposted','WAIT', 'Q2_START', '', '
        BPARM = 2; MAPi(BPARM,S00_QUEST); 
        WPARM = 2; MAPi(WPARM,S00_QUESTLOC); 
        q_world_active(BPARM, 2,active,WPARM).
        '),

('M_QUEST_MANAGER','waiting','startposted','WAIT', 'Q3_START', '', '
        BPARM = 3; MAPi(BPARM,S00_QUEST); 
        WPARM = 3; MAPi(WPARM,S00_QUESTLOC); 
        q_world_active(BPARM, 3,active,WPARM).
        '),
('M_QUEST_MANAGER','waiting','startposted','WAIT', 'Q4_START', '', '
        BPARM = 4; MAPi(BPARM,S00_QUEST); 
        WPARM = 4; MAPi(WPARM,S00_QUESTLOC); 
        q_world_active(BPARM, 4,active,WPARM).
        '),

('M_QUEST_MANAGER','waiting','startposted','WAIT', 'Q5_START', '', '
        BPARM = 5; MAPi(BPARM,S00_QUEST); 
        WPARM = 5; MAPi(WPARM,S00_QUESTLOC); 
        q_local_active(BPARM, 5,active,WPARM).
        '),

('M_QUEST_MANAGER','waiting','startposted','WAIT', 'Q6_START', '', '
        BPARM = 6; MAPi(BPARM,S00_QUEST); 
        WPARM = 6; MAPi(WPARM,S00_QUESTLOC); 
        q_world_active(BPARM, 6,active,WPARM).
        '),

('M_QUEST_MANAGER','waiting','startposted','WAIT', 'Q7_START', '', '
        BPARM = 7; MAPi(BPARM,S00_QUEST); 
        WPARM = 7; MAPi(WPARM,S00_QUESTLOC); 
        q_local_active(BPARM, 7,active,WPARM).
        '),
        
('M_QUEST_MANAGER','waiting','startposted','WAIT', 'Q8_START', '', '
        BPARM = 8; MAPi(BPARM,S00_QUEST); 
        WPARM = 8; MAPi(WPARM,S00_QUESTLOC); 
        q_local_active(BPARM, 8,active,WPARM).
        '),
('M_QUEST_MANAGER','waiting','startposted','WAIT', 'Q9_START', '', '
        BPARM = 9; MAPi(BPARM,S00_QUEST); 
        WPARM = 9; MAPi(WPARM,S00_QUESTLOC); 
        q_local_active(BPARM, 9,active,WPARM).
        '),
('M_QUEST_MANAGER','waiting','startposted','WAIT', 'Q10_START', '', '
          BPARM = 10; MAPi(BPARM,S00_QUEST); 
          WPARM = 10; MAPi(WPARM,S00_QUESTLOC); 
          q_local_active(BPARM,10,active,WPARM).
        '),
('M_QUEST_MANAGER','waiting','startposted','WAIT', 'Q11_START', '', '
         BPARM = 11; MAPi(BPARM,S00_QUEST); 
          WPARM = 11; MAPi(WPARM,S00_QUESTLOC); 
          q_local_active(BPARM,11,active,WPARM).
        '),
('M_QUEST_MANAGER','waiting','startposted','WAIT', 'Q12_START', '', '
         BPARM = 12; MAPi(BPARM,S00_QUEST); 
          WPARM = 12; MAPi(WPARM,S00_QUESTLOC); 
          q_local_active(BPARM,12,active,WPARM).
        '),
('M_QUEST_MANAGER','waiting','startposted','WAIT', 'Q13_START', '', '
         BPARM = 13; MAPi(BPARM,S00_QUEST); 
          WPARM = 13; MAPi(WPARM,S00_QUESTLOC); 
          q_local_active(BPARM,13,active,WPARM).
        '),
('M_QUEST_MANAGER','waiting','startposted','WAIT', 'Q14_START', '', '
         BPARM = 14; MAPi(BPARM,S00_QUEST); 
          WPARM = 14; MAPi(WPARM,S00_QUESTLOC); 
          q_local_active(BPARM,14,active,WPARM).
        '),
('M_QUEST_MANAGER','waiting','startposted','WAIT', 'Q15_START', '', '
        BPARM = 15; MAPi(BPARM,S00_QUEST); 
          WPARM = 15; MAPi(WPARM,S00_QUESTLOC); 
          q_world_active(BPARM,15,active,WPARM).
        '), 
('M_QUEST_MANAGER','waiting','startposted','WAIT', 'Q16_START', '', '
         BPARM = 16; MAPi(BPARM,S00_QUEST); 
          WPARM = 16; MAPi(WPARM,S00_QUESTLOC); 
          q_local_active(BPARM,16,active,WPARM).
        '),
---
('M_QUEST_MANAGER','startposted','0','Z_EPSILON', '', '', '
        SIGNAL(S0_QL_BTN,SIG_GLOW);
'),
---
('M_QUEST_MANAGER','waiting', 'postfini','WAIT', 'Q0_STOP', '', '
        BPARM = 0; MAPi(BPARM,S00_QUEST); 
        WPARM = 0; MAPi(WPARM,S00_QUESTLOC);
        q_local_active(BPARM, 0,active,WPARM)~ 
        q_local_complete(BPARM, 0,complete,WPARM).

'),
('M_QUEST_MANAGER','waiting', 'postfini','WAIT', 'Q1_STOP', '', '
        BPARM = 1; MAPi(BPARM,S00_QUEST); 
        WPARM = 1; MAPi(WPARM,S00_QUESTLOC);
        q_local_active(BPARM, 1,active,WPARM)~ 
        q_local_complete(BPARM, 1,complete,WPARM).

'),
('M_QUEST_MANAGER','waiting',  'postfini','WAIT', 'Q2_STOP', '', '
        BPARM = 2; MAPi(BPARM,S00_QUEST); 
        WPARM = 2; MAPi(WPARM,S00_QUESTLOC);
        q_world_active(BPARM, 2,active,WPARM)~ 
        q_world_complete(BPARM, 2,complete,WPARM).
'),

('M_QUEST_MANAGER','waiting',  'postfini','WAIT', 'Q3_STOP', '', '
        BPARM = 3; MAPi(BPARM,S00_QUEST); 
        WPARM = 3; MAPi(WPARM,S00_QUESTLOC);
          q_world_active(BPARM, 3,active,WPARM)~ 
        q_world_complete(BPARM, 3,complete,WPARM).
'),
('M_QUEST_MANAGER','waiting',  'postfini','WAIT', 'Q4_STOP', '', '
        BPARM = 4; MAPi(BPARM,S00_QUEST); 
        WPARM = 4; MAPi(WPARM,S00_QUESTLOC);
          q_world_active(BPARM, 4,active,WPARM)~ 
        q_world_complete(BPARM, 4,complete,WPARM).
'),
('M_QUEST_MANAGER','waiting',  'postfini','WAIT', 'Q5_STOP', '', '
       BPARM = 5; MAPi(BPARM,S00_QUEST); 
        WPARM = 5; MAPi(WPARM,S00_QUESTLOC);
          q_local_active(BPARM, 5,active,WPARM)~ 
        q_local_complete(BPARM, 5,complete,WPARM).
'),

('M_QUEST_MANAGER','waiting',  'postfini','WAIT', 'Q6_STOP', '', '
        BPARM = 6; MAPi(BPARM,S00_QUEST); 
        WPARM = 6; MAPi(WPARM,S00_QUESTLOC);
          q_world_active(BPARM, 6,active,WPARM)~ 
        q_world_complete(BPARM, 6,complete,WPARM).
'),
('M_QUEST_MANAGER','waiting',  'postfini','WAIT', 'Q7_STOP', '', '
        BPARM = 7; MAPi(BPARM,S00_QUEST); 
        WPARM = 7; MAPi(WPARM,S00_QUESTLOC);
          q_local_active(BPARM, 7,active,WPARM)~ 
        q_local_complete(BPARM, 7,complete,WPARM).
'),

('M_QUEST_MANAGER','waiting',  'postfini','WAIT', 'Q8_STOP', '', '
        BPARM = 8; MAPi(BPARM,S00_QUEST); 
        WPARM = 8; MAPi(WPARM,S00_QUESTLOC);
          q_local_active(BPARM, 8,active,WPARM)~ 
        q_local_complete(BPARM, 8,complete,WPARM).
'),

('M_QUEST_MANAGER','waiting',  'postfini','WAIT', 'Q9_STOP', '', '
        BPARM = 9; MAPi(BPARM,S00_QUEST); 
        WPARM = 9; MAPi(WPARM,S00_QUESTLOC);
          q_local_active(BPARM, 9,active,WPARM)~ 
        q_local_complete(BPARM, 9,complete,WPARM).
'),      

('M_QUEST_MANAGER','waiting',  'postfini','WAIT', 'Q10_STOP', '', '
        BPARM = 10; MAPi(BPARM,S00_QUEST); 
        WPARM = 10; MAPi(WPARM,S00_QUESTLOC);
        q_local_active(BPARM, 10,active,WPARM)~ 
        q_local_complete(BPARM, 10,complete,WPARM).
'),
        
        

('M_QUEST_MANAGER','waiting',  'postfini','WAIT', 'Q11_STOP', '', '
        BPARM = 11; MAPi(BPARM,S00_QUEST); 
        WPARM = 11; MAPi(WPARM,S00_QUESTLOC);
          q_local_active(BPARM, 11,active,WPARM)~ 
        q_local_complete(BPARM, 11,complete,WPARM).
'),
        
        

('M_QUEST_MANAGER','waiting',  'postfini','WAIT', 'Q12_STOP', '', '
        BPARM = 12; MAPi(BPARM,S00_QUEST); 
        WPARM = 12; MAPi(WPARM,S00_QUESTLOC);
          q_local_active(BPARM, 12,active,WPARM)~ 
        q_local_complete(BPARM, 12,complete,WPARM).
'),

('M_QUEST_MANAGER','waiting',  'postfini','WAIT', 'Q13_STOP', '', '
        BPARM = 13; MAPi(BPARM,S00_QUEST); 
        WPARM = 13; MAPi(WPARM,S00_QUESTLOC);
          q_local_active(BPARM, 13,active,WPARM)~ 
        q_local_complete(BPARM, 13,complete,WPARM).
'),

('M_QUEST_MANAGER','waiting',  'postfini','WAIT', 'Q14_STOP', '', '
        BPARM = 14; MAPi(BPARM,S00_QUEST); 
        WPARM = 14; MAPi(WPARM,S00_QUESTLOC);
          q_word_active(BPARM, 14,active,WPARM)~ 
          q_world_complete(BPARM, 14,complete,WPARM).
'),


('M_QUEST_MANAGER','waiting',  'postfini','WAIT', 'Q15_STOP', '', '
        BPARM = 15; MAPi(BPARM,S00_QUEST); 
        WPARM = 15; MAPi(WPARM,S00_QUESTLOC);
        q_local_active(BPARM, 15,active,WPARM)~ 
        q_local_complete(BPARM, 15,complete,WPARM).
'),

('M_QUEST_MANAGER','waiting',  'postfini','WAIT', 'Q16_STOP', '', '
        BPARM = 16; MAPi(BPARM,S00_QUEST); 
        WPARM = 16; MAPi(WPARM,S00_QUESTLOC);
          q_local_active(BPARM, 16,active,WPARM)~ 
        q_local_complete(BPARM, 16,complete,WPARM).
'),


('M_QUEST_MANAGER','postfini','0','Z_EPSILON', '', '', '');
-----------------------------


-------------------------



-- ('S0_QL_BTNGLOW','IDV_MAIN_PANEL',423,9,463,49, 0, 'M_QLBTNGLOW', '', '', '', '');


delete from "main"."transitions" where [automaton] like 'M_QLBTN%';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code", "guard", "doc") 
VALUES 


('M_QLBTN', '0', '1', 'Z_EPSILON', '', '', '
   CLEAR(WOBJECT);
   SHOW();
', '', ''),
('M_QLBTN', '1', 'logPresent', 'DROP', 'IDD_LOGBOOKBTN', '', '
   WRITE("Deleting any entries for this player");
   q_local_active("%")~
   q_local_complete("%")~
   q_world_active("%")~
   q_world_complete("%")~
   SHOW(WOBJECT);
   ADDI(LWISDOM,1); SIGNALi(0,SID_ID);
   BPARM = 0;
', '', ''),

('M_QLBTN', 'logPresent', 'open', 'CLICK', '', '', '
    if((LVIEW == "IDV_QUESTPANW") || (LVIEW == "IDV_QUESTPAN")){
      BPARM = 1;
      WRITE("We are clicking the log button on the log button - stop that!");
    }
    if(BPARM == 0){
        MOV(WOBJECT,IDD_LOGBOOKBTN);
        SHOW(WOBJECT);
        MOV(WPARM,LVIEW);
    }
    LOADVIEW(IDV_QUESTPAN);
    BPARM = 0;
', '', ''),
('M_QLBTN', 'open', 'logPresent', 'Z_EPSILON', '', '', '', '', ''),
('M_QLBTN', 'logPresent', 'newQuest', 'WAIT', '', 'SIG_GLOW', '
        WRITE("GOT THE SIG_GLOW SIGNAL");
        PLAYWAVE(SOUND_POP);
        MOV(WSPRITE,IDS_QL_GLOW);
        ASHOW(WSPRITE);
', '', ''),
('M_QLBTN', 'newQuest', 'logPresent', 'Z_EPSILON', '', '', '', '', '');

