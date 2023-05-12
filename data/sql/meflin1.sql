delete from games;

------------------------------------RESOURCES
delete from idv where name = 'IDV_MEFPAN';
delete from views where view_name = 'IDV_MEFPAN';

delete from idv where name = 'IDV_S24_RATHE_PAN';
delete from views where view_name = 'IDV_S24_RATHE_PAN';

delete from idv where name = 'IDV_S10_THAOR_PAN';
delete from views where view_name = 'IDV_S10_THAOR_PAN';

delete from idv where name = 'IDV_S16_PERST_PAN';
delete from views where view_name = 'IDV_S16_PERST_PAN';

delete from idv where name = 'IDV_S09_AMBLE_PAN';
delete from views where view_name = 'IDV_S09_AMBLE_PAN';

INSERT INTO "main"."idv" ("name", "id") VALUES ('IDV_MEFPAN', '9802');
INSERT INTO "main"."views" ("view_id", "view_name", "Z", "backgroundAudio", "locator_view", "behavior_id", "portal_filename", "surface_filename") VALUES ('9802', 'IDV_MEFPAN', '1', '1', '1', '1', 'wdepanel.vct', 'PARCHPAN');

INSERT INTO "main"."idv" ("name", "id") VALUES ('IDV_S24_RATHE_PAN', '9803');
INSERT INTO "main"."views" ("view_id", "view_name", "Z", "backgroundAudio", "locator_view", "behavior_id", "portal_filename", "surface_filename") VALUES ('9803', 'IDV_S24_RATHE_PAN', '1', '1', '1', '1', 'wdepanel.vct', 'PARCHPAN');

INSERT INTO "main"."idv" ("name", "id") VALUES ('IDV_S10_THAOR_PAN', '9804');
INSERT INTO "main"."views" ("view_id", "view_name", "Z", "backgroundAudio", "locator_view", "behavior_id", "portal_filename", "surface_filename") VALUES ('9804', 'IDV_S10_THAOR_PAN', '1', '1', '1', '1', 'wdepanel.vct', 'PARCHPAN');

INSERT INTO "main"."idv" ("name", "id") VALUES ('IDV_S16_PERST_PAN', '9805');
INSERT INTO "main"."views" ("view_id", "view_name", "Z", "backgroundAudio", "locator_view", "behavior_id", "portal_filename", "surface_filename") VALUES ('9805', 'IDV_S16_PERST_PAN', '1', '1', '1', '1', 'wdepanel.vct', 'PARCHPAN');

INSERT INTO "main"."idv" ("name", "id") VALUES ('IDV_S09_AMBLE_PAN', '9806');
INSERT INTO "main"."views" ("view_id", "view_name", "Z", "backgroundAudio", "locator_view", "behavior_id", "portal_filename", "surface_filename") VALUES ('9806', 'IDV_S09_AMBLE_PAN', '1', '1', '1', '1', 'wdepanel.vct', 'PARCHPAN');




--IDV_S10_THAOR_PAN

-- the first one is neelp
--S33_Neelp NEELPQ1

delete from spr_names where name = 'IDS_M1SWAY';
delete from spr_names where name = 'IDS_M1SWAYB';
delete from spr_names where name = 'IDS_M1SWAYC';
delete from spr_names where name = 'IDS_M1A1ANIM';
delete from spr_names where name = 'IDS_M1I1ANIM';
delete from spr_names where name = 'IDS_M1J1ANIM';
delete from spr_names where name = 'IDS_M1P1ANIM';
delete from spr_names where name = 'IDS_M1S1ANIM';
delete from spr_names where name = 'IDS_M1S2ANIM';
delete from spr_names where name = 'IDS_M1T1ANIM';

--PERST
--Audio prefix MPM1A.
delete from spr_names where name = 'IDS_M2A10001';
delete from spr_names where name = 'IDS_M2FIDDLE';
delete from spr_names where name = 'IDS_M2H10000';
delete from spr_names where name = 'IDS_M2I10000';
delete from spr_names where name = 'IDS_M2P10000';
delete from spr_names where name = 'IDS_M2S10000';
delete from spr_names where name = 'IDS_M2S20000';
delete from spr_names where name = 'IDS_M2T10000';
delete from spr_names where name = 'IDS_M2FIDDLEsm1';

