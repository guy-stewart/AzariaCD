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

delete from transitions where automaton = 'M_TINYFISH';
delete from transitions where automaton = 'M_LUNCHPORTAL';
delete from transitions where automaton = 'M_XANIPORTAL';

delete from objects where object = 'IDD_LUNCHCRUMBS';
insert into objects values
('IDD_LUNCHCRUMBS','ISA_BAIT','LUNCHCRUMBS','LUNCHCRUMBS','LUNCHCRUMBS');



INSERT INTO "main"."spr_names" ("name", "value", "id") 
VALUES 
('IDS_LUNCHCRUMBS', 'LUNCHCRUMBS', '16012'),
('IDS_RIPPLE', 'ripple', '16011');

INSERT INTO "main"."idv" ("name", "id") VALUES ('IDV_LUNCHCU', '4361');
INSERT INTO "main"."views" ("view_name", "Z", "backgroundAudio", "locator_view", "behavior_id", "portal_filename", "surface_filename") 
VALUES 
('IDV_LUNCHCU', '1', '1', '1', '1', 'smlpanel.vct', 'LUNCHCU');

INSERT INTO "main"."panel_nav" ("from", "forward", "back") VALUES ('IDV_LUNCHCU', '', 'IDV_FH1PAN');


INSERT INTO "main"."machines" ("name", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name")
VALUES 
('S11_RIPPLE', 'IDV_FH1PAN', '988', '265', '1057', '299', '2', 'M_XANIPORTAL', 'IDS_RIPPLE', '', 'IDV_SHORE', ''),
('S11_LUNCHCRUMBS', 'IDV_LUNCHCU', '139', '139', '213', '216', '2', 'M_BIN', 'IDD_LUNCHCRUMBS', '', '', ''),
('S11_LUNCH', 'IDV_FH1PAN', '2149', '134', '2259', '201', '2', 'M_LUNCHPORTAL', 'IDV_LUNCHCU', 'IDV_LUNCHCU', '60', ''),
('S11_SHOREBIN', 'IDV_SHORE', '129', '87', '321', '213', '0', 'M_TINYFISH', 'IDS_FISH', 'IDD_BAIT3', '60','');

INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code") 
VALUES 
('M_LUNCHPORTAL', '0', '1', 'CLICK', '0', '0', ''),
('M_LUNCHPORTAL', '1', '0', 'LOADVIEW', 'IDV_LUNCHCU', '', ''),



 ('M_XANIPORTAL', '0', '1', 'MOV', 'WSPRITE', 'WIP1',''),
 ('M_XANIPORTAL', '1', '2', 'ASHOW', 'WSPRITE', 'V_LOOP',''),
 ('M_XANIPORTAL', '2', '3', 'CLICK', '0', '0',''),
 ('M_XANIPORTAL', '3', '1', 'LOADVIEW', 'WIP3', '','');



INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code") 
VALUES 

('M_TINYFISH', '0', '2', 'Z_EPSILON', '', '', ''),
('M_TINYFISH', '2', '3', 'DROP', 'ISA_BAIT', '', ''),
('M_TINYFISH', '3', '4', 'MOV', 'WSPRITE', 'WIP1', ''),
('M_TINYFISH', '4', '5', 'ESTIME', '', '1', ''),
('M_TINYFISH', '5', '6', 'ASHOW', 'WSPRITE', 'V_LOOP', ''),
('M_TINYFISH', '6', '7', 'ESTIME', '', '4', ''), -- these 2 the same
('M_TINYFISH', '6', '7', 'GRAB', 'WIP2', '', '
    ADDI(LWISDOM,3);
    SIGNALi(0,SID_ID);
'),

('M_TINYFISH', '7', '8', 'CLEAR', 'WOBJECT', '', ''),
('M_TINYFISH', '8', '9', 'CLEAR', 'WPARM', '', ''),
('M_TINYFISH', '9', '10', 'CLEAR', 'WSPRITE', '', ''),
('M_TINYFISH', '10', '2', 'ASHOW', '', '', '');


