scr_playerreset();
obj_player1.state = states.normal
obj_player1.targetDoor = "A"
room_goto(hub_room1);
instance_destroy();