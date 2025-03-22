


delete from "main"."constants" where name = 'IDS_DIARY4_BIN';
INSERT INTO "main"."spr_names" ("name", "value", "id") 
VALUES 
('IDS_DIARY4_BIN', 'DIARY4_BIN', '0');

delete from machines where [name] like 'S04_DIARYBIN';
INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name","wip3_name",  "wip4_name") 
VALUES 
('70050', 'S04_DIARYBIN', '557', 'IDV_ctyn', '520', '225', '620', '300', '2',  'M_PLANTBIN', 'IDD_DIARY4', 'IDS_DIARY4_BIN', '60', '');



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

('IDV_STRATMON', 19,'LISTBOX','IDS_STRATMONBGRND','IDS_STRATMONBGRND',148, 23, 3, 'playerList(name)','2','IDS_FONTENG_BIG',14871474,'
    myname=get_control_value("IDV_STRATMON", 19);
    predicate PlayerList(name,pid,status,player);
    PlayerList(myname,?player_pid,?mystatus,?myplayer)?
    predicate otherplayer(pid,status,player);
    otherplayer(?to,"ACTIVE")?
    method = "unsubscribe";
    send_request(to, "unsubscribe",'', '');
    otherplayer("%")~
    otherplayer(player_pid, mystatus, myplayer).
    replay("system/send_requestDetails"); 
');

-- ,,,,,,,,,,,,,


