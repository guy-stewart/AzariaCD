delete from games;

delete from spr_names where name = 'IDS_QUARLOCK_A';
delete from spr_names where name = 'IDS_QUARLOCK_B';


insert into spr_names values ('IDS_QUARLOCK_A','QUARLOCK_A',5900);
insert into spr_names values ('IDS_QUARLOCK_B','QUARLOCK_B',5901);

delete from machines where name = 'S17_aLOCKSOCKET';
delete from machines where name = 'S17_bLOCKSOCKET';
delete from machines where name = 'S17_cLOCKSOCKET';
delete from machines where name = 'S17_dLOCKSOCKET';
delete from machines where name = 'S17_eLOCKSOCKET';



-- add wips here 3, 4 for alt views a for a, b for b, c, d, e f (from right to left)
INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip1_value", "wip2_name", "wip2_value", "wip3_name", "wip3_value", "wip4_name", "wip4_value") 
VALUES 
('5888', 'S17_aLOCKSOCKET', '5891', 'IDV_aMINEPAN', '172', '115', '232', '163', '0', 'M17_LOCKSOCKET', 'S17_aDOORWAY', '5890', 'S17_aLOCKBURN', '5889', 'S17_ALT_a_A', '5950', 'S17_ALT_a_B', '5951'),
('5896', 'S17_bLOCKSOCKET', '5894', 'IDV_bMINEPAN', '172', '115', '232', '163', '0', 'M17_LOCKSOCKET', 'S17_bDOORWAY', '5898', 'S17_bLOCKBURN', '5897', 'S17_ALT_b_A', '5952', 'S17_ALT_b_B', '5953'),
('5904', 'S17_cLOCKSOCKET', '5897', 'IDV_cMINEPAN', '172', '115', '232', '163', '0', 'M17_LOCKSOCKET', 'S17_cDOORWAY', '5906', 'S17_cLOCKBURN', '5905', 'S17_ALT_c_A', '5954', 'S17_ALT_c_B', '5955'),
('5912', 'S17_dLOCKSOCKET', '5900', 'IDV_dMINEPAN', '172', '115', '232', '163', '0', 'M17_LOCKSOCKET', 'S17_dDOORWAY', '5914', 'S17_dLOCKBURN', '5913', 'S17_ALT_d_A', '5956', 'S17_ALT_d_B', '5957'),
('5920', 'S17_eLOCKSOCKET', '5903', 'IDV_eMINEPAN', '172', '115', '232', '163', '0', 'M17_LOCKSOCKET', 'S17_eDOORWAY', '5922', 'S17_eLOCKBURN', '5921', 'S17_ALT_e_A', '5958', 'S17_ALT_e_B', '5959');


