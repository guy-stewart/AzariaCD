delete from games;
drop table games;

------------------------------------RESOURCES
delete from idv where name = 'IDV_MEFPAN';
delete from views where view_name = 'IDV_MEFPAN';

delete from idv where name = 'IDV_S24_RATHE_PAN';
delete from views where view_name = 'IDV_S24_RATHE_PAN';

delete from idv where name = 'IDV_S10_THAOR_PAN';
delete from views where view_name = 'IDV_S10_THAOR_PAN';

delete from idv where name = 'IDV_S16_PERST_PAN';
delete from views where view_name = 'IDV_S16_PERST_PAN';

delete from idv where name = 'IDV_S09_AMBLE_PAN';
delete from views where view_name = 'IDV_S09_AMBLE_PAN';

INSERT INTO "main"."idv" ("name", "id") VALUES ('IDV_MEFPAN', '9802');
INSERT INTO "main"."views" ("view_id", "view_name", "Z", "backgroundAudio", "locator_view", "behavior_id", "portal_filename", "surface_filename") VALUES ('9802', 'IDV_MEFPAN', '1', '1', '1', '1', 'wdepanel.vct', 'PARCHPAN');

delete from "main"."constants" where name = 'NEELP_COORD';
delete from "main"."constants" where name = 'RATHE_COORD';
delete from "main"."constants" where name = 'THAOR_COORD';
delete from "main"."constants" where name = 'PERST_COORD';
INSERT INTO "main"."constants" ("name", "value") 
VALUES 
('NEELP_COORD', 1),
('RATHE_COORD', 2),
('THAOR_COORD', 3),
('PERST_COORD', 4);

--IDV_S10_THAOR_PAN

-- the first one is neelp
--S33_Neelp NEELPQ1

delete from spr_names where name = 'IDS_M1SWAY';
delete from spr_names where name = 'IDS_M1SWAYB';
delete from spr_names where name = 'IDS_M1SWAYC';
delete from spr_names where name = 'IDS_M1A1ANIM';
delete from spr_names where name = 'IDS_M1I1ANIM';
delete from spr_names where name = 'IDS_M1J1ANIM';
delete from spr_names where name = 'IDS_M1P1ANIM';
delete from spr_names where name = 'IDS_M1S1ANIM';
delete from spr_names where name = 'IDS_M1S2ANIM';
delete from spr_names where name = 'IDS_M1T1ANIM';

--PERST
--Audio prefix MPM1A.
delete from spr_names where name = 'IDS_M2A10001';
delete from spr_names where name = 'IDS_M2FIDDLE';
delete from spr_names where name = 'IDS_M2H10000';
delete from spr_names where name = 'IDS_M2I10000';
delete from spr_names where name = 'IDS_M2P10000';
delete from spr_names where name = 'IDS_M2S10000';
delete from spr_names where name = 'IDS_M2S20000';
delete from spr_names where name = 'IDS_M2T10000';
delete from spr_names where name = 'IDS_M2FIDDLEsm1';

--RATHE
--Audio prefix MSM1A
delete from spr_names where name = 'IDS_M6A10000';
delete from spr_names where name = 'IDS_M6H10000';
delete from spr_names where name = 'IDS_M6I10000';
delete from spr_names where name = 'IDS_M6P10000';
delete from spr_names where name = 'IDS_M6S10000';
delete from spr_names where name = 'IDS_M6S20000';
delete from spr_names where name = 'IDS_M6STIR';
delete from spr_names where name = 'IDS_M6T10000';

-- OLD GUY - IN RESERVE FOR NOW

delete from spr_names where name = 'IDS_MSA10001';
delete from spr_names where name = 'IDS_MSH10001';
delete from spr_names where name = 'IDS_MSI10001';
delete from spr_names where name = 'IDS_MSP10001';
delete from spr_names where name = 'IDS_MSS10001';
delete from spr_names where name = 'IDS_MSS20001';
delete from spr_names where name = 'IDS_MSSQUAT';
delete from spr_names where name = 'IDS_MST1001';
delete from spr_names where name = 'IDS_MST10001';


