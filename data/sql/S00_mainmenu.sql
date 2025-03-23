-- drop table if exists games;
-- drop table if exists players;
-- drop table if exists env;
-- drop table if exists idv;

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
('BTN_CFGGAME','IDV_MAINMENU',          290,  98,     495,  139,  2,'M_BTN_1phase','IDV_CFGGAME',  'IDS_CFG_HL_NEWGM','',''),
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