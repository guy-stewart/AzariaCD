

delete from spr_names where name = 'IDS_GBANIM';
delete from spr_names where name = 'IDS_GOPAB';
delete from spr_names where name = 'IDS_GOPAG';
delete from spr_names where name = 'IDS_GOPAR';

insert into spr_names values ('IDS_GBANIM','GBANIM','16001');
insert into spr_names values ('IDS_GOPAB','GOPAB','16002');
insert into spr_names values ('IDS_GOPAG','GOPAG','16003');
insert into spr_names values ('IDS_GOPAR','GOPAR','16004');

delete from objects where object = 'IDD_GOPAB';
delete from objects where object = 'IDD_GOPAG';
delete from objects where object = 'IDD_GOPAR';
INSERT INTO "main"."objects" ("object",  "class","icon", "cursor", "actor") 
VALUES
('IDD_GOPAR', 'IDC_NULL', 'GOPAR', 'GOPAR', 'GOPAR'),
('IDD_GOPAG', 'IDC_NULL', 'GOPAG', 'GOPAG', 'GOPAG'),
('IDD_GOPAB', 'IDC_NULL', 'GOPAB', 'GOPAB', 'GOPAB');


delete from machines where name = 'S16_GOPABUSH';
INSERT INTO "main"."machines" ("name", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") 
VALUES 
( 'S16_GOPABUSH', 'IDV_VIL4', '2362', '140', '2428', '244', '0', 'M_GOPABIN', 'IDS_GBANIM', '4', '0', '');


delete from  "main"."transitions" where automaton = 'M_GOPABIN';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code") 
VALUES 
('M_GOPABIN', '0', 'ready', 'MOV', 'BFRAME', 'WIP3','
     ASSIGN(BFRAME, WIP3);
     ASSIGN(BPARM, 0);
     '), -- START WITH RED - FRAME 0

('M_GOPABIN', 'ready', 'askforsun', 'SHOW', 'WIP1', '',''),

('M_GOPABIN','askforsun', 'getsun', 'WAIT', '0', 'SIG_RIPEN',''),

('M_GOPABIN', 'getsun', 'ripened', 'Z_EPSILON', '', '','
       ADDI(BPARM,1);
       if(BPARM >= 4){
         ASSIGN(BPARM,0);
       }
         MOV(BFRAME,BPARM);
       SHOW(WIP1);
'),

('M_GOPABIN', 'ripened', 'redpresent', 'EQUALi', 'BFRAME', '0',''),
('M_GOPABIN', 'redpresent', 'grabable', 'ASSIGN', 'WOBJECT', 'IDD_GOPAR',''),

('M_GOPABIN', 'ripened', 'greenpresent', 'EQUALi', 'BFRAME', '1',''),
('M_GOPABIN', 'greenpresent', 'grabable', 'ASSIGN', 'WOBJECT', 'IDD_GOPAG',''),

('M_GOPABIN', 'ripened', 'bluepresent', 'EQUALi', 'BFRAME', '2',''),
('M_GOPABIN', 'bluepresent', 'grabable', 'ASSIGN', 'WOBJECT', 'IDD_GOPAB',''),

('M_GOPABIN', 'ripened', 'empty', 'EQUALi', 'BFRAME', '3',''),
('M_GOPABIN', 'empty', 'askforsun', '', '', '',''),

('M_GOPABIN', 'grabable', 'askforsun', 'GRAB', '', '','
    ASSIGN(BFRAME,3);
');



-- ('M_GOPABIN','20', '30', 'EQUALi', 'BFRAME', '0',''),
-- ('M_GOPABIN', '30', '31', 'ASSIGN', 'WOBJECT', 'IDD_GOPAR',''),
-- ('M_GOPABIN', '31', '1', 'SHOW', '0', '0',''),
-- ('M_GOPABIN','20', '40', 'EQUALi', 'BFRAME', '1',''),
-- ('M_GOPABIN', '40', '41',  'ASSIGN', 'WOBJECT', 'IDD_GOPAG',''),
-- ('M_GOPABIN', '41', '1', 'SHOW', '0', '0',''),
-- ('M_GOPABIN','20', '50', 'EQUALi', 'BFRAME', '2',''),
-- ('M_GOPABIN', '50', '51', 'ASSIGN', 'WOBJECT', 'IDD_GOPAB',''),
-- ('M_GOPABIN', '51', '1', 'SHOW', '0', '0',''),
-- ('M_GOPABIN','20', '1', 'Z_EPSILON', '', '','');

