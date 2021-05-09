/// @description teleport player
obj_player1.state = states.normal;
obj_player1.targetDoor = "none";
obj_player1.x = gms_other_get_real(__user, "x");
obj_player1.y = gms_other_get_real(__user, "y");