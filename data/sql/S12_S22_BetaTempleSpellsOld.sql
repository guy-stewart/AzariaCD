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



delete from objects where [name] like 'IDD_SCR02%';
INSERT INTO "main"."objects" ("object", "object_id", "class", "icon", "cursor", "actor") 
VALUES 
('IDD_SCR020', '8736', 'IDC_SCROLL', 'SCR020', 'SCR020', 'SCR020'),
('IDD_SCR021', '8737', 'IDC_SCROLL', 'SCR021', 'SCR021', 'SCR021'),
('IDD_SCR022', '8738', 'IDC_SCROLL', 'SCR022', 'SCR022', 'SCR022');

delete from machines where [name] like 'S12_%';

INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") VALUES 
--creating matches in the temple
('4642', 'S12_TCANDLE1', '4625', 'IDV_TM1PAN', '620', '5', '690', '80', '2', 'M_OBJECTMAP', 'IDD_LOG', 'IDD_MATCH', 'SOUND_FIRE', ''),
('4643', 'S12_TCANDLE2', '4625', 'IDV_TM1PAN', '950', '5', '1020', '80', '2', 'M_OBJECTMAP', 'IDD_LOG', 'IDD_MATCH', 'SOUND_FIRE', ''),
('4644', 'S12_TCANDLE3', '4625', 'IDV_TM1PAN', '2070', '5', '2140', '80', '2', 'M_OBJECTMAP', 'IDD_LOG', 'IDD_MATCH', 'SOUND_FIRE', ''),
('4645', 'S12_TCANDLE4', '4625', 'IDV_TM1PAN', '2410', '5', '2480', '80', '2', 'M_OBJECTMAP', 'IDD_LOG', 'IDD_MATCH', 'SOUND_FIRE', ''),

-- the strange vestibules -- TO BE LIFE AND DEATH
('4646', 'S12_SPRING1', '4627', 'IDV_VESTPAN1', '504', '131', '539', '170', '0', 'M12_SPRING', '', '', '', ''),
('4647', 'S12_WATER1', '4627', 'IDV_VESTPAN1', '200', '95', '431', '242', '0', 'M12_WATER', 'S12_CANDLE1', '', '', ''),
('4648', 'S12_CANDLE1', '4627', 'IDV_VESTPAN1', '426', '47', '554', '200', '0', 'M12_CANDLE', 'S12_WATER1', 'S12_ASHSHELF1', '', ''),
('4649', 'S12_ASHSHELF1', '4627', 'IDV_VESTPAN1', '95', '140', '160', '210', '0', 'M12_ASHSHELF', 'S12_CANDLE1', 'S12_WATER1', 'S12_SPRING1', ''),
('4650', 'S12_SPRING2', '4629', 'IDV_VESTPAN2', '504', '131', '539', '170', '0', 'M12_SPRING', '', '', '', ''),
('4651', 'S12_WATER2', '4629', 'IDV_VESTPAN2', '200', '95', '431', '242', '0', 'M12_WATER', 'S12_CANDLE2', '', '', ''),
('4652', 'S12_CANDLE2', '4629', 'IDV_VESTPAN2', '426', '47', '604', '241', '0', 'M12_CANDLE', 'S12_WATER2', 'S12_ASHSHELF2', '', ''),
('4653', 'S12_ASHSHELF2', '4629', 'IDV_VESTPAN2', '95', '140', '160', '210', '0', 'M12_ASHSHELF', 'S12_CANDLE2', 'S12_WATER2', 'S12_SPRING2', ''),

