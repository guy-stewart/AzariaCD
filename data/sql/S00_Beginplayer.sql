
delete from views where [view_name] like 'IDV_CULTMEN%';
delete from views where [view_name] like 'IDV_CFGCULT%';
delete from views where [view_name] like 'IDV_CFGPLAY%';
INSERT INTO "main"."views" ("view_name", "Z", "backgroundAudio", "locator_view", "behavior_id", "portal_filename", "surface_filename") 
VALUES 
('IDV_CFGPLAYER',   '1', '3', '1', '1', 'wdepanel.vct', 'CFGPlayer'),
('IDV_CFGPLAYERNEW','1', '0', '1', '1', 'wdepanel.vct', 'CFGPlayerName'),
('IDV_CFGPLAYEROPTION','1', '0', '1', '1', 'wdepanel.vct', 'CFGPlayerNew'),
('IDV_CFGCULTURE',  '1', '0', '1', '1', 'wdepanel.vct', 'cultmen');

-- see topmenu.sql!
-- also this! M_BTN_1phase


delete from controls where [view] like 'IDV_CFGPLAYER%';
delete from controls where [view] like 'IDV_CFGCULTURE%';

insert into controls ([view], [id],[type],[image],[image_selected],[x],[y],[border],[values],[default],[ids_font],[font_color],[code]) values


