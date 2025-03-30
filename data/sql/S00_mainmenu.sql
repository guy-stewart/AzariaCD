

--add network choice sprites IDS_BTN_NW1A,B & C

delete from spr_names where [name] like 'IDS_CFG_HL%';

INSERT INTO "main"."spr_names" ("name", "value") VALUES 

('IDS_CFG_HL_CONTINUE',     'cfg_hl_continue'),
('IDS_CFG_HL_NETWORK',      'cfg_hl_Network'),
('IDS_CFG_HL_NEWCHAR',      'cfg_hl_NewChar'),
('IDS_CFG_HL_NEWGM',        'cfg_hl_NewGM');




--old main
delete from machines where view_name = 'IDV_MAINMENU'; 

--new main
delete from machines where view_name = 'IDV_MAINMENU';
insert into machines ([name],[view_name],[left],[top],[right],[bottom],[local_visible],[dfa_name], [wip1_name],[wip2_name],[wip3_name],[wip4_name]) values
('BTN_CFGCONTINUE','IDV_MAINMENU',      290,  45,     495,  85,   2,'M_BTN_1phase','IDV_ORIE',          'IDS_CFG_HL_CONTINUE','',''),
('BTN_CFGGAME','IDV_MAINMENU',          290,  98,     495,  139,  2,'M_BTN_1phase','IDV_CFGNEWGAME',  'IDS_CFG_HL_NEWGM','',''),
('BTN_CFGPLAYERNEW','IDV_MAINMENU',     290,  154,    495,  192,  2,'M_BTN_1phase','IDV_CFGPLAYERNEW',       'IDS_CFG_HL_NEWCHAR','',''),
('BTN_CFGPROVIDER','IDV_MAINMENU',      290,  207,    495,  246,  2,'M_BTN_1phase','IDV_CFGNW1',        'IDS_CFG_HL_NETWORK','','');

delete from transitions where automaton = 'M_BTN_ContGame';
insert into transitions ([automaton], [state], [new_state], [opcode], [param_1], [param_2], [code], [guard], [doc]) values
('M_BTN_ContGame','0','0','CLICK','','',
'PLAYWAVE(SOUND_BTNPRESS);
predicate localplayer(account_id,name,viewname);
localplayer(,,?LVIEW);
LOADVIEW(LVIEW);
SHOW();','',''),
('M_BTN_ContGame','0','0','DRAGFOCUS','0','FALSE','SHOW();','',''),
('M_BTN_ContGame','0','0','DRAGFOCUS','0','TRUE',
'WSPRITE=WIP2;
SHOW(WSPRITE);
PLAYWAVE(SOUND_BTNDRAG);','','');

delete from machines where view_name = 'IDV_CFGNW1';
insert into machines ([name],[view_name],[left],[top],[right],[bottom],[local_visible],[dfa_name], [wip1_name],[wip2_name],[wip3_name],[wip4_name]) values
('BTN_CFG_NW1A','IDV_CFGNW1', 27,67,195,187,2,'M_BTN_1phase','IDV_CFGNW1A','IDS_BTN_NW1A','',''),
('BTN_CFG_NW1B','IDV_CFGNW1',237,67,405,187,2,'M_BTN_1phase','IDV_CFGNW1B','IDS_BTN_NW1B','',''),
('BTN_CFG_NW1C','IDV_CFGNW1',445,67,614,187,2,'M_BTN_1phase','IDV_CFGNW1C','IDS_BTN_NW1C','','');


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


--add network config views 
delete from "main"."views" where [view_name] like 'IDV_CFGNW1%';
INSERT INTO "main"."views" ("view_name", "Z", "backgroundAudio", "locator_view", "behavior_id", "portal_filename", "surface_filename") 
VALUES 
('IDV_CFGNW1', '1', '3', '1', '1', 'wdepanel.vct', 'NW1'),
('IDV_CFGNW1A', '1', '3', '1', '1', 'wdepanel.vct', 'NW1A'),
('IDV_CFGNW1B', '1', '3', '1', '1', 'wdepanel.vct', 'NW1B'),
('IDV_CFGNW1C', '1', '3', '1', '1', 'wdepanel.vct', 'NWback'),
('IDV_CFGNW1C2', '1', '3', '1', '1', 'wdepanel.vct', 'NWback');
--CFGPROV (original menu)!


--add network choice sprites IDS_BTN_NW1A,B & C
delete from spr_names where [name] like 'IDS_BTN_NW1%';

INSERT INTO "main"."spr_names" ("name", "value") VALUES 
('IDS_BTN_NW1A', 'NW1A_bright'),
('IDS_BTN_NW1B', 'NW1B_bright'),
('IDS_BTN_NW1C', 'NW1C_bright');
