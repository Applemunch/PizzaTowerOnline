/// @description outdated
obj_player1.alarm[11] = -1;
if room != characterselect
{
	room_goto(Realtitlescreen);
	global.logged = false;
}
else
	instance_destroy(obj_login);
	
scr_playerreset();
obj_player1.state = states.titlescreen;
obj_player1.targetDoor = "A";

instance_destroy(obj_otherplayer);
instance_destroy(obj_skinchoice);
instance_destroy(obj_hatchoice);
instance_destroy(obj_fadeout);
instance_destroy(obj_pausefadeout);

gms_logout();
scr_soundeffect(sfx_pephurt);

global.roommessage = "OUTDATED VERSION!";
with obj_roomname
{
	message = "OUTDATED VERSION!";
	showtext = true;
	alarm[0] = room_speed * 3;
}
	
instance_destroy();