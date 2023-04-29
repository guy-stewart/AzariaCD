delete from games;
delete from spr_names where name = 'IDS_BFLY';
delete from spr_names where name = 'IDS_BIRDSFWD';
delete from spr_names where name = 'IDS_BIRDSBKWD';
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_BFLY', 'BFLY', '8800');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_BIRDSFWD', 'BIRDSFWD', '8801');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_BIRDSBKWD', 'BIRDSBKWD', '8802');


delete from machines where name = 'S12_BUTTERFLY';
delete from machines where name = 'S03_BIRDSFWD';
delete from machines where name = 'S03_BIRDSBKWD';
delete from machines where name = 'S01_NATURE';

INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip1_value", "wip2_name", "wip2_value", "wip3_name", "wip3_value", "wip4_name", "wip4_value") 
VALUES 
('4664', 'S12_BUTTERFLY', '5380', 'IDV_TMPLPTH4', '3190', '0', '3200', '300',  '2', 'M_TIMEDVPLAY', 'IDS_BFLY', '8800', '', '0', '', '0', '', '0'),
('215', 'S03_BIRDSFWD', '5633', 'IDV_GRNDCNT1', '360', '2', '420', '300',  '2', 'M_VPLAY2', 'IDS_BIRDSFWD', '8801', '', '0', '', '0', '', '0'),
('216', 'S03_BIRDSBKWD', '5633', 'IDV_GRNDCNT1', '1920', '2', '2100', '300',  '2', 'M_VPLAY3', 'IDS_BIRDSBKWD', '8802', '', '0', '', '0', '', '0'),
('217', 'S01_NATURE', '5633', 'IDV_GRNDCNT1', '417', '45', '500', '80',  '2', 'M_NATURE', '', '', '', '0', '', '0', '', '0');

delete from transitions where name = 'M_NATURE';
delete from transitions where name = 'M_TIMEDVPLAY';
delete from transitions where name = 'M_VPLAY2';
delete from transitions where name = 'M_VPLAY3';
delete from transitions where name = 'M_ANIPORTAL';

INSERT INTO "main"."transitions" ("name", "state", "new_state", "opcode", "param_1", "param_2") 
VALUES 
('M_NATURE', '0', '1', 'WAIT', '0', 'SIG_OPEN'),
('M_NATURE', '1', '2', 'ESTIME', '', '4'),
('M_NATURE', '2', '3', 'SIGNALi', 'SIG_OPEN', 'S03_BIRDSFWD'),
('M_NATURE', '3', '4', 'ESTIME', '10', '10'),
('M_NATURE', '4', '5', 'SIGNALi', 'SIG_OPEN', 'S03_BIRDSBKWD'),
('M_NATURE', '5', '6', 'SIGNALi', 'SIG_OPEN', 'S12_BUTTERFLY'),
('M_NATURE', '6', '7', 'SIGNALi', 'SIG_RIPEN', 'S16_GOPABUSH'),
('M_NATURE', '7', '1', 'ESTIME', '', '20'),


('M_TIMEDVPLAY', '0', '1', 'WAIT', '0', 'SIG_OPEN'),
('M_TIMEDVPLAY',  '1', '2', 'SHOW', '0', 'IDS_BFLY'),
('M_TIMEDVPLAY', '2', '0', 'ANIMATE', '0', '0'),

('M_VPLAY2', '0', '1', 'WAIT', '0', 'SIG_OPEN'),
('M_VPLAY2',  '1', '2', 'SHOW', '0', 'IDS_BIRDSFWD'),
('M_VPLAY2', '2', '0', 'ANIMATE', '0', '0'),

('M_VPLAY3', '0', '1', 'WAIT', '0', 'SIG_OPEN'),
('M_VPLAY3',  '1', '2', 'SHOW', '0', 'IDS_BIRDSBKWD'),
('M_VPLAY3', '2', '0', 'ANIMATE', '0', '0');



INSERT INTO "main"."transitions" ("name", "state", "new_state", "opcode", "param_1", "param_2")
 VALUES 
 ('M_ANIPORTAL', '0', '1', 'MOV', 'WSPRITE', 'WIP1'),
 ('M_ANIPORTAL', '1', '2', 'ASHOW', 'WSPRITE', 'V_LOOP'),
 ('M_ANIPORTAL', '2', '3', 'CLICK', '0', '0'),
 ('M_ANIPORTAL', '3', '4', 'SIGNALi', 'SIG_OPEN', 'S01_NATURE'),
 ('M_ANIPORTAL', '4', '1', 'LOADVIEW', '0', 'IDV_GRNDCNT1');