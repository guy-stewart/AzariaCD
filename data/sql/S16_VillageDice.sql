delete from games;

delete from spr_names where [name] like 'IDS_DICE%';
delete from spr_names where [name] like 'IDS_SHAKE%';
insert into spr_names values ('IDS_DICE','dice','25000');
insert into spr_names values ('IDS_DICE_1','dice_1','25001');
insert into spr_names values ('IDS_DICE_2','dice_2','25002');
insert into spr_names values ('IDS_DICE_3','dice_3','25003');
insert into spr_names values ('IDS_DICE_4','dice_4','25004');
insert into spr_names values ('IDS_DICE_5','dice_5','25005');
insert into spr_names values ('IDS_DICE_6','dice_6','25006');
insert into spr_names values ('IDS_DICESHAKE','diceshake','25008');
delete from sounds where [name] like 'SOUND_ONEDIEROLL%';
insert into sounds values ('SOUND_ONEDIEROLL', 'diceroll',0);

delete from objects where object = 'IDD_DICE';
delete from objects where object = 'IDD_SHAKE';
insert into objects values
('IDD_DICE',25007,'IDC_NULL','die','die','die'),
('IDD_SHAKE',25008,'IDC_NULL','diceshake','diceshake','diceshake');

delete from sounds where name like 'SOUND_SUCK%';
delete from sounds where name like 'SOUND_QSUCK%';
INSERT INTO "main"."sounds" ("name", "value", "id") VALUES ('SOUND_SUCK', 'suck', '0');
INSERT INTO "main"."sounds" ("name", "value", "id") VALUES ('SOUND_QSUCK', 'qsuck', '0');

delete from sounds where name like 'SOUND_DICE%';
INSERT INTO "main"."sounds" ("name", "value", "id") VALUES ('SOUND_DICEROLL', 'dice_06', '0');
INSERT INTO "main"."sounds" ("name", "value", "id") VALUES ('SOUND_DICESHAKE', 'diceshake', '0');

delete from map where op like 'S16_DICE%';
INSERT INTO "main"."map" ("op", "key", "value")
VALUES 
('S16_DICE_MAP',1,'IDS_DICE_1'), 
('S16_DICE_MAP',2,'IDS_DICE_2'), 
('S16_DICE_MAP',3,'IDS_DICE_3'), 
('S16_DICE_MAP',4,'IDS_DICE_4'), 
('S16_DICE_MAP',5,'IDS_DICE_5'), 
('S16_DICE_MAP',6,'IDS_DICE_6');
 


delete from machines where [name] like 'S16_DICEDROP%';
delete from machines where [name] like 'S16_DICEROLL%';
delete from machines where [name] like 'S16_DICESTAK%';

INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name","wip3_name",  "wip4_name") 
VALUES 
('16003', 'S16_DICEDROP_R', '4881', 'IDV_TRAYL', '218', '133', '333', '174', '0','M16_DICEDROP','S16_DICEROLL_R1','S16_DICEROLL_R2','', ''),
('16004', 'S16_DICEROLL_R1', '4881', 'IDV_TRAYL', '205', '140', '280', '240', '0','M16_DICEROLL','IDS_DICE','S16_DICEROLL_R2','', ''),
('16005', 'S16_DICEROLL_R2', '4881', 'IDV_TRAYL', '281', '140', '365', '240', '0','M16_DICEROLL','IDS_DICE','S16_DICEROLL_R1','', ''),

('16006', 'S16_DICEDROP_L', '4881', 'IDV_TRAYL', '50', '120', '176', '150', '0','M16_DICEDROP','S16_DICEROLL_L1','S16_DICEROLL_L2','', ''),
('16007', 'S16_DICEROLL_L1', '4881', 'IDV_TRAYL', '40', '150', '100', '210', '0','M16_DICEROLL','IDS_DICE','S16_DICEROLL_L2','', ''),
('16008', 'S16_DICEROLL_L2', '4881', 'IDV_TRAYL', '110', '150', '160', '210', '0','M16_DICEROLL','IDS_DICE','S16_DICEROLL_L1','', ''),

('16009', 'S16_DICESTAKING_R', '4881', 'IDV_TRAYL', '223', '35', '337', '123', '0','M16_DICESTAKE','','','', ''),
('16010', 'S16_DICESTAKING_L', '4881', 'IDV_TRAYL', '77', '35', '186', '123', '0','M16_DICESTAKE','','','', '');


