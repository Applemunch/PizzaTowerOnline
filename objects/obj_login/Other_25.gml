// check version
if gms_ini_game_read("game", "version") != obj_gms.gameversion
{
	if !debug
	{
		audio_stop_all();
		instance_destroy(obj_gms);
		scr_soundeffect(sfx_pephurt);
		
		with obj_roomname
		{
			var msg = gms_ini_game_read("game", "outdatedtext");
			if msg == "default"
				message = "OUTDATED VERSION!";
			else
				message = msg;
			
			showtext = true;
			alarm[0] = -1;
		}
		
		gms_logout();
		instance_destroy();
		exit;
	}
	else
		show_debug_message("Server ver. " + string(gms_ini_game_read("game", "version")) + " Current ver. " + string(obj_gms.gameversion));
}
if !debug
	obj_gms.alarm[1] = room_speed;

obj_gms.alarm[3] = room_speed;
loading = true;