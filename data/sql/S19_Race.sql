


delete from spr_names where [name] like 'IDS_TOPSPIN%';
delete from spr_names where [name] like 'IDS_BOTSPIN%';
delete from spr_names where [name] like 'IDS_SPITTOON';
delete from spr_names where [name] like 'IDS_TOKENPICK';
delete from spr_names where [name] like 'IDS_CHOOSETOKEN_B';
delete from spr_names where [name] like 'IDS_CHOOSETOKEN_W';
delete from sounds where [name] like 'SOUND_SPIN%';
delete from spr_names where name = 'IDS_BLACKBACK_SM';
INSERT INTO "main"."spr_names" ("name", "value") 
VALUES 
('IDS_BLACKBACK_SM', 'blackback_sm');


insert into spr_names values ('IDS_TOPSPIN','tspin','40600');
insert into spr_names values ('IDS_BOTSPIN','bspin','40601');
insert into spr_names values ('IDS_TOPSPINFST','tspinfast','40602');
insert into spr_names values ('IDS_SPITTOON','spittoon','40610');
insert into spr_names values ('IDS_TOKENPICK','choosetoken','40799');
insert into spr_names values ('IDS_CHOOSETOKEN_B','choosetoken_B','40798');
insert into spr_names values ('IDS_CHOOSETOKEN_W','choosetoken_w','40797');
insert into sounds values ('SOUND_SPIN', 'spin',0);

delete from objects where object = 'IDD_PLAYER_W';
delete from objects where object = 'IDD_PLAYER_B';
insert into objects values
('IDD_PLAYER_W','IDC_NULL','player_w','player_w','player_w'),
('IDD_PLAYER_B','IDC_NULL','player_b','player_b','player_b');

delete from controls where [view] like 'IDV_RACEPAN%';

insert into controls ([view], [id],[type],[image],[image_selected],[x],[y],[border],[values],[default],[ids_font],[font_color],[code]) values

('IDV_RACEPAN', '200', 'EDITBOX',  'IDS_BLACKBACK_SM', 'IDS_BTN_DOWN_HI', 486, 172, 10, 'Inst', 'default','IDS_FONTTNR16',0x44FFFF,'');




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
('S19_EVENT_MAP',2, 'IDD_BOMB2'),
('S19_EVENT_MAP',5, 'IDD_GVIAL'), 
('S19_EVENT_MAP',8, 'IDD_BOMB2'),
('S19_EVENT_MAP',11,'IDD_GVIAL'),
('S19_EVENT_MAP',14,'IDD_BOMB2'),
('S19_EVENT_MAP',17,'IDD_TRANSFER'),
('S19_EVENT_MAP',20,'IDD_BANISHMENT'),
('S19_EVENT_MAP',0, 'IDD_GVIAL'),

('S19_COLOR_MAP',1,'GREEN_SQUARE'),
('S19_COLOR_MAP',4,'VIOLET_SQUARE'), 
('S19_COLOR_MAP',7,'BROWN_SQUARE'),
('S19_COLOR_MAP',2,'GREEN_SQUARE'),
('S19_COLOR_MAP',6,'BROWN_SQUARE'),
('S19_COLOR_MAP',7,'BROWN_SQUARE'),
('S19_COLOR_MAP',3,'VIOLET_SQUARE'),
('S19_COLOR_MAP',4,'VIOLET_SQUARE');




delete from views where view_name = 'IDV_RACEPAN';
INSERT INTO "main"."views" ( "view_name", "Z", "backgroundAudio", "locator_view", "behavior_id", "portal_filename", "surface_filename") 
VALUES 
('IDV_RACEPAN', '1', '0', '1', '1', 'wdepanel.vct', 'RACEPAN');

delete from machines where [name] like 'S19_%';
delete from machines where [name] like 'spinner%';
delete from machines where [name] like 'sq_%';

