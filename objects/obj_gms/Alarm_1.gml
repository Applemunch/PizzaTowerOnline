/// @description check for version and disconnect
if debug
	exit;

if gms_info_isconnected()
{
	if gms_ini_game_read("game", "version") != gameversion
	{
		instance_destroy(obj_pause);
		instance_activate_all();
		
		gms_logout();
		alarm[5] = 1;
		
		exit;
	}
}
else
{
	gms_connect();
	if global.__socket_connecting
		disconnected = !gms_info_isconnected();
	else
	{
		instance_destroy(obj_pause);
		instance_activate_all();
		
		gms_logout();
		alarm[4] = 1;
		
		exit;
	}
}
alarm[1] = room_speed;