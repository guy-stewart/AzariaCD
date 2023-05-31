delete from games;

------------------------------------RESOURCES


--where the spells/scrolls currently live
-- ('4609', '0x1201', '4643', 'IDV_TMCUT', '30', '100', '60', '187', '2', 'M_OBJECTBIN', '0x2201', '', '', ''),
-- ('4610', '0x1202', '4643', 'IDV_TMCUT', '60', '100', '90', '187', '2', 'M_OBJECTBIN', '0x2202', '', '', ''),
-- ('4611', '0x1203', '4643', 'IDV_TMCUT', '90', '100', '120', '187', '2', 'M_OBJECTBIN', '0x2203', '', '', ''),
-- ('4612', '0x1204', '4643', 'IDV_TMCUT', '130', '100', '160', '187', '2', 'M_OBJECTBIN', '0x2204', '', '', ''),
-- ('4613', '0x1205', '4643', 'IDV_TMCUT', '160', '100', '190', '187', '2', 'M_OBJECTBIN', '0x2205', '', '', ''),
-- ('4614', '0x1206', '4643', 'IDV_TMCUT', '190', '100', '220', '187', '2', 'M_OBJECTBIN', '0x2206', '', '', ''),
-- ('4615', '0x1207', '4643', 'IDV_TMCUT', '260', '100', '290', '187', '2', 'M_OBJECTBIN', '0x2207', '', '', ''),
-- ('4616', '0x1208', '4643', 'IDV_TMCUT', '330', '100', '360', '187', '2', 'M_OBJECTBIN', '0x2208', '', '', ''),
-- ('4617', '0x1209', '4643', 'IDV_TMCUT', '366', '100', '396', '187', '2', 'M_OBJECTBIN', '0x2209', '', '', ''),
-- ('4618', '0x120a', '4643', 'IDV_TMCUT', '400', '100', '430', '187', '2', 'M_OBJECTBIN', '0x2210', '', '', ''),
-- ('4619', '0x120b', '4643', 'IDV_TMCUT', '435', '100', '465', '187', '2', 'M_OBJECTBIN', '0x2211', '', '', ''),
-- ('4620', '0x120c', '4643', 'IDV_TMCUT', '500', '100', '530', '187', '2', 'M_OBJECTBIN', '0x2212', '', '', ''),
-- ('4621', '0x120d', '4643', 'IDV_TMCUT', '570', '100', '600', '187', '2', 'M_OBJECTBIN', '0x2213', '', '', '');

delete from "main"."spr_names"  where [name] like 'IDS_SCR02%';
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES 
('IDS_SCR020', 'SCR020', '8736'),
('IDS_SCR021', 'SCR021', '8737'),
('IDS_SCR022', 'SCR022', '8738');

delete from objects where [object] like 'IDD_SCR02%';
INSERT INTO "main"."objects" ("object", "object_id", "class", "icon", "cursor", "actor") 
VALUES 
('IDD_SCR020', '8736', 'IDC_SCROLL', 'SCR020', 'SCR020', 'SCR020'),
('IDD_SCR021', '8737', 'IDC_SCROLL', 'SCR021', 'SCR021', 'SCR021'),
('IDD_SCR022', '8738', 'IDC_SCROLL', 'SCR022', 'SCR022', 'SCR022');

delete from machines where [name] like 'S12_%';
delete from machines where [name] like 'S22_%';

delete from transitions where [name] like 'M22_%';

delete from transitions where [name] like 'M12_ING%';

delete from map where op like 'S12_ing_%';
delete from map where op like 'S12_NAT%';


INSERT INTO "main"."map" ("op", "key", "value")
VALUES 
--enchantment
('S12_ING_A', '1', '2'), --red
('S12_ING_B', '1', '1'),--fern
('S12_ING_C', '1', '2'),--red
('S12_ING_D', '1', 'IDD_FISH1A'),
('S12_ING_NY', '1', '2'),
('S12_ING_LOC', '1', '0'),
('S12_ING_WRD', '1', '0'),
('S12_SCROLL', 'IDD_SCR001', '1'),

--stalking
('S12_ING_A', '2', '13'),
('S12_ING_B', '2', '1'), --fern
('S12_ING_C', '2', '13'), 
('S12_ING_D', '2', 'IDD_FISH1A'),
('S12_ING_NY', '2', '2'),
('S12_ING_LOC', '2', '1'),
('S12_ING_WRD', '2', '1'),
('S12_SCROLL', 'IDD_SCR002', '2'),

