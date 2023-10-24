
delete from games;

----RESOURCES 

delete from machines where [name] like 'S03_DIARYBIN';

INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") 
VALUES 
('226', 'S03_DIARYBIN', '200', 'IDV_ORIE', '946', '86', '999', '142', '2', 'M_BIN', 'IDD_DIARY2', '', '', '');


delete from triggers where [to] like 'IDV_DOORS%';
INSERT INTO "main"."triggers" ("from", "left", "top", "right", "bottom", "to", "facing")
VALUES 
('IDV_ORIE', '763', '83', '833', '147', 'IDV_TECHPAN', '');