--This is the listbox showing the players active characters
('IDV_CFGPLAYER', 'PLAYERCFG_2', 'LISTBOX',  'cListBxM',       'cListBxM',   200, 50,  7, 'players','2','IDS_FONTENG_BIG',0x44FFFF,
    'myvar = LB_SELECTED_ROW_TEXT;
    LOADVIEW(myvar);
'),

--center this for the new player name
('IDV_CFGPLAYERNEW', '33', 'EDITBOX',  'IDS_STD_EDITBOXM', 'IDS_BTN_DOWN_HI', 180, 150, 10, 'Name', 'default','IDS_FONTTNR16',0x44FFFF,'
  myvar=get_control_value("IDV_CFGPLAYERNEW", "33");
'),
('IDV_CFGPLAYERNEW', '34', 'LABEL',    'IDS_CLEARBACK',       '', 150, 60, 0,
'Creating a new character restarts 
Your energy, wisdom and karma but
allows you to keep your posessions.','','IDS_FONTTNB14',0xFEFEFE,'');


delete from machines where [name] like 'S00_PLAYERMENU%';
delete from machines where [name] like 'BTN_CFGPLAYER%';
delete from machines where [name] like 'BTN_CFGCULTUR%';
INSERT INTO "main"."machines" ("name", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") VALUES 
('BTN_CFGPLAYER','IDV_TOPMENU',1916,222,2044,277,2,'M_BTN_1phase','IDV_CFGPLAYERNEW','IDS_BTN_PLAYER','',''),

-- With list box - depricated
('BTN_CFGPLAYER_OK','IDV_CFGPLAYER',       300,260,350,300, 2,'M_BTN_CHARSELECTOK','IDV_CFGCULTURE','IDS_BTN_OK_HI','IDS_BTN_OK',''),
('BTN_CFGPLAYER_NEW','IDV_CFGPLAYER',      536,260,600,300,2,'M_BTN_2phase','IDV_CFGPLAYERNEW','IDS_BTN_NEW_HI','IDS_BTN_NEW',''),
-- With option to create new player - depricated
('BTN_CFGPLAYEROPT_OK','IDV_CFGPLAYEROPTION', 375,160,425,200,2,'M_BTN_2phase','IDV_CFGPLAYERNEW','IDS_BTN_OK_HI','IDS_BTN_OK',''),


-- With Name entry (CFGPLAYERNEW)
('BTN_CFGPLAYERNEW_OK','IDV_CFGPLAYERNEW', 275,220,325,260,2,'M_BTN_ADDNAME','IDV_CFGCULTURE','IDS_BTN_OK_HI','IDS_BTN_OK',''),
('BTN_CFGPLAYEROPT_CANCEL','IDV_CFGPLAYERNEW', 350,220,400,260,2,'M_BTN_2phase','IDV_ORIE','IDS_BTN_CANCEL_HI','IDS_BTN_CANCEL',''),

-- with culture and body select for final creation

('BTN_CFGCULTURE_VIL','IDV_CFGCULTURE',   250,180,500,220,  2, 'M_RADIO_2phase','Active','IDS_BTN_VILCULT_HI','IDS_BTN_VILCULT','BTN_CFGCULTURE_CIT'),
('BTN_CFGCULTURE_CIT','IDV_CFGCULTURE',   250,80,500,130,   2, 'M_RADIO_2phase','Active','IDS_BTN_CITCULT_HI','IDS_BTN_CITCULT','BTN_CFGCULTURE_VIL'),
('BTN_CFGCULTURE_FEM','IDV_CFGCULTURE',   75,60, 144,153,   2, 'M_RADIO_2phase','Active','IDS_BTN_FEMALE_HI','IDS_BTN_FEMALE','BTN_CFGCULTURE_MAL'),
('BTN_CFGCULTURE_MAL','IDV_CFGCULTURE',   75,170,144,270,   2, 'M_RADIO_2phase','Active','IDS_BTN_MALE_HI','IDS_BTN_MALE','BTN_CFGCULTURE_FEM'),


('BTN_CFGCULTURE_CREATE','IDV_CFGCULTURE',  536,247,600,300,2,'M_BTN_PLAYERCREATE','IDV_ORIE','IDS_BTN_CREATEH','IDS_BTN_CREATE',''),


-------------------------------
('S00_PLAYERMENU','IDV_CFGCULTURE', '0', '0', '0', '0', '2', 'M_BEGIN', '', '', '', '');



delete from transitions where [automaton] like 'M_BEGIN%';
delete from transitions where [automaton] like 'M_RADIO_2phase%';
delete from transitions where [automaton] like 'M_BTN_ADDNAME%';
delete from transitions where [automaton] like 'M_BTN_PLAYERCREATE%';
delete from transitions where [automaton] like 'M_BTN_CHARSELECT%';

--The Bard is attached to the ID and loaded at startup
INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code", "guard", "doc") VALUES 
('M_BEGIN', '0', '10', 'ASSIGN', 'DETIME', '1500', '', '', ''),

('M_RADIO_2phase','0','1','Z_EPSILON','','','
    WSPRITE=WIP3;
    SHOW(WSPRITE);
    WPARM = 0;
','',''),
('M_RADIO_2phase','1','2','CLICK','','','
    PLAYWAVE(SOUND_BTNPRESS);
    SIGNAL(WIP4,SIG_OFF);
    if(WIP4 == BTN_CFGCULTURE_CIT){SIGNAL(BTN_CFGPLAYERNEW_OK,SIG_NIRET);}
    if(WIP4 == BTN_CFGCULTURE_VIL){SIGNAL(BTN_CFGPLAYERNEW_OK,SIG_ETNOC);}
    if(WIP4 == BTN_CFGCULTURE_MAL){SIGNAL(BTN_CFGPLAYERNEW_OK,SIG_FEMALE);}
    if(WIP4 == BTN_CFGCULTURE_FEM){SIGNAL(BTN_CFGPLAYERNEW_OK,SIG_MALE);}
    WPARM = WIP1;
    WSPRITE=WIP2;
    SHOW(WSPRITE);
 ','',''),
('M_RADIO_2phase','2','0','WAIT','0','SIG_OFF','','',''),
('M_RADIO_2phase','1','1','DRAGFOCUS','0','FALSE','
    WSPRITE=WIP3;
    SHOW(WSPRITE);
','',''),
('M_RADIO_2phase','1','1','DRAGFOCUS','0','TRUE','
    WSPRITE=WIP2;
    SHOW(WSPRITE);
    PLAYWAVE(SOUND_BTNDRAG);
','',''),



('M_BTN_ADDNAME','0','1','Z_EPSILON','','','
    WSPRITE=WIP3;
    SHOW(WSPRITE);
','',''),
('M_BTN_ADDNAME','1','1','WAIT','','SIG_MALE',  'BPARM=0;','',''),
('M_BTN_ADDNAME','1','1','WAIT','','SIG_FEMALE','BPARM=1;','',''),
('M_BTN_ADDNAME','1','1','WAIT','','SIG_NIRET', 'WOBJECT=1;','',''),
('M_BTN_ADDNAME','1','1','WAIT','','SIG_ETNOC', 'WOBJECT=0;','',''),
('M_BTN_ADDNAME','1','0','CLICK','','',
    'PLAYWAVE(SOUND_BTNPRESS);
    //This puts the name in the editbox into wparm 
    WPARM=get_control_value("IDV_CFGPLAYERNEW", "33");
    SHOW();
    LOADVIEW(IDV_CFGCULTURE);
','',''),
('M_BTN_ADDNAME','1','1','DRAGFOCUS','0','FALSE','
WSPRITE=WIP3;
SHOW(WSPRITE);
','',''),
('M_BTN_ADDNAME','1','1','DRAGFOCUS','0','TRUE',
'WSPRITE=WIP2;
SHOW(WSPRITE);
PLAYWAVE(SOUND_BTNDRAG);','',''),




('M_BTN_PLAYERCREATE','0','1','Z_EPSILON','','','
    WSPRITE=WIP3;
    SHOW(WSPRITE);
    REF_MACHINE(BTN_CFGPLAYERNEW_OK);
','',''),
('M_BTN_PLAYERCREATE','1','0','CLICK','','','
    PLAYWAVE(SOUND_BTNPRESS);
    //PROCESS PLAYER ATTRIBUTES
   
    predicate env(account_id, key, value);
    // get the account id:
    env("0","my_account_id",?address);
    env(address,"name")~ // remove the old name in case we lost our primary key
    env(address,"name",R_WPARM).
   
    predicate localplayer(account_id,name,viewname,wealth,karma,energy,strength,wisdom,gender,culture, knowsparent, knowsvillage,knowscity);
    localplayer(address)~
    predicate active_character(name);
    LWEALTH = 4;LENERGY = 4;LKARMA = 0;LWISDOM = 4;LSEX = R_BPARM;
    localplayer(address,R_WPARM,LVIEW,LWEALTH,LKARMA,LENERGY,10,LWISDOM,LSEX,R_WOBJECT,0,0,0).
    active_character("%")~
    active_character(R_WPARM).

    SIGNAL(SID_ID,SIG_MYID); //Present my id
    SIGNAL(S_NAME_PLAYER,SIG_SETNAME);
    LOADVIEW(WIP1);
    SHOW();
','',''),
('M_BTN_PLAYERCREATE','1','1','DRAGFOCUS','0','FALSE','
WSPRITE=WIP3;
SHOW(WSPRITE);
','',''),
('M_BTN_PLAYERCREATE','1','1','DRAGFOCUS','0','TRUE',
'WSPRITE=WIP2;
SHOW(WSPRITE);
PLAYWAVE(SOUND_BTNDRAG);','',''),


('M_BTN_CHARSELECTOK','0','1','Z_EPSILON','','','
    WSPRITE=WIP3;
    SHOW(WSPRITE);
','',''),
('M_BTN_CHARSELECTOK','1','0','CLICK','','','
    PLAYWAVE(SOUND_BTNPRESS);
    WPARM=get_control_value("IDV_CFGPLAYER", "PLAYERCFG_2");
    predicate active_character(name);
    active_character("%")~
    active_character(WPARM).
    SIGNAL(SID_ID,SIG_MYID); 
','',''),
('M_BTN_CHARSELECTOK','1','1','DRAGFOCUS','0','FALSE','
WSPRITE=WIP3;
SHOW(WSPRITE);
','',''),
('M_BTN_CHARSELECTOK','1','1','DRAGFOCUS','0','TRUE',
'WSPRITE=WIP2;
SHOW(WSPRITE);
PLAYWAVE(SOUND_BTNDRAG);','','');
