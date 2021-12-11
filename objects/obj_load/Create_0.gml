randomize();
if !code_is_compiled()
	trace("!!RUNNING IN VM!!");

// no shader mode
ini_open("saveData.ini");
if !check_shaders() && !ini_read_real("online", "shitgraphs", false)
{
	show_message("ur graphic card is shit\nrunning on bad computer mode");
	ini_write_real("online", "shitgraphs", true);
}

pal_swap_init_system(shd_pal_swapper, true);

// fonts
global.bigfont = font_add_sprite_ext((repaintjokebuild ? spr_font_PP : spr_font), "ABCDEFGHIJKLMNOPQRSTUVWXYZ!.1234567890:_-?", true, 0)
loadfont = font_add_sprite_ext(spr_font, "ABCDEFGHIJKLMNOPQRSTUVWXYZ!.1234567890:_-?", true, 0)
global.smallfont = font_add_sprite_ext(spr_smallerfont, "ABCDEFGHIJKLMNOPQRSTUVWXYZ!.:?1234567890?", true, 0)
global.font_small = font_add_sprite_ext(spr_smallfont, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz!._1234567890:;?▯|*/',\"()=-+@█%~ÁÉÍÓÚáéíóúÑñ[]", true, -2)
global.smallnumber = font_add_sprite_ext(spr_smallnumber, "1234567890-.", true, 0)
global.collectfont = font_add_sprite_ext(spr_font_collect, "0123456789.-", true, 0)
global.candyfont = font_add_sprite_ext(spr_font_candycollect, "0123456789", true, 0)
global.combofont = font_add_sprite_ext(spr_font_combo, "0123456789.-", true, 0)

// variable
global.surfacemach = ini_read_real("online", "surfacemach", false);
global.secretdebris = ini_read_real("online", "secretdebris", true);
global.gameplay = ini_read_real("online", "gameplay", 1);
global.shownames = ini_read_real("online", "shownames", true);
global.chatbubbles = ini_read_real("online", "chatbubbles", true);
global.synceffect = ini_read_real("online", "synceffect", true);
global.richpresence = ini_read_real("online", "richpresence", false);
global.streamer = ini_read_real("online", "streamer", false);
global.showfps = ini_read_real("online", "showfps", false);
global.pvp = /*ini_read_real("online", "pvp", false)*/ false;
global.drawborder = ini_read_real("online", "drawborder", false);
global.pestoanchovi = ini_read_real("online", "pestoanchovi", false);
global.camerasmoothing = ini_read_real("online", "camerasmoothing", false);
global.screenshader = ini_read_real("online", "screenshader", 0);

global.panicbg = ini_read_real("online", "panicbg", false); // waving background
global.panicmelt = ini_read_real("online", "panicmelt", false); // motion blur
global.panicshake = ini_read_real("online", "panicshake", true); // shaking
global.panicnightmare = ini_read_real("online", "panicnightmare", true); // panic backgrounds
global.panictilt = ini_read_real("online", "panictilt", false); // panic screen tilt

global.musicvolume = ini_read_real("online", "musicvolume", 0.6);
global.mastervolume = ini_read_real("online", "mastervolume", 1);
global.machsound = ini_read_real("online", "machsound", 0);
global.musicgame = ini_read_real("online", "musicgame", 0);
if repaintjokebuild
{
	global.musicgame = 0;
	global.musicvolume = max(global.musicvolume, 0.5);
	global.mastervolume = 1;
}

audio_master_gain(global.mastervolume / (!code_is_compiled() + 1));

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
global.fun = irandom_range(1, 1000);

// language
global.language = ini_read_string("online", "language", "en") // language
global.langmap = -1;
lang_load(global.language);

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