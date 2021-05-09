audio_stop_all();
scr_playerreset();
obj_player1.targetDoor = "A";
obj_player1.state = states.normal;
room_goto(hub_room1);