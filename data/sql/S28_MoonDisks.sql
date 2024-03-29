delete from games;

delete from sounds where [name] like 'SOUND_STONERUB%';
INSERT INTO "main"."sounds" ("name", "value", "id") VALUES ('SOUND_STONERUB', 'stonerub', '0');


delete from "main"."cardinals" where [from] like 'IDV_MOON%';
--needed to reverse order of moondisks to match 1 being closesest to the planet
--which is represented by the building 
INSERT INTO "main"."cardinals" ("from", "north", "northeast", "east", "southeast", "south", "southwest", "west", "northwest") VALUES ('IDV_MOON1', 'IDV_GRNDCNT1', '', '', '', 'IDV_MOON2', 'IDV_MOONDISK7', '', '');
INSERT INTO "main"."cardinals" ("from", "north", "northeast", "east", "southeast", "south", "southwest", "west", "northwest") VALUES ('IDV_MOON2', 'IDV_MOON1', '', '', 'IDV_MOONDISK6', 'IDV_MOON3', '', '', 'IDV_MOONDISK7');
INSERT INTO "main"."cardinals" ("from", "north", "northeast", "east", "southeast", "south", "southwest", "west", "northwest") VALUES ('IDV_MOON3', 'IDV_MOON2', '', '', '', 'IDV_MOON4', '', 'IDV_MOONDISK5', '');
INSERT INTO "main"."cardinals" ("from", "north", "northeast", "east", "southeast", "south", "southwest", "west", "northwest") VALUES ('IDV_MOON4', 'IDV_MOON3', 'IDV_MOONDISK4', '', '', 'IDV_MOON5', 'IDV_MOONDISK3', '', '');
INSERT INTO "main"."cardinals" ("from", "north", "northeast", "east", "southeast", "south", "southwest", "west", "northwest") VALUES ('IDV_MOON5', 'IDV_MOON4', '', 'IDV_MOONDISK2', '', '', 'IDV_MOONDISK1', '', '');

delete from "main"."panel_nav" where [from] like 'IDV_MOONDISK%';
INSERT INTO "main"."panel_nav" ("from", "forward", "back") VALUES ('IDV_MOONDISK1', '', 'IDV_MOON5');
INSERT INTO "main"."panel_nav" ("from", "forward", "back") VALUES ('IDV_MOONDISK2', '', 'IDV_MOON5');
INSERT INTO "main"."panel_nav" ("from", "forward", "back") VALUES ('IDV_MOONDISK3', '', 'IDV_MOON4');
INSERT INTO "main"."panel_nav" ("from", "forward", "back") VALUES ('IDV_MOONDISK4', '', 'IDV_MOON4');
INSERT INTO "main"."panel_nav" ("from", "forward", "back") VALUES ('IDV_MOONDISK5', '', 'IDV_MOON3');
INSERT INTO "main"."panel_nav" ("from", "forward", "back") VALUES ('IDV_MOONDISK6', '', 'IDV_MOON2');
INSERT INTO "main"."panel_nav" ("from", "forward", "back") VALUES ('IDV_MOONDISK7', '', 'IDV_MOON1');




delete from spr_names where name = 'IDS_MOONSPIN';
delete from spr_names where [name] LIKE 'IDS_KAMDOOR%';
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_MOONSPIN','moonspin','1634');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_KAMDOOR','kamdoor','1635');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_KAMDOOR_ALT1','kamdoor_alt1','1636');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_KAMDOOR_ALT2','kamdoor_alt2','1637');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_KAMDOOR_ALT3','kamdoor_alt3','1638');
INSERT INTO "main"."spr_names" ("name", "value", "id") VALUES ('IDS_KAMDOOR_ALT4','kamdoor_alt4','1639');




delete from machines where name = 'S28_DISK1';
delete from machines where name = 'S28_DISK2';
delete from machines where name = 'S28_DISK3';
delete from machines where name = 'S28_DISK4';
delete from machines where name = 'S28_DISK5';
delete from machines where name = 'S28_DISK6';
delete from machines where name = 'S28_DISK7';
delete from machines where [name] like 'S28_KAMDOOR%';
delete from machines where [name] like 'S28_KAMDOOR_alt%';

INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name","wip3_name",  "wip4_name") 
VALUES 
--These are 1 nearest the planet to 7 furthest away
('9910', 'S28_DISK1', '4706', 'IDV_MOONDISK1', '41', '0', '320', '235', '0','M_DISKSPIN','S27_MEMSTONE1','','', ''),
('9911', 'S28_DISK2', '4707', 'IDV_MOONDISK2', '41', '0', '320', '235', '0','M_DISKSPIN','S27_MEMSTONE2','','', ''),
('9912', 'S28_DISK3', '4708', 'IDV_MOONDISK3', '41', '0', '320', '235', '0','M_DISKSPIN','S27_MEMSTONE3','','', ''),
('9913', 'S28_DISK4', '4709', 'IDV_MOONDISK4', '41', '0', '320', '235', '0','M_DISKSPIN','S27_MEMSTONE4','','', ''),
('9914', 'S28_DISK5', '4710', 'IDV_MOONDISK5', '41', '0', '320', '235', '0','M_DISKSPIN','S27_MEMSTONE5','','', ''),
('9915', 'S28_DISK6', '4711', 'IDV_MOONDISK6', '41', '0', '320', '235', '0','M_DISKSPIN','S27_MEMSTONE6','','', ''),
('9916', 'S28_DISK7', '4712', 'IDV_MOONDISK7', '41', '0', '320', '235', '0','M_DISKSPIN','S27_MEMSTONE7','','', ''),
--Leave local_visible to 1 here for playing the sound accross the universe
('9917', 'S28_KAMDOOR', '4705', 'IDV_MOON5', '1491', '120', '1597', '200', '1','M_KAMDOOR','S28_KAMDOOR_alt1','S28_KAMDOOR_alt2','S28_KAMDOOR_alt3','S28_KAMDOOR_alt4'),

--alt views for kamdoor

('9925', 'S28_KAMDOOR_alt4', '4704', 'IDV_MOON4', '1594', '136', '1620', '200', '1','M_KAMDOOR_alt','IDS_KAMDOOR_ALT4','','',''),
('9926', 'S28_KAMDOOR_alt3', '4703', 'IDV_MOON3', '1554', '142', '1620', '200', '1','M_KAMDOOR_alt','IDS_KAMDOOR_ALT3','','',''),
('9927', 'S28_KAMDOOR_alt2', '4702', 'IDV_MOON2', '1566', '145', '1620', '200', '1','M_KAMDOOR_alt','IDS_KAMDOOR_ALT2','','',''),
('9928', 'S28_KAMDOOR_alt1', '4701', 'IDV_MOON1', '1588', '146', '1620', '200', '1','M_KAMDOOR_alt','IDS_KAMDOOR_ALT1','','','');

delete from transitions where automaton = 'M_DISKSPIN';
delete from transitions where [automaton] like 'M_KAMDOOR%';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code","guard")
VALUES 
('M_DISKSPIN','0','5','MOV','BFRAME','0','',''),
('M_DISKSPIN','5','10','SHOW','','IDS_MOONSPIN','',''),
('M_DISKSPIN','10','20','LTE','BFRAME','7','',''),
('M_DISKSPIN','10','0','Z_EPSILON','','','ADD(BFRAME,1);',''),
('M_DISKSPIN','20','10','CLICK','','','PLAYWAVE(SOUND_STONERUB);ADD(BFRAME,1);MOV(BPARM,BFRAME);SIGNALi(SIG_CHECK,S28_KAMDOOR);',''),


