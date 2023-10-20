delete from games;

delete from spr_names where name = 'IDS_QUARLOCK_A';
delete from spr_names where name = 'IDS_QUARLOCK_B';


insert into spr_names values ('IDS_QUARLOCK_A','QUARLOCK_A',5900);
insert into spr_names values ('IDS_QUARLOCK_B','QUARLOCK_B',5901);



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

delete from machines where name = 'S17_aLOCKSOCKET';
delete from machines where name = 'S17_bLOCKSOCKET';
delete from machines where name = 'S17_cLOCKSOCKET';
delete from machines where name = 'S17_dLOCKSOCKET';
delete from machines where name = 'S17_eLOCKSOCKET';

delete from machines where name = 'S17_aLOCKBURN';
delete from machines where name = 'S17_bLOCKBURN';
delete from machines where name = 'S17_cLOCKBURN';
delete from machines where name = 'S17_dLOCKBURN';
delete from machines where name = 'S17_eLOCKBURN';

delete from machines where name = 'S17_aMINE';
delete from machines where name = 'S17_bMINE';
delete from machines where name = 'S17_cMINE';
delete from machines where name = 'S17_dMINE';
delete from machines where name = 'S17_eMINE';

delete from machines where name = 'S17_aFOULWIND';
delete from machines where name = 'S17_bFOULWIND';
delete from machines where name = 'S17_cFOULWIND';
delete from machines where name = 'S17_dFOULWIND';
delete from machines where name = 'S17_eFOULWIND';

delete from machines where name = 'S17_aDOORWAY';
delete from machines where name = 'S17_bDOORWAY';
delete from machines where name = 'S17_cDOORWAY';
delete from machines where name = 'S17_dDOORWAY';
delete from machines where name = 'S17_eDOORWAY';
--Mines start with A in the middle North and go around to the right 
-- add wips here 3, 4 for alt views a for a, b for b, c, d, e f (from right to left)
INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") 
VALUES 
('5950', 'S17_ALT_a_A', '5889', 'IDV_QUARSA', '3155', '157', '3176', '171', '0', 'M_STATESCALEV', 'IDS_QUARLOCK_A', '', '', ''),
('5951', 'S17_ALT_a_B', '5890', 'IDV_QUARSB', '3147', '161', '3185', '188', '0', 'M_STATESCALEV', 'IDS_QUARLOCK_B', '', '', ''),
('5952', 'S17_ALT_b_A', '5889', 'IDV_QUARSA', '188', '161', '211', '181', '0', 'M_STATESCALEV', 'IDS_QUARLOCK_A', '', '', ''),
('5953', 'S17_ALT_b_B', '5890', 'IDV_QUARSB', '336', '159', '374', '192', '0', 'M_STATESCALEV', 'IDS_QUARLOCK_B', '', '', ''),
('5954', 'S17_ALT_c_A', '5889', 'IDV_QUARSA', '425', '173', '452', '196', '0', 'M_STATESCALEV', 'IDS_QUARLOCK_A', '', '', ''),
('5955', 'S17_ALT_c_B', '5890', 'IDV_QUARSB', '813', '159', '856', '197', '0', 'M_STATESCALEV', 'IDS_QUARLOCK_B', '', '', ''),
('5956', 'S17_ALT_d_A', '5889', 'IDV_QUARSA', '2759', '165', '2762', '169', '0', 'M_STATESCALEV', 'IDS_QUARLOCK_A', '', '', ''),
('5957', 'S17_ALT_d_B', '5890', 'IDV_QUARSB', '2229', '182', '2272', '216', '0', 'M_STATESCALEV', 'IDS_QUARLOCK_B', '', '', ''),
('5958', 'S17_ALT_e_A', '5889', 'IDV_QUARSA', '2973', '154', '2993', '173', '0', 'M_STATESCALEV', 'IDS_QUARLOCK_A', '', '', ''),
('5959', 'S17_ALT_e_B', '5890', 'IDV_QUARSB', '2730', '169', '2773', '199', '0', 'M_STATESCALEV', 'IDS_QUARLOCK_B', '', '', ''),

