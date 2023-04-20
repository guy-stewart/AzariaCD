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
--('4432', 'S11_LOGBINA', '4355', 'IDV_FALTAR', '1200', '37', '2022', '255', '2', 'M_OBJECTBIN', 'IDD_LOG', '4464', '', '0', '', '0', '', '0'),

('4384', 'S11_BAITSTATION', '4356', 'IDV_FH1PAN', '2985', '64', '3200', '300', '0', 'M_BAITSTATION', '', '0', '', '0', '', '0', '', '0'),
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