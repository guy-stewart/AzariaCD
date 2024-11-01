

----RESOURCES 
--Modified rotation fix

-- this is fine but don't want to re-run it again

-- delete from cardinals where [from] like 'IDV_cty%';
-- INSERT INTO "main"."cardinals" ("from", "north", "northeast", "east", "southeast", "south", "southwest", "west", "northwest")
-- VALUES 

-- ('IDV_ctya', 'IDV_ctyb', 'IDV_ctye', 'IDV_ctyd', '', 'IDV_ctyc', '', 'IDV_CTO3', ''),
-- ('IDV_ctyb', 'IDV_ctyhouse', '', 'IDV_ctye', 'IDV_ctyd', 'IDV_ctya', '', '', ''),
-- ('IDV_ctyc', 'IDV_ctya', 'IDV_ctyd', '', '', 'IDV_ctysmith', '', '', ''),
-- ('IDV_ctyd', 'IDV_ctye', '', 'IDV_ctyn', '', 'IDV_ctyk', 'IDV_ctyc', 'IDV_ctya', 'IDV_ctyb'),
-- ('IDV_ctye', '', 'IDV_ctyg', 'IDV_ctyf', '', 'IDV_ctyd', '', 'IDV_ctyb', ''),
-- ('IDV_ctyf', 'IDV_ctyg', '', 'IDV_ctyh', '', '', '', 'IDV_ctye', ''),
-- ('IDV_ctyg', 'IDV_LOCKERR', '', '', '', 'IDV_ctyf', 'IDV_ctye', '', ''),
-- ('IDV_ctyh', '', 'IDV_ctyj', 'IDV_ctyi', '', '', '', 'IDV_ctyf', ''),
-- ('IDV_ctyi', 'IDV_ctyj', '', '', '', 'IDV_ctyp', '', 'IDV_ctyh', ''),
-- ('IDV_ctyj', '', 'IDV_CTYLIB2A', '', '', 'IDV_ctyi', '', '', 'IDV_CTYLIB1A'),
-- ('IDV_ctyk', 'IDV_ctyd', '', 'IDV_ctyl', 'IDV_ctys', '', '', 'IDV_ctys', 'IDV_ctya'),
-- ('IDV_ctyl', 'IDV_ctyn', '', 'IDV_ctyo', 'IDV_ctym', 'IDV_ctys', '', 'IDV_ctyk', ''),
-- ('IDV_ctym', 'IDV_ctyl', 'IDV_ctyq', 'IDV_ctyr', '', 'IDV_ctyt', '', 'IDV_ctys', 'IDV_ctyk'),
-- ('IDV_ctyn', '', '', '', '', '', '', 'IDV_ctyd', ''),
-- ('IDV_ctyo', '', '', 'IDV_ctyq', 'IDV_ctyr', 'IDV_ctym', 'IDV_ctys', 'IDV_ctyl', ''),
-- ('IDV_ctyp', 'IDV_ctyi', '', '', '', 'IDV_ctyq', '', '', ''),
-- ('IDV_ctyq', 'IDV_ctyp', '', '', '', 'IDV_ctyr', 'IDV_ctym', 'IDV_ctyo', ''),
-- ('IDV_ctyr', 'IDV_ctyq', '', 'IDV_ctytrade', '', 'IDV_ctyt', 'IDV_ctym', 'IDV_ctyl', 'IDV_ctyo'),
-- ('IDV_ctys', 'IDV_ctyl', 'IDV_ctyo', 'IDV_ctym', 'IDV_ctyt', '', '', 'IDV_ctychem', 'IDV_ctyk'),
-- ('IDV_ctyt', 'IDV_ctym', 'IDV_ctyr', '', '', '', '', '', 'IDV_ctys'),
-- ('IDV_ctysmith', 'IDV_ckeycf02', 'IDV_ckeyvend', 'IDV_ckeyvend', '', 'IDV_ckeycf03', 'IDV_ckeycf01', 'IDV_ctyc', 'IDV_ckeycf01'),
-- ('IDV_ctyhouse', 'IDV_chouse02', '', 'IDV_chouse03', 'IDV_chouse03', 'IDV_ctyb', 'IDV_chouse01', '', ''),
-- ('IDV_ctychem', 'IDV_ctys', 'IDV_MANPAN', '', '', 'IDV_chempan', '', '', ''),
-- ('IDV_ctytrade', '', '', '', '', 'IDV_ctyr', '', '', '');


delete from "main"."constants" where name = 'IDS_DIARY4_BIN';
INSERT INTO "main"."spr_names" ("name", "value", "id") 
VALUES 
('IDS_DIARY4_BIN', 'DIARY4_BIN', '0');

delete from machines where [name] like 'S04_DIARYBIN';
INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name","wip3_name",  "wip4_name") 
VALUES 
('70050', 'S04_DIARYBIN', '557', 'IDV_ctyn', '520', '225', '620', '300', '2',  'M_PLANTBIN', 'IDD_DIARY4', 'IDS_DIARY4_BIN', '60', '');


delete from spr_names where name = 'IDS_QL_GLOW';
INSERT INTO "main"."spr_names" ("name", "value") 
VALUES 
('IDS_STRATMONBGRND', 'stratmonbgrnd');


delete from "main"."idv" where [name] = 'IDV_STRATMON';
INSERT INTO "main"."idv" ("name", "id") VALUES 
('IDV_STRATMON', '10000');


delete from "main"."views" where [view_name] = 'IDV_STRATMON';
INSERT INTO "main"."views" ("view_name", "Z", "backgroundAudio", "locator_view", "behavior_id", "portal_filename", "surface_filename") 
VALUES ('IDV_STRATMON', '1', '3', '1', '1', 'wdepanel.vct', 'stratmon');

delete from "main"."idv" where [name] = 'IDV_CTYHOUSE';
delete from "main"."idv" where [name] = 'IDV_ctyhouse';
delete from "main"."views" where [view_name] = 'IDV_CTYHOUSE';
delete from "main"."views" where [view_name] = 'IDV_ctyhouse';
INSERT INTO "main"."idv" ("name", "id") VALUES 
('IDV_CTYHOUSE', '592');
INSERT INTO "main"."views" ("view_name", "Z", "backgroundAudio", "locator_view", "behavior_id", "portal_filename", "surface_filename") VALUES 
('IDV_CTYHOUSE', '1', '3', '1', '6', 'surround.vct', 'ctyhouse');

delete from "main"."cardinals" where [from] = 'IDV_CTYHOUSE';
INSERT INTO "main"."cardinals" ("from", "north", "northeast", "east", "southeast", "south", "southwest", "west", "northwest") VALUES 
('IDV_CTYHOUSE', '', '', 'IDV_STRATMON', 'IDV_STRATMON', 'IDV_ctyb', '', '', '');

delete from "main"."panel_nav" where [from] like 'IDV_STRATMON%';
INSERT INTO "main"."panel_nav" ("from", "forward", "back") VALUES 
('IDV_STRATMON', '', 'IDV_CTYHOUSE'),
---- Here is old code that works that I'm just fixing for curiosity
 ('IDV_STRATMON2', '', 'IDV_CTYHOUSE');



delete from controls where [view] like 'IDV_STRATMON%';
insert into controls ([view],[id], [type],[image],[image_selected],[x],[y],[border],[values],[default],[ids_font],[font_color],[code]) values

('IDV_STRATMON', 19,'LISTBOX','IDS_STRATMONBGRND','IDS_STRATMONBGRND',148, 23, 3, 'q_local_active','2','IDS_FONTENG_BIG',14871474,'');