('5888', 'S17_aLOCKSOCKET', '5891', 'IDV_aMINEPAN', '172', '118', '232', '163', '0', 'M17_LOCKSOCKET', 'S17_aDOORWAY', 'S17_aLOCKBURN', 'S17_ALT_a_A', 'S17_ALT_a_B'),
('5896', 'S17_bLOCKSOCKET', '5894', 'IDV_bMINEPAN', '172', '118', '232', '163', '0', 'M17_LOCKSOCKET', 'S17_bDOORWAY', 'S17_bLOCKBURN', 'S17_ALT_b_A', 'S17_ALT_b_B'),
('5904', 'S17_cLOCKSOCKET', '5897', 'IDV_cMINEPAN', '172', '118', '232', '163', '0', 'M17_LOCKSOCKET', 'S17_cDOORWAY', 'S17_cLOCKBURN', 'S17_ALT_c_A', 'S17_ALT_c_B'),
('5912', 'S17_dLOCKSOCKET', '5900', 'IDV_dMINEPAN', '172', '118', '232', '163', '0', 'M17_LOCKSOCKET', 'S17_dDOORWAY', 'S17_dLOCKBURN', 'S17_ALT_d_A', 'S17_ALT_d_B'),
('5920', 'S17_eLOCKSOCKET', '5903', 'IDV_eMINEPAN', '172', '118', '232', '163', '0', 'M17_LOCKSOCKET', 'S17_eDOORWAY', 'S17_eLOCKBURN', 'S17_ALT_e_A', 'S17_ALT_e_B'),

('5890', 'S17_aDOORWAY', '5891', 'IDV_aMINEPAN', '280', '75', '480', '274', '0', 'M17_DOORWAY', 'IDV_aCV1aPAN', 'S17_aFFIELD1', 'S17_aFOULWIND', ''),
('5898', 'S17_bDOORWAY', '5894', 'IDV_bMINEPAN', '280', '75', '480', '274', '0', 'M17_DOORWAY', 'IDV_bCV1aPAN', 'S17_bFFIELD1', 'S17_bFOULWIND', ''),
('5906', 'S17_cDOORWAY', '5897', 'IDV_cMINEPAN', '280', '75', '480', '274', '0', 'M17_DOORWAY', 'IDV_cCV1aPAN', 'S17_cFFIELD1', 'S17_cFOULWIND', ''),
('5914', 'S17_dDOORWAY', '5900', 'IDV_dMINEPAN', '280', '75', '480', '274', '0', 'M17_DOORWAY', 'IDV_dCV1aPAN', 'S17_dFFIELD1', 'S17_dFOULWIND', ''),
('5922', 'S17_eDOORWAY', '5903', 'IDV_eMINEPAN', '280', '75', '480', '274', '0', 'M17_DOORWAY', 'IDV_eCV1aPAN', 'S17_eFFIELD1', 'S17_eFOULWIND', '');


INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") VALUES 

('5942', 'S17_aFOULWIND', '5893', 'IDV_aCV1bPAN', '0', '0', '0', '0', '2', 'M17_FOULWIND', 'IDV_aCV1bPAN', 'IDV_aCV1aPAN', 'NYBREATH_TIMER', ''),
('5943', 'S17_bFOULWIND', '5893', 'IDV_bCV1bPAN', '0', '0', '0', '0', '2', 'M17_FOULWIND', 'IDV_bCV1bPAN', 'IDV_bCV1aPAN', 'NYBREATH_TIMER', ''),
('5944', 'S17_cFOULWIND', '5893', 'IDV_cCV1bPAN', '0', '0', '0', '0', '2', 'M17_FOULWIND', 'IDV_cCV1bPAN', 'IDV_cCV1aPAN', 'NYBREATH_TIMER', ''),
('5945', 'S17_dFOULWIND', '5893', 'IDV_dCV1bPAN', '0', '0', '0', '0', '2', 'M17_FOULWIND', 'IDV_dCV1bPAN', 'IDV_dCV1aPAN', 'NYBREATH_TIMER', ''),
('5945', 'S17_eFOULWIND', '5893', 'IDV_eCV1bPAN', '0', '0', '0', '0', '2', 'M17_FOULWIND', 'IDV_eCV1bPAN', 'IDV_eCV1aPAN', 'NYBREATH_TIMER', '');

INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name")
VALUES 
('5889', 'S17_aLOCKBURN', '5891', 'IDV_aMINEPAN', '128', '20', '128', '20', '0', 'M17_LOCKBURN', '', '', '', ''),
('5897', 'S17_bLOCKBURN', '5894', 'IDV_bMINEPAN', '128', '20', '128', '20', '0', 'M17_LOCKBURN', '', '', '', ''),
('5905', 'S17_cLOCKBURN', '5897', 'IDV_cMINEPAN', '128', '20', '128', '20', '0', 'M17_LOCKBURN', '', '', '', ''),
('5913', 'S17_dLOCKBURN', '5900', 'IDV_dMINEPAN', '128', '20', '128', '20', '0', 'M17_LOCKBURN', '', '', '', ''),
('5921', 'S17_eLOCKBURN', '5903', 'IDV_eMINEPAN', '128', '20', '128', '20', '0', 'M17_LOCKBURN', '', '', '', ''),

