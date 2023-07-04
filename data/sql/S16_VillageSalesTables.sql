
delete from games;

delete from spr_names where [name] like 'IDS_STAMP%';
delete from spr_names where [name] like 'IDS_NYBUCKET_%';
insert into spr_names values ('IDS_STAMP','STAMP','25050');
insert into spr_names values ('IDS_NYBUCKET_GLOW','NYBUCKET_GLOW','25051');

delete from sounds where name like 'SOUND_CHAIN%';
INSERT INTO "main"."sounds" ("name", "value", "id") VALUES ('SOUND_CHAIN', 'chain', '0');
-- delete from objects where object = 'IDD_STAMP';

-- insert into objects values
-- ('IDD_STAMP',25050,'IDC_NULL','STAMP','STAMP','STAMP');



delete from machines where [name] like 'S16_CROW%';
delete from machines where [name] like 'S16_BUCK%';
delete from machines where [name] like 'S16_SHOV%';
delete from machines where [name] like 'S16_PICK%';
delete from machines where [name] like 'S16_GRUB%';
delete from machines where [name] like 'S16_WOOD%';

INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name","wip3_name",  "wip4_name") 
VALUES 
('16060', 'S16_CROW_GRAB', '4872', 'IDV_CROW0000',20,72,127,209, '0','M16_PAYGRAB','IDD_CROWBAR','S16_CROW_PAY','S16_CROW_STAMP',''),
('16061', 'S16_CROW_STAMP','4872', 'IDV_CROW0000',160,0,296,234, '0','M16_PAYSTAMP','IDS_STAMP','S16_CROW_PAY','S16_CROW_GRAB', ''),
('16062', 'S16_CROW_PAY',  '4872', 'IDV_CROW0000',324,185,399,272, '0','M16_PAYBUCKET','IDS_NYBUCKET_GLOW',9,'S16_CROW_STAMP', ''),

('16063', 'S16_BUCK_GRAB', '4873', 'IDV_BUCK0000',20,72,127,209, '0','M16_PAYGRAB','IDD_BUCKE','S16_BUCK_PAY','S16_BUCK_STAMP',''),
('16064', 'S16_BUCK_STAMP','4873', 'IDV_BUCK0000',160,0,296,234, '0','M16_PAYSTAMP','IDS_STAMP','S16_BUCK_PAY','S16_BUCK_GRAB', ''),
('16065', 'S16_BUCK_PAY',  '4873', 'IDV_BUCK0000',324,185,399,272, '0','M16_PAYBUCKET','IDS_NYBUCKET_GLOW',3,'S16_BUCK_STAMP', ''),

('16066', 'S16_SHOV_GRAB', '4874', 'IDV_SHOV0000',20,72,127,209, '0','M16_PAYGRAB','IDD_SHOVEL','S16_SHOV_PAY','S16_SHOV_STAMP',''),
('16067', 'S16_SHOV_STAMP','4874', 'IDV_SHOV0000',160,0,296,234, '0','M16_PAYSTAMP','IDS_STAMP','S16_SHOV_PAY','S16_SHOV_GRAB', ''),
('16068', 'S16_SHOV_PAY',  '4874', 'IDV_SHOV0000',324,185,399,272, '0','M16_PAYBUCKET','IDS_NYBUCKET_GLOW',8,'S16_SHOV_STAMP', ''),

('16069', 'S16_PICK_GRAB', '4875', 'IDV_PICK0000',20,72,127,209, '0','M16_PAYGRAB','IDD_PICK','S16_PICK_PAY','S16_PICK_STAMP',''),
('16070', 'S16_PICK_STAMP','4875', 'IDV_PICK0000',160,0,296,234, '0','M16_PAYSTAMP','IDS_STAMP','S16_PICK_PAY','S16_PICK_GRAB', ''),
('16071', 'S16_PICK_PAY',  '4875', 'IDV_PICK0000',324,185,399,272, '0','M16_PAYBUCKET','IDS_NYBUCKET_GLOW',7,'S16_PICK_STAMP', ''),