--Blindness
('S12_ING_A', '3', '6'), 
('S12_ING_B', '3', ''),
('S12_ING_C', '3', '6'), 
('S12_ING_D', '3', 'IDD_FISH2A'),
('S12_ING_NY', '3', '1'),
('S12_ING_LOC', '3', '2'),
('S12_ING_WRD', '3', '2'),
('S12_SCROLL', 'IDD_SCR003', '3'),

--holding
('S12_ING_A', '4', '13'), 
('S12_ING_B', '4', '0'),
('S12_ING_C', '4', '5'),
('S12_ING_D', '4', 'IDD_FISH3A'),
('S12_ING_NY', '4', '1'),
('S12_ING_LOC', '4', '3'),
('S12_ING_WRD', '4', '3'),
('S12_SCROLL', 'IDD_SCR004', '4'),

--transfer
('S12_ING_A', '5', '5'), 
('S12_ING_B', '5', '9'),
('S12_ING_C', '5', '5'),
('S12_ING_D', '5', 'IDD_FISH2A'),
('S12_ING_NY','5', '2'),
('S12_ING_LOC','5', '0'),
('S12_ING_WRD', '5', '4'),
('S12_SCROLL', 'IDD_SCR005', '5'),

--Slarm
('S12_ING_A', '6', '5'), 
('S12_ING_B', '6', ''),
('S12_ING_C', '6', '7'), 
('S12_ING_D', '6', 'IDD_FISH5A'),
('S12_ING_NY','6', '2'),
('S12_ING_LOC','6', '1'),
('S12_ING_WRD', '6', '5'),
('S12_SCROLL', 'IDD_SCR006', '6'),

--record
('S12_ING_A', '7', '8'), 
('S12_ING_B', '7', '0'),
('S12_ING_C', '7', '8'),
('S12_ING_D', '7', 'IDD_FIHS6A'),
('S12_ING_NY','7', '3'),
('S12_ING_LOC','7', '2'),
('S12_ING_WRD', '7', '6'),
('S12_SCROLL', 'IDD_SCR007', '7'),

--telekinesis
('S12_ING_A', '8', '7'), 
('S12_ING_B', '8', ''),
('S12_ING_C', '8', '9'),
('S12_ING_D', '8', 'IDD_FISH7A'),
('S12_ING_NY','8', '3'),
('S12_ING_LOC','8', '3'),
('S12_ING_WRD', '8', '7'),
('S12_SCROLL', 'IDD_SCR008', '8'),

--Explosion
('S12_ING_A', '9', '10'), 
('S12_ING_B', '9', '12'),
('S12_ING_C', '9', '10'),
('S12_ING_D', '9', 'IDD_FISH3A'),
('S12_ING_NY','9', '3'),
('S12_ING_LOC','9', '0'),
('S12_ING_WRD', '9', '8'),
('S12_SCROLL', 'IDD_SCR009', '9'),

--Lock
('S12_ING_A', '10', '9'), 
('S12_ING_B', '10', ''),
('S12_ING_C', '10', '1'),
('S12_ING_D', '10', 'IDD_FISH4A'),
('S12_ING_NY','10', '4'),
('S12_ING_LOC','10', '1'),
('S12_ING_WRD', '10', '9'),
('S12_SCROLL', 'IDD_SCR010', '10'),

--Lock Pick
('S12_ING_A', '11', '6'), 
('S12_ING_B', '11', '5'),
('S12_ING_C', '11', '13'),
('S12_ING_D', '11', 'IDD_FISH3A'),
('S12_ING_NY','11', '4'),
('S12_ING_LOC','11', '2'),
('S12_ING_WRD', '11', '10'),
('S12_SCROLL', 'IDD_SCR011', '11'),

--protection
('S12_ING_A', '12', '11'), 
('S12_ING_B', '12', ''),
('S12_ING_C', '12', '12'),
('S12_ING_D', '12', 'IDD_FISH2A'),
('S12_ING_NY','12', '9'),
('S12_ING_LOC','12', '3'),
('S12_ING_WRD', '12', '11'),
('S12_SCROLL', 'IDD_SCR012', '12'),

--Death
('S12_ING_A', '13', '2'), 
('S12_ING_B', '13', '14'),  
('S12_ING_C', '13', '13'),
('S12_ING_D', '13', 'IDD_FISH10'),
('S12_ING_NY','13', '5'),
('S12_ING_LOC','13', '0'),
('S12_ING_WRD', '13', '12'),
('S12_SCROLL', 'IDD_SCR013', '13'),

--invisibility
('S12_ING_A', '14', '5'), 
('S12_ING_B', '14', ''),  
('S12_ING_C', '14', '5'),
('S12_ING_D', '14', 'IDD_FISH4A'),
('S12_ING_NY','14', '5'),
('S12_ING_LOC','14', '1'),
('S12_ING_WRD', '14', '13'),
('S12_SCROLL', 'IDD_SCR014', '14'),

