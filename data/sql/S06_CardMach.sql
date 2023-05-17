delete from games;

------------------------------------RESOURCES
delete from sounds where name = 'SOUND_CARDEJECT';
delete from sounds where name = 'SOUND_RATCHET';

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

INSERT INTO "main"."sounds" ("name", "value", "id") 
VALUES 
('SOUND_CARDEJECT', 'cardeject', '31'),
('SOUND_RATCHET', 'ratchet', '32');


INSERT INTO "main"."spr_names" ("name", "value", "id") 
VALUES 
('IDS_CARDANI', 'CARDANI', '1400'),
('IDS_MACHANI', 'MACHANI', '1401'),
('IDS_TEMPEJEC', 'TEMPEJEC', '1402');



delete from machines where name = 'S06_CARD_EJECT_BTN';
delete from machines where name = 'S06_CARD_EJECT_ANIM';
delete from machines where name = 'S06_CYCLE_TEMPL_BTNUP';
delete from machines where name = 'S06_CYCLE_TEMPL_BTNDN';
delete from machines where name = 'S06_CYCLE_TEMPL_ANIMDN';
delete from machines where name = 'S06_CYCLE_TEMPL_ANIMUP';
delete from machines where name = 'S06_TEMPL_EJECT_BTN';
delete from machines where name = 'S06_TEMPL_EJECT_ANIM';


delete from transitions where name = 'M06_EJECT_CARD_BTN';
delete from transitions where name = 'M06_EJECT_CARD_ANIM';
delete from transitions where name = 'M06_CYCLE_TEMPL_UP_BTN';
delete from transitions where name = 'M06_CYCLE_TEMPL_DN_BTN';
delete from transitions where name = 'M06_CYCLE_TEMPL_ANIMUP';
delete from transitions where name = 'M06_CYCLE_TEMPL_ANIMDN';
delete from transitions where name = 'M06_TEMPL_EJECT_BTN';
delete from transitions where name = 'M06_EJECT_TEMPL_ANIM';

INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") 
VALUES 
--THERE ARE 6 CARD MACHINES (IDV_CARDMACH1-6 1568-1573)
('1650', 'S06_CARD_EJECT_BTN1', '1568', 'IDV_CARDMACH1', '305', '206', '340', '223', '0','M06_EJECT_CARD_BTN','S06_CARD_EJECT_ANIM1','','',''),
('1651', 'S06_CARD_EJECT_ANIM1', '1568', 'IDV_CARDMACH1', '293', '225', '340', '300', '0','M06_EJECT_CARD_ANIM','','','',''),

('1652', 'S06_TEMPL_EJECT_BTN1', '1568', 'IDV_CARDMACH1', '131', '207', '165', '223', '0','M06_TEMPL_EJECT_BTN','S06_TEMPL_EJECT_ANIM1','','',''),
('1653', 'S06_TEMPL_EJECT_ANIM1', '1568', 'IDV_CARDMACH1', '96', '230', '200', '300', '0','M06_EJECT_TEMPL_ANIM','','','',''),


('1654', 'S06_CYCLE_TEMPL_BTNUP', '1568', 'IDV_CARDMACH1', '196', '216', '212', '232', '0','M06_CYCLE_TEMPL_UP_BTN','','S06_CYCLE_TEMPL_ANIMUP','',''),
('1656', 'S06_CYCLE_TEMPL_ANIMUP', '1568', 'IDV_CARDMACH1', '100', '250', '200', '300', '0','M06_CYCLE_TEMPL_ANIMUP','','','',''),

('1655', 'S06_CYCLE_TEMPL_BTNDN', '1568', 'IDV_CARDMACH1', '196', '233', '212', '248', '0','M06_CYCLE_TEMPL_DN_BTN','S06_CYCLE_TEMPL_ANIMDN','','',''),
('1657', 'S06_CYCLE_TEMPL_ANIMDN', '1568', 'IDV_CARDMACH1', '100', '250', '200', '300', '0','M06_CYCLE_TEMPL_ANIMDN','','','','');



INSERT INTO "main"."transitions" ("name", "state", "new_state", "opcode", "param_1", "param_2", "code")
VALUES 
('M06_EJECT_CARD_BTN','0', '0', 'CLICK', '', '', 'PLAYWAVE(SOUND_CLICK);SIGNAL(WIP1, SIG_EJECT);'),

------------------------------

('M06_EJECT_CARD_ANIM','0', '5', 'WAIT', '', 'SIG_EJECT', ''),
('M06_EJECT_CARD_ANIM','5', '7', 'SHOW', '0', 'IDS_CARDANI', 'ANIMATE(0);PLAYWAVE(SOUND_CARDEJECT);'),
('M06_EJECT_CARD_ANIM','7', '20', 'MOV', 'WOBJECT', 'IDD_CARD01', ''),
-- ('M06_EJECT_CARD_ANIM','10', '11', 'REF_MACHINE', 'WIP1', '', ''),  -- REF THE ITEM PLACE COUNT or BFRAME OF THE ITEM VIEWER?
-- ('M06_EJECT_CARD_ANIM','11', '12', 'MOV', 'WOBJECT', 'R_BFRAME', ''),
-- ('M06_EJECT_CARD_ANIM', '12', '20', 'ADDI', 'WOBJECT', 'IDD_CARD01', ''), --< check w Guy??
('M06_EJECT_CARD_ANIM', '20', '0', 'GRAB', '0', '0', 'CLEAR(WOBJECT); CLEAR(WSPRITE); SHOW(0);'),


------------------------------
('M06_CYCLE_TEMPL_UP_BTN','0', '0', 'CLICK', '', '', 'PLAYWAVE(SOUND_CLICK); SIGNAL(WIP2,SIG_UP);'),
------------------------------
('M06_CYCLE_TEMPL_DN_BTN','0', '0', 'CLICK', '', '', 'PLAYWAVE(SOUND_CLICK); SIGNAL(WIP1,SIG_DN);'),

------------------------------
('M06_CYCLE_TEMPL_ANIMUP','0', '1', 'WAIT', 'SIG_UP', '', 'SHOW(0,IDS_MACHANI);ANIMATE();PLAYWAVE(SOUND_RATCHET);'),
('M06_CYCLE_TEMPL_ANIMUP','1', '0', 'Z_EPSILON', '', '', ''),


------------------------------
('M06_CYCLE_TEMPL_ANIMDN','0', '5', 'WAIT', 'SIG_DN', '', 'SHOW(0,IDS_MACHANI);ANIMATE();PLAYWAVE(SOUND_RATCHET);'),
('M06_CYCLE_TEMPL_ANIMDN','5', '0', 'Z_EPSILON', '', '', ''),


------------------------------

('M06_TEMPL_EJECT_BTN','0', '0', 'CLICK', '', '', 'PLAYWAVE(SOUND_CLICK);SIGNAL(WIP1, SIG_EJECT);'),

------------------------------
('M06_EJECT_TEMPL_ANIM','0', '5', 'WAIT', '', 'SIG_EJECT', ''),
('M06_EJECT_TEMPL_ANIM','5', '7', 'SHOW', '0', 'IDS_TEMPEJEC', 'ANIMATE(0);PLAYWAVE(SOUND_CARDEJECT);'),
('M06_EJECT_TEMPL_ANIM','7', '20', 'MOV', 'WOBJECT', 'IDD_TEMPLATE34', ''),
('M06_EJECT_TEMPL_ANIM', '20', '0', 'GRAB', '0', '0', 'CLEAR(WOBJECT); CLEAR(WSPRITE); SHOW(0);');

--0,V_REVERSE