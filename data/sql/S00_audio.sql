delete from spr_names where name = 'IDS_YELLOWDOT';
INSERT INTO "main"."spr_names" ("name", "value") 
VALUES 
('IDS_YELLOWDOT', 'yellowdot');


delete from machines where [name] like 'BTN_AUDIO_%';
INSERT INTO "main"."machines" ("name","view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name","wip3_name",  "wip4_name") 
VALUES 
('BTN_AUDIO_MDN',   'IDV_MAIN_PANEL', '35',     '225',  '51',  '240', '3',  'M_AUDIO_BTN', 'MUSIC_DN', 'IDS_YELLOWDOT', 'AUDIO_LEVELS', ''),
('BTN_AUDIO_MUP',   'IDV_MAIN_PANEL', '126',    '225',  '142', '240', '3',  'M_AUDIO_BTN', 'MUSIC_UP', 'IDS_YELLOWDOT', 'AUDIO_LEVELS', ''),
('BTN_AUDIO_EFXDN', 'IDV_MAIN_PANEL', '35',     '258',  '51',  '272', '3',  'M_AUDIO_BTN', 'SFX_DN',   'IDS_YELLOWDOT', 'AUDIO_LEVELS', ''),
('BTN_AUDIO_EFXUP', 'IDV_MAIN_PANEL', '126',    '258',  '142', '272', '3',  'M_AUDIO_BTN', 'SFX_UP',   'IDS_YELLOWDOT', 'AUDIO_LEVELS', '');

delete from machines where [name] like 'POS_AUDIO_%';
delete from machines where [name] like 'AUDIO_LEVELS%';

INSERT INTO "main"."machines" ("name","view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name","wip3_name",  "wip4_name") 
VALUES 
('POS_AUDIO_M1',   'IDV_MAIN_PANEL',   '53',  '230',  '61',  '240', '3',  'M_VOL', 'IDS_YELLOWDOT', '', '', ''),
('POS_AUDIO_M2',   'IDV_MAIN_PANEL',   '62',  '230',  '70',  '240', '3',  'M_VOL', 'IDS_YELLOWDOT', '', '', ''),
('POS_AUDIO_M3',   'IDV_MAIN_PANEL',   '75',  '230',  '83',  '240', '3',  'M_VOL', 'IDS_YELLOWDOT', '', '', ''),
('POS_AUDIO_M4',   'IDV_MAIN_PANEL',   '86',  '230',  '91',  '240', '3',  'M_VOL', 'IDS_YELLOWDOT', '', '', ''),
('POS_AUDIO_M5',   'IDV_MAIN_PANEL',   '95',  '230',  '99',  '240', '3',  'M_VOL', 'IDS_YELLOWDOT', '', '', ''),
('POS_AUDIO_M6',   'IDV_MAIN_PANEL',   '106', '230',  '107', '240', '3',  'M_VOL', 'IDS_YELLOWDOT', '', '', ''),
('POS_AUDIO_M7',   'IDV_MAIN_PANEL',   '115', '230',  '116', '240', '3',  'M_VOL', 'IDS_YELLOWDOT', '', '', ''),

('POS_AUDIO_SFX1',   'IDV_MAIN_PANEL',  '53',   '264',  '61',   '274', '3',  'M_VOL', 'IDS_YELLOWDOT', '', '', ''),
('POS_AUDIO_SFX2',   'IDV_MAIN_PANEL',  '62',   '264',  '70',   '274', '3',  'M_VOL', 'IDS_YELLOWDOT', '', '', ''),
('POS_AUDIO_SFX3',   'IDV_MAIN_PANEL',  '75',   '264',  '83',   '274', '3',  'M_VOL', 'IDS_YELLOWDOT', '', '', ''),
('POS_AUDIO_SFX4',   'IDV_MAIN_PANEL',  '86',   '264',  '91',   '274', '3',  'M_VOL', 'IDS_YELLOWDOT', '', '', ''),
('POS_AUDIO_SFX5',   'IDV_MAIN_PANEL',  '95',   '264',  '99',   '274', '3',  'M_VOL', 'IDS_YELLOWDOT', '', '', ''),
('POS_AUDIO_SFX6',   'IDV_MAIN_PANEL',  '106',  '264',  '107',  '274', '3',  'M_VOL', 'IDS_YELLOWDOT', '', '', ''),
('POS_AUDIO_SFX7',   'IDV_MAIN_PANEL',  '115',  '264',  '116',  '274', '3',  'M_VOL', 'IDS_YELLOWDOT', '', '', ''),


