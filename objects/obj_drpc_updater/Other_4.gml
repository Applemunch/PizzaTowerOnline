/// @description
if !running
	exit;

var r = room_get_name(room);
var state = -1;

if room == Realtitlescreen
	det = "In the titlescreen";
else if room == characterselect
	det = "Logging in...";
else
{
	// bottom text
	state = lang_string("roomname." + room_get_name(room));
	
	if global.snickchallenge
	{
		state = "Snick Challenge";
		if global.snickrematch
			state = "Snick's Rematch";
	}
	
	if global.modifier != -1
	{
		event_user(2);
		state = modstate;
	}
	
	if string_startswith(r, "hub")
	{
		det = "Hub";
		if room == hub_room1
			state = "";
	}
	
	else if string_startswith(r, "halloween_entrance")
	{
		det = "Hardoween Hub";
		state = "";
	}
	
	else if string_startswith(r, "Titlescreen")
	{
		det = "Tower Outside";
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
		det = "Kung Fu";
	
	else if string_startswith(r, "minigolf")
		det = "Minigolf";
	
	else if string_startswith(r, "war")
		det = "Warzone";
	
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
		det = "Early Test Build";
	
	else if string_startswith(r, "ancient")
		det = "Ancient Tower";
	
	else if string_startswith(r, "cotton")
		det = "Cottontown";
	
	else if string_startswith(r, "jawbreaker")
		det = "Jawbreaker Mines";
	
	else if room == editor_entrance
	{
		det = "Level Editor";
		state = "Browsing the menus";
	}
	
	else if room == custom_lvl_room
	{
		if instance_exists(obj_onlinemenu)
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
		else
		{
			det = "Custom Level Room";
			state = "";
		}
	}
	
	else if room == rank_room
	{
		if global.snickchallenge
		{
			det = "Snick Challenge";
			if global.snickrematch
				det = "Snick's Rematch";
		}
		
		state = "Ranking";
	}
	
	else if room == timesuproom
	{
		if global.snickchallenge
		{
			det = "Snick Challenge";
			if global.snickrematch
				det = "Snick's Rematch";
		}
		
		state = "Time's up!";
	}
	
	else
	{
		det = "???";
		state = "";
	}
}
if state == -1
	state = roomname == "" ? "???" : roomname;

var detf = det;
if instance_exists(obj_gms) && gms_info_isloggedin()
	detf = gms_self_name() + " - " + det;

rousr_dissonance_set_details(detf);
rousr_dissonance_set_state(state);