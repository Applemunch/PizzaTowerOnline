global.roommessage = "";
if instance_exists(obj_gms)
{
	instance_destroy(obj_gms);
	global.roommessage = "LOGGED OUT";
}

global.optimize = 0;
global.autotile = true;

if variable_global_exists("logged")
	global.logged = false;

global.loadeditor = false;
with obj_player1
{
	global.hatunlock = [true];
	
	scr_playerreset();
	state = states.titlescreen;
	targetDoor = "A";
	character = "P";
	paletteselect = 1;
	petfollow = -1;
	hatsprite = -1;
	noisetype = (global.gameplay == 0 ? 0 : 1);
	x = 480;
	y = 402;
	scr_characterspr();
}

if !debug
	instance_destroy(obj_wc);
global.panic = false;
global.snickchallenge = false;
global.snickrematch = false;

room_speed = 60;