-- the beginnings of spell creation
('4672', 'S12_aCANDLE', '4633', 'IDV_TMCU1', '262', '59', '299', '113', '0', 'M12_xCANDLE', 'IDS_CAN1', '', '', ''),
('4673', 'S12_aSCROLL', '4633', 'IDV_TMCU1', '132', '201', '250', '271', '0', 'M12_xSCROLL', '', '', '', ''),
('4674', 'S12_aPLANT1', '4633', 'IDV_TMCU1', '65', '80', '115', '130', '0', 'M12_xPLANT', 'SCROLL_PLANT1', 'PLANT_FILMSTRIP_MAPPING', 'IDS_PLANTXX', 'S12_aCANDLE'),
('4675', 'S12_aPLANT2', '4633', 'IDV_TMCU1', '115', '80', '165', '130', '0', 'M12_xPLANT', 'SCROLL_PLANT2', 'PLANT_FILMSTRIP_MAPPING', 'IDS_PLANTXX', 'S12_aCANDLE'),
('4676', 'S12_aPLANT3', '4633', 'IDV_TMCU1', '165', '80', '215', '130', '0', 'M12_xPLANT', 'SCROLL_PLANT3', 'PLANT_FILMSTRIP_MAPPING', 'IDS_PLANTXX', 'S12_aCANDLE'),
('4677', 'S12_aFISH1', '4633', 'IDV_TMCU1', '65', '130', '115', '180', '0', 'M12_xPLANT', 'SCROLL_FISH1', 'FISHASH_FILMSTRIP_MAPPING', 'IDS_FISHXX', 'S12_aCANDLE'),
('4678', 'S12_aFISH2', '4633', 'IDV_TMCU1', '115', '130', '165', '180', '0', 'M12_xPLANT', 'SCROLL_FISH2', 'FISHASH_FILMSTRIP_MAPPING', 'IDS_FISHXX', 'S12_aCANDLE'),
('4679', 'S12_aFISH3', '4633', 'IDV_TMCU1', '165', '130', '215', '180', '0', 'M12_xPLANT', 'SCROLL_FISH3', 'FISHASH_FILMSTRIP_MAPPING', 'IDS_FISHXX', 'S12_aCANDLE'),

-- Managing scrolls

('8704', 'S22_SCROLLMAN', '8705', 'IDV_PARCHPAN', '0', '0', '0', '0', '2', 'M22_SCROLLMAN', '', '', '', ''),
('8705', 'S22_SHIELD', '8705', 'IDV_PARCHPAN', '49', '24', '118', '113', '2', 'M22_SHIELD', 'SCROLL_SHIELD', 'IDS_SHLDSCRL', '', ''),
('8706', 'S22_WORD', '8705', 'IDV_PARCHPAN', '133', '62', '354', '89', '2', 'M22_SHIELD', 'SCROLL_SPELL', 'IDS_WORDSCRL', '', ''),
('8707', 'S22_PLANT1', '8705', 'IDV_PARCHPAN', '213', '105', '274', '165', '2', 'M22_SHIELD', 'SCROLL_PLANT1', 'IDS_PLNTSCRL', '', ''),
('8708', 'S22_PLANT2', '8705', 'IDV_PARCHPAN', '287', '105', '348', '165', '2', 'M22_SHIELD', 'SCROLL_PLANT2', 'IDS_PLNTSCRL', '', ''),
('8709', 'S22_PLANT3', '8705', 'IDV_PARCHPAN', '367', '105', '423', '165', '2', 'M22_SHIELD', 'SCROLL_PLANT3', 'IDS_PLNTSCRL', '', ''),
('8710', 'S22_FISH1', '8705', 'IDV_PARCHPAN', '165', '185', '268', '226', '2', 'M22_SHIELD', 'SCROLL_FISH1', 'IDS_FISHSCRL', '', ''),
('8711', 'S22_FISH2', '8705', 'IDV_PARCHPAN', '273', '185', '376', '226', '2', 'M22_SHIELD', 'SCROLL_FISH2', 'IDS_FISHSCRL', '', ''),
('8712', 'S22_FISH3', '8705', 'IDV_PARCHPAN', '381', '185', '483', '226', '2', 'M22_SHIELD', 'SCROLL_FISH3', 'IDS_FISHSCRL', '', ''),
('8713', 'S22_NYSTROM', '8705', 'IDV_PARCHPAN', '302', '231', '259', '280', '2', 'M22_SHIELD', 'SCROLL_NYSTROM', 'IDS_VIALSCRL', '', '');

