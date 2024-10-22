
delete from sounds where name = 'SOUND_BAA';
delete from sounds where name = 'SOUND_GALLOP';
insert into sounds values ('SOUND_BAA','baa',3000); 
insert into sounds values ('SOUND_GALLOP','gallop',3001); 

delete from spr_names where [name] like 'IDS_SHEEP%';
INSERT INTO "main"."spr_names" ("name", "value") VALUES 
('IDS_SHEEPR', 'sheepr'),
('IDS_SHEEPRB', 'sheeprb'),
('IDS_SHEEPRU', 'sheepru'),
('IDS_SHEEP_X', 'sheep_x'),
('IDS_SHEEPQ', 'sheepq'),
('IDS_SHEEP_ID', 'sheep_id');

delete from objects where [object] like 'IDD_SHEEP%';
insert into objects values
('IDD_SHEEP_Y', 'IDC_NULL','sheepr','sheepr','sheepr'),
('IDD_SHEEP_X', 'IDC_NULL','sheep_x','sheep_x','sheep_x'),
('IDD_SHEEP_I', 'IDC_NULL','sheepq','sheepq','sheepq'),
('IDD_SHEEP_ID','IDC_NULL','sheep_id','sheep_id','sheep_id');


delete from machines where [name] like 'S_SHEEP%';
insert into machines values 
(0,'S_SHEEP_1',0,'IDV_PATH1',957,163,1057,250,0,'M_PESTER','IDS_SHEEPQ', 'IDS_SHEEPR', 'IDS_SHEEPQ', 'IDS_SHEEPRB',0 );

delete from transitions where automaton = 'M_PESTER';

insert into transitions values
('M_PESTER',0,1,'MOV','BFRAME','0','','',''),
('M_PESTER',1,2,'ASHOW','WIP1', '','','',''),
('M_PESTER',2,3,'CLICK','','',
'PLAYWAVE(SOUND_BAA);
 ASHOW(WIP2);','',''),
('M_PESTER',3,4,'MOVETO','mark2','4000',
'STOPWAVE();
 ASHOW(WIP3);','',''),
('M_PESTER',4,5,'CLICK','','',
'PLAYWAVE(SOUND_BAA);
PLAYWAVE(SOUND_GALLOP);
 ASHOW(WIP4);','',''),
('M_PESTER',5,2,'MOVETO','mark1','2500',
'STOPWAVE();
ASHOW(WIP1);','','');

