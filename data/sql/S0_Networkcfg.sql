


/*

'IDV_CFGNW1A', - Create a friend code
'IDV_CFGNW1B', - Join with friend code
'IDV_CFGNW1C', - Review list of public games to join



*/

delete from spr_names where [name] like 'IDS_BTN_CREATE%';
delete from spr_names where [name] like 'IDS_BTN_REFRESH%';
delete from spr_names where [name] like 'IDS_BTN_NEW2%';
delete from spr_names where [name] like 'IDS_BTN_EDITBOXMBLANK%';
INSERT INTO "main"."spr_names" ("name", "value") VALUES 
('IDS_BTN_CREATE', 'btncreate'),
('IDS_BTN_CREATEH', 'btncreateh'),

('IDS_BTN_REFRESH', 'btnrefresh'),
('IDS_BTN_REFRESHHI', 'btnrefreshhi'),

('IDS_BTN_NEW2', 'btnnew2'),
('IDS_BTN_NEW2HI', 'btnnew2hi'),
('IDS_STD_EDITBOXMBLANK', 'ceditbxmblank');

--**************************************PRIVATE GAMES*******************************************************************
delete from controls where [view] like 'IDV_CFGNW1%';

insert into controls ([view], [id],[type],[image],[image_selected],[x],[y],[border],[values],[default],[ids_font],[font_color],[code]) values


('IDV_CFGNW1A', 'NW1A_2', 'EDITBOX',  'IDS_STD_EDITBOXM', 'IDS_BTN_DOWN_HI',    152,    87, 10, 'Name', 'default','IDS_FONTTNR16',0x44FFFF,''),