--RATHE
--Audio prefix MSM1A
delete from spr_names where name = 'IDS_M6A10000';
delete from spr_names where name = 'IDS_M6H10000';
delete from spr_names where name = 'IDS_M6I10000';
delete from spr_names where name = 'IDS_M6P10000';
delete from spr_names where name = 'IDS_M6S10000';
delete from spr_names where name = 'IDS_M6S20000';
delete from spr_names where name = 'IDS_M6STIR';
delete from spr_names where name = 'IDS_M6T10000';

-- OLD GUY - IN RESERVE FOR NOW

delete from spr_names where name = 'IDS_MSA10001';
delete from spr_names where name = 'IDS_MSH10001';
delete from spr_names where name = 'IDS_MSI10001';
delete from spr_names where name = 'IDS_MSP10001';
delete from spr_names where name = 'IDS_MSS10001';
delete from spr_names where name = 'IDS_MSS20001';
delete from spr_names where name = 'IDS_MSSQUAT';
delete from spr_names where name = 'IDS_MST1001';
delete from spr_names where name = 'IDS_MST10001';


--THAOR Audio prefix MY(G and M)
--MYM1A
delete from spr_names where name = 'IDS_MYA10000';
delete from spr_names where name = 'IDS_MYH10000';
delete from spr_names where name = 'IDS_MYI10000';
delete from spr_names where name = 'IDS_MYJUGGLE';
delete from spr_names where name = 'IDS_MYP10000';
delete from spr_names where name = 'IDS_MYS10000';
delete from spr_names where name = 'IDS_MYS20000';
delete from spr_names where name = 'IDS_MYT10000';
delete from spr_names where name = 'IDS_MYJUGGLEsm1';


INSERT INTO "main"."spr_names" ("name", "value", "id") 
VALUES 
('IDS_M1SWAY', 'M1SWAY', '15001'),
('IDS_M1A1ANIM', 'M1A1ANIM', '15002'),
('IDS_M1I1ANIM', 'M1I1ANIM', '15003'),
('IDS_M1J1ANIM', 'M1J1ANIM', '15004'),
('IDS_M1P1ANIM', 'M1P1ANIM', '15005'),
('IDS_M1S1ANIM', 'M1S1ANIM', '15006'),
('IDS_M1S2ANIM', 'M1S2ANIM', '15043'),
('IDS_M1SWAYB', 'M1SWAYB', '15007'),
('IDS_M1SWAYC', 'M1SWAYC', '15008'),
('IDS_M1T1ANIM', 'Neelpt', '15009'),

('IDS_M2A10001', 'M2A10001', '15010'),
('IDS_M2FIDDLE', 'M2FIDDLE', '15011'),
('IDS_M2H10000', 'M2H10000', '15012'),
('IDS_M2I10000', 'M2I10000', '15013'),
('IDS_M2P10000', 'M2P10000', '15014'),
('IDS_M2S10000', 'M2S10000', '15015'),
('IDS_M2S20000', 'M2S20000', '15016'),
('IDS_M2T10000', 'M2T', '15017'),
('IDS_M2FIDDLEsm1', 'M2FIDDLEsm1', '15046'),

('IDS_M6A10000', 'M6A10000', '15018'),
('IDS_M6H10000', 'M6H10000', '15019'),
('IDS_M6I10000', 'M6I10000', '15020'),
('IDS_M6P10000', 'M6P10000', '15021'),
('IDS_M6S10000', 'M6S10000', '15022'),
('IDS_M6S20000', 'M6S20000', '15023'),
('IDS_M6STIR', 'M6STIR', '15024'),
('IDS_M6T10000', 'M6T', '15025'),

('IDS_MSA10001', 'MSA10001', '15026'),
('IDS_MSH10001', 'MSH10001', '15027'),
('IDS_MSI10001', 'MSI10001', '15028'),
('IDS_MSP10001', 'MSP10001', '15029'),
('IDS_MSS10001', 'MSS10001', '15030'),
('IDS_MSS20001', 'MSS20001', '15031'),
('IDS_MSSQUAT', 'MSSQUAT', '15032'),
('IDS_MST1001', 'MST1001', '15033'),
('IDS_MST10001', 'MST10001', '15034'),