----------DFAs-------------------------------

delete from transitions where [name] like 'M12_%';


INSERT INTO "main"."transitions" ("name", "state", "new_state", "opcode", "param_1", "param_2", "code") 
VALUES 
('M12_ASHSHELF', '0', '10', 'C_ACCEPT', '0', 'IDC_FISHASH', ''),
('M12_ASHSHELF', '10', '11', 'DROP', '0', '0', ''),
('M12_ASHSHELF', '11', '12', 'SHOW', 'WOBJECT', '', ''),
('M12_ASHSHELF', '12', '13', 'SIGNAL', 'WIP1', '', ''),
('M12_ASHSHELF', '13', '119', 'GRAB', '0', '0', ''),
('M12_ASHSHELF', '13', '14', 'WAIT', '0', '0', ''),
('M12_ASHSHELF', '14', '15', 'ADDI', 'WOBJECT', 'IDD_SPELL01-IDD_FISHASH1', ''),
('M12_ASHSHELF', '15', '115', 'ADDI', 'WOBJECT', 'IDD_SPELx01-IDD_SPELL01', ''),
('M12_ASHSHELF', '15', '115', 'NOTSTATE', 'M12_SPRING_PRESENT', 'WIP3', ''),
('M12_ASHSHELF', '115', '116', 'ASHOW', 'WOBJECT', '', ''),
('M12_ASHSHELF', '116', '117', 'SIGNAL', 'WIP2', '', ''),
('M12_ASHSHELF', '117', '118', 'SIGNAL', 'WIP3', '', ''),
('M12_ASHSHELF', '118', '119', 'GRAB', '0', '0', ''),
('M12_ASHSHELF', '119', '10', 'SHOW', '0', '0', ''),

('M12_CANDLE', '0', '1', 'DRAG', '0', 'IDD_MATCH', ''),
('M12_CANDLE', '0', '6', 'WAIT', '0', '0', ''),
('M12_CANDLE', '1', '2', 'SHOW', '0', 'IDD_VESTCAN', ''),
('M12_CANDLE', '2', '5', 'NOTSTATE', 'M12_WATER_FULL', 'WIP1', ''),
('M12_CANDLE', '2', '5', 'NOTSTATE', 'M12_SHELF_FULL', 'WIP2', ''),
('M12_CANDLE', '2', '0', 'SIGNAL', 'WIP2', '', ''),
('M12_CANDLE', '5', '6', 'WAIT', '0', '0', ''),
('M12_CANDLE', '6', '0', 'SHOW', '0', '0', ''),

('M12_SPRING', '0', '1', 'DROP', '0', 'IDD_SPRINGS', ''),
('M12_SPRING', '1', '2', 'ASHOW', 'WOBJECT', '', ''),
('M12_SPRING', '1', '2', 'ASHOW', 'WOBJECT', '', ''),
('M12_SPRING', '1', '2', 'ASHOW', 'WOBJECT', '', ''),
('M12_SPRING', '1', '2', 'ASHOW', 'WOBJECT', '', ''),
('M12_SPRING', '2', '3', 'GRAB', '0', '0', ''),
('M12_SPRING', '2', '3', 'GRAB', '0', '0', ''),
('M12_SPRING', '2', '3', 'GRAB', '0', '0', ''),
('M12_SPRING', '2', '3', 'GRAB', '0', '0', ''),
('M12_SPRING', '2', '3', 'WAIT', '0', '0', ''),
('M12_SPRING', '2', '3', 'WAIT', '0', '0', ''),
('M12_SPRING', '2', '3', 'WAIT', '0', '0', ''),
('M12_SPRING', '2', '3', 'WAIT', '0', '0', ''),
('M12_SPRING', '3', '4', 'CLEAR', 'WOBJECT', '', ''),
('M12_SPRING', '3', '4', 'CLEAR', 'WOBJECT', '', ''),
('M12_SPRING', '3', '4', 'CLEAR', 'WOBJECT', '', ''),
('M12_SPRING', '3', '4', 'CLEAR', 'WOBJECT', '', ''),
('M12_SPRING', '4', '0', 'SHOW', '0', '0', ''),
('M12_SPRING', '4', '0', 'SHOW', '0', '0', ''),
('M12_SPRING', '4', '0', 'SHOW', '0', '0', ''),
('M12_SPRING', '4', '0', 'SHOW', '0', '0', ''),

