
-- drop table idv;
create table idv ([name] text unique, [id] int unique);

insert into idv values ('IDV_MAIN_PANEL', 0x0001);
insert into idv values ('IDV_INVENTORY', 0x0002);
insert into idv values ('IDV_ID', 0x0003);
insert into idv values ('IDV_MENUSYSTEM', 0x0004);
insert into idv values ('IDV_OTHERID', 0x0005);
insert into idv values ('IDV_COMPASS', 0x0007);
insert into idv values ('IDV_S_TELETYPE', 0x0008);
insert into idv values ('IDV_L_TELETYPE', 0x0009);
insert into idv values ('IDV_PLAYERNAME', 0x000a);
insert into idv values ('IDV_OTHERNAME', 0x000b);
insert into idv values ('IDV_TOPMENU', 0x0020);
insert into idv values ('IDV_CFGPLAYER1', 0x0021);
insert into idv values ('IDV_CFGPLAYER2', 0x0022);
insert into idv values ('IDV_CFGPROV', 0x0023);
insert into idv values ('IDV_CFGSESS', 0x0024);
insert into idv values ('IDV_CFGNEWSESS', 0x0025);
insert into idv values ('IDV_CFGGAME', 0x0026);
insert into idv values ('IDV_CFGAV', 0x0027);
insert into idv values ('IDV_HELP', 0x0028);
insert into idv values ('IDV_CREDITS', 0x0029);
insert into idv values ('IDV_NOTE', 0x0050);
insert into idv values ('IDV_CONTINENT', 0x0060);
insert into idv values ('IDV_V1PAN', 0x0065);
insert into idv values ('IDV_V2PAN', 0x0066);
insert into idv values ('IDV_GRID', 0x0067);
insert into idv values ('IDV_TESTLENS', 0x0068);
insert into idv values ('IDV_LOCKERR', 0x0200);
insert into idv values ('IDV_LOCKERN', 0x0201);
insert into idv values ('IDV_LOCKERW', 0x0202);
insert into idv values ('IDV_LOCKERS', 0x0203);

insert into idv values ('IDV_LOCKERCU00', 0x0204);
insert into idv values ('IDV_LOCKERCU01', 0x0205);
insert into idv values ('IDV_LOCKERCU02', 0x0206);
insert into idv values ('IDV_LOCKERCU03', 0x0207);
insert into idv values ('IDV_LOCKERCU04', 0x0208);
insert into idv values ('IDV_LOCKERCU05', 0x0209);
insert into idv values ('IDV_LOCKERCU06', 0x020a);
insert into idv values ('IDV_LOCKERCU07', 0x020b);
insert into idv values ('IDV_LOCKERCU08', 0x020c);
insert into idv values ('IDV_LOCKERCU09', 0x020d);
insert into idv values ('IDV_LOCKERCU10', 0x020e);
insert into idv values ('IDV_LOCKERCU11', 0x020f);
insert into idv values ('IDV_LOCKERCU12', 0x0210);
insert into idv values ('IDV_LOCKERCU13', 0x0211);
insert into idv values ('IDV_LOCKERCU14', 0x0212);
insert into idv values ('IDV_LOCKERCU15', 0x0213);
insert into idv values ('IDV_LOCKERCU16', 0x0214);
insert into idv values ('IDV_LOCKERCU17', 0x0215);
insert into idv values ('IDV_LOCKERCU18', 0x0216);
insert into idv values ('IDV_LOCKERCU19', 0x0217);
insert into idv values ('IDV_LOCKERCU20', 0x0218);
insert into idv values ('IDV_LOCKERCU21', 0x0219);
insert into idv values ('IDV_LOCKERCU22', 0x021a);
insert into idv values ('IDV_LOCKERCU23', 0x021b);
insert into idv values ('IDV_LOCKERCU24', 0x021c);
insert into idv values ('IDV_LOCKERCU25', 0x021d);
insert into idv values ('IDV_LOCKERCU26', 0x021e);

