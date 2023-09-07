delete from games;


--Remove outdated sprites from spr_names
delete from "main"."spr_names" where "name" like 'IDS_F4%';
delete from "main"."spr_names" where "name" like 'IDS_F0%';
delete from "main"."spr_names" where "name" like 'IDS_F5%';
delete from "main"."spr_names" where "name" like 'IDS_M4%';
delete from "main"."spr_names" where "name" like 'IDS_M0%';
delete from "main"."spr_names" where "name" like 'IDS_M5%';

delete from "main"."spr_names" where "name" like 'IDS_M1EX';
delete from "main"."spr_names" where "name" like 'IDS_M2EX';
delete from "main"."spr_names" where "name" like 'IDS_M3EX';

delete from "main"."spr_names" where "name" like 'IDS_F1%';
delete from "main"."spr_names" where "name" like 'IDS_F2%';
delete from "main"."spr_names" where "name" like 'IDS_F3%';


--KEEP THE LATEST FRESH
delete from "main"."spr_names" where "name" like 'IDS_FID1%';
delete from "main"."spr_names" where "name" like 'IDS_FID2%';
delete from "main"."spr_names" where "name" like 'IDS_FID3%';
delete from "main"."spr_names" where "name" like 'IDS_MID1%';
delete from "main"."spr_names" where "name" like 'IDS_MID2%';
delete from "main"."spr_names" where "name" like 'IDS_MID3%';

--add the death sprites for ids

INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_MID1EX', 'm1ex', '253');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_MID2EX', 'm2ex', '254');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_MID3EX', 'm3ex', '255');

--fix female and male id sprites - all caps separate from other sprites (moons and meflins...)
--Feminine sprites

INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_FID1EX', 'f1ex', '250');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_FID1HAPPY', 'F1HAP', '272');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_FID1HURT', 'F1HUR', '273');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_FID1KISS', 'F1KIS', '274');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_FID1MAD', 'F1MAD', '275');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_FID1SAD', 'F1SAD', '276');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_FID1STRESS', 'F1STR', '278');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_FID1SUPRISED', 'F1SUP', '277');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_FID1WAVE', 'F1WAV', '279');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_FID2EX', 'f2ex', '251');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_FID2HAPPY', 'F2HAP', '288');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_FID2HURT', 'F2HUR', '289');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_FID2KISS', 'F2KIS', '290');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_FID2MAD', 'F2MAD', '291');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_FID2SAD', 'F2SAD', '292');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_FID2STRESS', 'F2STR', '294');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_FID2SUPRISED', 'F2SUP', '293');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_FID2WAVE', 'F2WAV', '295');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_FID3EX', 'f3ex', '252');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_FID3HAPPY', 'F3HAP', '304');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_FID3HURT', 'F3HUR', '305');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_FID3KISS', 'F3KIS', '306');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_FID3MAD', 'F3MAD', '307');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_FID3SAD', 'f3sad', '308');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_FID3STRESS', 'F3STR', '310');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_FID3SUPRISED', 'F3SUP', '309');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_FID3WAVE', 'F3WAV', '311');


INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_MID1HAPPY', 'm1hap', '368');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_MIDM1HURT', 'M1HURT', '369');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_MID1KISS', 'M1KISS', '370');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_MID1MAD', 'M1MAD', '371');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_MID1SAD', 'M1SAD', '372');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_MID1SUPRISED', 'M1SUP', '373');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_MID1STRESS', 'M1STRESS', '374');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_MID1WAVE', 'M1WAV', '375');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_MID2HAPPY', 'M2HAP', '384');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_MID2HURT', 'M2HURT', '385');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_MID2KISS', 'M2KISS', '386');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_MID2MAD', 'M2MAD', '387');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_MID2SAD', 'M2SAD', '388');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_MID2SUPRISED', 'M2SUP', '389');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_MID2STRESS', 'M2STRESS', '390');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_MID2WAVE', 'M2WAV', '391');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_MID3HAPPY', 'M3HAP', '400');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_MID3HURT', 'M3HURT', '401');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_MID3KISS', 'M3KISS', '402');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_MID3MAD', 'M3MAD', '403');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_MID3SAD', 'M3SAD', '404');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_MID3SUPRISED', 'M3SUP', '405');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_MID3STRESS', 'M3STRESS', '406');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_MID3WAVE', 'M3WAV', '407');
------------------------------------------------------
-- Adding map usage to auras to ensure the proper sprite
delete from "main"."spr_names" where [name] like 'IDS_AURA%';
INSERT INTO "main"."spr_names" ("name", "value", "id") 
VALUES 
('IDS_AURA0', 'aa_00', '474'),
('IDS_AURA1', 'aa_01', '475'),
('IDS_AURA2', 'aa_02', '476'),
('IDS_AURA3', 'aa_03', '477'),
('IDS_AURA4', 'aa_04', '478'),
('IDS_AURA5', 'aa_05', '479'),
('IDS_AURA6', 'aa_06', '480'),
('IDS_AURA7', 'aa_07', '481'),
('IDS_AURA8', 'aa_08', '482'),
('IDS_AURA9', 'aa_09', '483'),
('IDS_AURA10', 'aa_10', '484'),
('IDS_AURA11', 'aa_11', '485'),
('IDS_AURA12', 'aa_12', '486'),
('IDS_AURA13', 'aa_13', '487'),
('IDS_AURA14', 'aa_14', '488'),
('IDS_AURA15', 'aa_15', '489'),
('IDS_AURA16', 'aa_16', '490'),
('IDS_AURA17', 'aa_17', '491'),
('IDS_AURA18', 'aa_18', '492'),
('IDS_AURA19', 'aa_19', '493'),
('IDS_AURA20', 'aa_20', '494'),
('IDS_AURA21', 'aa_21', '495'),
('IDS_AURA22', 'aa_22', '496'),
('IDS_AURA23', 'aa_23', '497');

delete from map where op like 'S00_AURA%';
INSERT INTO "main"."map" ("op", "key", "value")
VALUES 
('S00_AURA_MAP',0,'IDS_AURA0'), 
('S00_AURA_MAP',1,'IDS_AURA1'), 
('S00_AURA_MAP',2,'IDS_AURA2'), 
('S00_AURA_MAP',3,'IDS_AURA3'), 
('S00_AURA_MAP',4,'IDS_AURA4'), 
('S00_AURA_MAP',5,'IDS_AURA5'), 
('S00_AURA_MAP',6,'IDS_AURA6'),
('S00_AURA_MAP',7,'IDS_AURA7'), 
('S00_AURA_MAP',8,'IDS_AURA8'),
('S00_AURA_MAP',9,'IDS_AURA9'),
('S00_AURA_MAP',10,'IDS_AURA10'),
('S00_AURA_MAP',11,'IDS_AURA11'), 
('S00_AURA_MAP',12,'IDS_AURA12'), 
('S00_AURA_MAP',13,'IDS_AURA13'), 
('S00_AURA_MAP',14,'IDS_AURA14'), 
('S00_AURA_MAP',15,'IDS_AURA15'), 
('S00_AURA_MAP',16,'IDS_AURA16'),
('S00_AURA_MAP',17,'IDS_AURA17'), 
('S00_AURA_MAP',18,'IDS_AURA18'),
('S00_AURA_MAP',19,'IDS_AURA19'),
('S00_AURA_MAP',20,'IDS_AURA20'),
('S00_AURA_MAP',21,'IDS_AURA21'),
('S00_AURA_MAP',22,'IDS_AURA22'),
('S00_AURA_MAP',23,'IDS_AURA23'),

('S00_KARMA_MAP',0,'IDS_HALO00'), 
('S00_KARMA_MAP',1,'IDS_HALO01'), 
('S00_KARMA_MAP',2,'IDS_HALO02'), 
('S00_KARMA_MAP',3,'IDS_HALO03'), 
('S00_KARMA_MAP',4,'IDS_HALO04'), 
('S00_KARMA_MAP',5,'IDS_HALO05'),

