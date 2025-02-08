


/*

'IDV_CFGNW1A', - Create a friend code
'IDV_CFGNW1B', - Join with friend code
'IDV_CFGNW1C', - Review list of public games to join



*/

delete from spr_names where [name] like 'IDS_BTN_CREATE%';

INSERT INTO "main"."spr_names" ("name", "value") VALUES 
('IDS_BTN_CREATE', 'btncreate'),
('IDS_BTN_CREATEH', 'btncreateh');





delete from controls where [view] like 'IDV_CFGNW1%';
insert into controls ([view], [id],[type],[image],[image_selected],[x],[y],[border],[values],[default],[ids_font],[font_color],[code]) values


('IDV_CFGNW1A', 'NW1A_2', 'EDITBOX',  'IDS_STD_EDITBOXM', 'IDS_BTN_DOWN_HI',    152,    87, 10, 'Name of game', 'default','IDS_FONTTNR16',0x44FFFF,''),
('IDV_CFGNW1A', 'NW1A_3', 'BUTTON',   'IDS_BTN_CREATE',   'IDS_BTN_CREATEH',    425,    97, 0, '','','',0,''),
('IDV_CFGNW1A', 'NW1A_1', 'BUTTON',   'IDS_BTN_CANCEL',   'IDS_BTN_CANCEL_HI',  490,    97, 0, '','','',0,
    'LOADVIEW(IDV_CFGNW1);'),
('IDV_CFGNW1A', 'NW1A_4', 'BUTTON',   'IDS_BTN_OK',       'IDS_BTN_OK_HI',       536,  247, 0, '','','',0,
'LOADVIEW(IDV_CTLTEST2);');  

--Recreating a network list and join set

delete from controls where view = 'IDV_CFGNW1C';
insert into controls ([view], [id],[type],[image],[image_selected],[x],[y],[border],[values],[default],[ids_font],[font_color],[code]) values

('IDV_CFGNW1C', 'CFGNW1C1', 'BUTTON','IDS_BTN_NEW','IDS_BTN_NEW_HI',400, 30, 0,'','','',0,'call("system/createroom");'),
('IDV_CFGNW1C', 'CFGNW1C2', 'BUTTON','IDS_BTN_LOAD','IDS_BTN_LOAD_HI',400, 100, 0,'','','',0,'call("system/rooms");'),

('IDV_CFGNW1C', 'CFGNW1C3', 'EDITBOX','IDS_STD_EDITBOXM', 'IDS_BTN_DOWN_HI',50, 30, 10, 'MySession', 'default','IDS_FONTTNR12',0x44FFFF,''),
('IDV_CFGNW1C', 'CFGNW1C4', 'LISTBOX','cListBxL','cListBxL',       50, 90, 7, 'sessions','','',0,
'myvar = LB_SELECTED_ROW_TEXT;
LOADVIEW(myvar);');








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




