delete from games;


delete from "main"."views" where [view_name] like 'IDV_KAMIOZA';
INSERT INTO "main"."views" ("view_id", "view_name", "Z", "backgroundAudio", "locator_view", "behavior_id", "portal_filename", "surface_filename") 
VALUES 
('9801', 'IDV_KAMIOZA', '1', '0', '1', '6', 'surround.vct', 'KAMIOZA');


INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name","wip3_name",  "wip4_name") 
VALUES 
('9920', 'S29_KAMALTAR', '9801', 'IDV_KAMIOZA', '3129', '180', '3186', '200', '0','M_KAMALTAR','S29_KAMRAIN','','', ''),
('9921', 'S29_KAMRAIN',  '9801', 'IDV_KAMIOZA', '3010', '10', '55', '300', '0','M_KAMRAIN','','','', '');

delete from transitions where automaton = 'M_KAMALTAR';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code","guard")
VALUES 
('M_KAMALTAR','0','5','ACCEPT','','IDD_SEED','',''),
('M_KAMALTAR','5','10','DROP','','','',''),
('M_KAMALTAR','10','20','ASHOW','WOBJECT','','',''),
('M_KAMALTAR', '20','21','SIGNAL', 'WIP1', 'SIG_SHOW', '',''),
('M_KAMALTAR','21','0','GRAB','','','
    SHOW();
',''),


('M_KAMRAIN','0','1','WAIT','','SIG_SHOW','',''),
('M_KAMRAIN','1','0','VIDEO', '', 'IDS_RAIN', '','');