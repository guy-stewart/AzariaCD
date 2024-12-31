

/*
(0x20,'IDV_TOPMENU',1,0,1,6,'surround.vct','spacemen'),
(0x21,'IDV_CFGPLAYER1',1,0,1,10,'wdepanel.vct','spacebak'),
(0x22,'IDV_CFGPLAYER2',1,0,1,10,'wdepanel.vct','spacebak'),
(0x23,'IDV_CFGPROV',1,0,1,9,'wdepanel.vct','spacebak'),
(0x24,'IDV_CFGSESS',1,0,1,9,'wdepanel.vct','spacebak'),
(0x25,'IDV_CFGNEWSESS',1,0,1,9,'wdepanel.vct','spacebak'),
(0x26,'IDV_CFGGAME',1,0,1,11,'wdepanel.vct','spacebak'),
(0x27,'IDV_CFGAV',1,0,1,12,'wdepanel.vct','spacebak'),
*/


--add network config views 
delete from "main"."views" where [view_name] like 'IDV_CFGNW1%';
INSERT INTO "main"."views" ("view_name", "Z", "backgroundAudio", "locator_view", "behavior_id", "portal_filename", "surface_filename") 
VALUES 
('IDV_CFGNW1', '1', '3', '1', '1', 'wdepanel.vct', 'NW1'),
('IDV_CFGNW1A', '1', '3', '1', '1', 'wdepanel.vct', 'NW1A'),
('IDV_CFGNW1B', '1', '3', '1', '1', 'wdepanel.vct', 'NW1B'),
('IDV_CFGNW1C', '1', '3', '1', '1', 'wdepanel.vct', 'NWback');
--CFGPROV (original menu)!


--add network choice sprites IDS_BTN_NW1A,B & C
delete from spr_names where [name] like 'IDS_BTN_NW1%';

INSERT INTO "main"."spr_names" ("name", "value") VALUES 
('IDS_BTN_NW1A', 'NW1A_bright'),
('IDS_BTN_NW1B', 'NW1B_bright'),
('IDS_BTN_NW1C', 'NW1C_bright');




delete from machines where view_name = 'IDV_TOPMENU';
insert into machines ([name],[view_name],[left],[top],[right],[bottom],[local_visible],[dfa_name], [wip1_name],[wip2_name],[wip3_name],[wip4_name]) values
('BTN_QUIT','IDV_TOPMENU',390,216,518,271,2,'M_BTN_1phase','0','IDS_BTN_QUIT','',''),
('BTN_CREDITS','IDV_TOPMENU',793,221,921,276,2,'M_BTN_1phase','IDV_CREDITS','IDS_BTN_CREDITS','',''),
('BTN_CFGAV','IDV_TOPMENU',1438,224,1566,279,2,'M_BTN_1phase','IDV_CFGAV','IDS_BTN_AUDIO','',''),
('BTN_CFGPLAYER','IDV_TOPMENU',1916,222,2044,277,2,'M_BTN_1phase','IDV_CFGPLAYER','IDS_BTN_PLAYER','',''),
('BTN_CFGGAME','IDV_TOPMENU',2216,219,2344,274,2,'M_BTN_1phase','IDV_CFGGAME','IDS_BTN_GAME','',''),
('BTN_CFGPROVIDER','IDV_TOPMENU',2568,216,2696,271,2,'M_BTN_1phase','IDV_CFGNW1','IDS_BTN_NETWORK','',''),
('BTN_HELP','IDV_TOPMENU',3000,215,3128,270,2,'M_BTN_1phase','IDV_HELP','IDS_BTN_HELP','','');

delete from machines where view_name = 'IDV_CFGNW1';
insert into machines ([name],[view_name],[left],[top],[right],[bottom],[local_visible],[dfa_name], [wip1_name],[wip2_name],[wip3_name],[wip4_name]) values
('BTN_CFG_NW1A','IDV_CFGNW1', 27,67,195,187,2,'M_BTN_1phase','IDV_CFGNW1A','IDS_BTN_NW1A','',''),
('BTN_CFG_NW1B','IDV_CFGNW1',237,67,405,187,2,'M_BTN_1phase','IDV_CFGNW1B','IDS_BTN_NW1B','',''),
('BTN_CFG_NW1C','IDV_CFGNW1',445,67,614,187,2,'M_BTN_1phase','IDV_CFGSESS','IDS_BTN_NW1C','','');


delete from transitions where automaton = 'M_BTN_1phase';
delete from transitions where automaton = 'M_BTN_2phase';
insert into transitions ([automaton], [state], [new_state], [opcode], [param_1], [param_2], [code], [guard], [doc]) values
('M_BTN_1phase','0','0','CLICK','','',
'PLAYWAVE(SOUND_BTNPRESS);
LOADVIEW(WIP1);
SHOW();','',''),
('M_BTN_1phase','0','0','DRAGFOCUS','0','FALSE','SHOW();','',''),
('M_BTN_1phase','0','0','DRAGFOCUS','0','TRUE',
'WSPRITE=WIP2;
SHOW(WSPRITE);
PLAYWAVE(SOUND_BTNDRAG);','',''),


('M_BTN_2phase','0','1','Z_EPSILON','','','
    WSPRITE=WIP3;
    SHOW(WSPRITE);
','',''),
('M_BTN_2phase','1','0','CLICK','','',
'PLAYWAVE(SOUND_BTNPRESS);
LOADVIEW(WIP1);
SHOW();','',''),
('M_BTN_2phase','1','1','DRAGFOCUS','0','FALSE','
WSPRITE=WIP3;
SHOW(WSPRITE);
','',''),
('M_BTN_2phase','1','1','DRAGFOCUS','0','TRUE',
'WSPRITE=WIP2;
SHOW(WSPRITE);
PLAYWAVE(SOUND_BTNDRAG);','','');



-- -- old shcool style 
--  ('M_BTN_2phase', '0', '1', 'CLICK', '0', '0', '', '', ''),
--  ('M_BTN_2phase', '0', '10', 'DRAGFOCUS', '0', 'TRUE', '', '', ''),
--  ('M_BTN_2phase', '0', '20', 'DRAGFOCUS', '0', 'FALSE', '', '', ''),
--  ('M_BTN_2phase', '1', '2', 'PLAYWAVE', '0', 'SOUND_BTNPRESS', '', '', ''),
--  ('M_BTN_2phase', '2', '20', 'LOADVIEW', 'WIP1', '', '', '', ''),
--  ('M_BTN_2phase', '10', '11', 'MOV', 'WSPRITE', 'WIP2', '', '', ''),
--  ('M_BTN_2phase', '11', '12', 'SHOW', 'WSPRITE', '', '', '', ''),
--  ('M_BTN_2phase', '12', '0', 'PLAYWAVE', '0', 'SOUND_BTNDRAG', '', '', ''),
--  ('M_BTN_2phase', '20', '21', 'MOV', 'WSPRITE', 'WIP3', '', '', ''),
--  ('M_BTN_2phase', '21', '0', 'SHOW', 'WSPRITE', '', '', '', '');