--THAOR Audio prefix MY(G and M)
--MYM1A
delete from spr_names where name = 'IDS_MYA10000';
delete from spr_names where name = 'IDS_MYH10000';
delete from spr_names where name = 'IDS_MYI10000';
delete from spr_names where name = 'IDS_MYJUGGLE';
delete from spr_names where name = 'IDS_MYP10000';
delete from spr_names where name = 'IDS_MYS10000';
delete from spr_names where name = 'IDS_MYS20000';
delete from spr_names where name = 'IDS_MYT10000';
delete from spr_names where name = 'IDS_MYJUGGLEsm1';


INSERT INTO "main"."spr_names" ("name", "value", "id") 
VALUES 
('IDS_M1SWAY', 'M1SWAY', '15001'),
('IDS_M1A1ANIM', 'M1A1ANIM', '15002'),
('IDS_M1I1ANIM', 'M1I1ANIM', '15003'),
('IDS_M1J1ANIM', 'M1J1ANIM', '15004'),
('IDS_M1P1ANIM', 'M1P1ANIM', '15005'),
('IDS_M1S1ANIM', 'M1S1ANIM', '15006'),
('IDS_M1S2ANIM', 'M1S2ANIM', '15043'),
('IDS_M1SWAYB', 'M1SWAYB', '15007'),
('IDS_M1SWAYC', 'M1SWAYC', '15008'),
('IDS_M1T1ANIM', 'Neelpt', '15009'),

('IDS_M2A10001', 'M2A10001', '15010'),
('IDS_M2FIDDLE', 'M2FIDDLE', '15011'),
('IDS_M2H10000', 'M2H10000', '15012'),
('IDS_M2I10000', 'M2I10000', '15013'),
('IDS_M2P10000', 'M2P10000', '15014'),
('IDS_M2S10000', 'M2S10000', '15015'),
('IDS_M2S20000', 'M2S20000', '15016'),
('IDS_M2T10000', 'M2T', '15017'),
('IDS_M2FIDDLEsm1', 'M2FIDDLEsm1', '15046'),

('IDS_M6A10000', 'M6A10000', '15018'),
('IDS_M6H10000', 'M6H10000', '15019'),
('IDS_M6I10000', 'M6I10000', '15020'),
('IDS_M6P10000', 'M6P10000', '15021'),
('IDS_M6S10000', 'M6S10000', '15022'),
('IDS_M6S20000', 'M6S20000', '15023'),
('IDS_M6STIR', 'M6STIR', '15024'),
('IDS_M6T10000', 'M6T', '15025'),

('IDS_MSA10001', 'MSA10001', '15026'),
('IDS_MSH10001', 'MSH10001', '15027'),
('IDS_MSI10001', 'MSI10001', '15028'),
('IDS_MSP10001', 'MSP10001', '15029'),
('IDS_MSS10001', 'MSS10001', '15030'),
('IDS_MSS20001', 'MSS20001', '15031'),
('IDS_MSSQUAT', 'MSSQUAT', '15032'),
('IDS_MST1001', 'MST1001', '15033'),
('IDS_MST10001', 'MST10001', '15034'),

('IDS_MYA10000', 'MYA10000', '15035'),
('IDS_MYH10000', 'MYH10000', '15036'),
('IDS_MYI10000', 'MYI10000b', '15037'),
('IDS_MYJUGGLE', 'MYJUGGLE', '15038'),
('IDS_MYP10000', 'MYP10000', '15039'),
('IDS_MYS10000', 'MYS10000', '15040'),
('IDS_MYS20000', 'MYS20000', '15041'),
('IDS_MYT10000', 'MYT', '15042'),
('IDS_MYJUGGLEsm1', 'MYJUGGLEsm1', '15045');


delete from sounds where name = 'SOUND_NEELPQ1';
insert into sounds values ('SOUND_NEELPQ1','NEELPQ1',26); 

delete from sounds where name = 'SOUND_RATHEQ1';
insert into sounds values ('SOUND_RATHEQ1','M6M1A',27); 

delete from sounds where name = 'SOUND_THAORQ1';
insert into sounds values ('SOUND_THAORQ1','MYM1A',28); 

delete from sounds where name = 'SOUND_PERSTQ1';
insert into sounds values ('SOUND_PERSTQ1','MPM1A',29); 

delete from sounds where name = 'SOUND_AMBLEQ1';
insert into sounds values ('SOUND_AMBLEQ1','MSM1A',30); 