('M_KAMDOOR_alt','0','altViewShown','WAIT','','SIG_SHOW','
     SHOW(WIP1);
     ANIMATE();
',''),
('M_KAMDOOR_alt','altViewShown','zoomed','CLICK','','','
     LOADVIEW(0,IDV_MOON5);
',''),
('M_KAMDOOR_alt','zoomed','altViewShown','Z_EPSILON','','','',''),
('M_KAMDOOR_alt','altViewShown','0','WAIT','','SIG_HIDE','
     SHOW();
',''),


('M_KAMDOOR','0','startChecking','WAIT','','SIG_CHECK','
/*
    Each change in moon disk rotation checks to see 
    which frame matches are present across all paired moons/disks.
    it checks to see if the moons are showing
    at all first (MEMSTONE(X)- R_WPARM), then 
    counts matches in WPARM up to the 7 required
*/
ASSIGN(WPARM,0);
',''), 

('M_KAMDOOR','startChecking','sevenChecked','Z_EPSILON','','','
    REF_MACHINE(0,S27_MEMSTONE7);
    MOV(WTEMP1,R_BPARM);
     if (R_WPARM > 0) { 
        REF_MACHINE(0,S28_DISK7);
        MOV(WTEMP2,R_BPARM);
             if (WTEMP1 == (WTEMP2 - 1)) {
                ADD(WPARM,1);
            }}',''),

('M_KAMDOOR','sevenChecked','sixChecked','Z_EPSILON','','','
    REF_MACHINE(0,S27_MEMSTONE6);
    MOV(WTEMP1,R_BPARM);
     if (R_WPARM > 0) { 
        REF_MACHINE(0,S28_DISK6);
        MOV(WTEMP2,R_BPARM);
             if (WTEMP1 == (WTEMP2 - 1)) {
                ADD(WPARM,1);
            }}',''),
 
('M_KAMDOOR','sixChecked','fiveChecked','Z_EPSILON','','','
    REF_MACHINE(0,S27_MEMSTONE5);
    MOV(WTEMP1,R_BPARM);
     if (R_WPARM > 0) { 
        REF_MACHINE(0,S28_DISK5);
        MOV(WTEMP2,R_BPARM);
             if (WTEMP1 == (WTEMP2 - 1)) {
                ADD(WPARM,1);
            }}',''),           

('M_KAMDOOR','fiveChecked','fourChecked','Z_EPSILON','','','
    REF_MACHINE(0,S27_MEMSTONE4);
    MOV(WTEMP1,R_BPARM);
     if (R_WPARM > 0) { 
        REF_MACHINE(0,S28_DISK4);
        MOV(WTEMP2,R_BPARM);
             if (WTEMP1 == (WTEMP2 - 1)) {
                ADD(WPARM,1);
            }}',''),        

('M_KAMDOOR','fourChecked','threeChecked','Z_EPSILON','','','
    REF_MACHINE(0,S27_MEMSTONE3);
    MOV(WTEMP1,R_BPARM);
     if (R_WPARM > 0) { 
        REF_MACHINE(0,S28_DISK3);
        MOV(WTEMP2,R_BPARM);
             if (WTEMP1 == (WTEMP2 - 1)) {
                ADD(WPARM,1);
            }}',''),      

('M_KAMDOOR','threeChecked','twoChecked','Z_EPSILON','','','
    REF_MACHINE(0,S27_MEMSTONE2);
    MOV(WTEMP1,R_BPARM);
     if (R_WPARM > 0) { 
        REF_MACHINE(0,S28_DISK2);
        MOV(WTEMP2,R_BPARM);
            if (WTEMP1 == (WTEMP2 - 1)) {
                ADD(WPARM,1);
            }}',''),  

('M_KAMDOOR','twoChecked','oneChecked','Z_EPSILON','','','
    REF_MACHINE(0,S27_MEMSTONE1);
    MOV(WTEMP1,R_BPARM);
     if (R_WPARM > 0) { 
        REF_MACHINE(0,S28_DISK1);
        MOV(WTEMP2,R_BPARM);
            if (WTEMP1 == (WTEMP2 - 1)) {
                ADD(WPARM,1);
            }}',''),   

('M_KAMDOOR','oneChecked','success','EQUAL','WPARM','7','',''),                   
('M_KAMDOOR','success','showDoors','Z_EPSILON','0','','
    PLAYWAVE(SOUND_CHIMES);
    SHOW(IDS_KAMDOOR);
    ANIMATE();
    ADDI(LWISDOM,5); 
    SIGNALi(0,SID_ID);																						
    //show alt views and allow entry
',''),
('M_KAMDOOR','showDoors','allowEntry','Z_EPSILON','','','
    SIGNAL(WIP1,SIG_SHOW);
    SIGNAL(WIP2,SIG_SHOW);
    SIGNAL(WIP3,SIG_SHOW);
    SIGNAL(WIP4,SIG_SHOW);
',''),  
('M_KAMDOOR','allowEntry','0','CLICK','','','
    LOADVIEW(0,IDV_KAMIOZA);
',''),  

('M_KAMDOOR','oneChecked','0','Z_EPSILON','','','',''); 

