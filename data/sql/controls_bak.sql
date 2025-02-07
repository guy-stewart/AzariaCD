


/*

CONTROL(view, id, type, image, image_selected, position(x,y), border, values, default, ids_font, font_color )

Type:
LABEL
BUTTON
CHECKBOX
LISTBOX
EDITBOX

ids_font:
IDS_FONTENG
IDS_FONTPAR
IDS_FONTVILL
IDS_FONTCITY
IDS_FONTENG_BIG
IDS_FONTPAR_BIG
IDS_FONTVILL_BIG
IDS_FONTCITY_BIG
IDS_FONTTNR12
IDS_FONTTNR14
IDS_FONTTNR16
IDS_FONTTNR18
IDS_FONTTNB12
IDS_FONTTNB14
IDS_FONTTNB16
IDS_FONTTNB18

font_colors:
RED   = 0x0000FF
GREEN = 0x00FF00
BLUE  = 0xFF0000
*/

create table IF NOT EXISTS controls (
    [view]    text,
    [id]   text,
    [type] text,
    [image]     text,
    [image_selected]     text,
    [x] int,
    [y] int,
    [border] int,
    [values] text,
    [default] text,
    [ids_font] text,
    [font_color] TEXT,
    [code] text,
    PRIMARY KEY ([view],[id]) ON CONFLICT REPLACE);

delete from controls where view = 'IDV_CTLTEST1';
delete from controls where view = 'IDV_CTLTEST2';
delete from controls where view = 'IDV_CTLTEST3';

insert into controls ([view], [id],[type],[image],[image_selected],[x],[y],[border],[values],[default],[ids_font],[font_color],[code]) values
('IDV_CTLTEST1', '1', 'LABEL',    'IDS_REDDOT',       '',                   200, 130, 0,
' This is a test string
      line two
      line three
and this is line FOUR.','', 'IDS_FONTTNR12', 0xFF8888,''), 

('IDV_CTLTEST1', '2', 'BUTTON',   'IDS_BTN_OK',       'IDS_BTN_OK_HI',       50,  60, 0, '','','',0,'LOADVIEW(IDV_CTLTEST2);'),
('IDV_CTLTEST1', '3', 'BUTTON',   'IDS_BTN_DOWN',     'IDS_BTN_OK_HI',       50, 110, 0, '','','',0,''),
('IDV_CTLTEST1', '4', 'CHECKBOX', 'IDS_BTN_VILCULT',  'IDS_BTN_VILCULT_HI',  50, 160, 0, '','','',0,''),
('IDV_CTLTEST1', 'MY_EDIT_BOX', 'EDITBOX',  'IDS_STD_EDITBOXM', 'IDS_BTN_DOWN_HI',    200,  50, 10, 'My Edit Box', 'default','IDS_FONTTNR12',0x44FFFF,
'myvar=get_control_value("IDV_CTLTEST1", "MY_EDIT_BOX");
write("TEXT==",myvar);'),

('IDV_CTLTEST2', 'B1', 'BUTTON',   'IDS_BTN_SAVE',     'IDS_BTN_SAVE_HI', 50, 35, 0, '','','',0,''),
('IDV_CTLTEST2', 'B2', 'BUTTON',   'IDS_BTN_OK',       'IDS_BTN_OK_HI',   482, 217, 0, '','','',0,''),
('IDV_CTLTEST2', 'E2', 'EDITBOX',  'IDS_STD_EDITBOXM', 'IDS_BTN_DOWN_HI', 150, 30, 10, 'My Edit Box', 'default','IDS_FONTTNR12',0x44FFFF,''),
('IDV_CTLTEST2', 'L3', 'LISTBOX',  'cListBxL',         'cListBxL',        50, 90, 7, 'ctltest2','','',0,
'myvar=get_control_value("IDV_CTLTEST2", "L3");
set_control_value("IDV_CTLTEST2", "E2", myvar);'),

('IDV_CTLTEST3', '1', 'BUTTON',   'IDS_BTN_OK',       'IDS_BTN_OK_HI',       50, 35, 0, '','','',0,''),
('IDV_CTLTEST3', '2', 'EDITBOX',  'IDS_STD_EDITBOXM', 'IDS_BTN_DOWN_HI',     150, 30, 10, 'My Edit Box', 'default','IDS_FONTTNR12',0x44FFFF,''),
('IDV_CTLTEST3', '3', 'LISTBOX',  'cListBxL',       'cListBxL',       50, 90, 7, 'ctltest2','','',0,
'myvar = LB_SELECTED_ROW_TEXT;
LOADVIEW(myvar);
');

delete from views where view_name = 'IDV_CTLTEST1';
delete from views where view_name = 'IDV_CTLTEST2';
delete from views where view_name = 'IDV_CTLTEST3';
delete from views where view_name = 'IDV_CTLTEST4';
insert into views ([view_name],[Z],[backgroundAudio],[locator_view],[behavior_id],[portal_filename],[surface_filename] ) values
('IDV_CTLTEST1',1,3,1,1,'wdepanel.vct','spacebak'),
('IDV_CTLTEST2',1,3,1,1,'wdepanel.vct','spacebak'),
('IDV_CTLTEST3',1,3,1,1,'wdepanel.vct','spacebak'),
('IDV_CTLTEST4',1,3,1,1,'wdepanel.vct','spacebak');

drop table if exists ctltest2;
create table if not exists ctltest2 (value text not null, [alt] text, primary key (value) on conflict replace);
insert into ctltest2 values
("IDV_CTLTEST1", "alt one"),
("IDV_PATH1", "alt two"),
("IDV_FH1PATH", "alt three");
