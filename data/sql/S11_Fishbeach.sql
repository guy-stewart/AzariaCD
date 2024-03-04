delete from games;
delete from machines where name = 'S11_FIRE';
delete from machines where name = 'S11_GRILL';
delete from machines where name = 'S11_ASCENT';
delete from machines where name = 'S11_LOGBINA';

delete from machines where name = 'S11_BAITSTATION';
delete from machines where name = 'S11_POLESTANDa';
delete from machines where name = 'S11_POLESTANDb';
delete from machines where name = 'S11_POLESTANDc';
delete from machines where name = 'S11_POLESTANDd';

delete from machines where name = 'S11_FISHSTATIONa';
delete from machines where name = 'S11_FISHSTATIONb';
delete from machines where name = 'S11_FISHSTATIONc';
delete from machines where name = 'S11_FISHSTATIONd';
delete from machines where name = 'S11_FISHSTATIONe';
delete from machines where name = 'S11_FISHSTATIONf';
delete from machines where name = 'S11_FISHSTATIONg';
delete from machines where name = 'S11_FISHSTATIONh';

delete from machines where name = 'S11_GRUBBIN0';
delete from machines where name = 'S11_LOGBINB';

INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") 
VALUES 
('4368', 'S11_FIRE', '4355', 'IDV_FALTAR', '122', '165', '290', '210', '0', 'M11_FIRE', '', '', '',  ''),
('4369', 'S11_GRILL', '4355', 'IDV_FALTAR', '145', '100', '267', '142', '0', 'M11_GRILL', 'S11_FIRE','S11_ASCENT', '', ''),
('4370', 'S11_ASCENT', '4355', 'IDV_FALTAR', '125', '0', '267', '70', '0', 'M11_ASCENT',  '', '', '',  ''),


('4385', 'S11_POLESTANDa', '4356', 'IDV_FH1PAN', '2700', '120', '2750', '300', '0', 'M_POLESTAND', '', '', '',  ''),
('4386', 'S11_POLESTANDb', '4356', 'IDV_FH1PAN', '2750', '120', '2800', '300', '0', 'M_POLESTAND',  '', '', '',  ''),
('4387', 'S11_POLESTANDc', '4356', 'IDV_FH1PAN', '2800', '120', '2850', '300', '0', 'M_POLESTAND',  '', '', '',  ''),
('4388', 'S11_POLESTANDd', '4356', 'IDV_FH1PAN', '2850', '120', '2900', '300', '0', 'M_POLESTAND',  '', '', '',  ''),

('4405', 'S11_FISHSTATIONa', '4356', 'IDV_FH1PAN', '1100', '110', '1200', '300', '0', 'M_FISHSTATION', '', '', '',  ''),
('4406', 'S11_FISHSTATIONb', '4356', 'IDV_FH1PAN', '1200', '110', '1300', '300', '0', 'M_FISHSTATION', '', '', '',  ''),
('4407', 'S11_FISHSTATIONc', '4356', 'IDV_FH1PAN', '1300', '110', '1400', '300', '0', 'M_FISHSTATION', '', '', '',  ''),
('4400', 'S11_FISHSTATIONd', '4356', 'IDV_FH1PAN', '1600', '110', '1700', '300', '0', 'M_FISHSTATION', '', '', '',  ''),
('4401', 'S11_FISHSTATIONe', '4356', 'IDV_FH1PAN', '1700', '110', '1800', '300', '0', 'M_FISHSTATION', '', '', '',  ''),
('4402', 'S11_FISHSTATIONf', '4356', 'IDV_FH1PAN', '1800', '110', '1900', '300', '0', 'M_FISHSTATION', '', '', '',  ''),

('4448', 'S11_GRUBBIN0', '4358', 'IDV_GRBDRT2', '20', '8', '262', '218', '2', 'M_OBJECTBIN', 'IDD_BAIT0', '', '',  ''),
('4433', 'S11_LOGBINB', '4403', '', '2833', '168', '3126', '265', '2', 'M_OBJECTBIN', 'IDD_LOG',  '',  '',  ''),

