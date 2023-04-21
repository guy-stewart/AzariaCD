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

INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip1_value", "wip2_name", "wip2_value", "wip3_name", "wip3_value", "wip4_name", "wip4_value") 
VALUES 
('4368', 'S11_FIRE', '4355', 'IDV_FALTAR', '122', '165', '290', '210', '0', 'M11_FIRE', '', '0', '', '0', '', '0', '', '0'),
('4369', 'S11_GRILL', '4355', 'IDV_FALTAR', '145', '100', '267', '142', '0', 'M11_GRILL', 'S11_FIRE', '4368', 'S11_ASCENT', '4370', '', '0', '', '0'),
('4370', 'S11_ASCENT', '4355', 'IDV_FALTAR', '125', '0', '267', '70', '0', 'M11_ASCENT', '', '0', '', '0', '', '0', '', '0'),


('4385', 'S11_POLESTANDa', '4356', 'IDV_FH1PAN', '2700', '120', '2750', '300', '0', 'M_POLESTAND', '', '0', '', '0', '', '0', '', '0'),
('4386', 'S11_POLESTANDb', '4356', 'IDV_FH1PAN', '2750', '120', '2800', '300', '0', 'M_POLESTAND', '', '0', '', '0', '', '0', '', '0'),
('4387', 'S11_POLESTANDc', '4356', 'IDV_FH1PAN', '2800', '120', '2850', '300', '0', 'M_POLESTAND', '', '0', '', '0', '', '0', '', '0'),
('4388', 'S11_POLESTANDd', '4356', 'IDV_FH1PAN', '2850', '120', '2900', '300', '0', 'M_POLESTAND', '', '0', '', '0', '', '0', '', '0'),

('4400', 'S11_FISHSTATIONa', '4356', 'IDV_FH1PAN', '600', '110', '700', '300', '0', 'M_FISHSTATION', '', '0', '', '0', '', '0', '', '0'),
('4401', 'S11_FISHSTATIONb', '4356', 'IDV_FH1PAN', '700', '110', '800', '300', '0', 'M_FISHSTATION', '', '0', '', '0', '', '0', '', '0'),
('4402', 'S11_FISHSTATIONc', '4356', 'IDV_FH1PAN', '800', '110', '900', '300', '0', 'M_FISHSTATION', '', '0', '', '0', '', '0', '', '0'),
('4403', 'S11_FISHSTATIONd', '4356', 'IDV_FH1PAN', '900', '110', '1000', '300', '0', 'M_FISHSTATION', '', '0', '', '0', '', '0', '', '0'),
('4404', 'S11_FISHSTATIONe', '4356', 'IDV_FH1PAN', '1000', '110', '1100', '300', '0', 'M_FISHSTATION', '', '0', '', '0', '', '0', '', '0'),
('4405', 'S11_FISHSTATIONf', '4356', 'IDV_FH1PAN', '1100', '110', '1200', '300', '0', 'M_FISHSTATION', '', '0', '', '0', '', '0', '', '0'),
('4406', 'S11_FISHSTATIONg', '4356', 'IDV_FH1PAN', '1200', '110', '1300', '300', '0', 'M_FISHSTATION', '', '0', '', '0', '', '0', '', '0'),
('4407', 'S11_FISHSTATIONh', '4356', 'IDV_FH1PAN', '1300', '110', '1400', '300', '0', 'M_FISHSTATION', '', '0', '', '0', '', '0', '', '0'),

('4448', 'S11_GRUBBIN0', '4358', 'IDV_GRBDRT2', '20', '8', '262', '218', '2', 'M_OBJECTBIN', 'IDD_BAIT0', '4400', '', '0', '', '0', '', '0'),
('4433', 'S11_LOGBINB', '4403', '', '2833', '168', '3126', '265', '2', 'M_OBJECTBIN', 'IDD_LOG', '4464', '', '0', '', '0', '', '0');


-- Bait stations combining with fish stations

delete from transitions where name = 'M_FISHSTATION';
INSERT INTO "main"."transitions" ("name", "state", "new_state", "opcode", "param_1", "param_2") VALUES 
        ('M_FISHSTATION', '0', '1', 'C_ACCEPT', '0', 'IDC_POLE'),
        ('M_FISHSTATION', '1', '2', 'SHOW', '0', '0'),
        ('M_FISHSTATION', '2', '50', 'DRAG', '0', 'IDD_BUCKE'),
        ('M_FISHSTATION', '2', '3', 'DROP', '0', '0'),
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
        ('M_FISHSTATION', '31',	'32', 'MOV','WPARM','WOBJECT'),
        ('M_FISHSTATION', '32', '33', 'C_ACCEPT', '0', 'ISA_BAIT'),
        ('M_FISHSTATION', '33', '34', 'DROP', '0', '0'),
        ('M_FISHSTATION', '33', '0', 'GRAB', '0', '0'),
        ('M_FISHSTATION', '34', '35', 'MIX', 'WPARM', 'WOBJECT'),
        ('M_FISHSTATION', '35', '36', 'SHOW', '0', 'IDS_POLE1B'),
        ('M_FISHSTATION', '36', '0', 'GRAB', '0', '0'),
        ('M_FISHSTATION', '50', '2', 'HANDOFF', '0', 'IDD_BUCKF');



