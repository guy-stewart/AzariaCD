delete from games;

delete from transitions where [automaton] like 'M_BARD%';
--The Bard is attached to the ID and loaded at startup
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code", "guard", "doc") VALUES 
('M_BARD', '0', '10', 'ASSIGN', 'DETIME', '1000', '', '', ''),

('M_BARD', '10', 'hideStuff', 'Z_EPSILON', '', '', '', '', ''),

('M_BARD', '20', 'FWcountdown', 'SYNCPOINT', 'DETIME', 'SYNC_FOULWIND', '', '', ''),
('M_BARD', 'FWcountdown', 'summonFoulWind', 'ESTIME', '0', '500', '', '', ''),
('M_BARD', 'summonFoulWind', 'FWcountdown', 'SIGNALi', '0', 'S17_aFOULWIND', '', '', ''),
--inserting hiding stuff and and other one off signals then go to timed loop
('M_BARD', 'hideStuff', 'kickOffNature', 'SIGNALi', 'SIG_OPEN', 'S00_HIDER', '', '', ''),
('M_BARD', 'kickOffNature', '20', 'SIGNALi', 'SIG_OPEN', 'S01_NATURE', '', '', '');


delete from machines where name = 'S01_NATURE';
INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") VALUES 
('217', 'S01_NATURE', '5633', 'IDV_GRNDCNT1', '0', '0', '0', '0', '2', 'M_NATURE', '', '', '', '');

delete from transitions where automaton = 'M_NATURE';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2","code") 
VALUES 
('M_NATURE', '0', '1', 'WAIT', '0', 'SIG_OPEN',''),
('M_NATURE', '1', '2', 'ESTIME', '', '4',''),
('M_NATURE', '2', '3', 'SIGNALi', 'SIG_OPEN', 'S03_BIRDSFWD',''),
('M_NATURE', '3', '4', 'ESTIME', '10', '10',''),
('M_NATURE', '4', '5', 'SIGNALi', 'SIG_OPEN', 'S03_BIRDSBKWD',''),
('M_NATURE', '5', '6', 'SIGNALi', 'SIG_OPEN', 'S12_BUTTERFLY',''),
('M_NATURE', '6', '7', 'SIGNALi', 'SIG_RIPEN', 'S16_GOPABUSH',''),
('M_NATURE', '7', '8', 'SIGNALi', 'SIG_RIPEN', 'S10_GOPABUSH',''),
('M_NATURE', '8', '1', 'ESTIME', '', '300','');
