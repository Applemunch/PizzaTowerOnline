function scr_savescore(namestring)
{
	//Level rank saves
	ini_open("saveData" + string(global.saveslot) + ".ini");
	
	if !(namestring == "golf" && global.funmode)
	{
		// score
		if ini_read_real("Highscore", namestring, 0) < global.collect
			ini_write_real("Highscore", namestring, global.collect);
		
		// collected treasure
		if ini_read_real("Treasure", namestring, 0) == 0
			ini_write_real("Treasure", namestring, global.treasure);
		
		// secret count
		if ini_read_real("Secret", namestring, 0) < global.secretfound
			ini_write_string("Secret", namestring, global.secretfound);
		
		// toppins
		if ini_read_real("Toppin", namestring + "1", 0) == 0
			ini_write_real("Toppin", namestring + "1", global.shroomfollow);
		if ini_read_real("Toppin", namestring + "2", 0) == 0
			ini_write_real("Toppin", namestring + "2", global.cheesefollow);
		if ini_read_real("Toppin", namestring + "3", 0) == 0
			ini_write_real("Toppin", namestring + "3", global.tomatofollow);
		if ini_read_real("Toppin", namestring + "4", 0) == 0
			ini_write_real("Toppin", namestring + "4", global.sausagefollow);
		if ini_read_real("Toppin", namestring + "5", 0) == 0
			ini_write_real("Toppin", namestring + "5", global.pineapplefollow);
		
		// rank
		var previousrank = ini_read_string("Ranks", namestring, "none");
		if global.rank == "s"
			ini_write_string("Ranks", namestring, global.rank)
		if global.rank == "a" && previousrank != "s"
			ini_write_string("Ranks", namestring, global.rank)
		if global.rank == "b" && previousrank != "s" && previousrank != "a"
			ini_write_string("Ranks", namestring, global.rank)
		if global.rank == "c" && previousrank != "s" && previousrank != "a" && previousrank != "b"
			ini_write_string("Ranks", namestring, global.rank)
		if global.rank == "d" && previousrank != "s" && previousrank != "a" && previousrank != "b" && previousrank != "c"
			ini_write_string("Ranks", namestring, global.rank)
		
		// time attack score
		if global.timeattack
			scr_savetatime(namestring);
		
		// save pizzacoin
		if instance_exists(obj_gms) && !gms_self_isguest()
			gms_ini_player_write("saveData", "pizzacoin", scr_getcoin());
		else
			ini_write_real("online", "pizzacoin", scr_getcoin());
	}
	ini_close();
}

function scr_savetatime(namestring)
{
	if ini_read_real("TAmin", namestring, -1) == -1
	or ((ini_read_real("TAmin", namestring, -1) * 60) + ini_read_real("TAsec", namestring, -1) > (global.taminutes * 60) + global.taseconds)
	{
		ini_write_real("TAsec", namestring, global.taseconds);
		ini_write_real("TAmin", namestring, global.taminutes);
		
		var char = string(obj_player.character);
		if char == "N" && obj_player.noisetype == 1
			char += "S";
		if global.gameplay == 2
			char += "-REMIX";
		else if global.gameplay != 0
			char += "-NEW";
				
		ini_write_string("TAchar", namestring, char);
	}
}

function scr_levelname()
{
	// returns level name
	var namestring;
	if room == snick_challengeend
	{
		if global.snickrematch
			namestring = "snickrematch";
		else
			namestring = "snickchallenge";
	}
	else if string_startswith(room_get_name(room), "floor1_")
		namestring = "desert";
	else if string_startswith(room_get_name(room), "floor2_")
		namestring = "mansion";
	else if string_startswith(room_get_name(room), "floor3_")
		namestring = "factory";
	else if string_startswith(room_get_name(room), "floor4_")
		namestring = "sewer";
	else if string_startswith(room_get_name(room), "floor5_")
		namestring = "freezer";
	else if string_startswith(room_get_name(room), "golf_")
		namestring = "golf";
	else
		namestring = string_letters(room_get_name(room))

	if string_endswith(namestring, "treasure")
		namestring = string_replace(namestring, "treasure", "");
	
	if global.snickrematch && !global.snickchallenge
		namestring += "_re";
	return namestring;
}

function endlevel()
{	
	audio_stop_sound(global.music)
	if global.timeattack with obj_timeattack
		stop = true;

	with obj_player1
		targetDoor = "none"
	obj_camera.alarm[2] = -1
	
	// get the level name
	var namestring = scr_levelname();
	
	// calculate ranks
	if global.failedmod
		global.rank = "d";
	else if global.modifier == mods.no_toppings
	{
		if string_endswith(string_letters(room_get_name(room)), "treasure")
			global.rank = "s";
		else
			global.rank = "a";
	}
	else
	{
		if namestring == "golf" && global.funmode
			global.rank = "yousuck";
		else if global.srank > 0
		{
			if global.collect >= global.srank
				global.rank = "s"
			else if global.collect > global.arank
				global.rank = "a"
			else if global.collect > global.brank
				global.rank = "b"
			else if global.collect > global.crank
				global.rank = "c"
			else 
				global.rank = "d"
		}
		else
			global.rank = "d";
	}
	
	instance_destroy(obj_snickexe);
	instance_destroy(obj_snickexf);
	instance_destroy(obj_snickexg);
	instance_destroy(obj_snickexh);
	
	if global.modifier == -1
	{
		if namestring == "snickrematch" && global.rank == "s"
		{
			if !check_hat(HATS.snickcrown)
			{
				obj_player1.hatsprite = spr_hat_snickcrown;
				unlock_hat(HATS.snickcrown);
			}
		}
		scr_savescore(namestring)
	}
}