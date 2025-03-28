delete from spr_names where name = 'IDS_YELLOWDOT';
INSERT INTO "main"."spr_names" ("name", "value") 
VALUES 
('IDS_YELLOWDOT', 'yellowdot');


delete from machines where [name] like 'BTN_AUDIO_%';
delete from machines where [name] like 'AUD_MUSIC_%';
delete from machines where [name] like 'AUD_AMBIENT_%';
INSERT INTO "main"."machines" ("name","view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name","wip3_name",  "wip4_name") 
VALUES 
('BTN_AUDIO_MDN',   'IDV_MAIN_PANEL', '434',    '142',  '460', '167', '3',  'M_AUDIO_BTN', 'AUDIO_LEVELS','SIG_MUSIC_DN', '',  ''),
('BTN_AUDIO_MUP',   'IDV_MAIN_PANEL', '565',    '142',  '590', '167', '3',  'M_AUDIO_BTN', 'AUDIO_LEVELS','SIG_MUSIC_UP', '',  ''),
('BTN_AUDIO_EFXDN', 'IDV_MAIN_PANEL', '649',    '142',  '676', '167', '3',  'M_AUDIO_BTN', 'AUDIO_LEVELS','SIG_SFX_DN',   '',  ''),
('BTN_AUDIO_EFXUP', 'IDV_MAIN_PANEL', '780',    '142',  '807', '167', '3',  'M_AUDIO_BTN', 'AUDIO_LEVELS','SIG_SFX_UP',   '',  ''),

('AUD_MUSIC_PLAYER', 'IDV_MAIN_PANEL', '4','25','5','26', '3',  'M_PLAYER_MUSIC', '','',   '',  ''),
('AUD_AMBIENT_PLAYER', 'IDV_MAIN_PANEL', '4','25','5','26', '3',  'M_PLAYER_AMBIENT', '','',   '',  '');


delete from machines where [name] like 'POS_AUDIO_%';
delete from machines where [name] like 'AUDIO_LEVELS%';

INSERT INTO "main"."machines" ("name","view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name","wip3_name",  "wip4_name") 
VALUES 
('POS_AUDIO_M1',   'IDV_MAIN_PANEL',   '463', '149',  '471',  '161', '3',  'M_VOL', 'IDS_YELLOWDOT', '', '', ''),
('POS_AUDIO_M2',   'IDV_MAIN_PANEL',   '473', '149',  '481',  '161', '3',  'M_VOL', 'IDS_YELLOWDOT', '', '', ''),
('POS_AUDIO_M3',   'IDV_MAIN_PANEL',   '483', '149',  '491',  '161', '3',  'M_VOL', 'IDS_YELLOWDOT', '', '', ''),
('POS_AUDIO_M4',   'IDV_MAIN_PANEL',   '493', '149',  '501',  '161', '3',  'M_VOL', 'IDS_YELLOWDOT', '', '', ''),
('POS_AUDIO_M5',   'IDV_MAIN_PANEL',   '503', '149',  '511',  '161', '3',  'M_VOL', 'IDS_YELLOWDOT', '', '', ''),
('POS_AUDIO_M6',   'IDV_MAIN_PANEL',   '513', '149',  '521',  '161', '3',  'M_VOL', 'IDS_YELLOWDOT', '', '', ''),
('POS_AUDIO_M7',   'IDV_MAIN_PANEL',   '523', '149',  '531',  '161', '3',  'M_VOL', 'IDS_YELLOWDOT', '', '', ''),
('POS_AUDIO_M8',   'IDV_MAIN_PANEL',   '533', '149',  '541',  '161', '3',  'M_VOL', 'IDS_YELLOWDOT', '', '', ''),
('POS_AUDIO_M9',   'IDV_MAIN_PANEL',   '543', '149',  '551',  '161', '3',  'M_VOL', 'IDS_YELLOWDOT', '', '', ''),
('POS_AUDIO_M10',  'IDV_MAIN_PANEL',   '553', '149',  '561',  '161', '3',  'M_VOL', 'IDS_YELLOWDOT', '', '', ''),

('POS_AUDIO_SFX1',   'IDV_MAIN_PANEL', '680', '149',  '688',  '161', '3',  'M_VOL', 'IDS_YELLOWDOT', '', '', ''),
('POS_AUDIO_SFX2',   'IDV_MAIN_PANEL', '690', '149',  '698',  '161', '3',  'M_VOL', 'IDS_YELLOWDOT', '', '', ''),
('POS_AUDIO_SFX3',   'IDV_MAIN_PANEL', '700', '149',  '708',  '161', '3',  'M_VOL', 'IDS_YELLOWDOT', '', '', ''),
('POS_AUDIO_SFX4',   'IDV_MAIN_PANEL', '710', '149',  '718',  '161', '3',  'M_VOL', 'IDS_YELLOWDOT', '', '', ''),
('POS_AUDIO_SFX5',   'IDV_MAIN_PANEL', '720', '149',  '728',  '161', '3',  'M_VOL', 'IDS_YELLOWDOT', '', '', ''),
('POS_AUDIO_SFX6',   'IDV_MAIN_PANEL', '730', '149',  '738',  '161',  '3',  'M_VOL', 'IDS_YELLOWDOT', '', '', ''),
('POS_AUDIO_SFX7',   'IDV_MAIN_PANEL', '740', '149',  '748',  '161',  '3',  'M_VOL', 'IDS_YELLOWDOT', '', '', ''),
('POS_AUDIO_SFX8',   'IDV_MAIN_PANEL', '750', '149',  '758',  '161',  '3',  'M_VOL', 'IDS_YELLOWDOT', '', '', ''),
('POS_AUDIO_SFX9',   'IDV_MAIN_PANEL', '760', '149',  '768',  '161',  '3',  'M_VOL', 'IDS_YELLOWDOT', '', '', ''),
('POS_AUDIO_SFX10',  'IDV_MAIN_PANEL', '770', '149',  '778',  '161',  '3',  'M_VOL', 'IDS_YELLOWDOT', '', '', ''),

