// wrong room order dumbfuck
global.pastdisclaimer = false;
if !(room_first == rm_load && room_next(room_first) == Realtitlescreen)
{
	show_message("ayo the room order has been fucked with\nredownload the game lol");
	game_end();
	exit;
}

// trace script
function trace(txt = undefined)
{
	if txt != undefined
	{
		txt = string(txt);
		show_debug_message(txt);
		
		if instance_exists(obj_wc)
		{
			// trace to console
			
		}
	}
}

// crash
#region report last crash to discord

global.crashed = [false, ""];
if file_exists("lastcrash")
{
	var _e = file_text_open_read("lastcrash");
	var e = string(base64_decode(string(file_text_readln(_e))));
	file_text_close(_e);
	
	global.crashed = [true, e];
	
	if !file_delete("lastcrash")
		trace("last crash file didnt delete dumbass lmfao");
}

#endregion

exception_unhandled_handler
(
	function(e)
	{
		audio_stop_all();
		scr_soundeffect(sfx_pephurt);
		
		trace(e);
		show_message("The game crashed! longMessage:\n\n" + e.longMessage);
		
		if file_exists("lastcrash")
			file_delete("lastcrash");
		
		var _f = file_text_open_write("lastcrash");
		
		/*
		file_text_write_string(_f, base64_encode(string(e)));
		file_text_writeln(_f);
		file_text_write_string(_f, base64_encode(room_get_name(room)));
		file_text_writeln(_f);
		
		if instance_exists(obj_gms) && gms_info_isloggedin()
		{
			file_text_write_string(_f, base64_encode(gms_self_name()));
			gms_logout();
		}
		else
			file_text_write_string(_f, base64_encode("(noone)"));
		*/
		
		file_text_write_string(_f, base64_encode(string(e)));
		file_text_close(_f);
	}
)

// functions
function lang_string(str)
{
	var ret = global.langmap[? str];
	if is_undefined(ret)
		ret = str;
	
	return ret;
}

function check_bysync()
{
	if instance_exists(obj_gms)
		return gms_instance_created_by_sync();
	else
		return false;
}

function create_guid()
{
	var r = "";
	for (var i = 0; i < 32; i++)
	{
	    if i == 8 or i == 12 or i == 16 or i == 20
			r += "-";
	    r += choose("0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f");
	}
	return r;
}

function check_shaders() {
	return shaders_are_supported();
}

function check_race() {
	return false;
}

function offline_travel()
{
	global.logged = false;
	instance_destroy(obj_gms);
	
	ini_open("saveData" + global.saveslot + ".ini");
	
	// pizzacoin
	if ini_read_real("online", "version", 1) != 2 // version
	{
		scr_setcoin(0);
		ini_write_real("online", "version", 2);
	}
	else
		scr_setcoin(ini_read_real("online", "pizzacoin", 0));
	global.pizzacoinstart = global.pizzacoin;
	
	// hat unlocks
	global.hatunlock = [true];
	var i = 1;
	while ini_key_exists("online", "hat" + string(i))
	{
		global.hatunlock[i] = true;
		i++;
	}
	
	ini_close();
	
	// travel
	audio_stop_all();
	instance_create(0, 0, obj_wc);
	
	//scr_soundeffect(sfx_collecttoppin);
	with instance_create(x,y,obj_fadeout)
	{
		obj_player1.targetRoom = hub_room1
		obj_player1.state = states.normal
	}
}

function get_layer(layer_name)
{
	if layer_exists(layer_name + "_NEW") && global.gameplay != 0
		layer_name += "_NEW";
	return layer_get_id(layer_name);
}

function unlock_hat(index)
{
	try {
		var hat = global.hatunlock[index];
	}
	catch (e) {
		var hat = false;
		e = -1;
	}
	
	if !hat
	{
		scr_soundeffect(sfx_unlock);
		global.hatunlock[index] = true;
		
		if instance_exists(obj_gms) && !gms_self_isguest()
			gms_ini_player_write("hats", string(index), 1);
		else
		{
			ini_open("saveData" + global.saveslot + ".ini");
			ini_write_real("online", "hat" + string(index), 1);
			ini_close();
		}
	}
	return !hat;
}

function check_hat(index)
{
	try {
		var hat = global.hatunlock[index];
	}
	catch (e) {
		var hat = false;
		e = -1;
	}
	
	return hat;
}

function room_goto_new(index)
{
	if global.gameplay != 0 && !global.snickchallenge
	{
		if asset_get_type(room_get_name(index) + "_NEW") == asset_room
			index = asset_get_index(room_get_name(index) + "_NEW");
	}
	if string_endswith(room_get_name(index), "_NEW") && global.gameplay == 0
	{
		var r = string_replace(room_get_name(index), "_NEW", "");
		if asset_get_type(r) == asset_room
			index = asset_get_index(r);
	}
	
	room_goto(index);
	return index;
}

function scr_petspr(index)
{
	spr_petidle = spr_toppinshroom_NEW;
	spr_petrun = spr_toppinshroom_run_NEW;
	
	switch index
	{
		case 0:
			spr_petidle = spr_petnoah_idle;
			spr_petrun = spr_petnoah_move;
			break;
		case 1:
			spr_petidle = spr_petrat_idle;
			spr_petrun = spr_petrat_move;
			break;
		case 2:
			spr_petidle = spr_petraton_idle;
			spr_petrun = spr_petraton_move;
			break;
		case 3:
			spr_petidle = spr_petgerald_idle;
			spr_petrun = spr_petgerald_move;
			break;
		case 4:
			spr_petidle = spr_petglade_idle;
			spr_petrun = spr_petglade_move;
			break;
		case 5:
			spr_petidle = spr_petcaptions_idle;
			spr_petrun = spr_petcaptions_move;
			break;
		case 6:
			spr_petidle = spr_petpeic_idle;
			spr_petrun = spr_petpeic_move;
			break;
		case 7:
			spr_petidle = spr_petgrunt_idle;
			spr_petrun = spr_petgrunt_move;
			break;
		case 8:
			spr_petidle = spr_petsneck_idle;
			spr_petrun = spr_petsneck_move;
			break;
		case 9:
			spr_petidle = spr_petmario_idle;
			spr_petrun = spr_petmario_move;
			break;
		case 10:
			spr_petidle = spr_petmisty_idle;
			spr_petrun = spr_petmisty_move;
			break;
	}
}