('F1','happy','IDS_FID1HAPPY'),
('F1','hurt' ,'IDS_FID1HURT'),
('F1','kiss','IDS_FID1KISS'),
('F1','mad','IDS_FID1MAD'),
('F1','sad','IDS_FID1SAD'),
('F1','stress','IDS_FID1STRESS'),
('F1','surprised','IDS_FID1SURPRISED'),
('F1','wave','IDS_FID1WAVE'),
('F1','dead','IDS_FID1EX'),

('F2','happy','IDS_FID2HAPPY'),
('F2','hurt' ,'IDS_FID2HURT'),
('F2','kiss','IDS_FID1KISS'),
('F2','mad','IDS_FID2MAD'),
('F2','sad','IDS_FID2SAD'),
('F2','stress','IDS_FID2STRESS'),
('F2','surprised','IDS_FID2SURPRISED'),
('F2','wave','IDS_FID2WAVE'),
('F2','dead','IDS_FID2EX'),

('F3','happy','IDS_FID3HAPPY'),
('F3','hurt' ,'IDS_FID3HURT'),
('F3','kiss','IDS_FID3KISS'),
('F3','mad','IDS_FID3MAD'),
('F3','sad','IDS_FID3SAD'),
('F3','stress','IDS_FID3STRESS'),
('F3','surprised','IDS_FID3SURPRISED'),
('F3','wave','IDS_FID3WAVE'),
('F3','dead','IDS_FID3EX'),

('M1','happy','IDS_MID1HAPPY'),
('M1','hurt' ,'IDS_MID1HURT'),
('M1','kiss','IDS_MID1KISS'),
('M1','mad','IDS_MID1MAD'),
('M1','sad','IDS_MID1SAD'),
('M1','stress','IDS_MID1STRESS'),
('M1','surprised','IDS_MID1SURPRISED'),
('M1','wave','IDS_MID1WAVE'),
('M1','dead','IDS_MID1EX'),

('M2','happy','IDS_MID2HAPPY'),
('M2','hurt' ,'IDS_MID2HURT'),
('M2','kiss','IDS_MID1KISS'),
('M2','mad','IDS_MID2MAD'),
('M2','sad','IDS_MID2SAD'),
('M2','stress','IDS_MID2STRESS'),
('M2','surprised','IDS_MID2SURPRISED'),
('M2','wave','IDS_MID2WAVE'),
('M2','dead','IDS_MID2EX'),

('M3','happy','IDS_MID3HAPPY'),
('M3','hurt' ,'IDS_MID3HURT'),
('M3','kiss','IDS_MID3KISS'),
('M3','mad','IDS_MID3MAD'),
('M3','sad','IDS_MID3SAD'),
('M3','stress','IDS_MID3STRESS'),
('M3','surprised','IDS_MID3SURPRISED'),
('M3','wave','IDS_MID3WAVE'),
('M3','dead','IDS_MID3EX');



delete from "main"."machines" where [name] like 'SID_%';
INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") 
VALUES 
('64', 'SID_HALO', '3', 'IDV_ID', '30', '0', '70', '40', '3', 'M_HALO', '', '', '', ''),
('65', 'SID_SPELL', '3', 'IDV_ID', '10', '50', '80', '150', '3', 'M_IDSPELL', '', '', '', ''),
('66', 'SID_ID', '3', 'IDV_ID', '0', '0', '101', '171', '3', 'M_ID', 'LWISDOM', 'LSEX', '0', 'SID_AURA'),
('68', 'SID_AURA', '3', 'IDV_ID', '0', '0', '112', '100', '3', 'M_AURA', '', '', '', ''),
('56', 'SID_DEC_WEALTH', '3', 'IDV_ID', '0', '0', '0', '0', '3', 'M_DEC_WEALTH', '', '', '', ''),
('57', 'SID_INC_WEALTH', '3', 'IDV_ID', '0', '0', '0', '0', '3', 'M_INC_WEALTH', '', '', '', '');

