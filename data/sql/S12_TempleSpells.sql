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