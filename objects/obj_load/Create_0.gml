randomize();

// no shader mode
ini_open("saveData.ini");
if !check_shaders() && !ini_read_real("online", "shitgraphs", false)
{
	show_message("ur graphic card is shit\nrunning on bad computer mode");
	ini_write_real("online", "shitgraphs", true);
}

// fonts
global.bigfont = font_add_sprite_ext(spr_font, "ABCDEFGHIJKLMNOPQRSTUVWXYZ!.1234567890:_-?", true, 0)
global.smallfont = font_add_sprite_ext(spr_smallerfont, "ABCDEFGHIJKLMNOPQRSTUVWXYZ!.:?1234567890", true, 0)
global.font_small = font_add_sprite_ext(spr_smallfont, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz!._1234567890:;?▯|*/',\"()=-+@█%~", true, -2)
global.smallnumber = font_add_sprite_ext(spr_smallnumber, "1234567890-.", true, 0)
global.collectfont = font_add_sprite_ext(spr_font_collect, "0123456789", true, 0)
global.candyfont = font_add_sprite_ext(spr_font_candycollect, "0123456789", true, 0)
global.combofont = font_add_sprite_ext(spr_font_combo, "0123456789", true, 0)

// variable
global.surfacemach = ini_read_real("online", "surfacemach", false);
global.secretdebris = ini_read_real("online", "secretdebris", true);
global.gameplay = ini_read_real("online", "gameplay", 1);
global.shownames = ini_read_real("online", "shownames", true);
global.chatbubbles = ini_read_real("online", "chatbubbles", true);
global.synceffect = ini_read_real("online", "synceffect", true);
global.richpresence = ini_read_real("online", "richpresence", true);
global.streamer = ini_read_real("online", "streamer", false);
global.showfps = ini_read_real("online", "showfps", false);
global.pvp = /*ini_read_real("online", "pvp", false)*/ false;
global.drawborder = ini_read_real("online", "drawborder", true)
global.pestoanchovi = ini_read_real("online", "pestoanchovi", false)

global.panicbg = ini_read_real("online", "panicbg", false); // waving background
global.panicmelt = ini_read_real("online", "panicmelt", false) // motion blur
global.panicshake = ini_read_real("online", "panicshake", true) // shaking
global.panicnightmare = ini_read_real("online", "panicnightmare", true) // panic backgrounds
global.panictilt = ini_read_real("online", "panictilt", false) // panic screen tilt

// loaded?
global.loaded_mus = true;
global.loaded_pc = true;
global.loaded_anton = true;

// other variables
global.lastroom = 0;
while room_exists(global.lastroom)
	global.lastroom++;
global.lastroom -= 1;

global.saveslot = "";

// language
global.language = ini_read_string("online", "language", "en") // language
global.langmap = -1;

try
{
	var _buf = buffer_load("lang/lang-" + global.language + ".json");
	global.langmap = json_decode(string(buffer_read(_buf, buffer_string)));
	buffer_delete(_buf);
}

if global.langmap == -1
{
	show_message("Language file failed to load");
	game_end();
	exit;
}

// prepare
ini_close();

window_set_size(960, 540);
alarm[0] = 2;

loadwhat = -1;
prog = -1;

/*
// audiogroup
agload = -1;
log = "";

function ag_continue()
{
	if agload == -1
		global.loaded_mus = ag_load(ag_music);
	if agload == ag_music
		global.loaded_pc = ag_load(ag_pcmusic);
	if agload == ag_pcmusic
		global.loaded_anton = ag_load(ag_antonball);
	if agload == ag_antonball
		alarm[1] = 10;
}
function ag_load(groupId)
{
	/// @param groupId
	agload = groupId;
	if !audio_group_load(groupId)
	{
		log += audio_group_name(agload) + " failed\n";
		ag_continue();
		return false;
	}
	return true;
}
ag_continue();
*/