if global.musicvolume <= 0
	exit;

if global.gameplay != 0
{
	if !global.panic && !global.snickchallenge && !global.miniboss && room != Realtitlescreen
	{
		with obj_player1
		{
			var _state = state;
			if _state == states.hitlag
				_state = tauntstoredstate;
			if _state == states.backbreaker
			{
				with obj_teleporter
				{
					if player.id == other.id && (alarm[0] > -1 or alarm[1] > -1)
						_state = storedstate;
				}
				with obj_warplaser
				{
					if player.id == other.id && (alarm[0] > -1 or alarm[1] > -1)
						_state = storedstate;
				}
			}
			
			switch _state
			{
				case states.knightpep:
					other.musicpitch = 0.9;
					break;
				case states.knightpepslopes:
					other.musicpitch = 1.2;
					break;
				case states.tumble:
					other.musicpitch = 1.2;
					break;
				
				default:
					other.musicpitch = 1;
					break;
			}
		}
	}
	else
		musicpitch = 1;
	
	var pitch = true;
	with obj_startgate
		if drawing pitch = false;
	with obj_player1
		if state == states.frozen pitch = false;
	
	if pitch
		audio_sound_pitch(global.music, lerp(audio_sound_get_pitch(global.music), musicpitch, 0.35));
}