('IDS_MYA10000', 'MYA10000', '15035'),
('IDS_MYH10000', 'MYH10000', '15036'),
('IDS_MYI10000', 'MYI10000b', '15037'),
('IDS_MYJUGGLE', 'MYJUGGLE', '15038'),
('IDS_MYP10000', 'MYP10000', '15039'),
('IDS_MYS10000', 'MYS10000', '15040'),
('IDS_MYS20000', 'MYS20000', '15041'),
('IDS_MYT10000', 'MYT', '15042'),
('IDS_MYJUGGLEsm1', 'MYJUGGLEsm1', '15045');


delete from sounds where name = 'SOUND_NEELPQ1';
insert into sounds values ('SOUND_NEELPQ1','NEELPQ1',26); 

delete from sounds where name = 'SOUND_RATHEQ1';
insert into sounds values ('SOUND_RATHEQ1','M6M1A',27); 

delete from sounds where name = 'SOUND_THAORQ1';
insert into sounds values ('SOUND_THAORQ1','MYM1A',28); 

delete from sounds where name = 'SOUND_PERSTQ1';
insert into sounds values ('SOUND_PERSTQ1','MPM1A',29); 

delete from sounds where name = 'SOUND_AMBLEQ1';
insert into sounds values ('SOUND_AMBLEQ1','MSM1A',30); 

-------------------------------------------------------------------

delete from machines where name = 'NEELP_COORD';
delete from machines where name = 'S33_NEELP';
delete from machines where name = 'S33_NEELP_Q1';
delete from machines where name = 'S33_MEFPAN_OK';
delete from machines where name = 'S33_NEELP_alt1';
delete from machines where name = 'S33_NEELP_alt2';

delete from machines where name = 'S24_RATHE';
delete from machines where name = 'S24_RATHE_Q1';
delete from machines where name = 'S24_MEFPAN_OK';

delete from machines where name = 'S10_THAOR';
delete from machines where name = 'S10_THAOR_Q1';
delete from machines where name = 'S10_THAOR_OK';
delete from machines where name = 'S10_THAOR_alt1';

delete from machines where name = 'S16_PERST';
delete from machines where name = 'S16_PERST_Q1';
delete from machines where name = 'S16_PERST_OK';
delete from machines where name = 'S16_PERST_alt1';

delete from machines where name = 'S09_AMBLE';
delete from machines where name = 'S09_AMBLE_Q1';
delete from machines where name = 'S09_AMBLE_OK';
--delete from machines where name = 'S09_AMBLE_alt1';


INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") 
VALUES 
-- ALSO MAKE A MACHINE CALLED A MEF_COORDINATOR WHICH HOLDS QUEST PROGRESS AS TRANSITIONS AND CAN MOVE THE MEFLIN TO NEW POSITIONS

--NEELP
('15500', 'NEELP_COORD', '5', 'IDV_OTHERID', '0', '0', '0', '0', '0','MEFLIN_COORD','','','',''),
('15501', 'S33_NEELP', '8101', 'IDV_N2B', '47', '101', '300', '300', '0','M_MEF_APPROACH','IDS_M1SWAY','S33_NEELP_Q1','IDV_MEFPAN', ''),
('15502', 'S33_NEELP_Q1', '5', 'IDV_OTHERID', '0', '0', '80', '100', '1','M_MEF_TALK','IDS_M1T1ANIM','10', 'SOUND_NEELPQ1', 'IDS_M1I1ANIM'),
('15505', 'S33_MEFPAN_OK', '9802', 'IDV_MEFPAN', '490', '180', '555', '215', '1','M_MEFPAN_OK','S33_NEELP_Q1','IDV_N2B','', ''),
('15506', 'S33_NEELP_alt1', '8100', 'IDV_N2A', '696', '139', '761', '214', '1','M_ANIBIN','IDS_M1SWAYC','', '', ''),
('15507', 'S33_NEELP_alt2', '8102', 'IDV_N2C', '2607', '140', '2800', '201', '1','M_ANIBIN','IDS_M1SWAYB','',  '', ''),