('5894', 'S17_aMINE', '5893', 'IDV_aCV1bPAN', '2900', '200', '3200', '300', '0', 'M17_MINE', '', '', '', ''),
('5902', 'S17_bMINE', '5896', 'IDV_bCV1bPAN', '2900', '200', '3200', '300', '0', 'M17_MINE', '', '', '', ''),
('5910', 'S17_cMINE', '5899', 'IDV_cCV1bPAN', '2900', '200', '3200', '300', '0', 'M17_MINE', '', '', '', ''),
('5918', 'S17_dMINE', '5902', 'IDV_dCV1bPAN', '2900', '200', '3200', '300', '0', 'M17_MINE', '', '', '', ''),
('5926', 'S17_eMINE', '5905', 'IDV_eCV1bPAN', '2900', '200', '3200', '300', '0', 'M17_MINE', '', '', '', '');


delete from  "main"."transitions" where automaton = 'M17_LOCKSOCKET';
delete from "main"."transitions" where [automaton] like 'M17_LOCKBURN%';
delete from  "main"."transitions" where automaton = 'M17_FOULWIND';
delete from "main"."transitions" where [automaton] like 'M17_MINE%';
delete from "main"."transitions" where [automaton] like 'M17_DOORWAY%';
delete from  "main"."transitions" where automaton = 'M_STATESCALEV';
--foul winds from beta
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code", "guard", "doc") 
VALUES 

('M17_MINE', '0', '1', 'DRAG', '0', 'IDD_SCOOPE', '', '', ''),
('M17_MINE', '0', '3', 'DRAG', '0', 'IDD_SCOOPF', '', '', ''),
('M17_MINE', '1', '2', 'PLAYWAVE', '0', 'SOUND_SLURP', '', '', ''),
('M17_MINE', '2', '0', 'HANDOFF', '0', 'IDD_SCOOPF', '', '', ''),
('M17_MINE', '3', '4', 'PLAYWAVE', '0', 'SOUND_SPIT', '', '', ''),
('M17_MINE', '4', '0', 'HANDOFF', '0', 'IDD_SCOOPE', '', '', ''),

