targetRoom = editor_entrance;

if (!instance_exists(obj_gms) or !gms_info_isloggedin() or gms_ini_game_read("game", "leveleditor") == false)
&& !debug
	instance_change(obj_doorblocked, true);