--Rathe
('15508', 'S24_RATHE', '9218', 'IDV_EYEA', '1065', '30', '1260', '150', '0','M_MEF_APPROACH','IDS_M6STIR','S24_RATHE_Q1','IDV_S24_RATHE_PAN', ''),
('15509', 'S24_RATHE_Q1', '5', 'IDV_OTHERID', '0', '0', '80', '100', '1','M_MEF_TALK','IDS_M6T10000','9','SOUND_RATHEQ1', 'IDS_M6T10000'),
('15510', 'S24_MEFPAN_OK', '9803', 'IDV_S24_RATHE_PAN', '490', '215', '555', '260', '1','M_MEFPAN_OKR','S24_RATHE_Q1','IDV_EYEA','', ''),

--THAOR

('15511', 'S10_THAOR', '4097', 'IDV_SCN10PT1', '2137', '55', '2337', '250', '0','M_MEF_APPROACH','IDS_MYJUGGLE','S10_THAOR_Q1','IDV_S10_THAOR_PAN',''),
('15512', 'S10_THAOR_Q1', '5', 'IDV_OTHERID', '0', '0', '80', '100', '1','M_MEF_TALK','IDS_MYT10000','7','SOUND_THAORQ1', 'IDS_MYI10000'),
('15513', 'S10_THAOR_OK', '9804', 'IDV_S10_THAOR_PAN', '490', '215', '555', '260', '1','M_MEFPAN_OK','S10_THAOR_Q1','IDV_SCN10PT1','',''),
('15514', 'S10_THAOR_alt1','4096', 'IDV_SCN10PT0', '3083', '100', '3100', '190', '1','M_ANIBIN','IDS_MYJUGGLEsm1','', '',  ''),

--PERST

('15515', 'S16_PERST', '4869', 'IDV_VIL7', '2650', '40', '2798', '250', '0','M_MEF_APPROACH','IDS_M2FIDDLE','S16_PERST_Q1','IDV_S16_PERST_PAN',''),
('15516', 'S16_PERST_Q1', '5', 'IDV_OTHERID', '0', '0', '80', '100', '1','M_MEF_TALK','IDS_M2T10000','15','SOUND_PERSTQ1', 'IDS_M2I10000'),
('15517', 'S16_PERST_OK', '9805', 'IDV_S16_PERST_PAN', '490', '215', '555', '260', '1','M_MEFPAN_OK','S16_PERST_Q1','IDV_VIL7','',''),
('15518', 'S16_PERST_alt1','4865', 'IDV_VIL3', '2515', '115', '2600', '200', '1','M_ANIBIN','IDS_M2FIDDLEsm1','', '',  '');


-- --AMBLE
-- ('15519', 'S09_AMBLE', '506', 'IDV_CTO2', '2500', '10', '2700', '150', '0','M_MEF_APPROACH','IDS_MSSQUAT','S09_AMBLE_Q1','IDV_S09_AMBLE_PAN',''),
-- ('15520', 'S09_AMBLE_Q1', '5', 'IDV_OTHERID', '0', '0', '80', '100', '1','M_MEF_TALK','IDS_MST10001','9','SOUND_AMBLEQ1', 'IDS_MSI10001'),
-- ('15521', 'S09_AMBLE_OK', '9805', 'IDV_S09_AMBLE_PAN', '490', '215', '555', '260', '1','M_MEFPAN_OK','S09_AMBLE_Q1','IDV_CTO2','','');
-- --('15522', 'S09_AMBLE_alt1','4865', 'IDV_VIL3', '2515', '115', '2600', '200', '1','M_ANIBIN','IDS_M2FIDDLEsm1','', '',  '');






delete from transitions where name = 'MEFLIN_COORD';
INSERT INTO "main"."transitions" ("name", "state", "new_state", "opcode", "param_1", "param_2", "code")
VALUES 
('MEFLIN_COORD','0', '5', 'WAIT', '', 'SIG_Q1_GIVEN', ''),
-- set new files moving specif files into reg

