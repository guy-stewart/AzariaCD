delete from games;


delete from spr_names where [name] like 'IDS_TOPSPIN%';
delete from spr_names where [name] like 'IDS_BOTSPIN%';
delete from spr_names where [name] like 'IDS_SPITTOON';
delete from sounds where [name] like 'SOUND_SPIN%';

insert into spr_names values ('IDS_TOPSPIN','tspin','40600');
insert into spr_names values ('IDS_BOTSPIN','bspin','40601');
insert into spr_names values ('IDS_TOPSPINFST','tspinfast','40602');
insert into spr_names values ('IDS_SPITTOON','spittoon','40610');
insert into sounds values ('SOUND_SPIN', 'spin',0);

delete from objects where object = 'IDD_PLAYER_W';
delete from objects where object = 'IDD_PLAYER_B';
insert into objects values
('IDD_PLAYER_W',40200,'IDC_NULL','player_w','player_w','player_w'),
('IDD_PLAYER_B',40201,'IDC_NULL','player_b','player_b','player_b');

delete from isa where [class] like 'ISA_PLAYTOKEN%';
INSERT INTO "main"."isa" ("class", "member")
VALUES 
('ISA_PLAYTOKEN', 'IDD_PLAYER_W'),
('ISA_PLAYTOKEN', 'IDD_PLAYER_B');

delete from "main"."constants" where name = 'VIOLET_SQUARE';
delete from "main"."constants" where name = 'BROWN_SQUARE';
delete from "main"."constants" where name = 'GREEN_SQUARE';
INSERT INTO "main"."constants" ("name", "value") 
VALUES 
('VIOLET_SQUARE', 1),
('BROWN_SQUARE', 2),
('GREEN_SQUARE', 3);

delete from "main"."constants" where name = 'bomb1';
delete from "main"."constants" where name = 'frozen';
delete from "main"."constants" where name = 'banish';
delete from "main"."constants" where name = 'gopa';
delete from "main"."constants" where name = 'bomb3';
delete from "main"."constants" where name = 'back5';
delete from "main"."constants" where name = 'bomb2';
delete from "main"."constants" where name = 'wealth';

INSERT INTO "main"."constants" ("name", "value") 
VALUES 
('bomb1', 1),
('frozen', 2),
('banish', 3),
('gopa', 4),
('bomb3', 5),
('back5', 6),
('bomb2', 7),
('wealth', 8);












INSERT INTO "main"."constants" ("name", "value") 
VALUES 
('VIOLET_SQUARE', 1),
('BROWN_SQUARE', 2),
('GREEN_SQUARE', 3);

delete from map where op like 'S19_%';
INSERT INTO "main"."map" ("op", "key", "value")
VALUES 
('S19_BOTSPIN_MAP',1,2), 
('S19_BOTSPIN_MAP',2,5), 
('S19_BOTSPIN_MAP',3,8), 
('S19_BOTSPIN_MAP',4,11), 
('S19_BOTSPIN_MAP',5,14), 
('S19_BOTSPIN_MAP',6,17),
('S19_BOTSPIN_MAP',7,20),
('S19_BOTSPIN_MAP',8,0),

('S19_TOPSPIN_MAP',1,1), 
('S19_TOPSPIN_MAP',2,4), 
('S19_TOPSPIN_MAP',3,7),
('S19_TOPSPIN_MAP',4,2),
('S19_TOPSPIN_MAP',5,6),
('S19_TOPSPIN_MAP',6,7),
('S19_TOPSPIN_MAP',7,3),
('S19_TOPSPIN_MAP',8,4),

--KEY is the frame, value is the spell or color landed
-- frozen could be the loose a turn spell
-- 
('S19_EVENT_MAP',2, 'bomb1'),
('S19_EVENT_MAP',5, 'frozen'), 
('S19_EVENT_MAP',8, 'banish'),
('S19_EVENT_MAP',11,'gopa'),
('S19_EVENT_MAP',14,'bomb3'),
('S19_EVENT_MAP',17,'back5'),
('S19_EVENT_MAP',20,'bomb2'),
('S19_EVENT_MAP',0, 'wealth'),

('S19_COLOR_MAP',1,'GREEN_SQUARE'),
('S19_COLOR_MAP',4,'VIOLET_SQUARE'), 
('S19_COLOR_MAP',7,'BROWN_SQUARE'),
('S19_COLOR_MAP',2,'GREEN_SQUARE'),
('S19_COLOR_MAP',6,'BROWN_SQUARE'),
('S19_COLOR_MAP',7,'BROWN_SQUARE'),
('S19_COLOR_MAP',3,'VIOLET_SQUARE'),
('S19_COLOR_MAP',4,'VIOLET_SQUARE'),

