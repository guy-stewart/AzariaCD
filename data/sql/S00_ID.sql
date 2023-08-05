delete from games;

-- #define LKARMA        0x70
-- #define LSTRENGTH    0x71
-- #define LWISDOM        0x72
-- #define LENERGY        0x73
-- #define LSEX        0x74
-- #define LWEALTH        0x75
-- #define LVIEW        0x76

-- #define OKARMA        0x77
-- #define OSTRENGTH    0x78
-- #define OWISDOM        0x79
-- #define OENERGY        0x7A
-- #define OSEX        0x7B
-- #define OWEALTH        0x7C
-- #define OVIEW        0x7D


delete from "main"."machines" where [name] like 'SID_%';
INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") 
VALUES 
('64', 'SID_HALO', '3', 'IDV_ID', '30', '0', '70', '40', '3', 'M_HALO', '', '', '', ''),
('65', 'SID_SPELL', '3', 'IDV_ID', '10', '50', '80', '150', '3', 'M_IDSPELL', '', '', '', ''),
('66', 'SID_ID', '3', 'IDV_ID', '0', '0', '101', '171', '3', 'M_ID', 'LWISDOM', 'LSEX', '0', 'SID_AURA'),
('67', 'SID_PED', '3', 'IDV_ID', '0', '129', '99', '173', '3', 'M_PED', '', '', '', ''),
('68', 'SID_AURA', '3', 'IDV_ID', '0', '0', '112', '100', '3', 'M_AURA', '', '', '', ''),

('48', 'SID_DEC_WISDOM', '3', 'IDV_ID', '0', '0', '0', '0', '3', 'M_DEC_WISDOM', '', '', '', ''),
('49', 'SID_INC_WISDOM', '3', 'IDV_ID', '0', '0', '0', '0', '3', 'M_INC_WISDOM', '', '', '', ''),
('50', 'SID_DEC_STRENGTH', '3', 'IDV_ID', '0', '0', '0', '0', '3', 'M_DEC_STRENGTH', '', '', '', ''),
('51', 'SID_INC_STRENGTH', '3', 'IDV_ID', '0', '0', '0', '0', '3', 'M_INC_STRENGTH', '', '', '', ''),
('52', 'SID_DEC_ENERGY', '3', 'IDV_ID', '0', '0', '0', '0', '3', 'M_DEC_ENERGY', '', '', '', ''),
('53', 'SID_INC_ENERGY', '3', 'IDV_ID', '0', '0', '0', '0', '3', 'M_INC_ENERGY', '', '', '', ''),
('54', 'SID_DEC_KARMA', '3', 'IDV_ID', '0', '0', '0', '0', '3', 'M_DEC_KARMA', '', '', '', ''),
('55', 'SID_INC_KARMA', '3', 'IDV_ID', '0', '0', '0', '0', '3', 'M_INC_KARMA', '', '', '', ''),
('56', 'SID_DEC_WEALTH', '3', 'IDV_ID', '0', '0', '0', '0', '3', 'M_DEC_WEALTH', '', '', '', ''),
('57', 'SID_INC_WEALTH', '3', 'IDV_ID', '0', '0', '0', '0', '3', 'M_INC_WEALTH', '', '', '', '');


--Making a test view ------------------
------------------------------------------------------
delete from "main"."idv" where [name] like 'IDV_TESTPAN%';
INSERT INTO "main"."idv" ("name", "id") VALUES ('IDV_TESTPAN', '40100');
delete from "main"."views" where [view_name] like 'IDV_TESTPAN%';
INSERT INTO "main"."views" ("view_id", "view_name", "Z", "backgroundAudio", "locator_view", "behavior_id", "portal_filename", "surface_filename") 
VALUES ('40100', 'IDV_TESTPAN', '1', '3', '1', '1', 'smlpanel.vct', 'testscreen');

delete from "main"."machines" where [name] like 'S0_TEST%';
INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") 
VALUES 
('40110', 'S0_TEST_1', '40100', 'IDV_TESTPAN', '40', '70', '110', '135',  '0', 'M_TEST1', '', '', '', ''),
('40110', 'S0_TEST_2', '40100', 'IDV_TESTPAN', '40', '148', '110', '212', '0', 'M_TEST2', '', '', '', ''),
('40110', 'S0_TEST_3', '40100', 'IDV_TESTPAN', '40', '212', '110', '290', '0', 'M_TEST3', '', '', '', '');

