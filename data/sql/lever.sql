
delete from games;

delete from machines where name = 'S21_LEVER';
INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip1_value", "wip2_name", "wip2_value", "wip3_name", "wip3_value", "wip4_name", "wip4_value") VALUES ('8465', 'S21_LEVER', '8105', 'IDV_LEVERCU', '32', '42', '300', '187', '0', 'M_LEVER', 'IDS_LEVANI', '0', '2', '0', 'S21_LEVSTOP', '8466', 'SOUND_LEVER', '0');

delete from  "main"."transitions" where name = 'M_LEVER';

INSERT INTO "main"."transitions" ("name", "state", "new_state", "opcode", "param_1", "param_2") VALUES ('M_LEVER', '0', '1', 'MOV', 'BFRAME', '0');
INSERT INTO "main"."transitions" ("name", "state", "new_state", "opcode", "param_1", "param_2") VALUES ('M_LEVER', '1', '2', 'SHOW', 'WIP1', '');
INSERT INTO "main"."transitions" ("name", "state", "new_state", "opcode", "param_1", "param_2") VALUES ('M_LEVER', '2', '3', 'CLICK', '0', '0');
INSERT INTO "main"."transitions" ("name", "state", "new_state", "opcode", "param_1", "param_2") VALUES ('M_LEVER', '3', '4', 'PLAYWAVE', '0', 'SOUND_LEVER');
INSERT INTO "main"."transitions" ("name", "state", "new_state", "opcode", "param_1", "param_2") VALUES ('M_LEVER', '4', '5', 'ADDI', 'BFRAME', '1');
INSERT INTO "main"."transitions" ("name", "state", "new_state", "opcode", "param_1", "param_2") VALUES ('M_LEVER', '5', '6', 'ADDI', 'WPARM', '3');
INSERT INTO "main"."transitions" ("name", "state", "new_state", "opcode", "param_1", "param_2") VALUES ('M_LEVER', '6', '7', 'CLEAR', 'DETIME', '');
INSERT INTO "main"."transitions" ("name", "state", "new_state", "opcode", "param_1", "param_2") VALUES ('M_LEVER', '7', '9', 'ESTIME', 'WPARM', '');

--INSERT INTO "main"."transitions" ("name", "state", "new_state", "opcode", "param_1", "param_2") VALUES ('M_LEVER', '8', '9', 'IFSTATEi', '70', 'S21_LEVSTOP');
INSERT INTO "main"."transitions" ("name", "state", "new_state", "opcode", "param_1", "param_2") VALUES ('M_LEVER', '9', '10', 'SUBI', 'BFRAME', '1');
INSERT INTO "main"."transitions" ("name", "state", "new_state", "opcode", "param_1", "param_2") VALUES ('M_LEVER', '10', '11', 'ASSIGN', 'WPARM', '0');
INSERT INTO "main"."transitions" ("name", "state", "new_state", "opcode", "param_1", "param_2") VALUES ('M_LEVER', '11', '12', 'PLAYWAVE', '0', 'SOUND_LEVER');
INSERT INTO "main"."transitions" ("name", "state", "new_state", "opcode", "param_1", "param_2") VALUES ('M_LEVER', '12', '13', 'SHOW', 'WIP1', '');
INSERT INTO "main"."transitions" ("name", "state", "new_state", "opcode", "param_1", "param_2") VALUES ('M_LEVER', '13', '2', 'Z_EPSILON', '', '');

-- sleep only works with WPARM and not an arbitrary number
-- Ask Guy about clearing DETIME and what that does
delete from machines where name = 'S21_LEVSTOP';
INSERT INTO "main"."machines" ("id", "name", "view_id", "view_name", "left", "top", "right", "bottom", "local_visible", "dfa_name", "wip1_name", "wip1_value", "wip2_name", "wip2_value", "wip3_name", "wip3_value", "wip4_name", "wip4_value") VALUES ('8466', 'S21_LEVSTOP', '8105', 'IDV_LEVERCU', '333', '116', '366', '213', '0', 'M_LEVSTOP', '', '', 'S21_LEVER', '8465', '', '0', '', '0');

INSERT INTO "main"."transitions" ("name", "state", "new_state", "opcode", "param_1", "param_2") VALUES ('M_LEVSTOP', '0', '10', 'O_ACCEPT', '0', 'IDD_ROCK');
INSERT INTO "main"."transitions" ("name", "state", "new_state", "opcode", "param_1", "param_2") VALUES ('M_LEVSTOP', '10', '20', 'DROP', '0', '0');
INSERT INTO "main"."transitions" ("name", "state", "new_state", "opcode", "param_1", "param_2") VALUES ('M_LEVSTOP', '20', '30', 'ASSIGN', 'WOBJECT', 'IDD_ROCK');
INSERT INTO "main"."transitions" ("name", "state", "new_state", "opcode", "param_1", "param_2") VALUES ('M_LEVSTOP', '30', '40', 'SHOW', 'WOBJECT', '');
INSERT INTO "main"."transitions" ("name", "state", "new_state", "opcode", "param_1", "param_2") VALUES ('M_LEVSTOP', '40', '50', 'PLAYWAVE', '0', 'SOUND_CLICK');
INSERT INTO "main"."transitions" ("name", "state", "new_state", "opcode", "param_1", "param_2") VALUES ('M_LEVSTOP', '50', '60', 'SIGNAL', 'WIP2', '');
INSERT INTO "main"."transitions" ("name", "state", "new_state", "opcode", "param_1", "param_2") VALUES ('M_LEVSTOP', '60', '70', 'GRAB', '0', '0');
INSERT INTO "main"."transitions" ("name", "state", "new_state", "opcode", "param_1", "param_2") VALUES ('M_LEVSTOP', '70', '10', 'SHOW', '0', '0');