insert into idv values ('IDV_ctya', 0x0220);
insert into idv values ('IDV_ctyb', 0x0221);
insert into idv values ('IDV_ctyc', 0x0222);
insert into idv values ('IDV_ctyd', 0x0223);
insert into idv values ('IDV_ctye', 0x0224);
insert into idv values ('IDV_ctyf', 0x0225);
insert into idv values ('IDV_ctyg', 0x0226);
insert into idv values ('IDV_ctyh', 0x0227);
insert into idv values ('IDV_ctyi', 0x0228);
insert into idv values ('IDV_ctyj', 0x0229);
insert into idv values ('IDV_ctyk', 0x022A);
insert into idv values ('IDV_ctyl', 0x022B);
insert into idv values ('IDV_ctym', 0x022C);
insert into idv values ('IDV_ctyn', 0x022D);
insert into idv values ('IDV_ctyo', 0x022E);
insert into idv values ('IDV_ctyp', 0x022F);
insert into idv values ('IDV_ctyq', 0x0230);
insert into idv values ('IDV_ctyr', 0x0231);
insert into idv values ('IDV_ctys', 0x0232);
insert into idv values ('IDV_ctyt', 0x0233);
insert into idv values ('IDV_ctysmith', 0x0240);
insert into idv values ('IDV_ckeycf01', 0x0241);
insert into idv values ('IDV_ckeycf02', 0x0242);
insert into idv values ('IDV_ckeycf03', 0x0243);
insert into idv values ('IDV_ckeycf04', 0x0244);
insert into idv values ('IDV_ckeycf05', 0x0245);
insert into idv values ('IDV_ckeycf06', 0x0246);
insert into idv values ('IDV_ckeyvend', 0x0247);
insert into idv values ('IDV_ctyhouse', 0x0250);
insert into idv values ('IDV_chouse01', 0x0251);
insert into idv values ('IDV_chouse02', 0x0252);
insert into idv values ('IDV_chouse03', 0x0253);
insert into idv values ('IDV_citH3drb', 0x0253);
insert into idv values ('IDV_citH3drc', 0x0253);
insert into idv values ('IDV_ctychem', 0x0500);
insert into idv values ('IDV_chempan', 0x0501);
insert into idv values ('IDV_CTYLIB1A', 0x0600);
insert into idv values ('IDV_CTYLIB1B', 0x0601);
insert into idv values ('IDV_CTYLIB2A', 0x0602);
insert into idv values ('IDV_CTYLIB2B', 0x0603);
insert into idv values ('IDV_CLIBMON1', 0x0604);
insert into idv values ('IDV_CLIBMON2', 0x0605);
insert into idv values ('IDV_CLIBMON3', 0x0606);
insert into idv values ('IDV_CLIBMON4', 0x0607);
insert into idv values ('IDV_CLIBMON5', 0x0608);
insert into idv values ('IDV_CLIBMON6', 0x0609);
insert into idv values ('IDV_CLIBMUS1', 0x0610);
insert into idv values ('IDV_CLIBMUS2', 0x0611);
insert into idv values ('IDV_CTYPEZ1', 0x0620);
insert into idv values ('IDV_CTYPEZ2', 0x0621);
insert into idv values ('IDV_CTYPEZ3', 0x0622);
insert into idv values ('IDV_CTYPEZ4', 0x0623);
insert into idv values ('IDV_CTYPEZ5', 0x0624);
insert into idv values ('IDV_CTYPEZ6', 0x0625);
insert into idv values ('IDV_CTYPEZ7', 0x0626);
insert into idv values ('IDV_ctytrade', 0x0700);
insert into idv values ('IDV_MANPAN', 0x0800);
insert into idv values ('IDV_MANREP1', 0x0801);
insert into idv values ('IDV_MANREP2', 0x0802);
insert into idv values ('IDV_MANREP3', 0x0803);
insert into idv values ('IDV_MANREP4', 0x0804);
insert into idv values ('IDV_MANREP5', 0x0805);
insert into idv values ('IDV_MANREP6', 0x0806);
insert into idv values ('IDV_MANREP7', 0x0807);
insert into idv values ('IDV_MANREP8', 0x0808);
insert into idv values ('IDV_MANREP9', 0x0809);
insert into idv values ('IDV_MANREP10', 0x0810);
insert into idv values ('IDV_MANFUR', 0x0811);
insert into idv values ('IDV_STRATPAN', 0x0900);
insert into idv values ('IDV_STRATMON1', 0x0901);
insert into idv values ('IDV_STRATMON2', 0x0902);
insert into idv values ('IDV_STRATMAP', 0x0903);
insert into idv values ('IDV_SCN10PT0', 0x1000);
insert into idv values ('IDV_SCN10PIT', 0x1001);
insert into idv values ('IDV_FA1PAN', 0x1101);
insert into idv values ('IDV_FH1PTH1', 0x1102);
insert into idv values ('IDV_FH1PTH2', 0x1103);
insert into idv values ('IDV_FH1PAN', 0x1104);
insert into idv values ('IDV_GRBDRT1', 0x1105);
insert into idv values ('IDV_GRBDRT2', 0x1106);
insert into idv values ('IDV_PATH1_1', 0x1127);
insert into idv values ('IDV_PATH1_2', 0x1128);
insert into idv values ('IDV_PATH1_3', 0x1129);
insert into idv values ('IDV_PATH1_4', 0x1130);
insert into idv values ('IDV_PATH1_5', 0x1131);
insert into idv values ('IDV_PATH1_6', 0x1132);
insert into idv values ('IDV_PATH1_7', 0x1133);
insert into idv values ('IDV_PATH1_8', 0x1134);
insert into idv values ('IDV_TM1PAN', 0x1211);
insert into idv values ('IDV_TM2PAN', 0x1212);
insert into idv values ('IDV_VESTPAN1', 0x1213);
insert into idv values ('IDV_VESTPAN2', 0x1215);
insert into idv values ('IDV_TM3PAN', 0x1216);
insert into idv values ('IDV_TM4PAN', 0x1217);
insert into idv values ('IDV_TM5PAN', 0x1218);
insert into idv values ('IDV_TMCU1', 0x1219);
insert into idv values ('IDV_TMCU2', 0x1220);
insert into idv values ('IDV_TMCU3', 0x1221);
insert into idv values ('IDV_TMCU4', 0x1222);
insert into idv values ('IDV_TMCUT', 0x1223);
insert into idv values ('IDV_VIL2', 0x1300);
insert into idv values ('IDV_VIL3', 0x1301);
insert into idv values ('IDV_VIL4', 0x1302);
insert into idv values ('IDV_VIL5', 0x1303);
insert into idv values ('IDV_VIL6', 0x1304);
insert into idv values ('IDV_VIL7', 0x1305);
insert into idv values ('IDV_VIL8', 0x1306);
insert into idv values ('IDV_VIL9', 0x1307);
insert into idv values ('IDV_VILA', 0x1308);
insert into idv values ('IDV_VILB', 0x1309);
insert into idv values ('IDV_VILC', 0x1310);
insert into idv values ('IDV_VILD', 0x1311);
insert into idv values ('IDV_VILE', 0x1312);
insert into idv values ('IDV_VILF', 0x1313);
insert into idv values ('IDV_VILG', 0x1314);
insert into idv values ('IDV_VILH', 0x1315);
insert into idv values ('IDV_VILI', 0x1316);
insert into idv values ('IDV_VILJ', 0x1317);
insert into idv values ('IDV_VILK', 0x1318);
insert into idv values ('IDV_VILL', 0x1319);
insert into idv values ('IDV_VILM', 0x1320);
insert into idv values ('IDV_VILN', 0x1321);
insert into idv values ('IDV_VILO', 0x1322);
insert into idv values ('IDV_VILP', 0x1323);
insert into idv values ('IDV_VILQ', 0x1324);
insert into idv values ('IDV_VILR', 0x1325);
insert into idv values ('IDV_TMPLPTH1', 0x1501);
insert into idv values ('IDV_TMPLPTH2', 0x1502);
insert into idv values ('IDV_TMPLPTH3', 0x1503);
insert into idv values ('IDV_TMPLPTH4', 0x1504);
insert into idv values ('IDV_TMPLPTH5', 0x1505);
insert into idv values ('IDV_TMPLPTH6', 0x1506);
insert into idv values ('IDV_TMPLPTH7', 0x1507);
insert into idv values ('IDV_TMPLPTH8', 0x1508);
insert into idv values ('IDV_TMPLPTH9', 0x1509);
insert into idv values ('IDV_GRNDCNT1', 0x1601);
insert into idv values ('IDV_QUARSA', 0x1701);
insert into idv values ('IDV_QUARSB', 0x1702);
insert into idv values ('IDV_aMINEPAN', 0x1703);
insert into idv values ('IDV_aCV1aPAN', 0x1704);
insert into idv values ('IDV_aCV1bPAN', 0x1705);
insert into idv values ('IDV_bMINEPAN', 0x1706);
insert into idv values ('IDV_bCV1aPAN', 0x1707);
insert into idv values ('IDV_bCV1bPAN', 0x1708);
insert into idv values ('IDV_cMINEPAN', 0x1709);
insert into idv values ('IDV_cCV1aPAN', 0x170a);
insert into idv values ('IDV_cCV1bPAN', 0x170b);
insert into idv values ('IDV_dMINEPAN', 0x170c);
insert into idv values ('IDV_dCV1aPAN', 0x170d);
insert into idv values ('IDV_dCV1bPAN', 0x170e);
insert into idv values ('IDV_eMINEPAN', 0x170f);
insert into idv values ('IDV_eCV1aPAN', 0x1710);
insert into idv values ('IDV_eCV1bPAN', 0x1711);
insert into idv values ('IDV_NAT1a', 0x2101);
insert into idv values ('IDV_NAT1b', 0x2102);
insert into idv values ('IDV_NAT1c', 0x2103);
insert into idv values ('IDV_NAT1d', 0x2104);
insert into idv values ('IDV_NAT1e', 0x2105);
insert into idv values ('IDV_NAT1f', 0x2106);
insert into idv values ('IDV_NAT1g', 0x2107);
insert into idv values ('IDV_NAT1h', 0x2108);
insert into idv values ('IDV_NAT1i', 0x2109);
insert into idv values ('IDV_NAT1j', 0x2110);
insert into idv values ('IDV_NAT1k', 0x2111);
insert into idv values ('IDV_NAT1l', 0x2112);
insert into idv values ('IDV_NAT1m', 0x2113);
insert into idv values ('IDV_NAT1n', 0x2114);
insert into idv values ('IDV_NAT1o', 0x2115);
insert into idv values ('IDV_NAT1p', 0x2116);
insert into idv values ('IDV_PARCHPAN', 0x2201);
insert into idv values ('IDV_EYEA', 0x2401);
insert into idv values ('IDV_EYEB', 0x2402);
insert into idv values ('IDV_EYEC1P', 0x2403);
insert into idv values ('IDV_WR1', 0x2501);
insert into idv values ('IDV_WR2', 0x2502);
insert into idv values ('IDV_WR3', 0x2503);
insert into idv values ('IDV_W4LOCK', 0x2504);
insert into idv values ('IDV_WALL1EN', 0x2505);
insert into idv values ('IDV_WALL1IN', 0x2506);
insert into idv values ('IDV_WALL2EN', 0x2507);
insert into idv values ('IDV_WALL2IN', 0x2508);
insert into idv values ('IDV_PL1P', 0x2509);
insert into idv values ('IDV_PL2P', 0x2510);
insert into idv values ('IDV_HIDDENR1', 0x2511);
insert into idv values ('IDV_HIDDENR2', 0x2512);
insert into idv values ('IDV_BANISH', 0x2612);
insert into idv values ('IDV_BOARD', 0x6000);
