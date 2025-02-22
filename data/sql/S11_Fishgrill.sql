

delete from sounds where name like 'SOUND_SPLASH%';
INSERT INTO "main"."sounds" ("name", "value", "id") VALUES ('SOUND_SPLASH', 'splash', '0');

delete from machines where name = 'S11_FIRE';
delete from machines where name = 'S11_GRILL';
delete from machines where name = 'S11_ASCENT';
delete from machines where name = 'S11_LOGBIN';

delete from spr_names where [name] like 'IDS_LOGBIN%';
insert into spr_names values ('IDS_LOGBIN','logs',0);



INSERT INTO "main"."machines" ("name", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name")
VALUES 
('S11_FIRE',   'IDV_FALTAR', '122', '165', '290', '210', '0', 'M11_FIRE', 'S11_GRILL', '', '', ''),
('S11_GRILL',  'IDV_FALTAR', '145', '100', '267', '142', '0', 'M11_GRILL', 'S11_FIRE', 'S11_ASCENT', '', ''),
('S11_ASCENT', 'IDV_FALTAR', '175', '40', '267', '100', '0', 'M11_ASCENT', '', '', '', ''),
('S11_LOGBINC', 'IDV_FH1PAN', '367', '191', '420', '240', '0', 'M_PLANTBIN', 'IDD_LOG', 'IDS_LOGBIN', '30', '');
-- transitions for the fish grill machines
delete from transitions where [automaton] like 'M11_%';

INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code", "guard", "doc") 
VALUES 
 ('M11_ASCENT', '0', '3', 'WAIT', '0', 'SIG_BURNED', '
   SHOW(IDS_SPIRIT0);
   ANIMATE();
   ESTIME(4);
 ', '', ''),

 ('M11_ASCENT', '3', '0', 'GRAB', '0', 'IDD_SPRINGS', '
   CLEAR(WOBJECT);
   CLEAR(WPARM);
   CLEAR(WSPRITE);
   SHOW();
   ADDI(LWISDOM,2);
   SIGNALi(0,SID_ID);
 ', '', ''),
 

 ('M11_FIRE', '0', 'logLoaded', 'DROP', '0', 'IDD_LOG', '
    PLAYWAVE(SOUND_CLUNK);
    SHOW(0,IDS_FISHWOOD);
    ASSIGN(BPARM,0);
 ', '', ''),
 
 ('M11_FIRE', 'logLoaded', '0', 'GRAB', '0', '0', '', '', ''),
 ('M11_FIRE', 'logLoaded', 'burning', 'DRAG', '0', 'IDD_MATCH', '
    ASHOW(IDS_BURNWOOD,V_LOOP);
    ADDI(WPARM,BURN_TIME);
    ASSIGN(BPARM,1); //for others to reference
    SIGNAL(WIP1, SIG_FIRE);
    CLEAR(DETIME);
    PLAYWAVE(SOUND_FIRE);
 ', '', ''),

('M11_FIRE', 'addLog', 'burning', 'ADDI', 'WPARM', 'BURN_TIME', '', '', ''),

 
 ('M11_FIRE', 'burning', 'addLog', 'DROP', '0', 'IDD_LOG', '', '', ''),
 ('M11_FIRE', 'burning', 'extinguished', 'ESTIME', 'WPARM', '', '
   ASSIGN(BPARM,0);
   CLEAR(DETIME);
 ', '', ''),
 ('M11_FIRE', 'burning', 'extinguished', 'DROP', '0', 'IDD_BUCKF', '
   PLAYWAVE(SOUND_SPLASH);
   ASSIGN(BPARM,0);
   HANDOFF(IDD_BUCKE);
   SIGNAL(WIP1, SIG_EXTINGUISHED);
 ', '', ''),
 ('M11_FIRE', 'extinguished', '0', 'CLEAR', 'WOBJECT', '', '
    CLEAR(WSPRITE);
    CLEAR(WPARM);
    SHOW();
    STOPWAVE();
 ', '', ''),
 
 ('M11_GRILL', '0', 'emptyGrill', 'Z_EPSILON', '0', '', '
    REF_MACHINE(WIP1);
 ', '', ''),
 ('M11_GRILL', 'emptyGrill', 'fishOnGrill', 'DROP', 'IDC_FISH', '', '
    SHOW(WOBJECT);
    ANIMATE(0,V_LOOP);
 ', '', ''),

 ('M11_GRILL', 'fishOnGrill', 'emptyGrill', 'GRAB', '0', '0', '
    SHOW();
 ', '', ''),
 ('M11_GRILL', 'fishOnGrill', 'burning', 'EQUAL', 'R_BPARM', '1', '', '', ''),
 ('M11_GRILL', 'fishOnGrill', 'burning', 'WAIT', '', 'SIG_FIRE', '', '', ''),
 ('M11_GRILL', 'burning', 'fishOnGrill', 'WAIT', '', 'SIG_EXTINGUISHED', '
   CLEAR(DETIME);
 ', '', ''),
 
 ('M11_GRILL', 'burning', 'burned', 'ESTIME', '0', 'FISH_BURN_TIME', '
    MAP_OBJ(0,OP_BURN);
    SHOW(IDS_FISHASH);
    PLAYWAVE(SOUND_FIRE); 
    ADDI(LWISDOM,2);
    SIGNALi(0,SID_ID);
    //Cast off soul
    SIGNAL(WIP2,SIG_BURNED);
 ', '', ''),

 ('M11_GRILL', 'burned', 'takenAsh', 'GRAB', '0', '0', '', '', ''),
 
 ('M11_GRILL', 'takenAsh', 'emptyGrill', 'SHOW', '0', '0', '', '', '');