('M17_FOULWIND', '0', 'loopTop', 'WAIT', '0', 'SIG_START', '', '', ''),
('M17_FOULWIND', 'loopTop', 'bottomOfLoop', 'ESTIME', '0', '5', '
    //TODO need to look for protection spell nybreath and fan
    if (  (IFSTATE(0, WIP3) || IFSTATE(spellStopped, WIP3)) ){
        WRITE("fair game no protection");
        PLAYWAVE(SOUND_BURBLE);
        SIGNAL(SID_DEC_ENERGY,SIG_DEC); 
    }
', '', ''),
('M17_FOULWIND', 'bottomOfLoop', 'loopTop', 'EQUALi', 'LVIEW', 'WIP1', '', '', ''),
('M17_FOULWIND', 'bottomOfLoop', 'loopTop', 'EQUALi', 'LVIEW', 'WIP2', '', '', ''),
('M17_FOULWIND', 'bottomOfLoop', '0', 'Z_EPSILON', '', '', '', '', ''),





('M17_DOORWAY', '0', 'caveNoLockEntry', 'CLICK', '0', '0', '', '', ''),
('M17_DOORWAY', '0', 'Lock', 'WAIT', '0', 'SIG_CLOSE', '', '', ''),
('M17_DOORWAY', 'Lock', 'forcefieldUp', 'SIGNAL', 'WIP2', 'SIG_ON', '', '', ''),
('M17_DOORWAY', 'forcefieldUp', 'LockBombed', 'WAIT', '0', 'SIG_OPEN', '', '', ''),
('M17_DOORWAY', 'forcefieldUp', 'keyUsed', 'WAIT', '0', 'SIG_ENTER_1', '', '', ''),
('M17_DOORWAY', 'LockBombed', '0', 'SIGNAL', 'WIP2', 'SIG_OFF', '', '', ''),
('M17_DOORWAY', 'caveNoLockEntry', '0', 'LOADVIEW', 'WIP1', '', '
    WRITE("No Lock entry - SIGNAL THE FOUL WIND");
    SIGNAL(WIP3,SIG_START);
', '', ''),
('M17_DOORWAY', 'keyUsed', 'tempOpen', 'SIGNAL', 'WIP2', 'SIG_OFF', '', '', ''),
('M17_DOORWAY', 'tempOpen', 'letInOne', 'CLICK', '0', '0', '', '', ''),
('M17_DOORWAY', 'tempOpen', 'Lock', 'WAIT', '0', 'SIG_CLOSE', '', '', ''),
('M17_DOORWAY', 'letInOne', 'Lock', 'LOADVIEW', 'WIP1', '', '
   WRITE("unlocked SIGNAL THE FOUL WIND");
   SIGNAL(WIP3,SIG_START);
', '', ''),





('M17_LOCKBURN', '0', '1', 'WAIT', '0', 'SIG_BURN', '', '', ''),
('M17_LOCKBURN', '0', '5', 'WAIT', '0', 'SIG_HIDE', '', '', ''),
('M17_LOCKBURN', '1', '2', 'SHOW', '0', 'IDS_MINEBLOW', '', '', ''),
('M17_LOCKBURN', '2', '3', 'PLAYWAVE', '0', 'SOUND_EXPLODE', '', '', ''),
('M17_LOCKBURN', '3', '0', 'VIDEO', '0', 'IDS_EXPLODE1', '', '', ''),
('M17_LOCKBURN', '5', '0', 'Z_EPSILON', '', '', '
    SHOW();
', '', ''),

('M17_LOCKSOCKET', '0', 'citlockdropped', 'DROP', '0', 'IDD_CITLOCK', '', '', ''),
('M17_LOCKSOCKET', '0', 'villockdropped', 'DROP', '0', 'IDD_VILLOCK', '', '', ''),
('M17_LOCKSOCKET', '0', 'bombed', 'DROP', '0', 'IDD_BOMB1', '', '', ''),
('M17_LOCKSOCKET', '0', 'bombed', 'DROP', '0', 'IDD_BOMB2', '', '', ''),

('M17_LOCKSOCKET', 'citlockdropped', 'citlockshown', 'SIGNAL', 'WIP1', 'SIG_CLOSE', '
    SIGNAL(WIP2,SIG_HIDE);
    SIGNAL(WIP3,SIG_SHOW);
    SIGNAL(WIP4,SIG_SHOW);
    ASHOW(WOBJECT);
    ADDI(LKARMA,1);
    SIGNAL(SID_HALO,SIG_ADD);
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
    ADDI(LKARMA,1);
    SIGNAL(SID_HALO,SIG_ADD);
', '', ''),

('M17_LOCKSOCKET', 'villockshown', 'vilclicklocked', 'CLICK', '0', '0', '', '', ''),
('M17_LOCKSOCKET', 'villockshown', 'vilunlocked', 'DRAG', '0', 'IDD_VILKEY', '', '', ''),
('M17_LOCKSOCKET', 'villockshown', 'bombed', 'DROP', '0', 'IDD_BOMB1', '', '', ''),
('M17_LOCKSOCKET', 'villockshown', 'bombed', 'DROP', '0', 'IDD_BOMB2', '', '', ''),
('M17_LOCKSOCKET', 'vilunlocked', 'villockshown', 'SIGNAL', 'WIP1', 'SIG_ENTER_1', '', '', ''),
('M17_LOCKSOCKET', 'vilclicklocked', 'villockshown', 'SIGNAL', 'WIP1', 'SIG_CLOSE', '', '', ''),


('M_STATESCALEV', '0', '5', 'WAIT', '0', 'SIG_SHOW','','',''),
('M_STATESCALEV', '5', '10', 'ASHOW', 'WIP1', '0','','',''),
('M_STATESCALEV', '10', '11', 'WAIT', '0', 'SIG_HIDE','','',''),
('M_STATESCALEV', '11', '0', 'ASHOW', '0', '0','','','');



-- ('M17_FOULWIND', '0', '1', 'WAIT', '0', 'SIG_START', '', '', ''),
-- ('M17_FOULWIND', '1', '2', 'PLAYWAVE', '0', 'SOUND_BURBLE', '', '', ''),
-- ('M17_FOULWIND', '2', '4', 'ESTIME', '0', '5', '', '', ''),
-- ('M17_FOULWIND', '4', '0', 'NEQUALi', 'LVIEW', 'WIP1', '', '', ''),
-- ('M17_FOULWIND', '4', '0', 'SIGNALi', 'SIG_DEC', 'SID_DEC_ENERGY', '
--     WRITE("I PAIN YOU!");
-- ', '', ''),