('M12_WATER', '0', '1', 'DROP', '0', 'IDD_BUCKF', ''),
('M12_WATER', '1', '2', 'HANDOFF', '0', 'IDD_BUCKE', ''),
('M12_WATER', '2', '3', 'SHOW', '0', 'IDS_VESTH2O', ''),
('M12_WATER', '3', '4', 'SIGNAL', 'WIP1', '', ''),
('M12_WATER', '4', '5', 'WAIT', '0', '0', ''),
('M12_WATER', '5', '0', 'SHOW', '0', '0', ''),

('M12_xCANDLE', '0', '20', 'CLICK', '0', '0', ''),
('M12_xCANDLE', '0', '20', 'DRAG', '0', 'IDD_MATCH', ''),
('M12_xCANDLE', '0', '200', 'DRAG', '0', 'IDD_SCOOPF', ''),
('M12_xCANDLE', '0', '10', 'WAIT', '0', 'SIG_CLEAR', ''),
('M12_xCANDLE', '10', '11', 'NEQUALi', 'BPARM', '0', ''),
('M12_xCANDLE', '10', '0', 'SHOW', '0', '0', ''),
('M12_xCANDLE', '11', '0', 'SHOW', '0', 'IDS_CANNY1', ''),
('M12_xCANDLE', '20', '21', 'MOV', 'WSPRITE', 'WIP1', ''),
('M12_xCANDLE', '21', '22', 'SHOW', 'WSPRITE', '', ''),
('M12_xCANDLE', '22', '23', 'MOV', 'WPARM', 'WTHIS', ''),
('M12_xCANDLE', '23', '24', 'ADDI', 'WPARM', '1', ''),
('M12_xCANDLE', '24', '25', 'REF_MACHINE', 'WPARM', '', ''),
('M12_xCANDLE', '25', '26', 'MOV', 'WTEMP1', 'R_WOBJECT', ''),
('M12_xCANDLE', '26', '0', 'EQUALi', 'WTEMP1', '0', ''),
('M12_xCANDLE', '26', '30', 'SUBI', 'WTEMP1', 'IDD_SCR001', ''),
('M12_xCANDLE', '30', '31', 'MOV', 'WPARM', 'WTHIS', ''),
('M12_xCANDLE', '31', '32', 'ADDI', 'WPARM', '2', ''),
('M12_xCANDLE', '32', '40', 'MOV', 'WTEMP2', '0', ''),
('M12_xCANDLE', '40', '50', 'REF_MACHINE', 'WPARM', '', ''),
('M12_xCANDLE', '50', '51', 'MOV', 'WOBJECT', 'WTEMP1', ''),
('M12_xCANDLE', '51', '52', 'MAP', 'WOBJECT', 'R_WIP1', ''),
('M12_xCANDLE', '52', '60', 'EQUALi', 'WOBJECT', '0', ''),
('M12_xCANDLE', '52', '53', 'SUBI', 'WOBJECT', '1', ''),
('M12_xCANDLE', '53', '54', 'MAP', 'WOBJECT', 'R_WIP2', ''),
('M12_xCANDLE', '54', '0', 'NEQUAL', 'WOBJECT', 'R_WOBJECT', ''),
('M12_xCANDLE', '54', '60', 'Z_EPSILON', '', '', ''),
('M12_xCANDLE', '60', '61', 'ADDI', 'WTEMP2', '1', ''),
('M12_xCANDLE', '61', '70', 'ADDI', 'WPARM', '1', ''),
('M12_xCANDLE', '70', '40', 'LTi', 'WTEMP2', '6', ''),
('M12_xCANDLE', '70', '131', 'MOV', 'WPARM', 'WTHIS', ''),
('M12_xCANDLE', '131', '132', 'ADDI', 'WPARM', '2', ''),
('M12_xCANDLE', '132', '140', 'MOV', 'WTEMP2', '0', ''),
('M12_xCANDLE', '140', '141', 'REF_MACHINE', 'WPARM', '', ''),
('M12_xCANDLE', '141', '160', 'SIGNAL', 'WPARM', 'SIG_CLEAR', ''),
('M12_xCANDLE', '160', '161', 'ADDI', 'WTEMP2', '1', ''),
('M12_xCANDLE', '161', '170', 'ADDI', 'WPARM', '1', ''),
('M12_xCANDLE', '170', '140', 'LTi', 'WTEMP2', '6', ''),
('M12_xCANDLE', '170', '180', 'Z_EPSILON', '', '', ''),
('M12_xCANDLE', '180', '181', 'MOV', 'WTEMP1', 'WTEMP1', ''),
('M12_xCANDLE', '181', '182', 'MAPi', 'WTEMP1', 'SCROLL_SPELL', ''),
('M12_xCANDLE', '182', '183', 'ADDI', 'WTEMP1', 'IDS_ENCHANT', ''),
('M12_xCANDLE', '183', '184', 'MOV', 'WPARM', 'WTHIS', ''),
('M12_xCANDLE', '184', '185', 'ADDI', 'WPARM', '3', ''),
('M12_xCANDLE', '185', '0', 'SIGNAL', 'WPARM', 'SIG_SET', ''),
('M12_xCANDLE', '200', '201', 'ADDI', 'BPARM', '1', ''),
('M12_xCANDLE', '201', '202', 'PLAYWAVE', '0', 'SOUND_SLURP', ''),
('M12_xCANDLE', '202', '0', 'HANDOFF', '0', 'IDD_SCOOPE', ''),

