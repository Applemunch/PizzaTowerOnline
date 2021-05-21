/// @description savedata and login
global.logged = true;
if !gms_self_isguest()
{
	if !gms_ini_player_exists("saveData", "lastversion")
	or gms_ini_player_read("saveData", "lastversion") != obj_gms.gameversion
		gms_ini_player_write("saveData", "lastversion", obj_gms.gameversion);
}

// pizzacoin
if gms_ini_player_exists("saveData", "pizzacoin")
	scr_setcoin(gms_ini_player_read("saveData", "pizzacoin"));
else
{
	if !gms_self_isguest()
		gms_ini_player_write("saveData", "pizzacoin", 0);
	scr_setcoin(0);
}
global.pizzacoinstart = global.pizzacoin;

// hat unlocks
global.hatunlock = [true];
for(var i = 0; i < HATS.length; i++)
{
	if gms_ini_player_exists("hats", i)
		global.hatunlock[i] = true;
}

/*
if gms_ini_player_exists("saveData", "eatery")
	global.eatery = gms_ini_player_read("saveData", "eatery");
*/
if gms_ini_player_read("saveData", "customlock") == "P"
{
	with obj_player1
	{
		character = "N";
		scr_characterspr();
	}
}

// travel
audio_stop_all();

scr_soundeffect(sfx_collecttoppin);
with obj_player1
{
	targetRoom = hub_room1
	state = states.normal
}
instance_create(x, y, obj_fadeout);

// spawn in world controller
if gms_self_admin_rights()
	instance_create(0, 0, obj_wc);