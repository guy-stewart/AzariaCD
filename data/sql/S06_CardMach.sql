delete from games;
-- Plaque
-- Plaqchem
-- Plachnyst
-- plaqvile
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
delete from spr_names where name = 'IDS_CARD00';
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

delete from spr_names where name = 'IDS_HAMMER';
delete from spr_names where name = 'IDS_VIAL2';
delete from spr_names where name = 'IDS_CLOCK';
delete from spr_names where name = 'IDS_LAVA';
delete from spr_names where name = 'IDS_LAMP';
delete from spr_names where name = 'IDS_VASE';
delete from spr_names where name = 'IDS_STATUE';
delete from spr_names where name = 'IDS_PORTRAIT';
delete from spr_names where name = 'IDS_FAN';
delete from spr_names where name = 'IDS_GASMASK';
delete from spr_names where name = 'IDS_VIAL3';


delete from map where op like 'S06_MAN%';
INSERT INTO "main"."map" ("op", "key", "value")
VALUES 
('S06_MAN_OBJECTS', '0', 'IDD_BAIT6'),
('S06_MAN_OBJECTS', '1', 'IDD_BAIT7'),
('S06_MAN_OBJECTS', '2', 'IDD_VIAL1'),
('S06_MAN_OBJECTS', '3', 'IDD_BUCKE'),
('S06_MAN_OBJECTS', '4', 'IDD_POLE1'),
('S06_MAN_OBJECTS', '5', 'IDD_PICK'),
('S06_MAN_OBJECTS', '6', 'IDD_HAMMER'),
('S06_MAN_OBJECTS', '7', 'IDD_SHOVEL'),
('S06_MAN_OBJECTS', '8', 'IDD_CROWBAR'),
('S06_MAN_OBJECTS', '9', 'IDD_VIAL2'), 
('S06_MAN_OBJECTS', '10', 'IDD_BOMB2'),
('S06_MAN_OBJECTS', '11', 'IDD_CLOCK'),
('S06_MAN_OBJECTS', '12', 'IDD_LAVA'), 
('S06_MAN_OBJECTS', '13', 'IDD_LAMP'),
('S06_MAN_OBJECTS', '14', 'IDD_VASE'),
('S06_MAN_OBJECTS', '15', 'IDD_STATUE'),
('S06_MAN_OBJECTS', '16', 'IDD_PORTRAIT'),
('S06_MAN_OBJECTS', '17', 'IDD_FAN'),
('S06_MAN_OBJECTS', '18', 'IDD_HOLDING'),
('S06_MAN_OBJECTS', '19', 'IDD_VIAL3'),
('S06_MAN_OBJECTS', '20', 'IDD_BAIT8'),
('S06_MAN_OBJECTS', '21', 'IDD_BAIT9'),
('S06_MAN_OBJECTS', '22', 'IDD_STALKER'),
('S06_MAN_OBJECTS', '23', 'IDD_ALARM'),
('S06_MAN_OBJECTS', '24', 'IDD_GASMASK'); 

INSERT INTO "main"."sounds" ("name", "value", "id") 
VALUES 
('SOUND_CARDEJECT', 'cardeject', '31'),
('SOUND_RATCHET', 'ratchet', '32');


INSERT INTO "main"."spr_names" ("name", "value", "id") 
VALUES 
('IDS_CARDANI', 'CARDANI', '1400'),
('IDS_MACHANI', 'MACHANI', '1401'),
('IDS_TEMPEJEC', 'TEMPEJEC', '1402'),


