

delete from "main"."views" where "view_name" like 'IDV_PLAYERNAME%';
delete from "main"."views" where "view_name" like 'IDV_OTHERNAME%';
INSERT INTO "main"."views" ("view_name", "Z", "backgroundAudio", "locator_view", "behavior_id", "portal_filename", "surface_filename") VALUES 
('IDV_PLAYERNAME', 1, 0, 0, 8, 'myname.vct', 'namefill'),
('IDV_OTHERNAME', 1, 0, 0, 8, 'othrname.vct', 'namefill');





delete from controls where id = 'ID_PLAYERNAME';
delete from controls where id = 'ID_OTHERPLAYERNAME';
insert into controls values
('IDV_PLAYERNAME','PN','EDITBOX','namefill', 'IDS_BTN_DOWN_HI', 0, 0, 2, 'Name', 'default','IDS_FONTTNB14',0x44FFFF,''),
('IDV_OTHERNAME','OTHN','EDITBOX','namefill', 'IDS_BTN_DOWN_HI', 0, 0, 2, '', 'default','IDS_FONTTNB14',0x44FFFF,'');


--machine for putting name on players
delete from "main"."machines" where [name] like 'S_NAME_%';
INSERT INTO "main"."machines" ( "name", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") 
VALUES 
('S_NAME_PLAYER', 'IDV_PLAYERNAME', '1', '1', '2', '2', '2', 'M_NAMEPLAQUE', '', '', '', ''),
('S_NAME_OTHER', 'IDV_OTHERNAME', '1', '1', '2', '2', '2', 'M_NAMEPLAQUE', '', '', '', '');

delete from "main"."transitions" where [automaton] = 'M_NAMEPLAQUE';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code", "guard", "doc") 
VALUES 

('M_NAMEPLAQUE', '0', 'present', 'Z_EPSILON', '0', '', '
     predicate active_character(name);
     active_character(?WPARM)?
     set_control_value(IDV_PLAYERNAME, PN, WPARM);
', '', ''),
('M_NAMEPLAQUE', 'present', '0', 'WAIT', '', 'SIG_SETNAME', '', '', '');


-- From within the message script you can signal 

-- UI Event (click on player) - player_picked , id
-- send a message to that player — get player details
-- they recieve it (receive message  — from is who is asking) - place the who is asking on their interested parties list
-- turn around a message with their details as querried from their ledger
--       run a script “run(getplayerdetails)”
-- From within the script, write the data to a table with a predicate
-- I’m looking at you — add me to your interested parties list


--------------------------------



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
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_MID1HURT', 'm1hurt', '369');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_MID1KISS', 'm1kiss', '370');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_MID1MAD', 'm1mad', '371');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_MID1SAD', 'm1sad', '372');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_MID1SUPRISED', 'm1sup', '373');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_MID1STRESS', 'm1stress', '374');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_MID1WAVE', 'm1wav', '375');
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
INSERT INTO "main"."machines" ( "name", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") 
VALUES 
( 'SID_HALO',   'IDV_ID', '30', '0', '70', '40', '3', 'M_HALO', 'SID_ID', '', '', ''),
( 'SID_SPELL',  'IDV_ID', '10', '50', '80', '150', '3', 'M_IDSPELL', '', '', '', ''),
( 'SID_ID',     'IDV_ID', '0', '0', '101', '171', '3', 'M_ID', '', '', '0', 'SID_AURA'),
( 'SID_AURA',   'IDV_ID', '0', '0', '112', '100', '3', 'M_AURA', '', '', '', ''),
( 'SID_DEC_WEALTH', 'IDV_ID', '0', '0', '0', '0', '3', 'M_DEC_WEALTH', '', '', '', ''),
( 'SID_INC_WEALTH', 'IDV_ID', '0', '0', '0', '0', '3', 'M_INC_WEALTH', '', '', '', ''),
--58 - 63 avail
( 'SID_DEC_ENERGY', 'IDV_ID', '0', '0', '0', '0', '3', 'M_DEC_ENERGY', '', '', '', ''),
( 'SID_INC_ENERGY', 'IDV_ID', '0', '0', '0', '0', '3', 'M_INC_ENERGY', '', '', '', ''),

-- this is signalled by SID_HALO, SID_AURA, and Wealth machines to persist the player's stats in realtime
-- called with SIGNAL(SID_PERSIST,SIG_UPDATE);
( 'SID_PERSIST', 'IDV_ID', '0', '0', '1', '1', '3', 'M_ID_PERSIST', '', '', '', '');


delete from "main"."machines" where [name] like 'SOD_%';
INSERT INTO "main"."machines" ( "name", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") 
VALUES 
('SOD_HALO', 'IDV_OTHERID', '30', '0', '70', '40', '3', 'M_O_HALO', 'SOD_ID', '', '', ''),
('SOD_SPELL','IDV_OTHERID', '10', '50', '80', '150', '3', 'M_O_IDSPELL', '', '', '', ''),
('SOD_ID',   'IDV_OTHERID', '0', '0', '101', '171', '3', 'M_OID', 'OWISDOM', 'OSEX', 'SOD_HALO', 'SOD_AURA'),
('SOD_AURA', 'IDV_OTHERID', '0', '0', '10', '10', '3', 'M_O_AURA', '', '', '', '');



--You can send just and object, just a signal, or both. The objects are dropped on the SID_ID, signals are sent to SID_SPELL …. Iirc


delete from "main"."transitions" where [automaton] like 'M_ID_P%';
delete from "main"."transitions" where [automaton] like 'M_DEC_E%';
delete from "main"."transitions" where [automaton] like 'M_AURA%';
delete from "main"."transitions" where [automaton] like 'M_O_AURA%';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code", "guard", "doc") 
VALUES 

('M_ID_PERSIST', '0', 'updated', 'WAIT', '', 'SIG_UPDATE', '
    predicate env(account_id, key, value);
    env("0","my_account_id",?address);
    predicate localplayer(account_id,name,viewname,wealth,karma,energy,strength,wisdom,gender,culture, knowsparent, knowsvillage,knowscity);
    localplayer(?address,?name,?viewname,?wealth,?karma,?energy,?strength,?wisdom,?gender,?BPARM,?knowsparent,?knowsvillage,?knowscity)?
    localplayer(address)~
    predicate active_character(name);
    active_character(?WPARM)?
    localplayer(address,WPARM,LVIEW,LWEALTH,LKARMA,LENERGY,10,LWISDOM,LSEX,BPARM,knowsparent,knowsvillage,knowscity).
', '', ''),
-- track everyone looking at me and then solicitly tell them to update
('M_ID_PERSIST', 'updated', 'toldEveryone', 'Z_EPSILON', '', '', '
    write("telling everyone");
    replay("system/send_update");

', '', ''),
('M_ID_PERSIST', 'toldEveryone', '0', 'Z_EPSILON', '', '', '', '', ''),


('M_DEC_ENERGY', '0', 'drain', 'WAIT', '', 'SIG_DEC', '', '', ''),
('M_DEC_ENERGY', 'drain', '0', 'Z_EPSILON', '0', '0', '
    SUBI(LENERGY,1);
    SIGNAL(SID_AURA,SIG_SUB);
', '', ''),

('M_AURA', '0', 'energyChange', 'WAIT', '0', 'SIG_MYAURA', '', '', ''),
('M_AURA', '1', 'energyChange', 'WAIT', '0', 'SIG_MYAURA', '', '', ''),
('M_AURA', '1', 'energyChange', 'WAIT', '0', 'SIG_ADD', '', '', ''),
('M_AURA', '1', 'energyChange', 'WAIT', '0', 'SIG_SUB', '', '', ''),
('M_AURA', '1', '1', 'WAIT', '0', 'SIG_CLEAR', '
  WRITE("Clear the aura");  
  SHOW(0);
', '', ''),
('M_AURA', '1', 'energyChange', 'WAIT', '0', '0', '', '', ''),
('M_AURA', 'energyChange', '1', 'ASSIGN', 'WPARM', 'V_REVERSE', '
       if(LENERGY > 23){
             ASSIGN(LENERGY,23);
       }
        ASSIGN(BPARM,LENERGY);
        MOV(WSPRITE,BPARM);
        MAPi(WSPRITE,S00_AURA_MAP);
        SHOW(WSPRITE);
        ANIMATE(WPARM);
        SIGNALi(0,SID_ID);
         if(LENERGY < 1){
            ASSIGN(LENERGY,0);
            WRITE("SHOULD BE DEAD!!!");
            SIGNAL(SID_ID,SIG_DEAD);
            }
        if(LENERGY > 0){
            SIGNALi(0,SID_ID);
            };  
', '', '');



INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code", "guard", "doc") 
VALUES 
('M_O_AURA', '0', 'energyChange', 'WAIT', '0', 'SIG_MYAURA', '', '', ''),
('M_O_AURA', '1', 'energyChange', 'WAIT', '0', 'SIG_MYAURA', '', '', ''),
('M_O_AURA', '1', 'energyChange', 'WAIT', '0', 'SIG_ADD', '', '', ''),
('M_O_AURA', '1', 'energyChange', 'WAIT', '0', 'SIG_SUB', '', '', ''),
('M_O_AURA', '1', '1', 'WAIT', '0', 'SIG_CLEAR', '
  WRITE("Clear the aura");  
  SHOW(0);
', '', ''),
('M_O_AURA', '1', 'energyChange', 'WAIT', '0', '0', '', '', ''),
('M_O_AURA', 'energyChange', '1', 'ASSIGN', 'WPARM', 'V_REVERSE', '
       if(OENERGY > 23){
             ASSIGN(OENERGY,23);
       }
        ASSIGN(BPARM,OENERGY);
        MOV(WSPRITE,BPARM);
        MAPi(WSPRITE,S00_AURA_MAP);
        SHOW(WSPRITE);
        ANIMATE(WPARM);
       
        if(OENERGY < 1){
            ASSIGN(OENERGY,0);
            SIGNAL(SOD_ID,SIG_DEAD);
            }
        if(OENERGY > 0){
            SIGNALi(0,SOD_ID);
            }; 
', '', '');





delete from "main"."transitions" where [automaton] like 'M_PED%';
delete from "main"."transitions" where [automaton] like 'M_HALO%';
delete from "main"."transitions" where [automaton] like 'M_O_HALO%';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code", "guard", "doc")
VALUES 
--('M_HALO', '0', '1', 'ASHOW', '0', 'IDS_HALO00', '', '', '');

('M_HALO', '0', 'karmaBoost', 'WAIT', '0', 'SIG_MYHALO', '', '', ''),
('M_HALO', '1', 'karmaBoost', 'WAIT', '0', 'SIG_MYHALO', '', '', ''),
('M_HALO', '1', 'karmaBoost', 'WAIT', '0', 'SIG_ADD', '', '', ''),
('M_HALO', '1', 'karmaDrain', 'WAIT', '0', 'SIG_SUB', '', '', ''),
('M_HALO', '1', 'karmaBoost', 'WAIT', '0', '0', '', '', ''),
('M_HALO', '1', '1', 'WAIT', '0', 'SIG_CLEAR', '
  WRITE("Clear the Halo");  
  SHOW(0);
', '', ''),
('M_HALO', 'karmaBoost', '1', 'ASSIGN', 'WPARM', '', '
       if(WIP2 > (MAX_KARMA - 1)){
             ASSIGN(LKARMA,(MAX_KARMA));
       }
        ASSIGN(BPARM,LKARMA);
        MOV(WSPRITE,BPARM);
        DIV(WSPRITE,2);
        MAPi(WSPRITE,S00_KARMA_MAP);
        ASHOW(WSPRITE);
        SIGNALi(0,WIP1);
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
        SIGNALi(0,WIP1);
', '', ''),


('M_O_HALO', '0', '1', 'Z_EPSILON', '0', '', '', '', ''),
('M_O_HALO', '1', 'karmaBoost', 'WAIT', '0', 'SIG_MYHALO', '', '', ''),
('M_O_HALO', '1', 'karmaBoost', 'WAIT', '0', 'SIG_ADD', '', '', ''),
('M_O_HALO', '1', 'karmaDrain', 'WAIT', '0', 'SIG_SUB', '', '', ''),
('M_O_HALO', '1', 'karmaBoost', 'WAIT', '0', '0', '', '', ''),
('M_O_HALO', '1', '1', 'WAIT', '0', 'SIG_CLEAR', '
  WRITE("Clear the Halo");  
  SHOW(0);
', '', ''),
('M_O_HALO', 'karmaBoost', '1', 'ASSIGN', 'WPARM', '', '
       if(WIP2 > (MAX_KARMA - 1)){
             ASSIGN(OKARMA,(MAX_KARMA));
       }
        ASSIGN(BPARM,OKARMA);
        MOV(WSPRITE,BPARM);
        DIV(WSPRITE,2);
        MAPi(WSPRITE,S00_KARMA_MAP);
        ASHOW(WSPRITE);
        SIGNALi(0,WIP1);
', '', ''),
('M_O_HALO', 'karmaDrain', '1', 'ASSIGN', 'WPARM', '', '
        if(OKARMA <= 0){
             ASSIGN(OKARMA,1);
       }      
        ASSIGN(BPARM,OKARMA);
        MOV(WSPRITE,BPARM);
        DIV(WSPRITE,2);
        MAPi(WSPRITE,S00_KARMA_MAP);
        ASHOW(WSPRITE);
        SIGNALi(0,WIP1);
', '', '');



-- for back to back {statements} do not use ';' between them, only at the end of the code segment



delete from "main"."transitions" where [automaton] = 'M_ID';
delete from "main"."transitions" where [automaton] = 'M_OID';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code", "guard", "doc") 
VALUES 


('M_ID', '0', 'present', 'WAIT', '0', 'SIG_MYID', '
     CLEAR(WSPRITE);
     SHOW(0);
     predicate active_character(name);
     active_character(?WPARM)?
     predicate localplayer(name,viewname, wealth,karma, energy,strength, wisdom, gender, culture);
     localplayer(WPARM, ?WTEMP1, ?LWEALTH, ?LKARMA,?WTEMP3,?LSTRENGTH, ?LWISDOM, ?LSEX, ?WTEMP2)?
     ASSIGN(LENERGY,WTEMP3);
', '', ''),
('M_ID', 'present', 'setId', 'Z_EPSILON', '', '', '       
  //for back to back {statements} do not use semi-colons between them, 
  //only at the end of the code segment!
  if(LSEX == 1){
    WPARM = F1;
     if(LWISDOM >= 30){
       WPARM = F3;
    }
     if(LWISDOM >= 20 && LWISDOM < 30){
       WPARM = F2;
    }
  }
  if(LSEX == 0){
    WPARM = M1;
      if(LWISDOM >= 30){
       WPARM = M3;
    }
    if(LWISDOM >= 20 && LWISDOM < 30){
        WPARM = M2;
    }
  }; 
', '', ''), 
('M_ID', 'setId', 'sitting', 'ASSIGN', 'WSPRITE', 'happy', '
    MAP(WSPRITE,WPARM);
    ASSIGN(BFRAME,0);
    SHOW(WSPRITE);
    SIGNAL(SID_AURA, SIG_MYAURA);
    SIGNAL(SID_HALO, SIG_MYHALO);
    SIGNAL(SID_PERSIST,SIG_UPDATE);
', '', ''),

-- this sitting to present reads from  localplayer repainting the whole id
('M_ID', 'sitting', 'present',  'WAIT', '0', 'SIG_MYID', '
    CLEAR(WSPRITE);
     SHOW(0);
    predicate active_character(name);
    active_character(?BPARM)?
    predicate localplayer(name,viewname, wealth,karma, energy,strength, wisdom, gender, culture);
    localplayer(BPARM, ?WTEMP1, ?LWEALTH, ?LKARMA,?LENERGY,?LSTRENGTH, ?LWISDOM, ?LSEX, ?WTEMP2)?
     SIGNAL(SID_AURA, SIG_MYAURA);
     SIGNAL(SID_HALO, SIG_MYHALO);
', '', ''),
('M_ID', 'sitting', '20', 'WAIT', '0', 'SIG_HAPPY', '', '', ''),
('M_ID', 'sitting', '21', 'WAIT', '0', 'SIG_HURT', '', '', ''),
('M_ID', 'sitting', '22', 'WAIT', '0', 'SIG_KISS', '', '', ''),
('M_ID', 'sitting', '23', 'WAIT', '0', 'SIG_MAD', '', '', ''),
('M_ID', 'sitting', '24', 'WAIT', '0', 'SIG_SAD', '', '', ''),
('M_ID', 'sitting', '25', 'WAIT', '0', 'SIG_SURPRISED', '', '', ''),
('M_ID', 'sitting', '26', 'WAIT', '0', 'SIG_STRESS', '', '', ''),
('M_ID', 'sitting', '27', 'WAIT', '0', 'SIG_WAVE', '', '', ''),
('M_ID', 'sitting', '30', 'WAIT', '0', 'SIG_DEAD', '', '', ''),
('M_ID', 'sitting', '50', 'WAIT', '0', 'SIG_BOMB', '
     WRITE("I am S_ID and I receive signals! This one is a SIG_BOMB! ");
', '', ''),
('M_ID', 'sitting', '100', 'WAIT', '0', 'SIG_CLEAR', '', '', ''),
--this is where an update signal is recieved (no SIG_XXXX)
('M_ID', 'sitting', 'present', 'WAIT', '0', '0', '', '', ''),


('M_ID', '20', 'playForward', 'ASSIGN', 'WSPRITE', 'happy', '', '', ''),
('M_ID', '21', 'playForward', 'ASSIGN', 'WSPRITE', 'hurt', '', '', ''),
('M_ID', '22', 'playOnce', 'ASSIGN', 'WSPRITE', 'kiss', '', '', ''),
('M_ID', '23', 'playForward', 'ASSIGN', 'WSPRITE', 'mad', '', '', ''),
('M_ID', '24', 'playForward', 'ASSIGN', 'WSPRITE', 'sad', '', '', ''),
('M_ID', '25', 'playForward', 'ASSIGN', 'WSPRITE', 'surprised', '', '', ''),
('M_ID', '26', 'playForward', 'ASSIGN', 'WSPRITE', 'stress', '', '', ''),
('M_ID', '27', 'playForward', 'ASSIGN', 'WSPRITE', 'wave', '', '', ''),
('M_ID', '30', 'playDead', 'ASSIGN', 'WSPRITE', 'dead', '', '', ''),

('M_ID', '50', '51', 'VIDEO', '0', 'IDS_EXPLODE1', '', '', ''),
('M_ID', '51', '21', 'PLAYWAVE', '0', 'SOUND_EXPLODE', '
            SUBI(LENERGY,1);
            SIGNAL(SID_PERSIST,SIG_UPDATE);
            SIGNAL(SID_AURA,SIG_SUB);
', '', ''),

('M_ID', 'playForward', 'sitting', 'NEQUALi', 'LENERGY', '0', '
    ASSIGN(BFRAME, 0);
    MAP(WSPRITE,WPARM);
    SHOW(WSPRITE);
    ANIMATE(0,V_REWIND); //PLAY FORWARD THEN BACK
', '', ''),
('M_ID', 'playForward', 'playDead', 'EQUALi', 'LENERGY', '0', '
    ASSIGN(WSPRITE, dead);
    MAP(WSPRITE,WPARM);
    SHOW(WSPRITE);
    ANIMATE(0,V_REWIND); //PLAY FORWARD THEN BACK
', '', ''),
('M_ID', 'playOnce', 'sitting', 'ASSIGN', 'BFRAME', '0', '
    MAP(WSPRITE,WPARM);
    SHOW(0,WSPRITE);
    ANIMATE(0,0);
', '', ''),
('M_ID', 'playDead', 'dead', 'ASSIGN', 'BFRAME', '0', '
    WRITE("HERE I DIE");
    MAP(WSPRITE,WPARM);
    SHOW(0,WSPRITE);
    VIDEO(0,WSPRITE);
    ANIMATE(0,0);
    ASSIGN(LENERGY,0);
    ASSIGN(LWEALTH,0);
    SIGNAL(SMP_VIAL,SIG_DRAIN);
    SIGNAL(SID_PERSIST,SIG_UPDATE);
    LOADVIEW(IDV_VIL8);
', '', ''),
('M_ID', 'dead', 'present', 'WAIT', '', 'SIG_REVIVE', '', '', ''),
('M_ID', 'dead', '0', 'WAIT', '', 'SIG_MYID', '', '', ''),
('M_ID', '100', 'empty', 'Z_EPSILON', '', '', '
    SHOW(0);
    SIGNAL(WIP3,SIG_CLEAR);
    SIGNAL(WIP4,SIG_CLEAR);
', '', ''),
('M_ID', 'empty', '0', 'WAIT', '', 'SIG_SHOW', '', '', ''),

---------------------
---------------------
---------------------
('M_OID', '0', 'present', 'WAIT', '', 'SIG_OTID', '
    unloadview(IDV_MEFID);
    loadview(IDV_OTHERID);
    CLEAR(WSPRITE);
     SHOW();
     predicate otherplayer(pid,status,player,account_id,name,viewname,wealth,karma,energy,strength,wisdom,gender,culture, knowsparent, knowsvillage,knowscity);
     otherplayer(?BPARM, "ACTIVE", ?WPARM,?acntid,?ONAME,?OVIEW,?OWEALTH,?OKARMA,?OENERGY, ?OSTRENGTH,?OWISDOM,?OSEX,?OCULTURE,?OKNOWSPARENT,?OKNOWSVILLSAGE,?OKNOWSCITY)?
      set_control_value(IDV_OTHERNAME, OTHN, ONAME);
      SIGNAL(SOD_AURA,SIG_MYAURA);
      SIGNAL(SOD_HALO, SIG_MYHALO);
', '', ''), 
-- so here we need to message the other player to get
-- their player attributes - wont depend on OSEX as below - maybe to get?
('M_OID', 'present', 'setId', 'Z_EPSILON', '', '', '
    if(OSEX == 1){
    WPARM = F1;
     if(OWISDOM >= 30){
       WPARM = F3;
    }
     if(OWISDOM >= 20 && OWISDOM < 30){
       WPARM = F2;
    }
  }
  if(OSEX == 0){
    WPARM = M1;
      if(OWISDOM >= 30){
       WPARM = M3;
    }
    if(OWISDOM >= 20 && OWISDOM < 30){
        WPARM = M2;
    }
  }; 
', '', ''), 

('M_OID', 'setId', 'sitting', 'ASSIGN', 'WSPRITE', 'happy', '
        MAP(WSPRITE,WPARM);
        ASSIGN(BFRAME,0);
        SHOW(WSPRITE);
', '', ''),
('M_OID', 'sitting', 'present', 'WAIT', '', 'SIG_OTID', '
    loadview(IDV_OTHERID);
    CLEAR(WSPRITE);
     SHOW();
     predicate otherplayer(pid,status,player,account_id,name,viewname,wealth,karma,energy,strength,wisdom,gender,culture, knowsparent, knowsvillage,knowscity);
     otherplayer(?BPARM, "ACTIVE", ?WPARM,?acntid,?ONAME,?OVIEW,?OWEALTH,?OKARMA,?OENERGY, ?OSTRENGTH,?OWISDOM,?OSEX,?OCULTURE,?OKNOWSPARENT,?OKNOWSVILLSAGE,?OKNOWSCITY)?
     set_control_value(IDV_OTHERNAME, OTHN, ONAME);
     SIGNAL(SOD_AURA,SIG_SUB);
     SIGNAL(SOD_HALO, SIG_MYHALO);

', '', ''), 
('M_OID', 'sitting', '20', 'WAIT', '0', 'SIG_HAPPY', '', '', ''),
('M_OID', 'sitting', '21', 'WAIT', '0', 'SIG_HURT', '', '', ''),
('M_OID', 'sitting', '22', 'WAIT', '0', 'SIG_KISS', '', '', ''),
('M_OID', 'sitting', '23', 'WAIT', '0', 'SIG_MAD', '', '', ''),
('M_OID', 'sitting', '24', 'WAIT', '0', 'SIG_SAD', '', '', ''),
('M_OID', 'sitting', '25', 'WAIT', '0', 'SIG_SURPRISED', '', '', ''),
('M_OID', 'sitting', '26', 'WAIT', '0', 'SIG_STRESS', '', '', ''),
('M_OID', 'sitting', '27', 'WAIT', '0', 'SIG_WAVE', '', '', ''),
('M_OID', 'sitting', '30', 'WAIT', '0', 'SIG_DEAD', '', '', ''),
('M_OID', 'sitting', '50', 'WAIT', '0', 'SIG_BOMB', '', '', ''),
('M_OID', 'sitting', '100', 'WAIT', '0', 'SIG_CLEAR', '', '', ''),
('M_OID', 'sitting', '0', 'WAIT', '0', '0', '', '', ''),



('M_OID', '20', 'playForward', 'ASSIGN', 'WSPRITE', 'happy', '', '', ''),
('M_OID', '21', 'playForward', 'ASSIGN', 'WSPRITE', 'hurt', '', '', ''),
('M_OID', '22', 'playOnce', 'ASSIGN', 'WSPRITE', 'kiss', '', '', ''),
('M_OID', '23', 'playForward', 'ASSIGN', 'WSPRITE', 'mad', '', '', ''),
('M_OID', '24', 'playForward', 'ASSIGN', 'WSPRITE', 'sad', '', '', ''),
('M_OID', '25', 'playForward', 'ASSIGN', 'WSPRITE', 'surprised', '', '', ''),
('M_OID', '26', 'playForward', 'ASSIGN', 'WSPRITE', 'stress', '', '', ''),
('M_OID', '27', 'playForward', 'ASSIGN', 'WSPRITE', 'wave', '', '', ''),
('M_OID', '30', 'playDead', 'ASSIGN', 'WSPRITE', 'dead', '', '', ''),

('M_OID', '50', '51', 'VIDEO', '0', 'IDS_EXPLODE1', '', '', ''),
('M_OID', '51', '21', 'PLAYWAVE', '0', 'SOUND_EXPLODE', '', '', ''),

('M_OID', 'playForward', 'sitting', 'ASSIGN', 'BFRAME', '0', '
    MAP(WSPRITE,WPARM);
    SHOW(WSPRITE);
    ANIMATE(0,V_REWIND); //PLAY FORWARD THEN BACK
', '', ''),
('M_OID', 'playOnce', 'sitting', 'ASSIGN', 'BFRAME', '0', '
    MAP(WSPRITE,WPARM);
    SHOW(0,WSPRITE);
    ANIMATE(0,0);
', '', ''),
('M_OID', 'playDead', 'dead', 'ASSIGN', 'BFRAME', '0', '
    MAP(WSPRITE,WPARM);
    SHOW(0,WSPRITE);
    VIDEO(0,WSPRITE);
    ANIMATE(0,0);
    ASSIGN(OENERGY,0);
    ASSIGN(OWEALTH,0);
', '', ''),
('M_OID', 'dead', 'present', 'WAIT', '', 'SIG_OTID', '', '', ''),
('M_OID', 'dead', '0', 'WAIT', '', 'SIG_MYID', '', '', ''),
--this clears the id and the aura (wip4)
('M_OID', '100', '0', 'Z_EPSILON', '', '', '
    SHOW(0);
    SIGNAL(WIP4,SIG_CLEAR);
    SIGNAL(WIP3,SIG_CLEAR);
', '', '');
--The to state below should prob be setid not sitting
--('M_OID', 'empty', '0', 'WAIT', '', 'SIG_SHOW', '', '', '');






delete from "main"."transitions" where [automaton] like 'M_IDSPELL%';
delete from "main"."transitions" where [automaton] like 'M_O_IDSPELL%';
delete from "main"."transitions" where [automaton] like 'M_ACTIVE_SPELLTARGET%';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code", "guard", "doc") 
VALUES 
----------------------------
----------------------------
-- This is where bombs and spells get processed for effect
-- for both local and other players
-- spell_..ou creates a drop here
-- new approach is to signal the drop here instead from a recieved message

('M_IDSPELL','0','checkObject','DROP','','', '
    CLEAR(WVIEWID);
    WRITE("Item Dropped on ID");

', '', ''),
('M_IDSPELL','0','checkObject','WAIT','','SIG_DROPPED', '
    //NEED TO SHOW OBJECT HERE OR AT LEAST SET WOJBJECT
    predicate inboundItem(object,id,from);
    inboundItem(?WOBJECT,?BPARM,?from)?

    CLEAR(WVIEWID);
    WRITE("Item Dropped on ID");

', '', ''),
('M_IDSPELL','0','0','WAIT','0','SIG_CLEAR', '
    SHOW();
', '', ''),
('M_IDSPELL','checkObject','itsAbomb','IS_A','WOBJECT','IDC_BOMB', '', '', ''),
('M_IDSPELL','checkObject','itsAspell','IS_A','WOBJECT','IDC_SPELL', '', '', ''),
('M_IDSPELL','checkObject','itsAspell','IS_A','WOBJECT','IDD_GVIAL', '', '', ''),
--
('M_IDSPELL','checkObject','regularObject','Z_EPSILON','0','0', '
    WRITE("M_IDSPELL has detected a regular object drop from me or other");
    SHOW(WOBJECT);
', '', ''),
--
('M_IDSPELL','regularObject','0','GRAB','','', '
    CLEAR(WOBJECT);
    SHOW();
', '', ''),

-- Need to check to see if protection is active and if it is 
-- ignore bombs and spells (PROTECT_ACTIVE in state active)
-- Not sure why SPELL_..E is even needed at all - could just signal the id.

('M_IDSPELL','itsAbomb','0','IFSTATE','active','PROTECT_ACTIVE', ' 
    PLAYWAVE(SOUND_SUCK);
', '', ''),
('M_IDSPELL','itsAspell','0','IFSTATE','active','PROTECT_ACTIVE', ' 
  PLAYWAVE(SOUND_SUCK);
', '', ''),
('M_IDSPELL','itsAbomb','0','Z_EPSILON','','', '
     WRITE("M_IDSPELL says ITS A BOMB");
     SIGNAL(SID_ID, SIG_BOMB);
', '', ''),
('M_IDSPELL','itsAspell','0','Z_EPSILON','','', '
    if(WOBJECT == IDD_PROTECT){SHOW();SIGNAL(PROTECT_ACTIVE,SIG_SPELLME);}
    if(WOBJECT == IDD_NYBREATH){SHOW();SIGNAL(NYBREATH_ACTIVE,SIG_SPELLME);}
    if(WOBJECT == IDD_WETBREATH){SHOW();SIGNAL(WETBREATH_ACTIVE,SIG_SPELLME);}
    if(WOBJECT == IDD_TELEKINESIS){SHOW();SIGNAL(TELEKINESIS_ACTIVE,SIG_SPELLME);}
    if(WOBJECT == IDD_INVISIBLE){SHOW();SIGNAL(INVISIBLE_ACTIVE,SIG_SPELLME);}
    if(WOBJECT == IDD_ENCHANT){SHOW(WOBJECT);SIGNAL(ENCHANT_ACTIVE,SIG_SPELLME);}
    if(WOBJECT == IDD_HOLDING){SHOW(WOBJECT);SIGNAL(HOLDING_ACTIVE,SIG_SPELLME);}
    if(WOBJECT == IDD_STALKER){SHOW(WOBJECT);SIGNAL(STALKING_ACTIVE,SIG_SPELLME);}
    if(WOBJECT == IDD_TRANSFER){SHOW();SIGNAL(TRANSFER_ACTIVE,SIG_SPELLME);}
    if(WOBJECT == IDD_DEATH){SHOW();SIGNAL(DEATH_ACTIVE,SIG_SPELLME);}
    if(WOBJECT == IDD_BANISHMENT){SHOW();SIGNAL(BANISHMENT_ACTIVE,SIG_SPELLME);}
    if(WOBJECT == IDD_BLINDNESS){SHOW();SIGNAL(BLINDNESS_ACTIVE,SIG_SPELLME);}
    if(WOBJECT == IDD_HALLUCINATE){SHOW();SIGNAL(HALLUCINATE_ACTIVE,SIG_SPELLME);}
    if(WOBJECT == IDD_GVIAL){SHOW();SIGNAL(GOPA_ACTIVE,SIG_SPELLME);}
    if(WOBJECT == IDD_REVIAL){SHOW();SIGNAL(REVIVE_ACTIVE,SIG_SPELLME);}
', '', ''),

----------------------------
----------------------------
----------------------------
-->>> Local player drops an object on M_O_IDSPELL and then
--  SPELL_..OU(WOBJECT); creates a DROP over in the other players M_IDSPELL by calling  SPELL_..OU(WOBJECT,SIG_OBJECT);
--  The object is again looked at on the M_IDSPELL


('M_O_IDSPELL','0','checkObject','DROP','','', '
    CLEAR(WVIEWID);
    WRITE("I dropped an item on another player");
', '', ''),
('M_O_IDSPELL', '0', 'postProcessObject', 'WAIT', '', 'SIG_DROP', '
    WRITE("M_O_IDSPELL says an item dropped... check if there is a meflin");
    REF_MACHINE(MEFPAN_VIEWCAP);
    MOV(BPARM,R_BPARM);
    if(R_BPARM == 1){  //Theres a meflin up
        REF_MACHINE(MEFCURRENT); //Who is it?
        MOV(WPARM,R_WPARM);
        SIGNAL(WPARM,SIG_DROP); //so the meflin mef_talk can look at the wobject
        SHOW();
    }
   if(R_BPARM == 0){
        REF_MACHINE(CHAR_DROPTARGET); //written in case machines overlap meflin machine is in the way
        MOV(WOBJECT,R_WOBJECT);
            //Deduct for all the bad or good things local player can drop 
                ADDI(LKARMA,1); 
                SIGNAL(SID_HALO,SIG_ADD);
        //Assuming this would create the spell over on the other player
        //SPELL_YOU(WOBJECT);
        predicate dropitem(object,id);
        dropitem("%")~
        dropitem(WOBJECT,"id").
        replay("system/send_item");
        SHOW();
    } 
', '', ''),

('M_O_IDSPELL','postProcessObject','0','Z_EPSILON','0','0', '', '', ''),
-- I think this should be dumber and just pass whatever
--from 0 drop
('M_O_IDSPELL','checkObject','itsAbomb','IS_A','WOBJECT','IDC_BOMB', '', '', ''),
('M_O_IDSPELL','checkObject','itsAspell','IS_A','WOBJECT','IDC_SPELL', '', '', ''),
('M_O_IDSPELL','checkObject','itsAspell','IS_A','WOBJECT','IDD_GVIAL', '', '', ''),
('M_O_IDSPELL','checkObject','regularObject','Z_EPSILON','0','0', '
    SHOW(WOBJECT);
     predicate dropitem(object,id);
        dropitem("%")~
        dropitem(WOBJECT,"id").
        replay("system/send_item");
', '', ''),
('M_O_IDSPELL','regularObject','0','ZEPSILON','','', '
    CLEAR(WOBJECT);
    SHOW();
', '', ''),

-- This SPELL_..OU needs to pass the WOBJECT and the SIG_BOMB (M_IDSPELL needs to look at the WOBJECT to determine it a bomb)
-- M_IDSPELL will process it locally
('M_O_IDSPELL','itsAbomb','0','Z_EPSILON','','', '
    WRITE("M_O_IDSPELL says ITS A BOMB");
    SIGNALi(SOD_ID,SIG_BOMB);
     predicate dropitem(object,id);
        dropitem("%")~
        dropitem(WOBJECT,"id").
        replay("system/send_item");
        SHOW();
    ', '', ''),
('M_O_IDSPELL','itsAspell','0','Z_EPSILON','','', '
    predicate dropitem(object,id);
        dropitem("%")~
        dropitem(WOBJECT,"id").
        replay("system/send_item");
        SHOW();
        if(WOBJECT == IDD_ENCHANT){
            predicate otherplayer(pid,status);
            otherplayer(?to,"ACTIVE")?
            marker = get_theta(); 
            predicate spellinfo(status,caster,victim,object,caster_view,victim_view,leader_heading);
            spellinfo()~
            spellinfo("ACTIVE",,to,WOBJECT,LVIEW,"EMPTY",marker).
            SIGNAL(ENCHANT_POSTER,SIG_SPELLME);
        }
        if(WOBJECT == IDD_STALKER){
            predicate otherplayer(pid,status);
            otherplayer(?to,"ACTIVE")?
            predicate spellinfo(status,caster,victim,object,caster_view,victim_view,leader_heading);
            spellinfo()~
            spellinfo("ACTIVE",,to,WOBJECT,"EMPTY",OVIEW,0).
            SIGNAL(STALKING_READER,SIG_SPELLME);
        }
', '', '');


--Making a test view ------------------
------------------------------------------------------
------------------------------------------------------


delete from "main"."views" where [view_name] like 'IDV_TESTPAN%';
INSERT INTO "main"."views" ( "view_name", "Z", "backgroundAudio", "locator_view", "behavior_id", "portal_filename", "surface_filename") 
VALUES ('IDV_TESTPAN', '1', '3', '1', '1', 'smlpanel.vct', 'testscreen');

delete from "main"."machines" where [name] like 'S0_TEST%';
INSERT INTO "main"."machines" ( "name", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") 
VALUES 
('S0_TEST_1', 'IDV_TESTPAN', '40', '70', '110', '135',   '2', 'M_TEST1', '', '', '', ''),
('S0_TEST_2', 'IDV_TESTPAN', '40', '148', '110', '212',  '2', 'M_TEST2', '', '', '', ''),
('S0_TEST_3', 'IDV_TESTPAN', '40', '212', '110', '290',  '2', 'M_TEST3', '', '', '', ''),
('S0_TEST_4', 'IDV_TESTPAN', '150', '70', '210', '135',  '2', 'M_TEST4', '', '', '', ''),
('S0_TEST_5', 'IDV_TESTPAN', '150', '148', '210', '212', '2', 'M_TEST5', '', '', '', ''),
('S0_TEST_6', 'IDV_TESTPAN', '150', '212', '210', '290', '2', 'M_TEST6', '', '', '', ''),
('S0_TEST_7', 'IDV_TESTPAN', '250', '70', '310', '135',  '2', 'M_TEST7', '', '', '', ''),
('S0_TEST_8', 'IDV_TESTPAN', '250', '148', '310', '212', '2', 'M_TEST8', '', '', '', ''),
('S0_TEST_9', 'IDV_TESTPAN', '250', '212', '310', '290', '2', 'M_TEST9', '', '', '', '');



delete from "main"."transitions" where [automaton] like 'M_TEST%';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code", "guard", "doc") 
VALUES 
('M_TEST1', '0', '0', 'CLICK', '0', '0', '
    ASSIGN(LENERGY,4);
    SIGNAL(SID_AURA,SIG_ADD);
    SIGNALi(0,SID_ID);
', '', ''),
('M_TEST2', '0', '0', 'CLICK', '0', '0', '
    ADDI(LENERGY,1);
    SIGNAL(SID_AURA,SIG_ADD);
    SIGNALi(0,SID_ID);
    ', '', ''),
('M_TEST3', '0', '0', 'CLICK', '0', '0', '
    SUBI(LENERGY,1);
    SIGNAL(SID_AURA,SIG_SUB);
    SIGNALi(0,SID_ID);
    ', '', ''),
('M_TEST4', '0', '0', 'CLICK', '0', '0', '
    ASSIGN(LKARMA,0);
    playmusic(cavewind,3);
    SIGNAL(SID_HALO,SIG_ADD);
', '', ''),
('M_TEST5', '0', '0', 'CLICK', '0', '0', '
    ADDI(LKARMA,1);
     playmusic(kam002aa,3);
    SIGNAL(SID_HALO,SIG_ADD);
    ', '', ''),
('M_TEST6', '0', '0', 'CLICK', '0', '0', '
    if (LKARMA < 0){
        ASSIGN(LKARMA,1);
    }
    SUBI(LKARMA,1);
     playmusic(kam209ba,3);
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



-- Things that you do that should add to your wisdom (SID_ID,  ASSIGN(LWISDOM,40);SUBI(LWISDOM,2); SIGNALi(0,SID_ID);)
-- because the id is checked for replacement - takes no parameter -- state goes to 0
--     get special resource
--     move a puzzle forward
--     solving a puzzle
--     purchasing something
--     making a spell

-- Things that impact your karma (SID_HALO,  SUBI(LKARMA,1); SIGNAL(SID_HALO,SIG_ADD);)
--     stealing
--     hurting 
--     healing
--     killing

-- things that impact your energy (SID_AURA)  ADDI(OENERGY,1); SIGNAL(SID_AURA,SIG_ADD);
--     this is done..





-- ('M_IDSPELL',0,100,'DROP','0','0', '', '', ''),
-- ('M_IDSPELL',1,2,'SPELL_..E','WOBJECT','SIG_OBJECT', '', '', ''),
-- ('M_IDSPELL',2,3,'PLAYWAVE','0','SOUND_POPUP', '', '', ''),
-- ('M_IDSPELL',3,4,'ASHOW','WOBJECT','', '', '', ''),
-- ('M_IDSPELL',4,100,'DROP','0','0', '', '', ''),
-- ('M_IDSPELL',4,10,'GRAB','0','0', '', '', ''),
-- ('M_IDSPELL',4,20,'WAIT','0','SIG_BURST', '', '', ''),
-- ('M_IDSPELL',4,2,'WAIT','0','0', '', '', ''),
-- ('M_IDSPELL',10,12,'EQUALi','WVIEWID','0', '', '', ''),
-- ('M_IDSPELL',10,11,'LOADVIEW','WVIEWID','', '', '', ''),
-- ('M_IDSPELL',11,12,'CLEAR','WVIEWID','', '', '', ''),
-- ('M_IDSPELL',12,13,'SHOW','0','0', '', '', ''),
-- ('M_IDSPELL',13,0,'SPELL_..E','WOBJECT','SIG_CLEAR', '', '', ''),
-- ('M_IDSPELL',20,21,'CLEAR','WOBJECT','', '', '', ''),
-- ('M_IDSPELL',21,22,'SHOW','0','0', '', '', ''),
-- ('M_IDSPELL',22,0,'VIDEO','0','IDS_SMBURST', '', '', ''),
-- ('M_IDSPELL',100,101,'CLEAR','WVIEWID','', '', '', ''),
-- ('M_IDSPELL',101,102,'IS_A','WOBJECT','IDC_BOMB', '', '', ''),
-- ('M_IDSPELL',101,120,'IS_A','WOBJECT','IDC_SCROLL', '', '', ''),
-- ('M_IDSPELL',101,1,'Z_EPSILON','0','0', '', '', ''),
-- ('M_IDSPELL',102,0,'SPELL_..E','0','SIG_BOMB', '', '', ''),
-- ('M_IDSPELL',120,121,'MOV','WTEMP1','WOBJECT', '', '', ''),
-- ('M_IDSPELL',121,122,'MOV','WVIEWID','LVIEW', '', '', ''),
-- ('M_IDSPELL',122,1,'LOADVIEW','0','IDV_PARCHPAN', '', '', ''),




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

--  if(LWISDOM >= 30){
--        ASSIGN(WPARM,F3);
--     };
--      if(LWISDOM >= 20 && LWISDOM < 30){
--         ASSIGN(WPARM,F2);
--     };
--     if(LWISDOM < 20){
--        ASSIGN(WPARM,F1);
--     };


--  if(LWISDOM >= 30){
--        ASSIGN(WPARM,M3);
--     };
--     if(LWISDOM >= 20 && LWISDOM < 30){
--         ASSIGN(WPARM,M2);
--     };
--     if(LWISDOM < 20){
--        ASSIGN(WPARM,M1);
--     };