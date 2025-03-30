-- The following has been replaced!! --- S00_mainmenu

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





-- delete from machines where view_name = 'IDV_TOPMENU';
-- insert into machines ([name],[view_name],[left],[top],[right],[bottom],[local_visible],[dfa_name], [wip1_name],[wip2_name],[wip3_name],[wip4_name]) values
-- ('BTN_QUIT','IDV_TOPMENU',390,216,518,271,2,'M_BTN_1phase','0','IDS_BTN_QUIT','',''),
-- ('BTN_CREDITS','IDV_TOPMENU',793,221,921,276,2,'M_BTN_1phase','IDV_CREDITS','IDS_BTN_CREDITS','',''),
-- ('BTN_CFGAV','IDV_TOPMENU',1438,224,1566,279,2,'M_BTN_1phase','IDV_CFGAV','IDS_BTN_AUDIO','',''),
-- ('BTN_CFGPLAYER','IDV_TOPMENU',1916,222,2044,277,2,'M_BTN_1phase','IDV_CFGPLAYER','IDS_BTN_PLAYER','',''),
-- ('BTN_CFGGAME','IDV_TOPMENU',2216,219,2344,274,2,'M_BTN_1phase','IDV_CFGGAME','IDS_BTN_GAME','',''),
-- ('BTN_CFGPROVIDER','IDV_TOPMENU',2568,216,2696,271,2,'M_BTN_1phase','IDV_CFGNW1','IDS_BTN_NETWORK','',''),
-- ('BTN_HELP','IDV_TOPMENU',3000,215,3128,270,2,'M_BTN_1phase','IDV_HELP','IDS_BTN_HELP','','');



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