('S19_SQUARE_MAP',1,'BLANK'),
('S19_SQUARE_MAP',2,'BLANK'),
('S19_SQUARE_MAP',3,'BLANK'),
('S19_SQUARE_MAP',4,'BLANK'),
('S19_SQUARE_MAP',5,'BLANK'),
('S19_SQUARE_MAP',6,'BLANK'),
('S19_SQUARE_MAP',7,'BLANK'),
('S19_SQUARE_MAP',8,'BLANK'),
('S19_SQUARE_MAP',9,'BLANK'),
('S19_SQUARE_MAP',10,'VIOLET_SQUARE'),
('S19_SQUARE_MAP',11,'BLANK'),
('S19_SQUARE_MAP',12,'BLANK'),
('S19_SQUARE_MAP',13,'VIOLET_SQUARE'),
('S19_SQUARE_MAP',14,'BLANK'),
('S19_SQUARE_MAP',15,'BLANK'),
('S19_SQUARE_MAP',16,'VIOLET_SQUARE'),
('S19_SQUARE_MAP',17,'BLANK'),
('S19_SQUARE_MAP',18,'BROWN_SQUARE'),
('S19_SQUARE_MAP',19,'BLANK'),
('S19_SQUARE_MAP',20,'VIOLET_SQUARE'),
('S19_SQUARE_MAP',21,'BROWN_SQUARE'),
('S19_SQUARE_MAP',22,'BLANK'),
('S19_SQUARE_MAP',23,'VIOLET_SQUARE'),
('S19_SQUARE_MAP',24,'VIOLET_SQUARE'),
('S19_SQUARE_MAP',25,'BROWN_SQUARE'),
('S19_SQUARE_MAP',26,'BLANK'),
('S19_SQUARE_MAP',27,'BLANK'),
('S19_SQUARE_MAP',28,'BLANK'),
('S19_SQUARE_MAP',29,'BLANK'),
('S19_SQUARE_MAP',30,'BLANK'),
('S19_SQUARE_MAP',31,'VIOLET_SQUARE'),
('S19_SQUARE_MAP',32,'BLANK'),
('S19_SQUARE_MAP',33,'BLANK'),
('S19_SQUARE_MAP',34,'BROWN_SQUARE'),
('S19_SQUARE_MAP',35,'BLANK'),
('S19_SQUARE_MAP',36,'VIOLET_SQUARE'),
('S19_SQUARE_MAP',37,'BLANK'),
('S19_SQUARE_MAP',38,'BLANK'),
('S19_SQUARE_MAP',39,'BROWN_SQUARE'),
('S19_SQUARE_MAP',40,'BLANK'),
('S19_SQUARE_MAP',41,'VIOLET_SQUARE'),
('S19_SQUARE_MAP',42,'BLANK'),
('S19_SQUARE_MAP',43,'BROWN_SQUARE'),
('S19_SQUARE_MAP',44,'VIOLET_SQUARE'),
('S19_SQUARE_MAP',45,'BLANK'),
('S19_SQUARE_MAP',46,'GREEN_SQUARE'),
('S19_SQUARE_MAP',47,'BLANK'),
('S19_SQUARE_MAP',48,'BROWN_SQUARE'),
('S19_SQUARE_MAP',49,'GREEN_SQUARE'),
('S19_SQUARE_MAP',50,'VIOLET_SQUARE'),
('S19_SQUARE_MAP',51,'BROWN_SQUARE'),
('S19_SQUARE_MAP',52,'BLANK'),
('S19_SQUARE_MAP',53,'GREEN_SQUARE'),
('S19_SQUARE_MAP',54,'VIOLET_SQUARE'),
('S19_SQUARE_MAP',55,'BROWN_SQUARE'),
('S19_SQUARE_MAP',56,'BLANK'),
('S19_SQUARE_MAP',57,'VIOLET_SQUARE'),
('S19_SQUARE_MAP',58,'GREEN_SQUARE'),
('S19_SQUARE_MAP',59,'BLANK'),
('S19_SQUARE_MAP',60,'VIOLET_SQUARE'),
('S19_SQUARE_MAP',61,'GREEN_SQUARE'),
('S19_SQUARE_MAP',62,'BROWN_SQUARE');


delete from views where view_name = 'IDV_RACEPAN';
INSERT INTO "main"."views" ("view_id", "view_name", "Z", "backgroundAudio", "locator_view", "behavior_id", "portal_filename", "surface_filename") 
VALUES 
('40101', 'IDV_RACEPAN', '1', '0', '1', '1', 'wdepanel.vct', 'RACEPAN');

delete from machines where [name] like 'S19_%';
delete from machines where [name] like 'spinner%';
delete from machines where [name] like 'sq_%';

INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name","wip3_name",  "wip4_name") 
VALUES
('40200', 'S19_DIEDROP', '40101', 'IDV_RACEPAN',497,144,604,260, '0','M16_DIEROLL','IDS_DICE','','', ''),
('40350', 'S19_SPINNER_BUTTON', '40101', 'IDV_RACEPAN',557,41,589,72,'0','M19_BUTTON','S19_SPINNER_BOTTOM_PICK','S19_SPINNER_BOTTOM_SPIN','S19_SPINNER_TOP_PICK','S19_SPINNER_TOP_SPIN'),
('40351', 'S19_SPINNER_TOP_SPIN', '40101', 'IDV_RACEPAN',435,0,552,30,'0','M19_SPIN','IDS_TOPSPIN','','',''),
('40352', 'S19_SPINNER_TOP_PICK', '40101', 'IDV_RACEPAN',435,0,552,30,'0','M19_PICK','IDS_TOPSPIN',3,'S19_TOPSPIN_MAP',''),
('40353', 'S19_SPINNER_BOTTOM_SPIN', '40101', 'IDV_RACEPAN',435,0,552,30,'0','M19_SPIN','IDS_BOTSPIN','','',''),
('40354', 'S19_SPINNER_BOTTOM_PICK', '40101', 'IDV_RACEPAN',435,0,552,30,'0','M19_PICK','IDS_BOTSPIN',8,'S19_BOTSPIN_MAP',''),

('40355', 'S19_SPELLCASTER', '40101', 'IDV_RACEPAN',8,150,20,200,'0','M19_SPELLCASTER','S19_SPINNER_TOP_PICK','S19_SPINNER_BOTTOM_PICK','S19_COLOR_MAP','S19_EVENT_MAP'),

('40356', 'S19_PLAYERWATCHER', '40101', 'IDV_RACEPAN',3,33,45,60,'0','M19_PLAYERWATCHER','','','',''),

('40357', 'S19_PAYRESET', '40101', 'IDV_RACEPAN',9,217,69,287,'0','M19_PAYBUCKET','IDS_SPITTOON',2,'', ''),


--did not need to put the colors here - squares don't need to pass their color anywhere - map is used
-- this is better if we want to vary the squares
('40330', 'sq_0_b', '40101', 'IDV_RACEPAN',264,237,281,256,'0','M19_HOLDER','','IDD_PLAYER_B','',''),
('40331', 'sq_0_t', '40101', 'IDV_RACEPAN',264,221,281,236,'0','M19_HOLDER','','IDD_PLAYER_W','',''),
('40331', 'S19_DICEHOLD', '40101', 'IDV_RACEPAN',293,232,346,278,'0','M19_DICEHOLD','','','',''),

