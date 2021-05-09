if menu == 0
{
	// begin race
	if keyboard_check_pressed(ord("1"))
	{
		maxplayer = get_integer("Min players?", 2);
		
		gms_session_create(1);
		menu = 3.1;
	}
	
	// join race
	if keyboard_check_pressed(ord("2"))
	{
		var ID = get_integer("Session id?", 0);
		if ID != 0
		{
			if !gms_session_exists(ID)
				show_message("Session with ID " + string(ID) + " doesn't exist");
			else
			{
				gms_session_join(ID);
				menu = 3.2;
			}
		}
	}
}

if menu == 1
{
	if gms_session_player_count(gms_session_current_id()) >= maxplayer
	{
		if keyboard_check_pressed(ord("1"))
			event_user(0);
	}
}

if startrace
{
	instance_activate_all();
	startrace = false;
	alarm[1] = 1;
	
	menu = -1;
}