-------------------------------------------------------------------

delete from machines where name = 'NEELP_COORD';
delete from machines where name = 'S33_NEELP';
delete from machines where name = 'S33_NEELP_Q1';
delete from machines where name = 'S33_MEFPAN_OK';
delete from machines where name = 'S33_NEELP_alt1';
delete from machines where name = 'S33_NEELP_alt2';

delete from machines where name = 'S24_RATHE';
delete from machines where name = 'S24_RATHE_Q1';
delete from machines where name = 'S24_MEFPAN_OK';

delete from machines where name = 'S10_THAOR';
delete from machines where name = 'S10_THAOR_Q1';
delete from machines where name = 'S10_THAOR_OK';
delete from machines where name = 'S10_THAOR_alt1';

delete from machines where name = 'S16_PERST';
delete from machines where name = 'S16_PERST_Q1';
delete from machines where name = 'S16_PERST_OK';
delete from machines where name = 'S16_PERST_alt1';

delete from machines where name = 'S09_AMBLE';
delete from machines where name = 'S09_AMBLE_Q1';
delete from machines where name = 'S09_AMBLE_OK';
--delete from machines where name = 'S09_AMBLE_alt1';
delete from machines where name = 'MEFCURRENT';
delete from machines where name = 'MEFPAN_OK';

INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") 
VALUES 
-- ALSO MAKE A MACHINE CALLED A MEF_COORDINATOR WHICH HOLDS QUEST PROGRESS AS TRANSITIONS AND CAN MOVE THE MEFLIN TO NEW POSITIONS

--NEELP
('15500', 'NEELP_COORD', '5', 'IDV_OTHERID', '0', '0', '0', '0', '0','MEFLIN_COORD','','','',''),
('15501', 'S33_NEELP', '8101', 'IDV_N2B', '47', '101', '300', '300', '0','M_MEF_APPROACH','IDS_M1SWAY',1,'NEELP_COORD', ''),
--there will be a machine for every speach 
('15502', 'S33_NEELP_Q1', '5', 'IDV_OTHERID', '0', '0', '80', '100', '1','M_MEF_TALK','IDS_M1T1ANIM','10', 'SOUND_NEELPQ1', 'IDS_M1I1ANIM'),

('15506', 'S33_NEELP_alt1', '8100', 'IDV_N2A', '696', '139', '761', '214', '1','M_ANIBIN','IDS_M1SWAYC','', '', ''),
('15507', 'S33_NEELP_alt2', '8102', 'IDV_N2C', '2607', '140', '2800', '201', '1','M_ANIBIN','IDS_M1SWAYB','',  '', ''),


--Rathe
('15503', 'RATHE_COORD', '5', 'IDV_OTHERID', '1', '1', '1', '1', '0','MEFLIN_COORD','','','',''),
('15508', 'S24_RATHE', '9218', 'IDV_EYEA', '1065', '30', '1260', '150', '0','M_MEF_APPROACH','IDS_M6STIR',2,'RATHE_COORD', ''),
('15509', 'S24_RATHE_Q1', '5', 'IDV_OTHERID', '0', '0', '80', '100', '1','M_MEF_TALK','IDS_M6T10000','9','SOUND_RATHEQ1', 'IDS_M6T10000'),

--THAOR
('15510', 'THAOR_COORD', '5', 'IDV_OTHERID', '2', '2', '2', '2', '0','MEFLIN_COORD','','','',''),
('15511', 'S10_THAOR', '4097', 'IDV_SCN10PT1', '2137', '55', '2337', '250', '0','M_MEF_APPROACH','IDS_MYJUGGLE',3,'THAOR_COORD',''),
('15512', 'S10_THAOR_Q1', '5', 'IDV_OTHERID', '0', '0', '80', '100', '1','M_MEF_TALK','IDS_MYT10000','7','SOUND_THAORQ1', 'IDS_MYI10000'),

('15514', 'S10_THAOR_alt1','4096', 'IDV_SCN10PT0', '3083', '100', '3100', '190', '1','M_ANIBIN','IDS_MYJUGGLEsm1','', '',  ''),

