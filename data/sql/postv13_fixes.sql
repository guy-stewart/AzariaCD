
delete from games;

delete from  "main"."transitions" where name = 'M_NATURETIMER';
delete from  "main"."transitions" where name = 'M24_BIGEYE';

INSERT INTO "main"."transitions" ("name", "state", "new_state", "opcode", "param_1", "param_2","code") 
VALUES 
('M24_BIGEYE', '0', '1', 'MOV', 'WSPRITE', 'WIP1',''),
('M24_BIGEYE', '1', '2', 'ASHOW', 'WSPRITE', 'V_LOOP',''),
('M24_BIGEYE', '2', '5', 'ANIMATE', '0', 'V_LOOP',''),
('M24_BIGEYE', '5', '6', 'SIGNAL','WIP2', 'SIG_SHOW',''),
('M24_BIGEYE', '6', '7', 'SIGNAL','WIP3', 'SIG_SHOW',''),
('M24_BIGEYE', '7', '0', 'CLICK', '', '',''),
('M24_BIGEYE', '7', '10', 'WAIT', '0', '0',''),
('M24_BIGEYE', '10', '50', 'IFSTATEi', '0', 'S24_EYEPLATE1',''),
('M24_BIGEYE', '10', '50', 'IFSTATEi', '0', 'S24_EYEPLATE2',''),
('M24_BIGEYE', '10', '50', 'IFSTATEi', '0', 'S24_EYEPLATE3',''),
('M24_BIGEYE', '10', '50', 'IFSTATEi', '0', 'S24_EYESPELL1',''),
('M24_BIGEYE', '10', '50', 'IFSTATEi', '0', 'S24_EYESPELL3',''),
('M24_BIGEYE', '10', '20', 'Z_EPSILON', '', '',''),
('M24_BIGEYE', '20', '30', 'ASHOW', '0', 'IDS_BIGEYE1',''),
('M24_BIGEYE', '30', '30', 'GRAB', '0', 'IDD_EYEWAND',''),
('M24_BIGEYE', '30', '50', 'WAIT', '0', 'SIG_BOMB',''),
('M24_BIGEYE', '50', '51', 'SHOW', '0', '0',''),
('M24_BIGEYE', '51', '52', 'SIGNAL','WIP2', 'SIG_HIDE',''),
('M24_BIGEYE', '52', '0', 'SIGNAL','WIP3', 'SIG_HIDE','');

