
delete from games;

/*
Each player can have a unique house view 
Inside the house is a pottery planter that is used for growing gopa plants
Gopa does not grow wild as it has evolved to require specific care during the torrential 
rainy season.  Gopa is only good in its blue stage and must be meticulously cared for as it
is used in many spells and for the production of a revival drink by the same name.

Gopa is grown from its seed stage by only wattering once per week.
After it sprouts Gopa requires daily water.
After 5 days, Gopa's first fruit (green) may be seen and it is time to
start mixing in Nystrom. Typical plants at this stage take 1 bucket of wanter and 1 scoop of nystrom.

Once Gopa turns red, it requires only nystrom - 2 scoops every other day until the berry turns blue.

Gopa is a great plant and will keep bearing green fruit after pruning if watering is continued.

*/

delete from idv where name = 'IDV_CHS1';
delete from idv where name = 'IDV_CDOOR';
delete from idv where name = 'IDV_CHESTIN';
delete from idv where name = 'IDV_VHS1';
delete from idv where name = 'IDV_VHSE';
delete from idv where name = 'IDV_VILDOOR';

INSERT INTO "main"."idv" ("name", "id") VALUES 
('IDV_CHS1', '50000'),
('IDV_CDOOR', '50001'),
('IDV_CHESTIN', '50002'),
('IDV_VHS1', '50003'),
('IDV_VILDOOR', '50004');

delete from views where view_name = 'IDV_CHS1';
delete from views where view_name = 'IDV_CDOOR';
delete from views where view_name = 'IDV_CHESTIN';
delete from views where view_name = 'IDV_VHS1';
delete from views where view_name = 'IDV_VHSE';
delete from views where view_name = 'IDV_VILDOOR';

INSERT INTO "main"."views" ("view_id", "view_name", "Z", "backgroundAudio", "locator_view", "behavior_id", "portal_filename", "surface_filename") 
VALUES 
('50000', 'IDV_CHS1','1', '3', '1', '6', 'surround.vct', 'CHS1'),
('50001', 'IDV_CDOOR','1', '0', '1', '1', 'smlpanel.vct', 'CDOOR'),
('50002', 'IDV_CHESTIN','1', '0', '1', '1', 'smlpanel.vct','CHESTIN'),
('50003', 'IDV_VHS1','1', '3', '1', '6', 'surround.vct', 'VHS1'),
('50004', 'IDV_VILDOOR','1', '0', '1', '1', 'smlpanel.vct', 'VILDOOR');


delete from cardinals where [from] = 'IDV_VIL4';
delete from cardinals where [from] = 'IDV_ctyp';
delete from cardinals where [from] = 'IDV_CHS1';
delete from cardinals where [from] = 'IDV_VHS1';
--Just cardinals to the door then somehow personalize the room
INSERT INTO "main"."cardinals" ("from", "north", "northeast", "east", "southeast", "south", "southwest", "west", "northwest") 
VALUES 
('IDV_VIL4', '', '', 'IDV_GRUB0000', 'IDV_DICE0000', 'IDV_VIL3', 'IDV_WOOD0000', '', 'IDV_VILDOOR'),
('IDV_ctyp', 'IDV_ctyi', '', 'IDV_CDOOR', '', 'IDV_ctyq', '', '', ''),
('IDV_CHS1', '', '', '', '', 'IDV_ctyp', '', '', ''),
('IDV_VHS1', '', '', '', '', 'IDV_VIL4', '', '', '');


delete from panel_nav where [from] = 'IDV_VILDOOR';
delete from panel_nav where [from] = 'IDV_CDOOR';
INSERT INTO "main"."panel_nav" ("from", "forward", "back") VALUES
('IDV_VILDOOR', 'IDV_VHS1', 'IDV_VIL4'),
('IDV_CDOOR', 'IDV_CHS1', 'IDV_CTYP');


delete from objects where [object] like 'IDD_GOPASEED';
delete from objects where [object] like 'IDD_SPADE';
insert into objects values
('IDD_GOPASEED',50005,'IDC_NULL','gopaseed','gopaseed','gopaseed'),
('IDD_SPADE',50010,'IDC_NULL','spade','spade','spade');

delete from isa where [member] like 'IDD_SPADE%';
INSERT INTO "main"."isa" ("class", "member")
VALUES 
('ISA_TOOL_DIGGER', 'IDD_SPADE');

