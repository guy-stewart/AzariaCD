
delete from games;

delete from spr_names where [name] like 'IDS_CURTAIN%';

insert into spr_names values ('IDS_CURTAIN1','CURT','25060');
insert into spr_names values ('IDS_CURTAINSD','CURTSD','25061');
insert into spr_names values ('IDS_CURTAINUP','CURTUP','25062');

delete from machines where [name] like 'S16_CURT%';

INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name","wip3_name",  "wip4_name") 
VALUES  
('16080', 'S16_CURT_1', '4865', 'IDV_VIL3',990,141,1077,197, '0','M_ANIBIN','IDS_CURTAIN1','IDD_BAIT1','',''),
('16080', 'S16_CURT_1SD', '4867', 'IDV_VIL5',1860,90,1923,199, '0','M_ANIBIN','IDS_CURTAINSD','IDD_BAIT1','',''),
('16080', 'S16_CURT_2UP', '4865', 'IDV_VIL3',1088,44,1144,81, '0','M_ANIBIN','IDS_CURTAINUP','IDD_BAIT1','','');
-- delete from transitions where [automaton] like 'M16_CURT%';
-- INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code","guard")
-- VALUES 

