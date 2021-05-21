/// @description
if !running
	exit;

var r = room_get_name(room);
var state = "";

if room == Realtitlescreen
	det = "In the titlescreen";
else if room == characterselect
	det = "Logging in...";
else
{
	state = global.roommessage;
	if global.snickchallenge
	{
		state = "Snick Challenge";
		if global.snickrematch
			state = "Snick's Rematch";
	}
	
	if string_startswith(r, "hub")
	{
		det = "Hub";
		if room == hub_room1
			state = "";
	}
	
	else if string_startswith(r, "PP_room")
		det = "Tutorial";
	
	else if string_startswith(r, "entrance")
		det = "Entrance";
	
	else if string_startswith(r, "medieval")
		det = "Pizzascape";
	
	else if string_startswith(r, "ruin")
		det = "The Ancient Cheese";
	
	else if string_startswith(r, "dungeon") or string_startswith(r, "snick_challengeend")
		det = "Bloodsauce Dungeon";
	
	else if string_startswith(r, "dragonlair")
		det = "Dragon Lair";
	
	else if string_startswith(r, "floor1")
		det = "Oregano Desert";
	
	else if string_startswith(r, "graveyard")
		det = "The Wasteyard";
	
	else if string_startswith(r, "farm")
		det = "Fun Farm";
	
	else if string_startswith(r, "ufo")
		det = "Space Pinball";
	
	else if string_startswith(r, "beach")
		det = "Pineapple Beach";
	
	else if string_startswith(r, "forest")
		det = "Gnome Forest";
	
	else if string_startswith(r, "kungfu")
		det = "Kung-Fu";
	
	else if string_startswith(r, "minigolf")
		det = "Minigolf";
	
	else if string_startswith(r, "chateau")
		det = "Pizzascare";
	
	else if string_startswith(r, "strongcold")
		det = "Strongcold";
	
	else if string_startswith(r, "golf")
		det = "Golf";
	
	else if string_startswith(r, "floor2")
		det = "Mansion";
	
	else if string_startswith(r, "floor3")
		det = "Factory";
	
	else if string_startswith(r, "floor4")
		det = "Sewer";
	
	else if string_startswith(r, "floor5")
		det = "Freezer";
	
	else if string_startswith(r, "etb")
		det = "ETB Tower";
	
	else if string_startswith(r, "steamcc")
		det = "Steamy Cotton Candy";
	
	else if room == editor_entrance
	{
		det = "Level Editor";
		state = "Browsing the menus";
	}
	
	else if room == custom_lvl_room
	{
		if obj_onlinemenu.level_id == 1 && obj_onlinemenu.paging_type != 3
		{
			det = "Testing a level";
			state = "";
		}
		else
		{
			with obj_onlinemenu
			{
				other.det = "Playing " + string(level_name);
				state = "By: " + string(level_author);
			}
		}
	}
	
	else if room == rank_room
		state = "Ranking";
	
	else if room == timesuproom
		state = "Time's up!";
	
	else if room != timesuproom
	{
		det = "???";
		state = "";
	}
}

var detf = det;
if instance_exists(obj_gms) && gms_info_isloggedin()
	detf = gms_self_name() + " - " + det;

rousr_dissonance_set_details(detf);
rousr_dissonance_set_state(state);