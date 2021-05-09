global.roommessage = "";
if instance_exists(obj_gms)
{
	gms_logout();
	instance_destroy(obj_gms);
	global.roommessage = "LOGGED OUT";
}

global.optimize = 0;
global.autotile = true;



if variable_global_exists("logged")
	global.logged = false;

global.loadeditor = false;

obj_player1.targetDoor = "A";
obj_player1.x = -500;
obj_player1.character = "P";
obj_player1.paletteselect = 1;
with obj_player1
	scr_characterspr();