INSERT INTO "main"."machines" ( "name", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name","wip3_name",  "wip4_name","Z") 
VALUES
('S19_DIEDROP',            'IDV_RACEPAN',520,200,620,300,'0','M16_DIEROLL','IDS_DICE','','', '',2),
('S19_TOKENPICK',          'IDV_RACEPAN',25,25,150,75,   '0','M19_TOKENPICK','IDS_TOKENPICK','','', '',1),
-- ('S19_TOKENPICK_W',          'IDV_RACEPAN',39,21,73,52,  '0','M19_TOKENRECORDER','IDD_PLAYER_W','IDS_CHOOSETOKEN_W','', '',3),
-- ('S19_TOKENPICK_B',          'IDV_RACEPAN',76,21,106,52, '0','M19_TOKENRECORDER','IDD_PLAYER_B','IDS_CHOOSETOKEN_B','', '',3),

('S19_TOKENSHOW_W',          'IDV_RACEPAN',39,21,73,52,  '0','M_PLANTBIN', 'IDD_PLAYER_W', 'IDS_CHOOSETOKEN_W', '360', '','2'),
('S19_TOKENSHOW_B',          'IDV_RACEPAN',76,21,106,52, '0','M_PLANTBIN', 'IDD_PLAYER_B', 'IDS_CHOOSETOKEN_B', '360', '','2');



INSERT INTO "main"."machines" ( "name", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name","wip3_name",  "wip4_name","Z") 
VALUES
('S19_SPINNER_BUTTON',     'IDV_RACEPAN',557,41,589,72,'0','M19_BUTTON','S19_SPINNER_BOTTOM_PICK','S19_SPINNER_BOTTOM_SPIN','S19_SPINNER_TOP_PICK','S19_SPINNER_TOP_SPIN','5'),
('S19_SPINNER_TOP_SPIN',   'IDV_RACEPAN',435,0,552,30,'0','M19_SPIN','IDS_TOPSPIN','','','','4'),
('S19_SPINNER_TOP_PICK',   'IDV_RACEPAN',435,0,552,30,'0','M19_PICK','IDS_TOPSPIN',3,'S19_TOPSPIN_MAP','','2'),
('S19_SPINNER_BOTTOM_SPIN','IDV_RACEPAN',435,0,552,30,'0','M19_SPIN','IDS_BOTSPIN','','','','5'),
('S19_SPINNER_BOTTOM_PICK','IDV_RACEPAN',435,0,552,30,'0','M19_PICK','IDS_BOTSPIN',8,'S19_BOTSPIN_MAP','','1');



INSERT INTO "main"."machines" ( "name", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name","wip3_name",  "wip4_name") 
VALUES
('S19_SPELLCASTER',        'IDV_RACEPAN',8,150,20,200,'2','M19_SPELLCASTER','S19_SPINNER_TOP_PICK','S19_SPINNER_BOTTOM_PICK','S19_COLOR_MAP','S19_EVENT_MAP'),

--playerwatcher can't be local as it is signaled by global squares
('S19_PLAYERWATCHER',      'IDV_RACEPAN',3,33,45,60,  '0','M19_PLAYERWATCHER','','','',''),
('S19_PAYRESET',           'IDV_RACEPAN',9,217,69,287,'0','M19_PAYBUCKET','IDS_SPITTOON',2,'', ''),


--did not need to put the colors here - squares don't need to pass their color anywhere - map is used
-- this is better if we want to vary the squares
( 'sq_0_b',      'IDV_RACEPAN',264,237,281,256,'2','M19_HOLDER','','IDD_PLAYER_B','',''),
( 'sq_0_t',      'IDV_RACEPAN',264,221,281,236,'2','M19_HOLDER','','IDD_PLAYER_W','',''),
( 'S19_DICEHOLD','IDV_RACEPAN',293,232,346,278,'0','M19_DICEHOLD','','','',''),
( 'sq_1_t',      'IDV_RACEPAN',240,217,253,235,'0','M19_SQUARE','','SIG_1T','',''),
( 'sq_1_b',      'IDV_RACEPAN',240,237,253,256,'0','M19_SQUARE','','SIG_1B','',''),
( 'sq_2_t',      'IDV_RACEPAN',212,217,226,235,'0','M19_SQUARE','','SIG_2T','',''),
( 'sq_2_b',      'IDV_RACEPAN',212,237,226,256,'0','M19_SQUARE','','SIG_2B','',''),
( 'sq_3_t',      'IDV_RACEPAN',185,217,198,235,'0','M19_SQUARE','','SIG_3T','',''),
( 'sq_3_b',      'IDV_RACEPAN',185,237,198,256,'0','M19_SQUARE','','SIG_3B','',''),
( 'sq_4_t',      'IDV_RACEPAN',157,217,170,235,'0','M19_SQUARE','','SIG_4T','',''),
( 'sq_4_b',      'IDV_RACEPAN',157,237,170,256,'0','M19_SQUARE','','SIG_4B','',''),
( 'sq_5_t',      'IDV_RACEPAN',130,217,143,235,'0','M19_SQUARE','','SIG_5T','',''),
( 'sq_5_b',      'IDV_RACEPAN',130,237,143,256,'0','M19_SQUARE','','SIG_5B','',''),
( 'sq_6_t',      'IDV_RACEPAN',89,220,107,233,'0','M19_SQUARE','','SIG_6T','',''),
( 'sq_6_b',      'IDV_RACEPAN',98,235,116,248,'0','M19_SQUARE','','SIG_6B','',''),
( 'sq_7_t',      'IDV_RACEPAN',102,186,120,199,'0','M19_SQUARE','','SIG_7T','',''),
( 'sq_7_b',      'IDV_RACEPAN',89,201,107,214,'0','M19_SQUARE','','SIG_7B','',''),
( 'sq_8_t',      'IDV_RACEPAN',127,176,140,194,'0','M19_SQUARE','','SIG_8T','',''),
( 'sq_8_b',      'IDV_RACEPAN',127,196,140,214,'0','M19_SQUARE','','SIG_8B','',''),
( 'sq_9_t',      'IDV_RACEPAN',155,176,168,194,'0','M19_SQUARE','','SIG_9T','',''),
( 'sq_9_b',      'IDV_RACEPAN',155,196,168,214,'0','M19_SQUARE','','SIG_9B','',''),
( 'sq_10_t',     'IDV_RACEPAN',181,176,194,194,'0','M19_SQUARE','VIOLET_SQUARE','SIG_10T','',''),
( 'sq_10_b',     'IDV_RACEPAN',181,196,194,214,'0','M19_SQUARE','VIOLET_SQUARE','SIG_10B','',''),
( 'sq_11_t',     'IDV_RACEPAN',207,176,220,194,'0','M19_SQUARE','','SIG_11T','',''),
( 'sq_11_b',     'IDV_RACEPAN',207,196,220,214,'0','M19_SQUARE','','SIG_11B','',''),
( 'sq_12_t',     'IDV_RACEPAN',236,176,249,194,'0','M19_SQUARE','','SIG_12T','',''),
( 'sq_12_b',     'IDV_RACEPAN',236,196,249,214,'0','M19_SQUARE','','SIG_12B','',''),
( 'sq_13_t',     'IDV_RACEPAN',263,176,276,194,'0','M19_SQUARE','VIOLET_SQUARE','SIG_13T','',''),
( 'sq_13_b',     'IDV_RACEPAN',263,196,276,214,'0','M19_SQUARE','VIOLET_SQUARE','SIG_13B','',''),
( 'sq_14_t',     'IDV_RACEPAN',290,176,303,194,'0','M19_SQUARE','','SIG_14T','',''),
( 'sq_14_b',     'IDV_RACEPAN',290,196,303,214,'0','M19_SQUARE','','SIG_14B','',''),
( 'sq_15_t',     'IDV_RACEPAN',319,179,337,192,'0','M19_SQUARE','','SIG_15T','',''),
( 'sq_15_b',     'IDV_RACEPAN',319,196,337,208,'0','M19_SQUARE','','SIG_15B','',''),
( 'sq_16_t',     'IDV_RACEPAN',316,155,332,172,'0','M19_SQUARE','VIOLET_SQUARE','SIG_16T','',''),
( 'sq_16_b',     'IDV_RACEPAN',338,155,354,172,'0','M19_SQUARE','VIOLET_SQUARE','SIG_16B','',''),
( 'sq_17_t',     'IDV_RACEPAN',317,119,335,132,'0','M19_SQUARE','','SIG_17T','',''),
( 'sq_17_b',     'IDV_RACEPAN',317,135,335,148,'0','M19_SQUARE','','SIG_17B','',''),
( 'sq_18_t',     'IDV_RACEPAN',297,116,312,131,'0','M19_SQUARE','BROWN_SQUARE','SIG_18T','',''),
( 'sq_18_b',     'IDV_RACEPAN',299,133,312,151,'0','M19_SQUARE','BROWN_SQUARE','SIG_18B','',''),
( 'sq_19_t',     'IDV_RACEPAN',270,115,286,130,'0','M19_SQUARE','','SIG_19T','',''),
( 'sq_19_b',     'IDV_RACEPAN',273,133,286,151,'0','M19_SQUARE','','SIG_19B','',''),
( 'sq_20_t',     'IDV_RACEPAN',248,113,260,132,'0','M19_SQUARE','VIOLET_SQUARE','SIG_20T','',''),
( 'sq_20_b',     'IDV_RACEPAN',247,133,260,152,'0','M19_SQUARE','VIOLET_SQUARE','SIG_20B','',''),
( 'sq_21_t',     'IDV_RACEPAN',219,113,232,132,'0','M19_SQUARE','BROWN_SQUARE','SIG_21T','',''),
( 'sq_21_b',     'IDV_RACEPAN',219,133,232,151,'0','M19_SQUARE','BROWN_SQUARE','SIG_21B','',''),
( 'sq_22_t',     'IDV_RACEPAN',191,113,206,132,'0','M19_SQUARE','','SIG_22T','',''),
( 'sq_22_b',     'IDV_RACEPAN',191,133,206,151,'0','M19_SQUARE','','SIG_22B','',''),
( 'sq_23_t',     'IDV_RACEPAN',165,113,178,131,'0','M19_SQUARE','VIOLET_SQUARE','SIG_23T','',''),
( 'sq_23_b',     'IDV_RACEPAN',165,133,178,151,'0','M19_SQUARE','VIOLET_SQUARE','SIG_23B','',''),
( 'sq_24_t',     'IDV_RACEPAN',136,112,151,132,'0','M19_SQUARE','VIOLET_SQUARE','SIG_24T','',''),
( 'sq_24_b',     'IDV_RACEPAN',136,133,150,151,'0','M19_SQUARE','VIOLET_SQUARE','SIG_24B','',''),
( 'sq_25_t',     'IDV_RACEPAN',111,112,123,132,'0','M19_SQUARE','BROWN_SQUARE','SIG_25T','',''),
( 'sq_25_b',     'IDV_RACEPAN',111,133,123,151,'0','M19_SQUARE','BROWN_SQUARE','SIG_25B','',''),
( 'sq_26_t',     'IDV_RACEPAN',84,113,97,132,'0','M19_SQUARE','','SIG_26T','',''),
( 'sq_26_b',     'IDV_RACEPAN',84,133,97,151,'0','M19_SQUARE','','SIG_26B','',''),
( 'sq_27_t',     'IDV_RACEPAN',57,113,70,132,'0','M19_SQUARE','','SIG_27T','',''),
( 'sq_27_b',     'IDV_RACEPAN',57,133,70,151,'0','M19_SQUARE','','SIG_27B','',''),
( 'sq_28_t',     'IDV_RACEPAN',19,116,37,129,'0','M19_SQUARE','','SIG_28T','',''),
( 'sq_28_b',     'IDV_RACEPAN',28,131,46,144,'0','M19_SQUARE','','SIG_28B','',''),
( 'sq_29_t',     'IDV_RACEPAN',32,82,50,95, '0','M19_SQUARE','','SIG_29T','', ''),
( 'sq_29_b',     'IDV_RACEPAN',19,97,37,110, '0','M19_SQUARE','','SIG_29B','', ''),
( 'sq_30_t',     'IDV_RACEPAN',56,74,69,92, '0','M19_SQUARE','','SIG_30T','',''),
( 'sq_30_b',     'IDV_RACEPAN',56,93,69,112, '0','M19_SQUARE','','SIG_30B','',''),
( 'sq_31_t',     'IDV_RACEPAN',81,74,94,92, '0','M19_SQUARE','VIOLET_SQUARE','SIG_31T','',''),
( 'sq_31_b',     'IDV_RACEPAN',81,94,94,112, '0','M19_SQUARE','VIOLET_SQUARE','SIG_31B','',''),
( 'sq_32_t',     'IDV_RACEPAN',110,74,123,92, '0','M19_SQUARE','','SIG_32T','',''),
( 'sq_32_b',     'IDV_RACEPAN',110,94,123,112, '0','M19_SQUARE','','SIG_32B','',''),
( 'sq_33_t',     'IDV_RACEPAN',135,74,148,92, '0','M19_SQUARE','','SIG_33T','',''),
( 'sq_33_b',     'IDV_RACEPAN',135,94,148,112, '0','M19_SQUARE','','SIG_33B','',''),
( 'sq_34_t',     'IDV_RACEPAN',163,74,176,92, '0','M19_SQUARE','BROWN_SQUARE','SIG_34T','',''),
( 'sq_34_b',     'IDV_RACEPAN',163,94,176,112, '0','M19_SQUARE','BROWN_SQUARE','SIG_34B','',''),
( 'sq_35_t',     'IDV_RACEPAN',187,74,200,92, '0','M19_SQUARE','','SIG_35T','', ''),
( 'sq_35_b',     'IDV_RACEPAN',187,94,200,112, '0','M19_SQUARE','','SIG_35B','', ''),
( 'sq_36_t',     'IDV_RACEPAN',214,74,227,92, '0','M19_SQUARE','VIOLET_SQUARE','SIG_36T','',''),
( 'sq_36_b',     'IDV_RACEPAN',214,94,227,112, '0','M19_SQUARE','VIOLET_SQUARE','SIG_36B','',''),
( 'sq_37_t',     'IDV_RACEPAN',240,74,253,92, '0','M19_SQUARE','','SIG_37T','', ''),
( 'sq_37_b',     'IDV_RACEPAN',240,94,253,112, '0','M19_SQUARE','','SIG_37B','', ''),
( 'sq_38_t',     'IDV_RACEPAN',265,74,278,92, '0','M19_SQUARE','','SIG_38T','',''),
( 'sq_38_b',     'IDV_RACEPAN',265,94,278,112, '0','M19_SQUARE','','SIG_38B','',''),
( 'sq_39_t',     'IDV_RACEPAN',291,74,305,92,'0','M19_SQUARE','BROWN_SQUARE', 'SIG_39T','',''),
( 'sq_39_b',     'IDV_RACEPAN',291,94,305,112,'0','M19_SQUARE','BROWN_SQUARE','SIG_39B','',''),
( 'sq_40_t',     'IDV_RACEPAN',320,74,333,91,'0','M19_SQUARE','','SIG_40T','',''),
( 'sq_40_b',     'IDV_RACEPAN',320,94,333,111,'0','M19_SQUARE','','SIG_40B','',''),
( 'sq_41_t',     'IDV_RACEPAN',345,75,358,91,'0','M19_SQUARE','VIOLET_SQUARE', 'SIG_41T','',''),
( 'sq_41_b',     'IDV_RACEPAN',344,95,359,112,'0','M19_SQUARE','VIOLET_SQUARE','SIG_41B','',''),
( 'sq_42_t',     'IDV_RACEPAN',371,81,390,95,'0','M19_SQUARE','','SIG_42T','',''),
( 'sq_42_b',     'IDV_RACEPAN',371,97,390,110,'0','M19_SQUARE','','SIG_42B','',''),
( 'sq_43_t',     'IDV_RACEPAN',370,115,388,134,'0','M19_SQUARE','BROWN_SQUARE','SIG_43T','',''),
( 'sq_43_b',     'IDV_RACEPAN',392,115,407,134,'0','M19_SQUARE','BROWN_SQUARE','SIG_43B','',''),
( 'sq_44_t',     'IDV_RACEPAN',370,142,388,159,'0','M19_SQUARE','VIOLET_SQUARE','SIG_44T','',''),
( 'sq_44_b',     'IDV_RACEPAN',390,142,408,159,'0','M19_SQUARE','VIOLET_SQUARE','SIG_44B','',''),
( 'sq_45_t',     'IDV_RACEPAN',386,163,404,176,'0','M19_SQUARE','','SIG_45T','',''),
( 'sq_45_b',     'IDV_RACEPAN',386,178,404,192,'0','M19_SQUARE','','SIG_45B','',''),
( 'sq_46_t',     'IDV_RACEPAN',414,163,428,181,'0','M19_SQUARE','GREEN_SQUARE','SIG_46T','',''),
( 'sq_46_b',     'IDV_RACEPAN',414,183,428,202,'0','M19_SQUARE','GREEN_SQUARE','SIG_46B','',''),
( 'sq_47_t',     'IDV_RACEPAN',444,164,462,177,'0','M19_SQUARE','','SIG_47T','',''),
( 'sq_47_b',     'IDV_RACEPAN',444,181,462,193,'0','M19_SQUARE','','SIG_47B','',''),
( 'sq_48_t',     'IDV_RACEPAN',440,143,458,160,'0','M19_SQUARE','BROWN_SQUARE','SIG_48T','',''),
( 'sq_48_b',     'IDV_RACEPAN',460,143,478,160,'0','M19_SQUARE','BROWN_SQUARE','SIG_48B','',''),
( 'sq_49_t',     'IDV_RACEPAN',440,118,458,135,'0','M19_SQUARE','GREEN_SQUARE','SIG_49T','',''),
( 'sq_49_b',     'IDV_RACEPAN',460,118,478,136,'0','M19_SQUARE','GREEN_SQUARE','SIG_49B','',''),
( 'sq_50_t',     'IDV_RACEPAN',438,93,456,110,'0','M19_SQUARE','VIOLET_SQUARE','SIG_50T','',''),
( 'sq_50_b',     'IDV_RACEPAN',458,93,477,110,'0','M19_SQUARE','VIOLET_SQUARE','SIG_50B','',''),
( 'sq_51_t',     'IDV_RACEPAN',437,69,455,85,'0','M19_SQUARE','BROWN_SQUARE','SIG_51T','',''),
( 'sq_51_b',     'IDV_RACEPAN',457,69,475,85,'0','M19_SQUARE','BROWN_SQUARE','SIG_51B','',''),
( 'sq_52_t',     'IDV_RACEPAN',434,35,450,47,'0','M19_SQUARE','','SIG_52T','',''),
( 'sq_52_b',     'IDV_RACEPAN',434,50,452,63,'0','M19_SQUARE','','SIG_52B','',''),
( 'sq_53_t',     'IDV_RACEPAN',414,29,430,44,'0','M19_SQUARE','GREEN_SQUARE','SIG_53T','',''),
( 'sq_53_b',     'IDV_RACEPAN',414,49,430,61,'0','M19_SQUARE','GREEN_SQUARE','SIG_53B','',''),
( 'sq_54_t',     'IDV_RACEPAN',391,29,404,47,'0','M19_SQUARE','VIOLET_SQUARE','SIG_54T','',''),
( 'sq_54_b',     'IDV_RACEPAN',391,49,404,67,'0','M19_SQUARE','VIOLET_SQUARE','SIG_54B','',''),
( 'sq_55_t',     'IDV_RACEPAN',365,29,378,47,'0','M19_SQUARE','BROWN_SQUARE','SIG_55T','',''),
( 'sq_55_b',     'IDV_RACEPAN',365,49,378,67,'0','M19_SQUARE','BROWN_SQUARE','SIG_55B','',''),
( 'sq_56_t',     'IDV_RACEPAN',339,29,352,47,'0','M19_SQUARE','','SIG_56T','',''),
( 'sq_56_b',     'IDV_RACEPAN',339,49,352,67,'0','M19_SQUARE','','SIG_56B','',''),
( 'sq_57_t',     'IDV_RACEPAN',312,29,325,47,'0','M19_SQUARE','VIOLET_SQUARE','SIG_57T','',''),
( 'sq_57_b',     'IDV_RACEPAN',312,49,325,67,'0','M19_SQUARE','VIOLET_SQUARE','SIG_57B','',''),
( 'sq_58_t',     'IDV_RACEPAN',286,29,299,47,'0','M19_SQUARE','GREEN_SQUARE','SIG_58T','',''),
( 'sq_58_b',     'IDV_RACEPAN',286,49,299,67,'0','M19_SQUARE','GREEN_SQUARE','SIG_58B','',''),
( 'sq_59_t',     'IDV_RACEPAN',263,29,276,47,'0','M19_SQUARE','','SIG_59T','',''),
( 'sq_59_b',     'IDV_RACEPAN',263,49,276,67,'0','M19_SQUARE','','SIG_59B','',''),
( 'sq_60_t',     'IDV_RACEPAN',236,29,249,47,'0','M19_SQUARE','VIOLET_SQUARE','SIG_60T','',''),
( 'sq_60_b',     'IDV_RACEPAN',236,49,249,67,'0','M19_SQUARE','VIOLET_SQUARE','SIG_60B','',''),
( 'sq_61_t',     'IDV_RACEPAN',209,29,221,47,'0','M19_SQUARE','GREEN_SQUARE','SIG_61T','',''),
( 'sq_61_b',     'IDV_RACEPAN',209,49,221,67,'0','M19_SQUARE','GREEN_SQUARE','SIG_61B','',''),
( 'sq_62_t',     'IDV_RACEPAN',184,29,197,47,'0','M19_SQUARE','BROWN_SQUARE','SIG_62T','',''),
( 'sq_62_b',     'IDV_RACEPAN',184,49,197,67,'0','M19_SQUARE','BROWN_SQUARE','SIG_62B','','');


delete from transitions where [automaton] like 'M19_%';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code","guard")
VALUES 

-- Wip1 S19_SPINNER_TOP_PICK' The color picked
-- Wip2 S19_SPINNER_BOTTOM_PICK 
-- wip3 'S19_COLOR_MAP',
-- wip4 'S19_EVENT_MAP'
-----------------------------------------------------------

('M19_SPELLCASTER', '0', 'collectingColor', 'WAIT', '0', 'SIG_START', '', ''),
('M19_SPELLCASTER', 'collectingColor', 'collectingEvent', 'REF_MACHINE', 'WIP1','', '
    //Top spinner frame
    MOV(WPARM,R_WPARM);
    //WPARM wil be color chosen to attack: violet,GREEN_SQUARE, or brown square
    MAPi(WPARM,WIP3); 
', ''),
('M19_SPELLCASTER', 'collectingEvent', 'findVictimOne', 'REF_MACHINE', 'WIP2','', '
    //Bottom spinner frame
    WTEMP2=R_WPARM;
    MOV(BPARM,WTEMP2);
    //BPARM will be spell
    MAPi(BPARM,WIP4); //BPARM will be IDD_GVIAL,IDD_BOMB2...
', ''),
('M19_SPELLCASTER', 'findVictimOne', 'castspell', 'Z_EPSILON', '', '', '
    //get the color from the player compete table
     predicate active_character(name);
        active_character(?myname)?
        predicate compete(name,token,address,partner,square);
        compete(myname,?token,,,?WTEMP1);
        //WTEMP1 is the color the player is on: now something like VIOLET_SQUARE, BLANK...
            if(WTEMP1 == WPARM){
                //if the last triggered square has the color to attack
                predicate dropitem(object,id);
                dropitem("%")~
                dropitem(BPARM,"id").
                replay("system/send_item_self");
            }
        ', ''),  
('M19_SPELLCASTER', 'castspell', '0', 'Z_EPSILON', '0', '', '', ''), 



('M19_SQUARE', '0', 'squareempty', 'Z_EPSILON', '', '','ASSIGN(BPARM,0);CLEAR(WOBJECT);',''),
('M19_SQUARE', 'squareempty', 'squareholding', 'DROP', 'ISA_PLAYTOKEN', '','
    SHOW(WOBJECT);
    MOV(BPARM,WOBJECT); //IDD_PLAYER_W..
      predicate compete(name,token,address,partner,square);
      compete(,?token,,,)?
        if(token == BPARM){
            predicate active_character(name);
            active_character(?myname)?
            predicate PlayerList(name,pid);
            PlayerList(myname,?player_pid)?
            predicate compete(name,token,address,partner,square);
            compete("%")~
            compete(myname,BPARM,player_pid,"",WIP1).  
        }
    SIGNALi(S19_PLAYERWATCHER, WIP2); 
',''),
('M19_SQUARE', 'squareholding', 'squareempty', 'GRAB', '', '', 'SHOW();',''),
('M19_SQUARE', 'squareempty', '0', 'WAIT', '','SIG_RESET', '',''),





('M19_HOLDER', '0', 'present', 'DROP', '', '', '
    SHOW(WOBJECT);
      predicate active_character(name);
       active_character(?myname)?
       predicate PlayerList(name,pid);
       PlayerList(myname,?player_pid)?
     predicate compete(name,token,address,partner,square);
     compete("%")~
     compete(myname,WOBJECT,player_pid,"","").

',''),
('M19_HOLDER', 'present', '0', 'GRAB', '', '', 'SHOW();',''),




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
('M19_PAYBUCKET', 'setup', 'accept_pay', 'Z_EPSILON', '', '', '
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
    SIGNAL(S19_DICEHOLD,SIG_RESET);
    SUBI(BFRAME,1);
',''),



('M19_PICK', '0', 'setup', 'MOV', 'WSPRITE', 'WIP1', '
    ASSIGN(WTEMP1,0);
', ''),
('M19_PICK', 'setup', 'randomGenned', 'RAND','1','8','',''),
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
        REF_MACHINE(S19_SPINNER_BOTTOM_PICK);
        if(R_WPARM == 2){WPARM = "Bomb";}
        if(R_WPARM == 5){WPARM = "Gopa Vial";}
        if(R_WPARM == 8){WPARM = "Bomb";}
        if(R_WPARM == 11){WPARM = "Wealth";}
        if(R_WPARM == 14){WPARM = "Bomb";}
        if(R_WPARM == 17){WPARM = "Transfer";}
        if(R_WPARM == 20){WPARM = "Banish";}
        if(R_WPARM == 0){WPARM = "Gopa";}
        set_control_value(IDV_RACEPAN, 200,WPARM);
        SIGNALi(S19_SPELLCASTER,SIG_START);
    }
',''),

--('S19_SPINNER_BUTTON',     'IDV_RACEPAN',557,41,589,72,'0','M19_BUTTON','S19_SPINNER_BOTTOM_PICK','S19_SPINNER_BOTTOM_SPIN','S19_SPINNER_TOP_PICK','S19_SPINNER_TOP_SPIN'),
('M19_BUTTON', '0', '1','CLICK', '0', '', '
    SIGNAL(WIP4, SIG_SPIN);
    SIGNAL(WIP3, SIG_SPIN);
    SIGNAL(WIP2, SIG_SPIN);
    SIGNAL(WIP1, SIG_SPIN);
', ''),
('M19_BUTTON', '1', '0', 'Z_EPSILON', '', '', '','');



