--PERST
('15517', 'PERST_COORD', '5', 'IDV_OTHERID', '1', '1', '1', '1', '0','MEFLIN_COORD','','','',''),
('15515', 'S16_PERST', '4869', 'IDV_VIL7', '2650', '40', '2798', '250', '0','M_MEF_APPROACH','IDS_M2FIDDLE',4,'PERST_COORD',''),
('15516', 'S16_PERST_Q1', '5', 'IDV_OTHERID', '0', '0', '80', '100', '1','M_MEF_TALK','IDS_M2T10000','15','SOUND_PERSTQ1', 'IDS_M2I10000'),

('15518', 'S16_PERST_alt1','4865', 'IDV_VIL3', '2515', '115', '2600', '200', '1','M_ANIBIN','IDS_M2FIDDLEsm1','', '',  ''),

----Machines to serve them all

('15513', 'MEFCURRENT', '9802', 'IDV_MEFPAN', '0', '0', '5', '5', '1','M_MEFCURRENT','','','',''),
('15517', 'MEFPAN_OK', '9802', 'IDV_MEFPAN', '490', '215', '555', '260', '1','M_MEFPAN_OK','','','','');



-- --AMBLE
-- ('15519', 'S09_AMBLE', '506', 'IDV_CTO2', '2500', '10', '2700', '150', '0','M_MEF_APPROACH','IDS_MSSQUAT','S09_AMBLE_Q1','IDV_S09_AMBLE_PAN',''),
-- ('15520', 'S09_AMBLE_Q1', '5', 'IDV_OTHERID', '0', '0', '80', '100', '1','M_MEF_TALK','IDS_MST10001','9','SOUND_AMBLEQ1', 'IDS_MSI10001'),
-- ('15521', 'S09_AMBLE_OK', '9805', 'IDV_S09_AMBLE_PAN', '490', '215', '555', '260', '1','M_MEFPAN_OK','S09_AMBLE_Q1','IDV_CTO2','','');
-- --('15522', 'S09_AMBLE_alt1','4865', 'IDV_VIL3', '2515', '115', '2600', '200', '1','M_ANIBIN','IDS_M2FIDDLEsm1','', '',  '');


delete from transitions where automaton =  'M_MEFCURRENT';
delete from transitions where automaton =  'MEFLIN_COORD';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code")
VALUES 
('MEFLIN_COORD','0', 'Q1Started','WAIT', '', 'SIG_Q1_START', ''),
('MEFLIN_COORD','Q1Started', 'Q1Pending','WAIT', '', 'SIG_Q1_GIVEN', ''),
('MEFLIN_COORD','Q1Pending', 'Q1Solved','WAIT', '','SIG_Q1_SOLVED', ''),
('MEFLIN_COORD','Q1Solved', '0','Z_EPSILON', '','', ''),
('MEFLIN_COORD','0', 'Q2Started','WAIT', '', 'SIG_Q2_START', ''),
('MEFLIN_COORD','Q2Started', 'Q2Pending','WAIT', '', 'SIG_Q2_GIVEN', ''),
('MEFLIN_COORD','Q2Pending', 'Q2Solved','WAIT', '','SIG_Q2_SOLVED', ''),
('MEFLIN_COORD','Q2Solved', '0','Z_EPSILON', '','', ''),
('MEFLIN_COORD','0', 'Q3Started','WAIT', '', 'SIG_Q3_START', ''),
('MEFLIN_COORD','Q3Started', 'Q3Pending','WAIT', '', 'SIG_Q3_GIVEN', ''),
('MEFLIN_COORD','Q3Pending', 'Q3Solved','WAIT', '','SIG_Q3_SOLVED', ''),
('MEFLIN_COORD','Q3Solved', '0','Z_EPSILON', '','', ''),