('M12_xPLANT', '0', '30', 'DROP', '0', '0', ''),
('M12_xPLANT', '0', '11', 'WAIT', '0', 'SIG_OPEN', ''),
('M12_xPLANT', '0', '70', 'WAIT', '0', 'SIG_SET', ''),
('M12_xPLANT', '11', '12', 'MOV', 'BFRAME', 'WTEMP1', ''),
('M12_xPLANT', '12', '13', 'MAP', 'BFRAME', 'WIP1', ''),
('M12_xPLANT', '13', '0', 'EQUALi', 'BFRAME', '0', ''),
('M12_xPLANT', '13', '14', 'MOV', 'WSPRITE', 'WIP3', ''),
('M12_xPLANT', '14', '15', 'SUBI', 'BFRAME', '1', ''),
('M12_xPLANT', '15', '20', 'SHOW', 'WSPRITE', '', ''),
('M12_xPLANT', '20', '30', 'DROP', '0', '0', ''),
('M12_xPLANT', '20', '21', 'WAIT', '0', 'SIG_CLOSE', ''),
('M12_xPLANT', '21', '0', 'SHOW', '0', '0', ''),
('M12_xPLANT', '30', '31', 'CLEAR', 'BFRAME', '', ''),
('M12_xPLANT', '31', '32', 'ASHOW', 'WOBJECT', '', ''),
('M12_xPLANT', '32', '40', 'SIGNAL', 'WIP4', 'SIG_CLEAR', ''),
('M12_xPLANT', '40', '41', 'GRAB', '0', '0', ''),
('M12_xPLANT', '40', '41', 'WAIT', '0', 'SIG_CLEAR', ''),
('M12_xPLANT', '41', '42', 'CLEAR', 'BFRAME', '', ''),
('M12_xPLANT', '42', '43', 'CLEAR', 'WOBJECT', '', ''),
('M12_xPLANT', '43', '0', 'SHOW', '0', '0', ''),
('M12_xPLANT', '70', '71', 'MOV', 'WOBJECT', 'WTEMP1', ''),
('M12_xPLANT', '71', '72', 'VIDEO', 'V_REVERSE', 'IDS_SPEFFECT', ''),
('M12_xPLANT', '72', '73', 'PLAYWAVE', '0', 'SOUND_POPUP', ''),
('M12_xPLANT', '73', '40', 'ASHOW', 'WOBJECT', '', ''),