('IDS_CARD00', 'CARD00', '1403'),
('IDS_CARD01', 'CARD01', '1404'),
('IDS_CARD02', 'CARD02', '1405'),
('IDS_CARD03', 'CARD03', '1406'),
('IDS_CARD04', 'CARD04', '1407'),
('IDS_CARD05', 'CARD05', '1408'),
('IDS_CARD06', 'CARD06', '1409'),
('IDS_CARD07', 'CARD07', '1410'),
('IDS_CARD08', 'CARD08', '1411'),
('IDS_CARD09', 'CARD09', '1412'),
('IDS_CARD10', 'CARD10', '1413'),
('IDS_CARD11', 'CARD11', '1414'),
('IDS_CARD12', 'CARD12', '1415'),
('IDS_CARD13', 'CARD13', '1416'),
('IDS_CARD14', 'CARD14', '1417'),
('IDS_CARD15', 'CARD15', '1418'),
('IDS_CARD16', 'CARD16', '1419'),
('IDS_CARD17', 'CARD17', '1420'),
('IDS_CARD18', 'CARD18', '1421'),
('IDS_CARD19', 'CARD19', '1422'),
('IDS_CARD20', 'CARD20', '1423'),
('IDS_CARD21', 'CARD21', '1424'),
('IDS_CARD22', 'CARD22', '1425'),
('IDS_CARD23', 'CARD23', '1426'),
('IDS_CARD24', 'CARD24', '1427'),
('IDS_CARD25', 'CARD25', '1428'),
('IDS_CARD26', 'CARD26', '1429'),
('IDS_CARD27', 'CARD27', '1430'),
('IDS_CARD28', 'CARD28', '1431'),
('IDS_CARD29', 'CARD29', '1432'),
('IDS_CARD30', 'CARD30', '1433'),

('IDS_HAMMER', 'HAMMER', '1434'),
('IDS_VIAL2', 'VIAL2', '1435'),
('IDS_CLOCK', 'CLOCK', '1436'),
('IDS_LAVA', 'LAVA', '1437'),
('IDS_LAMP', 'LAMP', '1438'),
('IDS_VASE', 'VASE', '1439'),
('IDS_STATUE', 'STATUE', '1440'),
('IDS_PORTRAIT', 'PORTRAIT', '1441'),
('IDS_FAN', 'FAN', '1442'),
('IDS_GASMASK', 'GASMASK', '1443'),
('IDS_VIAL3', 'VIAL3', '1444');



delete from objects where object = 'IDD_HAMMER';
delete from objects where object = 'IDD_VIAL2';
delete from objects where object = 'IDD_CLOCK';
delete from objects where object = 'IDD_LAVA';
delete from objects where object = 'IDD_LAMP';
delete from objects where object = 'IDD_VASE';
delete from objects where object = 'IDD_STATUE';
delete from objects where object = 'IDD_PORTRAIT';
delete from objects where object = 'IDD_FAN';
delete from objects where object = 'IDD_GASMASK';
delete from objects where object = 'IDD_VIAL3';

delete from objects where [object] like 'IDD_CARD%';

insert into objects ([object],[object_id],[class],[icon],[cursor],[actor]) values
('IDD_CARD00',0x400,'IDC_CARD','CARD00','CARD00','CARD00'),
('IDD_CARD01',0x401,'IDC_CARD','CARD01','CARD01','CARD01'),
('IDD_CARD02',0x402,'IDC_CARD','CARD02','CARD02','CARD02'),
('IDD_CARD03',0x403,'IDC_CARD','CARD03','CARD03','CARD03'),
('IDD_CARD04',0x404,'IDC_CARD','CARD04','CARD04','CARD04'),
('IDD_CARD05',0x405,'IDC_CARD','CARD05','CARD05','CARD05'),
('IDD_CARD06',0x406,'IDC_CARD','CARD06','CARD06','CARD06'),
('IDD_CARD07',0x407,'IDC_CARD','CARD07','CARD07','CARD07'),
('IDD_CARD08',0x408,'IDC_CARD','CARD08','CARD08','CARD08'),
('IDD_CARD09',0x409,'IDC_CARD','CARD09','CARD09','CARD09'),
('IDD_CARD10',0x410,'IDC_CARD','CARD10','CARD10','CARD10'),
('IDD_CARD11',0x411,'IDC_CARD','CARD11','CARD11','CARD11'),
('IDD_CARD12',0x412,'IDC_CARD','CARD12','CARD12','CARD12'),
('IDD_CARD13',0x413,'IDC_CARD','CARD13','CARD13','CARD13'),
('IDD_CARD14',0x414,'IDC_CARD','CARD14','CARD14','CARD14'),
('IDD_CARD15',0x415,'IDC_CARD','CARD15','CARD15','CARD15'),
('IDD_CARD16',0x416,'IDC_CARD','CARD16','CARD16','CARD16'),
('IDD_CARD17',0x417,'IDC_CARD','CARD17','CARD17','CARD17'),
('IDD_CARD18',0x418,'IDC_CARD','CARD18','CARD18','CARD18'),
('IDD_CARD19',0x419,'IDC_CARD','CARD19','CARD19','CARD19'),
('IDD_CARD20',0x420,'IDC_CARD','CARD20','CARD20','CARD20'),
('IDD_CARD21',0x421,'IDC_CARD','CARD21','CARD21','CARD21'),
('IDD_CARD22',0x422,'IDC_CARD','CARD22','CARD22','CARD22'),
('IDD_CARD23',0x423,'IDC_CARD','CARD23','CARD23','CARD23'),
('IDD_CARD24',0x424,'IDC_CARD','CARD24','CARD24','CARD24'),
('IDD_CARD25',0x425,'IDC_CARD','CARD25','CARD25','CARD25'),
('IDD_CARD26',0x426,'IDC_CARD','CARD26','CARD26','CARD26'),
('IDD_CARD27',0x427,'IDC_CARD','CARD27','CARD27','CARD27'),
('IDD_CARD28',0x428,'IDC_CARD','CARD28','CARD28','CARD28'),
('IDD_CARD29',0x429,'IDC_CARD','CARD29','CARD29','CARD29'),
('IDD_CARD30',0x430,'IDC_CARD','CARD30','CARD30','CARD30'),

