
delete from games;


delete from spr_names where [name] like 'IDS_SHEEP%';
INSERT INTO "main"."spr_names" ("name", "value") VALUES 
('IDS_SHEEP_Y', 'sheep'),
('IDS_SHEEP_X', 'sheep_x'),
('IDS_SHEEP_I', 'sheep_i'),
('IDS_SHEEP_ID', 'sheep_id');

delete from objects where [object] like 'IDD_SHEEP%';
insert into objects values
('IDD_SHEEP_Y', 'IDC_NULL','sheep','sheep','sheep'),
('IDD_SHEEP_X', 'IDC_NULL','sheep_x','sheep_x','sheep_x'),
('IDD_SHEEP_I', 'IDC_NULL','sheep_i','sheep_i','sheep_i'),
('IDD_SHEEP_ID','IDC_NULL','sheep_id','sheep_id','sheep_id');


delete from machines where [name] like 'S_SHEEP%';
insert into machines values 
(0,'S_SHEEP_1',0,'IDV_PATH1',1023,100,1184,200,0,'M_PESTER','IDS_SHEEP_I', 'IDS_SHEEP_X', 'IDS_SHEEP_Y', '',0 );

delete from transitions where automaton = 'M_PESTER';

insert into transitions values
('M_PESTER',0,1,'MOV','BFRAME','0','','',''),
('M_PESTER',1,2,'ASHOW','WIP1', '','','',''),
('M_PESTER',2,3,'CLICK','','',
'PLAYWAVE(SOUND_LEVER);
 ASHOW(WIP2);','',''),
('M_PESTER',3,4,'MOVETO','mark2','2000',
'STOPWAVE();
SHOW(WIP3);','',''),
('M_PESTER',4,5,'CLICK','','',
'PLAYWAVE("SOUND_LEVER");
HFLIP(WIP2);
ASHOW(WIP2);','',''),
('M_PESTER',5,2,'MOVETO','mark1','2000',
'STOPWAVE();
SHOW(WIP1);','','');

