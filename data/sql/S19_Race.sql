delete from games;


delete from spr_names where [name] like 'IDS_TOPSPIN%';
delete from spr_names where [name] like 'IDS_BOTSPIN%';
insert into spr_names values ('IDS_TOPSPIN','tspin','40600');
insert into spr_names values ('IDS_BOTSPIN','bspin','40601');

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

delete from map where op like 'S19_%';
INSERT INTO "main"."map" ("op", "key", "value")
VALUES 
('S19_BOTSPIN_MAP',1,9), 
('S19_BOTSPIN_MAP',2,17), 
('S19_BOTSPIN_MAP',3,25), 
('S19_BOTSPIN_MAP',4,34), 
('S19_BOTSPIN_MAP',5,47), 
('S19_BOTSPIN_MAP',6,57),
('S19_BOTSPIN_MAP',7,64),
('S19_BOTSPIN_MAP',8,72),

('S19_TOPSPIN_MAP',1,1), 
('S19_TOPSPIN_MAP',2,11), 
('S19_TOPSPIN_MAP',3,28);


delete from views where view_name = 'IDV_RACEPAN';
INSERT INTO "main"."views" ("view_id", "view_name", "Z", "backgroundAudio", "locator_view", "behavior_id", "portal_filename", "surface_filename") 
VALUES 
('40101', 'IDV_RACEPAN', '1', '0', '1', '1', 'wdepanel.vct', 'RACEPAN');

delete from machines where [name] like 'S19_DIEDROP%';
delete from machines where [name] like 'sq_%';
INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name","wip3_name",  "wip4_name") 
VALUES
('40200', 'S19_DIEDROP', '40101', 'IDV_RACEPAN',497,144,604,260, '0','M16_DIEROLL','IDS_DICE','','', ''),
('40350', 'spinner_bottom', '40101', 'IDV_RACEPAN',435,0,600,133,'0','M19_BOTSPIN','IDS_BOTSPIN','8','S19_BOTSPIN_MAP',''),
('40351', 'spinner_top', '40101', 'IDV_RACEPAN',435,0,600,133,'0','M19_TOPSPIN','IDS_TOPSPIN','3','S19_TOPSPIN_MAP',''),