('16072', 'S16_GRUB_GRAB', '4876', 'IDV_GRUB0000',20,72,127,209, '0','M16_PAYGRAB','IDD_BAIT0','S16_GRUB_PAY','S16_GRUB_STAMP',''),
('16073', 'S16_GRUB_STAMP','4876', 'IDV_GRUB0000',160,0,296,234, '0','M16_PAYSTAMP','IDS_STAMP','S16_GRUB_PAY','S16_GRUB_GRAB', ''),
('16074', 'S16_GRUB_PAY',  '4876', 'IDV_GRUB0000',324,185,399,272, '0','M16_PAYBUCKET','IDS_NYBUCKET_GLOW',1,'S16_GRUB_STAMP', ''),

('16075', 'S16_WOOD_GRAB', '4877', 'IDV_WOOD0000',20,72,127,209, '0','M16_PAYGRAB','IDD_BAIT0','S16_WOOD_PAY','S16_WOOD_STAMP',''),
('16076', 'S16_WOOD_STAMP','4877', 'IDV_WOOD0000',160,0,296,234, '0','M16_PAYSTAMP','IDS_STAMP','S16_WOOD_PAY','S16_WOOD_GRAB', ''),
('16077', 'S16_WOOD_PAY',  '4877', 'IDV_WOOD0000',324,185,399,272, '0','M16_PAYBUCKET','IDS_NYBUCKET_GLOW',2,'S16_WOOD_STAMP', '');


delete from transitions where [automaton] like 'M16_PAY%';
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code","guard")
VALUES 

('M16_PAYSTAMP', '0', 'startframe', 'ASSIGN', 'BFRAME', '1', '',''),
('M16_PAYSTAMP', 'startframe', 'waiting', 'SHOW', 'WIP1', '', '',''),
('M16_PAYSTAMP', 'waiting', 'readyToPay', 'CLICK', '', '', 'SHOW(WSPRITE);ANIMATE(); SIGNAL(WIP2,SIG_ON);SIGNAL(WIP3,SIG_OPEN);PLAYWAVE(0,SOUND_CHAIN);',''),
('M16_PAYSTAMP', 'readyToPay', '0', 'WAIT', '0', 'SIG_OFF', '',''),
('M16_PAYSTAMP', 'readyToPay', 'waiting', 'CLICK', '', '', 'SHOW(WSPRITE);ANIMATE(0,V_REVERSE);SIGNAL(WIP2,SIG_OFF);SIGNAL(WIP3,SIG_CLOSE);PLAYWAVE(0,SOUND_CHAIN);',''),


('M16_PAYBUCKET', '0', 'accept_pay', 'WAIT', '0', 'SIG_ON', '
    ASSIGN(WSPRITE,WIP1);
    ASHOW(WSPRITE);
    /* BPARM = what you payed
    WPARM = Total owed 
    l*/
    ASSIGN(BPARM,0); 
    ASSIGN(WPARM,WIP2);
',''),
('M16_PAYBUCKET', 'accept_pay', 'check_scoop', 'DRAG', 'IDD_SCOOPF', '', '
    HANDOFF(0,IDD_SCOOPE);
    PLAYWAVE(0,SOUND_SPIT);
    ADDI(BPARM,1); 
',''),
('M16_PAYBUCKET', 'accept_pay', '0', 'WAIT', 'SIGNAL', 'SIG_OFF', 'SHOW();',''),
('M16_PAYBUCKET', 'check_scoop', 'paid_in_full', 'EQUAL', 'BPARM', 'WPARM', '',''),
('M16_PAYBUCKET', 'check_scoop', 'accept_pay', 'Z_EPSILON', '', '', '',''),
('M16_PAYBUCKET', 'paid_in_full', '0', 'Z_EPSILON', '', '', '
    PLAYWAVE(0,SOUND_LEVER);
    ASHOW();
',''),


('M16_PAYGRAB', '0', 'open_bin', 'WAIT', 'SIGNAL', 'SIG_OPEN', 'REF_MACHINE(WIP2);',''),
('M16_PAYGRAB', 'open_bin', '0', 'GRAB', 'WIP1', '', '
    if(R_WPARM != R_BPARM){
        SUB(LKARMA,4);
        PLAYWAVE(0,SOUND_CLUNK);
    }
    SIGNAL(WIP3,SIG_OFF);
    SIGNAL(WIP2,SIG_OFF);
',''),
('M16_PAYGRAB', 'open_bin', '0', 'WAIT', 'SIGNAL', 'SIG_CLOSE', '','');