--keeps the most recently engaged quest and location
--could also assign database pointer here too then use that along with coord to pick 
-- which files to play
('M_MEFCURRENT','0', 'quest1', 'WAIT', '', 'SIG_Q1', 'ASSIGN(WPARM,S33_NEELP_Q1);ASSIGN(BPARM,IDV_N2B);'),
('M_MEFCURRENT','quest1', '0', 'Z_EPSILON', '', '', ''), 
('M_MEFCURRENT','0', 'quest2', 'WAIT', '', 'SIG_Q2', 'ASSIGN(WPARM,2);'), 
('M_MEFCURRENT','quest2', '0', 'Z_EPSILON', '', '', ''), 
('M_MEFCURRENT','0', 'quest3', 'WAIT', '', 'SIG_Q3', 'ASSIGN(WPARM,3);'), 
('M_MEFCURRENT','quest3', '0', 'Z_EPSILON', '', '', ''), 
('M_MEFCURRENT','0', 'quest4', 'WAIT', '', 'SIG_Q4', 'ASSIGN(WPARM,S24_RATHE_Q1);ASSIGN(BPARM,IDV_EYEA);'), 
('M_MEFCURRENT','quest4', '0', 'Z_EPSILON', '', '', ''),
('M_MEFCURRENT','0', 'quest5', 'WAIT', '', 'SIG_Q5', 'ASSIGN(WPARM,5);'), 
('M_MEFCURRENT','quest5', '0', 'Z_EPSILON', '', '', ''),
('M_MEFCURRENT','0', 'quest6', 'WAIT', '', 'SIG_Q6', 'ASSIGN(WPARM,S10_THAOR_Q1);ASSIGN(BPARM,IDV_SCN10PT1);'), 
('M_MEFCURRENT','quest6', '0', 'Z_EPSILON', '', '', ''),
('M_MEFCURRENT','0', 'quest7', 'WAIT', '', 'SIG_Q7', 'ASSIGN(WPARM,7);'), 
('M_MEFCURRENT','quest7', '0', 'Z_EPSILON', '', '', ''),
('M_MEFCURRENT','0', 'quest8', 'WAIT', '', 'SIG_Q8', 'ASSIGN(WPARM,S16_PERST_Q1);ASSIGN(BPARM,IDV_VIL7);'), 
('M_MEFCURRENT','quest8', '0', 'Z_EPSILON', '', '', ''),
('M_MEFCURRENT','0', 'quest9', 'WAIT', '', 'SIG_Q9', 'ASSIGN(WPARM,9);'),
('M_MEFCURRENT','quest9', '0', 'Z_EPSILON', '', '', '');

