
delete from games;

delete from machines where name = 'SMP_EYEINFO';
delete from transitions where [name] like 'M_EYEINF%';
--delete from transitions where name = 'M_IDSPELL';
delete from idv where [name] like 'IDV_SPELLP%';
delete from views where [view_name] like 'IDV_SPELLP%';


INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") 
VALUES 
('112', 'SMP_EYEINFO', '1', 'IDV_MAIN_PANEL', '290', '12', '344', '64', '3', 'M_EYEINFO', '', '', '', '');


INSERT INTO "main"."idv" ("name", "id") VALUES ('IDV_SPELLPAN', '8706');

INSERT INTO "main"."views" ("view_id", "view_name", "Z", "backgroundAudio", "locator_view", "behavior_id", "portal_filename", "surface_filename") 
VALUES ('8706', 'IDV_SPELLPAN', '1', '0', '1', '1', 'wdepanel.vct', 'PARCHPAN');


INSERT INTO "main"."transitions" ("name", "state", "new_state", "opcode", "param_1", "param_2", "code") 
VALUES 
('M_EYEINFO', '0', '100', 'DROP', '0', '0', 'PLAYWAVE(SOUND_POPUP);ASHOW(WOBJECT);CLEAR(WVIEWID);'),
('M_EYEINFO', '0', '10', 'GRAB', '0', '0', ''),
('M_EYEINFO', '10', '0', 'LOADVIEW', 'WVIEWID', '', 'CLEAR(WVIEWID);SHOW(0);'),
('M_EYEINFO', '100', '120', 'IS_A', 'WOBJECT', 'IDC_SCROLL', 
        'MOV(WPARM,WOBJECT);
        MAPi(WPARM,S12_SCROLL);
        MOV(WVIEWID,LVIEW);
        SIGNALi(SIG_SHOW,S12_SHIELD);
        SIGNALi(SIG_SHOW,S12_WORD);
        SIGNALi(SIG_SHOW,S12_ING1);
        SIGNALi(SIG_SHOW,S12_ING2);
        SIGNALi(SIG_SHOW,S12_ING3);
        SIGNALi(SIG_SHOW,S12_ING4);
        SIGNALi(SIG_SHOW,S12_NYST);
       '),
('M_EYEINFO', '100', '0', 'Z_EPSILON', '0', '0', ''),
('M_EYEINFO', '120', '0', 'LOADVIEW', '0', 'IDV_SPELLPAN', '');


