audio_stop_sound(global.music);
depth = -9999;

yourname = environment_get_variable("USERNAME");
if instance_exists(obj_gms) && gms_info_isloggedin()
{
	if gms_info_isloggedin()
	{
		yourname = gms_self_name();
		gms_logout();
	}
	instance_destroy(obj_gms);
	instance_destroy(obj_otherplayer);
}

alarm[0] = room_speed * 3;
con = 0;
