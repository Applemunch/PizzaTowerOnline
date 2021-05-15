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

// loaded?
global.loaded_mus = true;
global.loaded_pc = true;
global.loaded_anton = true;

// etc
window_set_size(960, 540);
alarm[0] = 1;

alarm[0] = 2;
ini_close();

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