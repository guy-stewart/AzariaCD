


-- 1.) There are spells that act on the holding player 
--(Telekinesis,Protect,Invisible,Mindread/Perception,Wetbreath,Nybreath)
-- These should have time limits and sit on the players lap until time limit expires
-- 115,57 135,59  154,59 157,58 172,59 -- coords for tiny representations of protection spells  


-- 2.) There are spells that immediately affect the target
-- some of these also have time limits 
-- (Enchant(pulls target),Stalker(follows target),blindness,holding(target can't leave view),
-- some act immediately
-- Transfer (energy,karma,wisdom),death, banishment,HALLUCINATE
--
-- 3.) There are spells that act as an object
-- lock, unlock,explosion,alarm,recorder?

--Here we centralize all the spells for whatever purpose
delete from "main"."spr_names" where name = 'IDS_HALUCINATE';
delete from "main"."spr_names" where name = 'IDS_HALLUCINATE';
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_HALLUCINATE', 'redeye', '30626');


delete from objects where class = 'IDC_SPELL';


INSERT INTO "main"."objects" ("object", "class", "icon", "cursor", "actor") 
VALUES 

--the 13 scroll spells
--------------------------------------
--------------------------------------
('IDD_ENCHANT',  'IDC_SPELL', 'enchant', 'enchant', 'enchant'),
('IDD_STALKER',  'IDC_SPELL', 'stalk', 'stalk', 'stalk'),
('IDD_BLINDNESS','IDC_SPELL', 'blind', 'blind', 'blind'),
('IDD_HOLDING',  'IDC_SPELL', 'holding', 'holding', 'holding'),
('IDD_TRANSFER', 'IDC_SPELL', 'transfer', 'transfer', 'transfer'),
--alarm
--record
('IDD_TELEKINESIS', 'IDC_SPELL', 'tele', 'tele', 'tele'),
('IDD_EXPLOSION', 'IDC_BOMB', 'starspl1', 'starspl1', 'starspl1'),
--lock
--lockpick
('IDD_PROTECT', 'IDC_SPELL', 'protect', 'protect', 'protect'),
('IDD_DEATH',  'IDC_SPELL', 'skull', 'skull', 'skull'), -- we need a different one here
('IDD_REVIAL', 'IDC_SPELL', 'revial', 'revial', 'revial'),
--------------------------------------
--------------------------------------

('IDD_INVISIBLE',  'IDC_SPELL', 'spinspel', 'spinspel', 'spinspel'),
('IDD_BANISHMENT', 'IDC_SPELL', 'skull', 'skull', 'skull'),
('IDD_HALLUCINATE', 'IDC_SPELL', 'redeye', 'redeye', 'redeye'), 
('IDD_MINDREAD',   'IDC_SPELL', 'mind', 'mind', 'mind'),


--Hidden spells core to game puzzles
('IDD_EYESPELL',  'IDC_SPELL', 'eyespell', 'eyespell', 'eyespell'),
('IDD_MEMSPELL', 'IDC_SPELL', 'MEMSPELL', 'MEMSPELL', 'MEMSPELL'),
('IDD_WETBREATH', 'IDC_SPELL', 'water', 'water', 'water'),
('IDD_NYBREATH',  'IDC_SPELL', 'nys', 'nys', 'nys'),
--------------------------------------
--------------------------------------
('IDD_STRENGTH','IDC_SPELL', 'muscle', 'muscle', 'muscle'),
('IDD_LOCK',    'IDC_SPELL', 'radio', 'radio', 'radio'), -- using fish spell general
('IDD_RECORDER','IDC_SPELL', 'Spelx07', 'Spelx07', 'Spelx07'),
('IDD_UNLOCK',  'IDC_SPELL', 'radio', 'radio', 'radio'),

 -- these atom spells equate to their fish? 
 -- These are cool but what do they mean?
('IDD_SPELL01', 'IDC_SPELL', 'Spell01', 'Spell01', 'Spell01'),
('IDD_SPELL02', 'IDC_SPELL', 'Spell02', 'Spell02', 'Spell02'),
('IDD_SPELL03', 'IDC_SPELL', 'Spell03', 'Spell03', 'Spell03'),
('IDD_SPELL04', 'IDC_SPELL', 'Spell04', 'Spell04', 'Spell04'),
('IDD_SPELL05', 'IDC_SPELL', 'Spell05', 'Spell05', 'Spell05'),
('IDD_SPELL06', 'IDC_SPELL', 'Spell06', 'Spell06', 'Spell06'),
('IDD_SPELL07', 'IDC_SPELL', 'Spell07', 'Spell07', 'Spell07'),
('IDD_SPELL08', 'IDC_SPELL', 'Spell08', 'Spell08', 'Spell08'),
('IDD_SPELL09', 'IDC_SPELL', 'Spell09', 'Spell09', 'Spell09'),
('IDD_SPELL10', 'IDC_SPELL', 'Spell10', 'Spell10', 'Spell10'),
('IDD_SPELx01', 'IDC_SPELL', 'Spelx01', 'Spelx01', 'Spelx01'),
('IDD_SPELx02', 'IDC_SPELL', 'Spelx02', 'Spelx02', 'Spelx02'),
('IDD_SPELx03', 'IDC_SPELL', 'Spelx03', 'Spelx03', 'Spelx03'),
('IDD_SPELx04', 'IDC_SPELL', 'Spelx04', 'Spelx04', 'Spelx04'),
('IDD_SPELx05', 'IDC_SPELL', 'Spelx05', 'Spelx05', 'Spelx05'),
('IDD_SPELx06', 'IDC_SPELL', 'Spelx06', 'Spelx06', 'Spelx06'),
('IDD_SPELx07', 'IDC_SPELL', 'Spelx07', 'Spelx07', 'Spelx07'),
('IDD_SPELx08', 'IDC_SPELL', 'Spelx08', 'Spelx08', 'Spelx08'),
('IDD_SPELx09', 'IDC_SPELL', 'Spelx09', 'Spelx09', 'Spelx09'),
('IDD_SPELx10', 'IDC_SPELL', 'Spelx10', 'Spelx10', 'Spelx10');

-- TODO SHOULD THIS BEA A SPELL?? I DON'T THINK SO
--('IDD_GVIAL', '', 'IDC_SPELL', 'GVIAL', 'GVIAL', 'GVIAL');
-- it now is a spell - see meflin1.sql

delete from "main"."views" where [view_name] like 'IDV_VIL_HAL%';
INSERT INTO "main"."views" ("view_name", "Z", "backgroundAudio", "locator_view", "behavior_id", "portal_filename", "surface_filename") VALUES 
('IDV_VIL_HAL', '1', '2', '1', '6', 'surround.vct', 'vil_hal'),
('IDV_VIL_HAL2', '1', '2', '1', '6', 'surround.vct', 'vil_hal2');


delete from spr_names where [name] like 'IDS_PROTECT_TINY%';
delete from spr_names where [name] like 'IDS_NYS_TINY%';
delete from spr_names where [name] like 'IDS_WET_TINY%';
delete from spr_names where [name] like 'IDS_INVIS_TINY%';
delete from spr_names where [name] like 'IDS_BRAIN_TINY%';

delete from spr_names where [name] like 'IDS_BLINDNESS_TINY%';
delete from spr_names where [name] like 'IDS_ENCHANT_TINY%';
delete from spr_names where [name] like 'IDS_HOLDING_TINY%';
delete from spr_names where [name] like 'IDS_STALK_TINY%';
delete from spr_names where [name] like 'IDS_HALLUCINATE_TINY%';


insert into spr_names values ('IDS_PROTECT_TINY','protect_tiny','70001');
insert into spr_names values ('IDS_NYS_TINY','nys_tiny','70002');
insert into spr_names values ('IDS_WET_TINY','wet_tiny','70003');
insert into spr_names values ('IDS_INVIS_TINY','invis_tiny','70004');
insert into spr_names values ('IDS_BRAIN_TINY','brain_tiny','70005');

insert into spr_names values ('IDS_BLINDNESS_TINY','tiny_blindness','70020');
insert into spr_names values ('IDS_ENCHANT_TINY','tiny_enchant','70021');
insert into spr_names values ('IDS_HALLUCINATE_TINY','tiny_HALLUCINATE','70022');
insert into spr_names values ('IDS_HOLDING_TINY','tiny_holding','70023');
insert into spr_names values ('IDS_STALK_TINY','tiny_stalk','70024');

delete from "main"."views" where [view_name] like 'IDV_BLINDVIEW%';
INSERT INTO "main"."views" ("view_name", "Z", "backgroundAudio", "locator_view", "behavior_id", "portal_filename", "surface_filename") 
VALUES 
('IDV_BLINDVIEW', '1', '0', '1', '6', 'surround.vct', 'blindview');

delete from "main"."machines" where [name] like 'PROTECT_%';
delete from "main"."machines" where [name] like 'WETBREATH_%';
delete from "main"."machines" where [name] like 'NYBREATH_%';
delete from "main"."machines" where [name] like 'TELEKINESIS_%';
delete from "main"."machines" where [name] like 'INVISIBLE_%';
delete from "main"."machines" where [name] like 'ENCHANT_%';
delete from "main"."machines" where [name] like 'HOLDING_%';
delete from "main"."machines" where [name] like 'STALKING_%';
delete from "main"."machines" where [name] like 'TRANSFER_%';
delete from "main"."machines" where [name] like 'DEATH_%';
delete from "main"."machines" where [name] like 'BANISHMENT_%';
delete from "main"."machines" where [name] like 'BLINDNESS_%';
delete from "main"."machines" where [name] like 'HALLUCINATE_%';
delete from "main"."machines" where [name] like 'HALLUCINATE_%';
delete from "main"."machines" where [name] like 'REVIVE_%';
INSERT INTO "main"."machines" ("name", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") 
VALUES 
--------------------
--Defensive Spells and timed view spells
('PROTECT_ACTIVE',    'IDV_MAIN_PANEL', '50',  '225',   '70',  '245', '3', 'M_DEFENSESPELL',    'IDS_PROTECT_TINY', 'PROTECT_TIMER', '', ''),
('PROTECT_TIMER',     'IDV_MAIN_PANEL', '50',  '225',  '60',  '230', '3', 'M_SPELLTIMER',      '100', 'PROTECT_ACTIVE', '', ''),

('WETBREATH_ACTIVE',  'IDV_MAIN_PANEL', '80',  '225',   '100',  '245', '3', 'M_DEFENSESPELL',    'IDS_WET_TINY', 'WETBREATH_TIMER', '', ''),
('WETBREATH_TIMER',   'IDV_MAIN_PANEL', '80',  '225',  '110',  '230', '3', 'M_SPELLTIMER',      '100', 'WETBREATH_ACTIVE', '', ''),

('NYBREATH_ACTIVE',   'IDV_MAIN_PANEL', '110',  '225',   '130',  '245', '3', 'M_DEFENSESPELL',    'IDS_NYS_TINY', 'NYBREATH_TIMER', '', ''),
('NYBREATH_TIMER',    'IDV_MAIN_PANEL', '110',  '225',  '140',  '230', '3', 'M_SPELLTIMER',      '30', 'NYBREATH_ACTIVE', '', ''),

('TELEKINESIS_ACTIVE','IDV_MAIN_PANEL', '50',  '250',   '70',  '270', '3', 'M_DEFENSESPELL',    'IDS_BRAIN_TINY', 'TELEKINESIS_TIMER', '', ''),
('TELEKINESIS_TIMER', 'IDV_MAIN_PANEL', '250',  '250',  '60',  '260', '3', 'M_SPELLTIMER',      '300', 'TELEKINESIS_ACTIVE', '', ''),

('INVISIBLE_ACTIVE',  'IDV_MAIN_PANEL', '80',  '250', '100',  '270', '3', 'M_DEFENSESPELL',    'IDS_INVIS_TINY', 'INVISIBLE_TIMER', '', ''),
('INVISIBLE_TIMER',   'IDV_MAIN_PANEL', '80',  '250', '90',   '260', '3', 'M_SPELLTIMER',      '100', 'INVISIBLE_ACTIVE', '', ''),




--------------------    
-- attack spells
-- view spells

--you cant cast a spell on someone being attacked or maybe you can but it takes the place of the first
('ENCHANT_POSTER', 'IDV_MAIN_PANEL', '110','250', '120', '260', '3', 'M_VIEWSPELL', 'POSTENCHANT', 'ENCHANT_POSTER_TIMER', 'IDS_ENCHANT_TINY', ''),
('ENCHANT_POSTER_TIMER',  'IDV_MAIN_PANEL', '110', '250', '115', '255  ', '3', 'M_SPELLTIMER', '100', 'ENCHANT_POSTER', '', ''),

('ENCHANT_ACTIVE', 'IDV_MAIN_PANEL', '110','250', '130', '270', '3', 'M_VIEWSPELL', 'ENCHANT', 'ENCHANT_TIMER', 'IDS_ENCHANT_TINY', ''),
('ENCHANT_TIMER',  'IDV_MAIN_PANEL', '110', '250', '115', '255  ', '3', 'M_SPELLTIMER', '100', 'ENCHANT_ACTIVE', '', ''),

('HOLDING_ACTIVE', 'IDV_MAIN_PANEL', '50','275', '70', '295', '3', 'M_VIEWSPELL', 'HOLDING', 'HOLDING_TIMER', 'IDS_HOLDING_TINY', ''),
('HOLDING_TIMER',  'IDV_MAIN_PANEL', '50', '275', '55', '280', '3', 'M_SPELLTIMER', '45', 'HOLDING_ACTIVE', '', ''),

-- Stalker works - should be EASY to make 
('STALKING_READER','IDV_MAIN_PANEL', '71','275', '91', '295', '3', 'M_VIEWSPELL', 'STALKINGREADER', 'STALKING_READER_TIMER', 'IDS_STALK_TINY', ''),
('STALKING_READER_TIMER', 'IDV_MAIN_PANEL', '71', '275', '75', '295', '3', 'M_SPELLTIMER', '100', 'STALKING_READER', '', ''),

('STALKING_ACTIVE','IDV_MAIN_PANEL', '71','275', '91', '295', '3', 'M_VIEWSPELL', 'STALKING', 'STALKING_TIMER', 'IDS_STALK_TINY', ''),
('STALKING_TIMER', 'IDV_MAIN_PANEL', '71', '275', '75', '295', '3', 'M_SPELLTIMER', '100', 'STALKING_ACTIVE', '', ''),

-- blindness and HALLUCINATE do the same thing -- need something for HALLUCINATE
-- maybe random views or just some freaky view

('BLINDNESS_ACTIVE', 'IDV_MAIN_PANEL', '92','275', '112', '295', '3', 'M_VIEWSPELL', 'BLINDNESS', 'BLINDNESS_TIMER', 'IDS_BLINDNESS_TINY', ''),
('BLINDNESS_GATE', 'IDV_BLINDVIEW', '2395', '120', '2500', '276', '3', 'M_BLINDVIEW', '', '', '', ''),
('BLINDNESS_TIMER',   'IDV_MAIN_PANEL', '92', '275', '95', '280', '3', 'M_SPELLTIMER', '60', 'BLINDNESS_ACTIVE', '', ''),

('HALLUCINATE_ACTIVE', 'IDV_MAIN_PANEL', '113','275', '133', '295', '3', 'M_VIEWSPELL', 'HALLUCINATE', 'HALLUCINATE_TIMER', 'IDS_HALLUCINATE_TINY', ''),
('HALLUCINATE_GATE', 'IDV_VIL_HAL', '0', '0', '1000', '276', '3', 'M_HALLVIEW', '', '', '', ''),
('HALLUCINATE_TIMER',  'IDV_MAIN_PANEL', '113', '275', '115', '280', '3', 'M_SPELLTIMER', '20', 'HALLUCINATE_ACTIVE', '', ''),




-- INSTANT spells
-- Instant
('TRANSFER_ACTIVE',   'IDV_MAIN_PANEL', '1','5', '12', '13', '3', 'M_INSTANTATTACK', 'TRANSFER', 'NO_TIMER', '', ''),
('DEATH_ACTIVE',      'IDV_MAIN_PANEL', '1','5', '12', '13', '3', 'M_INSTANTATTACK', 'DEATH', 'NO_TIMER', '', ''),
('BANISHMENT_ACTIVE', 'IDV_MAIN_PANEL', '1','5', '12', '13', '3', 'M_INSTANTATTACK', 'BANISHMENT', 'NO_TIMER', '', ''),

('GOPA_ACTIVE',    'IDV_MAIN_PANEL', '1','5', '12', '13', '3', 'M_INSTANTATTACK', 'GOPA', 'NO_TIMER', '', ''),
('REVIVE_ACTIVE',  'IDV_MAIN_PANEL', '1','5', '12', '13', '3', 'M_INSTANTATTACK', 'REVIVE', 'NO_TIMER', '', '');
-- Timed


--------------------
-- object spells - ARE JUST OBJECTS - ALARM, LOCK, UNLOCK, EXPLODE...


delete from "main"."transitions" where [automaton] like 'M_DEFENSESPELL%';
delete from "main"."transitions" where [automaton] like 'M_SPELLTIMER%';
delete from "main"."transitions" where [automaton] like 'M_VIEWSPELL%';
delete from "main"."transitions" where [automaton] like 'M_INSTANTATTACK%';
delete from "main"."transitions" where [automaton] like 'M_ATTACKSPELL%';
delete from "main"."transitions" where [automaton] like 'M_BLINDVIEW%';
delete from "main"."transitions" where [automaton] like 'M_HALLVIEW%';
delete from "main"."transitions" where [automaton] like 'M26_BANISH%';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code", "guard", "doc") 
VALUES 

('M_DEFENSESPELL','0','turntOn','WAIT','0','SIG_SPELLME', '
    WRITE("A DEFENSE SPELL ACTIVATED");
    SHOW(WIP1);
    SIGNAL(WIP2,SIG_START);
', '', ''),
('M_DEFENSESPELL','turntOn','active','Z_EPSILON','','', '', '', ''),
('M_DEFENSESPELL','active','ended','WAIT','0','SIG_STOP', '
    SHOW();
', '', ''),
('M_DEFENSESPELL','ended','0','Z_EPSILON','','', '', '', ''),

--------------------

('M_SPELLTIMER', '0', 'timerStarted', 'WAIT', '0', 'SIG_START','
  WPARM = WIP1;
', '', ''),
('M_SPELLTIMER', 'timerStarted', 'timerDone', 'ESTIME', '', 'WPARM','', '', ''),
('M_SPELLTIMER', 'timerDone', 'spellStopped', 'SIGNAL', 'WIP2', 'SIG_STOP','', '', ''),
('M_SPELLTIMER', 'spellStopped', '0', 'Z_EPSILON', '', '','', '', ''),

--------------------

('M_VIEWSPELL','0','turntOn','WAIT','0','SIG_SPELLME', '
    //start the timer
     WRITE("A VIEW SPELL ACTIVATED");
     SIGNAL(WIP2,SIG_START);
     MOV(WPARM,LVIEW); //THE VIEW OF THE VICTIM <-- not true
     MOV(BPARM,OVIEW); //THE VIEW OF THE SPELL CASTER <-- not nec true
     SHOW(WIP3);
', '', ''),

    
('M_VIEWSPELL','turntOn','caughtInLoop','Z_EPSILON','','', '
      
        // change localplayers view to otherplayer
        if(WIP1==ENCHANT){
            predicate spellinfo(status,caster,victim,object,caster_view,victim_view,leader_heading);
            spellinfo("ACTIVE",?caster,?victim,?object,?view,,?leader_heading)? 
            LOADVIEW(view);
            set_theta(leader_heading); 
        }
        if(WIP1==POSTENCHANT){
            predicate spellinfo(status,caster,victim,object,caster_view,victim_view,leader_heading);
            spellinfo(?status,?caster,?victim,?object,,,?leader_heading)?
            spellinfo("%")~
            marker = get_theta();
            spellinfo(status,caster,victim,object,LVIEW,"EMPTY",marker).
            replay("system/send_view");
        }
        if(WIP1==STALKINGREADER){
            //from M_O_IDSPELL
            //Im going to follow by reading victim_view 
            //which will be sent back to me via spellinfo
            predicate spellinfo(status,caster,victim,object,caster_view,victim_view,leader_heading);
            spellinfo("ACTIVE",?caster,?victim,?object,,?view,?leader_heading)? 
            LOADVIEW(view);
            set_theta(leader_heading);
        }
         if(WIP1==STALKING){
            //I the victim am being stalked 
            //so I must post my views to the caster
            predicate inboundItem(object,id,from);
            inboundItem("IDD_STALKER",,?caster);
            predicate spellinfo(status,caster,victim,object,caster_view,victim_view,leader_heading);
            spellinfo("%")~
            marker = get_theta();
            spellinfo("ACTIVE",caster,"",IDD_STALKER,"EMPTY",LVIEW,marker).
            replay("system/send_view");
        }
        if(WIP1==HOLDING){ 
            LOADVIEW(WPARM);
        }
        if(WIP1==BLINDNESS){
            MOV(WPARM,IDV_BLINDVIEW);
            LOADVIEW(WPARM);
        }
        if(WIP1==HALLUCINATE){ 
            MOV(WPARM,IDV_VIL_HAL);
            LOADVIEW(WPARM);
        }
', '', ''),
('M_VIEWSPELL','caughtInLoop','ended','WAIT','0','SIG_STOP', '
    SIGNAL(SID_SPELL,SIG_CLEAR); 
    SHOW();
', '', ''),
('M_VIEWSPELL','caughtInLoop','turntOn','ESTIME','1','', '', '', '
      WRITE("IN LOOP of view spell");
       MOV(WPARM,LVIEW); //THE VIEW OF THE VICTIM
       MOV(BPARM,OVIEW); //THE VIEW OF THE SPELL CASTER
'),

('M_VIEWSPELL','ended','0','Z_EPSILON','','', '', '', ''),

--------------------

('M_INSTANTATTACK','0','spellcast','WAIT','0','SIG_SPELLME', '
   WRITE("A INSTANTATTACK SPELL ACTIVATED");
', '', ''),
('M_INSTANTATTACK','spellcast','impact','Z_EPSILON','','', '
        if(WIP1 == TRANSFER){
            //L is the victim
            //O is the caster
           //GET THE VICTIMS STATS AND SET ASSIDE 
            MOV(WTEMP2,LWISDOM);MOV(WTEMP3,LKARMA);MOV(WTEMP4,LENERGY);
           //GET THE CASTERS STATS AND GIVE TO THE VICTIM
            MOV(WPARM,OWISDOM);MOV(BPARM,OKARMA);MOV(WTEMP1,OENERGY);
            ASSIGN(LWISDOM,WPARM);
            SIGNALi(0,SID_ID);
            ASSIGN(LKARMA,BPARM);
            SIGNAL(SID_HALO,SIG_ADD);
            ASSIGN(LENERGY,WTEMP1);
            SIGNAL(SID_AURA,SIG_SUB);
            //Now the other guy
            ASSIGN(OWISDOM,WTEMP2);
            SIGNALi(0,SID_ID);
            ASSIGN(OKARMA,WTEMP3);
            SIGNAL(SID_HALO,SIG_ADD);
            ASSIGN(OENERGY,WTEMP4);
            SIGNAL(SID_AURA,SIG_SUB);
        }
        if(WIP1 == DEATH){ 
            ASSIGN(LWEALTH,0);SIGNAL(S1_VIALMETER,SIG_SHOW);
            ASSIGN(LENERGY,1);
            SUBI(LENERGY,1);
            SIGNAL(SID_AURA,SIG_SUB);   
        }
        if(WIP1 == REVIVE){ 
            ASSIGN(LWISDOM,10);
            ASSIGN(LENERGY,4);
            ASSIGN(LKARMA,1);
            SIGNALi(SID_ID,SIG_REVIVE);
            SIGNAL(SID_PERSIST,SIG_UPDATE);
            ASSIGN(LWEALTH,5);SIGNAL(S1_VIALMETER,SIG_SHOW);
            SIGNAL(SID_ID,SIG_SURPRISED);
            SIGNAL(SID_AURA,SIG_SUB);
            SIGNAL(SID_HALO,SIG_SUB);
            loadview(IDV_ORIE);
        }
         if(WIP1 == BANISHMENT){
            MOV(WPARM,IDV_BANISH);
            SIGNAL(SMP_MAPBUTTON,SIG_RESET);
            LOADVIEW(WPARM);
            SUBI(LKARMA,2);
            SIGNAL(SID_HALO,SIG_SUB);
        }
         if(WIP1 == GOPA){
            WRITE("ADDING TO LENERGY");
            if(LENERGY > 1){
                ADDI(LENERGY,1);
                SIGNAL(SID_AURA,SIG_ADD);
            }
        }
', '', ''),

('M_INSTANTATTACK','impact','0','Z_EPSILON','','', '', '', ''),


--------------------


--------------------

('M_BLINDVIEW','0','10','CLICK','','', '
      SIGNAL(BLINDNESS_ACTIVE,SIG_STOP);
', '', ''),
('M_BLINDVIEW','10','0','Z_EPSILON','','', '', '', ''),


--------------------
('M_HALLVIEW','0','10','CLICK','','', '
      LOADVIEW(IDV_VIL_HAL2);
', '', ''),
('M_HALLVIEW','10','0','Z_EPSILON','','', '', '', '');

INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code", "guard", "doc") VALUES 
 ('M26_BANISH', '0', '30', 'CLICK', '0', '0', '', '', ''),
 ('M26_BANISH', '0', '10', 'DRAG', '0', 'IDD_SCOOPF', '', '', ''),
 ('M26_BANISH', '0', '20', 'DRAGFOCUS', '0', 'TRUE', '', '', ''),
 ('M26_BANISH', '10', '20', 'HANDOFF', '0', 'IDD_SCOOPE', '', '', ''),
 ('M26_BANISH', '20', '0', 'PLAYWAVE', '0', 'SOUND_SPIT', '', '', ''),
 ('M26_BANISH', '30', '70', 'EQUALi', 'LWEALTH', '0', '', '', ''),
 ('M26_BANISH', '30', '0', 'Z_EPSILON', '', '', '', '', ''),
 ('M26_BANISH', '70', '0', 'LOADVIEW', 'IDV_CONTINENT', '', '', '', ''); -- was wip1 