--Strength
('S12_ING_A', '15', ''), 
('S12_ING_B', '15', '4'),  
('S12_ING_C', '15', ''),
('S12_ING_D', '15', ''),
('S12_ING_NY','15', '5'),
('S12_ING_LOC','15', '2'),
('S12_ING_WRD', '15', '14'),
('S12_SCROLL', 'IDD_SCR015', '15'),

--banishment
('S12_ING_A', '16', '7'), 
('S12_ING_B', '16', ''),  
('S12_ING_C', '16', '6'),
('S12_ING_D', '16', 'IDD_FIHS6A'),
('S12_ING_NY','16', '6'),
('S12_ING_LOC','16', '3'),
('S12_ING_WRD', '16', '15'),
('S12_SCROLL', 'IDD_SCR016', '16'),

--Perception
('S12_ING_A', '17', ''), 
('S12_ING_B', '17', '6'),  
('S12_ING_C', '17', ''),
('S12_ING_D', '17', ''),
('S12_ING_NY','17', '6'),
('S12_ING_LOC','17', '0'),
('S12_ING_WRD', '17', '16'),
('S12_SCROLL', 'IDD_SCR017', '17'),

--halucination
('S12_ING_A', '18', '9'), 
('S12_ING_B', '18', '10'),  
('S12_ING_C', '18', '8'),
('S12_ING_D', '18', 'IDD_FISH8A'),
('S12_ING_NY','18', '6'),
('S12_ING_LOC','18', '1'),
('S12_ING_WRD', '18', '17'),
('S12_SCROLL', 'IDD_SCR018', '18'),

--Breath
('S12_ING_A', '19', ''), 
('S12_ING_B', '19', '13'),  
('S12_ING_C', '19', ''),
('S12_ING_D', '19', ''),
('S12_ING_NY','19', '7'),
('S12_ING_LOC','19', '2'),
('S12_ING_WRD', '19', '18'),
('S12_SCROLL', 'IDD_SCR019', '19'),

--submerge
('S12_ING_A', '20', '7'), 
('S12_ING_B', '20', '7'),  
('S12_ING_C', '20', '7'),
('S12_ING_D', '20', 'IDD_FISH7A'),
('S12_ING_NY','20', '8'),
('S12_ING_LOC','20', '3'),
('S12_ING_WRD', '20', '19'),
('S12_SCROLL', 'IDD_SCR020', '20'),

--Eyespell 
('S12_ING_A', '21', '13'), 
('S12_ING_B', '21', '12'),  
('S12_ING_C', '21', '2'),
('S12_ING_D', '21', 'IDD_FISH9A'),
('S12_ING_NY','21', '7'),
('S12_ING_LOC','21', '1'),
('S12_ING_WRD', '21', '20'),
('S12_SCROLL', 'IDD_SCR021', '21'),

--Memspell (time)
('S12_ING_A', '22', '13'), --CHANGE TO NYSTRAM WALL PLANT
('S12_ING_B', '22', '13'),  
('S12_ING_C', '22', '4'),
('S12_ING_D', '22', 'IDD_FISH10'),
('S12_ING_NY','22', '7'),
('S12_ING_LOC','22', '3'),
('S12_ING_WRD', '22', '21'),
('S12_SCROLL', 'IDD_SCR022', '22');



INSERT INTO "main"."map" ("op", "key", "value")
VALUES 

('S12_NATURE_REP', 'IDC_FERN', '0'), 
('S12_NATURE_REP', 'IDC_BERRYR', '1'), 
('S12_NATURE_REP', 'IDC_BERRYB', '2'), 
('S12_NATURE_REP', 'IDC_LEAFP', '3'), 
('S12_NATURE_REP', 'IDC_LEAFG', '4'), 
('S12_NATURE_REP', 'IDC_MUSHF', '5'), 
('S12_NATURE_REP', 'IDC_MUSHT', '6'), 
('S12_NATURE_REP', 'IDC_FLOWERD', '7'), 
('S12_NATURE_REP', 'IDC_FLOWERW', '8'), 
('S12_NATURE_REP', 'IDC_FLOWERR', '9'), 
('S12_NATURE_REP', 'IDC_WILDBERRY', '10'),    
('S12_NATURE_REP', 'IDC_DOUBLEROOT', '11'),  
('S12_NATURE_REP', 'IDC_ROOT2', '12'),  
('S12_NATURE_REP', 'IDC_GOPA3', '13');


--------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------

--IDS_PLNTSCRL
--IDS_FISHSCRL
--IDS_SHLDSCRL
--SCROLL_NYSTROM
--IDS_VIALSCRL
--IDS_WORDSCRL
--Machines for the spell viewer

INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") VALUES 

--('8704', 'S22_SCROLLMAN', '8705', 'IDV_SPELLPAN', '0', '0', '0', '0', '2', 'M22_SCROLLMAN', '', '', '', ''),

('8705', 'S12_SHIELD', '8705', 'IDV_SPELLPAN', '49', '24', '118', '113', '2', 'M12_ING_STD', 'SMP_EYEINFO', 'S12_ING_LOC', 'IDS_SHLDSCRL', ''),
('8706', 'S12_WORD', '8705', 'IDV_SPELLPAN', '133', '62', '354', '89', '2', 'M12_ING_STD', 'SMP_EYEINFO', 'S12_ING_WRD', 'IDS_WORDSCRL', ''),
('8707', 'S12_ING1', '8705', 'IDV_SPELLPAN', '213', '105', '274', '165', '2', 'M12_ING_NATA', 'SMP_EYEINFO', 'S12_ING_A', 'S12_NATURE_REP', 'IDS_PLNTSCRL'),
('8708', 'S12_ING2', '8705', 'IDV_SPELLPAN', '287', '105', '348', '165', '2', 'M12_ING_NATB', 'SMP_EYEINFO', 'S12_ING_B', 'S12_NATURE_REP', 'IDS_PLNTSCRL'),
('8709', 'S12_ING3', '8705', 'IDV_SPELLPAN', '367', '105', '423', '165', '2', 'M12_ING_NATC', 'SMP_EYEINFO', 'S12_ING_C', 'S12_NATURE_REP', 'IDS_PLNTSCRL'),
('8711', 'S12_ING4', '8705', 'IDV_SPELLPAN', '273', '185', '376', '226', '2', 'M12_ING_FSH', 'SMP_EYEINFO', 'S12_ING_D', 'IDS_FISHSCRL', ''),
('8713', 'S12_NYST', '8705', 'IDV_SPELLPAN', '302', '231', '259', '280', '2', 'M12_ING_NY', 'SMP_EYEINFO', 'S12_ING_NY', 'IDS_VIALSCRL', '');

--ref SMP_EYEINFO - THEN, R_WTEMP1 HAS THE SCROL DROPPED


INSERT INTO "main"."transitions" ("name", "state", "new_state", "opcode", "param_1", "param_2", "code") 
VALUES 
('M12_ING_STD','0', '1','WAIT', '0', 'SIG_SHOW', ''),
('M12_ING_STD', '1', '0', 'REF_MACHINE', 'WIP1', '0', 'MOV(WPARM,R_WPARM);MOV(BFRAME,WPARM);SUBI(BFRAME,1);MAPi(BFRAME,WIP2);SHOW(WIP3);'),

('M12_ING_NATA','0', '1','WAIT', '0', 'SIG_SHOW', ''),
('M12_ING_NATA', '1', '0', 'REF_MACHINE', 'WIP1', '0', 'CLEAR(BFRAME);MOV(WPARM,R_WPARM);MOV(BFRAME,WPARM);MAPi(BFRAME,S12_ING_A);SHOW(WIP4);'),

('M12_ING_NATB','0', '1','WAIT', '0', 'SIG_SHOW', ''),
('M12_ING_NATB', '1', '0', 'REF_MACHINE', 'WIP1', '0', 'CLEAR(BFRAME);MOV(WPARM,R_WPARM);MOV(BFRAME,WPARM);MAPi(BFRAME,S12_ING_B);SHOW(WIP4);'),

('M12_ING_NATC','0', '1','WAIT', '0', 'SIG_SHOW', ''),
('M12_ING_NATC', '1', '0', 'REF_MACHINE', 'WIP1', '0', 'CLEAR(BFRAME);MOV(WPARM,R_WPARM);MOV(BFRAME,WPARM);MAPi(BFRAME,S12_ING_C);SHOW(WIP4);'),

('M12_ING_FSH','0', '1','WAIT', '0', 'SIG_SHOW', ''),
('M12_ING_FSH', '1', '0', 'REF_MACHINE', 'WIP1', '0', 'MOV(BFRAME,R_WPARM);MAPi(BFRAME,S12_ING_NY);SHOW(WIP3);'),


('M12_ING_NY','0', '1','WAIT', '0', 'SIG_SHOW', ''),
('M12_ING_NY', '1', '0', 'REF_MACHINE', 'WIP1', '0', 'MOV(BFRAME,R_WPARM);MAPi(BFRAME,S12_ING_NY);SHOW(WIP3);');






--MOV(WPARM,R_WPARM);MAPi(WPARM,WIP2);MAPi(WPARM,WIP3);MOV(BFRAME,WPARM);SHOW(WIP4);