('M12_xSCROLL', '0', '10', 'DROP', '0', '0', ''),
('M12_xSCROLL', '10', '11', 'SHOW', '0', 'IDS_SCRHUNG', ''),
('M12_xSCROLL', '11', '12', 'MOV', 'WTEMP1', 'WOBJECT', ''),
('M12_xSCROLL', '12', '14', 'SUBI', 'WTEMP1', 'IDD_SCR001', ''),
('M12_xSCROLL', '14', '15', 'MOV', 'WPARM', 'WTHIS', ''),
('M12_xSCROLL', '15', '16', 'ADDI', 'WPARM', '1', ''),
('M12_xSCROLL', '16', '17', 'SIGNAL', 'WPARM', 'SIG_OPEN', ''),
('M12_xSCROLL', '17', '18', 'ADDI', 'WPARM', '1', ''),
('M12_xSCROLL', '18', '19', 'SIGNAL', 'WPARM', 'SIG_OPEN', ''),
('M12_xSCROLL', '19', '20', 'ADDI', 'WPARM', '1', ''),
('M12_xSCROLL', '20', '21', 'SIGNAL', 'WPARM', 'SIG_OPEN', ''),
('M12_xSCROLL', '21', '22', 'ADDI', 'WPARM', '1', ''),
('M12_xSCROLL', '22', '23', 'SIGNAL', 'WPARM', 'SIG_OPEN', ''),
('M12_xSCROLL', '23', '24', 'ADDI', 'WPARM', '1', ''),
('M12_xSCROLL', '24', '25', 'SIGNAL', 'WPARM', 'SIG_OPEN', ''),
('M12_xSCROLL', '25', '26', 'ADDI', 'WPARM', '1', ''),
('M12_xSCROLL', '26', '30', 'SIGNAL', 'WPARM', 'SIG_OPEN', ''),
('M12_xSCROLL', '30', '114', 'GRAB', '0', '0', ''),
('M12_xSCROLL', '114', '115', 'MOV', 'WPARM', 'WTHIS', ''),
('M12_xSCROLL', '115', '116', 'ADDI', 'WPARM', '1', ''),
('M12_xSCROLL', '116', '117', 'SIGNAL', 'WPARM', 'SIG_CLOSE', ''),
('M12_xSCROLL', '117', '118', 'ADDI', 'WPARM', '1', ''),
('M12_xSCROLL', '118', '119', 'SIGNAL', 'WPARM', 'SIG_CLOSE', ''),
('M12_xSCROLL', '119', '120', 'ADDI', 'WPARM', '1', ''),
('M12_xSCROLL', '120', '121', 'SIGNAL', 'WPARM', 'SIG_CLOSE', ''),
('M12_xSCROLL', '121', '122', 'ADDI', 'WPARM', '1', ''),
('M12_xSCROLL', '122', '123', 'SIGNAL', 'WPARM', 'SIG_CLOSE', ''),
('M12_xSCROLL', '123', '124', 'ADDI', 'WPARM', '1', ''),
('M12_xSCROLL', '124', '125', 'SIGNAL', 'WPARM', 'SIG_CLOSE', ''),
('M12_xSCROLL', '125', '126', 'ADDI', 'WPARM', '1', ''),
('M12_xSCROLL', '126', '130', 'SIGNAL', 'WPARM', 'SIG_CLOSE', ''),
('M12_xSCROLL', '130', '0', 'SHOW', '0', '0', '');


