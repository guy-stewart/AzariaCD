
delete from games;

--Here we centralize all the spells for whatever purpose
delete from objects where class = 'IDC_SPELL';

INSERT INTO "main"."objects" ("object", "object_id", "class", "icon", "cursor", "actor")
VALUES 
--the 13 scroll spells
--------------------------------------
--------------------------------------
('IDD_ENCHANT', '30609', 'IDC_SPELL', 'enchant', 'enchant', 'enchant'),
('IDD_STALKER', '30610', 'IDC_SPELL', 'stalk', 'stalk', 'stalk'),
('IDD_BLINDNESS', '30611', 'IDC_SPELL', 'blind', 'blind', 'blind'),
('IDD_HOLDING', '30612', 'IDC_SPELL', 'holding', 'holding', 'holding'),
('IDD_TRANSFER', '30613', 'IDC_SPELL', 'transfer', 'transfer', 'transfer'),
--alarm
--record
('IDD_TELEKINESIS', '30616', 'IDC_SPELL', 'tele', 'tele', 'tele'),
('IDD_EXPLOSION', '30617', 'IDC_SPELL', 'starspl1', 'starspl1', 'starspl1'),
--lock
--lockpick
('IDD_PROTECT', '30620', 'IDC_SPELL', 'protect', 'protect', 'protect'),
('IDD_DEATH', '30621', 'IDC_SPELL', 'skull', 'skull', 'skull'), -- we need a different one here
--------------------------------------
--------------------------------------

('IDD_INVISIBLE', '30622', 'IDC_SPELL', 'spinspel', 'spinspel', 'spinspel'),
('IDD_BANISHMENT', '30624', 'IDC_SPELL', 'skull', 'skull', 'skull'),
('IDD_HALUCINATE', '30626', 'IDC_SPELL', 'redeye', 'redeye', 'redeye'), 
('IDD_MINDREAD', '30625', 'IDC_SPELL', 'mind', 'mind', 'mind'),


--Hidden spells core to game puzzles
('IDD_EYESPELL', '30629', 'IDC_SPELL', 'eyespell', 'eyespell', 'eyespell'),
('IDD_MEMSPELL', '1630', 'IDC_SPELL', 'MEMSPELL', 'MEMSPELL', 'MEMSPELL'),
('IDD_WETBREATH', '30628', 'IDC_SPELL', 'water', 'water', 'water'),
('IDD_NYBREATH', '30627', 'IDC_SPELL', 'nys', 'nys', 'nys'),
--------------------------------------
--------------------------------------
('IDD_STRENGTH', '30623', 'IDC_SPELL', 'muscle', 'muscle', 'muscle'),
('IDD_LOCK', '30618', 'IDC_SPELL', 'radio', 'radio', 'radio'), -- using fish spell general
('IDD_RECORDER', '30615', 'IDC_SPELL', 'Spelx07', 'Spelx07', 'Spelx07'),
('IDD_UNLOCK', '30619', 'IDC_SPELL', 'Spelx01', 'Spelx01', 'Spelx01'),

 -- these atom spells equate to their fish? 
 -- These are cool but what do they mean?
('IDD_SPELL01', '30583', 'IDC_SPELL', 'Spell01', 'Spell01', 'Spell01'),
('IDD_SPELL02', '30584', 'IDC_SPELL', 'Spell02', 'Spell02', 'Spell02'),
('IDD_SPELL03', '30585', 'IDC_SPELL', 'Spell03', 'Spell03', 'Spell03'),
('IDD_SPELL04', '30586', 'IDC_SPELL', 'Spell04', 'Spell04', 'Spell04'),
('IDD_SPELL05', '30587', 'IDC_SPELL', 'Spell05', 'Spell05', 'Spell05'),
('IDD_SPELL06', '30588', 'IDC_SPELL', 'Spell06', 'Spell06', 'Spell06'),
('IDD_SPELL07', '30589', 'IDC_SPELL', 'Spell07', 'Spell07', 'Spell07'),
('IDD_SPELL08', '30590', 'IDC_SPELL', 'Spell08', 'Spell08', 'Spell08'),
('IDD_SPELL09', '30591', 'IDC_SPELL', 'Spell09', 'Spell09', 'Spell09'),
('IDD_SPELL10', '30592', 'IDC_SPELL', 'Spell10', 'Spell10', 'Spell10'),
('IDD_SPELx01', '30599', 'IDC_SPELL', 'Spelx01', 'Spelx01', 'Spelx01'),
('IDD_SPELx02', '30600', 'IDC_SPELL', 'Spelx02', 'Spelx02', 'Spelx02'),
('IDD_SPELx03', '30601', 'IDC_SPELL', 'Spelx03', 'Spelx03', 'Spelx03'),
('IDD_SPELx04', '30602', 'IDC_SPELL', 'Spelx04', 'Spelx04', 'Spelx04'),
('IDD_SPELx05', '30603', 'IDC_SPELL', 'Spelx05', 'Spelx05', 'Spelx05'),
('IDD_SPELx06', '30604', 'IDC_SPELL', 'Spelx06', 'Spelx06', 'Spelx06'),
('IDD_SPELx07', '30605', 'IDC_SPELL', 'Spelx07', 'Spelx07', 'Spelx07'),
('IDD_SPELx08', '30606', 'IDC_SPELL', 'Spelx08', 'Spelx08', 'Spelx08'),
('IDD_SPELx09', '30607', 'IDC_SPELL', 'Spelx09', 'Spelx09', 'Spelx09'),
('IDD_SPELx10', '30608', 'IDC_SPELL', 'Spelx10', 'Spelx10', 'Spelx10'),

('IDD_SPIRIT0', '30576', 'IDC_SPELL', 'Spirit1', 'Spirit1', 'Spirit1'), --fish spirit
('IDD_SPIRIT1', '30577', 'IDC_SPELL', 'Spirit1', 'Spirit1', 'Spirit1'),
('IDD_SPIRIT2', '30578', 'IDC_SPELL', 'Spirit1', 'Spirit1', 'Spirit1'),
('IDD_SPIRIT3', '30579', 'IDC_SPELL', 'Spirit1', 'Spirit1', 'Spirit1');

