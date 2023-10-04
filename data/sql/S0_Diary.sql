
delete from games;

----RESOURCES 

delete from isa where [class] like 'ISA_DIARY_%';
INSERT INTO "main"."isa" ("class", "member")
VALUES 
('ISA_DIARY', 'IDD_DIARY1');



drop table if exists diary;
-- 'id' is used by the card index cartridge on the card disbursement machine in the city.
create table diary (object text, control text, content text);
insert into diary values
( 'IDD_DIARY1', 'ID_PARCHBIGTXT' ,'
        I leave this here in case something happens
        46 Zan, 192978
        
        I Onam, archiologist of Niret 
        have  found the sacred map of our forefathers
        that grants power over the sky.
        
        Although their language still comfounds me!

        Now, I shall continue the quest spurred on 
        by our great discovery of a promise written in stone.
        I speak of course of the stone rubbing unearthed 
        outside of Etnoc, that hideous city of great 
        sadness and tragedy.

        It is the Niret way of spirit that makes us so 
        much better than those of Etnoc.

        ....to take the seed of Azaria and plant it
         on the altar of seven moons.
        
        I imagine the seed as some relic that existed 
        before the rains... I must find it! Something that
        contains this seed.

        I shall now see for myself and fill my spirit with joy - 
        Searching for something to plant on some altar!'),

( 'IDD_DIARY2', 'IDV_PARCHBIG' ,'Placeholder1'),
( 'IDD_DIARY3', 'IDV_PARCHBIG' ,'Placeholder2'),
( 'IDD_DIARY4', 'IDV_PARCHBIG' ,'Placeholder3');

-- predicate diary(id,content);
-- in this case (R_WPARM) but any pointed to set parameter or literal
-- cardmach(R_WPARM,?WOBJECT);

delete from views where [view_name] like 'IDV_PARCHBIG%';
INSERT INTO "main"."views" ("view_id", "view_name", "Z", "backgroundAudio", "locator_view", "behavior_id", "portal_filename", "surface_filename") 
VALUES 
('8710', 'IDV_PARCHBIG', '1', '0', '1', '2', 'wdepanel.vct', 'parchbig');

delete from spr_names where name = 'IDS_PARCHBIGBK';
INSERT INTO "main"."spr_names" ("name", "value", "id") 
VALUES 
('IDS_PARCHBIGBK', 'parchbigbk', '40650');


delete from controls where id = 'ID_PARCHBIGTXT';
insert into controls values
('IDV_PARCHBIG','ID_PARCHBIGTXT','LABEL','IDS_PARCHBIGBK','',46, 55, 0,'','', 'IDS_FONTTNB16', 0x010101,'');

delete from machines where name = 'PARCHBIG_WAITER';
INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") 
VALUES 
('15570', 'PARCHBIG_WAITER', '8710', 'IDV_PARCHBIG', '276', '236', '350', '300', '1','M_PARCHBIG_WAITER','','','','');

delete from transitions where automaton =  'M_PARCHBIG_WAITER';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code")
VALUES 

('M_PARCHBIG_WAITER','0', 'waiting', 'Z_EPSILON', '', '', '
        REF_MACHINE(SMP_EYEINFO);
'),
----
('M_PARCHBIG_WAITER', 'waiting', 'showDiary', 'WAIT', '0', 'SIG_DIARY1', '
        predicate diary(object,control,content);
        diary(R_WPARM,?BPARM,?WPARM);
        LOADVIEW(IDV_PARCHBIG);
        SETTEXT(ID_PARCHBIGTXT,WPARM);
       
'),
('M_PARCHBIG_WAITER', 'showDiary', '0', 'Z_EPSILON', '', '', '');
-----

-----