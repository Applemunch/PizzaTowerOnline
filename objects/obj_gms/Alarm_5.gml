/// @description outdated
obj_player1.alarm[11] = -1;
if room != characterselect
{
	room_goto(Realtitlescreen);
	scr_playerreset();
	obj_player1.state = states.titlescreen;
	obj_player1.targetDoor = "A";
	
	global.logged = false;
}
else
	instance_destroy(obj_login);

instance_destroy(obj_otherplayer);
instance_destroy(obj_skinchoice);
instance_destroy(obj_hatchoice);
instance_destroy(obj_fadeout);
instance_destroy(obj_pausefadeout);

scr_soundeffect(sfx_pephurt);

var msg = lang_string("online.outdated");
if gms_info_isloggedin()
{
	var msgread = gms_ini_game_read("game", "outdatedtext");
	if msgread != "default"
		msg = msgread;
}

global.roommessage = msg;
with obj_roomname
{
	message = global.roommessage;
	showtext = true;
	
	if room == characterselect
		alarm[0] = -1;
	else
		alarm[0] = room_speed * 3;
}

gms_logout();
instance_destroy();