('IDD_HAMMER',0x431,'IDC_NULL','HAMMER','HAMMER','HAMMER'),
('IDD_VIAL2',0x432,'IDC_NULL','VIAL2','VIAL2','VIAL2'),
('IDD_CLOCK',0x433,'IDC_NULL','CLOCK','CLOCK','CLOCK'),
('IDD_LAVA',0x434,'IDC_NULL','LAVA','LAVA','LAVA'),
('IDD_LAMP',0x435,'IDC_NULL','LAMP','LAMP','LAMP'),
('IDD_VASE',0x436,'IDC_NULL','VASE','VASE','VASE'),
('IDD_STATUE',0x437,'IDC_STATUE','STATUE','STATUE','STATUE'),
('IDD_PORTRAIT',0x438,'IDC_NULL','PORTRAIT','PORTRAIT','PORTRAIT'),
('IDD_FAN',0x439,'IDC_NULL','FAN','FAN','FAN'),
('IDD_GASMASK',0x440,'IDC_NULL','GASMASK','GASMASK','GASMASK'),
('IDD_VIAL3',0x441,'IDC_NULL','VIAL3','VIAL3','VIAL3');




------------------ Machines and DFAs below

delete from machines where name = 'S06_CARD_EJECT_BTN1';
delete from machines where name = 'S06_CARD_EJECT_ANIM1';
delete from machines where name = 'S06_TEMPL_EJECT_BTN1';
delete from machines where name = 'S06_TEMPL_EJECT_ANIM1';

delete from machines where [name] like 'S06_CYCLE%';

delete from transitions where [name] like 'M06_EJECT%';
delete from transitions where [name] like 'M06_TEMPL%';
delete from transitions where [name] like 'M06_CYCLE%';


INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") 
VALUES 
--THERE ARE 6 CARD MACHINES (IDV_CARDMACH1-6 1568-1573)
('1650', 'S06_CARD_EJECT_BTN1', '1568', 'IDV_CARDMACH1', '305', '206', '340', '223', '0','M06_EJECT_CARD_BTN','S06_CARD_EJECT_ANIM1','','',''),
('1651', 'S06_CARD_EJECT_ANIM1', '1568', 'IDV_CARDMACH1', '293', '225', '340', '300', '0','M06_EJECT_CARD_ANIM','','','',''),
('1652', 'S06_TEMPL_EJECT_BTN1', '1568', 'IDV_CARDMACH1', '131', '207', '165', '223', '0','M06_TEMPL_EJECT_BTN','S06_TEMPL_EJECT_ANIM1','','',''),
('1653', 'S06_TEMPL_EJECT_ANIM1', '1568', 'IDV_CARDMACH1', '96', '230', '200', '300', '0','M06_EJECT_TEMPL_ANIM','','','',''),


