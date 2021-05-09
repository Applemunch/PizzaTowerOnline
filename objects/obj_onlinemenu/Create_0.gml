if !debug
{
	show_message("sorry nothing");
	game_end();
	exit;
	
	if (!instance_exists(obj_gms) or !gms_info_isloggedin() or gms_ini_game_read("game", "leveleditor") == false)
	{
		event_perform(ev_alarm, 2);
		exit;
	}
}

enum reqtypes
{
	read_paging,
	read_level,
	tp_level,
	
	read_paging_alt,
	read_level_alt,
	tp_level_alt,
	
	login_alt,
	register_alt,
}
enum menutypes
{
	menustart,
	menuonline,
	
	levelbrowser,
	leveldetails,
	
	login,
	register,
	upload,
	vote
}

records = undefined; // the level listing
showmissingchar = false;

yview = 0; // scrolling
yviewmax = 0;

menu = menutypes.menustart;

message = ""; // text at top
showtext = false;
xi = 500;
yi = -50;

page = 1;
paging_type = 0; // 0 for browse, 1 for featured, 2 for search, 3 for alternate
pagelast = 0;

request = ""; // the http request sent
requestype = 0;

loading = false; // loading wheelie thing
loadingrotation = 0;
scrolling = false;
viewpos = 0;

// search button
searchstring = "";
searchstring_real = "";
selectedsearch = false;

// password button
passwordstring = "";
selectedpassword = false;
registering = false;
passconfirm1 = "";

if gms_ini_player_exists("saveData", "regedit")
	regedit = gms_ini_player_read("saveData", "regedit");
else
	regedit = false;

// etc
textline = false;

response = "";
map = undefined;

// level details
level_id = undefined;
level_name = undefined;
level_desc = undefined;
level_string = undefined;
level_userid = undefined;
level_author = undefined;
level_created = undefined;

if !variable_global_exists("auth")
	global.auth = "";

obj_player1.state = states.titlescreen;
gms_chat_toggle(false);

global.pizzacoinstart = global.pizzacoin;
alarm[2] = 10;