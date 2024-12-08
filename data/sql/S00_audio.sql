delete from spr_names where name = 'IDS_YELLOWDOT';
INSERT INTO "main"."spr_names" ("name", "value") 
VALUES 
('IDS_YELLOWDOT', 'yellowdot');


delete from machines where [name] like 'BTN_AUDIO_%';
INSERT INTO "main"."machines" ("name","view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name","wip3_name",  "wip4_name") 
VALUES 
('BTN_AUDIO_MDN',   'IDV_MAIN_PANEL', '472',    '444',  '500', '470', '3',  'M_AUDIO_BTN', 'AUDIO_LEVELS','SIG_MUSIC_DN', '',  ''),
('BTN_AUDIO_MUP',   'IDV_MAIN_PANEL', '602',    '444',  '629', '470', '3',  'M_AUDIO_BTN', 'AUDIO_LEVELS','SIG_MUSIC_UP', '',  ''),
('BTN_AUDIO_EFXDN', 'IDV_MAIN_PANEL', '688',    '444', '716','470', '3',  'M_AUDIO_BTN', 'AUDIO_LEVELS','SIG_SFX_DN',   '',  ''),
('BTN_AUDIO_EFXUP', 'IDV_MAIN_PANEL', '819',    '444',  '846', '470', '3',  'M_AUDIO_BTN', 'AUDIO_LEVELS','SIG_SFX_UP',   '',  '');

delete from machines where [name] like 'POS_AUDIO_%';
delete from machines where [name] like 'AUDIO_LEVELS%';

INSERT INTO "main"."machines" ("name","view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name","wip3_name",  "wip4_name") 
VALUES 
('POS_AUDIO_M1',   'IDV_MAIN_PANEL',   '503', '456',  '511',  '466', '3',  'M_VOL', 'IDS_YELLOWDOT', '', '', ''),
('POS_AUDIO_M2',   'IDV_MAIN_PANEL',   '513', '456',  '521',  '466', '3',  'M_VOL', 'IDS_YELLOWDOT', '', '', ''),
('POS_AUDIO_M3',   'IDV_MAIN_PANEL',   '523', '456',  '531',  '466', '3',  'M_VOL', 'IDS_YELLOWDOT', '', '', ''),
('POS_AUDIO_M4',   'IDV_MAIN_PANEL',   '533', '456',  '541',  '466', '3',  'M_VOL', 'IDS_YELLOWDOT', '', '', ''),
('POS_AUDIO_M5',   'IDV_MAIN_PANEL',   '543', '456',  '551',  '466', '3',  'M_VOL', 'IDS_YELLOWDOT', '', '', ''),
('POS_AUDIO_M6',   'IDV_MAIN_PANEL',   '553', '456',  '561', '466', '3',  'M_VOL', 'IDS_YELLOWDOT', '', '', ''),
('POS_AUDIO_M7',   'IDV_MAIN_PANEL',   '563', '456',  '571', '466', '3',  'M_VOL', 'IDS_YELLOWDOT', '', '', ''),
('POS_AUDIO_M8',   'IDV_MAIN_PANEL',   '573', '456',  '581', '466', '3',  'M_VOL', 'IDS_YELLOWDOT', '', '', ''),
('POS_AUDIO_M9',   'IDV_MAIN_PANEL',   '583', '456',  '591', '466', '3',  'M_VOL', 'IDS_YELLOWDOT', '', '', ''),
('POS_AUDIO_M10',   'IDV_MAIN_PANEL',  '593', '456',  '601', '466', '3',  'M_VOL', 'IDS_YELLOWDOT', '', '', ''),

('POS_AUDIO_SFX1',   'IDV_MAIN_PANEL', '719', '456',  '727',  '466', '3',  'M_VOL', 'IDS_YELLOWDOT', '', '', ''),
('POS_AUDIO_SFX2',   'IDV_MAIN_PANEL', '729', '456',  '737',  '466', '3',  'M_VOL', 'IDS_YELLOWDOT', '', '', ''),
('POS_AUDIO_SFX3',   'IDV_MAIN_PANEL', '739', '456',  '747',  '466', '3',  'M_VOL', 'IDS_YELLOWDOT', '', '', ''),
('POS_AUDIO_SFX4',   'IDV_MAIN_PANEL', '749', '456',  '757',  '466', '3',  'M_VOL', 'IDS_YELLOWDOT', '', '', ''),
('POS_AUDIO_SFX5',   'IDV_MAIN_PANEL', '759', '456',  '767',  '466', '3',  'M_VOL', 'IDS_YELLOWDOT', '', '', ''),
('POS_AUDIO_SFX6',   'IDV_MAIN_PANEL', '769', '456',  '777', '466',  '3',  'M_VOL', 'IDS_YELLOWDOT', '', '', ''),
('POS_AUDIO_SFX7',   'IDV_MAIN_PANEL', '779', '456',  '787', '466',  '3',  'M_VOL', 'IDS_YELLOWDOT', '', '', ''),
('POS_AUDIO_SFX8',   'IDV_MAIN_PANEL', '789', '456',  '797', '466',  '3',  'M_VOL', 'IDS_YELLOWDOT', '', '', ''),
('POS_AUDIO_SFX9',   'IDV_MAIN_PANEL', '799', '456',  '807', '466',  '3',  'M_VOL', 'IDS_YELLOWDOT', '', '', ''),
('POS_AUDIO_SFX10',  'IDV_MAIN_PANEL', '809', '456',  '817', '466',  '3',  'M_VOL', 'IDS_YELLOWDOT', '', '', ''),

