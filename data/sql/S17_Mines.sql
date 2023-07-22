delete from games;

delete from spr_names where name = 'IDS_QUARLOCK_A';
delete from spr_names where name = 'IDS_QUARLOCK_B';


insert into spr_names values ('IDS_QUARLOCK_A','QUARLOCK_A',5900);
insert into spr_names values ('IDS_QUARLOCK_B','QUARLOCK_B',5901);

delete from machines where name = 'S17_aLOCKBURN';
delete from machines where name = 'S17_bLOCKBURN';
delete from machines where name = 'S17_cLOCKBURN';
delete from machines where name = 'S17_dLOCKBURN';
delete from machines where name = 'S17_eLOCKBURN';

INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name")
VALUES 
('5889', 'S17_aLOCKBURN', '5891', 'IDV_aMINEPAN', '128', '20', '128', '20', '0', 'M17_LOCKBURN', '', '', '', ''),
('5897', 'S17_bLOCKBURN', '5894', 'IDV_bMINEPAN', '128', '20', '128', '20', '0', 'M17_LOCKBURN', '', '', '', ''),
('5905', 'S17_cLOCKBURN', '5897', 'IDV_cMINEPAN', '128', '20', '128', '20', '0', 'M17_LOCKBURN', '', '', '', ''),
('5913', 'S17_dLOCKBURN', '5900', 'IDV_dMINEPAN', '128', '20', '128', '20', '0', 'M17_LOCKBURN', '', '', '', ''),
('5921', 'S17_eLOCKBURN', '5903', 'IDV_eMINEPAN', '128', '20', '128', '20', '0', 'M17_LOCKBURN', '', '', '', '');


INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code", "guard", "doc")
 VALUES 
