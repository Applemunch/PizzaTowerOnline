if repaintjokebuild
	window_set_caption("Piss Towel Online");

// logged out message
if instance_exists(obj_gms)
{
	instance_destroy(obj_gms);
	global.roommessage = lang_string("online.loggedout");
}
if variable_global_exists("logged")
	global.logged = false;

// sertif being a dumbass
global.optimize = 0;
global.autotile = true;
global.loadeditor = false;

// clear excess players
while instance_number(obj_player) > 1
	instance_destroy(instance_find(obj_player, instance_number(obj_player) - 1));

// reset player properly
with obj_player1
{
	global.modifier = -1;
	global.hatunlock = [true];
	
	scr_playerreset();
	state = states.titlescreen;
	targetDoor = "A";
	character = "P";
	
	paletteselect = check_shaders();
	if repaintjokebuild
		paletteselect = 0;
	
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