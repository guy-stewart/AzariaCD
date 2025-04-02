
delete from controls where [view] like 'IDV_CFGNEWGAME%';


-- insert into controls ([view], [id],[type],[image],[image_selected],[x],[y],[border],[values],[default],[ids_font],[font_color],[code]) values

-- --center this for the new game
-- ('IDV_CFGNEWGAME', 'NEWGM1', 'EDITBOX',  'IDS_STD_EDITBOXM', 'IDS_BTN_DOWN_HI', 180, 150, 10, '', 'default','IDS_FONTTNR16',0x44FFFF,'
--     predicate gamestats(name,view,);
-- '),
-- ('IDV_CFGNEWGAME', 'NEWGM2', 'LABEL',    'IDS_CLEARBACK','', 150, 60, 0,
-- 'Place the cursor over the edit
-- box and give your game a name.','','IDS_FONTTNB14',0xFEFEFE,'');



delete from machines where view_name = 'IDV_CFGNEWGAME';
-- INSERT INTO "main"."machines" ("name", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip2_name", "wip3_name", "wip4_name") VALUES 

-- -- With Name entry (CFGPLAYERNEW)
-- ('BTN_CFGGAMENEW_OK',    'IDV_CFGNEWGAME', 275,220,325,260,2,'M_BTN_GAMECREATE','IDV_CFGCULTURE','IDS_BTN_OK_HI','IDS_BTN_OK',''),
-- ('BTN_CFGGAMEOPT_CANCEL','IDV_CFGNEWGAME', 350,220,400,260,2,'M_BTN_2phase','IDV_MAINMENU','IDS_BTN_CANCEL_HI','IDS_BTN_CANCEL','');


delete from transitions where [automaton] like 'M_BTN_GAMECREATE%';
--INSERT INTO "main"."transitions" ("automaton", "state", "new_state", "opcode", "param_1", "param_2", "code", "guard", "doc") VALUES 

--kick off Bard and hider
--save_game_state('gamename');


-- ('M_BTN_GAMECREATE','0','1','Z_EPSILON','','','
--     WSPRITE=WIP3;
--     SHOW(WSPRITE);
--     WPARM = 0;
-- ','',''),
-- ('M_BTN_GAMECREATE','1','2','CLICK','','','
--   PLAYWAVE(SOUND_BTNPRESS);
--   SIGNAL(S01_NEWGAME,SIG_NEW);
--   gamename = get_control_value("IDV_CFGNEWGAME", "NEWGM1");
--   predicate gamestats(name,view);
--   gamestats(gamename,"IDV_ORIE").
--   replay("system/creategame");
--  ','',''),
-- ('M_BTN_GAMECREATE','2','0','WAIT','0','SIG_OFF','','',''),

-- ('M_BTN_GAMECREATE','2','CHAR_CHECKED','Z_EPSILON','0','','
--      predicate localplayer(account_id, name);
--     // get the account id:
--     localplayer(,?name)?
--     if(name == ""){WPARM = 1;}
-- ','',''),
-- ('M_BTN_GAMECREATE','CHAR_CHECKED','0','','0','','
--     if(WPARM == 1){
--         LOADVIEW(IDV_CFGPLAYERNEW);
--     }
--     if(WPARM == 0){
--          LOADVIEW(IDV_ORIE);
--     }
-- ','',''),

-- ('M_BTN_GAMECREATE','1','1','DRAGFOCUS','0','FALSE','
--     WSPRITE=WIP3;
--     SHOW(WSPRITE);
-- ','',''),
-- ('M_BTN_GAMECREATE','1','1','DRAGFOCUS','0','TRUE','
--     WSPRITE=WIP2;
--     SHOW(WSPRITE);
--     PLAYWAVE(SOUND_BTNDRAG);
-- ','','');



--   //need to save name from editbox to predicate
--   //replay a script to save game after bard and startup 
--   PLAYWAVE(SOUND_BTNPRESS);
--   SIGNAL(S01_NEWGAME,SIG_NEW);
--   replay("system/creategame");
--   LOADVIEW(IDV_ORIE);

--  predicate env(account_id, key, value);
--     // get the account id:
--     env("0","my_account_id",?address);
--     //check for name in env
--     env(address,"name",?player);
--     if(player == ""){WPARM = 1;}