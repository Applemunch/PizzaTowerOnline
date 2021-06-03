// prepare
if wait
{
	alarm[1] = 1;
	exit;
}

if global.musicvolume <= 0
{
	audio_stop_sound(global.music);
	exit;
}

roomname = room_get_name(room)
if string_endswith(roomname, "_NEW")
	roomname = string_replace(roomname, "_NEW", "");

var musicprev = pausedmusic;

#region antonball

if scr_checkskin(checkskin.p_anton) && global.loaded_anton
{
	if !global.panic && !global.snickchallenge
	{
		if global.musicgame == 0
		{
			if string_pos("secret", roomname) != 0
			{
				if !audio_is_playing(mu_antonsecret)
				{
					audio_stop_sound(global.music)
					scr_sound(mu_antonsecret)
					audio_sound_set_track_position(global.music, fadeoff)
					pausedmusic = mu_antonsecret
				}
			}
			else if room == hub_outside3b2
			{
				if !audio_is_playing(mu_antonpunchball)
				{
					audio_stop_sound(global.music)
					scr_sound(mu_antonpunchball)
					pausedmusic = mu_antonpunchball
				}
			}
			else if room != rank_room && room != timesuproom
			{
				if !audio_is_playing(mu_antonlevel)
				{
					audio_stop_sound(global.music)
					scr_sound(mu_antonlevel)
					audio_sound_set_track_position(global.music, fadeoff)
					pausedmusic = mu_antonlevel
				}
			}
		}
		else if global.musicgame == 1
		{
			if string_pos("secret", roomname) != 0
			{
				if !audio_is_playing(mu_antonsecret_pc)
				{
					audio_stop_sound(global.music)
					scr_sound(mu_antonsecret_pc)
					audio_sound_set_track_position(global.music, fadeoff)
					pausedmusic = mu_antonsecret_pc
				}
			}
			else if room != rank_room && room != timesuproom
			{
				if !audio_is_playing(mu_antonlevel_pc)
				{
					audio_stop_sound(global.music)
					scr_sound(mu_antonlevel_pc)
					audio_sound_set_track_position(global.music, fadeoff)
					pausedmusic = mu_antonlevel_pc
				}
			}
		}
	}
}

#endregion
#region pizza tower

