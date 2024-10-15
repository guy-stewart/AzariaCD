delete from games;

-- insert into marks values ('mark1', 'idv_path1', '300', '794');

delete from machines where name = 'S3002_PATH1';

insert into machines values (0,'S3002_PATH1',0,'IDV_PATH1',300,120,450,280,0,'M_CLICKBAIT','IDS_BAIT0', '3', '', 'SOUND_LEVER',0 );

delete from transitions where automaton = 'M_CLICKBAIT';

insert into transitions values
('M_CLICKBAIT',0,1,'MOV','BFRAME','0','','',''),
('M_CLICKBAIT',1,2,'SHOW','WIP1', '','','',''),
('M_CLICKBAIT',2,3,'CLICK','','',
'PLAYWAVE(SOUND_LEVER);
ASHOW(WIP1);','',''),
('M_CLICKBAIT',3,4,'MOVETO','mark2','5000',
'STOPWAVE();
SHOW(WIP1);','',''),
('M_CLICKBAIT',4,5,'CLICK','','',
'PLAYWAVE("SOUND_LEVER");
ASHOW(WIP1);','',''),
('M_CLICKBAIT',5,2,'MOVETO','mark1','5000',
'STOPWAVE();
SHOW(WIP1);','','');
