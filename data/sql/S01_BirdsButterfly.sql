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
INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip1_value", "wip2_name", "wip2_value", "wip3_name", "wip3_value", "wip4_name", "wip4_value") 
VALUES 
('4664', 'S12_BUTTERFLY', '5380', 'IDV_TMPLPTH4', '3190', '0', '3200', '300',  '2', 'M_TIMEDVPLAY', 'IDS_BFLY', '8800', '', '0', '60', '0', '', '0'),
('215', 'S03_BIRDSFWD', '5633', 'IDV_GRNDCNT1', '360', '2', '420', '300',  '2', 'M_VPLAY2', 'IDS_BIRDSFWD', '8801', '', '0', '60', '0', '', '0'),
('216', 'S03_BIRDSBKWD', '5633', 'IDV_GRNDCNT1', '1920', '2', '2100', '300',  '2', 'M_VPLAY3', 'IDS_BIRDSBKWD', '8802', '', '0', '60', '0', '', '0');

delete from transitions where name = 'M_TIMEDVPLAY';
delete from transitions where name = 'M_VPLAY2';
delete from transitions where name = 'M_VPLAY3';

INSERT INTO "main"."transitions" ("name", "state", "new_state", "opcode", "param_1", "param_2") 
VALUES 

('M_TIMEDVPLAY', '0', '1', 'DRAGFOCUS', '0', '0'),
('M_TIMEDVPLAY',  '1', '2', 'SHOW', '0', 'IDS_BFLY'),
('M_TIMEDVPLAY', '2', '0', 'ANIMATE', '0', '0'),

('M_VPLAY2', '0', '1', 'DRAGFOCUS', '0', '0'),
('M_VPLAY2',  '1', '2', 'SHOW', '0', 'IDS_BIRDSFWD'),
('M_VPLAY2', '2', '0', 'ANIMATE', '0', '0'),

('M_VPLAY3', '0', '1', 'DRAGFOCUS', '0', '0'),
('M_VPLAY3',  '1', '2', 'SHOW', '0', 'IDS_BIRDSBKWD'),
('M_VPLAY3', '2', '0', 'ANIMATE', '0', '0');