('40201', 'sq_1_t', '40101', 'IDV_RACEPAN',240,217,253,235,'0','M19_SQUARE','','','',''),
('40202', 'sq_1_b', '40101', 'IDV_RACEPAN',240,237,253,256,'0','M19_SQUARE','','','',''),
('40203', 'sq_2_t', '40101', 'IDV_RACEPAN',212,217,226,235,'0','M19_SQUARE','','','',''),
('40204', 'sq_2_b', '40101', 'IDV_RACEPAN',212,237,226,256,'0','M19_SQUARE','','','',''),
('40205', 'sq_3_t', '40101', 'IDV_RACEPAN',185,217,198,235,'0','M19_SQUARE','','','',''),
('40206', 'sq_3_b', '40101', 'IDV_RACEPAN',185,237,198,256,'0','M19_SQUARE','','','',''),
('40207', 'sq_4_t', '40101', 'IDV_RACEPAN',157,217,170,235,'0','M19_SQUARE','','','',''),
('40208', 'sq_4_b', '40101', 'IDV_RACEPAN',157,237,170,256,'0','M19_SQUARE','','','',''),
('40209', 'sq_5_t', '40101', 'IDV_RACEPAN',130,217,143,235,'0','M19_SQUARE','','','',''),
('40210', 'sq_5_b', '40101', 'IDV_RACEPAN',130,237,143,256,'0','M19_SQUARE','','','',''),
('40211', 'sq_6_t', '40101', 'IDV_RACEPAN',89,220,107,233,'0','M19_SQUARE','','','',''),
('40212', 'sq_6_b', '40101', 'IDV_RACEPAN',98,235,116,248,'0','M19_SQUARE','','','',''),
('40213', 'sq_7_t', '40101', 'IDV_RACEPAN',102,186,120,199,'0','M19_SQUARE','','','',''),
('40214', 'sq_7_b', '40101', 'IDV_RACEPAN',89,201,107,214,'0','M19_SQUARE','','','',''),
('40215', 'sq_8_t', '40101', 'IDV_RACEPAN',127,176,140,194,'0','M19_SQUARE','','','',''),
('40216', 'sq_8_b', '40101', 'IDV_RACEPAN',127,196,140,214,'0','M19_SQUARE','','','',''),
('40217', 'sq_9_t', '40101', 'IDV_RACEPAN',155,176,168,194,'0','M19_SQUARE','','','',''),
('40218', 'sq_9_b', '40101', 'IDV_RACEPAN',155,196,168,214,'0','M19_SQUARE','','','',''),
('40219', 'sq_10_t', '40101', 'IDV_RACEPAN',181,176,194,194,'0','M19_SQUARE','','','',''),
('40220', 'sq_10_b', '40101', 'IDV_RACEPAN',181,196,194,214,'0','M19_SQUARE','','','',''),
('40221', 'sq_11_t', '40101', 'IDV_RACEPAN',207,176,220,194,'0','M19_SQUARE','','','',''),
('40222', 'sq_11_b', '40101', 'IDV_RACEPAN',207,196,220,214,'0','M19_SQUARE','','','',''),
('40223', 'sq_12_t', '40101', 'IDV_RACEPAN',236,176,249,194,'0','M19_SQUARE','','','',''),
('40224', 'sq_12_b', '40101', 'IDV_RACEPAN',236,196,249,214,'0','M19_SQUARE','','','',''),
('40225', 'sq_13_t', '40101', 'IDV_RACEPAN',263,176,276,194,'0','M19_SQUARE','','','',''),
('40226', 'sq_13_b', '40101', 'IDV_RACEPAN',263,196,276,214,'0','M19_SQUARE','','','',''),
('40227', 'sq_14_t', '40101', 'IDV_RACEPAN',263,176,303,194,'0','M19_SQUARE','','','',''),
('40228', 'sq_14_b', '40101', 'IDV_RACEPAN',290,196,303,214,'0','M19_SQUARE','','','',''),
('40229', 'sq_15_t', '40101', 'IDV_RACEPAN',319,179,337,192,'0','M19_SQUARE','','','',''),
('40230', 'sq_15_b', '40101', 'IDV_RACEPAN',319,196,337,208,'0','M19_SQUARE','','','',''),

('40231', 'sq_16_t','40101', 'IDV_RACEPAN',316,159,334,172,'0','M19_SQUARE','','','',''),
('40232', 'sq_16_b','40101', 'IDV_RACEPAN',336,159,336,159,'0','M19_SQUARE','','','',''),
('40233', 'sq_17_t','40101', 'IDV_RACEPAN',317,119,335,132,'0','M19_SQUARE','','','',''),
('40234', 'sq_17_b','40101', 'IDV_RACEPAN',317,135,335,148,'0','M19_SQUARE','','','',''),
('40235', 'sq_18_t','40101', 'IDV_RACEPAN',299,113,312,131,'0','M19_SQUARE','','','',''),
('40236', 'sq_18_b','40101', 'IDV_RACEPAN',299,113,312,151,'0','M19_SQUARE','','','',''),
('40237', 'sq_18_t','40101', 'IDV_RACEPAN',299,113,312,131,'0','M19_SQUARE','','','',''),
('40238', 'sq_18_b','40101', 'IDV_RACEPAN',299,113,312,151,'0','M19_SQUARE','','','',''),
('40239', 'sq_19_t','40101', 'IDV_RACEPAN',273,113,236,131,'0','M19_SQUARE','','','',''),
('40240', 'sq_19_b','40101', 'IDV_RACEPAN',273,133,286,151,'0','M19_SQUARE','','','',''),
('40241', 'sq_20_t','40101', 'IDV_RACEPAN',247,113,260,131,'0','M19_SQUARE','','','',''),
('40242', 'sq_20_b','40101', 'IDV_RACEPAN',273,133,260,151,'0','M19_SQUARE','','','',''),
('40243', 'sq_21_t','40101', 'IDV_RACEPAN',219,113,232,132,'0','M19_SQUARE','','','',''),
('40244', 'sq_21_b','40101', 'IDV_RACEPAN',219,133,232,151,'0','M19_SQUARE','','','',''),
('40245', 'sq_22_t','40101', 'IDV_RACEPAN',219,113,232,132,'0','M19_SQUARE','','','',''),
('40246', 'sq_22_b','40101', 'IDV_RACEPAN',219,133,232,151,'0','M19_SQUARE','','','',''),
('40247', 'sq_23_t','40101', 'IDV_RACEPAN',165,113,178,131,'0','M19_SQUARE','','','',''),
('40248', 'sq_23_b','40101', 'IDV_RACEPAN',165,133,178,151,'0','M19_SQUARE','','','',''),
('40249', 'sq_24_t','40101', 'IDV_RACEPAN',136,112,151,132,'0','M19_SQUARE','','','',''),
('40250', 'sq_24_b','40101', 'IDV_RACEPAN',136,133,150,151,'0','M19_SQUARE','','','',''),
('40251', 'sq_25_t','40101', 'IDV_RACEPAN',111,112,123,132,'0','M19_SQUARE','','','',''),
('40252', 'sq_25_b','40101', 'IDV_RACEPAN',111,133,123,151,'0','M19_SQUARE','','','',''),
('40253', 'sq_26_t','40101', 'IDV_RACEPAN',84,113,97,132,'0','M19_SQUARE','','','',''),
('40254', 'sq_26_b','40101', 'IDV_RACEPAN',84,133,97,151,'0','M19_SQUARE','','','',''),
('40255', 'sq_27_t','40101', 'IDV_RACEPAN',57,113,70,132,'0','M19_SQUARE','','','',''),
('40256', 'sq_27_b','40101', 'IDV_RACEPAN',57,133,70,151,'0','M19_SQUARE','','','',''),
('40257', 'sq_28_t','40101', 'IDV_RACEPAN',19,116,37,129,'0','M19_SQUARE','','','',''),
('40258', 'sq_28_b','40101', 'IDV_RACEPAN',28,131,46,144,'0','M19_SQUARE','','','',''),

