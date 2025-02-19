
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
('IDS_SHEEP_ID', 'sheep_id'),
('IDS_SHEEP_WTS', 'sheepwts'),
('IDS_SHEEP_WRL', 'sheepwrl'),
('IDS_SHEEP_WRR', 'sheepwrr');

delete from objects where [object] like 'IDD_SHEEP%';
insert into objects values
('IDD_SHEEP_Y', 'IDC_NULL','sheepr','sheepr','sheepr'),
('IDD_SHEEP_X', 'IDC_NULL','sheep_x','sheep_x','sheep_x'),
('IDD_SHEEP_I', 'IDC_NULL','sheepq','sheepq','sheepq'),
('IDD_SHEEP_ID','IDC_NULL','sheep_id','sheep_id','sheep_id'),
('IDD_SHEEP_WTS','IDC_NULL','sheepwts','sheepwts','sheepwts');

delete from machines where [name] like 'S_SHEEP%';
insert into machines values 
(0,'S_SHEEP_1',0,'IDV_PATH1',957,163,1057,250,0,'M_PESTER','IDS_SHEEPQ', 'IDS_SHEEPR', 'IDS_SHEEPQ', 'IDS_SHEEPRB',0,'IDD_SHEEP_I','mark'),
(0,'S_SHEEP_2',0,'IDV_MOON1',1205,186,1305,286,0,'M_PESTER','IDS_SHEEP_WTS', 'IDS_SHEEP_WRL', 'IDS_SHEEP_WTS', 'IDS_SHEEP_WRR',0,'IDD_SHEEP_WTS','markw'),


(0,'S_SHEEP_PEN1',0,'IDV_VIL4',44,150,124,213,0,'M_ANIMALPEN','IDS_SHEEPQ', 'IDD_SHEEP_I', '', '',0,'',''),

(0,'S_SHEEP_PEN2',0,'IDV_VIL4',100,150,180,213,0,'M_ANIMALPEN','IDS_SHEEP_WTS', 'IDD_SHEEP_WTS', '', '',0,'','');

delete from transitions where automaton = 'M_PESTER';
delete from transitions where automaton = 'M_ANIMALPEN';

insert into transitions values


('M_ANIMALPEN',0,'idle','DROP','WIP2','','
    ADDI(LWISDOM,1);
    SIGNALi(0,SID_ID); 
    ASHOW(WIP1);
','',''),
('M_ANIMALPEN','idle','annoyed','CLICK','','',
'PLAYWAVE(SOUND_BAA);
','',''),
('M_ANIMALPEN','annoyed','idle','Z_EPSILON','','','','',''),
('M_ANIMALPEN','idle','captured','DROP','IDD_ENCHANT','','
    PLAYWAVE(SOUND_BAA);
    SHOW(0);
    HANDOFF(0,WIP2);
','',''),
('M_ANIMALPEN','captured','idle','DROP','WIP2','',
'STOPWAVE();
ASHOW(WIP1);','',''),



('M_PESTER',0,1,'MOV','BFRAME','0','
 BPARM = WIP6 + "1";
 WPARM = WIP6 + "2";
','',''),
('M_PESTER',1,'rightidle','ASHOW','WIP1', '','','',''),
('M_PESTER','rightidle','startled','CLICK','','',
'PLAYWAVE(SOUND_BAA);
 ASHOW(WIP2);','',''),
('M_PESTER','rightidle','captured','DROP','IDD_ENCHANT','','
    ADDI(LWISDOM,1); 
    SIGNALi(0,SID_ID);
    PLAYWAVE(SOUND_BAA);
    SHOW(0);
    HANDOFF(0,WIP5);
','',''),
('M_PESTER','startled','leftidle','MOVETO','WPARM','4000',
'STOPWAVE();
 ASHOW(WIP3);','',''),
('M_PESTER','leftidle','runback','CLICK','','',
'PLAYWAVE(SOUND_BAA);
PLAYWAVE(SOUND_GALLOP);
 ASHOW(WIP4);','',''),
('M_PESTER','leftidle','captured','DROP','IDD_ENCHANT','','
    PLAYWAVE(SOUND_BAA);
    SHOW(0);
    HANDOFF(0,WIP5);
','',''),
('M_PESTER','captured','rightidle','DROP','WIP5','','
    ASHOW(WIP1);
','',''),
('M_PESTER','runback','rightidle','MOVETO','BPARM','2500',
'STOPWAVE();
ASHOW(WIP1);','','');