('AUDIO_LEVELS',   'IDV_MAIN_PANEL',   '53',  '207',  '61',  '222', '3',  'M_AUDIO_LEVELS', '', '', '', '');



delete from transitions where [automaton] like 'M_AUDIO_%';
delete from transitions where [automaton] like 'M_VOL%';
delete from transitions where [automaton] like 'M_PLAYER_%';

INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code") 
VALUES 
-- -- SIGNAL(AUD_MUSIC_PLAYER, SIG_112); 

-- ('M_PLAYER_MUSIC', '0', 'playing', 'WAIT','', 'SIG_2', '
--      playmusic(kam002aa,3);
-- '),
-- ('M_PLAYER_MUSIC', '0', 'playing', 'WAIT','', 'SIG_INTRO_MIX', '
--      playmusic(kam209ba,3);
--     //playmusic(kam209ba,3); then playmusic(kam210ba,3);
-- '),
-- ('M_PLAYER_MUSIC', '0', 'playing', 'WAIT','', 'SIG_NATURE_INTRO', '
--      playmusic(kam112aa,3);
--      //playmusic kam112aa , then playmusic(306ba,3) -- might change to SIG_N2A custom playlist
-- '),
--  ('M_PLAYER_MUSIC', 'playing', '0', 'Z_EPSILON','', '', ''),

-- ----------------- Ambient -----------------------------------
-- --ocean
-- --cavewind
-- ('M_PLAYER_AMBIENT', '0', 'playing', 'WAIT','', 'SIG_NAT', '
--     PLAYWAVE(nature1); 
-- '),
-- ('M_PLAYER_AMBIENT', '0', 'playing', 'WAIT','', 'SIG_CITY', '
--     PLAYWAVE(SOUND_CLICK);
-- '),
--  ('M_PLAYER_MUSIC', 'playing', '0', 'Z_EPSILON','', '', ''),

------------------------------------------------------------

('M_AUDIO_BTN', '0', '0', 'CLICK','0', '', 'SIGNAL(WIP1,WIP2);'),

('M_AUDIO_LEVELS', '0', 'CHANGED', 'Z_EPSILON','0', '', '
     //set initial audio level here 
     ASSIGN(WPARM,3); SIGNAL(POS_AUDIO_M5,SIG_ON); //MUSIC
     ASSIGN(BPARM,1+effects_volume()); SIGNAL(POS_AUDIO_SFX2,SIG_ON); //SFX
'),
('M_AUDIO_LEVELS', 'READY', 'CHANGED', 'WAIT','', 'SIG_MUSIC_UP', '
    if (WPARM<10) ADD(WPARM,1);
    
'),
('M_AUDIO_LEVELS', 'READY', 'CHANGED', 'WAIT','', 'SIG_MUSIC_DN', '
    if (WPARM>0) SUB(WPARM,1);
     while (WTEMP1<=6) {
       WRITE("upping audio gain");
       audio_gain(WTEMP1,WPARM);
        WTEMP1 = WTEMP1 + 1;
    }
'),
('M_AUDIO_LEVELS', 'READY', 'CHANGED', 'WAIT','', 'SIG_SFX_UP', '
    if (BPARM<10) ADD(BPARM,1);
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
    SIGNAL(POS_AUDIO_M8,SIG_OFF); 
    SIGNAL(POS_AUDIO_M9,SIG_OFF); 
    SIGNAL(POS_AUDIO_M10,SIG_OFF); 
    SIGNAL(POS_AUDIO_SFX1,SIG_OFF);
    SIGNAL(POS_AUDIO_SFX2,SIG_OFF);
    SIGNAL(POS_AUDIO_SFX3,SIG_OFF);
    SIGNAL(POS_AUDIO_SFX4,SIG_OFF);
    SIGNAL(POS_AUDIO_SFX5,SIG_OFF);
    SIGNAL(POS_AUDIO_SFX6,SIG_OFF); 
    SIGNAL(POS_AUDIO_SFX7,SIG_OFF); 
    SIGNAL(POS_AUDIO_SFX8,SIG_OFF); 
    SIGNAL(POS_AUDIO_SFX9,SIG_OFF); 
    SIGNAL(POS_AUDIO_SFX10,SIG_OFF); 
    // turn on just the ones we want ...
    SIGNAL("POS_AUDIO_M"+WPARM, SIG_ON);
    SIGNAL("POS_AUDIO_SFX"+BPARM, SIG_ON);
    log("BPARM==", BPARM);
    log("WPARM==", WPARM);
    effects_volume(BPARM);
   

    audio_gain(1,WPARM);
    audio_gain(2,WPARM);
    audio_gain(3,WPARM);
    audio_gain(4,WPARM);
    audio_gain(5,WPARM);
    audio_gain(6,WPARM);

   
');

INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code") 
VALUES 
('M_VOL', '0', 'READY', 'Z_EPSILON','0', '', ''),
('M_VOL', 'READY', 'ON', 'WAIT','', 'SIG_ON', 'SHOW(WIP1);'),
('M_VOL', 'READY', 'OFF', 'WAIT','', 'SIG_OFF', 'SHOW();'),
('M_VOL', 'ON', '0', 'Z_EPSILON','0', '', ''),
('M_VOL', 'OFF', '0','Z_EPSILON','0', '', '');


--   while (WTEMP1 <= 6) {
--         log("ch"+WTEMP1);
--         ch = WTEMP1;
--         audio_gain(ch,WPARM);
--         WTEMP1 = WTEMP1 + 1;
--     };