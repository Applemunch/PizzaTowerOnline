/// @description start race
scr_playerreset();
obj_player1.targetDoor = "A";
obj_player1.state = states.normal;
room_goto(medieval_1);