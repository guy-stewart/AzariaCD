delete from games;

------------------------------------RESOURCES

--ANIMATED MACHINE PARTS
delete from spr_names where name = 'IDS_CARDANI';
delete from spr_names where name = 'IDS_MACHANI';
delete from spr_names where name = 'IDS_TEMPEJEC';



delete from spr_names where name = 'IDS_TEMPLATE31';
delete from spr_names where name = 'IDS_TEMPLATE32';
delete from spr_names where name = 'IDS_TEMPLATE33';
delete from spr_names where name = 'IDS_TEMPLATE34';
delete from spr_names where name = 'IDS_TEMPLATE35';
delete from spr_names where name = 'IDS_TEMPLATE40';

--CARDS
delete from spr_names where name = 'IDS_CARD01';
delete from spr_names where name = 'IDS_CARD02';
delete from spr_names where name = 'IDS_CARD03';
delete from spr_names where name = 'IDS_CARD04';
delete from spr_names where name = 'IDS_CARD05';
delete from spr_names where name = 'IDS_CARD06';
delete from spr_names where name = 'IDS_CARD07';
delete from spr_names where name = 'IDS_CARD08';
delete from spr_names where name = 'IDS_CARD09';
delete from spr_names where name = 'IDS_CARD10';
delete from spr_names where name = 'IDS_CARD11';
delete from spr_names where name = 'IDS_CARD12';
delete from spr_names where name = 'IDS_CARD13';
delete from spr_names where name = 'IDS_CARD14';
delete from spr_names where name = 'IDS_CARD15';
delete from spr_names where name = 'IDS_CARD16';
delete from spr_names where name = 'IDS_CARD17';
delete from spr_names where name = 'IDS_CARD18';
delete from spr_names where name = 'IDS_CARD19';
delete from spr_names where name = 'IDS_CARD20';
delete from spr_names where name = 'IDS_CARD21';
delete from spr_names where name = 'IDS_CARD22';
delete from spr_names where name = 'IDS_CARD23';
delete from spr_names where name = 'IDS_CARD24';
delete from spr_names where name = 'IDS_CARD25';
delete from spr_names where name = 'IDS_CARD26';
delete from spr_names where name = 'IDS_CARD27';
delete from spr_names where name = 'IDS_CARD28';
delete from spr_names where name = 'IDS_CARD29';
delete from spr_names where name = 'IDS_CARD30';

-- Plaque
-- Plaqchem
-- Plachnyst
-- plaqvile

INSERT INTO "main"."spr_names" ("name", "value", "id") 
VALUES 
('IDS_CARDANI', 'CARDANI', '1400'),
('IDS_MACHANI', 'MACHANI', '1401'),
('IDS_TEMPEJEC', 'TEMPEJEC', '1402');



delete from machines where name = 'S06_CARD_EJECT_BTN';
delete from machines where name = 'S06_CARD_EJECT_ANIM';
delete from machines where name = 'S06_CYCLE_TEMPL_UP_BTN';
delete from machines where name = 'S06_CYCLE_TEMPL_DN_BTN';
delete from machines where name = 'S06_CYCLE_TEMPL_ANIM';
delete from machines where name = 'S06_TEMPL_EJECT_BTN';
delete from machines where name = 'S06_TEMPL_EJECT_ANIM';

INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") 
VALUES 
--THERE ARE 6 CARD MACHINES (IDV_CARDMACH1-6 1568-1573)
('1650', 'S06_CARD_EJECT_BTN', '1568', 'IDV_CARDMACH1', '305', '206', '340', '223', '0','M_','','','',''),
('1651', 'S06_CARD_EJECT_ANIM', '1568', 'IDV_CARDMACH1', '300', '225', '340', '300', '0','M_','','','',''),
('1652', 'S06_CYCLE_TEMPL_UP_BTN', '1568', 'IDV_CARDMACH1', '196', '216', '212', '248', '0','M_','','','',''),
('1653', 'S06_CYCLE_TEMPL_DN_BTN', '1568', 'IDV_CARDMACH1', '196', '233', '212', '248', '0','M_','','','',''),
('1654', 'S06_CYCLE_TEMPL_ANIM', '1568', 'IDV_CARDMACH1', '100', '250', '200', '300', '0','M_','','','',''),
('1655', 'S06_TEMPL_EJECT_BTN', '1568', 'IDV_CARDMACH1', '131', '207', '165', '223', '0','M_','','','',''),
('1656', 'S06_TEMPL_EJECT_ANIM', '1568', 'IDV_CARDMACH1', '96', '230', '200', '300', '0','M_','','','',''),