('AUDIO_LEVELS',   'IDV_MAIN_PANEL',   '53',  '207',  '61',  '222', '3',  'M_AUDIO_LEVELS', '', '', '', '');



delete from transitions where [automaton] like 'M_AUDIO_%';
delete from transitions where [automaton] like 'M_VOL%';

INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code") 
VALUES 
('M_AUDIO_BTN', '0', '0', 'CLICK','0', '', 'SIGNAL(WIP1,WIP2);}'),

('M_AUDIO_LEVELS', '0', 'READY', 'Z_EPSILON','0', '', '
     //set initial audio level here 
     ASSIGN(WPARM,1+music_volume()); SIGNAL(POS_AUDIO_M2,SIG_ON); //MUSIC
     ASSIGN(BPARM,1+effects_volume()); SIGNAL(POS_AUDIO_SFX2,SIG_ON); //SFX
'),
('M_AUDIO_LEVELS', 'READY', 'CHANGED', 'WAIT','', 'SIG_MUSIC_UP', '
    if (WPARM<7) ADD(WPARM,1);
'),
('M_AUDIO_LEVELS', 'READY', 'CHANGED', 'WAIT','', 'SIG_MUSIC_DN', '
    if (WPARM>0) SUB(WPARM,1);
'),
('M_AUDIO_LEVELS', 'READY', 'CHANGED', 'WAIT','', 'SIG_SFX_UP', '
    if (BPARM<7) ADD(BPARM,1);
'),
('M_AUDIO_LEVELS', 'READY', 'CHANGED', 'WAIT','', 'SIG_SFX_DN', '
    if (BPARM>0) SUB(BPARM,1);
'),
('M_AUDIO_LEVELS', 'CHANGED', 'READY', 'Z_EPSILON','', '',
'    log("turn all the lights off ...");
    SIGNAL(POS_AUDIO_M1,SIG_OFF);
    SIGNAL(POS_AUDIO_M2,SIG_OFF);
    SIGNAL(POS_AUDIO_M3,SIG_OFF);
    SIGNAL(POS_AUDIO_M4,SIG_OFF);
    SIGNAL(POS_AUDIO_M5,SIG_OFF);
    SIGNAL(POS_AUDIO_M6,SIG_OFF); 
    SIGNAL(POS_AUDIO_M7,SIG_OFF); 
    SIGNAL(POS_AUDIO_SFX1,SIG_OFF);
    SIGNAL(POS_AUDIO_SFX2,SIG_OFF);
    SIGNAL(POS_AUDIO_SFX3,SIG_OFF);
    SIGNAL(POS_AUDIO_SFX4,SIG_OFF);
    SIGNAL(POS_AUDIO_SFX5,SIG_OFF);
    SIGNAL(POS_AUDIO_SFX6,SIG_OFF); 
    SIGNAL(POS_AUDIO_SFX7,SIG_OFF); 
    // turn on just the ones we want ...
    SIGNAL("POS_AUDIO_M"+WPARM, SIG_ON);
    SIGNAL("POS_AUDIO_SFX"+BPARM, SIG_ON);

    log("BPARM==", BPARM);
    log("WPARM==", WPARM);
    effects_volume(BPARM);
    music_volume(WPARM);
');

INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code") 
VALUES 
('M_VOL', '0', 'READY', 'Z_EPSILON','0', '', ''),
('M_VOL', 'READY', 'ON', 'WAIT','', 'SIG_ON', 'SHOW(WIP1);'),
('M_VOL', 'READY', 'OFF', 'WAIT','', 'SIG_OFF', 'SHOW();'),
('M_VOL', 'ON', '0', 'Z_EPSILON','0', '', ''),
('M_VOL', 'OFF', '0','Z_EPSILON','0', '', '');