('40259', 'sq_29_t','40101', 'IDV_RACEPAN',32,82,50,95, '0','M19_SQUARE','','','', ''),
('40260', 'sq_29_b','40101', 'IDV_RACEPAN',19,97,37,110, '0','M19_SQUARE','','','', ''),
('40261', 'sq_30_t','40101', 'IDV_RACEPAN',56,74,69,92, '0','M19_SQUARE','','','', ''),
('40262', 'sq_30_b','40101', 'IDV_RACEPAN',56,93,69,112, '0','M19_SQUARE','','','', ''),
('40263', 'sq_31_t','40101', 'IDV_RACEPAN',81,74,94,92, '0','M19_SQUARE','','','', ''),
('40264', 'sq_31_b','40101', 'IDV_RACEPAN',81,94,94,112, '0','M19_SQUARE','','','', ''),
('40265', 'sq_32_t','40101', 'IDV_RACEPAN',110,74,123,92, '0','M19_SQUARE','','','', ''),
('40266', 'sq_32_b','40101', 'IDV_RACEPAN',110,94,123,112, '0','M19_SQUARE','','','', ''),
('40267', 'sq_33_t','40101', 'IDV_RACEPAN',135,74,148,92, '0','M19_SQUARE','','','', ''),
('40268', 'sq_33_b','40101', 'IDV_RACEPAN',135,94,148,112, '0','M19_SQUARE','','','', ''),
('40269', 'sq_34_t','40101', 'IDV_RACEPAN',163,74,176,92, '0','M19_SQUARE','','','', ''),
('40270', 'sq_34_b','40101', 'IDV_RACEPAN',163,94,176,112, '0','M19_SQUARE','','','', ''),
('40271', 'sq_35_t','40101', 'IDV_RACEPAN',187,74,200,92, '0','M19_SQUARE','','','', ''),
('40272', 'sq_35_b','40101', 'IDV_RACEPAN',187,94,200,112, '0','M19_SQUARE','','','', ''),
('40273', 'sq_36_t','40101', 'IDV_RACEPAN',214,74,227,92, '0','M19_SQUARE','','','', ''),
('40274', 'sq_36_b','40101', 'IDV_RACEPAN',214,94,227,112, '0','M19_SQUARE','','','', ''),
('40275', 'sq_37_t','40101', 'IDV_RACEPAN',240,74,253,92, '0','M19_SQUARE','','','', ''),
('40276', 'sq_37_b','40101', 'IDV_RACEPAN',240,94,253,112, '0','M19_SQUARE','','','', ''),
('40277', 'sq_38_t','40101', 'IDV_RACEPAN',265,74,278,92, '0','M19_SQUARE','','','', ''),
('40278', 'sq_38_b','40101', 'IDV_RACEPAN',265,94,278,112, '0','M19_SQUARE','','','', ''),