delete from spr_names where name = 'IDS_GPANIM';
delete from spr_names where name = 'IDS_GPDIRTANIM';
delete from spr_names where name = 'IDS_SANDPILEGOPA';
insert into spr_names values ('IDS_GPANIM','GPANIM','50006');
insert into spr_names values ('IDS_GPDIRTANIM','gopadirtanim','50007');
insert into spr_names values ('IDS_SANDPILEGOPA','sandpileGopa','50008');


delete from machines where [name] like 'S00_CITYGOP%';
delete from machines where [name] like 'S00_VILGOP%';
INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name", "z") VALUES 
('50006', 'S00_CITYGOPA', '50000', 'IDV_CHS1', '2957', '186', '3045', '240', '0', 'M_NEWGOPA', 'ISA_TOOL_DIGGER', '', '', '', ''),
('50007', 'S00_VILGOPA', '50003', 'IDV_VHS1', '2546', '181', '2631', '240', '0', 'M_NEWGOPA', 'ISA_TOOL_DIGGER', '', '', '', '');


delete from transitions where [automaton] like 'M_NEWGOPA%';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code","guard")
VALUES 

('M_NEWGOPA', '0', 'setup', 'C_ACCEPT', 'WIP1', '','',''),
('M_NEWGOPA', 'setup', 'digging', 'DRAG', '', '', '
    if(WIP1 == ISA_TOOL_DIGGER){
            SHOW(0,IDS_SANDPILEGOPA);
            PLAYWAVE(SOUND_DIG);
            ANIMATE();
         }   
',''),
('M_NEWGOPA', 'digging', 'holeDug', 'ESTIME', '', '3', '',''),
('M_NEWGOPA', 'holeDug', 'firstPlanted', 'DROP', '', 'IDD_GOPASEED', '
            PLAYWAVE(SOUND_SUCK);
            SHOW();
',''),
('M_NEWGOPA', 'firstPlanted', 'needsWater', 'ESTIME', '', '1', '
       MOV(BFRAME,3);
       SHOW(0,IDS_GPDIRTANIM);
',''),
('M_NEWGOPA', 'needsWater', 'watered', 'DRAG', '0', 'IDD_BUCKF IDD_BUCKE', '
            HANDOFF(IDD_BUCKE);
            MOV(BFRAME,1);
            SHOW(0,IDS_GPDIRTANIM);
            PLAYWAVE(SOUND_SPLASH);
',''),
('M_NEWGOPA', 'watered', 'freshSprout', 'ESTIME', '', '5', '
            MOV(BFRAME,0);
             PLAYWAVE(SOUND_HURT);
            SHOW(0,IDS_GPDIRTANIM);
            BPARM = 0;
',''),
('M_NEWGOPA', 'freshSprout', 'sproutedNeedsWater', 'ESTIME', '', '5', '
            MOV(BFRAME,2);
            SHOW(0,IDS_GPDIRTANIM);
',''),
('M_NEWGOPA', 'sproutedNeedsWater', 'sproutWatered', 'DRAG', '0', 'IDD_BUCKF IDD_BUCKE', '
            HANDOFF(IDD_BUCKE);
            MOV(BFRAME,0);
            SHOW(0,IDS_GPDIRTANIM);
            PLAYWAVE(SOUND_SPLASH);
            BPARM = BPARM + 1;
',''),
('M_NEWGOPA', 'sproutWatered', 'immaturePlant', 'EQUALi', 'BPARM', '3', '
            MOV(BFRAME,0);
            SHOW(0,IDS_GPANIM);
',''),
('M_NEWGOPA', 'sproutWatered', 'freshSprout', 'Z_EPSILON', '', '', '',''),
('M_NEWGOPA', 'immaturePlant', 'greenBerry',  'DRAG', '0', 'IDD_BUCKF IDD_BUCKE', '
            HANDOFF(IDD_BUCKE);
            PLAYWAVE(SOUND_SPLASH);
            MOV(BFRAME,1);
            SHOW(0,IDS_GPANIM);
',''),
('M_NEWGOPA', 'greenBerry', 'redBerry',  'DRAG', '0', 'IDD_SCOOPF', '
            HANDOFF(IDD_SCOOPE);
            PLAYWAVE(SOUND_SPIT);
            MOV(BFRAME,2);
            SHOW(0,IDS_GPANIM);
',''),
('M_NEWGOPA', 'redBerry', 'blueBerry',  'DRAG', '0', 'IDD_SCOOPF', '
            HANDOFF(IDD_SCOOPE);
            PLAYWAVE(SOUND_SPIT);
            MOV(BFRAME,3);
            SHOW(0,IDS_GPANIM);
','');