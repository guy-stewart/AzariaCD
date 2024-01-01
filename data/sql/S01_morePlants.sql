
delete from games;

--we use M_PLANTBIN
--we'll use 80001
delete from machines where [name] like 'S01_PLNT%';



INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") 
VALUES 
('80001', 'S01_PLNTROSEBUSH1', '4354', 'IDV_FH1PTH1', '1872', '148', '2084', '200', '2', 'M_PLANTBIN', 'IDD_FLOWERR', 'IDS_ROSEBUSH', '60', ''),
('80002', 'S01_PLNTROSEBUSH2', '4864', 'IDV_VIL2', '767', '167', '900', '200', '2', 'M_PLANTBIN', 'IDD_FLOWERR', 'IDS_ROSEBUSH', '60', ''),

('80003', 'S01_PLNTBRUSHFLOWER1', '506', 'IDV_CTO2', '1244', '220', '1320', '320', '2', 'M_PLANTBIN', 'IDD_FLOWERD', 'IDS_FLOWERPLANT', '60', '');