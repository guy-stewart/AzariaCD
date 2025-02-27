drop table if exists spr_names;
create table spr_names
(
    [name]      text unique primary key not null,
    [value]     text,
    [id]        int
);

insert into spr_names values
('IDS_AFISH1','fish1a',0x1140),
('IDS_AFISH10','fish10a',0x1149),
('IDS_AFISH2','fish2a',0x1141),
('IDS_AFISH3','fish3a',0x1142),
('IDS_AFISH4','fish4a',0x1143),
('IDS_AFISH5','fish5a',0x1144),
('IDS_AFISH6','fish6a',0x1145),
('IDS_AFISH7','fish7a',0x1146),
('IDS_AFISH8','fish8a',0x1147),
('IDS_AFISH9','fish9a',0x1148),
('IDS_ALARM','Spelx06',0x7796),
('IDS_AMULET','AMULET1',0x2148),
('IDS_AMULETBIN','AMULET2',0x2149),
('IDS_AURA1','aa_00',0x1da),
('IDS_AURA1+1','aa_01',0x1db),
('IDS_AURA1+10','aa_10',0x1e4),
('IDS_AURA1+11','aa_11',0x1e5),
('IDS_AURA1+12','aa_12',0x1e6),
('IDS_AURA1+13','aa_13',0x1e7),
('IDS_AURA1+14','aa_14',0x1e8),
('IDS_AURA1+15','aa_15',0x1e9),
('IDS_AURA1+16','aa_16',0x1ea),
('IDS_AURA1+17','aa_17',0x1eb),
('IDS_AURA1+18','aa_18',0x1ec),
('IDS_AURA1+19','aa_19',0x1ed),
('IDS_AURA1+2','aa_02',0x1dc),
('IDS_AURA1+20','aa_20',0x1ee),
('IDS_AURA1+21','aa_21',0x1ef),
('IDS_AURA1+22','aa_22',0x1f0),
('IDS_AURA1+23','aa_23',0x1f1),
('IDS_AURA1+3','aa_03',0x1dd),
('IDS_AURA1+4','aa_04',0x1de),
('IDS_AURA1+5','aa_05',0x1df),
('IDS_AURA1+6','aa_06',0x1e0),
('IDS_AURA1+7','aa_07',0x1e1),
('IDS_AURA1+8','aa_08',0x1e2),
('IDS_AURA1+9','aa_09',0x1e3),
('IDS_BAIT0','grubanm',0x1130),
('IDS_BAIT1','BUGINV',0x1131),
('IDS_BAIT2','flop',0x1132),
('IDS_BAIT3','WORMWIGL',0x1133),
('IDS_BAIT4','luur1',0x1134),
('IDS_BAIT5','luur2',0x1135),
('IDS_BAIT6','luur3',0x1136),
('IDS_BAIT7','luur4',0x1137),
('IDS_BAIT8','grubanm',0x1138),
('IDS_BAIT9','grubanm',0x1139),
('IDS_BANISHMENT','skull',0x77a0),
('IDS_BBISHOP','Gbishop',0x600d),
('IDS_BEAMER','beemer',0x800),
('IDS_BFISH1','fish1a',0x1150),
('IDS_BFISH10','fish10a',0x1159),
('IDS_BFISH2','fish2a',0x1151),
('IDS_BFISH3','fish3a',0x1152),
('IDS_BFISH4','fish4a',0x1153),
('IDS_BFISH5','fish5a',0x1154),
('IDS_BFISH6','fish6a',0x1155),
('IDS_BFISH7','fish7a',0x1156),
('IDS_BFISH8','fish8a',0x1157),
('IDS_BFISH9','fish9a',0x1158),
('IDS_BFLY','BFLY',0x2260),
('IDS_BIGEYE1','bigeye1',0x2404),
('IDS_BIRDSBKWD','BIRDSBKWD',0x2262),
('IDS_BIRDSFWD','BIRDSFWD',0x2261),
('IDS_BKING','Gking',0x6008),
('IDS_BKINGME','Bkingme',0x600e),
('IDS_BKNIGHT','Gknight',0x600c),
('IDS_BLINDNESS','blind',0x7793),
('IDS_BLUEBERRY','bluberry',0x2125),
('IDS_BLU_SLIDE','bluslide',0x204),
('IDS_BOMB1','BOMB1',0x1176),
('IDS_BOMB2','BOMB2',0x1177),
('IDS_BPAWN','Gpawn',0x600a),
('IDS_BQUEEN','Gqueen',0x6009),
('IDS_BROOK','Grook',0x600b),
('IDS_BTN_AUDIO','audvid',0x22),
('IDS_BTN_CANCEL','btnCanc',0x31),
('IDS_BTN_CANCEL_HI','btnCancH',0x32),
('IDS_BTN_CITCULT','bCitClt',0x62),
('IDS_BTN_CITCULT_HI','bCitCltH',0x63),
('IDS_BTN_CREDITS','credits',0x21),
('IDS_BTN_DELETE','btnDel',0x2b),
('IDS_BTN_DELETE_HI','btnDelH',0x2c),
('IDS_BTN_DOWN','btnDown',0x56),
('IDS_BTN_DOWN_HI','btnDownH',0x57),
('IDS_BTN_FEMALE','bfem',0x64),
('IDS_BTN_FEMALE_HI','bfemh',0x65),
('IDS_BTN_GAME','game',0x24),
('IDS_BTN_HELP','help',0x26),
('IDS_BTN_LEFT','btnLeft',0x50),
('IDS_BTN_LEFT_HI','btnLeftH',0x51),
('IDS_BTN_LOAD','btnLoad',0x2f),
('IDS_BTN_LOAD_HI','btnLoadH',0x30),
('IDS_BTN_MALE','bmale',0x66),
('IDS_BTN_MALE_HI','bmaleh',0x67),
('IDS_BTN_MAP','mapbtn',0x1ff),
('IDS_BTN_NETWORK','network',0x25),
('IDS_BTN_NEW','btnNew',0x27),
('IDS_BTN_NEW_HI','btnNewH',0x28),
('IDS_BTN_OK','btnOk',0x29),
('IDS_BTN_OK_HI','btnOkH',0x2a),
('IDS_BTN_PLAYER','player',0x23),
('IDS_BTN_QUIT','quit',0x20),
('IDS_BTN_RIGHT','btnRght',0x52),
('IDS_BTN_RIGHT_HI','btnRghtH',0x53),
('IDS_BTN_SAVE','btnSave',0x2d),
('IDS_BTN_SAVE_HI','btnSaveH',0x2e),
('IDS_BTN_THUMB','cThumb',0x58),
('IDS_BTN_UP','btnUp',0x54),
('IDS_BTN_UP_HI','btnUpH',0x55),
('IDS_BTN_VILCULT','bVilClt',0x60),
('IDS_BTN_VILCULT_HI','bVilCltH',0x61),
('IDS_BUCKE','BUCKE',0x1173),
('IDS_BUCKF','BUCKF',0x1174),
('IDS_BUGTREE','bug2tree',0x116e),
('IDS_BURNWOOD','BurnWood',0x1189),
('IDS_CAN1','Can1',0x1211),
('IDS_CAN2','Can2',0x1212),
('IDS_CAN3','Can3',0x1213),
('IDS_CAN4','Can4',0x1214),
('IDS_CANNY1','Canny1',0x1215),
('IDS_CANNY2','Canny2',0x1216),
('IDS_CANNY3','Canny3',0x1217),
('IDS_CANNY4','Canny4',0x1218),
('IDS_CHEMBUBL','buble',0x522),
('IDS_CHEMFILL','chemfill',0x521),
('IDS_CHEMS','chems',0x520),
('IDS_CHEMV01','chemv01',0x500),
('IDS_CHEMV02','chemv02',0x501),
('IDS_CHEMV03','chemv03',0x502),
('IDS_CHEMV04','chemv04',0x503),
('IDS_CHEMV05','chemv05',0x504),
('IDS_CHEMV06','chemv06',0x505),
('IDS_CHEMV07','chemv07',0x506),
('IDS_CHEMV08','chemv08',0x507),
('IDS_CHEMV09','chemv09',0x508),
('IDS_CHEMV10','chemv10',0x509),
('IDS_CHEMV11','chemv11',0x50a),
('IDS_CHEMV12','chemv12',0x50b),
('IDS_CHEMV13','chemv13',0x50c),
('IDS_CHEMV14','chemv14',0x50d),
('IDS_CHEMV15','chemv15',0x50e),
('IDS_CHEMV16','chemv16',0x50f),
('IDS_CHEMV17','chemv17',0x510),
('IDS_CHEMV18','chemv18',0x511),
('IDS_CHEMV19','chemv19',0x512),
('IDS_CHEMV20','chemv20',0x513),
('IDS_CITKEY','CITKEY',0x1701),
('IDS_CITLOCK','CITLOCK',0x1700),
('IDS_CITYNUM','citynum',0x202),
('IDS_CITY_KEY','citykey1',0x200),
('IDS_CLAM','CLAM',0x64d),
('IDS_CLOCKBIN','CLOCKBIN',0x1709),
('IDS_CROWBAR','Crowbar',0x2510),
('IDS_DEATH','skull',0x779d),
('IDS_DOORANIM','DOORANIM',0x2a95),
('IDS_EMERALD','EMERALD',0x214a),
('IDS_ENCHANT','enchant',0x7791),
('IDS_ENCSTONE','encstone',0x214e),
('IDS_EXPLODE1','EXPLODE1',0x1707),
('IDS_EXPLOSION','Spelx09',0x7799),
('IDS_EYEFUSE','eyefuse',0x2400),
('IDS_EYENGLSH','eyenglsh',0x2402),
('IDS_EYEPLATE','eyeplate',0x2401),
('IDS_EYEPLATEASML','eyeplateasml',0x2414),
('IDS_EYEPLATEBSML','eyeplatebsml',0x2415),
('IDS_EYESPELL','eyespell',0x77a5),
('IDS_EYESPELLASML','eyespellasml',0x2417),
('IDS_EYESPELLBSML','eyespellbsml',0x2416),
('IDS_EYEWAND','eyewand',0x2403),
('IDS_F0HAPPY','f0hap',0x100),
('IDS_F0HURT','f0hur',0x101),
('IDS_F0KISS','f0kis',0x102),
('IDS_F0MAD','f0mad',0x103),
('IDS_F0SAD','f0sad',0x104),
('IDS_F0STRESS','f0str',0x106),
('IDS_F0SUPRISED','f0sup',0x105),
('IDS_F0WAVE','f0wav',0x107),
('IDS_F1HAPPY','f1hap',0x110),
('IDS_F1HURT','f1hur',0x111),
('IDS_F1KISS','f1kis',0x112),
('IDS_F1MAD','f1mad',0x113),
('IDS_F1SAD','f1sad',0x114),
('IDS_F1STRESS','f1str',0x116),
('IDS_F1SUPRISED','f1sup',0x115),
('IDS_F1WAVE','f1wav',0x117),
('IDS_F2HAPPY','f2hap',0x120),
('IDS_F2HURT','f2hur',0x121),
('IDS_F2KISS','f2kis',0x122),
('IDS_F2MAD','f2mad',0x123),
('IDS_F2SAD','f2sad',0x124),
('IDS_F2STRESS','f2str',0x126),
('IDS_F2SUPRISED','f2sup',0x125),
('IDS_F2WAVE','f2wav',0x127),
('IDS_F3HAPPY','f3hap',0x130),
('IDS_F3HURT','f3hur',0x131),
('IDS_F3KISS','f3kis',0x132),
('IDS_F3MAD','f3mad',0x133),
('IDS_F3SAD','f3sad',0x134),
('IDS_F3STRESS','f3str',0x136),
('IDS_F3SUPRISED','f3sup',0x135),
('IDS_F3WAVE','f3wav',0x137),
('IDS_F4HAPPY','f4hap',0x140),
('IDS_F4HURT','f4hur',0x141),
('IDS_F4KISS','f4kis',0x142),
('IDS_F4MAD','f4mad',0x143),
('IDS_F4SAD','f4sad',0x144),
('IDS_F4STRESS','f4str',0x146),
('IDS_F4SUPRISED','f4sup',0x145),
('IDS_F4WAVE','f4wav',0x147),
('IDS_F5HAPPY','f5hap',0x150),
('IDS_F5HURT','f5hur',0x151),
('IDS_F5KISS','f5kis',0x152),
('IDS_F5MAD','f5mad',0x153),
('IDS_F5SAD','f5sad',0x154),
('IDS_F5STRESS','f5str',0x156),
('IDS_F5SUPRISED','f5sup',0x155),
('IDS_F5WAVE','f5wav',0x157),
('IDS_FERN','fern',0x2131),
('IDS_FERNLEAF','fernleaf',0x2120),
('IDS_FISH','FISH',0x111c),
('IDS_FISHASH','FishAsh',0x1190),
('IDS_FISHASH1','fpouch1',0x1160),
('IDS_FISHASH10','fpouch10',0x1169),
('IDS_FISHASH2','fpouch2',0x1161),
('IDS_FISHASH3','fpouch3',0x1162),
('IDS_FISHASH4','fpouch4',0x1163),
('IDS_FISHASH5','fpouch5',0x1164),
('IDS_FISHASH6','fpouch6',0x1165),
('IDS_FISHASH7','fpouch7',0x1166),
('IDS_FISHASH8','fpouch8',0x1167),
('IDS_FISHASH9','fpouch9',0x1168),
('IDS_FISHSCRL','FISHSCRL',0x2223),
('IDS_FISHWOOD','FishWood',0x1188),
('IDS_FISHXX','FishX2',0x1206),
('IDS_FLOPN1','FLOPN1',0x270),
('IDS_FONTCITY','fntcits',0xa3),
('IDS_FONTCITY_BIG','fntcitb',0xa7),
('IDS_FONTENG','fntengs',0xa0),
('IDS_FONTENG_BIG','fntengb',0xa4),
('IDS_FONTPAR','fntpars',0xa1),
('IDS_FONTPAR_BIG','fntparb',0xa5),
('IDS_FONTTNB12','fntTNB12',0xac),
('IDS_FONTTNB14','fntTNB14',0xad),
('IDS_FONTTNB16','fntTNB16',0xae),
('IDS_FONTTNB18','fnttnb18',0xaf),
('IDS_FONTTNR12','fntTNR12',0xa8),
('IDS_FONTTNR14','fntTNR14',0xa9),
('IDS_FONTTNR16','fntTNR16',0xaa),
('IDS_FONTTNR18','fntTNR18',0xab),
('IDS_FONTVILL','fntvils',0xa2),
('IDS_FONTVILL_BIG','fntvilb',0xa6),
('IDS_FORCEFLD','FORCEFLD',0x1705),
('IDS_FREQUENCY','Beemer',0x7002),
('IDS_GBANIM','GBANIM',0x3e81),
('IDS_GLEAFSPT','gleafspt',0x2121),
('IDS_GOBIN_B','GoBinB',0x6016),
('IDS_GOBIN_D','GoBinD',0x6017),
('IDS_GOBTRFLY','GoBtrfly',0x6012),
('IDS_GODRAGON','GoDragon',0x6013),
('IDS_GOPAB','GOPAB',0x3e82),
('IDS_GOPAG','GOPAG',0x3e83),
('IDS_GOPAR','GOPAR',0x3e84),
('IDS_GRNPLANT','grnplant',0x2132),
('IDS_GRN_SLIDE','grnslide',0x205),
('IDS_H2OMASK','H2OMASK',0x1178),
('IDS_HALO00','HALA',0xf0),
('IDS_HALO01','HALB',0xf1),
('IDS_HALO02','HALC',0xf2),
('IDS_HALO03','HALD',0xf3),
('IDS_HALO04','HALE',0xf4),
('IDS_HALO05','HALF',0xf5),
('IDS_HALO06','halo06',0xf6),
('IDS_HALO07','halo07',0xf7),
('IDS_HALUCINATE','redeye',0x77a2),
('IDS_HANDALT','handfwd',0xd),
('IDS_HANDBACK','handback',0x6),
('IDS_HANDCLICK','handmach',0xf),
('IDS_HANDDNLT','handdnlt',0xb),
('IDS_HANDDNRT','handdnrt',0xc),
('IDS_HANDDOWN','handdown',0x8),
('IDS_HANDFWD','handfwd',0x5),
('IDS_HANDIDLE','handidle',0x1),
('IDS_HANDLEFT','handleft',0x3),
('IDS_HANDMACH','handmach',0x2),
('IDS_HANDRIGHT','handrght',0x4),
('IDS_HANDTRIG','handfwd',0xe),
('IDS_HANDUP','handup',0x7),
('IDS_HANDUPLT','handuplt',0x9),
('IDS_HANDUPRT','handuprt',0xa),
('IDS_HOLDING','holding',0x7794),
('IDS_HR1SA','hr1sa',0x2513),
('IDS_HR1SB','hr1sb',0x2514),
('IDS_HR1SC','hr1sc',0x2515),
('IDS_HR1SD','hr1sd',0x2516),
('IDS_HR1SE','hr1se',0x2517),
('IDS_HR1TA','hr1ta',0x2518),
('IDS_HR1TB','hr1tb',0x2519),
('IDS_HR1TC','hr1tc',0x251a),
('IDS_HR2SA','hr2sa',0x251b),
('IDS_HR2SB','hr2sb',0x251c),
('IDS_HR2SC','hr2sc',0x251d),
('IDS_HR2TA','hr2ta',0x251e),
('IDS_HR2TB','hr2tb',0x251f),
('IDS_HR2TC','hr2tc',0x2520),
('IDS_HR2TD','hr2td',0x2521),
('IDS_INVISIBLE','Spelx04',0x779e),
('IDS_KEY_CFGWKEY','keycfkey',0x206),
('IDS_KEY_IN_BIN','keyinbin',0x207),
('IDS_LEVANI','levani',0x0),
('IDS_LEVOPNSML','LEVOPNsml',0x28c),
('IDS_LGHTANIM','LGHTANIM',0x2a94),
('IDS_LINKHAND','linkhand',0x11),
('IDS_LOCK','Spelx10',0x779a),
('IDS_LOCKWKEY','lockwkey',0x201),
('IDS_LOG','smalllog',0x1170),
('IDS_LUNCHCRUMBS','LUNCHCRUMBS',0x3e8a),
('IDS_M0HAPPY','f0hap',0x160),
('IDS_M0HURT','f0hur',0x161),
('IDS_M0KISS','f0kis',0x162),
('IDS_M0MAD','f0mad',0x163),
('IDS_M0SAD','f0sad',0x164),
('IDS_M0STRESS','f0str',0x166),
('IDS_M0SUPRISED','f0sup',0x165),
('IDS_M0WAVE','f0wav',0x167),
('IDS_M1A1ANIM','M1A1ANIM',0x3a9a),
('IDS_M1HAPPY','f1hap',0x170),
('IDS_M1HURT','f1hur',0x171),
('IDS_M1I1ANIM','M1I1ANIM',0x3a9b),
('IDS_M1J1ANIM','M1J1ANIM',0x3a9c),
('IDS_M1KISS','f1kis',0x172),
('IDS_M1MAD','f1mad',0x173),
('IDS_M1P1ANIM','M1P1ANIM',0x3a9d),
('IDS_M1S1ANIM','M1S1ANIM',0x3a9e),
('IDS_M1S2ANIM','M1S2ANIM',0x3ac3),
('IDS_M1SAD','f1sad',0x174),
('IDS_M1STRESS','f1str',0x176),
('IDS_M1SUPRISED','f1sup',0x175),
('IDS_M1SWAY','M1SWAY',0x3a99),
('IDS_M1SWAYB','M1SWAYB',0x3a9f),
('IDS_M1SWAYC','M1SWAYC',0x3aa0),
('IDS_M1T1ANIM','M1T1ANIM',0x3aa1),
('IDS_M1WAVE','f1wav',0x177),
('IDS_M2A10001','M2A10001',0x3aa2),
('IDS_M2FIDDLE','M2FIDDLE',0x3aa3),
('IDS_M2H10000','M2H10000',0x3aa4),
('IDS_M2HAPPY','f2hap',0x180),
('IDS_M2HURT','f2hur',0x181),
('IDS_M2I10000','M2I10000',0x3aa5),
('IDS_M2KISS','f2kis',0x182),
('IDS_M2MAD','f2mad',0x183),
('IDS_M2P10000','M2P10000',0x3aa6),
('IDS_M2S10000','M2S10000',0x3aa7),
('IDS_M2S20000','M2S20000',0x3aa8),
('IDS_M2SAD','f2sad',0x184),
('IDS_M2STRESS','f2str',0x186),
('IDS_M2SUPRISED','f2sup',0x185),
('IDS_M2T10000','M2T10000',0x3aa9),
('IDS_M2WAVE','f2wav',0x187),
('IDS_M3HAPPY','f3hap',0x190),
('IDS_M3HURT','f3hur',0x191),
('IDS_M3KISS','f3kis',0x192),
('IDS_M3MAD','f3mad',0x193),
('IDS_M3SAD','f3sad',0x194),
('IDS_M3STRESS','f3str',0x196),
('IDS_M3SUPRISED','f3sup',0x195),
('IDS_M3WAVE','f3wav',0x197),
('IDS_M4HAPPY','f4hap',0x1a0),
('IDS_M4HURT','f4hur',0x1a1),
('IDS_M4KISS','f4kis',0x1a2),
('IDS_M4MAD','f4mad',0x1a3),
('IDS_M4SAD','f4sad',0x1a4),
('IDS_M4STRESS','f4str',0x1a6),
('IDS_M4SUPRISED','f4sup',0x1a5),
('IDS_M4WAVE','f4wav',0x1a7),
('IDS_M5HAPPY','f5hap',0x1b0),
('IDS_M5HURT','f5hur',0x1b1),
('IDS_M5KISS','f5kis',0x1b2),
('IDS_M5MAD','f5mad',0x1b3),
('IDS_M5SAD','f5sad',0x1b4),
('IDS_M5STRESS','f5str',0x1b6),
('IDS_M5SUPRISED','f5sup',0x1b5),
('IDS_M5WAVE','f5wav',0x1b7),
('IDS_M6A10000','M6A10000',0x3aaa),
('IDS_M6H10000','M6H10000',0x3aab),
('IDS_M6I10000','M6I10000',0x3aac),
('IDS_M6P10000','M6P10000',0x3aad),
('IDS_M6S10000','M6S10000',0x3aae),
('IDS_M6S20000','M6S20000',0x3aaf),
('IDS_M6STIR','M6STIR',0x3ab0),
('IDS_M6T10000','M6T10000',0x3ab1),
('IDS_MAPBOXSML','MAPBOXSML',0x28d),
('IDS_MAPENG','mapeng',0x170b),
('IDS_MAPOPN','MAPOPN',0x28b),
('IDS_MATCH','torch',0x1171),
('IDS_MEMFUSE','MEMSFUSE',0x65f),
('IDS_MEMFUSEO','memfuseo',0x661),
('IDS_MEMSPELL','MEMSPELL',0x65e),
('IDS_MEMSPELLO','memspello',0x660),
('IDS_MINDREAD','mind',0x77a1),
('IDS_MINEBLOW','MINEBLOW',0x1706),
('IDS_MOON1','m1',0x655),
('IDS_MOON2','m2',0x656),
('IDS_MOON3','m3',0x657),
('IDS_MOON4','m4',0x658),
('IDS_MOON5','m5',0x659),
('IDS_MOON6','m6',0x65a),
('IDS_MOON7','m7',0x65b),
('IDS_MSA10001','MSA10001',0x3ab2),
('IDS_MSH10001','MSH10001',0x3ab3),
('IDS_MSI10001','MSI10001',0x3ab4),
('IDS_MSP10001','MSP10001',0x3ab5),
('IDS_MSS10001','MSS10001',0x3ab6),
('IDS_MSS20001','MSS20001',0x3ab7),
('IDS_MSSQUAT','MSSQUAT',0x3ab8),
('IDS_MST10001','MST10001',0x3aba),
('IDS_MST1001','MST1001',0x3ab9),
('IDS_MYA10000','MYA10000',0x3abb),
('IDS_MYH10000','MYH10000',0x3abc),
('IDS_MYI10000','MYI10000',0x3abd),
('IDS_MYJUGGLE','MYJUGGLE',0x3abe),
('IDS_MYP10000','MYP10000',0x3abf),
('IDS_MYS10000','MYS10000',0x3ac0),
('IDS_MYS20000','MYS20000',0x3ac1),
('IDS_MYT10000','MYT10000',0x3ac2),
('IDS_NAMEPLATE','namefill',0x46),
('IDS_NEWSHOVL','shovel',0x1175),
('IDS_NYBREATH','Spelx09',0x77a3),
('IDS_NYPLANT','nyplant',0x214d),
('IDS_NYPLANTBIN','nyplantbin',0x214c),
('IDS_NYSMASK','NYSMASK',0x1179),
('IDS_NYSVIAL','nysvial',0xe0),
('IDS_OMUSH','omush',0x2133),
('IDS_OMUSHSPT','omushspt',0x2122),
('IDS_OPN1','OPN1',0x2506),
('IDS_OPN2','OPN2',0x2507),
('IDS_OTHERHAND','otherhand',0x10),
('IDS_PED1','1',0x1c0),
('IDS_PED10','10',0x1c9),
('IDS_PED2','2',0x1c1),
('IDS_PED3','3',0x1c2),
('IDS_PED4','4',0x1c3),
('IDS_PED5','5',0x1c4),
('IDS_PED6','6',0x1c5),
('IDS_PED7','7',0x1c6),
('IDS_PED8','8',0x1c7),
('IDS_PED9','9',0x1c8),
('IDS_PEZPOP','pezpop',0x600),
('IDS_PFLOWER','pflower',0x2134),
('IDS_PFLWRSPT','pflwrspt',0x2123),
('IDS_PICK','PICK',0x116f),
('IDS_PIT00','pit00',0x280),
('IDS_PIT01','pit01',0x281),
('IDS_PIT02','pit02',0x282),
('IDS_PIT03','pit03',0x283),
('IDS_PIT04','pit04',0x284),
('IDS_PIT05','pit05',0x285),
('IDS_PIT06','pit06',0x286),
('IDS_PIT07','pit07',0x287),
('IDS_PIT08','pit08',0x288),
('IDS_PIT09','pit09',0x289),
('IDS_PITFUL','pitful',0x291),
('IDS_PLANTXX','PlantX2',0x1205),
('IDS_PLEAFSPT','pleafspt',0x2124),
('IDS_PLNTSCRL','PLNTSCRL',0x2222),
('IDS_PNKPLANT','pnkplant',0x2130),
('IDS_POLE1','pole1cur',0x1101),
('IDS_POLE1LCB','pole1lcb',0x1110),
('IDS_POLE1LCL','pole1lcl',0x1111),
('IDS_POLE1LCT','pole1lct',0x1112),
('IDS_POLE1LCU','pole1lcu',0x1113),
('IDS_POLE1LOB','pole1lob',0x1114),
('IDS_POLE1LOL','pole1lol',0x1115),
('IDS_POLE1LOT','pole1lot',0x1116),
('IDS_POLE1LOU','pole1lou',0x1117),
('IDS_POLE1RCB','pole1RCB',0x1120),
('IDS_POLE1RCL','pole1RCL',0x1121),
('IDS_POLE1RCT','pole1RCT',0x1122),
('IDS_POLE1RCU','pole1RCU',0x1123),
('IDS_POLE1ROB','pole1ROB',0x1124),
('IDS_POLE1ROL','pole1ROL',0x1125),
('IDS_POLE1ROT','pole1ROT',0x1126),
('IDS_POLE1ROU','pole1ROU',0x1127),
('IDS_POLE2','pole2cur',0x1102),
('IDS_PROTECT','Spelx02',0x779c),
('IDS_QUARLOCK_A','QUARLOCK_A',0x170c),
('IDS_QUARLOCK_B','QUARLOCK_B',0x170d),
('IDS_RECORDER','Spelx07',0x7797),
('IDS_REDBERRY','redberry',0x2126),
('IDS_REDDOT','reddot',0xd8),
('IDS_REDEAR','redear',0xd9),
('IDS_RED_SLIDE','redslide',0x203),
('IDS_REVBIN_A','RevBinA',0x6014),
('IDS_REVBIN_B','RevBinB',0x6015),
('IDS_REVERSIA','ReversiA',0x6010),
('IDS_REVERSIB','ReversiB',0x6011),
('IDS_RIPPLE','ripple',0x3e8b),
('IDS_ROCK','ROCK',0x1704),
('IDS_ROCKBIN','ROCKBIN',0x170a),
('IDS_ROLL','ROLL',0x2502),
('IDS_ROOTBLUE','ROOTBLUE',0x2138),
('IDS_ROOTORANGE','ROOTORANGE',0x213a),
('IDS_ROOTPLANT','ROOTPLANT',0x2137),
('IDS_ROOTWHITE','ROOTWHITE',0x2139),
('IDS_RUBY','RUBY',0x214b),
('IDS_RUMBLE','RUMBLE',0x2501),
('IDS_RUMROLL_ALT_CL','rumroll_alt_cl',0x2526),
('IDS_RUMROLL_ALT_OP','rumroll_alt_op',0x2528),
('IDS_SANDDIRT','sanddirt',0x213e),
('IDS_SANDDIRT2','sanddirt2',0x213f),
('IDS_SANDDIRT3','sanddirt3',0x2140),
('IDS_SANDDIRTGRS','sanddirtgrs',0x2142),
('IDS_SANDDIRTMOON','sanddirtmoon',0x2141),
('IDS_SCATTER','SCATTER',0x2503),
('IDS_SCAT_ALT_CL','scat_alt_cl',0x2527),
('IDS_SCAT_ALT_OP','scat_alt_op',0x2529),
('IDS_SCOOPE','scoopE',0xe2),
('IDS_SCOOPF','scoopF',0xe1),
('IDS_SCR001','SCR001',0x2201),
('IDS_SCR002','SCR002',0x2202),
('IDS_SCR003','SCR003',0x2203),
('IDS_SCR004','SCR004',0x2204),
('IDS_SCR005','SCR005',0x2205),
('IDS_SCR006','SCR006',0x2206),
('IDS_SCR007','SCR007',0x2207),
('IDS_SCR008','SCR008',0x2208),
('IDS_SCR009','SCR009',0x2209),
('IDS_SCR010','SCR010',0x2210),
('IDS_SCR011','SCR011',0x2211),
('IDS_SCR012','SCR012',0x2212),
('IDS_SCR013','SCR013',0x2213),
('IDS_SCR014','SCR014',0x2214),
('IDS_SCR015','SCR015',0x2215),
('IDS_SCR016','SCR016',0x2216),
('IDS_SCR017','SCR017',0x2217),
('IDS_SCR018','SCR018',0x2218),
('IDS_SCR019','SCR019',0x2219),
('IDS_SCR020','SCR020',0x2220),
('IDS_SCRHUNG','ScllHung',0x1219),
('IDS_SEED','SEED',0x3e8c),
('IDS_SHLDSCRL','SHLDSCRL',0x2221),
('IDS_SMBURST','SMBURST',0x77a6),
('IDS_SPEAKER','SPEAKER',0xc8),
('IDS_SPEFFECT','Exploa',0x1230),
('IDS_SPELL01','Spell01',0x7777),
('IDS_SPELL02','Spell02',0x7778),
('IDS_SPELL03','Spell03',0x7779),
('IDS_SPELL04','Spell04',0x777a),
('IDS_SPELL05','Spell05',0x777b),
('IDS_SPELL06','Spell06',0x777c),
('IDS_SPELL07','Spell07',0x777d),
('IDS_SPELL08','Spell08',0x777e),
('IDS_SPELL09','Spell09',0x777f),
('IDS_SPELL10','Spell10',0x7780),
('IDS_SPELx01','Spelx01',0x7787),
('IDS_SPELx02','Spelx02',0x7788),
('IDS_SPELx03','Spelx03',0x7789),
('IDS_SPELx04','Spelx04',0x778a),
('IDS_SPELx05','Spelx05',0x778b),
('IDS_SPELx06','Spelx06',0x778c),
('IDS_SPELx07','Spelx07',0x778d),
('IDS_SPELx08','Spelx08',0x778e),
('IDS_SPELx09','Spelx09',0x778f),
('IDS_SPELx10','Spelx10',0x7790),
('IDS_SPINNER','h2oSp01',0x7001),
('IDS_SPINSPELL','spinspel',0x7000),
('IDS_SPIRIT0','Spirit1',0x7770),
('IDS_SPIRIT1','Spirit1',0x7771),
('IDS_SPIRIT2','Spirit1',0x7772),
('IDS_SPIRIT3','Spirit1',0x7773),
('IDS_SPRINGS','SpRings',0x7774),
('IDS_STALKER','stalk',0x7792),
('IDS_STD_EDITBOXL','cEditBxL',0x45),
('IDS_STD_EDITBOXM','cEditBxM',0x44),
('IDS_STD_EDITBOXS','cEditBxS',0x43),
('IDS_STD_LISTBOXL','cListBxL',0x42),
('IDS_STD_LISTBOXM','cListBxM',0x41),
('IDS_STD_LISTBOXS','cListBxS',0x40),
('IDS_STRAT_LB','strat_lb',0x900),
('IDS_STRENGTH','Spelx05',0x779f),
('IDS_TELEKINESIS','tele',0x7798),
('IDS_TEMPLATE01','t01',0x601),
('IDS_TEMPLATE01+1','t02',0x602),
('IDS_TEMPLATE01+10','t11',0x60b),
('IDS_TEMPLATE01+11','t12',0x60c),
('IDS_TEMPLATE01+12','t13',0x60d),
('IDS_TEMPLATE01+13','t14',0x60e),
('IDS_TEMPLATE01+14','t15',0x60f),
('IDS_TEMPLATE01+15','t16',0x610),
('IDS_TEMPLATE01+16','t17',0x611),
('IDS_TEMPLATE01+17','t18',0x612),
('IDS_TEMPLATE01+18','t19',0x613),
('IDS_TEMPLATE01+19','t20',0x614),
('IDS_TEMPLATE01+2','t03',0x603),
('IDS_TEMPLATE01+20','t21',0x615),
('IDS_TEMPLATE01+21','t22',0x616),
('IDS_TEMPLATE01+22','t23',0x617),
('IDS_TEMPLATE01+23','t24',0x618),
('IDS_TEMPLATE01+24','t25',0x619),
('IDS_TEMPLATE01+25','t26',0x61a),
('IDS_TEMPLATE01+26','t27',0x61b),
('IDS_TEMPLATE01+27','t28',0x61c),
('IDS_TEMPLATE01+28','t29',0x61d),
('IDS_TEMPLATE01+29','t30',0x61e),
('IDS_TEMPLATE01+3','t04',0x604),
('IDS_TEMPLATE01+30','t31',0x61f),
('IDS_TEMPLATE01+31','t32',0x620),
('IDS_TEMPLATE01+32','t33',0x621),
('IDS_TEMPLATE01+33','t34',0x622),
('IDS_TEMPLATE01+34','t35',0x623),
('IDS_TEMPLATE01+4','t05',0x605),
('IDS_TEMPLATE01+5','t06',0x606),
('IDS_TEMPLATE01+6','t07',0x607),
('IDS_TEMPLATE01+7','t08',0x608),
('IDS_TEMPLATE01+8','t09',0x609),
('IDS_TEMPLATE01+9','t10',0x60a),
('IDS_TICKLELEAF','tickleleaf',0x64f),
('IDS_TICKLEPLANT','tickleplant',0x64e),
('IDS_TMORPH','TMORPH',0x672),
('IDS_TRANSFER','transfer',0x7795),
('IDS_TXT_MUSIC','txtMusic',0x70),
('IDS_TXT_SFX','txtSFX',0x71),
('IDS_UNLOCK','Spelx01',0x779b),
('IDS_VESTBNYS','VESTBNYS',0x1202),
('IDS_VESTCAN','VESTCAN',0x1201),
('IDS_VESTH2O','VESTH2O',0x1203),
('IDS_VIALCNT','VIALCNT',0x673),
('IDS_VIALSCRL','VIALSCRL',0x2224),
('IDS_VILKEY','VILKEY',0x1703),
('IDS_VILLOCK','VILLOCK',0x1702),
('IDS_VLOCKBIN','VLOCKBIN',0x1708),
('IDS_WALL1CUE','WALL1CUE',0x2504),
('IDS_WALL2CUE','WALL2CUE',0x2505),
('IDS_WATER','water',0x1172),
('IDS_WBISHOP','Sbishop',0x6005),
('IDS_WETBREATH','Spelx10',0x77a4),
('IDS_WFLOWER','wflower',0x2135),
('IDS_WFLWRSPT','wflwrspt',0x2127),
('IDS_WKING','Sking',0x6000),
('IDS_WKINGME','Pkingme',0x6006),
('IDS_WKNIGHT','Sknight',0x6004),
('IDS_WORDSCRL','WORDSCRL',0x2225),
('IDS_WPAWN','fnttnb18',0x6002),
('IDS_WQUEEN','Squeen',0x6001),
('IDS_WROOK','Srook',0x6003),
('IDS_YFLOWER','yflower',0x2136),
('IDS_YFLWRSPT','yflwrspt',0x2128),
('IDS_YMUSH','ymush',0x2137),
('IDS_YMUSHSPT','ymushspt',0x2129);