else if (global.musicgame == 0 or !global.loaded_pc) && global.panic = false && global.snickchallenge = false
{
	if instance_exists(obj_pepperman)
	{
		audio_stop_sound(global.music)
		scr_sound(mu_chase)
		pausedmusic = mu_chase
	}

	if room = characterselect
	{
		if !audio_is_playing(mu_characterselect)
		{
			audio_stop_sound(global.music)
			scr_sound(mu_characterselect)
			pausedmusic = mu_characterselect
		}
	}

	if string_letters(roomname) = "Realtitlescreen" or string_letters(roomname) = "Realtitlescreen"
	{
		if !audio_is_playing(mu_title)
		{
			audio_stop_sound(global.music)
			scr_sound(mu_title)
			pausedmusic = mu_title
		}
	}
	
	if room == editor_entrance
	{
		if !audio_is_playing(mu_editor)
		{
			audio_stop_sound(global.music)
			scr_sound(mu_editor)
			pausedmusic = mu_editor
		}
	}

	if string_startswith(roomname, "hub_room") or string_letters(roomname) = "Titlescreen" or string_letters(roomname) = "halloweenentrance"
	{
		if !audio_is_playing(mu_hub)
		{
			audio_stop_sound(global.music)
			scr_sound(mu_hub)
			audio_sound_set_track_position(global.music, fadeoff)
			pausedmusic = mu_hub
		}
	}
	if string_startswith(roomname, "hub_outside")
	{
		if !audio_is_playing(mu_hub2)
		{
			audio_stop_sound(global.music)
			scr_sound(mu_hub2)
			audio_sound_set_track_position(global.music, fadeoff)
			pausedmusic = mu_hub2
		}
	}
	if string_startswith(roomname, "hub_roomE")
	{
		if room == hub_roomE2
		{
			if !audio_is_playing(mu_mall)
			{
				audio_stop_sound(global.music)
				scr_sound(mu_mall)
				pausedmusic = mu_mall
			}
		}
		else
		{
			if !audio_is_playing(mu_hube)
			{
				if audio_is_playing(mu_mall)
					fadeoff = 0;
				
				audio_stop_sound(global.music)
				scr_sound(mu_hube)
				audio_sound_set_track_position(global.music, fadeoff)
				pausedmusic = mu_hube
			}
		}
	}

	if string_letters(roomname) = "PProom" or string_letters(roomname) = "PProom"
	{
		if !audio_is_playing(mu_tutorial)
		{
			audio_stop_sound(global.music)
			scr_sound(mu_tutorial)
			pausedmusic = mu_tutorial
		}
	}


	if string_letters(roomname) = "entrance" 
	{
		if obj_player1.character == "N"
		{
			if !audio_is_playing(mu_noiseentrance)
			{
				audio_stop_sound(global.music)
				scr_sound(mu_noiseentrance)
				audio_sound_set_track_position(global.music, fadeoff)
				pausedmusic = mu_noiseentrance
			}
		}
		else if obj_player1.character == "S"
		{
			if !audio_is_playing(mu_snickentrance)
			{
				audio_stop_sound(global.music)
				scr_sound(mu_snickentrance)
				audio_sound_set_track_position(global.music, fadeoff)
				pausedmusic = mu_snickentrance
			}
		}
		else if obj_player1.character == "V"
		{
			if !audio_is_playing(mu_vigientrance)
			{
				audio_stop_sound(global.music)
				scr_sound(mu_vigientrance)
				audio_sound_set_track_position(global.music, fadeoff)
				pausedmusic = mu_vigientrance
			}
		}
		else
		{
			if !audio_is_playing(mu_entrance)
			{
				audio_stop_sound(global.music)
				scr_sound(mu_entrance)
				audio_sound_set_track_position(global.music, fadeoff)
				pausedmusic = mu_entrance
			}
		}
	
	}

	if string_letters(roomname) = "dungeon"
	{
		for (i = 0; i < 20; ++i)
		{
			if roomname = "dungeon_" + string(i) && i <= 8
			{
				if !audio_is_playing(mu_dungeon)
				{
					audio_stop_sound(global.music)
					scr_sound(mu_dungeon)
					audio_sound_set_track_position(global.music, fadeoff)
					pausedmusic = mu_dungeon
				}
	
			}
			else if roomname = "dungeon_" + string(i) && i > 8
			{
				if !audio_is_playing(mu_dungeondepth)
				{
					audio_stop_sound(global.music)
					scr_sound(mu_dungeondepth)
					audio_sound_set_track_position(global.music, fadeoff)
					pausedmusic = mu_dungeondepth
				}

			}
		}
	}
	
	if string_letters(roomname) = "strongcold"
	{
		for (i = 0; i < 20; ++i)
		{
				if roomname = "strongcold_" + string(i) && i <= 8 && i > 1
				{

	
					if !audio_is_playing(mu_strongcold)
					{
						    audio_stop_sound(global.music)
					scr_sound(mu_strongcold)
					audio_sound_set_track_position(global.music, fadeoff)
					pausedmusic = mu_strongcold
					}
	
				}

				else
					if roomname = "strongcold_" + string(i) && i > 8
				{

					if !audio_is_playing(mu_dungeondepth)
					{
						    audio_stop_sound(global.music)
					scr_sound(mu_dungeondepth)
					audio_sound_set_track_position(global.music, fadeoff)
					pausedmusic = mu_dungeondepth
					}

				}
				else 				
				if roomname = "strongcold_1"
				{
					if !audio_is_playing(mu_chateau)
					{
						audio_stop_sound(global.music)
						scr_sound(mu_chateau)
						audio_sound_set_track_position(global.music, fadeoff)
						pausedmusic = mu_chateau
					}
				}
			}
	}





	if string_letters(roomname) = "medieval" 
	{
	
		for (i = 0; i < 20; ++i)
		{
				if roomname = "medieval_" + string(i) && i <= 2
				{

	
					if !audio_is_playing(mu_medievalentrance)
					{
						    audio_stop_sound(global.music)
					scr_sound(mu_medievalentrance)
					audio_sound_set_track_position(global.music, fadeoff)
					pausedmusic = mu_medievalentrance
					}
	
				}
				else
					if roomname = "medieval_" + string(i) && i > 2 && i <= 5
				{

					if !audio_is_playing(mu_medievalremix)
					{
						    audio_stop_sound(global.music)
					scr_sound(mu_medievalremix)
					audio_sound_set_track_position(global.music, fadeoff)
					pausedmusic = mu_medievalremix
					}

				}
					else
					if roomname = "medieval_" + string(i) && i > 5
				{

	
					if !audio_is_playing(mu_medieval)
					{
						    audio_stop_sound(global.music)
					scr_sound(mu_medieval)
					audio_sound_set_track_position(global.music, fadeoff)
					pausedmusic = mu_medieval
					}

				}
		}
	}

	if string_letters(roomname) = "ruin" 
	{
		for (i = 0; i < 20; ++i)
		{
			if roomname = "ruin_" + string(i) && i <= 6
			{
				if !audio_is_playing(mu_ruin)
				{
					audio_stop_sound(global.music)
					scr_sound(mu_ruin)
					audio_sound_set_track_position(global.music, fadeoff)
					pausedmusic = mu_ruin
				}
			}
			else if roomname = "ruin_" + string(i) && i > 6
			{
				if !audio_is_playing(mu_ruinremix)
				{
					audio_stop_sound(global.music)
					scr_sound(mu_ruinremix)
					audio_sound_set_track_position(global.music, fadeoff)
					pausedmusic = mu_ruinremix
				}
			}
		}
	}

	if string_letters(roomname) = "chateau" 
	{

		if !audio_is_playing(mu_chateau)
		{
			audio_stop_sound(global.music)
			scr_sound(mu_chateau)
			audio_sound_set_track_position(global.music, fadeoff)
			pausedmusic = mu_chateau
		}
	}


	if string_letters(roomname) = "farm" 
	{
		if !audio_is_playing(mu_farm)
		{
			audio_stop_sound(global.music)
			scr_sound(mu_farm)
			audio_sound_set_track_position(global.music, fadeoff)
			pausedmusic = mu_farm
		}
	}


	if string_letters(roomname) = "graveyard" 
	{
		if !audio_is_playing(mu_graveyard)
		{
			audio_stop_sound(global.music)
			scr_sound(mu_graveyard)
			audio_sound_set_track_position(global.music, fadeoff)
			pausedmusic = mu_graveyard
		}
	}


	if string_letters(roomname) = "ufo" 
	{
		if !audio_is_playing(mu_pinball)
		{
			audio_stop_sound(global.music)
			scr_sound(mu_pinball)
			audio_sound_set_track_position(global.music, fadeoff)
			pausedmusic = mu_pinball
		}
	}


	if string_letters(roomname) = "dragonlair" 
	{
		if !audio_is_playing(mu_dragonlair)
		{
			audio_stop_sound(global.music)
			scr_sound(mu_dragonlair)
			audio_sound_set_track_position(global.music, fadeoff)
			pausedmusic = mu_dragonlair
		}
	}

	if string_letters(roomname) = "beach" 
	{
		if !audio_is_playing(mu_beach)
		{
			audio_stop_sound(global.music)
			scr_sound(mu_beach)
			audio_sound_set_track_position(global.music, fadeoff)
			pausedmusic = mu_beach
		}
	}
	
	if string_letters(roomname) = "forest" 
	{
		if roomname == "forest_4" or roomname == "forest_4b"
		{
			if !audio_is_playing(mu_gustavo)
			{
				audio_stop_sound(global.music)
				scr_sound(mu_gustavo)
				audio_sound_set_track_position(global.music, fadeoff)
				pausedmusic = mu_gustavo
			}
		}
		else if !audio_is_playing(mu_forest)
		{
			audio_stop_sound(global.music)
			scr_sound(mu_forest)
			audio_sound_set_track_position(global.music, fadeoff)
			pausedmusic = mu_forest
		}
	}
	
	if string_letters(roomname) = "kungfu" 
	{
		if !audio_is_playing(mu_kungfu)
		{
			audio_stop_sound(global.music)
			scr_sound(mu_kungfu)
			audio_sound_set_track_position(global.music, fadeoff)
			pausedmusic = mu_kungfu
		}
	}
	
	if string_letters(roomname) == "steamcc" 
	{
		if !audio_is_playing(mu_steamcc)
		{
			audio_stop_sound(global.music)
			scr_sound(mu_steamcc)
			audio_sound_set_track_position(global.music, fadeoff)
			pausedmusic = mu_steamcc
		}
	}
	
	if string_startswith(roomname, "golf_room")
	{
		var g = mu_minigolf;
		if scr_checkskin(checkskin.s_shit)
			g = mu_susgolf;
		
		if !audio_is_playing(g)
		{
			audio_stop_sound(global.music)
			scr_sound(g)
			audio_sound_set_track_position(global.music, fadeoff)
			pausedmusic = g
		}
	}

	//desert
	if string_startswith(roomname, "floor1_room")
	or string_startswith(roomname, "floor1_mart")
	{
		for (i = 0; i < 20; ++i)
		{
			if roomname = "floor1_room" + string(i) && i <= 9
			or string_startswith(roomname, "floor1_mart")
			{
				if !audio_is_playing(mu_desert)
				{
					audio_stop_sound(global.music)
					scr_sound(mu_desert)
					audio_sound_set_track_position(global.music, fadeoff)
					pausedmusic = mu_desert
				}
			}
			else if roomname = "floor1_room" + string(i) && i > 9
			{
				if !audio_is_playing(mu_ufo)
				{
					audio_stop_sound(global.music)
					scr_sound(mu_ufo)
					audio_sound_set_track_position(global.music, fadeoff)
					pausedmusic = mu_ufo
				}
			}
		}
	}

	// freezer
	if string_startswith(roomname, "floor5_room")
	{
	
		for (i = 0; i < 20; ++i)
		{
			if roomname = "floor5_room" + string(i) && i <= 6
			{
				if !audio_is_playing(mu_freezer)
				{
					audio_stop_sound(global.music)
					scr_sound(mu_freezer)
					audio_sound_set_track_position(global.music, fadeoff)
					pausedmusic = mu_freezer
				}
	
			}
			else if roomname = "floor5_room" + string(i) && i > 6
			{

				if !audio_is_playing(mu_freezer2)
				{
					audio_stop_sound(global.music)
					scr_sound(mu_freezer2)
					audio_sound_set_track_position(global.music, fadeoff)
					pausedmusic = mu_freezer2
				}

			}
		}
	}

	// sewer
	if string_startswith(roomname, "floor4_room")
	{
		for (i = 0; i < 20; ++i)
		{
			if roomname = "floor4_room" + string(i) && i <= 5
			{
				if !audio_is_playing(mu_sewer)
				{
					audio_stop_sound(global.music)
					scr_sound(mu_sewer)
					pausedmusic = mu_sewer
				}
			}
			else if roomname = "floor4_room" + string(i) && i > 5
			{
				if !audio_is_playing(mu_sewer2)
				{
					audio_stop_sound(global.music)
					scr_sound(mu_sewer2)
					pausedmusic = mu_sewer2
				}
			}
		}
	}

	// factory
	if string_startswith(roomname, "floor3_room")
	{
		if !audio_is_playing(mu_factory2)
		{
			audio_stop_sound(global.music)
			scr_sound(mu_factory2)
			pausedmusic = mu_factory2
		}
	}

	// etb
	if string_startswith(roomname, "etb_")
	{
		for (i = 0; i < 20; ++i)
		{
			if roomname == "etb_" + string(i) && i <= 1
			{
				if !audio_is_playing(mu_tutorial)
				{
					audio_stop_sound(global.music)
					scr_sound(mu_tutorial)
					pausedmusic = mu_tutorial
				}
			}
			else if roomname == "etb_" + string(i) && i > 1
			{
				if !audio_is_playing(mu_ruin)
				{
					if audio_is_playing(mu_tutorial)
						fadeoff = 0;
					
					audio_stop_sound(global.music)
					scr_sound(mu_ruin)
					audio_sound_set_track_position(global.music, fadeoff)
					pausedmusic = mu_ruin
				}
			}
			else if roomname == "etb_secret" + string(i)
			{
				if !audio_is_playing(mu_ruinsecret)
				{
					audio_stop_sound(global.music)
					scr_sound(mu_ruinsecret)
					audio_sound_set_track_position(global.music, fadeoff)
					pausedmusic = mu_ruinsecret
				}
			}
		}
	}
	
	if string_startswith(roomname, "eatery_")
	{
		for (i = 0; i < 20; ++i)
		{
			if roomname == "eatery_" + string(i)
			{
				if !audio_is_playing(mu_kidsparty)
				{
					audio_stop_sound(global.music)
					scr_sound(mu_kidsparty)
					audio_sound_set_track_position(global.music, fadeoff)
					pausedmusic = mu_kidsparty
				}
			}
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
				{
					if !audio_is_playing(mu_mansion)
					{
						audio_stop_sound(global.music)
						scr_sound(mu_mansion)
						pausedmusic = mu_mansion
						audio_sound_set_track_position(global.music, fadeoff)
					}
				}
				else
				{
					if !audio_is_playing(mu_forest)
					{
						audio_stop_sound(global.music)
						scr_sound(mu_forest)
						pausedmusic = mu_forest
						audio_sound_set_track_position(global.music, fadeoff)
					}
				}
			}
		}
	}

	// secrets
	if obj_player1.character == "SP"
	{
		if string_letters(roomname) = "entrancesecret" or string_letters(roomname) = "medievalsecret" 
		{
			if !audio_is_playing(mu_medievalsecretSP)
			{
				audio_stop_sound(global.music)
				scr_sound(mu_medievalsecretSP)
				audio_sound_set_track_position(global.music, fadeoff)
				pausedmusic = mu_medievalsecretSP
			}
		}
		if string_letters(roomname) = "ruinsecret" 
		{
			if !audio_is_playing(mu_ruinsecretSP)
			{
				audio_stop_sound(global.music)
				scr_sound(mu_ruinsecretSP)
				audio_sound_set_track_position(global.music, fadeoff)
				pausedmusic = mu_ruinsecretSP
			}
		}
		if string_letters(roomname) = "dungeonsecret" or string_letters(roomname) = "strongcoldsecret"
		{
			if !audio_is_playing(mu_dungeonsecretSP)
			{
				audio_stop_sound(global.music)
				scr_sound(mu_dungeonsecretSP)
				audio_sound_set_track_position(global.music, fadeoff)
				pausedmusic = mu_dungeonsecretSP
			}
		}
		if string_letters(roomname) = "chateausecret" 
		{
			// REPLACE
			if !audio_is_playing(mu_cottonsecretSP)
			{
				audio_stop_sound(global.music)
				scr_sound(mu_cottonsecretSP)
				audio_sound_set_track_position(global.music, fadeoff)
				pausedmusic = mu_cottonsecretSP
			}
		}
		if string_startswith(roomname, "floor1_secret")
		{
			if !audio_is_playing(mu_desertsecretSP)
			{
				audio_stop_sound(global.music)
				scr_sound(mu_desertsecretSP)
				audio_sound_set_track_position(global.music, fadeoff)
				pausedmusic = mu_desertsecretSP
			}
		}
		if string_letters(roomname) = "graveyardsecret" 
		{
			if !audio_is_playing(mu_graveyardsecretSP)
			{
				audio_stop_sound(global.music)
				scr_sound(mu_graveyardsecretSP)
				audio_sound_set_track_position(global.music, fadeoff)
				pausedmusic = mu_graveyardsecretSP
			}
		}
		if string_letters(roomname) = "farmsecret" 
		{
			if !audio_is_playing(mu_farmsecretSP)
			{
				audio_stop_sound(global.music)
				scr_sound(mu_farmsecretSP)
				audio_sound_set_track_position(global.music, fadeoff)
				pausedmusic = mu_farmsecretSP
			}
		}
		if string_letters(roomname) = "ufosecret" 
		{
			// REPLACE
			if !audio_is_playing(mu_cottonsecretSP)
			{
				audio_stop_sound(global.music)
				scr_sound(mu_cottonsecretSP)
				audio_sound_set_track_position(global.music, fadeoff)
				pausedmusic = mu_cottonsecretSP
			}
		}
		if string_letters(roomname) = "forestsecret"
		or string_startswith(roomname, "floor2_secret")
		{
			// REPLACE
			if !audio_is_playing(mu_cottonsecretSP)
			{
				audio_stop_sound(global.music)
				scr_sound(mu_cottonsecretSP)
				audio_sound_set_track_position(global.music, fadeoff)
				pausedmusic = mu_cottonsecretSP
			}
		}
		if string_letters(roomname) = "steamccsecret"
		{
			if !audio_is_playing(mu_cottonsecretSP)
			{
				audio_stop_sound(global.music)
				scr_sound(mu_cottonsecretSP)
				audio_sound_set_track_position(global.music, fadeoff)
				pausedmusic = mu_cottonsecretSP
			}
		}
	}
	else
	{
		if string_letters(roomname) = "entrancesecret" or string_letters(roomname) = "medievalsecret" 
		{
			if !audio_is_playing(mu_medievalsecret)
			{
				audio_stop_sound(global.music)
				scr_sound(mu_medievalsecret)
				audio_sound_set_track_position(global.music, fadeoff)
				pausedmusic = mu_medievalsecret
			}
		}
		if string_letters(roomname) = "ruinsecret" 
		{
			if !audio_is_playing(mu_ruinsecret)
			{
				audio_stop_sound(global.music)
				scr_sound(mu_ruinsecret)
				audio_sound_set_track_position(global.music, fadeoff)
				pausedmusic = mu_ruinsecret
			}
		}
		if string_letters(roomname) = "chateausecret" 
		{
			if !audio_is_playing(mu_chateausecret)
			{
				audio_stop_sound(global.music)
				scr_sound(mu_chateausecret)
				audio_sound_set_track_position(global.music, fadeoff)
				pausedmusic = mu_chateausecret
			}
		}
		if string_letters(roomname) = "dungeonsecret" or string_letters(roomname) = "strongcoldsecret"
		{
			if !audio_is_playing(mu_dungeonsecret)
			{
				audio_stop_sound(global.music)
				scr_sound(mu_dungeonsecret)
				audio_sound_set_track_position(global.music, fadeoff)
				pausedmusic = mu_dungeonsecret
			}
		}
		if string_startswith(roomname, "floor1_secret")
		{
			if !audio_is_playing(mu_desertsecret)
			{
				audio_stop_sound(global.music)
				scr_sound(mu_desertsecret)
				audio_sound_set_track_position(global.music, fadeoff)
				pausedmusic = mu_desertsecret
			}
		}
		if string_letters(roomname) = "graveyardsecret" 
		{
			if !audio_is_playing(mu_graveyardsecret)
			{
				audio_stop_sound(global.music)
				scr_sound(mu_graveyardsecret)
				audio_sound_set_track_position(global.music, fadeoff)
				pausedmusic = mu_graveyardsecret
			}
		}
		if string_letters(roomname) = "farmsecret" 
		{
			if !audio_is_playing(mu_farmsecret)
			{
				audio_stop_sound(global.music)
				scr_sound(mu_farmsecret)
				audio_sound_set_track_position(global.music, fadeoff)
				pausedmusic = mu_farmsecret
			}
		}
		if string_letters(roomname) = "ufosecret" 
		{
			if !audio_is_playing(mu_pinballsecret)
			{
				audio_stop_sound(global.music)
				scr_sound(mu_pinballsecret)
				audio_sound_set_track_position(global.music, fadeoff)
				pausedmusic = mu_pinballsecret
			}
		}
		if string_letters(roomname) = "forestsecret" 
		or string_startswith(roomname, "floor2_secret")
		{
			if !audio_is_playing(mu_forestsecret)
			{
				audio_stop_sound(global.music)
				scr_sound(mu_forestsecret)
				audio_sound_set_track_position(global.music, fadeoff)
				pausedmusic = mu_forestsecret
			}
		}
		if string_letters(roomname) = "steamccsecret"
		{
			if !audio_is_playing(mu_cottonsecret)
			{
				audio_stop_sound(global.music)
				scr_sound(mu_cottonsecret)
				audio_sound_set_track_position(global.music, fadeoff)
				pausedmusic = mu_cottonsecret
			}
		}
	}
	
	if room == custom_lvl_room {
		alarm[0] = 4;
	}
}