('40279', 'sq_39_t','40101', 'IDV_RACEPAN',291,74,305,92,'0','M19_SQUARE','','','', ''),
('40280', 'sq_39_b','40101', 'IDV_RACEPAN',291,94,305,112,'0','M19_SQUARE','','','', ''),
('40281', 'sq_40_t','40101', 'IDV_RACEPAN',320,74,358,92,'0','M19_SQUARE','','','',''),
('40282', 'sq_40_b','40101', 'IDV_RACEPAN',320,94,358,112,'0','M19_SQUARE','','','',''),
('40283', 'sq_41_t','40101', 'IDV_RACEPAN',344,74,358,92,'0','M19_SQUARE','','','',''),
('40284', 'sq_41_b','40101', 'IDV_RACEPAN',344,94,358,112,'0','M19_SQUARE','','','',''),
('40285', 'sq_42_t','40101', 'IDV_RACEPAN',371,81,390,95,'0','M19_SQUARE','','','',''),
('40286', 'sq_42_b','40101', 'IDV_RACEPAN',371,97,390,110,'0','M19_SQUARE','','','',''),
('40287', 'sq_43_t','40101', 'IDV_RACEPAN',370,121,388,134,'0','M19_SQUARE','','','',''),
('40288', 'sq_43_b','40101', 'IDV_RACEPAN',390,121,408,134,'0','M19_SQUARE','','','',''),
('40289', 'sq_44_t','40101', 'IDV_RACEPAN',370,145,388,159,'0','M19_SQUARE','','','',''),
('40290', 'sq_44_b','40101', 'IDV_RACEPAN',390,145,408,159,'0','M19_SQUARE','','','',''),
('40291', 'sq_45_t','40101', 'IDV_RACEPAN',386,163,404,176,'0','M19_SQUARE','','','',''),
('40292', 'sq_45_b','40101', 'IDV_RACEPAN',386,178,404,192,'0','M19_SQUARE','','','',''),
('40293', 'sq_46_t','40101', 'IDV_RACEPAN',414,163,428,181,'0','M19_SQUARE','','','',''),
('40294', 'sq_46_b','40101', 'IDV_RACEPAN',414,183,428,202,'0','M19_SQUARE','','','',''),
('40295', 'sq_47_t','40101', 'IDV_RACEPAN',444,164,462,177,'0','M19_SQUARE','','','',''),
('40296', 'sq_47_b','40101', 'IDV_RACEPAN',444,181,462,193,'0','M19_SQUARE','','','',''),
('40297', 'sq_48_t','40101', 'IDV_RACEPAN',440,147,458,160,'0','M19_SQUARE','','','',''),
('40298', 'sq_48_b','40101', 'IDV_RACEPAN',460,147,478,160,'0','M19_SQUARE','','','',''),
('40299', 'sq_49_t','40101', 'IDV_RACEPAN',440,122,458,135,'0','M19_SQUARE','','','',''),
('40300', 'sq_49_b','40101', 'IDV_RACEPAN',460,122,478,136,'0','M19_SQUARE','','','',''),