delete from transitions where automaton =  'M_MEF_APPROACH';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code")
VALUES 
--Show the standing sprite and record the current view
--put up the mefpan and then signal the quest to play
('M_MEF_APPROACH','0', 'setup', 'MOV', 'WSPRITE', 'WIP1', ' 
    MOV(WVIEWID,LVIEW);
    ASSIGN(WPARM,WIP2);//the active mefs coord
'),
('M_MEF_APPROACH', 'setup', 'chillin', 'ASHOW', 'WSPRITE', 'V_LOOP', ''),
('M_MEF_APPROACH', 'chillin', 'mef_bothered', 'CLICK', '0', '0', 'LOADVIEW(0,IDV_MEFPAN);'),
--we need to know who and where, which we can get from the calling machine somehow then
--here look for how far into the quest by ref wip3 the coordinator
-- then signal the right speach
('M_MEF_APPROACH', 'mef_bothered', 'mef_response', 'REF_MACHINE', '0', 'WIP3', '
    if(IFSTATE(0,WIP3)){
        //Tell the active meflins coordinator
        SIGNAL(WIP3,SIG_Q1_START);
            //Tell the outside world where we at
            //WTEMP1 will be machine, WTemp2 is wording
            if(WIP2 == 1){SIGNAL(MEFCURRENT,SIG_Q1); mefQuest("1",?BPARM,?WTEMP1,?WTEMP2,?WTEMP3,?WPARM);}
            if(WIP2 == 2){SIGNAL(MEFCURRENT,SIG_Q4); mefQuest("4",?BPARM,?WTEMP1,?WTEMP2,?WTEMP3,?WPARM);}
            if(WIP2 == 3){SIGNAL(MEFCURRENT,SIG_Q6); mefQuest("6",?BPARM,?WTEMP1,?WTEMP2,?WTEMP3,?WPARM);}
            if(WIP2 == 4){SIGNAL(MEFCURRENT,SIG_Q8); mefQuest("8",?BPARM,?WTEMP1,?WTEMP2,?WTEMP3,?WPARM);}
    };
    if(IFSTATE(Q1Pending,WIP3)){
      //if Q1 is pending then we need to do the alt answers or recognize a winning item
    };
    if(IFSTATE(Q1Solved,WIP3)){
        SIGNAL(WIP3,SIG_Q2_START);
        if(WIP2 == 1){SIGNAL(MEFCURRENT,SIG_Q2); mefQuest("2",?BPARM,?WTEMP1,?WTEMP2,?WTEMP3,?WPARM);}
        if(WIP2 == 2){SIGNAL(MEFCURRENT,SIG_Q5); mefQuest("5",?BPARM,?WTEMP1,?WTEMP2,?WTEMP3,?WPARM);}
        if(WIP2 == 3){SIGNAL(MEFCURRENT,SIG_Q7); mefQuest("7",?BPARM,?WTEMP1,?WTEMP2,?WTEMP3,?WPARM);}
        if(WIP2 == 4){SIGNAL(MEFCURRENT,SIG_Q9); mefQuest("9",?BPARM,?WTEMP1,?WTEMP2,?WTEMP3,?WPARM);}
    };
    if(IFSTATE(Q2Pending,WIP3)){
        //if Q2 is pending then we need to do the alt answers or recognize a winning item
    };
    if(IFSTATE(Q2Solved,WIP3)){
        //Here only Neelp has a third quest
        SIGNAL(WIP3,SIG_Q3_START);
         if(WIP2 == 1){SIGNAL(MEFCURRENT,SIG_Q3); mefQuest("3",?BPARM,?WTEMP1,?WTEMP2,?WTEMP3,?WPARM);}
    };
    if(IFSTATE(Q3Pending,WIP3)){
       //if Q2 is pending then we need to do the alt answers or recognize a winning item
    };
'),
--WTEMP1 Holds the right machine to play and the machines take care of how to play that way
--each could use a different player if needed
('M_MEF_APPROACH', 'mef_response', '0', 'SIGNAL', 'BPARM', 'SIG_PLAY', '');



delete from transitions where automaton =  'M_MEF_TALK';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code")
VALUES 
('M_MEF_TALK','0','1','WAIT','','SIG_PLAY',''),

('M_MEF_TALK','1', '2', 'MOV', 'WSPRITE', 'WIP1', ''), -- long dialogue loop wip1
('M_MEF_TALK','2', '3', 'ASHOW',  'WSPRITE', '',  ''),
('M_MEF_TALK','3', '4', 'PLAYWAVE', 'WIP3', '', ''), -- sound file wip3
('M_MEF_TALK','4', '7', 'ESTIME', 'WIP2', '', ''), -- close durration of talk wip2

('M_MEF_TALK','7', '8', 'MOV', 'BFRAME', '0',''),
('M_MEF_TALK','8', '9', 'SHOW', 'WIP4', '', ''), -- closing expression animation wip4
('M_MEF_TALK','9', '10', 'ANIMATE', '0', '0', ''),


('M_MEF_TALK','10','11','WAIT','','SIG_CLOSE',''), --wait for a signal to remove 
('M_MEF_TALK','11','14', 'CLEAR', 'WSPRITE', '', ''),
('M_MEF_TALK','14','15', 'SHOW', '0', '', ''),
('M_MEF_TALK','15', '0', 'Z_EPSILON', '0', '0', '');

--SO what im doing now is - trying to get the single ok button to know
-- which WVIEWID to show when clicked - since all the meflin share the same mefpanel now
-- so it has to get it from some tiny ref machine that has it as an active parameter
-- Im trying to use mefcurrent for this - so I have to signal mefcurrent to start or 
-- give mefcurrent the wView maybe - mefcurrent is just the latest meflin the player is talking to
-- which includes where

delete from transitions where automaton =  'M_MEFPAN_OK';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code")
VALUES 
('M_MEFPAN_OK', '0', '1', 'SHOW', '0', 'IDS_BTN_OK', '
    //GET THE ACTIVE MEFLIN
     REF_MACHINE(MEFCURRENT);
'),

('M_MEFPAN_OK','1', '2', 'CLICK', '0', '0', '
    PLAYWAVE(SOUND_POPUP); 
    SIGNAL(SIG_CLOSE,WIP1);
    REF_MACHINE(MEFCURRENT);
    MOV(BPARM,R_BPARM);
'),
('M_MEFPAN_OK', '2', '0', 'LOADVIEW', 'BPARM', '', '');