#endregion
#region pizza castle

else if global.loaded_pc && global.panic = false && global.snickchallenge = false
{
	if instance_exists(obj_pepperman)
	{
		audio_stop_sound(global.music)
		scr_sound(mu_chase_pc)
		pausedmusic = mu_chase_pc
	}

	if room = characterselect
	{
		if !audio_is_playing(mu_characterselect_pc)
		{
			audio_stop_sound(global.music)
			scr_sound(mu_characterselect_pc)
			pausedmusic = mu_characterselect_pc
		}
	}

	if string_letters(roomname) = "Realtitlescreen" or string_letters(roomname) = "Realtitlescreen"
	{
		if !audio_is_playing(mu_title_pc)
		{
			audio_stop_sound(global.music)
			scr_sound(mu_title_pc)
			pausedmusic = mu_title_pc
		}
	}
	
	if room == editor_entrance
	{
		if !audio_is_playing(mu_characterselect_pc)
		{
			audio_stop_sound(global.music)
			scr_sound(mu_characterselect_pc)
			pausedmusic = mu_characterselect_pc
		}
	}

	if string_startswith(roomname, "hub_room") or string_letters(roomname) = "Titlescreen" or string_letters(roomname) = "halloweenentrance"
	{
		if !audio_is_playing(mu_hub_pc)
		{
			audio_stop_sound(global.music)
			scr_sound(mu_hub_pc)
			audio_sound_set_track_position(global.music, fadeoff)
			pausedmusic = mu_hub_pc
		}
	}
	if string_startswith(roomname, "hub_outside")
	{
		if !audio_is_playing(mu_characterselect_pc)
		{
			audio_stop_sound(global.music)
			scr_sound(mu_characterselect_pc)
			audio_sound_set_track_position(global.music, fadeoff)
			pausedmusic = mu_characterselect_pc
		}
	}
	if string_startswith(roomname, "hub_roomE")
	{
		if room == hub_roomE2
		{
			if !audio_is_playing(mu_mall)
			{
				audio_stop_sound(global.music)
				scr_sound(mu_mall)
				pausedmusic = mu_mall
			}
		}
		else
		{
			if !audio_is_playing(mu_hube_pc)
			{
				audio_stop_sound(global.music)
				scr_sound(mu_hube_pc)
				audio_sound_set_track_position(global.music, fadeoff)
				pausedmusic = mu_hube_pc
			}
		}
	}


	if string_letters(roomname) = "PProom" or string_letters(roomname) = "PProom"
	{
		if !audio_is_playing(mu_tutorial_pc)
		{
			audio_stop_sound(global.music)
			scr_sound(mu_tutorial_pc)
			pausedmusic = mu_tutorial_pc
		}
	}


	if string_letters(roomname) = "entrance" 
	{
		if obj_player1.character == "N"
		{
			if !audio_is_playing(mu_noiseentrance_pc)
			{
				audio_stop_sound(global.music)
				scr_sound(mu_noiseentrance_pc)
				audio_sound_set_track_position(global.music, fadeoff)
				pausedmusic = mu_noiseentrance_pc
			}
		}
		else if obj_player1.character == "S"
		{
			if !audio_is_playing(mu_snickentrance) // REPLACE
			{
				audio_stop_sound(global.music)
				scr_sound(mu_snickentrance)
				audio_sound_set_track_position(global.music, fadeoff)
				pausedmusic = mu_snickentrance
			}
		}
		else if obj_player1.character == "V"
		{
			if !audio_is_playing(mu_vigientrance) // REPLACE
			{
				audio_stop_sound(global.music)
				scr_sound(mu_vigientrance)
				audio_sound_set_track_position(global.music, fadeoff)
				pausedmusic = mu_vigientrance
			}
		}
		else
		{
			if !audio_is_playing(mu_entrance_pc)
			{
				audio_stop_sound(global.music)
				scr_sound(mu_entrance_pc)
				audio_sound_set_track_position(global.music, fadeoff)
				pausedmusic = mu_entrance_pc
			}
		}
	
	}

	if string_letters(roomname) = "dungeon"
	{
		for (i = 0; i < 20; ++i)
		{
				if roomname = "dungeon_" + string(i) && i <= 8
				{

	
					if !audio_is_playing(mu_dungeon_pc)
					{
						audio_stop_sound(global.music)
						scr_sound(mu_dungeon_pc)
						audio_sound_set_track_position(global.music, fadeoff)
						pausedmusic = mu_dungeon_pc
					}
	
				}
				else
					if roomname = "dungeon_" + string(i) && i > 8
				{

					if !audio_is_playing(mu_dungeondepth_pc)
					{
						audio_stop_sound(global.music)
						scr_sound(mu_dungeondepth_pc)
						audio_sound_set_track_position(global.music, fadeoff)
						pausedmusic = mu_dungeondepth_pc
					}

				}


			}
	}

	if string_letters(roomname) = "strongcold"
	{
		for (i = 0; i < 20; ++i)
		{
				if roomname = "strongcold_" + string(i) && i <= 8 && i > 1
				{

	
					if !audio_is_playing(mu_strongcold_pc)
					{
						    audio_stop_sound(global.music)
					scr_sound(mu_strongcold_pc)
					audio_sound_set_track_position(global.music, fadeoff)
					pausedmusic = mu_strongcold_pc
					}
	
				}

				else
					if roomname = "strongcold_" + string(i) && i > 8
				{

					if !audio_is_playing(mu_dungeondepth_pc)
					{
						    audio_stop_sound(global.music)
					scr_sound(mu_dungeondepth_pc)
					audio_sound_set_track_position(global.music, fadeoff)
					pausedmusic = mu_dungeondepth_pc
					}

				}
				else 				
				if roomname = "strongcold_1"
				{
					if !audio_is_playing(mu_chateau_pc)
					{
						   audio_stop_sound(global.music)
						scr_sound(mu_chateau_pc)
						audio_sound_set_track_position(global.music, fadeoff)
						pausedmusic = mu_chateau_pc
					}

				}
			}
	}






	if string_letters(roomname) = "medieval" 
	{
	
		for (i = 0; i < 20; ++i)
		{
				if roomname = "medieval_" + string(i) && i <= 2
				{

	
					if !audio_is_playing(mu_medievalentrance_pc)
					{
						    audio_stop_sound(global.music)
					scr_sound(mu_medievalentrance_pc)
					audio_sound_set_track_position(global.music, fadeoff)
					pausedmusic = mu_medievalentrance_pc
					}
	
				}
				else
					if roomname = "medieval_" + string(i) && i > 2 && i <= 5
				{

					if !audio_is_playing(mu_medievalremix_pc)
					{
						    audio_stop_sound(global.music)
					scr_sound(mu_medievalremix_pc)
					audio_sound_set_track_position(global.music, fadeoff)
					pausedmusic = mu_medievalremix_pc
					}

				}
					else
					if roomname = "medieval_" + string(i) && i > 5
				{

	
					if !audio_is_playing(mu_medieval_pc)
					{
						    audio_stop_sound(global.music)
					scr_sound(mu_medieval_pc)
					audio_sound_set_track_position(global.music, fadeoff)
					pausedmusic = mu_medieval_pc
					}

				}
		}
	}

	if string_letters(roomname) = "ruin" 
	{
	
		for (i = 0; i < 20; ++i)
		{
				if roomname = "ruin_" + string(i) && i <= 6
				{

	
					if !audio_is_playing(mu_ruin_pc)
					{
						    audio_stop_sound(global.music)
					scr_sound(mu_ruin_pc)
					audio_sound_set_track_position(global.music, fadeoff)
					pausedmusic = mu_ruin_pc
					}
	
				}
				else
					if roomname = "ruin_" + string(i) && i > 6
				{

					if !audio_is_playing(mu_ruinremix_pc)
					{
						    audio_stop_sound(global.music)
					scr_sound(mu_ruinremix_pc)
					audio_sound_set_track_position(global.music, fadeoff)
					pausedmusic = mu_ruinremix_pc
					}

				}


			}
		}

	if string_letters(roomname) = "chateau" 
	{
	

	
		if !audio_is_playing(mu_chateau_pc)
		{
			    audio_stop_sound(global.music)
		scr_sound(mu_chateau_pc)
		audio_sound_set_track_position(global.music, fadeoff)
		pausedmusic = mu_chateau_pc
		}
	}


	if string_letters(roomname) = "farm" 
	{
	

	
		if !audio_is_playing(mu_farm_pc)
		{
			    audio_stop_sound(global.music)
		scr_sound(mu_farm_pc)
		audio_sound_set_track_position(global.music, fadeoff)
		pausedmusic = mu_farm_pc
		}
	}


	if string_letters(roomname) = "graveyard" 
	{
	

	
		if !audio_is_playing(mu_graveyard_pc)
		{
			    audio_stop_sound(global.music)
		scr_sound(mu_graveyard_pc)
		audio_sound_set_track_position(global.music, fadeoff)
		pausedmusic = mu_graveyard_pc
		}
	}


	if string_letters(roomname) = "ufo" 
	{
	

	
		if !audio_is_playing(mu_pinball_pc)
		{
			    audio_stop_sound(global.music)
		scr_sound(mu_pinball_pc)
		audio_sound_set_track_position(global.music, fadeoff)
		pausedmusic = mu_pinball_pc
		}
	}


	if string_letters(roomname) = "dragonlair" 
	{
		if !audio_is_playing(mu_dragonlair_pc)
		{
			audio_stop_sound(global.music)
			scr_sound(mu_dragonlair_pc)
			audio_sound_set_track_position(global.music, fadeoff)
			pausedmusic = mu_dragonlair_pc
		}
	}

	if string_letters(roomname) = "beach" 
	{
		if !audio_is_playing(mu_beach_pc)
		{
			audio_stop_sound(global.music)
			scr_sound(mu_beach_pc)
			audio_sound_set_track_position(global.music, fadeoff)
			pausedmusic = mu_beach_pc
		}
	}
	
	if string_letters(roomname) = "forest" 
	{
		if roomname == "forest_4" or roomname == "forest_4b"
		{
			if !audio_is_playing(mu_gustavo_pc)
			{
				audio_stop_sound(global.music)
				scr_sound(mu_gustavo_pc)
				audio_sound_set_track_position(global.music, fadeoff)
				pausedmusic = mu_gustavo_pc
			}
		}
		else if !audio_is_playing(mu_forest_pc)
		{
			audio_stop_sound(global.music)
			scr_sound(mu_forest_pc)
			audio_sound_set_track_position(global.music, fadeoff)
			pausedmusic = mu_forest_pc
		}
	}
	
	if string_letters(roomname) == "kungfu" 
	{
		if !audio_is_playing(mu_kungfu_pc)
		{
			audio_stop_sound(global.music)
			scr_sound(mu_kungfu_pc)
			audio_sound_set_track_position(global.music, fadeoff)
			pausedmusic = mu_kungfu_pc
		}
	}
	
	if string_letters(roomname) == "steamcc" 
	{
		if !audio_is_playing(mu_steamcc_pc)
		{
			audio_stop_sound(global.music)
			scr_sound(mu_steamcc_pc)
			audio_sound_set_track_position(global.music, fadeoff)
			pausedmusic = mu_steamcc_pc
		}
	}
	
	if string_startswith(roomname, "golf_room")
	{
		if !audio_is_playing(mu_minigolf_pc)
		{
			audio_stop_sound(global.music)
			scr_sound(mu_minigolf_pc)
			audio_sound_set_track_position(global.music, fadeoff)
			pausedmusic = mu_minigolf_pc
		}
	}

	//desert
	if string_startswith(roomname, "floor1_room")
	or string_startswith(roomname, "floor1_mart")
	{
		for (i = 0; i < 20; ++i)
		{
			if roomname = "floor1_room" + string(i) && i <= 9
			or string_startswith(roomname, "floor1_mart")
			{
				if !audio_is_playing(mu_desert_pc)
				{
					audio_stop_sound(global.music)
					scr_sound(mu_desert_pc)
					audio_sound_set_track_position(global.music, fadeoff)
					pausedmusic = mu_desert_pc
				}
			}
			else if roomname = "floor1_room" + string(i) && i > 9
			{
				if !audio_is_playing(mu_ufo_pc)
				{
					audio_stop_sound(global.music)
					scr_sound(mu_ufo_pc)
					audio_sound_set_track_position(global.music, fadeoff)
					pausedmusic = mu_ufo_pc
				}
			}
		}
	}

	// freezer
	if string_startswith(roomname, "floor5_room")
	{
	
		for (i = 0; i < 20; ++i)
		{
			if roomname = "floor5_room" + string(i) && i <= 6
			{
				if !audio_is_playing(mu_freezer_pc)
				{
					audio_stop_sound(global.music)
					scr_sound(mu_freezer_pc)
					audio_sound_set_track_position(global.music, fadeoff)
					pausedmusic = mu_freezer_pc
				}
	
			}
			else if roomname = "floor5_room" + string(i) && i > 6
			{

				if !audio_is_playing(mu_freezer2_pc)
				{
					audio_stop_sound(global.music)
					scr_sound(mu_freezer2_pc)
					audio_sound_set_track_position(global.music, fadeoff)
					pausedmusic = mu_freezer2_pc
				}

			}
		}
	}

	// sewer
	if string_startswith(roomname, "floor4_room")
	{
		for (i = 0; i < 20; ++i)
		{
			if roomname = "floor4_room" + string(i) && i <= 5
			{
				if !audio_is_playing(mu_sewer_pc)
				{
					audio_stop_sound(global.music)
					scr_sound(mu_sewer_pc)
					pausedmusic = mu_sewer_pc
				}
			}
			else if roomname = "floor4_room" + string(i) && i > 5
			{
				if !audio_is_playing(mu_sewer2_pc)
				{
					audio_stop_sound(global.music)
					scr_sound(mu_sewer2_pc)
					pausedmusic = mu_sewer2_pc
				}
			}
		}
	}

	// factory
	if string_startswith(roomname, "floor3_room")
	{
		if !audio_is_playing(mu_factory_pc)
		{
			audio_stop_sound(global.music)
			scr_sound(mu_factory_pc)
			pausedmusic = mu_factory_pc
		}
	}

	// etb
	if string_startswith(roomname, "etb_")
	{
		for (i = 0; i < 20; ++i)
		{
			if roomname == "etb_" + string(i) && i <= 1
			{
				if !audio_is_playing(mu_tutorial_pc)
				{
					audio_stop_sound(global.music)
					scr_sound(mu_tutorial_pc)
					pausedmusic = mu_tutorial_pc
				}
			}
			else if roomname == "etb_" + string(i) && i > 1
			{
				if !audio_is_playing(mu_ruin_pc)
				{
					if audio_is_playing(mu_tutorial_pc)
						fadeoff = 0;
					
					audio_stop_sound(global.music)
					scr_sound(mu_ruin_pc)
					audio_sound_set_track_position(global.music, fadeoff)
					pausedmusic = mu_ruin_pc
				}
			}
			else if roomname == "etb_secret" + string(i)
			{
				if !audio_is_playing(mu_ruinsecret_pc)
				{
					audio_stop_sound(global.music)
					scr_sound(mu_ruinsecret_pc)
					audio_sound_set_track_position(global.music, fadeoff)
					pausedmusic = mu_ruinsecret_pc
				}
			}
		}
	}
	if string_startswith(roomname, "eatery_")
	{
		for (i = 0; i < 20; ++i)
		{
			if roomname == "eatery_" + string(i)
			{
				if !audio_is_playing(mu_characterselect_pc) // REPLACE
				{
					audio_stop_sound(global.music)
					scr_sound(mu_characterselect_pc)
					audio_sound_set_track_position(global.music, fadeoff)
					pausedmusic = mu_characterselect_pc
				}
			}
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
				{
					if !audio_is_playing(mu_mansion_pc)
					{
						audio_stop_sound(global.music)
						scr_sound(mu_mansion_pc)
						pausedmusic = mu_mansion_pc
						audio_sound_set_track_position(global.music, fadeoff)
					}
				}
				else
				{
					if !audio_is_playing(mu_forest_pc)
					{
						audio_stop_sound(global.music)
						scr_sound(mu_forest_pc)
						pausedmusic = mu_forest_pc
						audio_sound_set_track_position(global.music, fadeoff)
					}
				}
			}
		}
	}

	// secrets
	if string_letters(roomname) = "entrancesecret" or string_letters(roomname) = "medievalsecret" 
	{
		if !audio_is_playing(mu_medievalsecret_pc)
		{
			audio_stop_sound(global.music)
			scr_sound(mu_medievalsecret_pc)
			audio_sound_set_track_position(global.music, fadeoff)
			pausedmusic = mu_medievalsecret_pc
		}
	}
	if string_letters(roomname) = "ruinsecret"
	{
		if !audio_is_playing(mu_ruinsecret_pc)
		{
			audio_stop_sound(global.music)
			scr_sound(mu_ruinsecret_pc)
			audio_sound_set_track_position(global.music, fadeoff)
			pausedmusic = mu_ruinsecret_pc
		}
	}
	if string_letters(roomname) = "chateausecret" 
	{
		if !audio_is_playing(mu_chateausecret_pc)
		{
			audio_stop_sound(global.music)
			scr_sound(mu_chateausecret_pc)
			audio_sound_set_track_position(global.music, fadeoff)
			pausedmusic = mu_chateausecret_pc
		}
	}
	if string_letters(roomname) = "dungeonsecret" or string_letters(roomname) = "strongcoldsecret"
	{
		if !audio_is_playing(mu_dungeonsecret_pc)
		{
			audio_stop_sound(global.music)
			scr_sound(mu_dungeonsecret_pc)
			audio_sound_set_track_position(global.music, fadeoff)
			pausedmusic = mu_dungeonsecret_pc
		}
	}
	if string_startswith(roomname, "floor1_secret")
	{
		if !audio_is_playing(mu_desertsecret_pc)
		{
			audio_stop_sound(global.music)
			scr_sound(mu_desertsecret_pc)
			audio_sound_set_track_position(global.music, fadeoff)
			pausedmusic = mu_desertsecret_pc
		}
	}
	if string_letters(roomname) = "graveyardsecret" 
	{
		if !audio_is_playing(mu_graveyardsecret_pc)
		{
			audio_stop_sound(global.music)
			scr_sound(mu_graveyardsecret_pc)
			audio_sound_set_track_position(global.music, fadeoff)
			pausedmusic = mu_graveyardsecret_pc
		}
	}
	if string_letters(roomname) = "farmsecret" 
	{
		if !audio_is_playing(mu_farmsecret_pc)
		{
			audio_stop_sound(global.music)
			scr_sound(mu_farmsecret_pc)
			audio_sound_set_track_position(global.music, fadeoff)
			pausedmusic = mu_farmsecret_pc
		}
	}
	if string_letters(roomname) = "ufosecret" 
	{
		if !audio_is_playing(mu_pinballsecret_pc)
		{
			audio_stop_sound(global.music)
			scr_sound(mu_pinballsecret_pc)
			audio_sound_set_track_position(global.music, fadeoff)
			pausedmusic = mu_pinballsecret_pc
		}
	}
	if string_letters(roomname) = "forestsecret"
	or string_startswith(roomname, "floor2_secret")
	{
		if !audio_is_playing(mu_forestsecret_pc)
		{
			audio_stop_sound(global.music)
			scr_sound(mu_forestsecret_pc)
			audio_sound_set_track_position(global.music, fadeoff)
			pausedmusic = mu_forestsecret_pc
		}
	}
	if string_letters(roomname) = "steamccsecret"
	{
		if !audio_is_playing(mu_cottonsecret_pc)
		{
			audio_stop_sound(global.music)
			scr_sound(mu_cottonsecret_pc)
			audio_sound_set_track_position(global.music, fadeoff)
			pausedmusic = mu_cottonsecret_pc
		}
	}
	
	if room == custom_lvl_room {
		alarm[0] = 4;
	}
}

#endregion

if forcefadeoff != -1
{
	audio_sound_set_track_position(global.music, forcefadeoff);
	forcefadeoff = -1;
}

if musicprev != pausedmusic
	audio_sound_pitch(global.music, musicpitch);