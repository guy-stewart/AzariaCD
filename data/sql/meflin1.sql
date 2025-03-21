



--When running this, there seems to be a conflict somewhere with 
-- items being dropped on the meflin quits working 
-- The machines get relayered most likely EyeWorkV2 may fix
-- Also Thaor's second showing get's wiped out by something

--- !! Update - after running this script, Run S00_ID.sql to
-- fix meflin machine layering  -- machine Z should fix :)



------------------------------------RESOURCES
-- delete from idv where name = 'IDV_MEFID';
delete from views where view_name = 'IDV_MEFID';

--delete from idv where name = 'IDV_MEFPAN';
delete from views where view_name = 'IDV_MEFPAN';

--delete from idv where name = 'IDV_S24_RATHE_PAN';
delete from views where view_name = 'IDV_S24_RATHE_PAN';

----delete from idv where name = 'IDV_S10_THAOR_PAN';
delete from views where view_name = 'IDV_S10_THAOR_PAN';

--delete from idv where name = 'IDV_S16_PERST_PAN';
delete from views where view_name = 'IDV_S16_PERST_PAN';

--delete from idv where name = 'IDV_S09_AMBLE_PAN';
delete from views where view_name = 'IDV_S09_AMBLE_PAN';

--delete from idv where name = 'IDV_VILLIB';
delete from views where view_name = 'IDV_VILLIB';
--delete from idv where name = 'IDV_VILLIBA';
delete from views where view_name = 'IDV_VILLIBA';


insert into views values 
('IDV_MEFID',2,0,0,1,'meflinid.vct','you','');



-- INSERT INTO "main"."idv" ("name", "id") VALUES 
-- ('IDV_MEFID', '12'),
-- ('IDV_MEFPAN', '9802'),
-- ('IDV_VILLIBA', '9803'),
-- ('IDV_VILLIB', '9804');
INSERT INTO "main"."views" ("view_name", "Z", "backgroundAudio", "locator_view", "behavior_id", "portal_filename", "surface_filename", "ambients") 
VALUES ('IDV_MEFPAN', '1', '3', '1', '1', 'wdepanel.vct', 'PARCHPAN',''),
       ('IDV_VILLIB', '1', '2', '1', '6', 'surround.vct', 'villib',''),
       ('IDV_VILLIBA', '1', '2', '1', '6', 'surround.vct', 'villiba','');

delete from cardinals where [from] = 'IDV_VIL6';
delete from cardinals where [from] = 'IDV_VHB3';
INSERT INTO "main"."cardinals" ("from", "north", "northeast", "east", "southeast", "south", "southwest", "west", "northwest") VALUES 
('IDV_VIL6', '', 'IDV_TRAYL', 'IDV_TRAYR', '', '', '', 'IDV_VIL5', ''),
('IDV_VHB3', '', '', 'IDV_VIL6', '', '', '', '', '');

