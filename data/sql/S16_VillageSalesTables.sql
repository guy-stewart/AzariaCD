delete from games;

delete from spr_names where [name] like 'IDS_STAMP%';
insert into spr_names values ('IDS_STAMP','STAMP','25050');



delete from objects where object = 'IDD_STAMP';

insert into objects values
('IDD_STAMP',25050,'IDC_NULL','STAMP','STAPM','STAMP');