if global.musicgame == 0
{
	#region pizza tower
	
	var _mu_snickchallenge = (global.snickrematch ? mu_snickrematch : mu_snickchallenge);
	var _mu_snickchallengeend = (global.snickrematch ? mu_snickrematchend : mu_snickchallengeend);
	var _mu_noiseescape = (global.pestoanchovi ? mu_noiseescape_OLD : mu_noiseescape);
	
	if !audio_is_playing(mu_antonescape) && !audio_is_playing(mu_pizzatime)
	&& !audio_is_playing(_mu_noiseescape) && !audio_is_playing(mu_snickescape)
	&& !audio_is_playing(mu_gladeescape) && !audio_is_playing(mu_pizzyescape)
	&& !audio_is_playing(mu_war)
	&& (string_letters(roomname) != "dragonlair" or audio_is_playing(mu_antonlevel))
	&& global.panic && !obj_pause.pause && !obj_camera.ded && !(room == custom_lvl_room && global.disableescapemusic)
	{
		// war level
		if audio_is_playing(mu_warintro)
		{
			audio_stop_sound(global.music)
			scr_sound(mu_war)
			pausedmusic = mu_war
		}
		else
		{
			audio_stop_sound(global.music)
			
			// antonball
			if scr_checkskin(checkskin.p_anton)
			{
				scr_sound(mu_antonescape)
				pausedmusic = mu_antonescape
			}
			// peppino or vigilante
			else if obj_player1.character == "P"
			or obj_player1.character == "V"
			{
				scr_sound(mu_pizzatime)
				pausedmusic = mu_pizzatime
			}
			// noise
			else if obj_player1.character == "N"
			{
				scr_sound(_mu_noiseescape)
				pausedmusic = _mu_noiseescape
			}
			// snick
			else if obj_player1.character == "S"
			{
				scr_sound(mu_snickescape)
				pausedmusic = mu_snickescape
			}
			// glade
			else if obj_player1.character == "G"
			{
				scr_sound(mu_gladeescape)
				pausedmusic = mu_gladeescape
			}
			// pizzelle
			else if obj_player1.character == "SP"
			{
				scr_sound(mu_pizzyescape)
				pausedmusic = mu_pizzyescape
			}
		}
	}
	
	/*
	if (instance_exists(obj_hungrypillar) && ((!audio_is_playing(mu_dungeondepth)) && (obj_pause.pause == 0))) && !string_startswith(room_get_name(room), "dragonlair") && room != custom_lvl_room
	{
	    audio_stop_all()
	    scr_sound(mu_dungeondepth)
	    pausedmusic = mu_dungeondepth
	}
	*/
   
	//Stop miniboss music
	if !global.miniboss && audio_is_playing(mu_miniboss)
		audio_stop_sound(mu_miniboss)
   
	//SAGE2019
	if global.snickchallenge = true && obj_pause.pause = 0 && obj_camera.ded = false
	{
		if global.minutes >= 2 or (global.snickrematch && global.musicgame == 1)
		{
			if !audio_is_playing(_mu_snickchallenge)
			{
				audio_stop_sound(global.music)
				scr_sound(_mu_snickchallenge)
			}
		}
		else
		{
			if !audio_is_playing(_mu_snickchallengeend)
			{
				audio_stop_sound(global.music)
				scr_sound(_mu_snickchallengeend)
			}
		}
	}
  
	if audio_is_playing(global.music)
		fadeoff = audio_sound_get_track_position(global.music);
	else
		fadeoff = 0;

	//Christmas
	if room == strongcold_miniboss && global.miniboss
	{
		if !audio_is_playing(mu_miniboss)
		{
			audio_stop_sound(global.music)
			scr_sound(mu_miniboss)
		}
	}
	else if room == strongcold_endscreen
	{
		if !audio_is_playing(mu_entrance)
		{
			audio_stop_sound(global.music)
			scr_sound(mu_entrance)  
		}
	}
	
	#endregion
}
else if global.musicgame == 1
{
	#region pizza castle
	
	var _mu_snickchallenge = (global.snickrematch ? mu_snickrematch_pc : mu_snickchallenge_pc);
	var _mu_snickchallengeend = (global.snickrematch ? mu_snickrematch_pc : mu_snickchallengeend_pc);
	var _mu_noiseescape = (global.pestoanchovi ? mu_noiseescape_OLD_pc : mu_noiseescape_pc);
	
	if !audio_is_playing(mu_antonescape_pc) && !audio_is_playing(mu_pizzatime_pc)
	&& !audio_is_playing(_mu_noiseescape) && !audio_is_playing(mu_snickescape_pc)
	&& !audio_is_playing(mu_pizzyescape_pc) && !audio_is_playing(mu_pizzatime_pc) // glade escape here
	&& !audio_is_playing(mu_war_pc)
	&& (string_letters(roomname) != "dragonlair" or audio_is_playing(mu_antonlevel_pc))
	&& global.panic && !obj_pause.pause && !obj_camera.ded && !(room == custom_lvl_room && global.disableescapemusic)
	{
		// war level
		if audio_is_playing(mu_warintro_pc)
		{
			audio_stop_sound(global.music)
			scr_sound(mu_war_pc)
			pausedmusic = mu_war_pc
		}
		else
		{
			audio_stop_sound(global.music)
			
			// antonball
			if scr_checkskin(checkskin.p_anton)
			{
				scr_sound(mu_antonescape_pc)
				pausedmusic = mu_antonescape_pc
			}
			// peppino or vigilante
			else if obj_player1.character == "P"
			or obj_player1.character == "V"
			{
				scr_sound(mu_pizzatime_pc)
				pausedmusic = mu_pizzatime_pc
			}
			// noise
			else if obj_player1.character == "N"
			{
				scr_sound(_mu_noiseescape)
				pausedmusic = _mu_noiseescape
			}
			// snick
			else if obj_player1.character == "S"
			{
				scr_sound(mu_snickescape_pc)
				pausedmusic = mu_snickescape_pc
			}
			// glade
			else if obj_player1.character == "G"
			{
				scr_sound(mu_pizzatime_pc) // REPLACE, also up there
				pausedmusic = mu_pizzatime_pc
			}
			// pizzelle
			else if obj_player1.character == "SP"
			{
				scr_sound(mu_pizzyescape_pc)
				pausedmusic = mu_pizzyescape_pc
			}
		}
	}
   
	//Stop miniboss music
	if !global.miniboss && audio_is_playing(mu_miniboss_pc)
		audio_stop_sound(mu_miniboss_pc)
   
	//SAGE2019
	if global.snickchallenge && obj_pause.pause = 0 && obj_camera.ded = false
	{
		if global.minutes >= 2 or (global.snickrematch && global.musicgame == 1)
		{
			if !audio_is_playing(_mu_snickchallenge)
			{
				audio_stop_sound(global.music)
				scr_sound(_mu_snickchallenge)
			}
		}
		else
		{
			if !audio_is_playing(_mu_snickchallengeend)
			{
				audio_stop_sound(global.music)
				scr_sound(_mu_snickchallengeend)
			}
		}
	}
  
	if audio_is_playing(global.music)
		fadeoff = audio_sound_get_track_position(global.music);
	else
		fadeoff = 0;

	//Christmas
	if room = strongcold_miniboss && global.miniboss =true
	{
		if !audio_is_playing(mu_miniboss_pc)
		{
			audio_stop_sound(global.music)
			scr_sound(mu_miniboss_pc)
			scr_soundeffect(obj_player1.snd_fireass)
		}

	}
	else if room = strongcold_endscreen
	{
		if !audio_is_playing(mu_entrance_pc)
		{
			audio_stop_sound(global.music)
			scr_sound(mu_entrance_pc)  
		}
	}
	
	#endregion
}

pausedmusic = global.music;