-------------we may just kill the above as I think it was only a demo ------

delete from map where op like 'S12_ing_%';
INSERT INTO "main"."map" ("op", "key", "value")
VALUES 

--enchantment
('s12_ing_a', '1', 'idc_berry'), --red
('s12_ing_b', '1', 'idc_fern'),--fern
('s12_ing_c', '1', 'idc_berry'),--red
('s12_ing_d', '1', 'idd_fish1a'),
('s12_ing_ny', '1', '0'),
('s12_ing_loc', '1', 'sword'),

--stalking
('s12_ing_a', '2', 'idc_gopa'),--blue
('s12_ing_b', '2', 'idc_fern'), --fern
('s12_ing_c', '2', 'idc_gopa'), --blue
('s12_ing_d', '2', 'idd_fish1a'),
('s12_ing_ny', '2', '0'),
('s12_ing_loc', '2', 'tree'),

--blindness
('s12_ing_a', '3', 'idc_fatmush'), --yellow
('s12_ing_b', '3', ''),
('s12_ing_c', '3', 'idc_fatmush'), --yellow
('s12_ing_d', '3', 'idd_fish2a'),
('s12_ing_ny', '3', '0'),
('s12_ing_loc', '3', 'fire'),

--holding
('s12_ing_a', '4', 'idc_gopa'), 
('s12_ing_b', '4', ''),
('s12_ing_c', '4', 'idc_leaf'),
('s12_ing_d', '4', 'idd_fish3a'),
('s12_ing_ny', '4', '0'),
('s12_ing_loc', '4', 'star'),

--transfer
('s12_ing_a', '5', 'idc_leaf'), 
('s12_ing_b', '5', 'idc_y_flower'),
('s12_ing_c', '5', 'idc_leaf'),
('s12_ing_d', '5', 'idd_fish2a'),
('s12_ing_ny','5', '2'),
('s12_ing_loc','5', 'sword'),

--alarm
('s12_ing_a', '6', 'idc_leaf'), 
('s12_ing_b', '6', ''),
('s12_ing_c', '6', 'idc_thinmush'), --orange
('s12_ing_d', '6', 'idd_fish5a'),
('s12_ing_ny','6', '2'),
('s12_ing_loc','6', 'tree'),

--record
('s12_ing_a', '7', 'idc_y_flower'), 
('s12_ing_b', '7', 'idc_fern'),
('s12_ing_c', '7', 'idc_y_flower'),
('s12_ing_d', '7', 'idd_fish6a'),
('s12_ing_ny','7', '3'),
('s12_ing_loc','7', 'fire'),

--telekinesis
('s12_ing_a', '8', 'idc_thinmush'), 
('s12_ing_b', '8', ''),
('s12_ing_c', '8', 'idc_w_flower'),
('s12_ing_d', '8', 'idd_fish7a'),
('s12_ing_ny','8', '3'),
('s12_ing_loc','8', 'star'),

--explosion
('s12_ing_a', '9', 'idc_y_flower'), 
('s12_ing_b', '9', 'idc_root'),
('s12_ing_c', '9', 'idc_y_flower'),
('s12_ing_d', '9', 'idd_fish3a'),
('s12_ing_ny','9', '3'),
('s12_ing_loc','9', 'sword'),

--Lock
('s12_ing_a', '10', 'idc_w_flower'), 
('s12_ing_b', '10', ''),
('s12_ing_c', '10', 'idc_fern'),
('s12_ing_d', '10', 'idd_fish4a'),
('s12_ing_ny','10', '4'),
('s12_ing_loc','10', 'tree'),

