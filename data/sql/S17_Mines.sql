

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
 
delete from machines where [name] like  'S17_aFF%';
delete from machines where [name] like  'S17_bFF%';
delete from machines where [name] like  'S17_cFF%';
delete from machines where [name] like  'S17_dFF%';
delete from machines where [name] like  'S17_eFF%';

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
INSERT INTO "main"."machines" ("name", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") 
VALUES 
('S17_ALT_a_A',     'IDV_QUARSA', '3155', '157', '3176', '171', '0', 'M_STATESCALEV', 'IDS_QUARLOCK_A', '', '', ''),
('S17_ALT_a_B',     'IDV_QUARSB', '3147', '161', '3185', '188', '0', 'M_STATESCALEV', 'IDS_QUARLOCK_B', '', '', ''),
('S17_ALT_b_A',     'IDV_QUARSA', '188', '161', '211', '181', '0', 'M_STATESCALEV', 'IDS_QUARLOCK_A', '', '', ''),
('S17_ALT_b_B',     'IDV_QUARSB', '336', '159', '374', '192', '0', 'M_STATESCALEV', 'IDS_QUARLOCK_B', '', '', ''),
('S17_ALT_c_A',     'IDV_QUARSA', '425', '173', '452', '196', '0', 'M_STATESCALEV', 'IDS_QUARLOCK_A', '', '', ''),
('S17_ALT_c_B',     'IDV_QUARSB', '813', '159', '856', '197', '0', 'M_STATESCALEV', 'IDS_QUARLOCK_B', '', '', ''),
('S17_ALT_d_A',     'IDV_QUARSA', '2759', '165', '2762', '169', '0', 'M_STATESCALEV', 'IDS_QUARLOCK_A', '', '', ''),
('S17_ALT_d_B',     'IDV_QUARSB', '2229', '182', '2272', '216', '0', 'M_STATESCALEV', 'IDS_QUARLOCK_B', '', '', ''),
('S17_ALT_e_A',     'IDV_QUARSA', '2973', '154', '2993', '173', '0', 'M_STATESCALEV', 'IDS_QUARLOCK_A', '', '', ''),
('S17_ALT_e_B',     'IDV_QUARSB', '2730', '169', '2773', '199', '0', 'M_STATESCALEV', 'IDS_QUARLOCK_B', '', '', ''),

('S17_aLOCKSOCKET', 'IDV_aMINEPAN', '172', '118', '232', '163', '0', 'M17_LOCKSOCKET', 'S17_aDOORWAY', 'S17_aLOCKBURN', 'S17_ALT_a_A', 'S17_ALT_a_B'),
('S17_bLOCKSOCKET', 'IDV_bMINEPAN', '172', '118', '232', '163', '0', 'M17_LOCKSOCKET', 'S17_bDOORWAY', 'S17_bLOCKBURN', 'S17_ALT_b_A', 'S17_ALT_b_B'),
('S17_cLOCKSOCKET', 'IDV_cMINEPAN', '172', '118', '232', '163', '0', 'M17_LOCKSOCKET', 'S17_cDOORWAY', 'S17_cLOCKBURN', 'S17_ALT_c_A', 'S17_ALT_c_B'),
('S17_dLOCKSOCKET', 'IDV_dMINEPAN', '172', '118', '232', '163', '0', 'M17_LOCKSOCKET', 'S17_dDOORWAY', 'S17_dLOCKBURN', 'S17_ALT_d_A', 'S17_ALT_d_B'),
('S17_eLOCKSOCKET', 'IDV_eMINEPAN', '172', '118', '232', '163', '0', 'M17_LOCKSOCKET', 'S17_eDOORWAY', 'S17_eLOCKBURN', 'S17_ALT_e_A', 'S17_ALT_e_B'),


--This may need to go to 0/local_visable - from 2
('S17_aDOORWAY',    'IDV_aMINEPAN', '280', '75', '480', '274', '0', 'M17_DOORWAY', 'IDV_aCV1aPAN', 'S17_aFFIELD1', 'S17_aFOULWIND', ''),
('S17_bDOORWAY',    'IDV_bMINEPAN', '280', '75', '480', '274', '0', 'M17_DOORWAY', 'IDV_bCV1aPAN', 'S17_bFFIELD1', 'S17_bFOULWIND', ''),
('S17_cDOORWAY',    'IDV_cMINEPAN', '280', '75', '480', '274', '0', 'M17_DOORWAY', 'IDV_cCV1aPAN', 'S17_cFFIELD1', 'S17_cFOULWIND', ''),
('S17_dDOORWAY',    'IDV_dMINEPAN', '280', '75', '480', '274', '0', 'M17_DOORWAY', 'IDV_dCV1aPAN', 'S17_dFFIELD1', 'S17_dFOULWIND', ''),
('S17_eDOORWAY',    'IDV_eMINEPAN', '280', '75', '480', '274', '0', 'M17_DOORWAY', 'IDV_eCV1aPAN', 'S17_eFFIELD1', 'S17_eFOULWIND', ''),

('S17_aFFIELD1', 'IDV_aMINEPAN', '280', '75', '480', '274', '0', 'M17_FFIELD','S17_aFFIELD2', '', '', ''),
('S17_aFFIELD2', 'IDV_aMINEPAN', '280', '156','280','156',  '0', 'M17_FFIELD','S17_aFFIELD3', '', '', ''),
('S17_aFFIELD3', 'IDV_aMINEPAN', '280', '223','280','223',  '0', 'M17_FFIELD','', '', '', ''),

('S17_bFFIELD1', 'IDV_bMINEPAN', '280', '75', '480', '274', '0', 'M17_FFIELD','S17_bFFIELD2', '', '', ''),
('S17_bFFIELD2', 'IDV_bMINEPAN', '280', '156','280','156',  '0', 'M17_FFIELD','S17_bFFIELD3', '', '', ''),
('S17_bFFIELD3', 'IDV_bMINEPAN', '280', '223','280','223',  '0', 'M17_FFIELD','', '', '', ''),

('S17_cFFIELD1', 'IDV_cMINEPAN', '280', '75', '480', '274', '0', 'M17_FFIELD','S17_cFFIELD2', '', '', ''),
('S17_cFFIELD2', 'IDV_cMINEPAN', '280', '156','280','156',  '0', 'M17_FFIELD','S17_cFFIELD3', '', '', ''),
('S17_cFFIELD3', 'IDV_cMINEPAN', '280', '223','280','223',  '0', 'M17_FFIELD','', '', '', ''),

('S17_dFFIELD1', 'IDV_dMINEPAN', '280', '75', '480', '274', '0', 'M17_FFIELD','S17_dFFIELD2', '', '', ''),
('S17_dFFIELD2', 'IDV_dMINEPAN', '280', '156','280','156',  '0', 'M17_FFIELD','S17_dFFIELD3', '', '', ''),
('S17_dFFIELD3', 'IDV_dMINEPAN', '280', '223','280','223',  '0', 'M17_FFIELD','', '', '', ''),

('S17_eFFIELD1', 'IDV_eMINEPAN', '280', '75', '480', '274', '0', 'M17_FFIELD','S17_eFFIELD2', '', '', ''),
('S17_eFFIELD2', 'IDV_eMINEPAN', '280', '156','280','156',  '0', 'M17_FFIELD','S17_eFFIELD3', '', '', ''),
('S17_eFFIELD3', 'IDV_eMINEPAN', '280', '223','280','223',  '0', 'M17_FFIELD','', '', '', '');


INSERT INTO "main"."machines" ("name", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") VALUES 

( 'S17_aFOULWIND', 'IDV_aCV1bPAN', '1', '1', '10', '10', '2', 'M_DEATHMANAGER', '6', 'NYBREATH_ACTIVE','20','SOUND_SPLASH'),
( 'S17_bFOULWIND', 'IDV_bCV1bPAN', '1', '1', '10', '10', '2', 'M_DEATHMANAGER', '6', 'NYBREATH_ACTIVE','20','SOUND_SPLASH'),
( 'S17_cFOULWIND', 'IDV_cCV1bPAN', '1', '1', '10', '10', '2', 'M_DEATHMANAGER', '6', 'NYBREATH_ACTIVE','20','SOUND_SPLASH'),
( 'S17_dFOULWIND', 'IDV_dCV1bPAN', '1', '1', '10', '10', '2', 'M_DEATHMANAGER', '6', 'NYBREATH_ACTIVE','20','SOUND_SPLASH'),
( 'S17_eFOULWIND', 'IDV_eCV1bPAN', '1', '1', '10', '10', '2', 'M_DEATHMANAGER', '6', 'NYBREATH_ACTIVE','20','SOUND_SPLASH');



-- EXITING THE MINES

--fixing the cardinals
delete from cardinals where [from] like 'IDV_%CV1%';
INSERT INTO "main"."cardinals" ("from", "north", "northeast", "east", "southeast", "south", "southwest", "west", "northwest") VALUES 
 ('IDV_aCV1aPAN', 'IDV_aCV1bPAN', '', '', '', '', '', '', ''),
 ('IDV_aCV1bPAN', '', '', '', '', 'IDV_aCV1aPAN', '', '', ''),
 ('IDV_bCV1aPAN', 'IDV_bCV1bPAN', '', '', '', '', '', '', ''),
 ('IDV_bCV1bPAN', '', '', '', '', 'IDV_bCV1aPAN', '', '', ''),
 ('IDV_cCV1aPAN', 'IDV_cCV1bPAN', '', '', '', '', '', '', ''),
 ('IDV_cCV1bPAN', '', '', '', '', 'IDV_cCV1aPAN', '', '', ''),
 ('IDV_dCV1aPAN', '', '', '', '', '', '', '', 'IDV_dCV1bPAN'),
 ('IDV_dCV1bPAN', '', '', '', 'IDV_dCV1aPAN', '', '', '', ''),
 ('IDV_eCV1aPAN', '', '', '', '', '', '', '', 'IDV_eCV1bPAN'),
 ('IDV_eCV1bPAN', '', '', '', 'IDV_eCV1aPAN', '', '', '', '');

delete from triggers where [from] = 'IDV_aCV1aPAN'; --southwest
delete from triggers where [from] = 'IDV_bCV1aPAN'; --southwest
delete from triggers where [from] = 'IDV_cCV1aPAN'; --southwest
delete from triggers where [from] = 'IDV_dCV1aPAN'; --southeast
delete from triggers where [from] = 'IDV_eCV1aPAN'; --southeast
INSERT INTO "main"."triggers" ("from", "left", "top", "right", "bottom", "to", "facing", "code") 
VALUES 
('IDV_aCV1aPAN', '1625', '8', '2397', '247','IDV_aMINEPAN', '166', 'SIGNAL(S17_aFOULWIND,SIG_CLEAR);'),
('IDV_bCV1aPAN', '1625', '8', '2397', '247','IDV_bMINEPAN', '166', 'SIGNAL(S17_bFOULWIND,SIG_CLEAR);'),
('IDV_cCV1aPAN', '1625', '8', '2397', '247','IDV_cMINEPAN', '166', 'SIGNAL(S17_cFOULWIND,SIG_CLEAR);'),
('IDV_dCV1aPAN', '894', '2', '1507', '275','IDV_dMINEPAN', '166', 'SIGNAL(S17_dFOULWIND,SIG_CLEAR);'),
('IDV_eCV1aPAN', '894', '2', '1507', '275','IDV_eMINEPAN', '166', 'SIGNAL(S17_eFOULWIND,SIG_CLEAR);');





INSERT INTO "main"."machines" ("name", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name")
VALUES 
('S17_aLOCKBURN','IDV_aMINEPAN', '128', '20', '128', '20', '0', 'M17_LOCKBURN', '', '', '', ''),
('S17_bLOCKBURN','IDV_bMINEPAN', '128', '20', '128', '20', '0', 'M17_LOCKBURN', '', '', '', ''),
('S17_cLOCKBURN','IDV_cMINEPAN', '128', '20', '128', '20', '0', 'M17_LOCKBURN', '', '', '', ''),
('S17_dLOCKBURN','IDV_dMINEPAN', '128', '20', '128', '20', '0', 'M17_LOCKBURN', '', '', '', ''),
('S17_eLOCKBURN','IDV_eMINEPAN', '128', '20', '128', '20', '0', 'M17_LOCKBURN', '', '', '', ''),

('S17_aMINE',    'IDV_aCV1bPAN', '2900', '200', '3200', '300', '2', 'M17_MINE', 'S17_aFOULWIND', '', '', ''),
('S17_bMINE',    'IDV_bCV1bPAN', '2900', '200', '3200', '300', '2', 'M17_MINE', 'S17_bFOULWIND', '', '', ''),
('S17_cMINE',    'IDV_cCV1bPAN', '2339', '191', '3200', '300', '2', 'M17_MINE', 'S17_cFOULWIND', '', '', ''),
('S17_dMINE',    'IDV_dCV1bPAN', '2339', '191', '3200', '300', '2', 'M17_MINE', 'S17_dFOULWIND', '', '', ''),
('S17_eMINE',    'IDV_eCV1bPAN', '2339', '191', '3200', '300', '2', 'M17_MINE', 'S17_eFOULWIND', '', '', '');


delete from  "main"."transitions" where automaton = 'M17_LOCKSOCKET';
delete from "main"."transitions" where [automaton] like 'M17_LOCKBURN%';
delete from  "main"."transitions" where automaton = 'M17_FOULWIND';
delete from "main"."transitions" where [automaton] like 'M17_MINE%';
delete from "main"."transitions" where [automaton] like 'M17_DOORWAY%';
delete from  "main"."transitions" where automaton = 'M_STATESCALEV';
delete from  "main"."transitions" where automaton = 'M17_FFIELD';
--foul winds from beta
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code", "guard", "doc") 
VALUES 

('M17_MINE', '0', '1', 'DRAG', '0', 'IDD_SCOOPE', '
    SIGNAL(WIP1,SIG_START); 
', '', ''),
('M17_MINE', '0', '3', 'DRAG', '0', 'IDD_SCOOPF', '', '', ''),
('M17_MINE', '1', '2', 'PLAYWAVE', '0', 'SOUND_SLURP', '', '', ''),
('M17_MINE', '2', '0', 'HANDOFF', '0', 'IDD_SCOOPF', '', '', ''),
('M17_MINE', '3', '4', 'PLAYWAVE', '0', 'SOUND_SPIT', '', '', ''),
('M17_MINE', '4', '0', 'HANDOFF', '0', 'IDD_SCOOPE', '', '', '');


INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code", "guard", "doc") VALUES 
 ('M17_FFIELD', '0', '1', 'WAIT', '0', 'SIG_ON', '
    SIGNAL(WIP1,SIG_ON);
 ', '', ''),
 ('M17_FFIELD', '1', '3', 'SHOW', '0', 'IDS_FORCEFLD', '', '', ''),
 ('M17_FFIELD', '3', '4', 'ANIMATE', '0', 'V_REWIND|V_LOOP', '', '', ''),
 ('M17_FFIELD', '4', '6', 'WAIT', '0', 'SIG_OFF', '
     SIGNAL(WIP1,SIG_OFF);
 ', '', ''),
 ('M17_FFIELD', '6', '0', 'SHOW', '0', '0', '', '', ''),




--M_DEATHMANAGER
--WIP1 = time before pain sets in
--WIP2 = protection spell that may be active
--WIP3 = time between pain
--WIP4 = Entry sound




-- ('M17_FOULWIND', '0', 'loopTop', 'WAIT', '0', 'SIG_START', '', '', ''),
-- ('M17_FOULWIND', 'loopTop', 'bottomOfLoop', 'ESTIME', '0', '5', '
--     //TODO need to look for protection spell nybreath and fan
--     if (  (IFSTATE(0, WIP3) || IFSTATE(spellStopped, WIP3)) ){
--         WRITE("fair game no protection");
--         PLAYWAVE(SOUND_BURBLE);
--         SIGNAL(SID_DEC_ENERGY,SIG_DEC); 
--     }
-- ', '', ''),
-- ('M17_FOULWIND', 'bottomOfLoop', 'loopTop', 'EQUALi', 'LVIEW', 'WIP1', '', '', ''),
-- ('M17_FOULWIND', 'bottomOfLoop', 'loopTop', 'EQUALi', 'LVIEW', 'WIP2', '', '', ''),
-- ('M17_FOULWIND', 'bottomOfLoop', '0', 'Z_EPSILON', '', '', '', '', ''),



-- We can't signal the foul wind from a shared machine or everyone dies! SIGNAL(WIP3,SIG_START);  
-- The foul wind is only a personal foul wind and must be signaled from something with a 2 for local_visible
   


('M17_DOORWAY', '0', 'caveNoLockEntry', 'CLICK', '0', '0', '', '', ''),
('M17_DOORWAY', '0', 'Lock', 'WAIT', '0', 'SIG_CLOSE', '', '', ''),
('M17_DOORWAY', 'Lock', 'forcefieldUp', 'SIGNAL', 'WIP2', 'SIG_ON', '', '', ''),
('M17_DOORWAY', 'forcefieldUp', 'LockBombed', 'WAIT', '0', 'SIG_OPEN', '', '', ''),
('M17_DOORWAY', 'forcefieldUp', 'keyUsed', 'WAIT', '0', 'SIG_ENTER_1','
    ADDI(LWISDOM,1);
    SIGNALi(0,SID_ID);
', '', ''),
('M17_DOORWAY', 'LockBombed', '0', 'SIGNAL', 'WIP2', 'SIG_OFF', '', '', ''),
('M17_DOORWAY', 'caveNoLockEntry', '0', 'LOADVIEW', 'WIP1', '', '
    WRITE("No Lock entry - ");

', '', ''),
('M17_DOORWAY', 'keyUsed', 'tempOpen', 'SIGNAL', 'WIP2', 'SIG_OFF', '', '', ''),
('M17_DOORWAY', 'tempOpen', 'letInOne', 'CLICK', '0', '0', '', '', ''),
('M17_DOORWAY', 'tempOpen', 'Lock', 'WAIT', '0', 'SIG_CLOSE', '', '', ''),
('M17_DOORWAY', 'letInOne', 'Lock', 'LOADVIEW', 'WIP1', '', '
   WRITE("unlocked ");

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
    ADDI(LKARMA,2);
    SIGNAL(SID_HALO,SIG_ADD);
', '', ''),

('M17_LOCKSOCKET', 'citlockshown', 'citclicklocked', 'CLICK', '0', '0', '', '', ''),
('M17_LOCKSOCKET', 'citlockshown', 'citunlocked', 'DRAG', '0', 'IDD_CITKEY', '', '', ''),
('M17_LOCKSOCKET', 'citlockshown', 'citunlocked', 'DROP', '0', 'IDD_UNLOCK', '', '', ''),
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
    ADDI(LKARMA,2);
    SIGNAL(SID_HALO,SIG_ADD);
', '', ''),

('M17_LOCKSOCKET', 'villockshown', 'vilclicklocked', 'CLICK', '0', '0', '', '', ''),
('M17_LOCKSOCKET', 'villockshown', 'vilunlocked', 'DRAG', '0', 'IDD_VILKEY', '', '', ''),
('M17_LOCKSOCKET', 'villockshown', 'vilunlocked', 'DROP', '0', 'IDD_UNLOCK', '', '', ''),
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