delete from  "main"."transitions" where name = 'M17_LOCKSOCKET';
INSERT INTO "main"."transitions" ("name", "state", "new_state", "opcode", "param_1", "param_2") 
VALUES 
('M17_LOCKSOCKET', '0', '40', 'DROP', '0', 'IDD_CITLOCK'),
('M17_LOCKSOCKET', '0', '70', 'DROP', '0', 'IDD_VILLOCK'),
('M17_LOCKSOCKET', '0', '60', 'DROP', '0', 'IDD_BOMB1'),
('M17_LOCKSOCKET', '0', '60', 'DROP', '0', 'IDD_BOMB2'),
('M17_LOCKSOCKET', '40', '42', 'SIGNAL', 'WIP1', 'SIG_CLOSE'),
('M17_LOCKSOCKET', '42', '43', 'SIGNAL', 'WIP3', 'SIG_SHOW'),
('M17_LOCKSOCKET', '43', '44', 'SIGNAL', 'WIP4', 'SIG_SHOW'),
('M17_LOCKSOCKET', '44', '50', 'ASHOW', 'WOBJECT', ''),
('M17_LOCKSOCKET', '50', '55', 'CLICK', '0', '0'),
('M17_LOCKSOCKET', '50', '51', 'DRAG', '0', 'IDD_CITKEY'),
('M17_LOCKSOCKET', '50', '60', 'DROP', '0', 'IDD_BOMB1'),
('M17_LOCKSOCKET', '50', '60', 'DROP', '0', 'IDD_BOMB2'),
('M17_LOCKSOCKET', '51', '50', 'SIGNAL', 'WIP1', 'SIG_ENTER_1'),
('M17_LOCKSOCKET', '55', '50', 'SIGNAL', 'WIP1', 'SIG_CLOSE'),
('M17_LOCKSOCKET', '60', '61', 'SIGNAL', 'WIP1', 'SIG_OPEN'),
('M17_LOCKSOCKET', '61', '62', 'SIGNAL', 'WIP2', 'SIG_BURN'),
('M17_LOCKSOCKET', '62', '63', 'SIGNAL', 'WIP3', 'SIG_HIDE'),
('M17_LOCKSOCKET', '63', '64', 'SIGNAL', 'WIP4', 'SIG_HIDE'),
('M17_LOCKSOCKET', '64', '0', 'SHOW', '0', '0'),
('M17_LOCKSOCKET', '70', '72', 'SIGNAL', 'WIP1', 'SIG_CLOSE'),
('M17_LOCKSOCKET', '72', '73', 'SIGNAL', 'WIP3', 'SIG_SHOW'),
('M17_LOCKSOCKET', '73', '74', 'SIGNAL', 'WIP4', 'SIG_SHOW'),
('M17_LOCKSOCKET', '74', '80', 'ASHOW', 'WOBJECT', ''),
('M17_LOCKSOCKET', '80', '85', 'CLICK', '0', '0'),
('M17_LOCKSOCKET', '80', '81', 'DRAG', '0', 'IDD_VILKEY'),
('M17_LOCKSOCKET', '80', '60', 'DROP', '0', 'IDD_BOMB1'),
('M17_LOCKSOCKET', '80', '60', 'DROP', '0', 'IDD_BOMB2'),
('M17_LOCKSOCKET', '81', '80', 'SIGNAL', 'WIP1', 'SIG_ENTER_1'),
('M17_LOCKSOCKET', '85', '80', 'SIGNAL', 'WIP1', 'SIG_CLOSE');


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

INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip1_value", "wip2_name", "wip2_value", "wip3_name", "wip3_value", "wip4_name", "wip4_value") 
VALUES 
('5950', 'S17_ALT_a_A', '5889', 'IDV_QUARSA', '3155', '157', '3176', '171', '0', 'M_STATESCALE', 'IDS_QUARLOCK_A', '0', '', '0', '', '0', '', '0'),
('5951', 'S17_ALT_a_B', '5890', 'IDV_QUARSB', '3147', '161', '3185', '188', '0', 'M_STATESCALE', 'IDS_QUARLOCK_B', '0', '', '0', '', '0', '', '0'),
('5952', 'S17_ALT_b_A', '5889', 'IDV_QUARSA', '188', '161', '211', '181', '0', 'M_STATESCALE', 'IDS_QUARLOCK_A', '0', '', '0', '', '0', '', '0'),
('5953', 'S17_ALT_b_B', '5890', 'IDV_QUARSB', '336', '159', '374', '192', '0', 'M_STATESCALE', 'IDS_QUARLOCK_B', '0', '', '0', '', '0', '', '0'),
('5954', 'S17_ALT_c_A', '5889', 'IDV_QUARSA', '425', '173', '452', '196', '0', 'M_STATESCALE', 'IDS_QUARLOCK_A', '0', '', '0', '', '0', '', '0'),
('5955', 'S17_ALT_c_B', '5890', 'IDV_QUARSB', '813', '159', '856', '197', '0', 'M_STATESCALE', 'IDS_QUARLOCK_B', '0', '', '0', '', '0', '', '0'),
('5956', 'S17_ALT_d_A', '5889', 'IDV_QUARSA', '2759', '165', '2762', '169', '0', 'M_STATESCALE', 'IDS_QUARLOCK_A', '0', '', '0', '', '0', '', '0'),
('5957', 'S17_ALT_d_B', '5890', 'IDV_QUARSB', '2229', '182', '2272', '216', '0', 'M_STATESCALE', 'IDS_QUARLOCK_B', '0', '', '0', '', '0', '', '0'),
('5958', 'S17_ALT_e_A', '5889', 'IDV_QUARSA', '2973', '154', '2993', '173', '0', 'M_STATESCALE', 'IDS_QUARLOCK_A', '0', '', '0', '', '0', '', '0'),
('5959', 'S17_ALT_e_B', '5890', 'IDV_QUARSB', '2739', '173', '2773', '199',  '0', 'M_STATESCALE', 'IDS_QUARLOCK_B', '0', '', '0', '', '0', '', '0');



