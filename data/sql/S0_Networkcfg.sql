


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

delete from transitions where automaton = 'M_NW_INDC_NAME';
delete from transitions where automaton = 'M_NW_INDC_LIGHT';

insert into transitions values
('M_NW_INDC_NAME',0,1,'MOV','BFRAME','0','','',''),
('M_NW_INDC_NAME',1,2,'SHOW','WIP1', '','','',''),
('M_NW_INDC_NAME',2,'on','CLICK','', '','SIGNAL(S0_NW_INDC_LIGHT, SIG_ON);','',''),
('M_NW_INDC_NAME','on','off','CLICK','', '','  SIGNAL(S0_NW_INDC_LIGHT, SIG_OFF);','',''),
('M_NW_INDC_NAME','off',2,'CLICK','', '',' SIGNAL(S0_NW_INDC_LIGHT, SIG_RESET);','',''),



('M_NW_INDC_LIGHT',0,1,'MOV','BFRAME','0','','',''),
('M_NW_INDC_LIGHT',1,'waiting','SHOW','WIP1', '','','',''),
('M_NW_INDC_LIGHT','waiting','on','WAIT','','SIG_ON','
    WRITE("GOT MY SIG_ON");
   
','',''),
('M_NW_INDC_LIGHT','on','waiting','ZEPSILON','', '','
    WRITE("Waiting in on position");
    ASHOW(WIP3);

','',''),
('M_NW_INDC_LIGHT','waiting','off','WAIT','','SIG_OFF','
    WRITE("GOT MY SIG_OFF");
    SHOW(WIP4);
','','
'),
('M_NW_INDC_LIGHT','off','waiting','ZEPSILON','', '','','',''),

('M_NW_INDC_LIGHT','waiting','1','WAIT','','SIG_RESET','','','');




