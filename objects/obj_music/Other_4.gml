// prepare
if wait
{
	alarm[1] = 1;
	exit;
}

lemusic = -1;
if global.musicvolume <= 0
{
	audio_stop_sound(global.music);
	exit;
}

roomname = room_get_name(room)
if string_endswith(roomname, "_NEW")
	roomname = string_replace(roomname, "_NEW", "");

var musicprev = pausedmusic;
var musplay = -1;

#region antonball

if scr_checkskin(checkskin.p_anton) && global.loaded_anton
{
	if !global.panic && !global.snickchallenge
	{
		if string_contains(roomname, "secret")
			musplay = mu_antonsecret;
		else if room == hub_outside3b2
			musplay = mu_antonpunchball;
		else if room != rank_room && room != timesuproom
			musplay = mu_antonlevel;
	}
}

#endregion
#region pizza tower

else if !global.panic && !global.snickchallenge
{
	if instance_exists(obj_pepperman)
	{
		fadeoff = 0
		musplay = mu_chase
	}
	
	if string_letters(roomname) = "Realtitlescreen" or string_letters(roomname) = "Realtitlescreen"
	{
		fadeoff = 0
		musplay = mu_title
	}
	
	if room == editor_entrance
	{
		fadeoff = 0
		musplay = mu_editor
	}
	
	if string_startswith(roomname, "hub_room") or string_letters(roomname) = "Titlescreen" or string_letters(roomname) = "halloweenentrance"
		musplay = mu_hub
	if string_startswith(roomname, "hub_outside")
		musplay = mu_hub2
	if string_startswith(roomname, "hub_roomMOD")
		musplay = mu_hubarcade
	if string_startswith(roomname, "hub_roomE")
	{
		if room == hub_roomE2
		{
			fadeoff = 0
			musplay = mu_mall
		}
		else if room == hub_roomE3
		{
			fadeoff = 0
			musplay = mu_null
		}
		else
		{
			if audio_is_playing(mu_mall)
				fadeoff = 0;
				
			musplay = mu_hube
		}
	}
	
	if string_letters(roomname) = "PProom" or string_letters(roomname) = "PProom"
	{
		fadeoff = 0
		musplay = mu_tutorial
	}
	
	if string_letters(roomname) = "entrance" 
	{
		if obj_player1.character == "N"
			musplay = mu_noiseentrance
		else if obj_player1.character == "S"
			musplay = mu_snickentrance
		else if obj_player1.character == "V"
			musplay = mu_vigientrance
		else if obj_player1.character == "SP"
			musplay = mu_pizzyentrance
		else
			musplay = mu_entrance
	}
	
	if string_letters(roomname) = "dungeon"
	{
		for (i = 0; i < 20; ++i)
		{
			if roomname = "dungeon_" + string(i) && i <= 8
				musplay = mu_dungeon
			else if roomname = "dungeon_" + string(i) && i > 8
			{
				fadeoff = 0
				musplay = mu_dungeondepth
			}
		}
	}
	
	if string_letters(roomname) = "strongcold"
	{
		for (i = 0; i < 20; ++i)
		{
			if roomname = "strongcold_" + string(i) && i <= 8 && i > 1
				musplay = mu_strongcold
			else if roomname = "strongcold_" + string(i) && i > 8
			{
				fadeoff = 0
				musplay = mu_dungeondepth
			}
			
			if roomname = "strongcold_1"
			{
				fadeoff = 0
				musplay = mu_chateau
			}
		}
	}
	
	if string_letters(roomname) = "medieval" 
	{
		for (i = 0; i < 20; ++i)
		{
			if roomname = "medieval_" + string(i) && i <= 2
				musplay = mu_medievalentrance
			else if roomname = "medieval_" + string(i) && i > 2 && i <= 5
				musplay = mu_medievalremix
			else if roomname = "medieval_" + string(i) && i > 5
				musplay = mu_medieval
		}
	}

	if string_letters(roomname) = "ruin" 
	{
		for (i = 0; i < 20; ++i)
		{
			if roomname = "ruin_" + string(i) && i <= 6
				musplay = mu_ruin
			else if roomname = "ruin_" + string(i) && i > 6
				musplay = mu_ruinremix
		}
	}

	if string_letters(roomname) == "chateau"
		musplay = mu_chateau
	
	if string_letters(roomname) = "farm" 
		musplay = mu_farm
	
	if string_letters(roomname) = "graveyard" 
		musplay = mu_graveyard

	if string_letters(roomname) = "ufo" 
		musplay = mu_pinball

	if string_letters(roomname) = "dragonlair" 
		musplay = mu_dragonlair

	if string_letters(roomname) = "beach" 
		musplay = mu_beach
	
	if string_letters(roomname) = "forest" 
	{
		if roomname == "forest_4" or roomname == "forest_4b"
		{
			fadeoff = 0
			musplay = mu_gustavo
		}
		else
			musplay = mu_gnomeforest
	}
	
	if string_letters(roomname) = "kungfu" 
		musplay = mu_kungfu
	
	if string_letters(roomname) == "steamcc"
		musplay = mu_steamcc
	if string_letters(roomname) == "ssmines"
		musplay = mu_ssmines
	
	if string_startswith(roomname, "golf_room")
	{
		musplay = mu_minigolf;
		if scr_checkskin(checkskin.s_shit)
			musplay = mu_susgolf;
	}

	//desert
	if string_startswith(roomname, "floor1_room")
	or string_startswith(roomname, "floor1_mart")
	{
		for (i = 0; i < 20; ++i)
		{
			if roomname = "floor1_room" + string(i) && i <= 9
			or string_startswith(roomname, "floor1_mart")
				musplay = mu_desert
			else if roomname = "floor1_room" + string(i) && i > 9
				musplay = mu_ufo
		}
	}

	// freezer
	if string_startswith(roomname, "floor5_room")
	{
		for (i = 0; i < 20; ++i)
		{
			if roomname = "floor5_room" + string(i) && i <= 6
				musplay = mu_freezer
			else if roomname = "floor5_room" + string(i) && i > 6
				musplay = mu_freezer2
		}
	}

	// sewer
	if string_startswith(roomname, "floor4_room")
	{
		for (i = 0; i < 20; ++i)
		{
			if roomname = "floor4_room" + string(i) && i <= 5
				musplay = mu_sewer;
			else if roomname = "floor4_room" + string(i) && i > 5
			{
				fadeoff = 0
				musplay = mu_sewer2
			}
		}
	}

	// factory
	if string_startswith(roomname, "floor3_room")
		musplay = mu_factory2

	// etb
	if string_startswith(roomname, "etb_")
	{
		for (i = 0; i < 20; ++i)
		{
			if roomname == "etb_" + string(i) && i <= 1
			{
				fadeoff = 0
				musplay = mu_tutorial
			}
			else if roomname == "etb_" + string(i) && i > 1
			{
				if audio_is_playing(mu_tutorial)
					fadeoff = 0;
					
				musplay = mu_ruin
			}
			else if roomname == "etb_secret" + string(i)
			&& global.gameplay == 0
				musplay = mu_ruinsecret
		}
	}
	
	if string_startswith(roomname, "eatery_")
	{
		for (i = 0; i < 20; ++i)
		{
			if roomname == "eatery_" + string(i)
				musplay = mu_kidsparty
		}
	}
	
	// mansion
	if string_startswith(roomname, "floor2_room")
	{
		for (i = 0; i < 20; ++i)
		{
			if string_startswith(roomname, "floor2_room" + string(i))
			{
				if i <= 8
					musplay = mu_mansion
				else
					musplay = mu_forest
			}
		}
	}

	// secrets
	if global.gameplay == 0
	{
		if string_letters(roomname) = "entrancesecret" or string_letters(roomname) = "medievalsecret" 
			musplay = mu_medievalsecret
		if string_letters(roomname) = "ruinsecret" 
			musplay = mu_ruinsecret
		if string_letters(roomname) = "chateausecret" 
			musplay = mu_chateausecret
		if string_letters(roomname) = "dungeonsecret" or string_letters(roomname) = "strongcoldsecret"
			musplay = mu_dungeonsecret
		if string_startswith(roomname, "floor1_secret")
			musplay = mu_desertsecret
		if string_letters(roomname) = "graveyardsecret" 
			musplay = mu_graveyardsecret
		if string_letters(roomname) = "farmsecret" 
			musplay = mu_farmsecret
		if string_letters(roomname) = "ufosecret" 
			musplay = mu_pinballsecret
		if string_letters(roomname) = "forestsecret" 
		or string_startswith(roomname, "floor2_secret")
			musplay = mu_forestsecret
	}
	if string_letters(roomname) == "steamccsecret"
		musplay = mu_cottonsecret
	
	if obj_player1.character == "SP" && string_endswith(audio_get_name(musplay), "secret")
	&& global.musicgame == 0
	{
		var sndrep = asset_get_index(audio_get_name(musplay) + "SP");
		if audio_exists(sndrep)
			musplay = sndrep
		else
			musplay = mu_cottonsecretSP
	}
	
	if room == custom_lvl_room {
		alarm[0] = 4;
	}
}

#endregion

// pizza castle
if global.musicgame == 1
{
	// placeholders
	if musplay == mu_antonpunchball
		musplay = mu_antonlevel_pc
	else if musplay == mu_kidsparty
		musplay = mu_characterselect_pc
	else if musplay == mu_hub2
		musplay = mu_characterselect_pc
	else if musplay == mu_snickentrance or musplay == mu_vigientrance
		musplay = mu_entrance_pc
	else
	{
		// replace the sound
		var sndrep = asset_get_index(audio_get_name(musplay) + "_pc");
		if audio_exists(sndrep)
			musplay = sndrep;
	}
}

// play the song
if musplay > -1 && !audio_is_playing(musplay)
{
	audio_stop_sound(global.music)
	scr_sound(musplay)
	audio_sound_set_track_position(global.music, fadeoff)
	pausedmusic = musplay
}

if forcefadeoff != -1
{
	audio_sound_set_track_position(global.music, forcefadeoff);
	forcefadeoff = -1;
}

if musicprev != musplay
	audio_sound_pitch(global.music, musicpitch);