('M17_LOCKBURN', '0', '1', 'WAIT', '0', 'SIG_BURN', '', '', ''),
('M17_LOCKBURN', '0', '5', 'WAIT', '0', 'SIG_HIDE', '', '', ''),
('M17_LOCKBURN', '1', '2', 'SHOW', '0', 'IDS_MINEBLOW', '', '', ''),
('M17_LOCKBURN', '2', '3', 'PLAYWAVE', '0', 'SOUND_EXPLODE', '', '', ''),
('M17_LOCKBURN', '3', '0', 'VIDEO', '0', 'IDS_EXPLODE1', '', '', ''),
('M17_LOCKBURN', '5', '0', 'Z_EPSILON', '', '', '
    SHOW();
', '', '');

delete from machines where name = 'S17_aLOCKSOCKET';
delete from machines where name = 'S17_bLOCKSOCKET';
delete from machines where name = 'S17_cLOCKSOCKET';
delete from machines where name = 'S17_dLOCKSOCKET';
delete from machines where name = 'S17_eLOCKSOCKET';



-- add wips here 3, 4 for alt views a for a, b for b, c, d, e f (from right to left)
INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") 
VALUES 
('5888', 'S17_aLOCKSOCKET', '5891', 'IDV_aMINEPAN', '172', '118', '232', '163', '0', 'M17_LOCKSOCKET', 'S17_aDOORWAY', 'S17_aLOCKBURN', 'S17_ALT_a_A', 'S17_ALT_a_B'),
('5896', 'S17_bLOCKSOCKET', '5894', 'IDV_bMINEPAN', '172', '118', '232', '163', '0', 'M17_LOCKSOCKET', 'S17_bDOORWAY', 'S17_bLOCKBURN', 'S17_ALT_b_A', 'S17_ALT_b_B'),
('5904', 'S17_cLOCKSOCKET', '5897', 'IDV_cMINEPAN', '172', '118', '232', '163', '0', 'M17_LOCKSOCKET', 'S17_cDOORWAY', 'S17_cLOCKBURN', 'S17_ALT_c_A', 'S17_ALT_c_B'),
('5912', 'S17_dLOCKSOCKET', '5900', 'IDV_dMINEPAN', '172', '118', '232', '163', '0', 'M17_LOCKSOCKET', 'S17_dDOORWAY', 'S17_dLOCKBURN', 'S17_ALT_d_A', 'S17_ALT_d_B'),
('5920', 'S17_eLOCKSOCKET', '5903', 'IDV_eMINEPAN', '172', '118', '232', '163', '0', 'M17_LOCKSOCKET', 'S17_eDOORWAY', 'S17_eLOCKBURN', 'S17_ALT_e_A', 'S17_ALT_e_B');


delete from  "main"."transitions" where automaton = 'M17_LOCKSOCKET';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code", "guard", "doc") VALUES 
('M17_LOCKSOCKET', '0', 'citlockdropped', 'DROP', '0', 'IDD_CITLOCK', '', '', ''),
('M17_LOCKSOCKET', '0', 'villockdropped', 'DROP', '0', 'IDD_VILLOCK', '', '', ''),
('M17_LOCKSOCKET', '0', 'bombed', 'DROP', '0', 'IDD_BOMB1', '', '', ''),
('M17_LOCKSOCKET', '0', 'bombed', 'DROP', '0', 'IDD_BOMB2', '', '', ''),

('M17_LOCKSOCKET', 'citlockdropped', 'citlockshown', 'SIGNAL', 'WIP1', 'SIG_CLOSE', '
    SIGNAL(WIP2,SIG_HIDE);
    SIGNAL(WIP3,SIG_SHOW);
    SIGNAL(WIP4,SIG_SHOW);
    ASHOW(WOBJECT);
', '', ''),

('M17_LOCKSOCKET', 'citlockshown', 'citclicklocked', 'CLICK', '0', '0', '', '', ''),
('M17_LOCKSOCKET', 'citlockshown', 'citunlocked', 'DRAG', '0', 'IDD_CITKEY', '', '', ''),
('M17_LOCKSOCKET', 'citlockshown', 'bombed', 'DROP', '0', 'IDD_BOMB1', '', '', ''),
('M17_LOCKSOCKET', 'citlockshown', 'bombed', 'DROP', '0', 'IDD_BOMB2', '', '', ''),
('M17_LOCKSOCKET', 'citunlocked', 'citlockshown', 'SIGNAL', 'WIP1', 'SIG_ENTER_1', '', '', ''),
('M17_LOCKSOCKET', 'citclicklocked', 'citlockshown', 'SIGNAL', 'WIP1', 'SIG_CLOSE', '', '', ''),

('M17_LOCKSOCKET', 'bombed', 'lockremoved', 'SIGNAL', 'WIP1', 'SIG_OPEN', '
    SIGNAL(WIP2,SIG_BURN);
    SIGNAL(WIP3,SIG_HIDE);
    SIGNAL(WIP4,SIG_HIDE);
', '', ''),
('M17_LOCKSOCKET', 'lockremoved', '0', 'SHOW', '0', '0', '', '', ''),

('M17_LOCKSOCKET', 'villockdropped', 'villockshown', 'SIGNAL', 'WIP1', 'SIG_CLOSE', '
    SIGNAL(WIP2,SIG_HIDE);
    SIGNAL(WIP3,SIG_SHOW);
    SIGNAL(WIP4,SIG_SHOW);
    ASHOW(WOBJECT);
', '', ''),

('M17_LOCKSOCKET', 'villockshown', 'vilclicklocked', 'CLICK', '0', '0', '', '', ''),
('M17_LOCKSOCKET', 'villockshown', 'vilunlocked', 'DRAG', '0', 'IDD_VILKEY', '', '', ''),
('M17_LOCKSOCKET', 'villockshown', 'bombed', 'DROP', '0', 'IDD_BOMB1', '', '', ''),
('M17_LOCKSOCKET', 'villockshown', 'bombed', 'DROP', '0', 'IDD_BOMB2', '', '', ''),
('M17_LOCKSOCKET', 'vilunlocked', 'villockshown', 'SIGNAL', 'WIP1', 'SIG_ENTER_1', '', '', ''),
('M17_LOCKSOCKET', 'vilclicklocked', 'villockshown', 'SIGNAL', 'WIP1', 'SIG_CLOSE', '', '', '');


--from left to right
delete from machines where name = 'S17_ALT_a_A';
delete from machines where name = 'S17_ALT_a_B';
delete from machines where name = 'S17_ALT_b_A';
delete from machines where name = 'S17_ALT_b_B';
delete from machines where name = 'S17_ALT_c_A';
delete from machines where name = 'S17_ALT_c_B';
delete from machines where name = 'S17_ALT_d_A';
delete from machines where name = 'S17_ALT_d_B';
delete from machines where name = 'S17_ALT_e_A';
delete from machines where name = 'S17_ALT_e_B';


--Mines start with A in the middle North and go around to the right 

INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") VALUES 
('5950', 'S17_ALT_a_A', '5889', 'IDV_QUARSA', '3155', '157', '3176', '171', '0', 'M_STATESCALEV', 'IDS_QUARLOCK_A', '', '', ''),
('5951', 'S17_ALT_a_B', '5890', 'IDV_QUARSB', '3147', '161', '3185', '188', '0', 'M_STATESCALEV', 'IDS_QUARLOCK_B', '', '', ''),
('5952', 'S17_ALT_b_A', '5889', 'IDV_QUARSA', '188', '161', '211', '181', '0', 'M_STATESCALEV', 'IDS_QUARLOCK_A', '', '', ''),
('5953', 'S17_ALT_b_B', '5890', 'IDV_QUARSB', '336', '159', '374', '192', '0', 'M_STATESCALEV', 'IDS_QUARLOCK_B', '', '', ''),
('5954', 'S17_ALT_c_A', '5889', 'IDV_QUARSA', '425', '173', '452', '196', '0', 'M_STATESCALEV', 'IDS_QUARLOCK_A', '', '', ''),
('5955', 'S17_ALT_c_B', '5890', 'IDV_QUARSB', '813', '159', '856', '197', '0', 'M_STATESCALEV', 'IDS_QUARLOCK_B', '', '', ''),
('5956', 'S17_ALT_d_A', '5889', 'IDV_QUARSA', '2759', '165', '2762', '169', '0', 'M_STATESCALEV', 'IDS_QUARLOCK_A', '', '', ''),
('5957', 'S17_ALT_d_B', '5890', 'IDV_QUARSB', '2229', '182', '2272', '216', '0', 'M_STATESCALEV', 'IDS_QUARLOCK_B', '', '', ''),
('5958', 'S17_ALT_e_A', '5889', 'IDV_QUARSA', '2973', '154', '2993', '173', '0', 'M_STATESCALEV', 'IDS_QUARLOCK_A', '', '', ''),
('5959', 'S17_ALT_e_B', '5890', 'IDV_QUARSB', '2730', '169', '2773', '199', '0', 'M_STATESCALEV', 'IDS_QUARLOCK_B', '', '', '');

delete from  "main"."transitions" where automaton = 'M_STATESCALEV';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code", "guard", "doc") 
VALUES 
('M_STATESCALEV', '0', '5', 'WAIT', '0', 'SIG_SHOW','','',''),
('M_STATESCALEV', '5', '10', 'ASHOW', 'WSPRITE', '0','','',''),
('M_STATESCALEV', '10', '11', 'WAIT', '0', 'SIG_HIDE','','',''),
('M_STATESCALEV', '11', '0', 'ASHOW', '0', '0','','','');