delete from "main"."transitions" where [automaton] like 'M_TEST%';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code", "guard", "doc") 
VALUES 
('M_TEST1', '0', '0', 'CLICK', '0', '0', '
    ASSIGN(LENERGY,0);
    SIGNAL(SID_AURA,SIG_ADD);
', '', ''),

('M_TEST2', '0', '0', 'CLICK', '0', '0', '
    ADDI(LENERGY,1);
    SIGNAL(SID_AURA,SIG_ADD);
    ', '', '');

------------------------------------------------------
------------------------------------------------------
-- Adding map usage to auras to ensure the proper sprite
delete from "main"."spr_names" where [name] like 'IDS_AURA%';
INSERT INTO "main"."spr_names" ("name", "value", "id") 
VALUES 
('IDS_AURA0', 'aa_00', '474'),
('IDS_AURA1', 'aa_01', '475'),
('IDS_AURA2', 'aa_02', '476'),
('IDS_AURA3', 'aa_03', '477'),
('IDS_AURA4', 'aa_04', '478'),
('IDS_AURA5', 'aa_05', '479'),
('IDS_AURA6', 'aa_06', '480'),
('IDS_AURA7', 'aa_07', '481'),
('IDS_AURA8', 'aa_08', '482'),
('IDS_AURA9', 'aa_09', '483'),
('IDS_AURA10', 'aa_10', '484'),
('IDS_AURA11', 'aa_11', '485'),
('IDS_AURA12', 'aa_12', '486'),
('IDS_AURA13', 'aa_13', '487'),
('IDS_AURA14', 'aa_14', '488'),
('IDS_AURA15', 'aa_15', '489'),
('IDS_AURA16', 'aa_16', '490'),
('IDS_AURA17', 'aa_17', '491'),
('IDS_AURA18', 'aa_18', '492'),
('IDS_AURA19', 'aa_19', '493'),
('IDS_AURA20', 'aa_20', '494'),
('IDS_AURA21', 'aa_21', '495'),
('IDS_AURA22', 'aa_22', '496'),
('IDS_AURA23', 'aa_23', '497');

delete from map where op like 'S00_AURA%';
INSERT INTO "main"."map" ("op", "key", "value")
VALUES 
('S00_AURA_MAP',0,'IDS_AURA0'), 
('S00_AURA_MAP',1,'IDS_AURA1'), 
('S00_AURA_MAP',2,'IDS_AURA2'), 
('S00_AURA_MAP',3,'IDS_AURA3'), 
('S00_AURA_MAP',4,'IDS_AURA4'), 
('S00_AURA_MAP',5,'IDS_AURA5'), 
('S00_AURA_MAP',6,'IDS_AURA6'),
('S00_AURA_MAP',7,'IDS_AURA7'), 
('S00_AURA_MAP',8,'IDS_AURA8'),
('S00_AURA_MAP',9,'IDS_AURA9'),
('S00_AURA_MAP',10,'IDS_AURA10'),
('S00_AURA_MAP',11,'IDS_AURA11'), 
('S00_AURA_MAP',12,'IDS_AURA12'), 
('S00_AURA_MAP',13,'IDS_AURA13'), 
('S00_AURA_MAP',14,'IDS_AURA14'), 
('S00_AURA_MAP',15,'IDS_AURA15'), 
('S00_AURA_MAP',16,'IDS_AURA16'),
('S00_AURA_MAP',17,'IDS_AURA17'), 
('S00_AURA_MAP',18,'IDS_AURA18'),
('S00_AURA_MAP',19,'IDS_AURA19'),
('S00_AURA_MAP',20,'IDS_AURA20'),
('S00_AURA_MAP',21,'IDS_AURA21'),
('S00_AURA_MAP',22,'IDS_AURA22'),
('S00_AURA_MAP',23,'IDS_AURA23');


delete from "main"."transitions" where [automaton] like 'M_AURA%';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code", "guard", "doc") 
VALUES 
('M_AURA', '0', 'energyBoost', 'Z_EPSILON', '0', '0', '', '', ''),
('M_AURA', '1', 'energyBoost', 'WAIT', '0', 'SIG_ADD', '', '', ''),
('M_AURA', '1', 'energyDrain', 'WAIT', '0', 'SIG_SUB', '', '', ''),
('M_AURA', '1', 'energyBoost', 'WAIT', '0', '0', '', '', ''),
('M_AURA', 'energyBoost', '1', 'ASSIGN', 'WPARM', '', '
       if(LENERGY > MAX_AURAS){
             ASSIGN(LENERGY,MAX_AURAS);
       }
        ASSIGN(BPARM,LENERGY);
        MOV(WSPRITE,BPARM);
        MAPi(WSPRITE,S00_AURA_MAP);
        SHOW(WSPRITE);
        ANIMATE(WPARM);
        SIGNALi(0,SID_ID);
', '', ''),
('M_AURA', 'energyDrain', '1', 'ASSIGN', 'WPARM', 'V_REVERSE', '
        if(LENERGY < 0){
             ASSIGN(LENERGY,0);
       }      
        MOV(WSPRITE,LENERGY);
        MAPi(WSPRITE,S00_AURA_MAP);
        SHOW(WSPRITE);
        ANIMATE(WPARM);
        SIGNALi(0,SID_ID);
', '', '');


delete from "main"."transitions" where [automaton] like 'M_PED%';
delete from "main"."transitions" where [automaton] like 'M_HALO%';
-- This one definately has to be re-done
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code", "guard", "doc")
VALUES 
('M_HALO', '0', '1', 'ASHOW', '0', 'IDS_HALO00', '', '', '');


-- INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code", "guard", "doc") 
-- VALUES 




--  ('M_PED', '0', '2', 'Z_EPSILON', '0', '0', '', '', ''),
--  ('M_PED', '1', '2', 'WAIT', '0', '0', '', '', ''),
--  ('M_PED', '2', '3', 'ASSIGN', 'WSPRITE', 'MAX_PEDS', '', '', ''),
--  ('M_PED', '3', '4', 'MUL', 'WSPRITE', 'LKARMA', '', '', ''),
--  ('M_PED', '4', '5', 'ASSIGN', 'WPARM', 'MAX_KARMA', '', '', ''),
--  ('M_PED', '5', '6', 'DIV', 'WSPRITE', 'WPARM', '', '', ''),
--  ('M_PED', '6', '7', 'ASSIGN', 'WPARM', 'IDS_PED1', '', '', ''),
--  ('M_PED', '7', '8', 'ADD', 'WSPRITE', 'WPARM', '', '', ''),
--  ('M_PED', '8', '1', 'SHOW', 'WSPRITE', '', '', '', ''),


-- ('M_AURA', '0', 'energyBoost', 'Z_EPSILON', '0', '0', '', '', ''),
-- ('M_AURA', '1', 'energyBoost', 'WAIT', '0', 'SIG_ADD', '', '', ''),
-- ('M_AURA', '1', 'energyDrain', 'WAIT', '0', 'SIG_SUB', '', '', ''),
-- ('M_AURA', '1', 'energyBoost', 'WAIT', '0', '0', '', '', ''),
-- ('M_AURA', 'energyBoost', '1', 'ASSIGN', 'WPARM', '', '
--         MOV(WSPRITE,LENERGY);
--         MODI(WSPRITE,MAX_AURAS);
--         ADDI(WSPRITE,IDS_AURA1);
--         SHOW(WSPRITE);
--         ANIMATE(WPARM);
--         SIGNALi(0,SID_ID);
-- ', '', ''),
-- ('M_AURA', 'energyDrain', '1', 'ASSIGN', 'WPARM', 'V_REVERSE', '
--          MOV(WSPRITE,LENERGY);
--         MODI(WSPRITE,MAX_AURAS);
--         ADDI(WSPRITE,IDS_AURA1);
--         SHOW(WSPRITE);
--         ANIMATE(WPARM);
--         SIGNALi(0,SID_ID);
-- ', '', '');