delete from "main"."machines" where [name] like 'SOD_%';
INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") 
VALUES 
('71', 'SOD_SPELL', '5', 'IDV_OTHERID', '10', '50', '80', '150', '3', 'M_O_IDSPELL', '', '', '', ''),
('72', 'SOD_ID', '5', 'IDV_OTHERID', '0', '0', '101', '171', '3', 'M_ID', 'OWISDOM', 'OSEX', '0', 'SOD_AURA'),
('74', 'SOD_AURA', '5', 'IDV_OTHERID', '0', '0', '112', '100', '3', 'M_O_AURA', '', '', '', ''),
('73', 'SOD_PED', '5', 'IDV_OTHERID', '0', '129', '99', '173', '3', 'M_O_PED', '', '', '', '');

delete from "main"."transitions" where [automaton] like 'M_AURA%';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code", "guard", "doc") 
VALUES 
('M_AURA', '0', 'energyBoost', 'Z_EPSILON', '0', '0', '', '', ''),
('M_AURA', '1', 'energyBoost', 'WAIT', '0', 'SIG_ADD', '', '', ''),
('M_AURA', '1', 'energyDrain', 'WAIT', '0', 'SIG_SUB', '', '', ''),
('M_AURA', '1', 'energyBoost', 'WAIT', '0', '0', '', '', ''),
('M_AURA', 'energyBoost', '1', 'ASSIGN', 'WPARM', '', '
       if(LENERGY > (MAX_AURAS - 1)){
             ASSIGN(LENERGY,(MAX_AURAS -1));
       }
        ASSIGN(BPARM,LENERGY);
        MOV(WSPRITE,BPARM);
        MAPi(WSPRITE,S00_AURA_MAP);
        SHOW(WSPRITE);
        ANIMATE(WPARM);
        SIGNALi(0,SID_ID);
', '', ''),
('M_AURA', 'energyDrain', '1', 'ASSIGN', 'WPARM', 'V_REVERSE', '
        if(LENERGY <= 0){
             ASSIGN(LENERGY,1);
             //Maybe death
       }      
       ASSIGN(BPARM,LENERGY);
        MOV(WSPRITE,BPARM);
        MAPi(WSPRITE,S00_AURA_MAP);
        SHOW(WSPRITE);
        ANIMATE(WPARM);
        SIGNALi(0,SID_ID);
', '', '');


delete from "main"."transitions" where [automaton] like 'M_PED%';
delete from "main"."transitions" where [automaton] like 'M_HALO%';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code", "guard", "doc")
VALUES 
--('M_HALO', '0', '1', 'ASHOW', '0', 'IDS_HALO00', '', '', '');

('M_HALO', '0', 'karmaBoost', 'Z_EPSILON', '0', '0', '', '', ''),
('M_HALO', '1', 'karmaBoost', 'WAIT', '0', 'SIG_ADD', '', '', ''),
('M_HALO', '1', 'karmaDrain', 'WAIT', '0', 'SIG_SUB', '', '', ''),
('M_HALO', '1', 'karmaBoost', 'WAIT', '0', '0', '', '', ''),
('M_HALO', 'karmaBoost', '1', 'ASSIGN', 'WPARM', '', '
       if(LKARMA > (MAX_KARMA - 1)){
             ASSIGN(LKARMA,(MAX_KARMA));
       }
        ASSIGN(BPARM,LKARMA);
        MOV(WSPRITE,BPARM);
        DIV(WSPRITE,2);
        MAPi(WSPRITE,S00_KARMA_MAP);
        ASHOW(WSPRITE);
        SIGNALi(0,SID_ID);
', '', ''),
('M_HALO', 'karmaDrain', '1', 'ASSIGN', 'WPARM', '', '
        if(LKARMA <= 0){
             ASSIGN(LKARMA,1);
       }      
        ASSIGN(BPARM,LKARMA);
        MOV(WSPRITE,BPARM);
        DIV(WSPRITE,2);
        MAPi(WSPRITE,S00_KARMA_MAP);
        ASHOW(WSPRITE);
        SIGNALi(0,SID_ID);
', '', '');


delete from "main"."transitions" where [automaton] = 'M_ID';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code", "guard", "doc") 
VALUES 
('M_ID', 'sitting', '20', 'WAIT', '0', 'SIG_HAPPY', '', '', ''),
('M_ID', 'sitting', '21', 'WAIT', '0', 'SIG_HURT', '', '', ''),
('M_ID', 'sitting', '22', 'WAIT', '0', 'SIG_KISS', '', '', ''),
('M_ID', 'sitting', '23', 'WAIT', '0', 'SIG_MAD', '', '', ''),
('M_ID', 'sitting', '24', 'WAIT', '0', 'SIG_SAD', '', '', ''),
('M_ID', 'sitting', '25', 'WAIT', '0', 'SIG_SURPRISED', '', '', ''),
('M_ID', 'sitting', '26', 'WAIT', '0', 'SIG_STRESS', '', '', ''),
('M_ID', 'sitting', '27', 'WAIT', '0', 'SIG_WAVE', '', '', ''),
('M_ID', 'sitting', '30', 'WAIT', '0', 'SIG_DEAD', '', '', ''),
('M_ID', 'sitting', '50', 'WAIT', '0', 'SIG_BOMB', '', '', ''),
('M_ID', 'sitting', '100', 'WAIT', '0', 'SIG_CLEAR', '', '', ''),
('M_ID', 'sitting', '0', 'WAIT', '0', '0', '', '', ''),


('M_ID', '0', 'setId', 'EQUALi', 'LSEX', '1', '
    if(LWISDOM >= 30){
       ASSIGN(WPARM,F3);
    }
     if(LWISDOM >= 20 && LWISDOM < 31){
        ASSIGN(WPARM,F2);
    }
    if(LWISDOM < 20){
       ASSIGN(WPARM,F1);
    }
', '', ''), 
('M_ID', '0', 'setId', 'NEQUALi', 'LSEX', '1', '
    if(LWISDOM >= 30){
       ASSIGN(WPARM,M3);
    }
    if(LWISDOM >= 20 && LWISDOM < 31){
        ASSIGN(WPARM,M2);
    }
    if(LWISDOM < 20){
       ASSIGN(WPARM,M1);
    }
', '', ''), 

('M_ID', 'setId', 'sitting', 'ASSIGN', 'WSPRITE', 'happy', '
    MAP(WSPRITE,WPARM);
    ASSIGN(BFRAME,0);
    SHOW(WSPRITE);
', '', ''),


('M_ID', '20', 'playForward', 'ASSIGN', 'WSPRITE', 'happy', '', '', ''),
('M_ID', '21', 'playForward', 'ASSIGN', 'WSPRITE', 'hurt', '', '', ''),
('M_ID', '22', 'playOnce', 'ASSIGN', 'WSPRITE', 'kiss', '', '', ''),
('M_ID', '23', 'playForward', 'ASSIGN', 'WSPRITE', 'mad', '', '', ''),
('M_ID', '24', 'playForward', 'ASSIGN', 'WSPRITE', 'sad', '', '', ''),
('M_ID', '25', 'playForward', 'ASSIGN', 'WSPRITE', 'surprised', '', '', ''),
('M_ID', '26', 'playForward', 'ASSIGN', 'WSPRITE', 'stress', '', '', ''),
('M_ID', '27', 'playForward', 'ASSIGN', 'WSPRITE', 'wave', '', '', ''),
('M_ID', '30', 'playOnce', 'ASSIGN', 'WSPRITE', 'dead', '', '', ''),

('M_ID', '50', '51', 'VIDEO', '0', 'IDS_EXPLODE1', '', '', ''),
('M_ID', '51', '21', 'PLAYWAVE', '0', 'SOUND_EXPLODE', '', '', ''),

('M_ID', 'playForward', 'sitting', 'ASSIGN', 'BFRAME', '0', '
    MAP(WSPRITE,WPARM);
    SHOW(WSPRITE);
    ANIMATE(0,V_REWIND); //PLAY FORWARD THEN BACK
', '', ''),
('M_ID', 'playOnce', 'sitting', 'ASSIGN', 'BFRAME', '0', '
    MAP(WSPRITE,WPARM);
    SHOW(WSPRITE);
    ANIMATE(0,0);
', '', ''),

('M_ID', '100', '101', 'SHOW', '0', '0', '', '', ''),
('M_ID', '101', '0', 'SIGNAL', 'WIP4', 'SIG_CLEAR', '', '', '');


delete from "main"."transitions" where [automaton] like 'M_IDSPELL%';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code", "guard", "doc") 
VALUES 

('M_IDSPELL',0,100,'DROP','0','0', '', '', ''),
('M_IDSPELL',1,2,'SPELL_ME','WOBJECT','SIG_OBJECT', '', '', ''),
('M_IDSPELL',2,3,'PLAYWAVE','0','SOUND_POPUP', '', '', ''),
('M_IDSPELL',3,4,'ASHOW','WOBJECT','', '', '', ''),
('M_IDSPELL',4,100,'DROP','0','0', '', '', ''),
('M_IDSPELL',4,10,'GRAB','0','0', '', '', ''),
('M_IDSPELL',4,20,'WAIT','0','SIG_BURST', '', '', ''),
('M_IDSPELL',4,2,'WAIT','0','0', '', '', ''),
('M_IDSPELL',10,12,'EQUALi','WVIEWID','0', '', '', ''),
('M_IDSPELL',10,11,'LOADVIEW','WVIEWID','', '', '', ''),
('M_IDSPELL',11,12,'CLEAR','WVIEWID','', '', '', ''),
('M_IDSPELL',12,13,'SHOW','0','0', '', '', ''),
('M_IDSPELL',13,0,'SPELL_ME','WOBJECT','SIG_CLEAR', '', '', ''),
('M_IDSPELL',20,21,'CLEAR','WOBJECT','', '', '', ''),
('M_IDSPELL',21,22,'SHOW','0','0', '', '', ''),
('M_IDSPELL',22,0,'VIDEO','0','IDS_SMBURST', '', '', ''),
('M_IDSPELL',100,101,'CLEAR','WVIEWID','', '', '', ''),
('M_IDSPELL',101,102,'IS_A','WOBJECT','IDC_BOMB', '', '', ''),
('M_IDSPELL',101,120,'IS_A','WOBJECT','IDC_SCROLL', '', '', ''),
('M_IDSPELL',101,1,'Z_EPSILON','0','0', '', '', ''),
('M_IDSPELL',102,0,'SPELL_ME','0','SIG_BOMB', '', '', ''),
('M_IDSPELL',120,121,'MOV','WTEMP1','WOBJECT', '', '', ''),
('M_IDSPELL',121,122,'MOV','WVIEWID','LVIEW', '', '', ''),
('M_IDSPELL',122,1,'LOADVIEW','0','IDV_PARCHPAN', '', '', '');







--Making a test view ------------------
------------------------------------------------------
------------------------------------------------------

delete from "main"."idv" where [name] like 'IDV_TESTPAN%';
INSERT INTO "main"."idv" ("name", "id") VALUES ('IDV_TESTPAN', '40100');
delete from "main"."views" where [view_name] like 'IDV_TESTPAN%';
INSERT INTO "main"."views" ("view_id", "view_name", "Z", "backgroundAudio", "locator_view", "behavior_id", "portal_filename", "surface_filename") 
VALUES ('40100', 'IDV_TESTPAN', '1', '3', '1', '1', 'smlpanel.vct', 'testscreen');

delete from "main"."machines" where [name] like 'S0_TEST%';
INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") 
VALUES 
('40110', 'S0_TEST_1', '40100', 'IDV_TESTPAN', '40', '70', '110', '135',  '0', 'M_TEST1', '', '', '', ''),
('40111', 'S0_TEST_2', '40100', 'IDV_TESTPAN', '40', '148', '110', '212', '0', 'M_TEST2', '', '', '', ''),
('40112', 'S0_TEST_3', '40100', 'IDV_TESTPAN', '40', '212', '110', '290', '0', 'M_TEST3', '', '', '', ''),
('40113', 'S0_TEST_4', '40100', 'IDV_TESTPAN', '150', '70', '210', '135',  '0', 'M_TEST4', '', '', '', ''),
('40114', 'S0_TEST_5', '40100', 'IDV_TESTPAN', '150', '148', '210', '212', '0', 'M_TEST5', '', '', '', ''),
('40115', 'S0_TEST_6', '40100', 'IDV_TESTPAN', '150', '212', '210', '290', '0', 'M_TEST6', '', '', '', ''),
('40116', 'S0_TEST_7', '40100', 'IDV_TESTPAN', '250', '70', '310', '135',  '0', 'M_TEST7', '', '', '', ''),
('40117', 'S0_TEST_8', '40100', 'IDV_TESTPAN', '250', '148', '310', '212', '0', 'M_TEST8', '', '', '', ''),
('40118', 'S0_TEST_9', '40100', 'IDV_TESTPAN', '250', '212', '310', '290', '0', 'M_TEST9', '', '', '', '');



delete from "main"."transitions" where [automaton] like 'M_TEST%';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code", "guard", "doc") 
VALUES 
('M_TEST1', '0', '0', 'CLICK', '0', '0', '
    ASSIGN(LENERGY,4);
    SIGNAL(SID_AURA,SIG_ADD);
', '', ''),
('M_TEST2', '0', '0', 'CLICK', '0', '0', '
    ADDI(LENERGY,1);
    SIGNAL(SID_AURA,SIG_ADD);
    ', '', ''),
('M_TEST3', '0', '0', 'CLICK', '0', '0', '
    SUBI(LENERGY,1);
    SIGNAL(SID_AURA,SIG_SUB);
    ', '', ''),
('M_TEST4', '0', '0', 'CLICK', '0', '0', '
    ASSIGN(LKARMA,0);
    SIGNAL(SID_HALO,SIG_ADD);
', '', ''),
('M_TEST5', '0', '0', 'CLICK', '0', '0', '
    ADDI(LKARMA,1);
    SIGNAL(SID_HALO,SIG_ADD);
    ', '', ''),
('M_TEST6', '0', '0', 'CLICK', '0', '0', '
    SUBI(LKARMA,1);
    SIGNAL(SID_HALO,SIG_SUB);
    ', '', ''),
('M_TEST7', '0', '0', 'CLICK', '0', '0', '
    ASSIGN(LWISDOM,2);
    SIGNALi(0,SID_ID);
', '', ''),
('M_TEST8', '0', '0', 'CLICK', '0', '0', '
    ASSIGN(LWISDOM,25);
    SIGNALi(0,SID_ID);
', '', ''),
('M_TEST9', '0', '0', 'CLICK', '0', '0', '
    ASSIGN(LWISDOM,40);
    ASSIGN(LSEX,1);
    SIGNALi(0,SID_ID);
', '', '');
------------------------------------------------------






-- ('M_ID', '0', '20', 'WAIT', '0', 'SIG_HAPPY', '', '', ''),
-- ('M_ID', '0', '21', 'WAIT', '0', 'SIG_HURT', '', '', ''),
-- ('M_ID', '0', '22', 'WAIT', '0', 'SIG_KISS', '', '', ''),
-- ('M_ID', '0', '23', 'WAIT', '0', 'SIG_MAD', '', '', ''),
-- ('M_ID', '0', '24', 'WAIT', '0', 'SIG_SAD', '', '', ''),
-- ('M_ID', '0', '25', 'WAIT', '0', 'SIG_SURPRISED', '', '', ''),
-- ('M_ID', '0', '26', 'WAIT', '0', 'SIG_STRESS', '', '', ''),
-- ('M_ID', '0', '27', 'WAIT', '0', 'SIG_WAVE', '', '', ''),
-- ('M_ID', '0', '50', 'WAIT', '0', 'SIG_BOMB', '', '', ''),
-- ('M_ID', '0', '100', 'WAIT', '0', 'SIG_CLEAR', '', '', ''),
-- ('M_ID', '0', '2', 'WAIT', '0', '0', '', '', ''),


-- ('M_ID', '2', '3', 'MOV', 'WPARM', 'PTR(WIP1)', '', '', ''), 
-- ('M_ID', '3', '4', 'DIVI', 'WPARM', 'MAX_WISDOM/MAX_LEVEL', '', '', ''),
-- ('M_ID', '4', '5', 'MULI', 'WPARM', 'EMOTIONS_PER_LEVEL', '', '', ''),
-- ('M_ID', '5', '7', 'ADDI', 'WPARM', 'IDp_MALE', '', '', ''),
-- ('M_ID', '5', '6', 'EQUALi', 'PTR(WIP2)', '1', '', '', ''),
-- ('M_ID', '6', '7', 'ADDI', 'WPARM', 'IDp_FEMALE', '', '', ''),

-- ('M_ID', '7', '8', 'ASSIGN', 'BPARM', 'IDp_xxHAPPY', '', '', ''),
-- ('M_ID', '8', '10', 'ASSIGN', 'BFRAME', '0', '', '', ''),
-- ('M_ID', '10', '11', 'MOV', 'WSPRITE', 'WPARM', '', '', ''),
-- ('M_ID', '11', '12', 'ADD', 'WSPRITE', 'BPARM', '', '', ''),
-- ('M_ID', '12', '0', 'SHOW', 'WSPRITE', '', '', '', ''),

-- ('M_ID', '20', '70', 'ASSIGN', 'BPARM', 'IDp_xxHAPPY', '', '', ''),
-- ('M_ID', '21', '70', 'ASSIGN', 'BPARM', 'IDp_xxHURT', '', '', ''),
-- ('M_ID', '22', '80', 'ASSIGN', 'BPARM', 'IDp_xxKISS', '', '', ''),
-- ('M_ID', '23', '70', 'ASSIGN', 'BPARM', 'IDp_xxMAD', '', '', ''),
-- ('M_ID', '24', '70', 'ASSIGN', 'BPARM', 'IDp_xxSAD', '', '', ''),
-- ('M_ID', '25', '70', 'ASSIGN', 'BPARM', 'IDp_xxSURPRISED', '', '', ''),
-- ('M_ID', '26', '80', 'ASSIGN', 'BPARM', 'IDp_xxSTRESS', '', '', ''),
-- ('M_ID', '27', '70', 'ASSIGN', 'BPARM', 'IDp_xxWAVE', '', '', ''),

-- ('M_ID', '50', '51', 'VIDEO', '0', 'IDS_EXPLODE1', '', '', ''),
-- ('M_ID', '51', '21', 'PLAYWAVE', '0', 'SOUND_EXPLODE', '', '', ''),

-- ('M_ID', '70', '71', 'MOV', 'WSPRITE', 'WPARM', '', '', ''),
-- ('M_ID', '71', '72', 'ADD', 'WSPRITE', 'BPARM', '', '', ''),
-- ('M_ID', '72', '73', 'SHOW', 'WSPRITE', '', '', '', ''),
-- ('M_ID', '73', '0', 'ANIMATE', '0', 'V_REWIND', '', '', ''),

-- ('M_ID', '80', '81', 'MOV', 'WSPRITE', 'WPARM', '', '', ''),
-- ('M_ID', '81', '82', 'ADD', 'WSPRITE', 'BPARM', '', '', ''),
-- ('M_ID', '82', '83', 'SHOW', 'WSPRITE', '', '', '', ''),
-- ('M_ID', '83', '0', 'ANIMATE', '0', '0', '', '', ''),

-- ('M_ID', '100', '101', 'SHOW', '0', '0', '', '', ''),
-- ('M_ID', '101', '0', 'SIGNAL', 'WIP4', 'SIG_CLEAR', '', '', '');

------------

-- #define LKARMA      10 bad karma points
-- #define LSTRENGTH   
-- #define LWISDOM     up to 40 points 
-- #define LENERGY     up to 24 
-- #define LSEX        
-- #define LWEALTH     
-- #define LVIEW       

-- #define OKARMA      
-- #define OSTRENGTH   
-- #define OWISDOM     
-- #define OENERGY     
-- #define OSEX        
-- #define OWEALTH     
-- #define OVIEW       



