/// @description disconnected
global.roommessage = lang_string("online.disconnected");
instance_destroy(obj_fadeout);
instance_destroy(obj_pausefadeout);

with obj_player1
{
	scr_playerreset();
	obj_player1.state = states.titlescreen;
	obj_player1.targetDoor = "A";
}

audio_stop_all();
room_goto(Realtitlescreen);
global.logged = false;
instance_destroy();