delete from machines where name = 'VIL6_DOOR';
INSERT INTO "main"."machines" ("name", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") 
VALUES 
('VIL6_DOOR', 'IDV_VIL6', '1829', '82', '1944', '226', '0', 'M_PORTAL', 'IDV_VHB3','31900','','');

delete from spr_names where name = 'IDS_FONTTNB20';
INSERT INTO "main"."spr_names" ("name", "value") 
VALUES 
('IDS_FONTTNB20', 'fnttnb20');


delete from spr_names where name = 'IDS_PARCHPANBK';
INSERT INTO "main"."spr_names" ("name", "value") 
VALUES 
('IDS_PARCHPANBK', 'parchpanbk');
delete from controls where id = 'ID_MEFTEXT';
insert into controls values
('IDV_MEFPAN','ID_MEFTEXT','LABEL','IDS_PARCHPANBK','',90, 50, 0,'','', 'IDS_FONTTNB20', 0x010101,'');
--('IDV_MEFPAN','ID_MYLABEL2','LABEL','CLISTBXL','',120, 30, 0,'default text','', 'IDS_FONTTNB16', 0x010101,'');


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
delete from spr_names where name = 'IDS_M6STIR_alt';
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
delete from spr_names where name = 'IDS_MST01';
delete from spr_names where name = 'IDS_MSDESK';

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

delete from spr_names where name = 'IDS_GVIAL';


delete from transitions where [automaton] like 'M_STATESCALEZ%';






INSERT INTO "main"."spr_names" ("name", "value") 
VALUES 
('IDS_M1SWAY', 'M1SWAY'),
('IDS_M1A1ANIM', 'M1A1ANIM'),
('IDS_M1I1ANIM', 'M1I1ANIM'),
('IDS_M1J1ANIM', 'M1J1ANIM'),
('IDS_M1P1ANIM', 'M1P1ANIM'),
('IDS_M1S1ANIM', 'M1S1ANIM'),
('IDS_M1S2ANIM', 'M1S2ANIM'),
('IDS_M1SWAYB', 'M1SWAYB'),
('IDS_M1SWAYC', 'M1SWAYC'),
('IDS_M1T1ANIM', 'Neelpt'),

('IDS_M2A10001', 'M2A10001'),
('IDS_M2FIDDLE', 'M2FIDDLE'),
('IDS_M2H10000', 'M2H10000'),
('IDS_M2I10000', 'M2I10000'),
('IDS_M2P10000', 'M2P10000'),
('IDS_M2S10000', 'M2S10000'),
('IDS_M2S20000', 'M2S20000'),
('IDS_M2T10000', 'M2T'),
('IDS_M2FIDDLEsm1', 'M2FIDDLEsm1'),

('IDS_M6A10000', 'M6A10000'),
('IDS_M6H10000', 'M6H10000'),
('IDS_M6I10000', 'M6I10000'),
('IDS_M6P10000', 'M6P10000'),
('IDS_M6S10000', 'M6S10000'),
('IDS_M6S20000', 'M6S20000'),
('IDS_M6STIR', 'M6STIR'),
('IDS_M6STIR_alt', 'M6STIR_alt'),
('IDS_M6T10000', 'M6T'),

('IDS_MSA10001', 'MSA10001'),
('IDS_MSH10001', 'MSH10001'),
('IDS_MSH1001', 'MSH10001'),
('IDS_MSI10001', 'MSI10001'),
('IDS_MSP10001', 'MSP10001'),
('IDS_MSS10001', 'MSS10001'),
('IDS_MSS20001', 'MSS20001'),
('IDS_MSSQUAT', 'MSSQUAT'),
('IDS_MST1001', 'MST1001'),
('IDS_MST10001', 'MST01'),
('IDS_MST01', 'MST01'),
('IDS_MSDESK', 'desk'),

('IDS_MYA10000', 'MYA10000'),
('IDS_MYH10000', 'MYH10000'),
('IDS_MYI10000', 'MYI10000b'),
('IDS_MYJUGGLE', 'MYJUGGLE'),
('IDS_MYP10000', 'MYP10000'),
('IDS_MYS10000', 'MYS10000'),
('IDS_MYS20000', 'MYS20000'),
('IDS_MYT10000', 'MYT'),
('IDS_MYJUGGLEsm1', 'MYJUGGLEsm1'),

('IDS_GVIAL', 'GVIAL');

delete from objects where [object] like 'IDD_GVIAL%';
insert into objects values
('IDD_GVIAL','IDC_SPELL','gvial','gvial','gvial');

delete from sounds where name = 'SOUND_NEELPQ1';
insert into sounds values ('SOUND_NEELPQ1','NEELPQ1',26); 
delete from sounds where name = 'SOUND_NEELPQ2';
insert into sounds values ('SOUND_NEELPQ2','NEELPGQ2',71); 
delete from sounds where name = 'SOUND_NEELPGQ3';
insert into sounds values ('SOUND_NEELPQ3','NEELPGQ3',72); 
delete from sounds where name = 'SOUND_NEELPI1';
insert into sounds values ('SOUND_NEELPI1','NEELPI1',31); 
delete from sounds where name = 'SOUND_NEELPI2';
insert into sounds values ('SOUND_NEELPI2','NEELPGI2',73); 
delete from sounds where name = 'SOUND_NEELPI3';
insert into sounds values ('SOUND_NEELPI3','NEELPGI3',74); 
delete from sounds where name = 'SOUND_NEELPS1';
insert into sounds values ('SOUND_NEELPS1','NEELPS1',40); 
delete from sounds where name = 'SOUND_NEELPFSH';
insert into sounds values ('SOUND_NEELPFSH','NEELPFSH',41); 
delete from sounds where name = 'SOUND_NEELPBMB';
insert into sounds values ('SOUND_NEELPBMB','NEELPBMB',42); 
delete from sounds where name = 'SOUND_NEELPPLN';
insert into sounds values ('SOUND_NEELPPLN','NEELPPLN',43); 
delete from sounds where name = 'SOUND_NEELPGOP';
insert into sounds values ('SOUND_NEELPGOP','NEELPGOP',44); 
delete from sounds where name = 'SOUND_NEELPMAG';
insert into sounds values ('SOUND_NEELPMAG','NEELPMAG',45); 
delete from sounds where name = 'SOUND_NEELPBAT';
insert into sounds values ('SOUND_NEELPBAT','NEELPBAT',46); 
delete from sounds where name = 'SOUND_NEELPGS2';
insert into sounds values ('SOUND_NEELPGS2','NEELPGS2',47); 
delete from sounds where name = 'SOUND_NEELPGS3';
insert into sounds values ('SOUND_NEELPGS3','NEELPGS3',48); 

delete from sounds where name = 'SOUND_RATHEQ1';
insert into sounds values ('SOUND_RATHEQ1','M6M1A',27); 

delete from sounds where name = 'SOUND_RATHEI1';
insert into sounds values ('SOUND_RATHEI1','M6M1I',32);
 delete from sounds where name = 'SOUND_RATHEQ2';
insert into sounds values ('SOUND_RATHEQ2','M6G1A',83);
delete from sounds where name = 'SOUND_RATHEI2';
insert into sounds values ('SOUND_RATHEI2','M6G2I',84); 
delete from sounds where name = 'SOUND_RATHETHANK2';
insert into sounds values ('SOUND_RATHETHANK2','M6G2S',85);
delete from sounds where name = 'SOUND_RATHETHANK1';
insert into sounds values ('SOUND_RATHETHANK1','M6G1S',50); 
delete from sounds where name = 'SOUND_M6G2S';
insert into sounds values ('SOUND_M6G2S','M6G2S',51); 
delete from sounds where name = 'SOUND_M6VBOMB';
insert into sounds values ('SOUND_M6VBOMB','M6VBOMB',52); 
delete from sounds where name = 'SOUND_M6VLOTS';
insert into sounds values ('SOUND_M6VLOTS','M6VLOTS',53); 
delete from sounds where name = 'SOUND_M6VNOT';
insert into sounds values ('SOUND_M6VNOT','M6VNOT',54); 
delete from sounds where name = 'SOUND_M6VMAGC';
insert into sounds values ('SOUND_M6VMAGC','M6VMAGC',55); 

delete from sounds where name = 'SOUND_THAORQ1';
insert into sounds values ('SOUND_THAORQ1','MYM1A',28); 
delete from sounds where name = 'SOUND_THAORI1';
insert into sounds values ('SOUND_THAORI1','MYM1I',33); 
delete from sounds where name = 'SOUND_MYM1S';
insert into sounds values ('SOUND_MYM1S','MYM1S',56); 

delete from sounds where name = 'SOUND_THAORQ2';
insert into sounds values ('SOUND_THAORQ2','MYG1A',90); 
delete from sounds where name = 'SOUND_THAORI2';
insert into sounds values ('SOUND_THAORI2','MYG1I',91); 
delete from sounds where name = 'SOUND_MYG2S';
insert into sounds values ('SOUND_MYG2S','MYG2S',57); 
delete from sounds where name = 'SOUND_MYVSPELL';
insert into sounds values ('SOUND_MYVSPELL','MYVSPELL',58); 
delete from sounds where name = 'SOUND_MYG2U';
insert into sounds values ('SOUND_MYG2U','MYG2U',59); 
delete from sounds where name = 'SOUND_MYVNOT';
insert into sounds values ('SOUND_MYVNOT','MYVNOT',60); 

delete from sounds where name = 'SOUND_PERSTQ1';
insert into sounds values ('SOUND_PERSTQ1','MPM1A',29); 
delete from sounds where name = 'SOUND_PERSTQ2';
insert into sounds values ('SOUND_PERSTQ2','MPG1A',80); 
delete from sounds where name = 'SOUND_PERSTI1';
insert into sounds values ('SOUND_PERSTI1','MPM1I',34); 
delete from sounds where name = 'SOUND_PERSTI2';
insert into sounds values ('SOUND_PERSTI2','MPG1I',81); 
delete from sounds where name = 'SOUND_MPVTHANK2';
insert into sounds values ('SOUND_MPVTHANK2','MPM1S',82); 
delete from sounds where name = 'SOUND_MPVTHANK';
insert into sounds values ('SOUND_MPVTHANK','MPG1S',61); 
delete from sounds where name = 'SOUND_MPM1S';
insert into sounds values ('SOUND_MPM1S','MPM1S',69); 
delete from sounds where name = 'SOUND_MPM2S';
insert into sounds values ('SOUND_MPM2S','MPM2S',62); 
delete from sounds where name = 'SOUND_MPVBAIT';
insert into sounds values ('SOUND_MPVBAIT','MPVBAIT',63); 
delete from sounds where name = 'SOUND_MPVFISH';
insert into sounds values ('SOUND_MPVFISH','MPVFISH',64); 
delete from sounds where name = 'SOUND_MPVBOMB';
insert into sounds values ('SOUND_MPVBOMB','MPVBOMB',65); 
delete from sounds where name = 'SOUND_MPVLOTS';
insert into sounds values ('SOUND_MPVLOTS','MPVLOTS',66); 




delete from sounds where [name] LIKE 'SOUND_AMBLE%';
insert into sounds values ('SOUND_AMBLEQ1','MSM3A',100); 
insert into sounds values ('SOUND_AMBLEI1','MSM1I',101); 
insert into sounds values ('SOUND_AMBLESAT','msm3s',102); 
-------------------------------------------------------------------

delete from machines where [name] LIKE 'NEELP%';
delete from machines where [name] LIKE 'RATHE%';
delete from machines where [name] LIKE 'THAOR%';
delete from machines where [name] LIKE 'PERST%';
delete from machines where [name] LIKE 'AMBLE%';
delete from machines where [name] LIKE 'S33_NEELP%';
delete from machines where [name] LIKE 'S11_NEELP%';
delete from machines where [name] LIKE 'S30_NEELP%';
delete from machines where [name] LIKE 'S25_RATHE%';
delete from machines where [name] LIKE 'S24_RATHE%';
delete from machines where [name] LIKE 'S10_THAOR%';
delete from machines where [name] LIKE 'S19_THAOR%';
delete from machines where [name] LIKE 'S16_PERST%';
delete from machines where [name] LIKE 'S12_PERST%';
delete from machines where [name] LIKE 'S09_AMBLE%';


--delete from machines where name = 'S09_AMBLE_alt1';
delete from machines where name = 'MEFCURRENT';
delete from machines where name = 'MEFPAN_OK';
--if they choose another route than the OK button
delete from machines where name = 'MEFPAN_CLOSER';
delete from machines where name = 'MEFPAN_WAITER';
delete from machines where name = 'MEFPAN_VIEWCAP';
delete from machines where name = 'MEFPAN_PRIZE_A';
delete from machines where name = 'MEFPAN_PRIZE_B';
delete from machines where name = 'MEFPAN_PRIZE_C';
delete from machines where name = 'MEF_SHOW_COORDINATOR';
delete from machines where name = 'MEF_DROPTARGET';
delete from machines where name = 'CHAR_DROPTARGET';

INSERT INTO "main"."machines" ("name", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") 
VALUES 
-- ALSO MAKE A MACHINE CALLED A MEF_COORDINATOR WHICH HOLDS QUEST PROGRESS AS TRANSITIONS AND CAN MOVE THE MEFLIN TO NEW POSITIONS

-- Local vs Global (local_visible)
-- 0 or 1 -> Global machine - as in there is only 1 shared machine in the game
-- with 0 or 1 the audio can be heard by players within the view (tested)
-- 2 - Local but audio can't be heard
-- 3 - Local with audio  



--NEELP
('NEELP_COORD', 'IDV_MEFID', '0', '0', '0', '0',            '3','MEFLIN_COORD','','','',''),
('S33_NEELP', 'IDV_N2B', '47', '101', '300', '300',         '3','M_MEF_APPROACH','IDS_M1SWAY',1,'NEELP_COORD', ''),
('S33_NEELP_Q1', 'IDV_MEFID', '0', '0', '8', '10',          '3','M_MEF_TALK','IDS_M1T1ANIM','10', 'SOUND_NEELPQ1', 'IDS_M1I1ANIM'),
('NEELP_I1', 'IDV_MEFID', '0', '0', '8', '10',              '3','M_MEF_TALK','IDS_M1T1ANIM','2', 'SOUND_NEELPI1', 'IDS_M1I1ANIM'),

('S33_NEELP_alt1', 'IDV_N2A', '696', '139', '761', '214',   '3','M_STATESCALEZ','IDS_M1SWAYC','IDV_N2B', '900', ''),
('S33_NEELP_alt2', 'IDV_N2C', '2607', '140', '2800', '201', '3','M_STATESCALEZ','IDS_M1SWAYB','IDV_N2B',  '900', ''),
--NEELP GOES TO THE BEACH
('S11_NEELP', 'IDV_FA1PAN', '452', '74', '650', '200',       '3','M_MEF_APPROACH','IDS_M1SWAY',1,'NEELP_COORD', ''),
('S11_NEELP_Q2', 'IDV_MEFID', '0', '0', '8', '10',           '3','M_MEF_TALK','IDS_M1T1ANIM','4', 'SOUND_NEELPQ2', 'IDS_M1I1ANIM'),
('NEELP_I2','IDV_MEFID', '0', '0', '8', '10',                '3','M_MEF_TALK','IDS_M1T1ANIM','2', 'SOUND_NEELPI2', 'IDS_M1I1ANIM'),
('S11_NEELP_alt1', 'IDV_FH1PTH1', '158', '100', '200', '200','3','M_STATESCALEV','IDS_M1SWAYB','',  '', ''),
--NEELP GOES TO THE GAME ARCADE
( 'S30_NEELP_Q3', 'IDV_MEFID', '0', '0', '8', '10',          '3','M_MEF_TALK','IDS_M1T1ANIM','4', 'SOUND_NEELPQ3', 'IDS_M1S1ANIM'),
( 'NEELP_I3','IDV_MEFID', '0', '0', '8', '10',               '3','M_MEF_TALK','IDS_M1T1ANIM','2', 'SOUND_NEELPI3', 'IDS_M1I1ANIM'),
( 'S30_NEELP', 'IDV_PATH2', '907', '84', '1070', '273',      '3','M_MEF_APPROACH','IDS_M1SWAY',1,'NEELP_COORD', ''),
( 'S30_NEELP_alt1', 'IDV_PATH1', '1252', '136','1299','200', '3','M_STATESCALEV','IDS_M1SWAYB','',  '', ''),
--------------------------------------
--Rathe
('RATHE_COORD', 'IDV_MEFID', '1', '1', '1', '1',            '3','MEFLIN_COORD','','','',''),
('S24_RATHE',       'IDV_EYEA', '1065', '30', '1260', '150',      '3','M_MEF_APPROACH','IDS_M6STIR',2,'RATHE_COORD', ''),
('S24_RATHE_alt1',  'IDV_EYEB', '1450', '113', '1500', '200', '3','M_STATESCALEZ','IDS_M6STIR_alt','IDV_EYEA', '13400',  ''),
('S24_RATHE_Q1',    'IDV_MEFID', '0', '0', '8', '10',          '3','M_MEF_TALK','IDS_M6T10000','9','SOUND_RATHEQ1', 'IDS_M6H10000'),
('RATHE_I1',        'IDV_MEFID', '0', '0', '8', '10',              '3','M_MEF_TALK','IDS_M6T10000','2', 'SOUND_RATHEI1', 'IDS_M6I10000'),
--Rathe Goes to the desert hills
('S25_RATHE', 'IDV_WR2', '3020', '100', '3156', '234',      '3','M_MEF_APPROACH','IDS_M6STIR',2,'RATHE_COORD', ''),
('S25_RATHE_Q2','IDV_MEFID', '0', '0', '8', '10',           '3','M_MEF_TALK','IDS_M6T10000','5','SOUND_RATHEQ2', 'IDS_M6A10000'),
('RATHE_I2', 'IDV_MEFID', '0', '0', '8', '10',              '3','M_MEF_TALK','IDS_M6T10000','2','SOUND_RATHEI2', 'IDS_M6I10000'),


-------------------------------------
--THAOR
('THAOR_COORD', 'IDV_MEFID', '2', '2', '2', '2',            '3','MEFLIN_COORD','','','',''),
('S10_THAOR', 'IDV_SCN10PT1', '2137', '55', '2337', '250',  '3','M_MEF_APPROACH','IDS_MYJUGGLE',3,'THAOR_COORD',''),
('S10_THAOR_Q1','IDV_MEFID', '0', '0', '8', '10',           '3','M_MEF_TALK','IDS_MYT10000','7','SOUND_THAORQ1', 'IDS_MYI10000'),
('THAOR_I1', 'IDV_MEFID', '0', '0', '8', '10',              '3','M_MEF_TALK','IDS_MYT10000','2', 'SOUND_THAORI1', 'IDS_MYI10000'),
('S10_THAOR_alt1','IDV_SCN10PT0','3083','100','3100','190', '3','M_STATESCALEV','IDS_MYJUGGLEsm1','', '',  ''),
--Thaor goes to the Hidden Nature
('S19_THAOR',  'IDV_NAT1b', '2399', '80', '2581', '233',    '3','M_MEF_APPROACH','IDS_MYJUGGLE',3,'THAOR_COORD',''),
('S19_THAOR_Q2','IDV_MEFID', '0', '0', '8', '10',           '3','M_MEF_TALK','IDS_MYT10000','7','SOUND_THAORQ2', 'IDS_MYH10000'),
('THAOR_I2','IDV_MEFID', '0', '0', '8', '10',               '3','M_MEF_TALK','IDS_MYT10000','2', 'SOUND_THAORI2', 'IDS_MYI10000'),
('S19_THAOR_alt1', 'IDV_NAT1a', '2947', '100', '3019','185','3','M_STATESCALEV','IDS_MYJUGGLEsm1','', '',  ''),

-------------------------------------
--PERST - Global task for enchanted stone
('PERST_COORD','IDV_MEFID', '1', '1', '1', '1',             '0','MEFLIN_COORD','','','',''),
('S16_PERST',  'IDV_VIL7', '2650', '40', '2798', '250',     '0','M_MEF_APPROACH','IDS_M2FIDDLE',4,'PERST_COORD',''),
('S16_PERST_Q1','IDV_MEFID', '0', '0', '8', '10',           '1','M_MEF_TALK','IDS_M2T10000','15','SOUND_PERSTQ1', 'IDS_M2I10000'),
('PERST_I1','IDV_MEFID', '0', '0', '8', '10',               '1','M_MEF_TALK','IDS_M2T10000','2', 'SOUND_PERSTI1', 'IDS_M2I10000'),
('S16_PERST_alt1','IDV_VIL3', '2515', '115', '2600', '200', '1','M_STATESCALEZ','IDS_M2FIDDLEsm1','IDV_VIL7', '30100',  ''),

--Perst goes to the dock
-- tmplpth9 1481 68

('S12_PERST', 'IDV_TMPLPTH9', '1481', '68', '1637', '200',  '3','M_MEF_APPROACH','IDS_M2FIDDLE',4,'PERST_COORD', ''),
('S12_PERST_Q2', 'IDV_MEFID', '0', '0', '8', '10',          '3','M_MEF_TALK','IDS_M2T10000','5', 'SOUND_PERSTQ2', 'IDS_M2P10000'),
('PERST_I2','IDV_MEFID', '0', '0', '8', '10',               '3','M_MEF_TALK','IDS_M2T10000','2', 'SOUND_PERSTI2', 'IDS_M2S10000');



INSERT INTO "main"."machines" ("name", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name", "Z") 
VALUES 
-------------------------------------
-- --AMBLE  
('AMBLE_COORD', 'IDV_MEFID', '1', '1', '1', '1',            '3','MEFLIN_COORD','','','','',1),
('S09_AMBLE_DESK', 'IDV_VHB3', '2653','180','2699','200',   '3','M_BIN', 'IDD_GVIAL', 'IDS_MSDESK', '30', '',2),
('S09_AMBLE', 'IDV_VHB3', '2653', '40', '2753', '300',      '3','M_MEF_APPROACH','IDS_MSSQUAT',5,'AMBLE_COORD','',1);


INSERT INTO "main"."machines" ("name", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") 
VALUES 
('S09_AMBLE_Q1','IDV_MEFID', '0', '0', '8', '10',           '3','M_MEF_TALK','IDS_MST01','6','SOUND_AMBLEQ1', 'IDS_MSI10001'),
('AMBLE_I1', 'IDV_MEFID', '0', '0', '8', '10',              '3','M_MEF_TALK','IDS_MST01','2', 'SOUND_AMBLEI1', 'IDS_MSH10001'),
-- --('15522', 'S09_AMBLE_alt1','4865', 'IDV_VIL3', '2515', '115', '2600', '200', '1','M_ANIBIN','IDS_M2FIDDLEsm1','', '',  '');

----Machines to serve them all

('MEFCURRENT', 'IDV_MEFPAN', '0', '0', '5', '5',            '3','M_MEFCURRENT','','','',''),
('MEFPAN_OK', 'IDV_MEFPAN', '490', '215', '555', '260',     '3','M_MEFPAN_OK','','','',''),
('MEFPAN_CLOSER', 'IDV_MEFID', '0', '0', '1', '1',          '3','M_MEFCLOSER','','','',''),
('MEFPAN_WAITER',  'IDV_MEFPAN', '276','200','350','300',   '3','M_MEFPAN_WAITER','','','',''),
('MEFPAN_VIEWCAP', 'IDV_MEFPAN', '5', '20', '10', '30',     '3','M_MEFPAN_VIEWCAP','','','',''),
('MEFPAN_PRIZE_A', 'IDV_MEFPAN', '545', '75', '613', '135', '3','M_MEFPAN_PRIZE','a','','',''),
('MEFPAN_PRIZE_B', 'IDV_MEFPAN', '545','144','613','200',   '3','M_MEFPAN_PRIZE','b','','',''),
('MEFPAN_PRIZE_C', 'IDV_MEFPAN', '545','205','613','270',   '3','M_MEFPAN_PRIZE','c','','',''),
('MEF_SHOW_COORDINATOR', 'IDV_MEFPAN', '0', '0', '2', '2',  '3','M_MEFPAN_SHOW_COORD','','','',''),
('CHAR_DROPTARGET', 'IDV_MEFID', '0', '0', '80', '100',     '3','M_CHARACTER_DROP','','','','');


delete from transitions where automaton =  'M_MEFCURRENT';
delete from transitions where automaton =  'MEFLIN_COORD';
delete from transitions where automaton =  'M_MEFPAN_SHOW_COORD';
delete from transitions where automaton =  'M_MEFLIN_DROP';
delete from transitions where automaton =  'M_CHARACTER_DROP';

INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code")
VALUES 
('MEFLIN_COORD','0', 'Q1Started','WAIT', '', 'SIG_Q1_START', ''),
('MEFLIN_COORD','Q1Started', 'Q1Pending','WAIT', '', 'SIG_Q1_GIVEN', ''),
('MEFLIN_COORD','Q1Pending', 'Q1Solved','WAIT', '','SIG_Q1_SOLVED', ''),


('MEFLIN_COORD','Q1Solved', 'Q2Started','WAIT', '', 'SIG_Q2_START', ''),
('MEFLIN_COORD','Q2Started', 'Q2Pending','WAIT', '', 'SIG_Q2_GIVEN', ''),
('MEFLIN_COORD','Q2Pending', 'Q2Solved','WAIT', '','SIG_Q2_SOLVED', ''),


('MEFLIN_COORD','Q2Solved', 'Q3Started','WAIT', '', 'SIG_Q3_START', ''),
('MEFLIN_COORD','Q3Started', 'Q3Pending','WAIT', '', 'SIG_Q3_GIVEN', ''),
('MEFLIN_COORD','Q3Pending', 'Q3Solved','WAIT', '','SIG_Q3_SOLVED', ''),


-- THE SHOW COORDINATOR starts the show from a new game
('M_MEFPAN_SHOW_COORD','0', 'allBrandNew','Z_EPSILON', '', '', '
    SIGNAL(S33_NEELP,SIG_SHOW); SIGNAL(S33_NEELP_alt1,SIG_SHOW); SIGNAL(S33_NEELP_alt2,SIG_SHOW);
    SIGNAL(S24_RATHE,SIG_SHOW);
    SIGNAL(S24_RATHE_alt1,SIG_SHOW);
    SIGNAL(S10_THAOR,SIG_SHOW);SIGNAL(S10_THAOR_alt1,SIG_SHOW);
    SIGNAL(S16_PERST,SIG_SHOW);SIGNAL(S16_PERST_alt1,SIG_SHOW);
    SIGNAL(S09_AMBLE,SIG_SHOW);
'),

--This is here in case machines overlap
('M_CHARACTER_DROP', 0, 'postProcessObject', 'DROP', '0', '0', '
    SHOW(WOBJECT);
    REF_MACHINE(MEFPAN_VIEWCAP);
    MOV(BPARM,R_BPARM);
    if(BPARM == 1){  
        WRITE("MEFLIN INSPECTION");
        REF_MACHINE(MEFCURRENT); //Who is it?
        MOV(WPARM,R_WPARM);
        SIGNAL(WPARM,SIG_DROP); //so the meflin mef_talk can look at the wobject
        SHOW();
    }
    if(BPARM == 0){ 
        SHOW();
        SIGNAL(SOD_SPELL,SIG_DROP);
    }
'),
('M_CHARACTER_DROP', 'postProcessObject', 'clear', 'GRAB', '', '', '
    CLEAR(WOBJECT);
    SHOW();
'),
('M_CHARACTER_DROP', 'clear', 0, 'Z_EPSILON', '', '', ''),
('M_CHARACTER_DROP', 'postProcessObject', '0', 'Z_EPSILON', '', '', ''),

--keeps the most recently engaged quest 

('M_MEFCURRENT','0', 'quest1', 'WAIT', '', 'SIG_Q1', 'ASSIGN(BPARM,S33_NEELP);ASSIGN(WPARM,S33_NEELP_Q1);SIGNAL(QL_MANAGER,Q7_START);'),
('M_MEFCURRENT','quest1', '0', 'Z_EPSILON', '', '', ''), 
('M_MEFCURRENT','0', 'quest1p', 'WAIT', '', 'SIG_Q1P', 'ASSIGN(BPARM,S33_NEELP);ASSIGN(WPARM,NEELP_I1);'),
('M_MEFCURRENT','quest1p', '0', 'Z_EPSILON', '', '', ''), 
('M_MEFCURRENT','0', 'quest2', 'WAIT', '', 'SIG_Q2', 'ASSIGN(BPARM,S11_NEELP);ASSIGN(WPARM,S11_NEELP_Q2);SIGNAL(QL_MANAGER,Q8_START);'), 
('M_MEFCURRENT','quest2', '0', 'Z_EPSILON', '', '', ''), 
('M_MEFCURRENT','0', 'quest2p', 'WAIT', '', 'SIG_Q2P', 'ASSIGN(BPARM,S11_NEELP);ASSIGN(WPARM,NEELP_I2);'),
('M_MEFCURRENT','quest2p', '0', 'Z_EPSILON', '', '', ''),
('M_MEFCURRENT','0', 'quest3', 'WAIT', '', 'SIG_Q3', 'ASSIGN(BPARM,S30_NEELP);ASSIGN(WPARM,S30_NEELP_Q3);SIGNAL(QL_MANAGER,Q9_START);'), 
('M_MEFCURRENT','quest3', '0', 'Z_EPSILON', '', '', ''), 
('M_MEFCURRENT','0', 'quest3p', 'WAIT', '', 'SIG_Q3P', 'ASSIGN(BPARM,S30_NEELP);ASSIGN(WPARM,NEELP_I3);'), 
('M_MEFCURRENT','quest3p', '0', 'Z_EPSILON', '', '', ''), 

('M_MEFCURRENT','0', 'quest4', 'WAIT', '', 'SIG_Q4', 'ASSIGN(BPARM,S24_RATHE);ASSIGN(WPARM,S24_RATHE_Q1);SIGNAL(QL_MANAGER,Q10_START);'), 
('M_MEFCURRENT','quest4', '0', 'Z_EPSILON', '', '', ''),
('M_MEFCURRENT','0', 'quest4p', 'WAIT', '', 'SIG_Q4P', 'ASSIGN(BPARM,S24_RATHE);ASSIGN(WPARM,RATHE_I1);'), 
('M_MEFCURRENT','quest4p', '0', 'Z_EPSILON', '', '', ''),

('M_MEFCURRENT','0', 'quest5', 'WAIT', '', 'SIG_Q5', 'ASSIGN(BPARM,S25_RATHE);ASSIGN(WPARM,S25_RATHE_Q2);SIGNAL(QL_MANAGER,Q11_START);'), 
('M_MEFCURRENT','quest5', '0', 'Z_EPSILON', '', '', ''),

('M_MEFCURRENT','0', 'quest5p', 'WAIT', '', 'SIG_Q5P', 'ASSIGN(BPARM,S25_RATHE);ASSIGN(WPARM,RATHE_I2);'), 
('M_MEFCURRENT','quest5p', '0', 'Z_EPSILON', '', '', ''),

('M_MEFCURRENT','0', 'quest6', 'WAIT', '', 'SIG_Q6', 'ASSIGN(BPARM,S10_THAOR);ASSIGN(WPARM,S10_THAOR_Q1);SIGNAL(QL_MANAGER,Q12_START);'), 
('M_MEFCURRENT','quest6', '0', 'Z_EPSILON', '', '', ''),
('M_MEFCURRENT','0', 'quest6p', 'WAIT', '', 'SIG_Q6P', 'ASSIGN(BPARM,S10_THAOR);ASSIGN(WPARM,THAOR_I1);'), 
('M_MEFCURRENT','quest6p', '0', 'Z_EPSILON', '', '', ''),
('M_MEFCURRENT','0', 'quest7', 'WAIT', '', 'SIG_Q7', 'ASSIGN(BPARM,S19_THAOR);ASSIGN(WPARM,S19_THAOR_Q2);SIGNAL(QL_MANAGER,Q13_START);'), 
('M_MEFCURRENT','quest7', '0', 'Z_EPSILON', '', '', ''),
('M_MEFCURRENT','0', 'quest7p', 'WAIT', '', 'SIG_Q7P', 'ASSIGN(BPARM,S19_THAOR);ASSIGN(WPARM,THAOR_I2);'), 
('M_MEFCURRENT','quest7p', '0', 'Z_EPSILON', '', '', ''),

('M_MEFCURRENT','0', 'quest8', 'WAIT', '', 'SIG_Q8', 'ASSIGN(BPARM,S16_PERST);ASSIGN(WPARM,S16_PERST_Q1);SIGNAL(QL_MANAGER,Q14_START);'), 
('M_MEFCURRENT','quest8', '0', 'Z_EPSILON', '', '', ''),
('M_MEFCURRENT','0', 'quest8p', 'WAIT', '', 'SIG_Q8P', 'ASSIGN(BPARM,S16_PERST);ASSIGN(WPARM,PERST_I1);'), 
('M_MEFCURRENT','quest8p', '0', 'Z_EPSILON', '', '', ''),
('M_MEFCURRENT','0', 'quest9', 'WAIT', '', 'SIG_Q9', 'ASSIGN(BPARM,S12_PERST);ASSIGN(WPARM,S12_PERST_Q2);SIGNAL(QL_MANAGER,Q15_START);'),
('M_MEFCURRENT','quest9', '0', 'Z_EPSILON', '', '', ''),
('M_MEFCURRENT','0', 'quest9p', 'WAIT', '', 'SIG_Q9P', 'ASSIGN(BPARM,S12_PERST);ASSIGN(WPARM,PERST_I2);'),
('M_MEFCURRENT','quest9p', '0', 'Z_EPSILON', '', '', ''),

('M_MEFCURRENT','0', 'quest10', 'WAIT', '', 'SIG_Q10', 'ASSIGN(BPARM,S09_AMBLE);ASSIGN(WPARM,S09_AMBLE_Q1);'),
('M_MEFCURRENT','quest10', '0', 'Z_EPSILON', '', '', ''),
('M_MEFCURRENT','0', 'quest10p', 'WAIT', '', 'SIG_Q10P', 'ASSIGN(BPARM,S09_AMBLE);ASSIGN(WPARM,AMBLE_I1);'), 
('M_MEFCURRENT','quest10p', '0', 'Z_EPSILON', '', '', '');



INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code")
VALUES 

('M_STATESCALEZ', '0', 'signaled', 'WAIT', '0', 'SIG_SHOW', ''),
('M_STATESCALEZ', 'signaled', 'shown', 'ASHOW', 'WIP1', '0', ''),
('M_STATESCALEZ', 'shown', 'zoomed', 'CLICK', '', '0', ''),
('M_STATESCALEZ', 'zoomed', 'signaled', 'LOADVIEW', 'WIP2', 'WIP3', ''),
('M_STATESCALEZ', 'shown', 'signalledOff', 'WAIT', '0', 'SIG_HIDE', ''),
('M_STATESCALEZ', 'signalledOff', '0', 'ASHOW', '0', '0', '');


delete from transitions where automaton =  'M_MEF_APPROACH';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code")
VALUES 
--Show the standing sprite and record the current view
--put up the mefpan and then signal the quest to play
-- ('M_MEF_APPROACH','0', '0', 'MOV', 'WVIEWID', 'LVIEW',''),
('M_MEF_APPROACH', '0', 'chillin', 'WAIT', '', 'SIG_SHOW', '
    MOV(WSPRITE,WIP1);
    ASHOW(WSPRITE,V_LOOP);
'),
('M_MEF_APPROACH', 'chillin', 'vanished', 'WAIT', '', 'SIG_VANISH', '
    CLEAR(WSPRITE);
    SHOW(0);
'),
('M_MEF_APPROACH', 'chillin', 'mef_bothered', 'CLICK', '0', '0', '
unloadview(IDV_OTHERID);CLEAR(WPARM);CLEAR(BPARM);SIGNAL(SOD_ID,SIG_CLEAR);LOADVIEW(IDV_MEFID);'),
--WIP2 = fixed number for a meflin
--WIP3 = specific meflin coordinator
--BPARM becomes the specific primary quest machine to play from the DB or for interogs/pendings too
--WPARM becomes the text to display in either case primary quest or interogs/pendings
('M_MEF_APPROACH', 'mef_bothered', 'mef_response', 'REF_MACHINE', '0', 'WIP3', '
    if(IFSTATE(0,WIP3)){
        //Tell the active meflins coordinator
        SIGNAL(WIP3,SIG_Q1_START); ///--------------The first question and pending interogatve to any Meflin
            //Tell the outside world where we a
            //WTEMP1 will be machine, WTemp2 is wordin
            if(WIP2 == 1){SIGNAL(MEFCURRENT,SIG_Q1); mefQuest("1",?BPARM,?WPARM,?WOBJECT,?WTEMP1,?WTEMP1);}
            if(WIP2 == 2){SIGNAL(MEFCURRENT,SIG_Q4); mefQuest("4",?BPARM,?WPARM,?WOBJECT,?WTEMP1,?WTEMP1);}
            if(WIP2 == 3){SIGNAL(MEFCURRENT,SIG_Q6); mefQuest("6",?BPARM,?WPARM,?WOBJECT,?WTEMP1,?WTEMP1);}
            if(WIP2 == 4){SIGNAL(MEFCURRENT,SIG_Q8); mefQuest("8",?BPARM,?WPARM,?WOBJECT,?WTEMP1,?WTEMP1);}
            if(WIP2 == 5){SIGNAL(MEFCURRENT,SIG_Q10); mefQuest("10",?BPARM,?WPARM,?WOBJECT,?WTEMP1,?WTEMP1);}
    }
    if(IFSTATE(Q1Pending,WIP3)){
            if(WIP2 == 1){SIGNAL(MEFCURRENT,SIG_Q1P); mefQuest("1",?WTEMP1,?WTEMP1,?WOBJECT,?BPARM,?WPARM);}
            if(WIP2 == 2){SIGNAL(MEFCURRENT,SIG_Q4P); mefQuest("4",?WTEMP1,?WTEMP1,?WOBJECT,?BPARM,?WPARM);}
            if(WIP2 == 3){SIGNAL(MEFCURRENT,SIG_Q6P); mefQuest("6",?WTEMP1,?WTEMP1,?WOBJECT,?BPARM,?WPARM);}
            if(WIP2 == 4){SIGNAL(MEFCURRENT,SIG_Q8P); mefQuest("8",?WTEMP1,?WTEMP1,?WOBJECT,?BPARM,?WPARM);}
            if(WIP2 == 5){SIGNAL(MEFCURRENT,SIG_Q10P); mefQuest("10",?WTEMP1,?WTEMP1,?WOBJECT,?BPARM,?WPARM);}
    }
    if(IFSTATE(Q1Solved,WIP3)){
        SIGNAL(WIP3,SIG_Q2_START); ///--------------The second question and pending interogative to any Meflin
        if(WIP2 == 1){SIGNAL(MEFCURRENT,SIG_Q2); mefQuest("2",?BPARM,?WPARM,?WOBJECT,?WTEMP1,?WTEMP1);}
        if(WIP2 == 2){SIGNAL(MEFCURRENT,SIG_Q5); mefQuest("5",?BPARM,?WPARM,?WOBJECT,?WTEMP1,?WTEMP1);}
        if(WIP2 == 3){SIGNAL(MEFCURRENT,SIG_Q7); mefQuest("7",?BPARM,?WPARM,?WOBJECT,?WTEMP1,?WTEMP1);}
        if(WIP2 == 4){SIGNAL(MEFCURRENT,SIG_Q9); mefQuest("9",?BPARM,?WPARM,?WOBJECT,?WTEMP1,?WTEMP1);}       
    }
    if(IFSTATE(Q2Pending,WIP3)){
        if(WIP2 == 1){SIGNAL(MEFCURRENT,SIG_Q2P); mefQuest("2",?WTEMP1,?WTEMP1,?WOBJECT,?BPARM,?WPARM);}
        if(WIP2 == 2){SIGNAL(MEFCURRENT,SIG_Q5P); mefQuest("5",?WTEMP1,?WTEMP1,?WOBJECT,?BPARM,?WPARM);}
        if(WIP2 == 3){SIGNAL(MEFCURRENT,SIG_Q7P); mefQuest("7",?WTEMP1,?WTEMP1,?WOBJECT,?BPARM,?WPARM);}
        if(WIP2 == 4){SIGNAL(MEFCURRENT,SIG_Q9P); mefQuest("9",?WTEMP1,?WTEMP1,?WOBJECT,?BPARM,?WPARM);}
    }
    if(IFSTATE(Q2Solved,WIP3)){
        SIGNAL(WIP3,SIG_Q3_START);  
         if(WIP2 == 1){SIGNAL(MEFCURRENT,SIG_Q3); mefQuest("3",?BPARM,?WPARM,?WOBJECT,?WTEMP1,?WTEMP1);}
    }
    if(IFSTATE(Q3Pending,WIP3)){
         WRITE("Q3Pending State found");
         if(WIP2 == 1){SIGNAL(MEFCURRENT,SIG_Q3P); mefQuest("3",?WTEMP1,?WTEMP1,?WOBJECT,?BPARM,?WPARM);}
    }
'),
-- the state below checks in reverse order
-- wip3 is the specific callings mef coord
('M_MEF_APPROACH', 'mef_response', 'chillin', 'Z_EPSILON', '', '', '
    
    //Advance the individual meflin state WIP3 to pending states and play the machines
   //--Q3
    if(IFSTATE(Q3Pending,WIP3)){ SIGNAL(MEFPAN_VIEWCAP,SIG_VIEWCAP);LOADVIEW(IDV_MEFPAN);SIGNAL(MEFPAN_WAITER,SIG_Q3P); SIGNAL(BPARM,SIG_PLAY);}
    if(IFSTATE(Q3Started,WIP3)){  SIGNAL(MEFPAN_VIEWCAP,SIG_VIEWCAP);LOADVIEW(IDV_MEFPAN);SIGNAL(MEFPAN_WAITER,SIG_Q3S); SIGNAL(BPARM,SIG_PLAY); SIGNAL(WIP3,SIG_Q3_GIVEN);}
    //--Q2
    if(IFSTATE(Q2Pending,WIP3)){ SIGNAL(MEFPAN_VIEWCAP,SIG_VIEWCAP);LOADVIEW(IDV_MEFPAN);SIGNAL(MEFPAN_WAITER,SIG_Q2P); SIGNAL(BPARM,SIG_PLAY);}
    if(IFSTATE(Q2Started,WIP3)){ SIGNAL(MEFPAN_VIEWCAP,SIG_VIEWCAP);LOADVIEW(IDV_MEFPAN);SIGNAL(MEFPAN_WAITER,SIG_Q2S); SIGNAL(BPARM,SIG_PLAY); SIGNAL(WIP3,SIG_Q2_GIVEN);}
   
   // --Q1                                                                                                              PLAY THE RIGHT MACHINE , SET CALLING MEFLIN COORDINATOR
    if(IFSTATE(Q1Pending,WIP3)){ SIGNAL(MEFPAN_VIEWCAP,SIG_VIEWCAP);LOADVIEW(IDV_MEFPAN);SIGNAL(MEFPAN_WAITER,SIG_Q1P); SIGNAL(BPARM,SIG_PLAY);}
    if(IFSTATE(Q1Started,WIP3)){ SIGNAL(MEFPAN_VIEWCAP,SIG_VIEWCAP);LOADVIEW(IDV_MEFPAN);SIGNAL(MEFPAN_WAITER,SIG_Q1S); SIGNAL(BPARM,SIG_PLAY); SIGNAL(WIP3,SIG_Q1_GIVEN);}
   
');


delete from transitions where automaton =  'M_MEF_TALK';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code")
VALUES 
('M_MEF_TALK','0','gotPlaySignal','WAIT','','SIG_PLAY','
    REF_MACHINE(MEFCURRENT);
   if(R_BPARM == S33_NEELP || R_BPARM == S11_NEELP || R_BPARM == S30_NEELP){
         set_control_value(IDV_OTHERNAME, OTHN, "NEELP");
   }
   if(R_BPARM == S24_RATHE || R_BPARM == S25_RATHE)
         set_control_value(IDV_OTHERNAME, OTHN, "RATHE");
   }
   if(R_BPARM == S10_THAOR || R_BPARM == S19_THAOR){
         set_control_value(IDV_OTHERNAME, OTHN, "THAOR");
   }
   if(R_BPARM == S16_PERST || R_BPARM == S12_PERST){
         set_control_value(IDV_OTHERNAME, OTHN, "PERST");
   }
   if(R_BPARM == S09_AMBLE) {
        set_control_value(IDV_OTHERNAME, OTHN, "AMBLE");
   }
      
'),

('M_MEF_TALK','gotPlaySignal', 'prepLongTalk', 'MOV', 'WSPRITE', 'WIP1', ''), -- long dialogue loop wip1
('M_MEF_TALK','prepLongTalk', 'startPlayingTalkFile', 'ASHOW',  'WSPRITE', '',  '
PLAYWAVE(WIP3);
'),
('M_MEF_TALK','startPlayingTalkFile', 'chatting', 'ESTIME', 'WIP2', '', ''), -- close durration of talk wip2
('M_MEF_TALK','startPlayingTalkFile', 'droppedItem', 'WAIT', '0', 'SIG_DROP', '
   // REF_MACHINE(SOD_SPELL);
    REF_MACHINE(CHAR_DROPTARGET);
    MOV(WOBJECT,R_WOBJECT);
'),
('M_MEF_TALK','chatting', 'talkDone', 'MOV', 'BFRAME', '0','
    SHOW(WIP4); //expression file
   // ANIMATE(10);
'),
 --wait for a signal to remove 
('M_MEF_TALK','startPlayingTalkFile','closed','WAIT','','SIG_CLOSE','
    STOPWAVE();
    CLEAR(WSPRITE);
    SHOW();
'),
('M_MEF_TALK','talkDone','closed','WAIT','','SIG_CLOSE','
    STOPWAVE();
    CLEAR(WSPRITE);
    SHOW();
    SIGNAL(SOD_ID,SIG_OTID);
'),
('M_MEF_TALK','closed', '0', 'Z_EPSILON', '0', '0', ''),
-- Examine and react to items -------------------------
('M_MEF_TALK','chatting', 'droppedItem', 'WAIT', '0', 'SIG_DROP', '
   // REF_MACHINE(SOD_SPELL);
    REF_MACHINE(CHAR_DROPTARGET);
    MOV(WOBJECT,R_WOBJECT);
'),
('M_MEF_TALK','talkDone', 'droppedItem', 'WAIT', '0', 'SIG_DROP', '
   // REF_MACHINE(SOD_SPELL);
    REF_MACHINE(CHAR_DROPTARGET);
    MOV(WOBJECT,R_WOBJECT);
'),
('M_MEF_TALK','droppedItem', 'selectMeflin', 'REF_MACHINE', 'MEFCURRENT', '', '
     CLEAR(WPARM);
     CLEAR(WTEMP2);
     CLEAR(BPARM);
'),
('M_MEF_TALK','selectMeflin', 'neelpCheck', 'EQUAL', 'R_BPARM', 'S33_NEELP', ''),
('M_MEF_TALK','selectMeflin', 'neelpCheck', 'EQUAL', 'R_BPARM', 'S11_NEELP', ''),
('M_MEF_TALK','selectMeflin', 'neelpCheck', 'EQUAL', 'R_BPARM', 'S30_NEELP', ''),
('M_MEF_TALK','selectMeflin', 'ratheCheck', 'EQUAL', 'R_BPARM', 'S24_RATHE', ''),
('M_MEF_TALK','selectMeflin', 'thaorCheck', 'EQUAL', 'R_BPARM', 'S10_THAOR', ''),
('M_MEF_TALK','selectMeflin', 'thaorCheck', 'EQUAL', 'R_BPARM', 'S19_THAOR', ''),
('M_MEF_TALK','selectMeflin', 'perstCheck', 'EQUAL', 'R_BPARM', 'S16_PERST', ''),
('M_MEF_TALK','selectMeflin', 'perstCheck', 'EQUAL', 'R_BPARM', 'S12_PERST', ''),
('M_MEF_TALK','selectMeflin', 'ratheCheck', 'EQUAL', 'R_BPARM', 'S25_RATHE', ''),
('M_MEF_TALK','selectMeflin', 'ambleCheck', 'EQUAL', 'R_BPARM', 'S09_AMBLE', ''),
 -------------------------
('M_MEF_TALK', 'neelpCheck', 'finishAprasal', 'Z_EPSILON', '0', '0', 
    'if(R_BPARM == S33_NEELP || R_BPARM == S11_NEELP || R_BPARM == S30_NEELP){ //-----NEELP------------------------------------------
        if(R_WPARM == NEELP_I1){mefResp(?WTEMP4,"1",?WPARM,?WTEMP1,?WTEMP2,?BPARM,?WTEMP3,?BFRAME);}
        if(R_WPARM == NEELP_I2){mefResp(?WTEMP4,"2",?WPARM,?WTEMP1,?WTEMP2,?BPARM,?WTEMP3,?BFRAME);}
        if(R_WPARM == NEELP_I3){mefResp(?WTEMP4,"3",?WPARM,?WTEMP1,?WTEMP2,?BPARM,?WTEMP3,?BFRAME);}
            if(WPARM == WOBJECT){
                MOV(WPARM,WTEMP3); // Move the prize cache id in so the prize boxes can get it
                SIGNAL(MEFPAN_WAITER,SIG_PRIZETEXT);
                SIGNAL(MEFPAN_PRIZE_A,SIG_SHOWPRIZE);
                SIGNAL(MEFPAN_PRIZE_B,SIG_SHOWPRIZE);
                SIGNAL(MEFPAN_PRIZE_C,SIG_SHOWPRIZE);
                //Signal the quest solved - the new start happens whith the next approach
                     if(R_BPARM == S33_NEELP){
                        SIGNAL(NEELP_COORD,SIG_Q1_SOLVED);
                        SIGNAL(QL_MANAGER,Q7_STOP);
                        SIGNAL(S33_NEELP,SIG_VANISH); SIGNAL(S33_NEELP_alt1,SIG_HIDE); SIGNAL(S33_NEELP_alt2,SIG_HIDE);
                        SIGNAL(S11_NEELP,SIG_SHOW);SIGNAL(S11_NEELP_alt1,SIG_SHOW);
                     }
                    if(R_BPARM == S11_NEELP){
                        SIGNAL(NEELP_COORD,SIG_Q2_SOLVED);
                        SIGNAL(QL_MANAGER,Q8_STOP);
                        SIGNAL(S11_NEELP,SIG_VANISH); SIGNAL(S11_NEELP_alt1,SIG_HIDE);
                        SIGNAL(S30_NEELP,SIG_SHOW);SIGNAL(S30_NEELP_alt1,SIG_SHOW);
                    }
                    if(R_BPARM == S30_NEELP){
                        SIGNAL(NEELP_COORD,SIG_Q3_SOLVED);
                        SIGNAL(QL_MANAGER,Q9_STOP);
                        SIGNAL(S30_NEELP,SIG_VANISH); SIGNAL(S30_NEELP_alt1,SIG_HIDE);
                    }
             //--------------
                MOV(WSPRITE,IDS_M1T1ANIM); //talking reply
                ASHOW(WSPRITE);
                PLAYWAVE(WTEMP2);
            }
            
            if(IS_A(WOBJECT,IDC_FISH) || IS_A(WOBJECT,IDC_BOMB) || IS_A(WOBJECT,IDC_PLANT) || IS_A(WOBJECT,IDC_GOPA) || IS_A(WOBJECT,IDC_SPELL)|| IS_A(WOBJECT,IDC_BAIT)){
            //alternatives here                                         SOUND   TEXT   CACHE   ANIMATE
           if(IS_A(WOBJECT,IDC_FISH)){mefResp("1",?WTEMP1,?WTEM4,"FISH",?WTEMP2,?BPARM,?WTEMP3,?BFRAME);}
           if(IS_A(WOBJECT,IDC_BOMB)){mefResp("1",?WTEMP1,?WTEM4,"BOMB",?WTEMP2,?BPARM,?WTEMP3,?BFRAME);}
           if(IS_A(WOBJECT,IDC_PLANT)){mefResp("1",?WTEMP1,?WTEM4,"PLANT",?WTEMP2,?BPARM,?WTEMP3,?BFRAME);}
           if(IS_A(WOBJECT,IDC_GOPA)){mefResp("1",?WTEMP1,?WTEM4,"GOPA",?WTEMP2,?BPARM,?WTEMP3,?BFRAME);}
           if(IS_A(WOBJECT,IDC_SPELL)){mefResp("1",?WTEMP1,?WTEM4,"SPELL",?WTEMP2,?BPARM,?WTEMP3,?BFRAME);}
           if(IS_A(WOBJECT,IDC_BAIT)){mefResp("1",?WTEMP1,?WTEM4,"BAIT",?WTEMP2,?BPARM,?WTEMP3,?BFRAME);}
                MOV(WPARM,WTEMP3); // Move the prize cache id in so the prize boxes can get it
                SIGNAL(MEFPAN_WAITER,SIG_PRIZETEXT);
                SIGNAL(MEFPAN_WAITER,SIG_PRIZETEXT);
                SIGNAL(MEFPAN_PRIZE_A,SIG_SHOWPRIZE);
                SIGNAL(MEFPAN_PRIZE_B,SIG_SHOWPRIZE);
                SIGNAL(MEFPAN_PRIZE_C,SIG_SHOWPRIZE);
                MOV(WSPRITE,IDS_M1T1ANIM); //talking reply
                ASHOW(WSPRITE);
                PLAYWAVE(WTEMP2);
             }   
        }           
'),
('M_MEF_TALK', 'ratheCheck', 'finishAprasal', 'Z_EPSILON', '0', '0', 
    'if(R_BPARM == S24_RATHE || R_BPARM == S25_RATHE){ //-----RATHE------------------------------------------
        if(R_WPARM == RATHE_I1){mefResp(?WTEMP4,"4",?WPARM,?WTEMP1,?WTEMP2,?BPARM,?WTEMP3,?BFRAME);}
        if(R_WPARM == RATHE_I2){mefResp(?WTEMP4,"5",?WPARM,?WTEMP1,?WTEMP2,?BPARM,?WTEMP3,?BFRAME);}
            if(WPARM == WOBJECT){
                MOV(WPARM,WTEMP3); // Move the prize cache id in so the prize boxes can get it
                SIGNAL(MEFPAN_WAITER,SIG_PRIZETEXT);
                SIGNAL(MEFPAN_PRIZE_A,SIG_SHOWPRIZE);
                SIGNAL(MEFPAN_PRIZE_B,SIG_SHOWPRIZE);
                SIGNAL(MEFPAN_PRIZE_C,SIG_SHOWPRIZE);
                MOV(WSPRITE,IDS_M6T10000); //talking reply
                ASHOW(WSPRITE);
                PLAYWAVE(WTEMP2);
                   if(R_BPARM == S24_RATHE){
                        SIGNAL(RATHE_COORD,SIG_Q1_SOLVED);
                        SIGNAL(QL_MANAGER,Q10_STOP);
                        SIGNAL(S24_RATHE,SIG_VANISH);
                         SIGNAL(S24_RATHE_alt1,SIG_HIDE);
                        SIGNAL(S25_RATHE,SIG_SHOW);
                     }
                     if(R_BPARM == S25_RATHE){
                        SIGNAL(RATHE_COORD,SIG_Q2_SOLVED);
                        SIGNAL(QL_MANAGER,Q11_STOP);
                        SIGNAL(S25_RATHE,SIG_VANISH);
                     }
            }
            
            if(IS_A(WOBJECT,IDC_BOMB) || IS_A(WOBJECT,IDC_PLANT) || IS_A(WOBJECT,IDC_SPELL)|| IS_A(WOBJECT,IDC_BAIT) || IS_A(WOBJECT,IDC_GOPA)){
            //alternatives here                                         SOUND   TEXT   CACHE   ANIMATE
           if(IS_A(WOBJECT,IDC_FISH)){mefResp("4",?WTEMP1,?WTEM4,"GOPA",?WTEMP2,?BPARM,?WTEMP3,?BFRAME);}
           if(IS_A(WOBJECT,IDC_BOMB)){mefResp("4",?WTEMP1,?WTEM4,"BOMB",?WTEMP2,?BPARM,?WTEMP3,?BFRAME);}
           if(IS_A(WOBJECT,IDC_PLANT)){mefResp("4",?WTEMP1,?WTEM4,"PLANT",?WTEMP2,?BPARM,?WTEMP3,?BFRAME);}
           if(IS_A(WOBJECT,IDC_SPELL)){mefResp("4",?WTEMP1,?WTEM4,"SPELL",?WTEMP2,?BPARM,?WTEMP3,?BFRAME);}
           if(IS_A(WOBJECT,IDC_BAIT)){mefResp("4",?WTEMP1,?WTEM4,"BAIT",?WTEMP2,?BPARM,?WTEMP3,?BFRAME);}
                MOV(WPARM,WTEMP3); // Move the prize cache id in so the prize boxes can get it
                SIGNAL(MEFPAN_WAITER,SIG_PRIZETEXT);
                SIGNAL(MEFPAN_WAITER,SIG_PRIZETEXT);
                SIGNAL(MEFPAN_PRIZE_A,SIG_SHOWPRIZE);
                SIGNAL(MEFPAN_PRIZE_B,SIG_SHOWPRIZE);
                SIGNAL(MEFPAN_PRIZE_C,SIG_SHOWPRIZE);
                MOV(WSPRITE,IDS_M6T10000); //talking reply
                ASHOW(WSPRITE);
                PLAYWAVE(WTEMP2);
             }   
        }
'),
('M_MEF_TALK', 'thaorCheck', 'finishAprasal', 'Z_EPSILON', '0', '0', 
    'if(R_BPARM == S10_THAOR || R_BPARM == S19_THAOR){ //-----THAOR------------------------------------------
        if(R_WPARM == THAOR_I1){mefResp(?WTEMP4,"6",?WPARM,?WTEMP1,?WTEMP2,?BPARM,?WTEMP3,?BFRAME);}
        if(R_WPARM == THAOR_I2){mefResp(?WTEMP4,"7",?WPARM,?WTEMP1,?WTEMP2,?BPARM,?WTEMP3,?BFRAME);}
            if(WPARM == WOBJECT){
                MOV(WPARM,WTEMP3); // Move the prize cache id in so the prize boxes can get it
                SIGNAL(MEFPAN_WAITER,SIG_PRIZETEXT);
                SIGNAL(MEFPAN_PRIZE_A,SIG_SHOWPRIZE);
                SIGNAL(MEFPAN_PRIZE_B,SIG_SHOWPRIZE);
                SIGNAL(MEFPAN_PRIZE_C,SIG_SHOWPRIZE);
                MOV(WSPRITE,IDS_MYT10000); //talking reply
                ASHOW(WSPRITE);
                PLAYWAVE(WTEMP2);
                    if(R_BPARM == S10_THAOR){
                        SIGNAL(THAOR_COORD,SIG_Q1_SOLVED);
                        q_world_active(?BPARM, "3");
                        if(BPARM != " Excavate the Ancient crypts in the canyons."){
                                SIGNAL(QL_MANAGER,Q3_START);
                        }
                        SIGNAL(QL_MANAGER,Q12_STOP);
                        SIGNAL(S10_THAOR,SIG_VANISH); SIGNAL(S10_THAOR_alt1,SIG_HIDE); 
                        SIGNAL(S19_THAOR,SIG_SHOW);SIGNAL(S19_THAOR_alt1,SIG_SHOW);
                     }
                     if(R_BPARM == S19_THAOR){
                        SIGNAL(THAOR_COORD,SIG_Q2_SOLVED);
                        SIGNAL(QL_MANAGER,Q13_STOP);
                        SIGNAL(S19_THAOR,SIG_VANISH);SIGNAL(S19_THAOR_alt1,SIG_HIDE);
                     }
            }
            
            if(IS_A(WOBJECT,IDC_BOMB) || IS_A(WOBJECT,IDC_SPELL)|| IS_A(WOBJECT,IDC_BAIT)){
            //alternatives here                                         SOUND   TEXT   CACHE   ANIMATE  
           if(IS_A(WOBJECT,IDC_BOMB)){mefResp("3",?WTEMP1,?WTEM4,"BOMB",?WTEMP2,?BPARM,?WTEMP3,?BFRAME);}
           if(IS_A(WOBJECT,IDC_SPELL)){mefResp("3",?WTEMP1,?WTEM4,"SPELL",?WTEMP2,?BPARM,?WTEMP3,?BFRAME);}
           if(IS_A(WOBJECT,IDC_BAIT)){mefResp("3",?WTEMP1,?WTEM4,"BAIT",?WTEMP2,?BPARM,?WTEMP3,?BFRAME);}
                MOV(WPARM,WTEMP3); // Move the prize cache id in so the prize boxes can get it
                SIGNAL(MEFPAN_WAITER,SIG_PRIZETEXT);
                SIGNAL(MEFPAN_WAITER,SIG_PRIZETEXT);
                SIGNAL(MEFPAN_PRIZE_A,SIG_SHOWPRIZE);
                SIGNAL(MEFPAN_PRIZE_B,SIG_SHOWPRIZE);
                SIGNAL(MEFPAN_PRIZE_C,SIG_SHOWPRIZE);
                MOV(WSPRITE,IDS_MYT10000); //talking reply
                ASHOW(WSPRITE);
                PLAYWAVE(WTEMP2);
             }   
        }
'),
('M_MEF_TALK', 'perstCheck', 'finishAprasal', 'Z_EPSILON', '0', '0', 
    'if(R_BPARM == S16_PERST || R_BPARM == S12_PERST){ //-----PERST------------------------------------------
        if(R_WPARM == PERST_I1){mefResp(?WTEMP4,"8",?WPARM,?WTEMP1,?WTEMP2,?BPARM,?WTEMP3,?BFRAME);}
        if(R_WPARM == PERST_I2){mefResp(?WTEMP4,"9",?WPARM,?WTEMP1,?WTEMP2,?BPARM,?WTEMP3,?BFRAME);}
            if(WPARM == WOBJECT){
                MOV(WPARM,WTEMP3); // Move the prize cache id in so the prize boxes can get it
                SIGNAL(MEFPAN_WAITER,SIG_PRIZETEXT);
                SIGNAL(MEFPAN_PRIZE_A,SIG_SHOWPRIZE);
                SIGNAL(MEFPAN_PRIZE_B,SIG_SHOWPRIZE);
                SIGNAL(MEFPAN_PRIZE_C,SIG_SHOWPRIZE);
                MOV(WSPRITE,IDS_M2T10000); //talking reply
                ASHOW(WSPRITE);
                PLAYWAVE(WTEMP2);
                    if(R_BPARM == S16_PERST){
                        SIGNAL(PERST_COORD,SIG_Q1_SOLVED);
                        SIGNAL(QL_MANAGER,Q14_STOP);
                        SIGNAL(S16_PERST,SIG_VANISH); SIGNAL(S16_PERST_alt1,SIG_HIDE); 
                        SIGNAL(S12_PERST,SIG_SHOW);
                     }
                     if(R_BPARM == S12_PERST){
                        SIGNAL(PERST_COORD,SIG_Q2_SOLVED);
                        SIGNAL(QL_MANAGER,Q15_STOP);
                        SIGNAL(S12_PERST,SIG_VANISH);
                     }
            }
            
             if(IS_A(WOBJECT,IDC_FISH) || IS_A(WOBJECT,IDC_BOMB) || IS_A(WOBJECT,IDC_PLANT) || IS_A(WOBJECT,IDC_SPELL)|| IS_A(WOBJECT,IDC_BAIT)){
            //alternatives here                                         SOUND   TEXT   CACHE   ANIMATE  
           if(IS_A(WOBJECT,IDC_FISH)){mefResp("2",?WTEMP1,?WTEM4,"FISH",?WTEMP2,?BPARM,?WTEMP3,?BFRAME);}
           if(IS_A(WOBJECT,IDC_BOMB)){mefResp("2",?WTEMP1,?WTEM4,"BOMB",?WTEMP2,?BPARM,?WTEMP3,?BFRAME);}
           if(IS_A(WOBJECT,IDC_PLANT)){mefResp("2",?WTEMP1,?WTEM4,"PLANT",?WTEMP2,?BPARM,?WTEMP3,?BFRAME);}
           if(IS_A(WOBJECT,IDC_SPELL)){mefResp("2",?WTEMP1,?WTEM4,"SPELL",?WTEMP2,?BPARM,?WTEMP3,?BFRAME);}
           if(IS_A(WOBJECT,IDC_BAIT)){mefResp("2",?WTEMP1,?WTEM4,"BAIT",?WTEMP2,?BPARM,?WTEMP3,?BFRAME);}
                MOV(WPARM,WTEMP3); // Move the prize cache id in so the prize boxes can get it
                SIGNAL(MEFPAN_WAITER,SIG_PRIZETEXT);
                SIGNAL(MEFPAN_WAITER,SIG_PRIZETEXT);
                SIGNAL(MEFPAN_PRIZE_A,SIG_SHOWPRIZE);
                SIGNAL(MEFPAN_PRIZE_B,SIG_SHOWPRIZE);
                SIGNAL(MEFPAN_PRIZE_C,SIG_SHOWPRIZE);
                MOV(WSPRITE,IDS_M2T10000); //talking reply
                ASHOW(WSPRITE);
                PLAYWAVE(WTEMP2);
             }   
        }
'),
('M_MEF_TALK', 'ambleCheck', 'finishAprasal', 'Z_EPSILON', '0', '0', 
    'if(R_BPARM == S09_AMBLE) { //-----AMBLE------------------------------------------
        if(R_WPARM == AMBLE_I1){mefResp(?WTEMP4,"10",?WPARM,?WTEMP1,?WTEMP2,?BPARM,?WTEMP3,?BFRAME);}
            if(WPARM == WOBJECT){
                MOV(WPARM,WTEMP3); // Move the prize cache id in so the prize boxes can get it
                SIGNAL(MEFPAN_WAITER,SIG_PRIZETEXT);
                SIGNAL(MEFPAN_PRIZE_A,SIG_SHOWPRIZE);
                SIGNAL(MEFPAN_PRIZE_B,SIG_SHOWPRIZE);
                SIGNAL(MEFPAN_PRIZE_C,SIG_SHOWPRIZE);
                MOV(WSPRITE,IDS_MST01); //talking reply
                ASHOW(WSPRITE);
                PLAYWAVE(WTEMP2);
                
                 //Amble never ends
            }
            
        }
'),
('M_MEF_TALK','finishAprasal', 'givePrize', 'ESTIME', '4', '','
    SHOW(BFRAME);
    MOV(BFRAME,10); //may need frame 10 here
   // ANIMATE(0);
'),
('M_MEF_TALK','finishAprasal','closed','WAIT','','SIG_CLOSE','
    STOPWAVE();
    CLEAR(WSPRITE);
    SHOW();
'),
('M_MEF_TALK','givePrize', 'talkDone', 'Z_EPSILON',  '', '',  '');





delete from transitions where automaton = 'M_MEFPAN_PRIZE';
delete from transitions where automaton =  'M_MEFPAN_OK';
delete from transitions where automaton =  'M_MEFCLOSER';
delete from transitions where automaton =  'M_MEFPAN_VIEWCAP';
delete from transitions where automaton =  'M_MEFPAN_WAITER';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code")
VALUES 



('M_MEFCLOSER','0', 'MefShowCheck', 'WAIT', 'SIG_SET', '', '
  REF_MACHINE(MEFPAN_VIEWCAP);
  MOV(BPARM,R_BPARM);
'),
('M_MEFCLOSER','MefShowCheck', 'MefShowing', 'EQUALi', 'R_BPARM', '1', ''),
('M_MEFCLOSER','MefShowCheck', '0', 'Z_EPSILON', '', '', ''),
('M_MEFCLOSER','MefShowing', 'MefClosing', '', '', '', '
    REF_MACHINE(MEFCURRENT);
    PLAYWAVE(SOUND_POPUP);
    SIGNAL(R_WPARM,SIG_CLOSE);
    SIGNAL(MEFPAN_VIEWCAP,SIG_VIEWRETURN);
    SIGNAL(SOD_ID,SIG_SHOW);
    SIGNAL(MEFPAN_WAITER,SIG_RESET);

    SIGNAL(MEFPAN_PRIZE_A,SIG_RESET);
    SIGNAL(MEFPAN_PRIZE_B,SIG_RESET);
    SIGNAL(MEFPAN_PRIZE_C,SIG_RESET);
'),
('M_MEFCLOSER','MefClosing', '0', 'Z_EPSILON', '', '', ''),



('M_MEFPAN_OK', '0', '1', 'SHOW', '0', 'IDS_BTN_OK', '
    CLEAR(WPARM);
'),
('M_MEFPAN_OK','1', '2', 'CLICK', '0', '0', '
    REF_MACHINE(MEFCURRENT);
    PLAYWAVE(SOUND_POPUP);
    SIGNAL(R_WPARM,SIG_CLOSE);
    SIGNAL(MEFPAN_VIEWCAP,SIG_VIEWRETURN);
    SIGNAL(MEFPAN_WAITER,SIG_RESET);
    SIGNAL(MEFPAN_PRIZE_A,SIG_RESET);
    SIGNAL(MEFPAN_PRIZE_B,SIG_RESET);
    SIGNAL(MEFPAN_PRIZE_C,SIG_RESET);
    predicate otherplayer(pid,status,player,account_id,name,viewname,wealth,karma,energy,strength,wisdom,gender,culture, knowsparent, knowsvillage,knowscity);
    otherplayer(?BPARM, "ACTIVE", ?WPARM,?acntid,?ONAME,?OVIEW,?OWEALTH,?OKARMA,?OENERGY, ?OSTRENGTH,?OWISDOM,?OSEX,?OCULTURE,?OKNOWSPARENT,?OKNOWSVILLSAGE,?OKNOWSCITY)?
   if(ONAME){
     SIGNAL(SOD_ID,SIG_OTID); 
   }else{
      set_control_value(IDV_OTHERNAME, OTHN, "");
      SIGNAL(SOD_ID,SIG_CLEAR); 
      
   };
'),
('M_MEFPAN_OK', '2', '1', 'Z_EPSILON', '', '', ''),


('M_MEFPAN_VIEWCAP', '0', 'waiting', 'ASSIGN', 'BPARM', '0', ''),
('M_MEFPAN_VIEWCAP', 'waiting', 'viewGrabbed', 'WAIT', '0', 'SIG_VIEWCAP', ''),
('M_MEFPAN_VIEWCAP', 'waiting', 'viewReloaded', 'WAIT', '0', 'SIG_VIEWRETURN', ''),
('M_MEFPAN_VIEWCAP', 'viewGrabbed', 'waiting', 'Z_EPSILON', '', '', '
      MOV(BPARM,1); // A Meflin is presently up
      MOV(WPARM,LVIEW);
'),
('M_MEFPAN_VIEWCAP', 'viewReloaded', 'waiting', 'Z_EPSILON', '', '', '
      MOV(BPARM,0);// A Meflin is no longer there
      LOADVIEW(WPARM);
'),


--The waiter needs to be the local player of the words on the mefpan
-- It get's signaled and puts the right text on the screen through local access to 

('M_MEFPAN_WAITER','0', 'waiting', 'Z_EPSILON', '', '', '
    REF_MACHINE(MEFCURRENT); //what mef are we hittin up
     PLAYWAVE(SOUND_POPUP);
     CLEAR(WPARM);
 '),
----
('M_MEFPAN_WAITER', 'waiting', '0', 'GRAB', 'WOBJECT', '', 'SHOW(0);'),

('M_MEFPAN_WAITER', 'waiting', 'showPrizeText', 'WAIT', '0', 'SIG_PRIZETEXT', '
    REF_MACHINE(MEFCURRENT); //what mef are we hittin up
    REF_MACHINE(R_WPARM); //R_WPARM is the active mef machine
    CLEAR(BPARM);
    MOV(BPARM,R_BPARM);
    SETTEXT(ID_MEFTEXT,BPARM); //prize text
    ADDI(LWISDOM,1); 
    SIGNALi(0,SID_ID);
'),
('M_MEFPAN_WAITER', 'showPrizeText', '0', 'Z_EPSILON', '', '', ''),
-----
('M_MEFPAN_WAITER', 'waiting', 'Q1S', 'WAIT', '0', 'SIG_Q1S', '
   
    if(R_BPARM == S33_NEELP){mefQuest("1",?BPARM,?WPARM,?WOBJECT,?WTEMP1,?WTEMP3);SETTEXT(ID_MEFTEXT,WPARM);}
     if(R_BPARM == S24_RATHE){mefQuest("4",?BPARM,?WPARM,?WOBJECT,?WTEMP1,?WTEMP3);SETTEXT(ID_MEFTEXT,WPARM);}
      if(R_BPARM == S10_THAOR){mefQuest("6",?BPARM,?WPARM,?WOBJECT,?WTEMP1,?WTEMP3);SETTEXT(ID_MEFTEXT,WPARM);}
        if(R_BPARM == S16_PERST){mefQuest("8",?BPARM,?WPARM,?WOBJECT,?WTEMP1,?WTEMP3);SETTEXT(ID_MEFTEXT,WPARM);}
          if(R_BPARM == S09_AMBLE){mefQuest("10",?BPARM,?WPARM,?WOBJECT,?WTEMP1,?WTEMP3);SETTEXT(ID_MEFTEXT,WPARM);}
        //Add any objects being offered here
        ASHOW(WOBJECT);
'),
('M_MEFPAN_WAITER', 'Q1S', 'waiting', 'Z_EPSILON', '', '', ''),
-----

('M_MEFPAN_WAITER', 'waiting', 'Q1P', 'WAIT', '0', 'SIG_Q1P', '
    if(R_BPARM == S33_NEELP){mefQuest("1",?BPARM,?WPARM,?WOBJECT,?WTEMP1,?WTEMP3);SETTEXT(ID_MEFTEXT,WTEMP3);}
     if(R_BPARM == S24_RATHE){mefQuest("4",?BPARM,?WPARM,?WOBJECT,?WTEMP1,?WTEMP3);SETTEXT(ID_MEFTEXT,WTEMP3);}
      if(R_BPARM == S10_THAOR){mefQuest("6",?BPARM,?WPARM,?WOBJECT,?WTEMP1,?WTEMP3);SETTEXT(ID_MEFTEXT,WTEMP3);}
        if(R_BPARM == S16_PERST){mefQuest("8",?BPARM,?WPARM,?WOBJECT,?WTEMP1,?WTEMP3);SETTEXT(ID_MEFTEXT,WTEMP3);}
         if(R_BPARM == S09_AMBLE){mefQuest("10",?BPARM,?WPARM,?WOBJECT,?WTEMP1,?WTEMP3);SETTEXT(ID_MEFTEXT,WTEMP3);}
  
'),
('M_MEFPAN_WAITER', 'Q1P', 'waiting', 'Z_EPSILON', '', '', ''),
-----
('M_MEFPAN_WAITER', 'waiting', 'Q2S', 'WAIT', '0', 'SIG_Q2S', '
      CLEAR(WPARM);
      CLEAR(WOBJECT);
      if(R_BPARM == S11_NEELP){mefQuest("2",?BPARM,?WPARM,?WOBJECT,?WTEMP1,?WTEMP3);SETTEXT(ID_MEFTEXT,WPARM);}
       if(R_BPARM == S12_PERST){mefQuest("9",?BPARM,?WPARM,?WOBJECT,?WTEMP1,?WTEMP3);SETTEXT(ID_MEFTEXT,WPARM);}
       if(R_BPARM == S25_RATHE){mefQuest("5",?BPARM,?WPARM,?WOBJECT,?WTEMP1,?WTEMP3);SETTEXT(ID_MEFTEXT,WPARM);}
        if(R_BPARM == S19_THAOR){mefQuest("7",?BPARM,?WPARM,?WOBJECT,?WTEMP1,?WTEMP3);SETTEXT(ID_MEFTEXT,WPARM);}
        ASHOW(WOBJECT);
'),
('M_MEFPAN_WAITER', 'Q2S', 'waiting', 'Z_EPSILON', '', '', ''),
-----

('M_MEFPAN_WAITER', 'waiting', 'Q2P', 'WAIT', '0', 'SIG_Q2P', '
  if(R_BPARM == S11_NEELP){mefQuest("2",?BPARM,?WPARM,?WOBJECT,?WTEMP1,?WTEMP3);SETTEXT(ID_MEFTEXT,WTEMP3);}
  if(R_BPARM == S12_PERST){mefQuest("9",?BPARM,?WPARM,?WOBJECT,?WTEMP1,?WTEMP3);SETTEXT(ID_MEFTEXT,WTEMP3);}
  if(R_BPARM == S25_RATHE){mefQuest("5",?BPARM,?WPARM,?WOBJECT,?WTEMP1,?WTEMP3);SETTEXT(ID_MEFTEXT,WTEMP3);}
  if(R_BPARM == S19_THAOR){mefQuest("7",?BPARM,?WPARM,?WOBJECT,?WTEMP1,?WTEMP3);SETTEXT(ID_MEFTEXT,WTEMP3);}
'),
('M_MEFPAN_WAITER', 'Q2P', 'waiting', 'Z_EPSILON', '', '', ''),
-----

('M_MEFPAN_WAITER', 'waiting', 'Q3S', 'WAIT', '0', 'SIG_Q3S', '
   CLEAR(WOBJECT);
   CLEAR(WPARM);
   if(R_BPARM == S30_NEELP){mefQuest("3",?BPARM,?WPARM,?WOBJECT,?WTEMP1,?WTEMP3);SETTEXT(ID_MEFTEXT,WPARM);}
   ASHOW(WOBJECT);
'),
('M_MEFPAN_WAITER', 'Q3S', 'waiting', 'Z_EPSILON', '', '', ''),
-----

('M_MEFPAN_WAITER', 'waiting', 'Q3P', 'WAIT', '0', 'SIG_Q3P', '
   if(R_BPARM == S30_NEELP){mefQuest("3",?BPARM,?WPARM,?WOBJECT,?WTEMP1,?WTEMP3);SETTEXT(ID_MEFTEXT,WTEMP3);}
'),
('M_MEFPAN_WAITER', 'Q3P', 'waiting', 'Z_EPSILON', '', '', ''),
----------------------------------------------------------------------------------------


('M_MEFPAN_PRIZE', '0', 'setup', 'Z_EPSILON', '', '', ''),
('M_MEFPAN_PRIZE', 'setup', 'pickPrize', 'WAIT', '0', 'SIG_SHOWPRIZE', '
    REF_MACHINE(MEFCURRENT);
    REF_MACHINE(R_WPARM); 
    MOV(WPARM,R_WPARM); // Should be the cacheid
    mefPrize(WPARM,WIP1,?WOBJECT);
'),
('M_MEFPAN_PRIZE', 'pickPrize', 'showPrize', 'ASHOW', 'WOBJECT', '', ''),
('M_MEFPAN_PRIZE', 'showPrize', '0', 'GRAB', '', '', '
    SHOW(0);
'),
('M_MEFPAN_PRIZE', 'showPrize', '0', 'WAIT', '0', 'SIG_RESET', '
    SHOW(0);
');