--Lock Pick
('s12_ing_a', '11', 'idc_fatmush'), 
('s12_ing_b', '11', 'idc_leaf'),
('s12_ing_c', '11', 'idc_gopa'),
('s12_ing_d', '11', 'idd_fish3a'),
('s12_ing_ny','11', '4'),
('s12_ing_loc','11', 'fire'),

--protection
('s12_ing_a', '12', 'idc_berry'), 
('s12_ing_b', '12', ''),
('s12_ing_c', '12', 'idc_root'),
('s12_ing_d', '12', 'idd_fish2a'),
('s12_ing_ny','12', '4'),
('s12_ing_loc','12', 'star'),

--death
('s12_ing_a', '13', 'idc_berry'), 
('s12_ing_b', '13', 'idc_gopa'),  
('s12_ing_c', '13', 'idc_root'),
('s12_ing_d', '13', 'idd_fish10a'),
('s12_ing_ny','13', '5'),
('s12_ing_loc','13', 'sword'),

--invisibility
('s12_ing_a', '14', 'idc_leaf'), 
('s12_ing_b', '14', ''),  
('s12_ing_c', '14', 'idc_leaf'),
('s12_ing_d', '14', 'idd_fish4a'),
('s12_ing_ny','14', '5'),
('s12_ing_loc','14', 'tree'),

--strength
('s12_ing_a', '15', 'idc_leaf'), 
('s12_ing_b', '15', ''),  
('s12_ing_c', '15', ''),
('s12_ing_d', '15', ''),
('s12_ing_ny','15', '5'),
('s12_ing_loc','15', 'fire'),

--banishment
('s12_ing_a', '16', 'idc_thinmush'), 
('s12_ing_b', '16', ''),  
('s12_ing_c', '16', 'idc_fatmush'),
('s12_ing_d', '16', 'idd_fish6a'),
('s12_ing_ny','16', '6'),
('s12_ing_loc','16', 'star'),

--perception
('s12_ing_a', '17', ''), 
('s12_ing_b', '17', 'idc_fatmush'),  
('s12_ing_c', '17', ''),
('s12_ing_d', '17', ''),
('s12_ing_ny','17', '6'),
('s12_ing_loc','17', 'sword'),

--halucination
('s12_ing_a', '18', 'idc_w_flower'), 
('s12_ing_b', '18', ''),  
('s12_ing_c', '18', 'idc_y_flower'),
('s12_ing_d', '18', 'idd_fish8a'),
('s12_ing_ny','18', '6'),
('s12_ing_loc','18', 'tree'),

--breath
('s12_ing_a', '19', ''), 
('s12_ing_b', '19', 'idc_y_flower'),  
('s12_ing_c', '19', ''),
('s12_ing_d', '19', ''),
('s12_ing_ny','19', '7'),
('s12_ing_loc','19', 'fire'),

--submerge
('s12_ing_a', '20', 'idc_thinmush'), 
('s12_ing_b', '20', 'idc_thinmush'),  
('s12_ing_c', '20', 'idc_thinmush'),
('s12_ing_d', '20', 'idd_fish7a'),
('s12_ing_ny','20', '8'),
('s12_ing_loc','20', 'star'),

--eyespell 
('s12_ing_a', '21', 'idc_gopa'), 
('s12_ing_b', '21', 'idc_root'),  
('s12_ing_c', '21', 'idc_berry'),
('s12_ing_d', '21', 'idd_fish9a'),
('s12_ing_ny','21', '7'),
('s12_ing_loc','21', 'tree'),

--memspell (time)
('s12_ing_a', '22', 'idc_leaf'), 
('s12_ing_b', '22', 'idc_root'),  
('s12_ing_c', '22', 'idc_leaf'),
('s12_ing_d', '22', 'idd_fish10'),
('s12_ing_ny','22', '7'),
('s12_ing_loc','22', 'star'),