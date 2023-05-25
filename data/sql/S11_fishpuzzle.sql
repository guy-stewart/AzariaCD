delete from games;

delete from idv where name = 'IDV_LUNCHCU';
delete from views where view_name = 'IDV_LUNCHCU';

delete from panel_nav where "from" = 'IDV_LUNCHCU';

delete from spr_names where name = 'IDS_LUNCHCRUMBS';
delete from spr_names where name = 'IDS_RIPPLE';

delete from machines where name = 'S11_LUNCH';
delete from machines where name = 'S11_LUNCHCRUMBS';
delete from machines where name = 'S11_SHOREBIN';
delete from machines where name = 'S11_RIPPLE';

delete from transitions where name = 'M_TINYFISH';
delete from transitions where name = 'M_PORTAL';

delete from objects where object = 'IDD_LUNCHCRUMBS';
insert into objects values
('IDD_LUNCHCRUMBS',0x3e8a,'ISA_BAIT','LUNCHCRUMBS','LUNCHCRUMBS','LUNCHCRUMBS');



INSERT INTO "main"."spr_names" ("name", "value", "id") 
VALUES 
('IDS_LUNCHCRUMBS', 'LUNCHCRUMBS', '16012'),
('IDS_RIPPLE', 'ripple', '16011');

INSERT INTO "main"."idv" ("name", "id") VALUES ('IDV_LUNCHCU', '4361');
INSERT INTO "main"."views" ("view_id", "view_name", "Z", "backgroundAudio", "locator_view", "behavior_id", "portal_filename", "surface_filename") 
VALUES 
('4361', 'IDV_LUNCHCU', '1', '1', '1', '1', 'smlpanel.vct', 'LUNCHCU');

INSERT INTO "main"."panel_nav" ("from", "forward", "back") VALUES ('IDV_LUNCHCU', '', 'IDV_FH1PAN');


INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name")
VALUES 
('4465', 'S11_RIPPLE', '4356', 'IDV_FH1PAN', '988', '265', '1057', '299', '2', 'M_PORTAL', 'IDS_RIPPLE', 'IDV_SHORE', '', ''),
('4464', 'S11_LUNCHCRUMBS', '4361', 'IDV_LUNCHCU', '139', '139', '213', '216', '2', 'M_BIN', 'IDD_LUNCHCRUMBS', '', '', ''),
('4463', 'S11_LUNCH', '4356', 'IDV_FH1PAN', '2149', '134', '2259', '201', '2', 'M_LUNCHPORTAL', 'IDV_LUNCHCU', 'IDV_LUNCHCU', '60', ''),
('4461', 'S11_SHOREBIN', '4360', 'IDV_SHORE', '129', '87', '321', '213', '0', 'M_TINYFISH', 'IDS_FISH', 'IDD_BAIT3', '60','');

INSERT INTO "main"."transitions" ("name", "state", "new_state", "opcode", "param_1", "param_2", "code") 
VALUES 
('M_LUNCHPORTAL', '0', '1', 'CLICK', '0', '0', ''),
('M_LUNCHPORTAL', '1', '0', 'LOADVIEW', '0', 'IDV_LUNCHCU', '');



INSERT INTO "main"."transitions" ("name", "state", "new_state", "opcode", "param_1", "param_2", "code") 
VALUES 
--('M_TINYFISH', '0', '2', 'O_ACCEPT', '0', 'IDD_LUNCHCRUMBS', ''),
('M_TINYFISH', '0', '2', 'C_ACCEPT', '0', 'ISA_BAIT', ''),
('M_TINYFISH', '2', '3', 'DROP', '0', '0', ''),
('M_TINYFISH', '3', '4', 'MOV', 'WSPRITE', 'WIP1', ''),
('M_TINYFISH', '4', '5', 'ESTIME', '', '1', ''),
('M_TINYFISH', '5', '6', 'ASHOW', 'WSPRITE', 'V_LOOP', ''),
('M_TINYFISH', '6', '7', 'ESTIME', '', '4', ''), -- these 2 the same
('M_TINYFISH', '6', '7', 'GRAB', 'WIP2', '', ''),

('M_TINYFISH', '7', '8', 'CLEAR', 'WOBJECT', '', ''),
('M_TINYFISH', '8', '9', 'CLEAR', 'WPARM', '', ''),
('M_TINYFISH', '9', '10', 'CLEAR', 'WSPRITE', '', ''),
('M_TINYFISH', '10', '2', 'ASHOW', '', '', '');


INSERT INTO "main"."transitions" ("name", "state", "new_state", "opcode", "param_1", "param_2", "code")
 VALUES 
('M_PORTAL', '0', '1', 'MOV', 'WSPRITE', 'WIP1', ''),
('M_PORTAL', '1', '2', 'ASHOW', 'WSPRITE', 'V_LOOP', ''),
('M_PORTAL', '2', '3', 'CLICK', '0', '0', ''),
('M_PORTAL', '3', '1', 'LOADVIEW', '0', 'IDV_SHORE', '');


-- INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") 
-- VALUES ('4460', 'S11_SHORE', '4356', 'IDV_FH1PAN', '980', '219', '1000', '281', '2', 'M_PORTAL', 'IDV_SHORE', 'IDV_SHORE', '60', '');