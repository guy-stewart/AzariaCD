

delete from transitions where [automaton] like 'M_BARD%';
--The Bard is attached to the ID and loaded at startup
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code", "guard", "doc") VALUES 
('M_BARD', '0', '10', 'ASSIGN', 'DETIME', '1500', '', '', ''),

('M_BARD', '10', 'kickOffNature', 'Z_EPSILON', '', '', '', '', ''),

-- ('M_BARD', '10', 'FWcountdown', 'SYNCPOINT', 'DETIME', 'SYNC_FOULWIND', '', '', ''),
-- ('M_BARD', 'FWcountdown', 'summonFoulWind', 'ESTIME', '0', '1500', '', '', ''),
-- ('M_BARD', 'summonFoulWind', 'FWcountdown', 'SIGNALi', '0', 'S17_aFOULWIND', '', '', ''),

--inserting hiding stuff and and other one off signals then go to timed loop
('M_BARD', 'kickOffNature', 'kickOffQuests', 'SIGNAL', 'QL_MANAGER', 'Q_RESET', '', '', ''),
-- loading the active character 
('M_BARD', 'kickOffQuests', 'kickOffCharacter', 'SIGNAL', 'SID_ID', 'SIG_MYID', '', '', ''),
('M_BARD', 'kickOffCharacter', 'endgame', 'SIGNALi', 'SIG_OPEN', 'S01_NATURE', '', '', ''),
('M_BARD', 'endgame', '0', 'WAIT', '', 'SIG_ENDGAME', '', '', '');


delete from machines where name = 'S01_NEWSTART';
delete from machines where name = 'S01_NEWGAME';
INSERT INTO "main"."machines" ("name", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") VALUES 
('S01_NEWSESSION','IDV_GRNDCNT1', '0', '0', '0', '0','2', 'M_NEWSESSION', '', '', '', ''),
('S01_NEWGAME','IDV_GRNDCNT1', '0', '0', '0', '0', '2', 'M_NEWGAME', '', '', '', '');

--this is a cleaner try to reset items that should reset at the start of any user session - not just a new game
-- items include the network light, removing watchers, removing other players from previous sessions
-- called by the future onMachinesInitComplete in config
delete from transitions where [automaton] like 'M_NEWSESSION%';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code", "guard", "doc") VALUES 
('M_NEWSESSION', '0', '1', 'WAIT', '', 'SIG_NEWSESSION', '', '', ''),
('M_NEWSESSION', '1', '2', 'ESTIME', '1', '', '
    predicate watchers (address,name);
    watchers()~
    predicate otherplayer(pid,status,player,account_id,name,viewname,wealth,karma,energy,strength,wisdom,gender,culture, knowsparent, knowsvillage,knowscity);
    otherplayer()~
    SIGNAL(SOD_ID, SIG_CLEAR);
    SIGNAL(S_CFGNWSERVER, SIG_RESET);
    SIGNAL(S0_NW_INDC_LIGHT, SIG_RESET);
    WRITE("RESETTING INDC LIGHT and cleaning up previous session data");
    SIGNAL(AUDIO_LEVELS,SIG_MUSIC_DN);
    SIGNAL(AUDIO_LEVELS,SIG_SFX_DN);
', '', ''),
('M_NEWSESSION', '2', '0', 'Z_EPSILON', '', '', '', '', '');




delete from transitions where [automaton] like 'M_NEWGAME%';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code", "guard", "doc") VALUES 
('M_NEWGAME', '0', '1', 'WAIT', '', 'SIG_NEW', '
    SIGNAL(QL_MANAGER, Q0_START);
    SIGNAL(S00_HIDER, SIG_OPEN);
', '', ''),
('M_NEWGAME', '1', '0', 'Z_EPSILON', '', '', '', '', '');



delete from machines where name = 'S01_NATURE';
INSERT INTO "main"."machines" ("name", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") VALUES 
('S01_NATURE','IDV_GRNDCNT1', '0', '0', '0', '0', '2', 'M_NATURE', '', '', '', '');

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
('M_NATURE', '8', '1', 'ESTIME', '', '200','');