('IDV_CFGNW1A', 'NW1A_3', 'BUTTON',   'IDS_BTN_CREATE',   'IDS_BTN_CREATEH',    425,    97, 0, '','','',0,'
    token=get_control_value("IDV_CFGNW1A", "NW1A_2");
    create_session(token);
    roomid=getOpenPlay("roomid");
    set_control_value("IDV_CFGNW1A", "NW1A_5", roomid);
    set_control_value("IDV_MAIN_PANEL", "NW_PLAQUE1", roomid);
'),
-- put the roomid into a field to share
-- field has to be wrapped by a machine to share the token
('IDV_CFGNW1A', 'NW1A_5', 'EDITBOX',  'IDS_STD_EDITBOXMBLANK', 'IDS_BTN_DOWN_HI',    273,    181, 10, '', 'default','IDS_FONTTNR16',0x44FFFF,''),

--buttons
('IDV_CFGNW1A', 'NW1A_1', 'BUTTON',   'IDS_BTN_CANCEL',   'IDS_BTN_CANCEL_HI',  490,    97, 0, '','','',0,
    'LOADVIEW(IDV_CFGNW1);'),
('IDV_CFGNW1A', 'NW1A_4', 'BUTTON',   'IDS_BTN_OK',       'IDS_BTN_OK_HI',       536,  247, 0, '','','',0,
'LOADVIEW(IDV_ORIE);');  

delete from machines where [name] like 'S_CFGNW1A_SHARE%';
INSERT INTO "main"."machines" ("name", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") VALUES 
('S_CFGNW1A_SHARE','IDV_CFGNW1A',273,181,373,230,2,'M_SHARE','IDS_SPRINGS','','','');

delete from "main"."transitions" where [automaton] like 'M_SHARE%';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code", "guard", "doc") VALUES 
('M_SHARE','0','UNLOCKED','Z_EPSILON','','','','',''),
('M_SHARE','UNLOCKED','UNLOCKED','CLICK','','','
    roomId = getOpenPlay("roomid");
    share(roomId, "share.txt");
','','');

--********ENTER PRIVATE GAME ID *************************************************************************************************

insert into controls ([view], [id],[type],[image],[image_selected],[x],[y],[border],[values],[default],[ids_font],[font_color],[code]) values
('IDV_CFGNW1B', 'NW1B_1', 'EDITBOX',  'IDS_STD_EDITBOXMBLANK', 'IDS_BTN_DOWN_HI',    290, 120, 10, '', 'default','IDS_FONTTNR16',0x44FFFF,''),
('IDV_CFGNW1B', 'NW1B_3', 'BUTTON',   'IDS_BTN_OK',       'IDS_BTN_OK_HI',       400,  165, 0, '','','',0,'
    token=get_control_value("IDV_CFGNW1B", "NW1B_3");
    create_session(token);
    set_control_value("IDV_MAIN_PANEL", "NW_PLAQUE1", token);
    LOADVIEW(IDV_ORIE);
'),
('IDV_CFGNW1B', 'NW1B_2', 'BUTTON',   'IDS_BTN_CANCEL',   'IDS_BTN_CANCEL_HI',  467,    165, 0, '','','',0,
    'LOADVIEW(IDV_CFGNW1);');


--****************************************************************************************************************************
--**************************************PUBLIC GAMES*******************************************************************
--Recreating a network list and join set ----------------------------
delete from machines where [name] like 'S_CFGNWSERVER%';
INSERT INTO "main"."machines" ("name", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") VALUES 
('S_CFGNWSERVER','IDV_CFGNW1C',30,70,40,70,2,'M_ANI_BULLET','IDS_SPRINGS','','','');

delete from "main"."transitions" where [automaton] like 'M_ANI_BULLET%';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code", "guard", "doc") VALUES 
('M_ANI_BULLET', 0, 1, 'MOV', 'WSPRITE', 'WIP1', '', NULL, NULL),
('M_ANI_BULLET', 1, 2, 'ASHOW', 'WSPRITE', 'V_LOOP', '', NULL, NULL),
('M_ANI_BULLET', 2, 0, 'WAIT', '', 'SIG_RESET', '
    predicate sessions(name, roomid, clients);
    call("system/publicrooms"); 
    control_refresh("IDV_CFGNW1C","CFGNW1C_4"); 
', NULL, NULL);

delete from controls where [view] like 'IDV_CFGNW1C%';
insert into controls ([view], [id],[type],[image],[image_selected],[x],[y],[border],[values],[default],[ids_font],[font_color],[code]) values

-- It would be nice to have seclection of different server/providers here
('IDV_CFGNW1C','CFGNW1C_1','LABEL','IDS_CLEARBACK','',30, 50, 0,'Active Name Servers','', 'IDS_FONTTNB20', 0x44FFFF,''),
('IDV_CFGNW1C','CFGNW1C_2','LABEL','IDS_CLEARBACK','',70, 80, 0,'Public Beta 1','', 'IDS_FONTTNB16', 0xFEFEFE,''),
('IDV_CFGNW1C','CFGNW1C_3', 'LISTBOX','cListBxL','cListBxL',       305, 45, 10, 'sessions','','',0,'
    myvar = LB_SELECTED_ROW_TEXT;
    join_session(myvar);
    set_control_value("IDV_MAIN_PANEL", "NW_PLAQUE1", myvar);
    loadview(IDV_ORIE);
'),
('IDV_CFGNW1C','CFGNW1C_4', 'BUTTON','IDS_BTN_NEW2','IDS_BTN_NEW2HI',545, 250, 0,'','','',0,'
   loadview(IDV_CFGNW1C2);
'),
('IDV_CFGNW1C','CFGNW1C_5', 'BUTTON','IDS_BTN_REFRESH','IDS_BTN_REFRESHHI',455, 250, 0,'','','',0,'
     call("system/publicrooms"); 
     control_refresh("IDV_CFGNW1C","CFGNW1C_4"); 
'),
-- control_refresh("IDV_CFGNW1C","CFGNW1C_4");','','').
-- on this sub menu we create a new public room --------------------------
('IDV_CFGNW1C2', 'CFGNW1C2_4', 'LABEL',    'IDS_CLEARBACK','',  150, 120, 0,'Create Public Game','', 'IDS_FONTTNB20', 0x44FFFF,''),
('IDV_CFGNW1C2', 'CFGNW1C2_2', 'EDITBOX',  'IDS_STD_EDITBOXM', 'IDS_BTN_DOWN_HI',    152,    160, 10, 'Name', 'default','IDS_FONTTNR16',0x44FFFF,''),
('IDV_CFGNW1C2', 'CFGNW1C2_3', 'BUTTON',   'IDS_BTN_CREATE',   'IDS_BTN_CREATEH',    280,    215, 0, '','','',0,'
    token=get_control_value("IDV_CFGNW1C2", "CFGNW1C2_2");
    create_session(token);
    roomid=getOpenPlay("roomid");
    call("system/publicrooms"); 
    control_refresh("IDV_CFGNW1C","CFGNW1C_4");
    LoadVIEW(IDV_ORIE);
'),
('IDV_CFGNW1C2', 'CFGNW1C2_1', 'BUTTON',   'IDS_BTN_CANCEL',   'IDS_BTN_CANCEL_HI',  360,    215, 0, '','','',0,
    'LOADVIEW(IDV_CFGNW1);
');

--****************************************************************************************************************************



delete from transitions where automaton = 'M_NW_INDC_NAME';
delete from transitions where automaton = 'M_NW_INDC_LIGHT';

insert into transitions values
('M_NW_INDC_NAME',0,1,'MOV','BFRAME','0','','',''),
('M_NW_INDC_NAME',1,2,'SHOW','WIP1', '','','',''),
('M_NW_INDC_NAME',2,'launch','CLICK','', '','LOADVIEW(IDV_CFGNW1);','',''),
('M_NW_INDC_NAME','launch','0','Z_EPSILON','', '','','',''),



--wips  'IDS_INDC_NW_WHITE', 'IDS_INDC_NW_GREEN', 'IDS_INDC_BLINK', 'IDS_INDC_NW_RED'

('M_NW_INDC_LIGHT',0,1,'MOV','BFRAME','0','','',''),
('M_NW_INDC_LIGHT',1,'waiting','SHOW','WIP1', '','','',''),
('M_NW_INDC_LIGHT','waiting','on','WAIT','','SIG_ON','
    WRITE("GOT MY SIG_ON");
    WRITE("Waiting in on position");
    ASHOW(WIP3);
','',''),
('M_NW_INDC_LIGHT','on','waiting','ZEPSILON','', '','','',''),
('M_NW_INDC_LIGHT','waiting','good','WAIT','','SIG_UPDATE','
    WRITE("GOT MY SIG_UPDATE");
    SHOW(WIP2);
','',''),
('M_NW_INDC_LIGHT','good','waiting','ESTIME','', '1','
    ASHOW(WIP3);
','',''),
('M_NW_INDC_LIGHT','waiting','off','WAIT','','SIG_OFF','
    WRITE("GOT MY SIG_OFF");
    SHOW(WIP4);
','','
'),
('M_NW_INDC_LIGHT','off','waiting','ZEPSILON','', '','','',''),

('M_NW_INDC_LIGHT','waiting','1','WAIT','','SIG_RESET','','','');