('40201', 'sq_1_t', '40101', 'IDV_RACEPAN',240,217,253,235,'0','M19_SQUARE','','SIG_1T','',''),
('40202', 'sq_1_b', '40101', 'IDV_RACEPAN',240,237,253,256,'0','M19_SQUARE','','SIG_1B','',''),
('40203', 'sq_2_t', '40101', 'IDV_RACEPAN',212,217,226,235,'0','M19_SQUARE','','SIG_2T','',''),
('40204', 'sq_2_b', '40101', 'IDV_RACEPAN',212,237,226,256,'0','M19_SQUARE','','SIG_2B','',''),
('40205', 'sq_3_t', '40101', 'IDV_RACEPAN',185,217,198,235,'0','M19_SQUARE','','SIG_3T','',''),
('40206', 'sq_3_b', '40101', 'IDV_RACEPAN',185,237,198,256,'0','M19_SQUARE','','SIG_3B','',''),
('40207', 'sq_4_t', '40101', 'IDV_RACEPAN',157,217,170,235,'0','M19_SQUARE','','SIG_4T','',''),
('40208', 'sq_4_b', '40101', 'IDV_RACEPAN',157,237,170,256,'0','M19_SQUARE','','SIG_4B','',''),
('40209', 'sq_5_t', '40101', 'IDV_RACEPAN',130,217,143,235,'0','M19_SQUARE','','SIG_5T','',''),
('40210', 'sq_5_b', '40101', 'IDV_RACEPAN',130,237,143,256,'0','M19_SQUARE','','SIG_5B','',''),
('40211', 'sq_6_t', '40101', 'IDV_RACEPAN',89,220,107,233,'0','M19_SQUARE','','SIG_6T','',''),
('40212', 'sq_6_b', '40101', 'IDV_RACEPAN',98,235,116,248,'0','M19_SQUARE','','SIG_6B','',''),
('40213', 'sq_7_t', '40101', 'IDV_RACEPAN',102,186,120,199,'0','M19_SQUARE','','SIG_7T','',''),
('40214', 'sq_7_b', '40101', 'IDV_RACEPAN',89,201,107,214,'0','M19_SQUARE','','SIG_7B','',''),
('40215', 'sq_8_t', '40101', 'IDV_RACEPAN',127,176,140,194,'0','M19_SQUARE','','SIG_8T','',''),
('40216', 'sq_8_b', '40101', 'IDV_RACEPAN',127,196,140,214,'0','M19_SQUARE','','SIG_8B','',''),
('40217', 'sq_9_t', '40101', 'IDV_RACEPAN',155,176,168,194,'0','M19_SQUARE','','SIG_9T','',''),
('40218', 'sq_9_b', '40101', 'IDV_RACEPAN',155,196,168,214,'0','M19_SQUARE','','SIG_9B','',''),
('40219', 'sq_10_t', '40101', 'IDV_RACEPAN',181,176,194,194,'0','M19_SQUARE','VIOLET_SQUARE','SIG_10T','',''),
('40220', 'sq_10_b', '40101', 'IDV_RACEPAN',181,196,194,214,'0','M19_SQUARE','VIOLET_SQUARE','SIG_10B','',''),
('40221', 'sq_11_t', '40101', 'IDV_RACEPAN',207,176,220,194,'0','M19_SQUARE','','SIG_11T','',''),
('40222', 'sq_11_b', '40101', 'IDV_RACEPAN',207,196,220,214,'0','M19_SQUARE','','SIG_11B','',''),
('40223', 'sq_12_t', '40101', 'IDV_RACEPAN',236,176,249,194,'0','M19_SQUARE','','SIG_12T','',''),
('40224', 'sq_12_b', '40101', 'IDV_RACEPAN',236,196,249,214,'0','M19_SQUARE','','SIG_12B','',''),
('40225', 'sq_13_t', '40101', 'IDV_RACEPAN',263,176,276,194,'0','M19_SQUARE','VIOLET_SQUARE','SIG_13T','',''),
('40226', 'sq_13_b', '40101', 'IDV_RACEPAN',263,196,276,214,'0','M19_SQUARE','VIOLET_SQUARE','SIG_13B','',''),
('40227', 'sq_14_t', '40101', 'IDV_RACEPAN',290,176,303,194,'0','M19_SQUARE','','SIG_14T','',''),
('40228', 'sq_14_b', '40101', 'IDV_RACEPAN',290,196,303,214,'0','M19_SQUARE','','SIG_14B','',''),
('40229', 'sq_15_t', '40101', 'IDV_RACEPAN',319,179,337,192,'0','M19_SQUARE','','SIG_15T','',''),
('40230', 'sq_15_b', '40101', 'IDV_RACEPAN',319,196,337,208,'0','M19_SQUARE','','SIG_15B','',''),
('40231', 'sq_16_t','40101', 'IDV_RACEPAN',316,155,332,172,'0','M19_SQUARE','VIOLET_SQUARE','SIG_16T','',''),
('40232', 'sq_16_b','40101', 'IDV_RACEPAN',338,155,354,172,'0','M19_SQUARE','VIOLET_SQUARE','SIG_16B','',''),
('40233', 'sq_17_t','40101', 'IDV_RACEPAN',317,119,335,132,'0','M19_SQUARE','','SIG_17T','',''),
('40234', 'sq_17_b','40101', 'IDV_RACEPAN',317,135,335,148,'0','M19_SQUARE','','SIG_17B','',''),
('40235', 'sq_18_t','40101', 'IDV_RACEPAN',297,116,312,131,'0','M19_SQUARE','BROWN_SQUARE','SIG_18T','',''),
('40236', 'sq_18_b','40101', 'IDV_RACEPAN',299,133,312,151,'0','M19_SQUARE','BROWN_SQUARE','SIG_18B','',''),
('40239', 'sq_19_t','40101', 'IDV_RACEPAN',270,115,286,130,'0','M19_SQUARE','','SIG_19T','',''),
('40240', 'sq_19_b','40101', 'IDV_RACEPAN',273,133,286,151,'0','M19_SQUARE','','SIG_19B','',''),
('40241', 'sq_20_t','40101', 'IDV_RACEPAN',248,113,260,132,'0','M19_SQUARE','VIOLET_SQUARE','SIG_20T','',''),
('40242', 'sq_20_b','40101', 'IDV_RACEPAN',247,133,260,152,'0','M19_SQUARE','VIOLET_SQUARE','SIG_20B','',''),
('40243', 'sq_21_t','40101', 'IDV_RACEPAN',219,113,232,132,'0','M19_SQUARE','BROWN_SQUARE','SIG_21T','',''),
('40244', 'sq_21_b','40101', 'IDV_RACEPAN',219,133,232,151,'0','M19_SQUARE','BROWN_SQUARE','SIG_21B','',''),
('40245', 'sq_22_t','40101', 'IDV_RACEPAN',191,113,206,132,'0','M19_SQUARE','','SIG_22T','',''),
('40246', 'sq_22_b','40101', 'IDV_RACEPAN',191,133,206,151,'0','M19_SQUARE','','SIG_22B','',''),
('40247', 'sq_23_t','40101', 'IDV_RACEPAN',165,113,178,131,'0','M19_SQUARE','VIOLET_SQUARE','SIG_23T','',''),
('40248', 'sq_23_b','40101', 'IDV_RACEPAN',165,133,178,151,'0','M19_SQUARE','VIOLET_SQUARE','SIG_23B','',''),
('40249', 'sq_24_t','40101', 'IDV_RACEPAN',136,112,151,132,'0','M19_SQUARE','VIOLET_SQUARE','SIG_24T','',''),
('40250', 'sq_24_b','40101', 'IDV_RACEPAN',136,133,150,151,'0','M19_SQUARE','VIOLET_SQUARE','SIG_24B','',''),
('40251', 'sq_25_t','40101', 'IDV_RACEPAN',111,112,123,132,'0','M19_SQUARE','BROWN_SQUARE','SIG_25T','',''),
('40252', 'sq_25_b','40101', 'IDV_RACEPAN',111,133,123,151,'0','M19_SQUARE','BROWN_SQUARE','SIG_25B','',''),
('40253', 'sq_26_t','40101', 'IDV_RACEPAN',84,113,97,132,'0','M19_SQUARE','','SIG_26T','',''),
('40254', 'sq_26_b','40101', 'IDV_RACEPAN',84,133,97,151,'0','M19_SQUARE','','SIG_26B','',''),
('40255', 'sq_27_t','40101', 'IDV_RACEPAN',57,113,70,132,'0','M19_SQUARE','','SIG_27T','',''),
('40256', 'sq_27_b','40101', 'IDV_RACEPAN',57,133,70,151,'0','M19_SQUARE','','SIG_27B','',''),
('40257', 'sq_28_t','40101', 'IDV_RACEPAN',19,116,37,129,'0','M19_SQUARE','','SIG_28T','',''),
('40258', 'sq_28_b','40101', 'IDV_RACEPAN',28,131,46,144,'0','M19_SQUARE','','SIG_28B','',''),
('40259', 'sq_29_t','40101', 'IDV_RACEPAN',32,82,50,95, '0','M19_SQUARE','','SIG_29T','', ''),
('40260', 'sq_29_b','40101', 'IDV_RACEPAN',19,97,37,110, '0','M19_SQUARE','','SIG_29B','', ''),
('40261', 'sq_30_t','40101', 'IDV_RACEPAN',56,74,69,92, '0','M19_SQUARE','','SIG_30T','',''),
('40262', 'sq_30_b','40101', 'IDV_RACEPAN',56,93,69,112, '0','M19_SQUARE','','SIG_30B','',''),
('40263', 'sq_31_t','40101', 'IDV_RACEPAN',81,74,94,92, '0','M19_SQUARE','VIOLET_SQUARE','SIG_31T','',''),
('40264', 'sq_31_b','40101', 'IDV_RACEPAN',81,94,94,112, '0','M19_SQUARE','VIOLET_SQUARE','SIG_31B','',''),
('40265', 'sq_32_t','40101', 'IDV_RACEPAN',110,74,123,92, '0','M19_SQUARE','','SIG_32T','',''),
('40266', 'sq_32_b','40101', 'IDV_RACEPAN',110,94,123,112, '0','M19_SQUARE','','SIG_32B','',''),
('40267', 'sq_33_t','40101', 'IDV_RACEPAN',135,74,148,92, '0','M19_SQUARE','','SIG_33T','',''),
('40268', 'sq_33_b','40101', 'IDV_RACEPAN',135,94,148,112, '0','M19_SQUARE','','SIG_33B','',''),
('40269', 'sq_34_t','40101', 'IDV_RACEPAN',163,74,176,92, '0','M19_SQUARE','BROWN_SQUARE','SIG_34T','',''),
('40270', 'sq_34_b','40101', 'IDV_RACEPAN',163,94,176,112, '0','M19_SQUARE','BROWN_SQUARE','SIG_34B','',''),
('40271', 'sq_35_t','40101', 'IDV_RACEPAN',187,74,200,92, '0','M19_SQUARE','','SIG_35T','', ''),
('40272', 'sq_35_b','40101', 'IDV_RACEPAN',187,94,200,112, '0','M19_SQUARE','','SIG_35B','', ''),
('40273', 'sq_36_t','40101', 'IDV_RACEPAN',214,74,227,92, '0','M19_SQUARE','VIOLET_SQUARE','SIG_36T','',''),
('40274', 'sq_36_b','40101', 'IDV_RACEPAN',214,94,227,112, '0','M19_SQUARE','VIOLET_SQUARE','SIG_36B','',''),
('40275', 'sq_37_t','40101', 'IDV_RACEPAN',240,74,253,92, '0','M19_SQUARE','','SIG_37T','', ''),
('40276', 'sq_37_b','40101', 'IDV_RACEPAN',240,94,253,112, '0','M19_SQUARE','','SIG_37B','', ''),
('40277', 'sq_38_t','40101', 'IDV_RACEPAN',265,74,278,92, '0','M19_SQUARE','','SIG_38T','',''),
('40278', 'sq_38_b','40101', 'IDV_RACEPAN',265,94,278,112, '0','M19_SQUARE','','SIG_38B','',''),
('40279', 'sq_39_t','40101', 'IDV_RACEPAN',291,74,305,92,'0','M19_SQUARE','BROWN_SQUARE', 'SIG_39T','',''),
('40280', 'sq_39_b','40101', 'IDV_RACEPAN',291,94,305,112,'0','M19_SQUARE','BROWN_SQUARE','SIG_39B','',''),
('40281', 'sq_40_t','40101', 'IDV_RACEPAN',320,74,333,91,'0','M19_SQUARE','','SIG_40T','',''),
('40282', 'sq_40_b','40101', 'IDV_RACEPAN',320,94,333,111,'0','M19_SQUARE','','SIG_40B','',''),
('40283', 'sq_41_t','40101', 'IDV_RACEPAN',345,75,358,91,'0','M19_SQUARE','VIOLET_SQUARE', 'SIG_41T','',''),
('40284', 'sq_41_b','40101', 'IDV_RACEPAN',344,95,359,112,'0','M19_SQUARE','VIOLET_SQUARE','SIG_41B','',''),
('40285', 'sq_42_t','40101', 'IDV_RACEPAN',371,81,390,95,'0','M19_SQUARE','','SIG_42T','',''),
('40286', 'sq_42_b','40101', 'IDV_RACEPAN',371,97,390,110,'0','M19_SQUARE','','SIG_42B','',''),
('40287', 'sq_43_t','40101', 'IDV_RACEPAN',370,115,388,134,'0','M19_SQUARE','BROWN_SQUARE','SIG_43T','',''),
('40288', 'sq_43_b','40101', 'IDV_RACEPAN',392,115,407,134,'0','M19_SQUARE','BROWN_SQUARE','SIG_43B','',''),
('40289', 'sq_44_t','40101', 'IDV_RACEPAN',370,142,388,159,'0','M19_SQUARE','VIOLET_SQUARE','SIG_44T','',''),
('40290', 'sq_44_b','40101', 'IDV_RACEPAN',390,142,408,159,'0','M19_SQUARE','VIOLET_SQUARE','SIG_44B','',''),
('40291', 'sq_45_t','40101', 'IDV_RACEPAN',386,163,404,176,'0','M19_SQUARE','','SIG_45T','',''),
('40292', 'sq_45_b','40101', 'IDV_RACEPAN',386,178,404,192,'0','M19_SQUARE','','SIG_45B','',''),
('40293', 'sq_46_t','40101', 'IDV_RACEPAN',414,163,428,181,'0','M19_SQUARE','GREEN_SQUARE','SIG_46T','',''),
('40294', 'sq_46_b','40101', 'IDV_RACEPAN',414,183,428,202,'0','M19_SQUARE','GREEN_SQUARE','SIG_46B','',''),
('40295', 'sq_47_t','40101', 'IDV_RACEPAN',444,164,462,177,'0','M19_SQUARE','','SIG_47T','',''),
('40296', 'sq_47_b','40101', 'IDV_RACEPAN',444,181,462,193,'0','M19_SQUARE','','SIG_47B','',''),
('40297', 'sq_48_t','40101', 'IDV_RACEPAN',440,143,458,160,'0','M19_SQUARE','BROWN_SQUARE','SIG_48T','',''),
('40298', 'sq_48_b','40101', 'IDV_RACEPAN',460,143,478,160,'0','M19_SQUARE','BROWN_SQUARE','SIG_48B','',''),
('40299', 'sq_49_t','40101', 'IDV_RACEPAN',440,118,458,135,'0','M19_SQUARE','GREEN_SQUARE','SIG_49T','',''),
('40300', 'sq_49_b','40101', 'IDV_RACEPAN',460,118,478,136,'0','M19_SQUARE','GREEN_SQUARE','SIG_49B','',''),
('40301', 'sq_50_t','40101', 'IDV_RACEPAN',438,93,456,110,'0','M19_SQUARE','VIOLET_SQUARE','SIG_50T','',''),
('40302', 'sq_50_b','40101', 'IDV_RACEPAN',458,93,477,110,'0','M19_SQUARE','VIOLET_SQUARE','SIG_50B','',''),
('40303', 'sq_51_t','40101', 'IDV_RACEPAN',437,69,455,85,'0','M19_SQUARE','BROWN_SQUARE','SIG_51T','',''),
('40304', 'sq_51_b','40101', 'IDV_RACEPAN',457,69,475,85,'0','M19_SQUARE','BROWN_SQUARE','SIG_51B','',''),
('40305', 'sq_52_t','40101', 'IDV_RACEPAN',434,35,450,47,'0','M19_SQUARE','','SIG_52T','',''),
('40306', 'sq_52_b','40101', 'IDV_RACEPAN',434,50,452,63,'0','M19_SQUARE','','SIG_52B','',''),
('40307', 'sq_53_t','40101', 'IDV_RACEPAN',414,29,430,44,'0','M19_SQUARE','GREEN_SQUARE','SIG_53T','',''),
('40308', 'sq_53_b','40101', 'IDV_RACEPAN',414,49,430,61,'0','M19_SQUARE','GREEN_SQUARE','SIG_53B','',''),
('40309', 'sq_54_t','40101', 'IDV_RACEPAN',391,29,404,47,'0','M19_SQUARE','VIOLET_SQUARE','SIG_54T','',''),
('40310', 'sq_54_b','40101', 'IDV_RACEPAN',391,49,404,67,'0','M19_SQUARE','VIOLET_SQUARE','SIG_54B','',''),
('40311', 'sq_55_t','40101', 'IDV_RACEPAN',365,29,378,47,'0','M19_SQUARE','BROWN_SQUARE','SIG_55T','',''),
('40312', 'sq_55_b','40101', 'IDV_RACEPAN',365,49,378,67,'0','M19_SQUARE','BROWN_SQUARE','SIG_55B','',''),
('40313', 'sq_56_t','40101', 'IDV_RACEPAN',339,29,352,47,'0','M19_SQUARE','','SIG_56T','',''),
('40314', 'sq_56_b','40101', 'IDV_RACEPAN',339,49,352,67,'0','M19_SQUARE','','SIG_56B','',''),
('40315', 'sq_57_t','40101', 'IDV_RACEPAN',312,29,325,47,'0','M19_SQUARE','VIOLET_SQUARE','SIG_57T','',''),
('40316', 'sq_57_b','40101', 'IDV_RACEPAN',312,49,325,67,'0','M19_SQUARE','VIOLET_SQUARE','SIG_57B','',''),
('40317', 'sq_58_t','40101', 'IDV_RACEPAN',286,29,299,47,'0','M19_SQUARE','GREEN_SQUARE','SIG_58T','',''),
('40318', 'sq_58_b','40101', 'IDV_RACEPAN',286,49,299,67,'0','M19_SQUARE','GREEN_SQUARE','SIG_58B','',''),
('40319', 'sq_59_t','40101', 'IDV_RACEPAN',263,29,276,47,'0','M19_SQUARE','','SIG_59T','',''),
('40320', 'sq_59_b','40101', 'IDV_RACEPAN',263,49,276,67,'0','M19_SQUARE','','SIG_59B','',''),
('40321', 'sq_60_t','40101', 'IDV_RACEPAN',236,29,249,47,'0','M19_SQUARE','VIOLET_SQUARE','SIG_60T','',''),
('40322', 'sq_60_b','40101', 'IDV_RACEPAN',236,49,249,67,'0','M19_SQUARE','VIOLET_SQUARE','SIG_60B','',''),
('40323', 'sq_61_t','40101', 'IDV_RACEPAN',209,29,221,47,'0','M19_SQUARE','GREEN_SQUARE','SIG_61T','',''),
('40324', 'sq_61_b','40101', 'IDV_RACEPAN',209,49,221,67,'0','M19_SQUARE','GREEN_SQUARE','SIG_61B','',''),
('40325', 'sq_62_t','40101', 'IDV_RACEPAN',184,29,197,47,'0','M19_SQUARE','BROWN_SQUARE','SIG_62T','',''),
('40326', 'sq_62_b','40101', 'IDV_RACEPAN',184,49,197,67,'0','M19_SQUARE','BROWN_SQUARE','SIG_62B','','');






