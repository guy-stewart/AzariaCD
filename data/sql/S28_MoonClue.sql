delete from games;


delete from triggers where [from] like 'IDV_MOON4%';
INSERT INTO "main"."triggers" ("from", "left", "top", "right", "bottom", "to", "facing")
VALUES 
('IDV_MOON4', '2341', '165', '2440', '220', 'IDV_CU_GRASSPATCH1', '278');

delete from panel_nav where [back] like 'IDV_MOON4%';
INSERT INTO "main"."panel_nav" ("from", "forward", "back") VALUES
 ('IDV_CU_GRASSPATCH1', '', 'IDV_MOON4');

 delete from spr_names where name = 'IDS_PARCHBENT';
insert into spr_names values ('IDS_PARCHBENT','parchbent',90000);

delete from machines where [name] like 'S28_PARCHFIND%';
INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name","wip3_name",  "wip4_name") 
VALUES  
('96080', 'S28_PARCHFIND', '40001', 'IDV_CU_GRASSPATCH1',34,24,227,153, '0','M_PLANTBIN','IDD_DIARY5','IDS_PARCHBENT','60','');