('4450', 'S11_SHOREBIN', '4403', '', '2833', '168', '3126', '265', '2', 'M_OBJECTBIN', 'IDD_LOG',  '', '',  '');

-- Bait stations combining with fish stations

delete from transitions where automaton = 'M_FISHSTATION';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2") VALUES 
        ('M_FISHSTATION', '0', '1', 'Z_EPSILON', '', ''),
        ('M_FISHSTATION', '1', '2', 'SHOW', '0', '0'),
        ('M_FISHSTATION', '2', '50', 'DRAG', '0', 'IDD_BUCKE'),
        ('M_FISHSTATION', '2', '3', 'DROP', 'IDC_POLE', ''),
        ('M_FISHSTATION', '2', '0', 'GRAB', '0', '0'),
        ('M_FISHSTATION', '3', '4', 'IS_A', 'WOBJECT', 'ISA_BAITEDPOLE'),
        ('M_FISHSTATION', '3', '30', 'Z_EPSILON', '0', '0'), --else get baited
        ('M_FISHSTATION', '4', '5', 'SHOW', '0', 'IDS_POLE1LCL'), --baited cast
        ('M_FISHSTATION', '5', '6', 'RAND', 'ADD_CATCH_TIME', 'MIN_CATCH_TIME'),
        ('M_FISHSTATION', '6', '0', 'GRAB', '0', '0'),
        ('M_FISHSTATION', '6', '7', 'SYNCPOINT', 'WRAND', 'SYNC_FISH1'),
        ('M_FISHSTATION', '7', '8', 'PLAYWAVE', '0', 'SOUND_HURT'),
        ('M_FISHSTATION', '8', '9', 'MOV', 'WPARM', 'WOBJECT'),
        ('M_FISHSTATION', '9', '11', 'RAND', 'IDD_FISH10-IDD_FISH1', 'IDD_FISH1'),
        ('M_FISHSTATION', '11', '12', 'MOV', 'WOBJECT', 'WRAND'),
        ('M_FISHSTATION', '12', '13', 'SHOW', '0', 'IDS_POLE1LCT'),
        ('M_FISHSTATION', '13', '14', 'GRAB', '0', '0'),
        ('M_FISHSTATION', '14', '15', 'MOV', 'WOBJECT', 'WPARM'),
        ('M_FISHSTATION', '15', '16', 'XIM', 'WOBJECT', 'WPARM'),
        ('M_FISHSTATION', '16', '17', 'SHOW', 'WOBJECT', ''),
        ('M_FISHSTATION', '17', '0', 'GRAB', '0', '0'),
        ('M_FISHSTATION', '30', '31', 'SHOW', '0', 'IDS_POLE1LCU'),
        ('M_FISHSTATION', '31',	'33', 'MOV','WPARM','WOBJECT'),
        ('M_FISHSTATION', '33', '34', 'DROP', 'ISA_BAIT', '0'),
        ('M_FISHSTATION', '33', '0', 'GRAB', '0', '0'),
        ('M_FISHSTATION', '34', '35', 'MIX', 'WPARM', 'WOBJECT'),
        ('M_FISHSTATION', '35', '36', 'SHOW', '0', 'IDS_POLE1B'),
        ('M_FISHSTATION', '36', '0', 'GRAB', '0', '0'),
        ('M_FISHSTATION', '50', '2', 'HANDOFF', '0', 'IDD_BUCKF');


delete from machines where name = 'S11_SHOREBIN';
delete from machines where name = 'S11_SHORE';
INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name")  VALUES ('4460', 'S11_SHORE', '4356', 'IDV_FH1PAN', '980', '219', '1000', '281', '2', 'M_PORTAL', 'IDV_SHORE', 'IDV_SHORE', '60', '');
INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name")  VALUES ('4461', 'S11_SHOREBIN', '4360', 'IDV_SHORE', '129', '87', '321', '213', '0', 'M_ANIBIN', 'IDS_FISH','IDD_BAIT3', '60', '');