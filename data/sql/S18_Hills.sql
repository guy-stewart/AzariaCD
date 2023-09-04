delete from games;

delete from spr_names where [name] like 'IDS_TREESTUMP%';
insert into spr_names values ('IDS_TREESTUMP','TREESTUMP','40611');

delete from views where view_name like 'IDV_HILLS%';
delete from cardinals where 'from' like 'IDV_HILLS%';
delete from panel_nav where 'from' like 'IDV_HILLS%';

INSERT INTO "main"."idv" ("name", "id") VALUES ('IDV_HILLS1A', '40200');
INSERT INTO "main"."idv" ("name", "id") VALUES ('IDV_HILLS1B', '40201');
INSERT INTO "main"."idv" ("name", "id") VALUES ('IDV_HILLS1C', '40202');
INSERT INTO "main"."idv" ("name", "id") VALUES ('IDV_HILLS1D', '40203');
INSERT INTO "main"."idv" ("name", "id") VALUES ('IDV_HILLS1E', '40204');
INSERT INTO "main"."idv" ("name", "id") VALUES ('IDV_HILLS1F', '40205');

delete from "main"."triggers" where 'to' like 'IDV_HILLS%';
INSERT INTO "main"."triggers" ("from", "left", "top", "right", "bottom", "to", "facing") 
VALUES 
('IDV_CONTINENT', '917', '363', '970', '430', 'IDV_HILLS1A', '360');


INSERT INTO "main"."views" ("view_id", "view_name", "Z", "backgroundAudio", "locator_view", "behavior_id", "portal_filename", "surface_filename") 
VALUES 
('40200', 'IDV_HILLS1A', '1', '0', '1', '6', 'surround.vct', 'hills1a'),
('40201', 'IDV_HILLS1B', '1', '0', '1', '6', 'surround.vct', 'hills1b'),
('40202', 'IDV_HILLS1C', '1', '0', '1', '6', 'surround.vct', 'hills1c'),
('40203', 'IDV_HILLS1D', '1', '0', '1', '6', 'surround.vct', 'hills1d'),
('40204', 'IDV_HILLS1E', '1', '0', '1', '6', 'surround.vct', 'hills1e'),
('40205', 'IDV_HILLS1F', '1', '0', '1', '6', 'surround.vct', 'hills1f');

delete from "main"."cardinals" where 'from' like 'IDV_HILLS%';
INSERT INTO "main"."cardinals" ("from", "north", "northeast", "east", "southeast", "south", "southwest", "west", "northwest") 
VALUES 
('IDV_HILLS1A', 'IDV_HILLS1B', '', '', '', 'IDV_GRNDCNT1', '', '', ''),
('IDV_HILLS1B', 'IDV_HILLS1C', '', '', '', 'IDV_HILLS1A', '', '', ''),
('IDV_HILLS1C', '', '', '', '', 'IDV_HILLS1B', '', '', 'IDV_HILLS1D'),
('IDV_HILLS1D', '', '', '', '', 'IDV_HILLS1C', '', '', 'IDV_HILLS1E'),
('IDV_HILLS1E', '', '', '', 'IDV_HILLS1D', '', '', '', 'IDV_HILLS1F'),
('IDV_HILLS1F', '', '', '', 'IDV_HILLS1E', '', '', '', '');

delete from machines where [name] like 'S18_TREESTUMP%';
INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name","wip3_name",  "wip4_name") 
VALUES 
('40360', 'S18_TREESTUMP', '40205', 'IDV_HILLS1F',2762,53,2890,244, '0','M_PLANTBIN','IDD_TEMPLATE_17','IDS_TREESTUMP','','');