('40301', 'sq_50_t','40101', 'IDV_RACEPAN',438,97,456,110,'0','M19_SQUARE','','','',''),
('40302', 'sq_50_b','40101', 'IDV_RACEPAN',458,97,477,110,'0','M19_SQUARE','','','',''),
('40303', 'sq_51_t','40101', 'IDV_RACEPAN',437,72,455,85,'0','M19_SQUARE','','','',''),
('40304', 'sq_51_b','40101', 'IDV_RACEPAN',457,72,475,85,'0','M19_SQUARE','','','',''),
('40305', 'sq_52_t','40101', 'IDV_RACEPAN',438,34,456,48,'0','M19_SQUARE','','','',''),
('40306', 'sq_52_b','40101', 'IDV_RACEPAN',438,50,456,64,'0','M19_SQUARE','','','',''),
('40307', 'sq_53_t','40101', 'IDV_RACEPAN',417,29,430,48,'0','M19_SQUARE','','','',''),
('40308', 'sq_53_b','40101', 'IDV_RACEPAN',417,49,430,67,'0','M19_SQUARE','','','',''),
('40309', 'sq_54_t','40101', 'IDV_RACEPAN',391,29,404,47,'0','M19_SQUARE','','','',''),
('40310', 'sq_54_b','40101', 'IDV_RACEPAN',391,49,404,67,'0','M19_SQUARE','','','',''),
('40311', 'sq_55_t','40101', 'IDV_RACEPAN',365,29,378,47,'0','M19_SQUARE','','','',''),
('40312', 'sq_55_b','40101', 'IDV_RACEPAN',365,49,378,67,'0','M19_SQUARE','','','',''),
('40313', 'sq_56_t','40101', 'IDV_RACEPAN',339,29,352,47,'0','M19_SQUARE','','','',''),
('40314', 'sq_56_b','40101', 'IDV_RACEPAN',339,49,352,67,'0','M19_SQUARE','','','',''),
('40315', 'sq_57_t','40101', 'IDV_RACEPAN',312,29,325,47,'0','M19_SQUARE','','','',''),
('40316', 'sq_57_b','40101', 'IDV_RACEPAN',312,49,325,67,'0','M19_SQUARE','','','',''),
('40317', 'sq_58_t','40101', 'IDV_RACEPAN',286,29,299,47,'0','M19_SQUARE','','','',''),
('40318', 'sq_58_b','40101', 'IDV_RACEPAN',286,49,299,67,'0','M19_SQUARE','','','',''),
('40319', 'sq_59_t','40101', 'IDV_RACEPAN',263,29,276,47,'0','M19_SQUARE','','','',''),
('40320', 'sq_59_b','40101', 'IDV_RACEPAN',263,49,276,67,'0','M19_SQUARE','','','',''),
('40321', 'sq_60_t','40101', 'IDV_RACEPAN',236,29,249,47,'0','M19_SQUARE','','','',''),
('40322', 'sq_60_b','40101', 'IDV_RACEPAN',236,49,249,67,'0','M19_SQUARE','','','',''),
('40323', 'sq_61_t','40101', 'IDV_RACEPAN',209,29,221,47,'0','M19_SQUARE','','','',''),
('40324', 'sq_61_b','40101', 'IDV_RACEPAN',209,49,221,67,'0','M19_SQUARE','','','',''),
('40325', 'sq_62_t','40101', 'IDV_RACEPAN',184,29,197,47,'0','M19_SQUARE','','','',''),
('40326', 'sq_62_b','40101', 'IDV_RACEPAN',184,49,197,67,'0','M19_SQUARE','','','','');






delete from transitions where [automaton] like 'M19_%';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code","guard")
VALUES 

('M19_SQUARE', '0', 'squareempty', 'C_ACCEPT', '', 'ISA_PLAYTOKEN','',''),
('M19_SQUARE', 'squareempty', 'squareholding', 'DROP', '', '','
    SHOW(WOBJECT); 
',''),
('M19_SQUARE', 'squareholding', 'squareempty', 'GRAB', '', '', 'SHOW();',''),
('M19_SQUARE', 'squareempty', 'resetting', 'WAIT', '','SIG_RESET', '',''),
('M19_SQUARE', 'resetting', '0', 'Z_EPSILON', '', '', '',''),


('M19_SPIN', '0', 'loaded', 'MOV', 'WSPRITE', 'WIP1', '', '', ''),
('M19_SPIN', 'loaded', 'waiting', 'WAIT', '0', 'SIG_SPIN', '', '', ''),
('M19_SPIN', 'waiting', 'spinning', 'ASHOW', 'WSPRITE', 'V_LOOP', '', '', ''),
('M19_SPIN', 'spinning', 'picking', 'ESTIME', '', '2', '',''),
('M19_SPIN', 'picking', 'lookup', 'RAND', 'WIP2','1','',''),
('M19_SPIN','lookup','showframe','MOV','BFRAME', 'WRAND','
    MAPi(BFRAME,WIP3);
    SHOW(BFRAME);',''),
('M19_BOTSPIN', 'showframe', 'loaded', 'Z_EPSILON', '','','','');  






























