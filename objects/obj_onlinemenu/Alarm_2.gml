/// @description maintenance
if (!instance_exists(obj_gms) or !gms_info_isloggedin() or gms_ini_game_read("game", "leveleditor") == false)
&& !debug
{
	window_set_cursor(cr_default);
	scr_playerreset();
	obj_player1.targetDoor = "B";
	room_goto(hub_outside2);
	
	instance_destroy();
}