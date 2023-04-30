delete from games;

delete from idv where name = 'IDV_LUNCHCU';
delete from views where view_name = 'IDV_LUNCHCU';
delete from machines where name = 'S11_LUNCH';
delete from machines where name = 'S11_LUNCHCRUMBS';

delete from panel_nav where "from" = 'IDV_LUNCHCU';
delete from objects where object = 'IDD_LUNCHCRUMBS';
delete from spr_names where name = 'IDS_LUNCHCRUMBS';

delete from machines where name = 'S11_SHOREBIN';


INSERT INTO "main"."objects" ("object", "object_id", "class", "class_id", "icon", "cursor", "actor") 
VALUES 
('IDD_LUNCHCRUMBS', '16010', 'IDC_NULL', '0', 'LUNCHCRUMBS', 'LUNCHCRUMBS', 'LUNCHCRUMBS');

INSERT INTO "main"."spr_names" ("name", "value", "id") 
VALUES 
('IDS_LUNCHCRUMBS', 'LUNCHCRUMBS', '16010');

INSERT INTO "main"."idv" ("name", "id") VALUES ('IDV_LUNCHCU', '4361');
INSERT INTO "main"."views" ("view_id", "view_name", "Z", "backgroundAudio", "locator_view", "behavior_id", "portal_filename", "surface_filename") 
VALUES 
('4361', 'IDV_LUNCHCU', '1', '1', '1', '1', 'smlpanel.vct', 'LUNCHCU');

INSERT INTO "main"."panel_nav" ("from", "forward", "back") VALUES ('IDV_LUNCHCU', '', 'IDV_FH1PAN');

INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip1_value", "wip2_name", "wip2_value", "wip3_name", "wip3_value", "wip4_name", "wip4_value") 
VALUES 
('4463', 'S11_LUNCH', '4356', 'IDV_FH1PAN', '2149', '134', '2259', '201', '2', 'M_LUNCHPORTAL', 'IDV_LUNCHCU', '4361', 'IDV_LUNCHCU', '4361', '60', '0', '', '0'),
('4464', 'S11_LUNCHCRUMBS', '4361', 'IDV_LUNCHCU', '139', '139', '213', '216', '2', 'M_BIN', 'IDD_LUNCHCRUMBS', '16005', '', '', '', '', '', '');

INSERT INTO "main"."transitions" ("name", "state", "new_state", "opcode", "param_1", "param_2", "code") 
VALUES 
('M_LUNCHPORTAL', '0', '1', 'CLICK', '0', '0', ''),
('M_LUNCHPORTAL', '1', '0', 'LOADVIEW', '0', 'IDV_LUNCHCU', '');


INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip1_value", "wip2_name", "wip2_value", "wip3_name", "wip3_value", "wip4_name", "wip4_value") 
VALUES 
('4461', 'S11_SHOREBIN', '4360', 'IDV_SHORE', '129', '87', '321', '213', '0', 'M_ANIBIN', 'IDS_FISH', '0', 'IDD_BAIT3', '0', '60', '0', '', '0');