('MEFLIN_COORD','5', '10', 'WAIT', '', 'SIG_Q1_SOLVED', ''),
('MEFLIN_COORD','10', '15', 'WAIT', '', 'SIG_Q2_GIVEN', ''),
('MEFLIN_COORD','15', '20', 'WAIT', '', 'SIG_Q2_SOLVED', ''),
('MEFLIN_COORD','20', '25', 'WAIT', '', 'SIG_Q3_GIVEN', ''),
('MEFLIN_COORD','25', '30', 'WAIT', '', 'SIG_Q3_SOLVED', '');

delete from transitions where name = 'M_MEF_APPROACH';
INSERT INTO "main"."transitions" ("name", "state", "new_state", "opcode", "param_1", "param_2", "code")
VALUES 
('M_MEF_APPROACH','0', '1', 'MOV', 'WSPRITE', 'WIP1', ''),
('M_MEF_APPROACH', '1', '2', 'ASHOW', 'WSPRITE', 'V_LOOP', ''),
('M_MEF_APPROACH', '2', '3', 'CLICK', '0', '0', ''),
('M_MEF_APPROACH', '3', '4', 'LOADVIEW', 'WIP3', '', ''),

--above here look for where we should be
-- pull audio based on COORDINATOR
('M_MEF_APPROACH', '4', '0', 'SIGNAL', 'WIP2', 'SIG_PLAY', '');--signal talking machine with ref to quest


delete from transitions where name = 'M_MEF_TALK';
INSERT INTO "main"."transitions" ("name", "state", "new_state", "opcode", "param_1", "param_2", "code")
VALUES 
('M_MEF_TALK','0','1','WAIT','','SIG_PLAY',''),

('M_MEF_TALK','1', '2', 'MOV', 'WSPRITE', 'WIP1', ''), -- long dialogue loop wip1
('M_MEF_TALK','2', '3', 'ASHOW',  'WSPRITE', '',  ''),
('M_MEF_TALK','3', '4', 'PLAYWAVE', 'WIP3', '', ''), -- sound file wip3
('M_MEF_TALK','4', '7', 'ESTIME', 'WIP2', '', ''), -- close durration of talk wip2

('M_MEF_TALK','7', '8', 'MOV', 'BFRAME', '0',''),
('M_MEF_TALK','8', '9', 'SHOW', 'WIP4', '', ''), -- closing expression animation wip4
('M_MEF_TALK','9', '10', 'ANIMATE', '0', '0', ''),


('M_MEF_TALK','10','11','WAIT','','SIG_CLOSE',''), --wait for a signal to remove 
('M_MEF_TALK','11','14', 'CLEAR', 'BFRAME', '', ''),
('M_MEF_TALK','14','15', 'SHOW', '0', '', ''),
('M_MEF_TALK','15', '0', 'Z_EPSILON', '0', '0', '');


delete from transitions where name = 'M_MEFPAN_OK';
INSERT INTO "main"."transitions" ("name", "state", "new_state", "opcode", "param_1", "param_2", "code")
VALUES 
('M_MEFPAN_OK', '0', '1', 'SHOW', '0', 'IDS_BTN_OK', ''),
('M_MEFPAN_OK','1', '2', 'CLICK', '0', '0', ''),
('M_MEFPAN_OK', '2', '3', 'SIGNAL', 'SIG_CLOSE', 'WIP1', 'PLAYWAVE(SOUND_POPUP);'),
('M_MEFPAN_OK', '3', '4', 'CLEAR', 'WIP1', '', 'SHOW(0);'),
('M_MEFPAN_OK', '4', '0', 'LOADVIEW', 'WIP2', '', '');


delete from transitions where name = 'M_MEFPAN_OKR';
INSERT INTO "main"."transitions" ("name", "state", "new_state", "opcode", "param_1", "param_2", "code")
VALUES 

('M_MEFPAN_OKR', '0', '1', 'SHOW', '0', 'IDS_BTN_OK', ''),
('M_MEFPAN_OKR','1', '2', 'CLICK', '0', '0', 'PLAYWAVE(SOUND_POPUP); SIGNALi(SIG_CLOSE,S24_RATHE_Q1);'),
('M_MEFPAN_OKR', '2', '0', 'LOADVIEW', 'WIP2', '', '');