('1654', 'S06_CYCLE_TEMPL_BTNUP1', '1568', 'IDV_CARDMACH1', '196', '216', '212', '232', '0','M06_CYCLE_TEMPL_UP_BTN','S06_CYCLE_TEMPL_ANIM1','','',''),
('1655', 'S06_CYCLE_TEMPL_BTNDN1', '1568', 'IDV_CARDMACH1', '196', '233', '212', '248', '0','M06_CYCLE_TEMPL_DN_BTN','S06_CYCLE_TEMPL_ANIM1','','',''),

('1658', 'S06_CYCLE_TEMPL_ANIM1', '1568', 'IDV_CARDMACH1', '100', '250', '200', '300', '0','M06_CYCLE_TEMPL_ANIM','S06_CYCLE_VIEWER1','','',''),

('1659', 'S06_CYCLE_VIEWER1', '1568', 'IDV_CARDMACH1', '35', '75', '100', '125', '0','M06_CYCLE_VIEW','','','','');



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
('M06_CYCLE_TEMPL_UP_BTN','0', '0', 'CLICK', '', '', 'PLAYWAVE(SOUND_CLICK); SIGNAL(WIP1,SIG_INC1);'),
------------------------------
('M06_CYCLE_TEMPL_DN_BTN','0', '0', 'CLICK', '', '', 'PLAYWAVE(SOUND_CLICK); SIGNAL(WIP1,SIG_DEC1);'),

------------------------------
('M06_CYCLE_TEMPL_ANIM','0', '1', 'WAIT', '', 'SIG_INC1', 'SHOW(0,IDS_MACHANI);ANIMATE();PLAYWAVE(SOUND_RATCHET);SIGNAL(WIP1,SIG_INC1);'),
('M06_CYCLE_TEMPL_ANIM','0', '1', 'WAIT', '', 'SIG_DEC1', 'SHOW(0,IDS_MACHANI);ANIMATE(0,V_REVERSE);PLAYWAVE(SOUND_RATCHET); SIGNAL(WIP1,SIG_DEC1);'),
('M06_CYCLE_TEMPL_ANIM','1', '0', 'Z_EPSILON', '', '', ''),



------------------------------

('M06_CYCLE_VIEW','0', '10', 'WAIT', '', 'SIG_INC1', ' ADDI(WPARM,1);'),
('M06_CYCLE_VIEW','0', '20', 'WAIT', '', 'SIG_DEC1', ' SUBI(WPARM,1);'),

('M06_CYCLE_VIEW','10', '0', 'GTEi', 'WPARM', '5', 'ASSIGN(WPARM,5);'), --missing some sprites so just go to 5 for now
('M06_CYCLE_VIEW','10', '11', 'MAPi', 'WPARM', 'S06_MAN_OBJECTS', 'MOV(WOBJECT,WPARM);SHOW(WOBJECT);'),
('M06_CYCLE_VIEW','11', '0', 'Z_EPSILON', '', '', ''),

('M06_CYCLE_VIEW','20', '0', 'LTEi', 'WPARM', '0', 'ASSIGN(WPARM,0);'),
('M06_CYCLE_VIEW','20', '21', 'MAPi', 'WPARM', 'S06_MAN_OBJECTS', 'MOV(WOBJECT,WPARM);SHOW(WOBJECT);'),
('M06_CYCLE_VIEW','21', '0', 'Z_EPSILON', '', '', ''),

------------------------------

('M06_TEMPL_EJECT_BTN','0', '0', 'CLICK', '', '', 'PLAYWAVE(SOUND_CLICK);SIGNAL(WIP1, SIG_EJECT);'),

------------------------------
('M06_EJECT_TEMPL_ANIM','0', '5', 'WAIT', '', 'SIG_EJECT', ''),
('M06_EJECT_TEMPL_ANIM','5', '7', 'SHOW', '0', 'IDS_TEMPEJEC', 'ANIMATE(0);PLAYWAVE(SOUND_CARDEJECT);'),
('M06_EJECT_TEMPL_ANIM','7', '20', 'MOV', 'WOBJECT', 'IDD_TEMPLATE34', ''),
('M06_EJECT_TEMPL_ANIM', '20', '0', 'GRAB', '0', '0', 'CLEAR(WOBJECT); CLEAR(WSPRITE); SHOW(0);');

