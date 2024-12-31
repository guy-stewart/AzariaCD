
delete from views where [view_name] like 'IDV_CULTMEN%';
delete from views where [view_name] like 'IDV_CFGCULT%';
delete from views where [view_name] like 'IDV_CFGPLAY%';
INSERT INTO "main"."views" ("view_name", "Z", "backgroundAudio", "locator_view", "behavior_id", "portal_filename", "surface_filename") 
VALUES 
('IDV_CFGPLAYER',   '1', '3', '1', '1', 'wdepanel.vct', 'CFGPlayer'),
('IDV_CFGPLAYERNEW','1', '0', '1', '2', 'wdepanel.vct', 'CFGPlayerName'),
('IDV_CFGCULTURE',  '1', '0', '1', '2', 'wdepanel.vct', 'cultmen');

-- see topmenu.sql!
-- also this! M_BTN_1phase


delete from controls where [view] like 'IDV_CFGPLAYER%';
delete from controls where [view] like 'IDV_CFGCULTURE%';

insert into controls ([view], [id],[type],[image],[image_selected],[x],[y],[border],[values],[default],[ids_font],[font_color],[code]) values


-- This is the listbox showing the players active characters
('IDV_CFGPLAYER', 'PLAYERCFG_2', 'LISTBOX',  'cListBxM',       'cListBxM',           220, 70,  7, 'player_characters','2','IDS_FONTENG_BIG','#e0e0e0',
    'myvar = LB_SELECTED_ROW_TEXT;
    LOADVIEW(myvar);
'),

--center this for the new player name
('IDV_CFGPLAYERNEW', 'PLAYERCFG_1', 'EDITBOX',  'IDS_STD_EDITBOXM', 'IDS_BTN_DOWN_HI',  320, 70, 10, 'Player Handle', 'default','IDS_FONTTNR16',0x44FFFF,''),


('IDV_CFGCULTURE', 'PLAYERCFG_4', 'CHECKBOX', 'IDS_BTN_VILCULT',  'IDS_BTN_VILCULT_HI',  50, 160, 0, '','','',0,'');

delete from machines where [name] like 'S00_PLAYERMENU%';
delete from machines where [name] like 'S00_PLAYERMENU%';
INSERT INTO "main"."machines" ("name", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") VALUES 

('BTN_CFGPLAYER_NEW','IDV_CFGPLAYER',      536,100,600,150,2,'M_BTN_2phase','IDV_CFGPLAYERNEW','IDS_BTN_NEW_HI','IDS_BTN_NEW',''),
('BTN_CFGPLAYER_NEXT','IDV_CFGPLAYER',      536,247,600,300,2,'M_BTN_2phase','IDV_CFGCULTURE','IDS_BTN_OK_HI','IDS_BTN_OK',''),
('BTN_CFGCULTURE_CREATE','IDV_CFGCULTURE',  536,247,600,300,2,'M_BTN_2phase','IDV_CFGPLAYER','IDS_BTN_CREATEH','IDS_BTN_CREATE',''),
('S00_PLAYERMENU','IDV_CULTMEN', '0', '0', '0', '0', '2', 'M_BEGIN', '', '', '', '');

delete from transitions where [automaton] like 'M_BEGIN%';
--The Bard is attached to the ID and loaded at startup
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code", "guard", "doc") VALUES 
('M_BEGIN', '0', '10', 'ASSIGN', 'DETIME', '1500', '', '', '');