delete from transitions where [automaton] like 'M19_%';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code","guard")
VALUES 

------------------------------------------------------------

('M19_SPELLCASTER', '0', 'collectingColor', 'WAIT', '0', 'SIG_START', '', ''),
('M19_SPELLCASTER', 'collectingColor', 'collectingEvent', 'REF_MACHINE', 'WIP1','', '
    //Top spinner frame
    WTEMP1=R_WPARM;
    MOV(WPARM,WTEMP1);
    //color to attack violet,green, or brown square
    MAPi(WPARM,WIP3);
', ''),
('M19_SPELLCASTER', 'collectingEvent', 'findVictimOne', 'REF_MACHINE', 'WIP2','', '
    //Bottom spinner frame
    WTEMP2=R_WPARM;
    MOV(BPARM,WTEMP2);
    //event or spell to cast
    MAPi(BPARM,WIP4);
', ''),
('M19_SPELLCASTER', 'findVictimOne', 'castspell', 'REF_MACHINE', '0', 'S19_PLAYERWATCHER', '
    //R_WPARM is the squre theyre on,
    //R_BPARM is either player object like IDD_PLAYER_B or W
    //map the square theyre on to a color , then if it matches WPARM execute the event in BPARM
    MOV(WTEMP1,R_WPARM);
    MAPi(WTEMP1,S19_SQUARE_MAP);', ''),
('M19_SPELLCASTER', 'castspell', 'pickspell', 'EQUAL', 'WTEMP1', 'WPARM', '', ''),   
('M19_SPELLCASTER', 'castspell', '0', 'Z_EPSILON', '0', '', '', ''), 

('M19_SPELLCASTER', 'pickspell', 'done', 'EQUAL', 'BPARM', 'bomb1', '
    WRITE(someone is bomb1ed!);
    SIGNAL(SID_ID,SIG_BOMB);
    SUBI(LENERGY,1);
    SIGNAL(SID_AURA,SIG_SUB);
', ''),        
('M19_SPELLCASTER', 'pickspell', 'done', 'EQUAL', 'BPARM', 'bomb2', '
    WRITE(someone is bomb2ed!);
    SIGNAL(SID_ID,SIG_BOMB);
    SUBI(LENERGY,2);
    SIGNAL(SID_AURA,SIG_SUB);
', ''), 
('M19_SPELLCASTER', 'pickspell', 'done', 'EQUAL', 'BPARM', 'bomb3', '
    WRITE(someone is bomb3ed!);
    SIGNAL(SID_ID,SIG_BOMB);
    SUBI(LENERGY,3);
    SIGNAL(SID_AURA,SIG_SUB);
', ''), 
('M19_SPELLCASTER', 'pickspell', 'done', 'EQUAL', 'BPARM', 'wealth', '
    WRITE(someone is given nystrom!);
    SIGNAL(SID_ID,SIG_HAPPY);
    ADDI(LWEALTH,10);
', ''), 
('M19_SPELLCASTER', 'pickspell', 'done', 'EQUAL', 'BPARM', 'banish', '
    WRITE(someone is banished!);
    LOADVIEW(0,IDV_BANISH);
', ''), 
('M19_SPELLCASTER', 'pickspell', 'done', 'EQUAL', 'BPARM', 'gopa', '
     WRITE(someone is given gopa!);
    ADDI(LENERGY,5);
    SIGNAL(SID_AURA,SIG_ADD);
', ''), 
('M19_SPELLCASTER', 'pickspell', '0', 'Z_EPSILON', '', '', '', ''), 
('M19_SPELLCASTER', 'done', '0', 'Z_EPSILON', '', '', '', ''),





('M19_SQUARE', '0', 'squareempty', 'C_ACCEPT', '', 'ISA_PLAYTOKEN','ASSIGN(BPARM,0);CLEAR(WOBJECT);',''),
('M19_SQUARE', 'squareempty', 'squareholding', 'DROP', '', '','
    SHOW(WOBJECT);
    MOV(BPARM,WOBJECT);
    SIGNALi(WIP2,S19_PLAYERWATCHER); 
',''),
('M19_SQUARE', 'squareholding', 'squareempty', 'GRAB', '', '', 'SHOW();',''),
('M19_SQUARE', 'squareempty', 'resetting', 'WAIT', '','SIG_RESET', '',''),
('M19_SQUARE', 'resetting', '0', 'Z_EPSILON', '', '', '',''),







('M19_HOLDER', '0', 'present', 'ACCEPT', '', 'WIP2', '
    MOV(WOBJECT,WIP2);
    SHOW(WOBJECT);
',''),
('M19_HOLDER', 'present', 'empty', 'GRAB', '', '', 'SHOW();',''),
('M19_HOLDER', 'empty', '0', 'DROP', '', '', '',''),
('M19_HOLDER', 'empty', 'resetting', 'WAIT', '', 'SIG_RESET', '',''),
('M19_HOLDER', 'resetting', '0', 'Z_EPSILON', '', '', '',''),

('M19_DICEHOLD', '0', 'presentdie', 'WAIT', '', 'SIG_RESET', '
     MOV(WOBJECT,IDD_DICE);
     SHOW(WOBJECT);
',''),
('M19_DICEHOLD', 'presentdie', '0', 'GRAB', '', 'IDD_DICE', '
    SHOW();
',''),

('M19_PAYBUCKET', '0', 'setup', 'MOV','BFRAME','0', '
    ASSIGN(WSPRITE,WIP1);
    SHOW(WSPRITE);
    /* BPARM = what you payed
    WPARM = Total owed 
    */
    ASSIGN(BPARM,0); 
    ASSIGN(WPARM,WIP2);
',''),
('M19_PAYBUCKET', 'setup', 'accept_pay', 'CLICK', '', '', '
    ADDI(BFRAME,1);
',''),
('M19_PAYBUCKET', 'accept_pay', 'check_scoop', 'DRAG', 'IDD_SCOOPF', '', '
    HANDOFF(0,IDD_SCOOPE);
    PLAYWAVE(0,SOUND_SPIT);
    ADDI(BPARM,1); 
',''),
('M19_PAYBUCKET', 'check_scoop', 'paid_in_full', 'EQUAL', 'BPARM', 'WPARM', '',''),
('M19_PAYBUCKET', 'check_scoop', 'accept_pay', 'Z_EPSILON', '', '', '',''),
('M19_PAYBUCKET', 'paid_in_full', '0', 'Z_EPSILON', '', '', '
    PLAYWAVE(0,SOUND_LEVER);
    SIGNAL(sq_0_t,SIG_RESET);
    SIGNAL(sq_0_b,SIG_RESET);
     SIGNAL(S19_DICEHOLD,SIG_RESET);
    SUBI(BFRAME,1);
',''),



--playerwatcher - the last square machine to signal will set state (need to differentiate by BPARM for multiplayer)
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_1T', 'MOV(WPARM,1);REF_MACHINE(sq_1_t);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_1B', 'MOV(WPARM,1);REF_MACHINE(sq_1_b);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_2T', 'MOV(WPARM,2);REF_MACHINE(sq_2_t);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_2B', 'MOV(WPARM,2);REF_MACHINE(sq_2_b);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_3T', 'MOV(WPARM,3);REF_MACHINE(sq_3_t);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_3B', 'MOV(WPARM,3);REF_MACHINE(sq_3_b);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_4T', 'MOV(WPARM,4);REF_MACHINE(sq_4_t);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_4B', 'MOV(WPARM,4);REF_MACHINE(sq_4_b);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_5T', 'MOV(WPARM,5);REF_MACHINE(sq_5_t);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_5B', 'MOV(WPARM,5);REF_MACHINE(sq_5_b);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_6T', 'MOV(WPARM,6);REF_MACHINE(sq_6_t);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_6B', 'MOV(WPARM,6);REF_MACHINE(sq_6_b);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_7T', 'MOV(WPARM,7);REF_MACHINE(sq_7_t);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_7B', 'MOV(WPARM,7);REF_MACHINE(sq_7_b);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_8T', 'MOV(WPARM,8);REF_MACHINE(sq_8_t);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_8B', 'MOV(WPARM,8);REF_MACHINE(sq_8_b);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_9T', 'MOV(WPARM,9);REF_MACHINE(sq_9_t);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_9B', 'MOV(WPARM,9);REF_MACHINE(sq_9_b);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_10T', 'MOV(WPARM,10);REF_MACHINE(sq_10_t);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_10B', 'MOV(WPARM,10);REF_MACHINE(sq_10_b);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_11T', 'MOV(WPARM,11);REF_MACHINE(sq_11_t);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_11B', 'MOV(WPARM,11);REF_MACHINE(sq_11_b);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_12T', 'MOV(WPARM,12);REF_MACHINE(sq_12_t);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_12B', 'MOV(WPARM,12);REF_MACHINE(sq_12_b);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_13T', 'MOV(WPARM,13);REF_MACHINE(sq_13_t);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_13B', 'MOV(WPARM,13);REF_MACHINE(sq_13_b);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_14T', 'MOV(WPARM,14);REF_MACHINE(sq_14_t);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_14B', 'MOV(WPARM,14);REF_MACHINE(sq_14_b);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_15T', 'MOV(WPARM,15);REF_MACHINE(sq_15_t);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_15B', 'MOV(WPARM,15);REF_MACHINE(sq_15_b);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_16T', 'MOV(WPARM,16);REF_MACHINE(sq_16_t);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_16B', 'MOV(WPARM,16);REF_MACHINE(sq_16_b);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_17T', 'MOV(WPARM,17);REF_MACHINE(sq_17_t);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_17B', 'MOV(WPARM,17);REF_MACHINE(sq_17_b);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_18T', 'MOV(WPARM,18);REF_MACHINE(sq_18_t);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_18B', 'MOV(WPARM,18);REF_MACHINE(sq_18_b);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_19T', 'MOV(WPARM,19);REF_MACHINE(sq_19_t);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_19B', 'MOV(WPARM,19);REF_MACHINE(sq_19_b);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_20T', 'MOV(WPARM,20);REF_MACHINE(sq_20_t);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_20B', 'MOV(WPARM,20);REF_MACHINE(sq_20_b);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_21T', 'MOV(WPARM,21);REF_MACHINE(sq_21_t);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_21B', 'MOV(WPARM,21);REF_MACHINE(sq_21_b);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_22T', 'MOV(WPARM,22);REF_MACHINE(sq_22_t);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_22B', 'MOV(WPARM,22);REF_MACHINE(sq_22_b);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_23T', 'MOV(WPARM,23);REF_MACHINE(sq_23_t);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_23B', 'MOV(WPARM,23);REF_MACHINE(sq_23_b);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_24T', 'MOV(WPARM,24);REF_MACHINE(sq_24_t);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_24B', 'MOV(WPARM,24);REF_MACHINE(sq_24_b);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_25T', 'MOV(WPARM,25);REF_MACHINE(sq_25_t);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_25B', 'MOV(WPARM,25);REF_MACHINE(sq_25_b);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_26T', 'MOV(WPARM,26);REF_MACHINE(sq_26_t);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_26B', 'MOV(WPARM,26);REF_MACHINE(sq_26_b);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_27T', 'MOV(WPARM,27);REF_MACHINE(sq_27_t);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_27B', 'MOV(WPARM,27);REF_MACHINE(sq_27_b);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_28T', 'MOV(WPARM,28);REF_MACHINE(sq_28_t);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_28B', 'MOV(WPARM,28);REF_MACHINE(sq_28_b);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_29T', 'MOV(WPARM,29);REF_MACHINE(sq_29_t);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_29B', 'MOV(WPARM,29);REF_MACHINE(sq_29_b);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_30T', 'MOV(WPARM,30);REF_MACHINE(sq_30_t);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_30B', 'MOV(WPARM,30);REF_MACHINE(sq_30_b);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_31T', 'MOV(WPARM,31);REF_MACHINE(sq_31_t);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_31B', 'MOV(WPARM,31);REF_MACHINE(sq_31_b);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_32T', 'MOV(WPARM,32);REF_MACHINE(sq_32_t);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_32B', 'MOV(WPARM,32);REF_MACHINE(sq_32_b);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_33T', 'MOV(WPARM,33);REF_MACHINE(sq_33_t);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_33B', 'MOV(WPARM,33);REF_MACHINE(sq_33_b);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_34T', 'MOV(WPARM,34);REF_MACHINE(sq_34_t);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_34B', 'MOV(WPARM,34);REF_MACHINE(sq_34_b);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_35T', 'MOV(WPARM,35);REF_MACHINE(sq_35_t);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_35B', 'MOV(WPARM,35);REF_MACHINE(sq_35_b);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_36T', 'MOV(WPARM,36);REF_MACHINE(sq_36_t);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_36B', 'MOV(WPARM,36);REF_MACHINE(sq_36_b);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_37T', 'MOV(WPARM,37);REF_MACHINE(sq_37_t);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_37B', 'MOV(WPARM,37);REF_MACHINE(sq_37_b);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_38T', 'MOV(WPARM,38);REF_MACHINE(sq_38_t);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_38B', 'MOV(WPARM,38);REF_MACHINE(sq_38_b);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_39T', 'MOV(WPARM,39);REF_MACHINE(sq_39_t);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_39B', 'MOV(WPARM,39);REF_MACHINE(sq_39_b);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_40T', 'MOV(WPARM,40);REF_MACHINE(sq_40_t);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_40B', 'MOV(WPARM,40);REF_MACHINE(sq_40_b);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_41T', 'MOV(WPARM,41);REF_MACHINE(sq_41_t);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_41B', 'MOV(WPARM,41);REF_MACHINE(sq_41_b);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_42T', 'MOV(WPARM,42);REF_MACHINE(sq_42_t);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_42B', 'MOV(WPARM,42);REF_MACHINE(sq_42_b);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_43T', 'MOV(WPARM,43);REF_MACHINE(sq_43_t);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_43B', 'MOV(WPARM,43);REF_MACHINE(sq_43_b);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_44T', 'MOV(WPARM,44);REF_MACHINE(sq_44_t);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_44B', 'MOV(WPARM,44);REF_MACHINE(sq_44_b);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_45T', 'MOV(WPARM,45);REF_MACHINE(sq_45_t);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_45B', 'MOV(WPARM,45);REF_MACHINE(sq_45_b);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_46T', 'MOV(WPARM,46);REF_MACHINE(sq_46_t);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_46B', 'MOV(WPARM,46);REF_MACHINE(sq_46_b);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_47T', 'MOV(WPARM,47);REF_MACHINE(sq_47_t);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_47B', 'MOV(WPARM,47);REF_MACHINE(sq_47_b);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_48T', 'MOV(WPARM,48);REF_MACHINE(sq_48_t);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_48B', 'MOV(WPARM,48);REF_MACHINE(sq_48_b);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_49T', 'MOV(WPARM,49);REF_MACHINE(sq_49_t);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_49B', 'MOV(WPARM,49);REF_MACHINE(sq_49_b);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_50T', 'MOV(WPARM,50);REF_MACHINE(sq_50_t);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_50B', 'MOV(WPARM,50);REF_MACHINE(sq_50_b);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_51T', 'MOV(WPARM,51);REF_MACHINE(sq_51_t);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_51B', 'MOV(WPARM,51);REF_MACHINE(sq_51_b);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_52T', 'MOV(WPARM,52);REF_MACHINE(sq_52_t);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_52B', 'MOV(WPARM,52);REF_MACHINE(sq_52_b);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_53T', 'MOV(WPARM,53);REF_MACHINE(sq_53_t);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_53B', 'MOV(WPARM,53);REF_MACHINE(sq_53_b);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_54T', 'MOV(WPARM,54);REF_MACHINE(sq_54_t);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_54B', 'MOV(WPARM,54);REF_MACHINE(sq_54_b);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_55T', 'MOV(WPARM,55);REF_MACHINE(sq_55_t);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_55B', 'MOV(WPARM,55);REF_MACHINE(sq_55_b);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_56T', 'MOV(WPARM,56);REF_MACHINE(sq_56_t);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_56B', 'MOV(WPARM,56);REF_MACHINE(sq_56_b);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_57T', 'MOV(WPARM,57);REF_MACHINE(sq_57_t);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_57B', 'MOV(WPARM,57);REF_MACHINE(sq_57_b);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_58T', 'MOV(WPARM,58);REF_MACHINE(sq_58_t);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_58B', 'MOV(WPARM,58);REF_MACHINE(sq_58_b);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_59T', 'MOV(WPARM,59);REF_MACHINE(sq_59_t);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_59B', 'MOV(WPARM,59);REF_MACHINE(sq_59_b);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_60T', 'MOV(WPARM,60);REF_MACHINE(sq_60_t);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_60B', 'MOV(WPARM,60);REF_MACHINE(sq_60_b);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_61T', 'MOV(WPARM,61);REF_MACHINE(sq_61_t);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_61B', 'MOV(WPARM,61);REF_MACHINE(sq_61_b);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_62T', 'MOV(WPARM,62);REF_MACHINE(sq_62_t);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '0', '1', 'WAIT', '0', 'SIG_62B', 'MOV(WPARM,62);REF_MACHINE(sq_62_b);MOV(BPARM,R_BPARM);',''),
('M19_PLAYERWATCHER', '1', '0', 'PLAYWAVE', '0', 'SOUND_CLICK', '',''),

-- The bottom spinner, as the final spinner, should signal the spell to be cast 
-- a machine called spell caster gets
-- the signal.  Spell caster looks at the picker which should have the mapped 
-- result in WPARM in terms of frame shown
-- spell caster will map the frames to colors and spells via the event and color map
-- then needs to hit every relevant square where there is a player sitting
-- with the spell.  
-- The squares now signal to report their latest holding to the playerwatcher so that
-- the spellcaster can just check the playerwatcher to find victims





-- ....



---------------SPINNERS Below - but don't talk to them, they're pretty dumb


('M19_PICK', '0', 'setup', 'MOV', 'WSPRITE', 'WIP1', '
    ASSIGN(WTEMP1,0);
', ''),
('M19_PICK', 'setup', 'randomGenned', 'RAND','8','1','',''),
('M19_PICK','randomGenned','frameMapped','MOV','WTEMP1','WRAND','
    MAPi(WTEMP1,WIP3);
    MOV(BFRAME,WTEMP1);
    SHOW(WSPRITE);
    MOV(WPARM,WTEMP1);
',''),
('M19_PICK', 'frameMapped', '0', 'WAIT', '0', 'SIG_SPIN', '', ''),

------------------------------------------------------------
('M19_SPIN', '0', '1','WAIT', '0', 'SIG_SPIN', 'PLAYWAVE(SOUND_SPIN);', ''),
('M19_SPIN', '1', '2', 'ASHOW', 'WIP1', 'V_LOOP','', ''),
('M19_SPIN', '2', '3', 'ESTIME', '', '4', '',''),
('M19_SPIN', '3', 'reveal', 'CLEAR', 'WSPRITE', '', '',''),
('M19_SPIN', 'reveal', '0', 'SHOW', '0', '0', '
    if(WIP1 == IDS_BOTSPIN){
        SIGNALi(SIG_START,S19_SPELLCASTER);
    }
',''),


('M19_BUTTON', '0', '1','CLICK', '0', '', '
    SIGNAL(WIP4, SIG_SPIN);
    SIGNAL(WIP3, SIG_SPIN);
     SIGNAL(WIP2, SIG_SPIN);
     SIGNAL(WIP1, SIG_SPIN);
', ''),
('M19_BUTTON', '1', '0', 'Z_EPSILON', '', '', '','');



