('AUDIO_LEVELS',   'IDV_MAIN_PANEL',   '53',  '207',  '61',  '222', '3',  'M_AUDIO_LEVELS', '', '', '', '');



delete from transitions where [automaton] like 'M_AUDIO_%';
delete from transitions where [automaton] like 'M_VOL%';

INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code") 
VALUES 
('M_AUDIO_BTN', '0', 'RESET', 'Z_EPSILON','0', '', '
    REF_MACHINE(WIP3);
   
'),
('M_AUDIO_BTN', 'RESET', 'PRESSED', 'CLICK','0', '', '
    if(WIP1 == "MUSIC_UP"){
         if(R_WPARM <= 7){
            SIGNAL(WIP3,SIG_MUSIC_UP);
            if(R_WPARM == 1){SIGNAL(POS_AUDIO_M1,SIG_ON); }
            if(R_WPARM == 2){SIGNAL(POS_AUDIO_M1,SIG_OFF);SIGNAL(POS_AUDIO_M2,SIG_ON); }
            if(R_WPARM == 3){SIGNAL(POS_AUDIO_M2,SIG_OFF);SIGNAL(POS_AUDIO_M3,SIG_ON); }
            if(R_WPARM == 4){SIGNAL(POS_AUDIO_M3,SIG_OFF);SIGNAL(POS_AUDIO_M4,SIG_ON); }
            if(R_WPARM == 5){SIGNAL(POS_AUDIO_M4,SIG_OFF);SIGNAL(POS_AUDIO_M5,SIG_ON); }
            if(R_WPARM == 6){SIGNAL(POS_AUDIO_M5,SIG_OFF);SIGNAL(POS_AUDIO_M6,SIG_ON); } 
            if(R_WPARM == 7){SIGNAL(POS_AUDIO_M6,SIG_OFF);SIGNAL(POS_AUDIO_M7,SIG_ON); } 
         }
    }
    if(WIP1 == "MUSIC_DN"){
         if(R_WPARM > 0){
            SIGNAL(WIP3,SIG_MUSIC_DN);
            if(R_WPARM == 1){SIGNAL(POS_AUDIO_M2,SIG_OFF);SIGNAL(POS_AUDIO_M1,SIG_ON); }
            if(R_WPARM == 2){SIGNAL(POS_AUDIO_M3,SIG_OFF);SIGNAL(POS_AUDIO_M2,SIG_ON); }
            if(R_WPARM == 3){SIGNAL(POS_AUDIO_M4,SIG_OFF);SIGNAL(POS_AUDIO_M3,SIG_ON); }
            if(R_WPARM == 4){SIGNAL(POS_AUDIO_M5,SIG_OFF);SIGNAL(POS_AUDIO_M4,SIG_ON); }
            if(R_WPARM == 5){SIGNAL(POS_AUDIO_M6,SIG_OFF);SIGNAL(POS_AUDIO_M5,SIG_ON); }
            if(R_WPARM == 6){SIGNAL(POS_AUDIO_M7,SIG_OFF);SIGNAL(POS_AUDIO_M6,SIG_ON); } 
         }
    }
     if(WIP1 == "SFX_UP"){
      if(R_BPARM <= 7){
         SIGNAL(WIP3,SIG_SFX_UP);
         if(R_BPARM == 1){  SIGNAL(POS_AUDIO_SFX1,SIG_ON); }
         if(R_BPARM == 2){SIGNAL(POS_AUDIO_SFX1,SIG_OFF); SIGNAL(POS_AUDIO_SFX2,SIG_ON); }
         if(R_BPARM == 3){SIGNAL(POS_AUDIO_SFX2,SIG_OFF); SIGNAL(POS_AUDIO_SFX3,SIG_ON); }
         if(R_BPARM == 4){SIGNAL(POS_AUDIO_SFX3,SIG_OFF); SIGNAL(POS_AUDIO_SFX4,SIG_ON); }
         if(R_BPARM == 5){SIGNAL(POS_AUDIO_SFX4,SIG_OFF); SIGNAL(POS_AUDIO_SFX5,SIG_ON); }
         if(R_BPARM == 6){SIGNAL(POS_AUDIO_SFX5,SIG_OFF); SIGNAL(POS_AUDIO_SFX6,SIG_ON); } 
         if(R_BPARM == 7){SIGNAL(POS_AUDIO_SFX6,SIG_OFF); SIGNAL(POS_AUDIO_SFX7,SIG_ON); } 
      }
 }
 if(WIP1 == "SFX_DN"){
      if(R_BPARM > 0){
         SIGNAL(WIP3,SIG_SFX_DN);
         if(R_BPARM == 1){SIGNAL(POS_AUDIO_SFX2,SIG_OFF);SIGNAL(POS_AUDIO_SFX1,SIG_ON); }
         if(R_BPARM == 2){SIGNAL(POS_AUDIO_SFX3,SIG_OFF);SIGNAL(POS_AUDIO_SFX2,SIG_ON); }
         if(R_BPARM == 3){SIGNAL(POS_AUDIO_SFX4,SIG_OFF);SIGNAL(POS_AUDIO_SFX3,SIG_ON); }
         if(R_BPARM == 4){SIGNAL(POS_AUDIO_SFX5,SIG_OFF);SIGNAL(POS_AUDIO_SFX4,SIG_ON); }
         if(R_BPARM == 5){SIGNAL(POS_AUDIO_SFX6,SIG_OFF);SIGNAL(POS_AUDIO_SFX5,SIG_ON); }
         if(R_BPARM == 6){SIGNAL(POS_AUDIO_SFX7,SIG_OFF);SIGNAL(POS_AUDIO_SFX6,SIG_ON); } 
   
      }
 }

'),
('M_AUDIO_BTN', 'PRESSED', 'RESET', 'Z_EPSILON','0', '', ''),




('M_AUDIO_LEVELS', '0', 'READY', 'Z_EPSILON','0', '', '
     //set initial audio level here 
     ASSIGN(WPARM,2); SIGNAL(POS_AUDIO_M2,SIG_ON); //MUSIC
     ASSIGN(BPARM,2); SIGNAL(POS_AUDIO_SFX2,SIG_ON); //SFX
'),
('M_AUDIO_LEVELS', 'READY', 'CHANGED', 'WAIT','', 'SIG_MUSIC_UP', '
    ADD(WPARM,1);
'),
('M_AUDIO_LEVELS', 'READY', 'CHANGED', 'WAIT','', 'SIG_MUSIC_DN', '
    SUB(WPARM,1);
'),
('M_AUDIO_LEVELS', 'READY', 'CHANGED', 'WAIT','', 'SIG_SFX_UP', '
    ADD(BPARM,1);
'),
('M_AUDIO_LEVELS', 'READY', 'CHANGED', 'WAIT','', 'SIG_SFX_DN', '
    SUB(BPARM,1);
'),
('M_AUDIO_LEVELS', 'CHANGED', 'READY', 'Z_EPSILON','', '', '');

INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code") 
VALUES 
('M_VOL', '0', 'READY', 'Z_EPSILON','0', '', ''),
('M_VOL', 'READY', 'ON', 'WAIT','', 'SIG_ON', 'SHOW(WIP1);'),
('M_VOL', 'READY', 'OFF', 'WAIT','', 'SIG_OFF', 'SHOW();'),
('M_VOL', 'ON', '0', 'Z_EPSILON','0', '', ''),
('M_VOL', 'OFF', '0','Z_EPSILON','0', '', '');