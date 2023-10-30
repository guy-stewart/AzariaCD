
delete from games;

----RESOURCES 
--Modified rotation fix

delete from cardinals where [from] like 'IDV_cty%';
INSERT INTO "main"."cardinals" ("from", "north", "northeast", "east", "southeast", "south", "southwest", "west", "northwest")
VALUES 

('IDV_ctya', 'IDV_ctyb', 'IDV_ctye', 'IDV_ctyd', '', 'IDV_ctyc', '', 'IDV_CTO3', ''),
('IDV_ctyb', 'IDV_ctyhouse', '', 'IDV_ctye', 'IDV_ctyd', 'IDV_ctya', '', '', ''),
('IDV_ctyc', 'IDV_ctya', 'IDV_ctyd', '', '', 'IDV_ctysmith', '', '', ''),
('IDV_ctyd', 'IDV_ctye', '', 'IDV_ctyn', '', 'IDV_ctyk', 'IDV_ctyc', 'IDV_ctya', 'IDV_ctyb'),
('IDV_ctye', '', 'IDV_ctyg', 'IDV_ctyf', '', 'IDV_ctyd', '', 'IDV_ctyb', ''),
('IDV_ctyf', 'IDV_ctyg', '', 'IDV_ctyh', '', '', '', 'IDV_ctye', ''),
('IDV_ctyg', 'IDV_LOCKERR', '', '', '', 'IDV_ctyf', 'IDV_ctye', '', ''),
('IDV_ctyh', '', 'IDV_ctyj', 'IDV_ctyi', '', '', '', 'IDV_ctyf', ''),
('IDV_ctyi', 'IDV_ctyj', '', '', '', 'IDV_ctyp', '', 'IDV_ctyh', ''),
('IDV_ctyj', '', 'IDV_CTYLIB2A', '', '', 'IDV_ctyi', '', '', 'IDV_CTYLIB1A'),
('IDV_ctyk', 'IDV_ctyd', '', 'IDV_ctyl', 'IDV_ctys', '', '', 'IDV_ctys', 'IDV_ctya'),
('IDV_ctyl', 'IDV_ctyn', '', 'IDV_ctyo', 'IDV_ctym', 'IDV_ctys', '', 'IDV_ctyk', ''),
('IDV_ctym', 'IDV_ctyl', 'IDV_ctyq', 'IDV_ctyr', '', 'IDV_ctyt', '', 'IDV_ctys', 'IDV_ctyk'),
('IDV_ctyn', '', '', '', '', '', '', 'IDV_ctyd', ''),
('IDV_ctyo', '', '', 'IDV_ctyq', 'IDV_ctyr', 'IDV_ctym', 'IDV_ctys', 'IDV_ctyl', ''),
('IDV_ctyp', 'IDV_ctyi', '', '', '', 'IDV_ctyq', '', '', ''),
('IDV_ctyq', 'IDV_ctyp', '', '', '', 'IDV_ctyr', 'IDV_ctym', 'IDV_ctyo', ''),
('IDV_ctyr', 'IDV_ctyq', '', 'IDV_ctytrade', '', 'IDV_ctyt', 'IDV_ctym', 'IDV_ctyl', 'IDV_ctyo'),
('IDV_ctys', 'IDV_ctyl', 'IDV_ctyo', 'IDV_ctym', 'IDV_ctyt', '', '', 'IDV_ctychem', 'IDV_ctyk'),
('IDV_ctyt', 'IDV_ctym', 'IDV_ctyr', '', '', '', '', '', 'IDV_ctys'),
('IDV_ctysmith', 'IDV_ckeycf02', 'IDV_ckeyvend', 'IDV_ckeyvend', '', 'IDV_ckeycf03', 'IDV_ckeycf01', 'IDV_ctyc', 'IDV_ckeycf01'),
('IDV_ctyhouse', 'IDV_chouse02', '', 'IDV_chouse03', 'IDV_chouse03', 'IDV_ctyb', 'IDV_chouse01', '', ''),
('IDV_ctychem', 'IDV_ctys', 'IDV_MANPAN', '', '', 'IDV_chempan', '', '', ''),
('IDV_ctytrade', '', '', '', '', 'IDV_ctyr', '', '', '');