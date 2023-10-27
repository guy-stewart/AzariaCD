
delete from games;

----RESOURCES 

delete from views where [view_name] like 'IDV_GUITECHPAN%';

INSERT INTO "main"."views" ("view_id", "view_name", "Z", "backgroundAudio", "locator_view", "behavior_id", "portal_filename", "surface_filename") 
VALUES 
('8720', 'IDV_GUITECHPAN', '1', '0', '1', '1', 'wdepanel.vct', 'guitechpan');

delete from panel_nav where [from] like 'IDV_GUITECHPAN%';
INSERT INTO "main"."panel_nav" ("from", "forward", "back") 
VALUES ('IDV_GUITECHPAN', '', 'IDV_ORIE');

delete from machines where [name] like 'S03_DIARYBIN';
INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") 
VALUES 
('226', 'S03_DIARYBIN', '200', 'IDV_ORIE', '946', '86', '999', '142', '2', 'M_BIN', 'IDD_DIARY2', '', '', '');


delete from triggers where [to] like 'IDV_DOORS%';
delete from triggers where [to] like 'IDV_TECHPAN%';
delete from triggers where [to] like 'IDV_GUITECHPAN%';
INSERT INTO "main"."triggers" ("from", "left", "top", "right", "bottom", "to", "facing")
VALUES 
('IDV_ORIE', '763', '83', '833', '147', 'IDV_GUITECHPAN', '');