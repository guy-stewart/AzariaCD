delete from games;



delete from "main"."spr_names"  where name = 'IDS_SICKLE';
--delete from "main"."spr_names"  where [name] like 'IDS_LEA%';

INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES 
('IDS_SICKLE', 'sickle', '18700');

delete from objects where object ='IDD_SICKLE';
INSERT INTO "main"."objects" ("object", "object_id", "class", "icon", "cursor", "actor") 
VALUES 
('IDD_SICKLE', '18700', 'IDC_NULL', 'sickle', 'sickle', 'sickle');

delete from transitions where [name] like 'M_RECYCLE%';
INSERT INTO "main"."transitions" ("name", "state", "new_state", "opcode", "param_1", "param_2", "code") VALUES 
('M_RECYCLE', '0', '0', 'DROP', '0', '0', '');