delete from transitions where [automaton] like 'M16_DICEDROP%';
delete from transitions where [automaton] like 'M16_DICEROLL%';
delete from transitions where [automaton] like 'M16_DICEST%';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code","guard")
VALUES 

('M16_DICEDROP', '0', '2', 'O_ACCEPT', '0', 'IDD_SHAKE', '',''),
('M16_DICEDROP', '2', '0', 'DRAG', '0', '0', 'PLAYWAVE(SOUND_DICESHAKE);',''),
('M16_DICEDROP', '2', '3', 'DROP', '0', '0', 'SIGNAL(WIP1,SIG_SHOW);',''),
('M16_DICEDROP', '3', '0', 'ESTIME', '', '1', 'SIGNAL(WIP2,SIG_SHOW);',''), 


('M16_DICEROLL', '0', '2', 'WAIT', '0', 'SIG_SHOW', 'PLAYWAVE(SOUND_DICEROLL);',''),

('M16_DICEROLL', '2', '4', 'MOV', 'WSPRITE', 'WIP1', '',''),
('M16_DICEROLL', '4', '5', 'ASHOW', 'WSPRITE', 'V_LOOP', '',''),
('M16_DICEROLL', '5', '6', 'ESTIME', '', '2', '',''), 
('M16_DICEROLL','6','7','RAND','6','1','',''),
('M16_DICEROLL','7','8','MOV','BFRAME', 'WRAND','
    MAPi(BFRAME,S16_DICE_MAP);
    SHOW(BFRAME);
',''),
('M16_DICEROLL', '8', '0', 'GRAB', '', 'IDD_SHAKE', ' 
    SIGNAL(WIP2,SIG_HIDE); 
    CLEAR(WOBJECT);
    SHOW();
',''),
('M16_DICEROLL', '8', '9', 'WAIT', '0', 'SIG_HIDE', '',''),
('M16_DICEROLL', '9', '0', 'CLEAR', '', 'WOBJECT', 'SHOW(); 
',''),


('M16_DICESTAKE', '0', '1', 'DROP', '0', '', 'SHOW(WOBJECT);',''),
('M16_DICESTAKE', '1', '0', 'GRAB', 'WOBJECT', '', 'SHOW();','');





-----------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------
-- A single dice rolling
--The Penny Blob Arcade Machine

delete from spr_names where [name] like 'IDS_BLOBBALL%';
insert into spr_names values ('IDS_BLOBBALL','blobball','25010');

delete from objects where object = 'IDD_BLOBBALL';
insert into objects values
('IDD_BLOBBALL',25010,'IDC_NULL','blobball','blobball','blobball');

delete from spr_names where [name] like 'IDS_BLOBFILL%';
insert into spr_names values ('IDS_BLOBFILL1','blob_1','25011');
insert into spr_names values ('IDS_BLOBFILL2','blob_2','25012');
insert into spr_names values ('IDS_BLOBFILL3','blob_3','25013');
insert into spr_names values ('IDS_BLOBFILL4','blob_4','25014');
insert into spr_names values ('IDS_BLOBFILL5','blob_5','25015');

delete from machines where [name] like 'S16_BLOB%';
delete from machines where [name] like 'S16_DIEDROP%';
INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name","wip3_name",  "wip4_name") 
VALUES 
('16021', 'S16_BLOBFILL1', '4880', 'IDV_TRAYR',140,118,167,137, '0','M16_BLOBDROP','IDS_BLOBFILL1','','', ''),
('16022', 'S16_BLOBFILL2', '4880', 'IDV_TRAYR',171,118,199,137, '0','M16_BLOBDROP','IDS_BLOBFILL2','','', ''),
('16023', 'S16_BLOBFILL3', '4880', 'IDV_TRAYR',202,118,231,137, '0','M16_BLOBDROP','IDS_BLOBFILL3','','', ''),
('16024', 'S16_BLOBFILL4', '4880', 'IDV_TRAYR',232,119,263,137, '0','M16_BLOBDROP','IDS_BLOBFILL4','','', ''),
('16025', 'S16_BLOBFILL5', '4880', 'IDV_TRAYR',263,119,296,137, '0','M16_BLOBDROP','IDS_BLOBFILL5','','', ''),
('16026', 'S16_BLOBFILL6', '4880', 'IDV_TRAYR',195,136,234,151, '0','M16_BLOBHOLE','','','', ''),
('16027', 'S16_DIEDROP', '4880', 'IDV_TRAYR',175,160,266,252, '0','M16_DIEROLL','IDS_DICE','','', ''),

('16030', 'S16_BLOBHOLD1', '4880', 'IDV_TRAYR',0,25,25,50,'0','M16_BLOBHOLDER','','','', ''),
('16031', 'S16_BLOBHOLD2', '4880', 'IDV_TRAYR',0,50,25,75,'0','M16_BLOBHOLDER','','','', ''),
('16032', 'S16_BLOBHOLD3', '4880', 'IDV_TRAYR',0,75,25,100,'0','M16_BLOBHOLDER','','','', ''),
('16033', 'S16_BLOBHOLD4', '4880', 'IDV_TRAYR',0,100,25,125,'0','M16_BLOBHOLDER','','','', ''),
('16034', 'S16_BLOBHOLD5', '4880', 'IDV_TRAYR',0,125,25,150,'0','M16_BLOBHOLDER','','','', ''),
('16035', 'S16_BLOBHOLD6', '4880', 'IDV_TRAYR',0,150,25,175,'0','M16_BLOBHOLDER','','','', ''),
('16036', 'S16_BLOBHOLD7', '4880', 'IDV_TRAYR',0,175,25,200,'0','M16_BLOBHOLDER','','','', ''),
('16037', 'S16_BLOBHOLD8', '4880', 'IDV_TRAYR',0,200,25,225,'0','M16_BLOBHOLDER','','','', ''),
('16038', 'S16_BLOBHOLD17', '4880', 'IDV_TRAYR',0,225,25,250,'0','M16_BLOBHOLDER_E','','','', ''),

('16040', 'S16_BLOBHOLD9',  '4880', 'IDV_TRAYR',375,25,400,50,'0','M16_BLOBHOLDER','','','', ''),
('16041', 'S16_BLOBHOLD10', '4880', 'IDV_TRAYR',375,50,400,75,'0','M16_BLOBHOLDER','','','', ''),
('16042', 'S16_BLOBHOLD11', '4880', 'IDV_TRAYR',375,75,400,100,'0','M16_BLOBHOLDER','','','', ''),
('16043', 'S16_BLOBHOLD12', '4880', 'IDV_TRAYR',375,100,400,125,'0','M16_BLOBHOLDER','','','', ''),
('16044', 'S16_BLOBHOLD13', '4880', 'IDV_TRAYR',375,125,400,150,'0','M16_BLOBHOLDER','','','', ''),
('16045', 'S16_BLOBHOLD14', '4880', 'IDV_TRAYR',375,150,400,175,'0','M16_BLOBHOLDER','','','', ''),
('16046', 'S16_BLOBHOLD15', '4880', 'IDV_TRAYR',375,175,400,200,'0','M16_BLOBHOLDER','','','', ''),
('16047', 'S16_BLOBHOLD16', '4880', 'IDV_TRAYR',375,200,400,225,'0','M16_BLOBHOLDER','','','', ''),
('16048', 'S16_BLOBHOLD18', '4880', 'IDV_TRAYR',375,225,400,250,'0','M16_BLOBHOLDER_E','','','', ''),

('16050', 'S16_BLOBRESET', '4880', 'IDV_TRAYR',270,157,300,192,'0','M16_BLOBRESET','','','', '');




delete from transitions where [automaton] like 'M16_BLOB%';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code","guard")
VALUES 
('M16_BLOBDROP', '0', '2', 'O_ACCEPT', '0', 'IDD_BLOBBALL', '',''),
('M16_BLOBDROP', '2', '3', 'DROP', '0', '0', '
    PLAYWAVE(SOUND_SUCK);
',''),
('M16_BLOBDROP', '3', '4', 'MOV', 'WSPRITE', 'WIP1', '',''),
('M16_BLOBDROP', '4', '0', 'SHOW', 'WSPRITE', '', '',''),
('M16_BLOBDROP', '2', '0', 'GRAB', 'WOBJECT', '', 'SHOW();',''),
('M16_BLOBDROP', '2', '5', 'WAIT', '', 'SIG_RESET', 'SHOW();',''),
('M16_BLOBDROP', '5', '0', 'Z_EPSILON', '', '', '',''),

('M16_BLOBHOLE', '0', '2', 'O_ACCEPT', '0', 'IDD_BLOBBALL', '',''),
('M16_BLOBHOLE', '2', '0', 'DROP', '0', '0', 'SHOW();PLAYWAVE(SOUND_QSUCK);',''),

('M16_BLOBHOLDER', '0', 'ballpresent', 'ACCEPT', '', 'IDD_BLOBBALL', '
    MOV(WOBJECT,IDD_BLOBBALL);
    SHOW(WOBJECT);
',''),
('M16_BLOBHOLDER', 'ballpresent', 'ballempty', 'GRAB', '', 'IDD_BLOBBALL', 'SHOW();',''),
('M16_BLOBHOLDER', 'ballempty', '0', 'DROP', '', '', '',''),
('M16_BLOBHOLDER', 'ballempty', 'resetting', 'WAIT', '', 'SIG_RESET', '',''),
('M16_BLOBHOLDER', 'resetting', '0', 'Z_EPSILON', '', '', '',''),

--empty blob holder
('M16_BLOBHOLDER_E', '0', 'ballempty', 'ACCEPT', '', 'IDD_BLOBBALL', '',''),
('M16_BLOBHOLDER_E', 'ballempty', 'ballholding', 'DROP', '', '','
    MOV(WOBJECT,IDD_BLOBBALL);
    SHOW(WOBJECT); 
',''),
('M16_BLOBHOLDER_E', 'ballholding', 'ballempty', 'GRAB', '', 'IDD_BLOBBALL', 'SHOW();',''),
('M16_BLOBHOLDER_E', 'ballempty', 'resetting', 'WAIT', '', 'SIG_RESET', '',''),
('M16_BLOBHOLDER_E', 'resetting', '0', 'Z_EPSILON', '', '', '',''),



('M16_BLOBRESET', '0', '0', 'CLICK', '0', '', '
   SIGNAL(S16_BLOBHOLD1,SIG_RESET);
   SIGNAL(S16_BLOBHOLD2,SIG_RESET);
   SIGNAL(S16_BLOBHOLD3,SIG_RESET);
   SIGNAL(S16_BLOBHOLD4,SIG_RESET);
   SIGNAL(S16_BLOBHOLD5,SIG_RESET);
   SIGNAL(S16_BLOBHOLD6,SIG_RESET);
   SIGNAL(S16_BLOBHOLD7,SIG_RESET);
   SIGNAL(S16_BLOBHOLD8,SIG_RESET);
   SIGNAL(S16_BLOBHOLD9,SIG_RESET);
   SIGNAL(S16_BLOBHOLD10,SIG_RESET);
   SIGNAL(S16_BLOBHOLD11,SIG_RESET);
   SIGNAL(S16_BLOBHOLD12,SIG_RESET);
   SIGNAL(S16_BLOBHOLD13,SIG_RESET);
   SIGNAL(S16_BLOBHOLD14,SIG_RESET);
   SIGNAL(S16_BLOBHOLD15,SIG_RESET);
   SIGNAL(S16_BLOBHOLD16,SIG_RESET);
   SIGNAL(S16_BLOBFILL1,SIG_RESET);
   SIGNAL(S16_BLOBFILL2,SIG_RESET);
   SIGNAL(S16_BLOBFILL3,SIG_RESET);
   SIGNAL(S16_BLOBFILL4,SIG_RESET);
   SIGNAL(S16_BLOBFILL5,SIG_RESET); ','');


delete from transitions where [automaton] like 'M16_DIE%';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code","guard")
VALUES 
('M16_DIEROLL', '0', '2', 'O_ACCEPT', '0', 'IDD_DICE', '',''),
('M16_DIEROLL', '2', '3', 'DROP', '0', '0', '',''),
('M16_DIEROLL', '3', '4', 'MOV', 'WSPRITE', 'WIP1', '',''),
('M16_DIEROLL', '4', '5', 'ASHOW', 'WSPRITE', 'V_LOOP', 'PLAYWAVE(SOUND_ONEDIEROLL);',''),
('M16_DIEROLL', '5', '6', 'ESTIME', '', '2', '',''), 

('M16_DIEROLL','6','7','RAND','6','1','',''),
('M16_DIEROLL','7','8','MOV','BFRAME', 'WRAND','
    MAPi(BFRAME,S16_DICE_MAP);
    SHOW(BFRAME);
',''),
('M16_DIEROLL', '8', '0', 'GRAB', '', '', 'CLEAR(WOBJECT);SHOW();','');